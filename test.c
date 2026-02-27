#include <stdio.h>
#include <stdint.h>

uint8_t ram[256];   // shared with assembly

void task1_run(void);
void task2_run(void);
void task3_run(void);
void task4_run(void);

static void dump_50_to_58(const char *label) {
    printf("%s\n", label);
    for (int i = 0x50; i <= 0x58; i++) {
        printf("ram[%02X] = 0x%02X\n", i, ram[i]);
    }
    puts("");
}

int main(void) {
    for (int i = 0; i < 256; i++) ram[i] = 0xAA;

    task1_run();
    dump_50_to_58("After Task 1:");

    for (int i = 0; i < 256; i++) ram[i] = 0xAA;

    task2_run();
    dump_50_to_58("After Task 2:");

    task3_run();
    dump_50_to_58("After Task 3:");

    for (int i = 0; i < 256; i++) ram[i] = 0x00;

    task4_run();
    printf("After Task 4: ram[50] = 0x%02X (%u)\n", ram[0x50], ram[0x50]);

    return 0;
}