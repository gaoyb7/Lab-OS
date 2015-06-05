#include "fat12.h"

Boot_sector_t bootsector;
FAT_t fat;
Logic_FAT_t lfat;
uint16_t directory = 0;
char path[256];

void get_fat() {
    read_sector(&fat, 1, FAT_PHYS_SIZE);
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
    asm volatile("pushw %es;");
    uint8_t cylinder = LBA / (FLOPPY_SPT * FLOPPY_HPC);
    uint8_t head = (LBA / FLOPPY_SPT) % FLOPPY_HPC;
    uint8_t sector = LBA % FLOPPY_SPT + 1;

    __asm__ volatile(
            "xorw %%di, %%di;"
            "movw %%di, %%es;"
            "int $0x13;"
            "popw %%es;"
            : : "a"((0x02 << 8) + count), "b"(0x7c00), \
                "c"(((uint16_t)cylinder << 8) + sector), \
                "d"((uint16_t)head << 8) : "di", "si"
            );
    _read_mem(ptr, 0x00007c00, count * 512);
}
