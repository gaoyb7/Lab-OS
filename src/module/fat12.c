#include "fat12.h"
#include "string.h"

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

void update_fat() {
    write_sector(&fat, 1, FAT_SEC_COUNT);
    get_fat();
}

int get_director() {
    return directory;
}

uint16_t get_fat_entry(uint16_t cl) {
    int offset = cl + cl / 2;
    uint16_t val = *(uint16_t*)&fat.data[offset];
    if (cl % 2 == 1)
        val >>= 4;
    else
        val = val & 0x0fff;
    return val;
}

void set_fat_entry(uint16_t cl, uint16_t new_val) {
    int offset = cl + cl / 2;
    uint16_t val = *(uint16_t*)&fat.data[offset];
    if (cl % 2 == 1)
        val = (new_val << 4) + (val & 0xf);
    else
        val = (val & 0xf000) + new_val;
    *(uint16_t*)&fat.data[offset] = val;
}

uint16_t next_sector(uint16_t cnt) {
    return get_fat_entry(cnt);
}

uint16_t total_cluster(uint16_t start) {
    uint16_t c = 1, cl = start;
    if (start == 0) 
        return DIR_ENT_SEC_COUNT;
    while (cl = get_fat_entry(cl), 0 < cl && cl < 0xff0) ++c;
    if (cl == 0) --c;
    return c;
}

int file_name_match(File_entry_t *file, char *file_name) {
    static char buff_a[13], buff_b[13];
    int i, file_name_len;

    file_name_len = __builtin_strlen(file_name);
    if (file_name_len > 12) return 0;

    show_file_name(file, buff_a);
    strcpy(file_name, buff_b);
    to_upper(buff_b);

    for (i = file_name_len; i < 12; ++i) buff_b[i] = ' ';
    buff_a[12] = buff_b[12] = 0;

    for (i = 0; i < 12; ++i)
        if (buff_a[i] != buff_b[i])
            return 0;
    return 1;
}

int get_file_fat_entry(char *file_name, int flag) {
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

        for (j = 0; j < FILE_ENT_PER_SEC; ++j) {
            file = &dir_tmp.data[j];
            if (file->name[0] == 0) continue;

            if (file_name_match(file, file_name) == 1) {
                if ((file->attribute & FILE_DIRECTORY) != 0)
                    found = -file->start_cluster;
                else
                    found = file->start_cluster;
                break;
            }
        }
        if (found != -1) {
            if (flag == 1 && found > 0) {
                memset((char *)file, 0, sizeof(File_entry_t));
                //printf("ENTER\n"); getch();
                if (directory == 0)
                    write_sector(&dir_tmp, i + 19, 1);
                else
                    write_sector(&dir_tmp, sec_cnt + 31, 1);
                //printf("LEAVE\n"); getch();
            }
            break;
        }
        if (directory != 0)
            sec_cnt = get_fat_entry(sec_cnt);
    }
    return found;
}

void load_file(uint16_t cl, int address) {
    uint16_t tot = total_cluster(cl);
    while (0 < cl && cl < 0xff0) {
        _read_sector(address, cl + 31, 1);
        address += SECTOR_SIZE;
        cl = get_fat_entry(cl);
    }
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
        str = "LABEL ";
        return str;
    }
    if (attr & 0x10) {
        str = "DIR   ";
        return str;
    }

    str[0] = 'R';
    str[1] = (attr & 0x01) ? '-' : 'W';
    str[2] = (attr & 0x02) ? 'H' : '-';
    str[3] = (attr & 0x04) ? 'S' : '-';
    str[4] = (attr & 0x20) ? 'A' : '-';
    str[5] = ' ';
    str[6] = 0;
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
    asm volatile("pushw %es; cli;");
    uint8_t cylinder = LBA / (FLOPPY_SPT * FLOPPY_HPC);
    uint8_t head = (LBA / FLOPPY_SPT) % FLOPPY_HPC;
    uint8_t sector = LBA % FLOPPY_SPT + 1;

    asm volatile(
            "movw %%ds, %%di;"
            "movw %%di, %%es;"
            "int $0x13;"
            : : "a"((0x02 << 8) + count), "b"(ptr), \
            "c"(((uint16_t)cylinder << 8) + sector), \
            "d"((uint16_t)head << 8) : "si", "di"
            );
    //_read_mem(ptr, 0x60000000, count * SECTOR_SIZE);
    asm volatile("sti; popw %es;");
}

