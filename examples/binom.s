	.text
	.file	"binom.c"
	.globl	fact
	.type	fact,@function
fact:
	ADDi r2 r2 -1
	STi r3 r2 0
	ADDi r3 r2 1
	MOVli r10 0
	B.EQ r9 r10 .LBB0_1
	ADDi r4 r9 0
	MOVli r9 1
.LBB0_3:
	ADDi r11 r4 -1
	MUL r9 r4 r9
	ADDi r4 r11 0
	B.NE r11 r10 .LBB0_3
	B .LBB0_4
.LBB0_1:
	MOVli r9 1
.LBB0_4:
	LDi r3 r2 0
	ADDi r2 r2 1
	BR r1
.Lfunc_end0:
	.size	fact, .Lfunc_end0-fact

	.globl	main
	.type	main,@function
main:
	ADDi r2 r2 -1
	STi r3 r2 0
	ADDi r3 r2 1
	MOVli r9 210
	LDi r3 r2 0
	ADDi r2 r2 1
	BR r1
.Lfunc_end1:
	.size	main, .Lfunc_end1-main

	.ident	"clang version 14.0.0 (git@github.com:vadimpy/llvm-project.git e574058524783c26ef768a5004f2e88e6fa28450)"
	.section	".note.GNU-stack","",@progbits
