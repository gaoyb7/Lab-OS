#ifndef _FAT12_H_
#define _FAT12_H_

#include <stdint.h>

#define FILE_ENTRY_ADDR 19
#define FAT_ENTRY_ADDR  1
#define FAT_PHYS_SIZE   9
#define FAT_BOOT_SECTOR 0
#define FAT_SECTOR_SIZE 512
#define EOF_FAT12       0xFF8
#define FLOPPY_SPT      18
#define FLOPPY_HPC      2

// Boot sector
typedef struct Boot_sector {
    uint8_t         bootjmp[3];
    unsigned char   oem_name[8];
    uint16_t        bytes_per_sector;
    uint8_t         sectors_per_cluster;
    uint16_t        reserved_sector_count;
    uint8_t         table_count;
    uint16_t        root_entry_count;
    uint16_t        total_sectors_16;
    uint8_t         media_type;
    uint16_t        table_size_16;
    uint16_t        sectors_per_track;
    uint16_t        head_size_count;
    uint32_t        hidden_sector_count;
    uint32_t        total_sectors_32;
    uint8_t         driver_number;
    uint8_t         reserved;
    uint8_t         boot_sigh;
    uint32_t        volume_id;
    unsigned char   file_volume_label[11];
    unsigned char   file_system_type[8];
    uint8_t         code[448];
    uint16_t        end_flag;
} __attribute__ ((packed)) Boot_sector_t;

// File entry type
typedef struct File_entry {
    unsigned char name[8];
    unsigned char extension[3];
    uint8_t attribute;
    uint8_t reserver[10];
    uint16_t time;
    uint16_t date;
    uint16_t start_cluster;
    uint32_t file_length;
} __attribute__((packed)) File_entry_t;

// Sector buffer
typedef struct Sector {
    uint8_t data[FAT_SECTOR_SIZE];
} __attribute__((packed)) Sector_t;

// Attribute type
/*
typedef struct Attrib {
    bool READ_ONLY;
    bool HIDDEN;
    bool SYSTEM;
    bool VOLUME_ID;
    bool DIRECTORY;
    bool ARCHIVE;
    uint8_t _RESERVED;
} __attribute__((packed)) Attrib_t;
*/

// Date type
typedef struct Date {
    int year;
    int month;
    int day;
} __attribute__((packed)) Date_t;

// Time type
typedef struct Time {
    int hour;
    int minute;
    int second;
} __attribute__((packed)) Time_t;

// Sector directory type
typedef struct Sector_dir {
    File_entry_t data[FAT_SECTOR_SIZE / sizeof(File_entry_t)];
} __attribute__((packed)) Sector_dir_t;

// Physical FAT structure
typedef struct FAT {
    uint8_t data[FAT_SECTOR_SIZE * FAT_PHYS_SIZE];
} __attribute__((packed)) FAT_t;

// Logical transposition of the FAT structure
typedef struct Logic_FAT {
    uint16_t data[FAT_SECTOR_SIZE * FAT_PHYS_SIZE * 8 / 12];
} __attribute__ ((packed)) Logic_FAT_t;


void read_file(Sector_t *buffer, int start, int c);
int read_fat();
int load_file(char *str, uint8_t *buffer);
int get_file_size(char *file_name);
char *pwd();
void ls();
int cd(char *path);
int cat(char *str);
int rm(char *file_name);

#endif
