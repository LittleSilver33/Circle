	.file	"repack.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"r"
.LC1:
	.string	"circle.csv"
.LC2:
	.string	"Error opening CSV file"
.LC3:
	.string	"w"
.LC4:
	.string	"circle_recovered.s"
.LC5:
	.string	"Error opening assembly file"
.LC6:
	.string	"%3d,"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC7:
	.string	"CSV to Assembly conversion complete."
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB39:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	call	fopen@PLT
	testq	%rax, %rax
	je	.L11
	leaq	.LC3(%rip), %rsi
	leaq	.LC4(%rip), %rdi
	movq	%rax, %rbp
	call	fopen@PLT
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L8
	leaq	4(%rsp), %r13
	leaq	.LC6(%rip), %rbx
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L5:
	movsbl	4(%rsp), %edi
	movq	%r12, %rsi
	call	fputc@PLT
.L4:
	xorl	%eax, %eax
	movq	%r13, %rdx
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	__isoc99_fscanf@PLT
	cmpl	$1, %eax
	je	.L5
	movq	%rbp, %rdi
	call	fclose@PLT
	movq	%r12, %rdi
	call	fclose@PLT
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
	xorl	%eax, %eax
.L1:
	movq	8(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L12
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L11:
	.cfi_restore_state
	leaq	.LC2(%rip), %rdi
	call	perror@PLT
	movl	$1, %eax
	jmp	.L1
.L12:
	call	__stack_chk_fail@PLT
.L8:
	leaq	.LC5(%rip), %rdi
	call	perror@PLT
	movq	%rbp, %rdi
	call	fclose@PLT
	movl	$1, %eax
	jmp	.L1
	.cfi_endproc
.LFE39:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.2.0-19ubuntu1) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
