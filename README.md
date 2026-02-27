# Lab 1

## Tasks

### Task 1
Store FFH into RAM locations 50H to 58H using direct addressing mode.

### Task 2
Store FFH into RAM locations 50H to 58H using indirect addressing mode.

### Task 3
Clear RAM locations from 50H to 58H by storing 00H.

### Task 4
Compute the series 1+2+3+…+N (N=10) and store the sum into memory location 50H.

---

## Files

task1.s  
task2.s  
task3.s  
task4.s  
test.c  

---

## Compile (All Tasks with C Driver)

gcc -no-pie -O0 test.c task1.s task2.s task3.s task4.s -o test

---

## Run

./test

---

## Expected Output

After Task 1:
ram[50] = 0xFF
...
ram[58] = 0xFF

After Task 2:
ram[50] = 0xFF
...
ram[58] = 0xFF

After Task 3:
ram[50] = 0x00
...
ram[58] = 0x00

After Task 4:
ram[50] = 0x37 (55)
