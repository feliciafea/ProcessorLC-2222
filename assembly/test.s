! Fall 2023 Revisions by Bijan Nikain

! This program executes pow as a test program using the LC 1001 calling convention
! Check your registers ($v0) and memory to see if it is consistent with this program

main:
LEA $s0, label
LW $t0, 0($s0)
LW $t1, 0($s0)
BEQ $t0, $t1, stop
ADD $t0, $s0, $s0 !t0 = 4
ADDI $t1, $s0, 5 !t1 = 7
NAND $t1, $t1, $s0 !t1 = 2

LEA $s0, label
SW $t0, 0($s0)

stop: HALT
label: .fill 0x2
