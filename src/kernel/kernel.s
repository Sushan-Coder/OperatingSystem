	.file	"kernel.c"
	.text
	.globl	main
	.type	main, @function
main:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$16, %esp
	movl	$753664, -4(%ebp)
	movl	-4(%ebp), %eax
	movb	$88, (%eax)
	nop
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 14.2.0"
