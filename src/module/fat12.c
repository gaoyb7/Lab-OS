#include "fat12.h"

Boot_sector_t bootsector;
Sector_t sec_tmp;
Dir_entry_t dir_tmp;
FAT_t fat;
uint16_t directory = 0;
char cnt_dir[512];
int cnt_dir_len = 1;

void get_fat() {
    read_sector(&fat, 1, FAT_SEC_COUNT);
}

int get_director() {
    return directory;
}

uint16_t get_fat_entry(uint16_t id) {
    int offset = offset = id + id / 2;
    uint16_t val = *(uint16_t*)&fat.data[offset];
    if (id % 2 == 1)
        val >>= 4;
    else
        val = val & 0x0fff;
    return val;
}

uint16_t next_sector(uint16_t cnt) {
    return get_fat_entry(cnt);
}

uint16_t total_cluster(uint16_t start) {
    uint16_t c = 1, cl = start;
    if (start == 0) 
        return DIR_ENT_SEC_COUNT;
    while (cl = next_sector(cl), 0 < cl && cl < 0xff0) c++;
    if (cl == 0) --c;
    return c;
}

int file_name_match(File_entry_t *file, char *file_name) {
    static char buff_a[13], buff_b[13];
    int i, file_name_len;

    file_name_len = __builtin_strlen(file_name);
    if (file_name_len > 12) return 0;

    show_file_name(file, buff_a);
    for (i = 0; i < file_name_len; ++i) {
        if ('a' <= file_name[i] && file_name[i] <= 'z')
            buff_b[i] = file_name[i] - 'a' + 'A';
        else
            buff_b[i] = file_name[i];
    }
    for (i = file_name_len; i < 12; ++i) buff_b[i] = ' ';
    buff_a[12] = buff_b[12] = 0;

    for (i = 0; i < 12; ++i)
        if (buff_a[i] != buff_b[i])
            return 0;
    return 1;
}

int get_file_fat_entry(char *file_name) {
    int sec_count, sec_cnt, found, i, j;
    File_entry_t *file;
    sec_count = total_cluster(directory);
    sec_cnt = directory;
    found = -1;

    for (i = 0; i < sec_count; ++i) {
        if (directory == 0)
            read_sector(&dir_tmp, i + 19, 1);
        else
            read_sector(&dir_tmp, sec_cnt + 31, 1);

        if (directory != 0)
            sec_cnt = next_sector(sec_cnt);

        for (j = 0; j < FILE_ENT_PER_SEC; ++j) {
            file = &dir_tmp.data[j];
            if (file->name[0] == 0) continue;
            if (file_name_match(file, file_name) == 1) {
                found = file->start_cluster;
                if ((file->attribute & FILE_DIRECTORY) != 0)
                    found = -found;
                break;
            }
        }
        if (found != -1) break;
    }
    return found;
}

void load_file(uint16_t cl, int address) {
    int tot = total_cluster(cl);
    while (tot--) {
        printf("%d ", cl);
        _read_sector(address, cl + 31, 1);
        address += SECTOR_SIZE;
        cl = next_sector(cl);
    }
    printf("\n");
}

char* show_file_name(File_entry_t *file, char *str) {
    int i, cnt = 0;
    for (i = 0; i < 13; ++i) str[i] = 0;
    for (i = 0; i < 8; ++i)
        if (file->name[i] != 0 && file->name[i] != ' ')
            str[cnt++] = file->name[i];
    if (file->attribute & FILE_DIRECTORY) {
        for (i = cnt; i < 12; ++i)
            str[i] = ' ';
    }
    str[cnt++] = '.';
    for (i = 0; i < 3; ++i)
        if (file->extension[i] != 0 && file->extension[i] != ' ')
            str[cnt++] = file->extension[i];
    if (str[cnt - 1] == '.') --cnt;
    for (i = cnt; i < 12; ++i)
        str[i] = ' ';
    str[12] = 0;
    return str;
}

