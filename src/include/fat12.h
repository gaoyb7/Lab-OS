#ifndef _FAT12_H_
#define _FAT12_H_

#include <stdint.h>

#define DIR_ENT_ADDR        19
#define DIR_ENT_SEC_COUNT   14
#define FILE_ENT_PER_SEC    16
#define FAT_ADDR            1
#define FAT_SEC_COUNT       9       
#define FAT_BOOT_SECTOR     0
#define SECTOR_SIZE         512
#define EOF_FAT12           0xFF8
#define FLOPPY_SPT          18
#define FLOPPY_HPC          2

#define FILE_READ_ONLY      0x01
#define FILE_HIDDEN         0x02
#define FILE_SYSTEM         0x04
#define FILE_VOLUME_ID      0x08
#define FILE_DIRECTORY      0x10
#define FILE_ARCHIVE        0x20

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
    uint8_t data[SECTOR_SIZE];
} __attribute__((packed)) Sector_t;

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

// Directory entry structure
typedef struct Dir_entry {
    File_entry_t data[SECTOR_SIZE / sizeof(File_entry_t)];
} __attribute__((packed)) Dir_entry_t;

// Physical FAT structure
typedef struct FAT {
    uint8_t data[SECTOR_SIZE * FAT_SEC_COUNT];
} __attribute__((packed)) FAT_t;

void get_fat();
int get_directory();
uint16_t get_fat_entry(uint16_t id);
uint16_t next_cluster(uint16_t cnt);
uint16_t total_cluster(uint16_t start);
int file_name_match(File_entry_t *file, char *file_name);
int get_file_fat_entry(char *file_name, int flag);
void load_file(uint16_t cl, int address);
Date_t to_date(uint16_t date);
Time_t to_time(uint16_t time);
char* show_file_name(File_entry_t *file, char *str);
char* show_file_attrib(File_entry_t *file, char *str);
char *show_file_time(File_entry_t *file, char *str);
char *show_file_date(File_entry_t *file, char *str);
void read_sector(void *ptr, uint16_t LBA, uint16_t count);
void _read_sector(int address, uint16_t LBA, uint16_t count);
void write_sector(void *ptr, uint16_t LBA, uint16_t count);
void rm_file(uint16_t cl);
uint16_t cp_file(uint16_t old_cl);
char* pwd();
void ls();
int cd(char *path);
int cat(char *file_name);
int rm(char *file_name);
int cp(char *src, char *dst);

#endif
