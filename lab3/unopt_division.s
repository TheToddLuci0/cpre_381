	.file	1 "division.c"

 # GNU C 2.7.2.3 [AL 1.1, MM 40, tma 0.1] SimpleScalar running sstrix compiled by GNU C

 # Cc1 defaults:
 # -mgas -mgpOPT

 # Cc1 arguments (-G value = 8, Cpu = default, ISA = 1):
 # -quiet -dumpbase -O0 -o

gcc2_compiled.:
__gnu_compiled_c:
	.sdata
	.align	2
$LC0:
	.ascii	"x = %d\n\000"
	.text
	.align	2
	.globl	main

	.text

	.loc	1 4
	.ent	main
main:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, extra= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	subu	$sp,$sp,32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	jal	__main
	sw	$0,16($fp)
$L2:
	lw	$2,16($fp)
	slt	$3,$2,1000
	bne	$3,$0,$L5
	j	$L3
$L5:
	li	$2,0x00100000		# 1048576
	sw	$2,20($fp)
	lw	$3,20($fp)
	move	$2,$3
	bgez	$2,$L6
	addu	$2,$2,7
$L6:
	div	$2,8
	#mflo	$2
	sw	$2,20($fp)
	lw	$3,20($fp)
	move	$2,$3
	bgez	$2,$L7
	addu	$2,$2,15
$L7:
	div	$2,16
	#mflo	$2
	sw	$2,20($fp)
	lw	$3,20($fp)
	move	$2,$3
	bgez	$2,$L8
	addu	$2,$2,31
$L8:
	div	$2,32
	#mflo	$2
	sw	$2,20($fp)
$L4:
	lw	$3,16($fp)
	addu	$2,$3,1
	move	$3,$2
	sw	$3,16($fp)
	j	$L2
$L3:
	la	$4,$LC0
	lw	$5,20($fp)
	jal	printf
$L1:
	move	$sp,$fp			# sp not trusted here
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addu	$sp,$sp,32
	j	$31
	.end	main