Date_t to_date(uint16_t date) {
    Date_t d;
    d.year = date / 512;
    d.month = (date - d.year * 512) / 32;
    d.day = date - d.year * 512 - d.month * 32;
    d.year += 1980;
    return d;
}

Time_t to_time(uint16_t time) {
    Time_t t;
    t.hour = time / 2048;
    t.minute = (time - t.hour * 2048) / 32;
    t.second = (time - t.hour * 2048 - t.minute * 32) * 2;
    return t;
}


char* show_file_attrib(File_entry_t *file, char *str) {
    uint8_t attr = file->attribute;
    if (attr & 0x08) {
        str = "LABEL   ";
        return str;
    }
    if (attr & 0x10) {
        str = "DIR     ";
        return str;
    }

    str[0] = 'r';
    str[1] = (attr & 0x01) ? '+' : '-';
    str[2] = 'h';
    str[3] = (attr & 0x02) ? '+' : '-';
    str[4] = 's';
    str[5] = (attr & 0x04) ? '+' : '-';
    str[6] = 'a';
    str[7] = (attr & 0x20) ? '+' : '-';
    str[8] = 0;
    return str;
}

char *show_file_time(File_entry_t *file, char *str) {
    Time_t t = to_time(file->time);
    str[0] = t.hour / 10 + '0';
    str[1] = t.hour % 10 + '0';
    str[2] = ':';
    str[3] = t.minute / 10 + '0';
    str[4] = t.minute % 10 + '0';
    str[5] = 0;
    return str; }

char *show_file_date(File_entry_t *file, char *str) {
    Date_t d = to_date(file->date);
    str[0] = d.year / 1000 + '0';
    str[1] = d.year / 100 % 10 + '0';
    str[2] = d.year / 10 % 10 + '0';
    str[3] = d.year % 10 + '0';
    str[4] = '-';
    str[5] = d.month / 10 + '0';
    str[6] = d.month % 10 + '0';
    str[7] = '-';
    str[8] = d.day / 10 + '0';
    str[9] = d.day % 10 + '0';
    str[10] = 0;
    return str;
}

void read_sector(void *ptr, uint16_t LBA, uint16_t count) {
    asm volatile("cli; pushw %es;");
    uint8_t cylinder = LBA / (FLOPPY_SPT * FLOPPY_HPC);
    uint8_t head = (LBA / FLOPPY_SPT) % FLOPPY_HPC;
    uint8_t sector = LBA % FLOPPY_SPT + 1;

    __asm__ volatile(
            "movw $0x4000, %%di;"
            "movw %%di, %%es;"
            "int $0x13;"
            "popw %%es;"
            : : "a"((0x02 << 8) + count), "b"(0x0000), \
            "c"(((uint16_t)cylinder << 8) + sector), \
            "d"((uint16_t)head << 8) : "di", "si"
            );
    _read_mem(ptr, 0x40000000, count * SECTOR_SIZE);
    asm volatile("sti;");
}

void _read_sector(int address, uint16_t LBA, uint16_t count) {
    asm volatile("cli; pushw %es;");
    uint8_t cylinder = LBA / (FLOPPY_SPT * FLOPPY_HPC);
    uint8_t head = (LBA / FLOPPY_SPT) % FLOPPY_HPC;
    uint8_t sector = LBA % FLOPPY_SPT + 1;

    __asm__ volatile(
            "movw %%di, %%es;"
            "int $0x13;"
            "popw %%es;"
            : : "a"((0x02 << 8) + count), "b"(address & 0xffff), \
            "c"(((uint16_t)cylinder << 8) + sector), \
            "d"((uint16_t)head << 8), \
            "D"(address >> 16)
            : "si"
            );
    asm volatile("sti;");
}