void _read_sector(int address, uint16_t LBA, uint16_t count) {
    asm volatile("pushw %es; cli;");
    uint8_t cylinder = LBA / (FLOPPY_SPT * FLOPPY_HPC);
    uint8_t head = (LBA / FLOPPY_SPT) % FLOPPY_HPC;
    uint8_t sector = LBA % FLOPPY_SPT + 1;

    asm volatile(
            "movw %%di, %%es;"
            "int $0x13;"
            : : "a"((0x02 << 8) + count), "b"(address & 0xffff), \
            "c"(((uint16_t)cylinder << 8) + sector), \
            "d"((uint16_t)head << 8), \
            "D"(address >> 16)
            : "si"
            );
    asm volatile("sti; popw %es;");
}

void write_sector(void *ptr, uint16_t LBA, uint16_t count) {
    asm volatile("cli; pushw %es;");
    uint8_t cylinder = LBA / (FLOPPY_SPT * FLOPPY_HPC);
    uint8_t head = (LBA / FLOPPY_SPT) % FLOPPY_HPC;
    uint8_t sector = LBA % FLOPPY_SPT + 1;

    //_write_mem(0x60000000, ptr, count * SECTOR_SIZE);
    asm volatile(
            "movw %%ds, %%di;"
            "movw %%di, %%es;"
            "int $0x13;"
            : : "a"((0x03 << 8) + count), "b"(ptr), \
            "c"(((uint16_t)cylinder << 8) + sector), \
            "d"((uint16_t)head << 8) : "di", "si"
            );
    asm volatile("sti; popw %es;");
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
    static char file_name[13], file_attr[7], file_time[6], file_date[12];
    File_entry_t *file;
    int sec_count = 0, i, j;
    uint16_t sec_cnt;
    sec_cnt = directory;

    sec_count = total_cluster(sec_cnt);
    printf("Name         Attrib Time  Date       Size\n");
    printf("-------------------------------------------\n");
    for (i = 0; i < sec_count; ++i) {
        if (directory == 0)
            read_sector(&dir_tmp, i + 19, 1);
        else
            read_sector(&dir_tmp, sec_cnt + 31, 1);

        if (directory != 0)
            sec_cnt = get_fat_entry(sec_cnt);
        for (j = 0; j < FILE_ENT_PER_SEC; ++j) {
            file = &dir_tmp.data[j];
            if (file->name[0] == 0) continue;
            printf("%s %s %s %s %d\n", show_file_name(file, file_name),\
                    show_file_attrib(file, file_attr), \
                    show_file_time(file, file_time), \
                    show_file_date(file, file_date), \
                    file->file_length);
        }
    }
}

int cd(char *path) {
    int dir, i;
    dir = get_file_fat_entry(path, 0);
    if (dir == -1 || dir > 0) return 0;
    if (strcmp(path, "..") == 0) {
        --cnt_dir_len;
        while (cnt_dir_len && cnt_dir[cnt_dir_len - 1] != '/')
            --cnt_dir_len;
        cnt_dir[cnt_dir_len] = 0;
    } else if (strcmp(path, ".") != 0) {
        for (i = 0; path[i]; ++i)
            cnt_dir[cnt_dir_len++] = path[i];
        cnt_dir[cnt_dir_len++] = '/'; cnt_dir[cnt_dir_len] = 0;
    }
    directory = -dir;
    return 1;
}

int cat(char *file_name) {
    int sec_cnt, sec_count, i;
    sec_cnt = get_file_fat_entry(file_name, 0);
    if (sec_cnt <= 0) return 0;
    sec_count = total_cluster(sec_cnt);
    for (i = 0; i < sec_count; ++i) {
        read_sector(&sec_tmp, sec_cnt + 31, 1);
        sec_cnt = get_fat_entry(sec_cnt);
        print_sector(&sec_tmp);
    }
    return 1;
}

void rm_file(uint16_t cl) {
    uint16_t next;
    memset(&sec_tmp, 0, SECTOR_SIZE);
    while (0 < cl && cl < 0xff0) {
        next = get_fat_entry(cl);
        set_fat_entry(cl, 0);
        write_sector(&sec_tmp, cl + 31, 1);
        cl = next;
    }
    update_fat();
}

int rm(char *file_name) {
    int file_start_cl;
    file_start_cl = get_file_fat_entry(file_name, 1);

    if (file_start_cl == -1) {
        printf("Error: file not found %s\n", file_name);
        return 0;
    } else if (file_start_cl == 0 || file_start_cl < -1) {
        printf("Error: %s is a directory\n", file_name);
        return 0;
    }

    rm_file((uint16_t)file_start_cl);
    //printf("%d\n", get_fat_entry(file_start_cl));

    return 1;
}
