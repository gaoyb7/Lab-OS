#include "fat12.h"

/*
#define DIR_ENTRY_ADDR  0x00002600
#define FAT_PHYS_SIZE   9
#define FAT_BOOT_SECTOR 0
#define FAT_SECTOR_SIZE 512
#define EOF_FAT12       0xFF8;

// Boot sector
typedef struct Boot_sector;

// File entry type
typedef struct File_entry;

// Sector buffer
typedef struct Sector;

// Attribute type
typedef enum Attrib;

// Date type
typedef struct Date;

// Time type
typedef struct Time;

// Sector directory type
typedef struct Sector_dir;

// Physical FAT structure
typedef struct FAT;

// Logical transposition of the FAT structure
typedef struct Logic_FAT;

bool read_fat();
bool load_file(char *str, uint8_t *buffer);
int get_file_size(char *file_name);
char *pwd();
void ls();
bool cd(char *path);
bool cat(char *str);
bool rm(char *file_name);
*/

Boot_sector_t bootsector;
FAT_t fat;
Logic_FAT_t lfat;
uint16_t directory = 0;
char path[256];

int has_next_sector(uint16_t *next, uint16_t actual) {
    *next = lfat.data[actual];
    if ((*next == 0) || (*next >= 0x0ff0))
        return 0;
    else
        return 1;
}

int total_cluster(uint16_t start) {
    uint16_t c = 1, cl;
    if (!start)
        return ((bootsector.root_entry_count * sizeof(File_entry_t)) / bootsector.bytes_per_sector);
    cl = start;
    
    while (has_next_sector(&cl, cl)) c++;
    return c;
}

void to_date(Date_t *d, uint16_t date) {
    d->year = date / 512;
    d->month = (date - d->year * 512) / 32;
    d->day = date - d->year * 512 - d->month * 32;
}

void to_time(Time_t *time, uint16_t t) {
    time->hour = t / 2048;
    time->minute = (t - time->hour * 2048) / 32;
    time->second = (t - time->hour * 2048 - time->minute * 32)*2;
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
    //__asm__ volatile(".intel_syntax noprefix; push es; .att_syntax prefix;");
    asm volatile("pushw %es;");
    //uint16_t ds;
    //__asm__ volatile("movw %%ds, %0;" : : "m"(ds));
    //printf("%x\n", ds);
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