void write_sector(void *ptr, uint16_t LBA, uint16_t count) {
    asm volatile("cli; pushw %es;");
    uint8_t cylinder = LBA / (FLOPPY_SPT * FLOPPY_HPC);
    uint8_t head = (LBA / FLOPPY_SPT) % FLOPPY_HPC;
    uint8_t sector = LBA % FLOPPY_SPT + 1;

    _write_mem(0x40000000, ptr, count * SECTOR_SIZE);
    __asm__ volatile(
            "movw $0x4000, %%di;"
            "movw %%di, %%es;"
            "int $0x13;"
            "popw %%es;"
            : : "a"((0x03 << 8) + count), "b"(0x0000), \
            "c"(((uint16_t)cylinder << 8) + sector), \
            "d"((uint16_t)head << 8) : "di", "si"
            );
    asm volatile("sti;");
}

void print_sector(Sector_t *sec) {
    int i, cnt = 0;
    char ch;
    for (i = 0; i < SECTOR_SIZE; ++i) {
        if (sec->data[i] == 0) break;
        if (sec->data[i] == '\r' || sec->data[i] == '\n') {
            printf("\n");
            ++cnt;
            /*
            if (cnt == 20) {
                cnt = 0;
                printf("--- More ---");
                while (ch = getch(), ch != '\r');
                printf("\n");
            }
            */
        }
        else printf("%c", sec->data[i]);
    }
}

char* pwd(char *dir) {
    int i;
    if (directory == 0) {
        dir[0] = '/';
        dir[1] = 0;
        cnt_dir_len = 1;
    } else {
        for (i = 0; i < cnt_dir_len; ++i)
            dir[i] = cnt_dir[i];
        dir[cnt_dir_len] = 0;
    }
    return dir;
}

void ls() {
    static char file_name[13], file_attr[10], file_time[6], file_date[12];
    File_entry_t *file;
    int sec_count = 0, i, j;
    uint16_t sec_cnt;
    sec_cnt = directory;

    sec_count = total_cluster(sec_cnt);
    printf("Name         Attrib   Time  Date       Size\n");
    printf("-------------------------------------------\n");
    for (i = 0; i < sec_count; ++i) {
        if (directory == 0)
            read_sector(&dir_tmp, i + 19, 1);
        else
            read_sector(&dir_tmp, sec_cnt + 31, 1);

        if (directory != 0)
            sec_cnt = next_sector(sec_cnt);
        for (j = 0; j < FILE_ENT_PER_SEC; ++j) {
            file = &dir_tmp.data[j];
            if (file->name[0] == 0) continue;
            printf("%s %s %s %s %d %d\n", show_file_name(file, file_name),\
                    show_file_attrib(file, file_attr), \
                    show_file_time(file, file_time), \
                    show_file_date(file, file_date), \
                    file->file_length, \
                    file->start_cluster);
        }
    }
}

int cd(char *path) {
    int dir, i;
    dir = get_file_fat_entry(path);
    if (dir == -1 || dir > 0) return 0;
    if (strcmp(path, "..") == 0) {
        --cnt_dir_len;
        while (cnt_dir_len && cnt_dir[cnt_dir_len - 1] != '/')
            --cnt_dir_len;
        cnt_dir[cnt_dir_len] = 0;
    } else if (strcmp(path, ".") != 0) {
        for (i = 0; path[i]; ++i) {
            cnt_dir[cnt_dir_len++] = path[i];
            if ('a' <= path[i] && path[i] <= 'z')
                cnt_dir[cnt_dir_len - 1] = path[i] - 'a' + 'A';
        }
        cnt_dir[cnt_dir_len++] = '/'; cnt_dir[cnt_dir_len] = 0;
    }
    directory = -dir;
    return 1;
}

int cat(char *file_name) {
    int sec_cnt, sec_count, i;
    sec_cnt = get_file_fat_entry(file_name);
    if (sec_cnt <= 0) return 0;
    sec_count = total_cluster(sec_cnt);
    for (i = 0; i < sec_count; ++i) {
        read_sector(&sec_tmp, sec_cnt + 31, 1);
        sec_cnt = next_sector(sec_cnt);
        print_sector(&sec_tmp);
    }
    return 1;
}
