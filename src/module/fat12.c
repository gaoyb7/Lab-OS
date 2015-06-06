#include "fat12.h"

Boot_sector_t bootsector;
Dir_entry_t dir_tmp;
FAT_t fat;
uint16_t directory = 0;

void get_fat() {
    read_sector(&fat, 1, FAT_SEC_COUNT);
}

int get_director() {
    return directory;
}

uint16_t get_fat_entry(uint16_t id) {
    int offset = id + id / 2;
    uint16_t val = *(uint16_t*)&fat.data[offset];
    if (id & 0x0001)
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
    static int i, file_name_len;

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
    static int sec_count, sec_cnt, found, i, j;
    static File_entry_t *file;
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

void load_file(int cl, int address) {
    int tot = 0;
    while (0 < cl && cl < 0xff0) {
        _read_sector(address, cl + 31, 1);
        address += SECTOR_SIZE;
        cl = next_sector(cl);
        ++tot;
    }
}

void to_date(Date_t *d, uint16_t date) {
    d->year = (date >> 9) & 0xfffffff;
    d->month = (date >> 5) & 0xffff;
    d->day = (date >> 0) & 0xfffff;
}

void to_time(Time_t *t, uint16_t time) {
    t->hour = (time >> 11) & 0xfffff;
    t->minute = (time >> 5) & 0xffffff;
    t->second = (time >> 0) & 0xfffff;
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
    str[7] = (attr & 0x08) ? '+' : '-';
    str[8] = 0;
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

void ls() {
    static char file_name[13], file_attr[10];
    static File_entry_t *file;
    static int sec_count = 0, i, j;
    static uint16_t sec_cnt;
    sec_cnt = directory;

    sec_count = total_cluster(sec_cnt);
    printf("Name         Attrib   Size\n");
    printf("--------------------------\n");
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
            printf("%s %s %d\n", show_file_name(file, file_name),\
                    show_file_attrib(file, file_attr), \
                    file->file_length);
                    //file->start_cluster);
        }
    }
}

int cd(char *path) {
    static int dir;
    dir = get_file_fat_entry(path);
    if (dir == -1 || dir > 0) return 0;
    dir = -dir;
    directory = dir;
    return 1;
}
