#include "fat12.h"

Boot_sector_t bootsector;
Dir_entry_t dir_ent[DIR_ENT_SEC_COUNT];
FAT_t fat;

void get_fat() {
    read_sector(&fat, 1, FAT_SEC_COUNT);
}

void get_dir_entry(int id) {
    read_sector(&dir_ent[id], DIR_ENT_ADDR + id, 1);
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
    while (cl = next_sector(cl), 0 < cl && cl < 0xff0) c++;
    if (cl == 0) --c;
    return c;
}

int file_name_match(File_entry_t file, char *file_name) {
    static char buff_a[12], buff_b[12];
    int i, file_name_len;

    file_name_len = __builtin_strlen(file_name);
    if (file_name_len > 12) return 0;

    show_file_name(&file, buff_a);
    for (i = 0; i < file_name_len; ++i) {
        if ('a' <= file_name[i] && file_name[i] <= 'z')
            buff_b[i] = file_name[i] - 'a' + 'A';
        else
            buff_b[i] = file_name[i];
    }
    for (i = file_name_len; i < 12; ++i) buff_b[i] = ' ';

    for (i = 0; i < 12; ++i)
        if (buff_a[i] != buff_b[i])
            return 0;
    return 1;
}

int get_file_fat_entry(char *file_name) {
    int i, j, found = -1;
    for (i = 0; i < DIR_ENT_SEC_COUNT; ++i) {
        if (found > 0) break;
        get_dir_entry(i);
        for (j = 0; j < FILE_ENT_PER_SEC; ++j)
            if (file_name_match(dir_ent[i].data[j], file_name) == 1) {
                found = dir_ent[i].data[j].start_cluster;
                break;
            }
    }
    return found;
}

void load_file(int cl, int address) {
    get_fat();
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
    for (i = 0; i < 8; ++i)
        if (file->name[i] != 0 && file->name[i] != ' ')
            str[cnt++] = file->name[i];
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
    _read_mem(ptr, 0x40000000, count * 512);
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
