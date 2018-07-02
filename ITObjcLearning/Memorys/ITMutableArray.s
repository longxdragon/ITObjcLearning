	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.p2align	4, 0x90         ## -- Begin function -[ITMutableArray init]
"-[ITMutableArray init]":               ## @"\01-[ITMutableArray init]"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi0:
	.cfi_def_cfa_offset 16
Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi2:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-32(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	$0, -8(%rbp)
	movq	%rsi, -32(%rbp)
	movq	L_OBJC_CLASSLIST_SUP_REFS_$_(%rip), %rsi
	movq	%rsi, -24(%rbp)
	movq	L_OBJC_SELECTOR_REFERENCES_(%rip), %rsi
	movq	%rax, %rdi
	callq	_objc_msgSendSuper2
	leaq	-8(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rdi, -8(%rbp)
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	_objc_storeStrong
	cmpq	$0, -8(%rbp)
	je	LBB0_2
## BB#1:
	movq	-8(%rbp), %rax
	movq	L_OBJC_SELECTOR_REFERENCES_.2(%rip), %rsi
	movq	%rax, %rdi
	callq	_objc_msgSend
	movq	-8(%rbp), %rax
	movq	L_OBJC_SELECTOR_REFERENCES_.4(%rip), %rsi
	movq	%rax, %rdi
	callq	_objc_msgSend
	movq	-8(%rbp), %rax
	movq	L_OBJC_SELECTOR_REFERENCES_.6(%rip), %rsi
	movq	%rax, %rdi
	callq	_objc_msgSend
	movq	-8(%rbp), %rax
	movq	L_OBJC_SELECTOR_REFERENCES_.8(%rip), %rsi
	movq	%rax, %rdi
	callq	_objc_msgSend
	movq	-8(%rbp), %rax
	movq	L_OBJC_SELECTOR_REFERENCES_.10(%rip), %rsi
	movq	%rax, %rdi
	callq	_objc_msgSend
	movq	-8(%rbp), %rax
	movq	L_OBJC_SELECTOR_REFERENCES_.12(%rip), %rsi
	movq	%rax, %rdi
	callq	_objc_msgSend
	movq	-8(%rbp), %rax
	movq	L_OBJC_SELECTOR_REFERENCES_.14(%rip), %rsi
	movq	%rax, %rdi
	callq	_objc_msgSend
	movq	-8(%rbp), %rax
	movq	L_OBJC_SELECTOR_REFERENCES_.16(%rip), %rsi
	movq	%rax, %rdi
	callq	_objc_msgSend
LBB0_2:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_objc_retain
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-8(%rbp), %rdi
	movq	%rax, -40(%rbp)         ## 8-byte Spill
	callq	_objc_storeStrong
	movq	-40(%rbp), %rax         ## 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function +[ITMutableArray object]
"+[ITMutableArray object]":             ## @"\01+[ITMutableArray object]"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi3:
	.cfi_def_cfa_offset 16
Lcfi4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi5:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	L_OBJC_CLASSLIST_REFERENCES_$_(%rip), %rsi
	movq	L_OBJC_SELECTOR_REFERENCES_.18(%rip), %rdi
	movq	%rdi, -24(%rbp)         ## 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         ## 8-byte Reload
	callq	_objc_msgSend
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[ITMutableArray testObject]
"-[ITMutableArray testObject]":         ## @"\01-[ITMutableArray testObject]"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi6:
	.cfi_def_cfa_offset 16
Lcfi7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi8:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	L_OBJC_SELECTOR_REFERENCES_.20(%rip), %rdi
	movq	%rdi, -32(%rbp)         ## 8-byte Spill
	movq	%rsi, %rdi
	movq	-32(%rbp), %rsi         ## 8-byte Reload
	callq	_objc_msgSend
	movq	L_OBJC_SELECTOR_REFERENCES_.22(%rip), %rsi
	movq	%rax, %rdi
	callq	_objc_msgSend
	movq	%rax, %rdi
	callq	_objc_retainAutoreleasedReturnValue
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	_CFGetRetainCount
	leaq	L__unnamed_cfstring_(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	_NSLog
	leaq	-24(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	callq	_objc_storeStrong
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function +[ITMutableArray object1]
"+[ITMutableArray object1]":            ## @"\01+[ITMutableArray object1]"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi9:
	.cfi_def_cfa_offset 16
Lcfi10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi11:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	L_OBJC_CLASSLIST_REFERENCES_$_(%rip), %rdi
	movq	L_OBJC_SELECTOR_REFERENCES_.18(%rip), %rsi
	movq	_objc_msgSend@GOTPCREL(%rip), %rax
	callq	*%rax
	movq	%rax, %rdi
	callq	_objc_retainAutoreleasedReturnValue
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	_CFGetRetainCount
	leaq	L__unnamed_cfstring_.24(%rip), %rdi
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, %rsi
	movb	%dl, %al
	movl	%ecx, -28(%rbp)         ## 4-byte Spill
	callq	_NSLog
	movq	-24(%rbp), %rdi
	movq	_objc_retain@GOTPCREL(%rip), %rsi
	callq	*%rsi
	movl	-28(%rbp), %ecx         ## 4-byte Reload
	movl	%ecx, %esi
	leaq	-24(%rbp), %rdi
	movq	%rax, -40(%rbp)         ## 8-byte Spill
	callq	_objc_storeStrong
	movq	-40(%rbp), %rdi         ## 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	jmp	_objc_autoreleaseReturnValue ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[ITMutableArray testObject1]
"-[ITMutableArray testObject1]":        ## @"\01-[ITMutableArray testObject1]"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi12:
	.cfi_def_cfa_offset 16
Lcfi13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi14:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	L_OBJC_SELECTOR_REFERENCES_.20(%rip), %rdi
	movq	%rdi, -32(%rbp)         ## 8-byte Spill
	movq	%rsi, %rdi
	movq	-32(%rbp), %rsi         ## 8-byte Reload
	callq	_objc_msgSend
	movq	L_OBJC_SELECTOR_REFERENCES_.26(%rip), %rsi
	movq	%rax, %rdi
	callq	_objc_msgSend
	movq	%rax, %rdi
	callq	_objc_retainAutoreleasedReturnValue
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	_CFGetRetainCount
	leaq	L__unnamed_cfstring_.28(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	_NSLog
	leaq	-24(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	callq	_objc_storeStrong
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function +[ITMutableArray object2]
"+[ITMutableArray object2]":            ## @"\01+[ITMutableArray object2]"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi15:
	.cfi_def_cfa_offset 16
Lcfi16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi17:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	L_OBJC_CLASSLIST_REFERENCES_$_(%rip), %rdi
	movq	L_OBJC_SELECTOR_REFERENCES_.30(%rip), %rsi
	movq	_objc_msgSend@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)         ## 8-byte Spill
	callq	*%rax
	movq	L_OBJC_SELECTOR_REFERENCES_(%rip), %rsi
	movq	%rax, %rdi
	movq	-24(%rbp), %rax         ## 8-byte Reload
	callq	*%rax
	movq	%rax, %rdi
	addq	$32, %rsp
	popq	%rbp
	jmp	_objc_autoreleaseReturnValue ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[ITMutableArray testObject2]
"-[ITMutableArray testObject2]":        ## @"\01-[ITMutableArray testObject2]"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi18:
	.cfi_def_cfa_offset 16
Lcfi19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi20:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	L_OBJC_SELECTOR_REFERENCES_.20(%rip), %rdi
	movq	%rdi, -32(%rbp)         ## 8-byte Spill
	movq	%rsi, %rdi
	movq	-32(%rbp), %rsi         ## 8-byte Reload
	callq	_objc_msgSend
	movq	L_OBJC_SELECTOR_REFERENCES_.32(%rip), %rsi
	movq	%rax, %rdi
	callq	_objc_msgSend
	movq	%rax, %rdi
	callq	_objc_retainAutoreleasedReturnValue
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	_CFGetRetainCount
	leaq	L__unnamed_cfstring_.34(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	_NSLog
	leaq	-24(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	callq	_objc_storeStrong
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function +[ITMutableArray object3]
"+[ITMutableArray object3]":            ## @"\01+[ITMutableArray object3]"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi21:
	.cfi_def_cfa_offset 16
Lcfi22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi23:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	L_OBJC_CLASSLIST_REFERENCES_$_(%rip), %rdi
	movq	L_OBJC_SELECTOR_REFERENCES_.38(%rip), %rsi
	leaq	L__unnamed_cfstring_.36(%rip), %rdx
	movq	_objc_msgSend@GOTPCREL(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movb	%cl, %r9b
	movq	%r8, %rcx
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	movb	%r9b, %al
	movq	-32(%rbp), %r10         ## 8-byte Reload
	movb	%r9b, -33(%rbp)         ## 1-byte Spill
	movq	%r8, -48(%rbp)          ## 8-byte Spill
	callq	*%r10
	movq	%rax, %rdi
	callq	_objc_retainAutoreleasedReturnValue
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	_CFGetRetainCount
	leaq	L__unnamed_cfstring_.40(%rip), %rdi
	movq	%rax, %rsi
	movb	-33(%rbp), %al          ## 1-byte Reload
	callq	_NSLog
	movq	-24(%rbp), %rdi
	movq	_objc_retain@GOTPCREL(%rip), %rcx
	callq	*%rcx
	leaq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi         ## 8-byte Reload
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	callq	_objc_storeStrong
	movq	-56(%rbp), %rdi         ## 8-byte Reload
	addq	$64, %rsp
	popq	%rbp
	jmp	_objc_autoreleaseReturnValue ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[ITMutableArray testObject3]
"-[ITMutableArray testObject3]":        ## @"\01-[ITMutableArray testObject3]"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi24:
	.cfi_def_cfa_offset 16
Lcfi25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi26:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	L_OBJC_SELECTOR_REFERENCES_.20(%rip), %rdi
	movq	%rdi, -32(%rbp)         ## 8-byte Spill
	movq	%rsi, %rdi
	movq	-32(%rbp), %rsi         ## 8-byte Reload
	callq	_objc_msgSend
	movq	L_OBJC_SELECTOR_REFERENCES_.42(%rip), %rsi
	movq	%rax, %rdi
	callq	_objc_msgSend
	movq	%rax, %rdi
	callq	_objc_retainAutoreleasedReturnValue
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	_CFGetRetainCount
	leaq	L__unnamed_cfstring_.44(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	_NSLog
	leaq	-24(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	callq	_objc_storeStrong
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function +[ITMutableArray object4:]
"+[ITMutableArray object4:]":           ## @"\01+[ITMutableArray object4:]"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi27:
	.cfi_def_cfa_offset 16
Lcfi28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi29:
	.cfi_def_cfa_register %rbp
	subq	$496, %rsp              ## imm = 0x1F0
	testb	%al, %al
	movaps	%xmm7, -272(%rbp)       ## 16-byte Spill
	movaps	%xmm6, -288(%rbp)       ## 16-byte Spill
	movaps	%xmm5, -304(%rbp)       ## 16-byte Spill
	movaps	%xmm4, -320(%rbp)       ## 16-byte Spill
	movaps	%xmm3, -336(%rbp)       ## 16-byte Spill
	movaps	%xmm2, -352(%rbp)       ## 16-byte Spill
	movaps	%xmm1, -368(%rbp)       ## 16-byte Spill
	movaps	%xmm0, -384(%rbp)       ## 16-byte Spill
	movq	%rdi, -392(%rbp)        ## 8-byte Spill
	movq	%r9, -400(%rbp)         ## 8-byte Spill
	movq	%r8, -408(%rbp)         ## 8-byte Spill
	movq	%rcx, -416(%rbp)        ## 8-byte Spill
	movq	%rdx, -424(%rbp)        ## 8-byte Spill
	movq	%rsi, -432(%rbp)        ## 8-byte Spill
	je	LBB9_12
## BB#11:
	movaps	-384(%rbp), %xmm0       ## 16-byte Reload
	movaps	%xmm0, -208(%rbp)
	movaps	-368(%rbp), %xmm1       ## 16-byte Reload
	movaps	%xmm1, -192(%rbp)
	movaps	-352(%rbp), %xmm2       ## 16-byte Reload
	movaps	%xmm2, -176(%rbp)
	movaps	-336(%rbp), %xmm3       ## 16-byte Reload
	movaps	%xmm3, -160(%rbp)
	movaps	-320(%rbp), %xmm4       ## 16-byte Reload
	movaps	%xmm4, -144(%rbp)
	movaps	-304(%rbp), %xmm5       ## 16-byte Reload
	movaps	%xmm5, -128(%rbp)
	movaps	-288(%rbp), %xmm6       ## 16-byte Reload
	movaps	%xmm6, -112(%rbp)
	movaps	-272(%rbp), %xmm7       ## 16-byte Reload
	movaps	%xmm7, -96(%rbp)
LBB9_12:
	movq	-400(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -216(%rbp)
	movq	-408(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -224(%rbp)
	movq	-416(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -232(%rbp)
	movq	-424(%rbp), %rsi        ## 8-byte Reload
	movq	-432(%rbp), %rdi        ## 8-byte Reload
	movq	-392(%rbp), %r8         ## 8-byte Reload
	leaq	-56(%rbp), %r9
	movq	___stack_chk_guard@GOTPCREL(%rip), %r10
	movq	(%r10), %r10
	movq	%r10, -8(%rbp)
	movq	%r8, -40(%rbp)
	movq	%rdi, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	%r9, %rdi
	callq	_objc_storeStrong
	movq	L_OBJC_CLASSLIST_REFERENCES_$_(%rip), %rax
	movq	L_OBJC_SELECTOR_REFERENCES_.30(%rip), %rsi
	movq	%rax, %rdi
	callq	_objc_msgSend
	movq	L_OBJC_SELECTOR_REFERENCES_(%rip), %rsi
	movq	%rax, %rdi
	callq	_objc_msgSend
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	je	LBB9_8
## BB#1:
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	L_OBJC_SELECTOR_REFERENCES_.46(%rip), %rsi
	movq	%rax, %rdi
	callq	_objc_msgSend
	leaq	-32(%rbp), %rax
	leaq	-256(%rbp), %rdx
	movq	%rdx, 16(%rax)
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$48, 4(%rax)
	movl	$24, (%rax)
	movq	$0, -72(%rbp)
LBB9_2:                                 ## =>This Inner Loop Header: Depth=1
	leaq	-32(%rbp), %rax
	movl	-32(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -440(%rbp)        ## 8-byte Spill
	movl	%ecx, -444(%rbp)        ## 4-byte Spill
	ja	LBB9_4
## BB#3:                                ##   in Loop: Header=BB9_2 Depth=1
	movl	-444(%rbp), %eax        ## 4-byte Reload
	movslq	%eax, %rcx
	movq	-440(%rbp), %rdx        ## 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -456(%rbp)        ## 8-byte Spill
	jmp	LBB9_5
LBB9_4:                                 ##   in Loop: Header=BB9_2 Depth=1
	movq	-440(%rbp), %rax        ## 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -456(%rbp)        ## 8-byte Spill
LBB9_5:                                 ##   in Loop: Header=BB9_2 Depth=1
	movq	-456(%rbp), %rax        ## 8-byte Reload
	leaq	-72(%rbp), %rdi
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rax, -464(%rbp)        ## 8-byte Spill
	callq	_objc_storeStrong
	movq	-464(%rbp), %rax        ## 8-byte Reload
	cmpq	$0, %rax
	je	LBB9_7
## BB#6:                                ##   in Loop: Header=BB9_2 Depth=1
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	L_OBJC_SELECTOR_REFERENCES_.46(%rip), %rsi
	movq	%rax, %rdi
	callq	_objc_msgSend
	jmp	LBB9_2
LBB9_7:
	leaq	-72(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_objc_storeStrong
LBB9_8:
	leaq	-32(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -472(%rbp)        ## 8-byte Spill
	callq	_CFGetRetainCount
	leaq	L__unnamed_cfstring_.48(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	_NSLog
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdi
	callq	_objc_retain
	xorl	%edx, %edx
	movl	%edx, %esi
	leaq	-64(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -480(%rbp)        ## 8-byte Spill
	callq	_objc_storeStrong
	leaq	-56(%rbp), %rdi
	xorl	%edx, %edx
	movl	%edx, %esi
	callq	_objc_storeStrong
	movq	-480(%rbp), %rdi        ## 8-byte Reload
	callq	_objc_autoreleaseReturnValue
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rsi
	cmpq	%rsi, %rcx
	movq	%rax, -488(%rbp)        ## 8-byte Spill
	jne	LBB9_10
## BB#9:
	movq	-488(%rbp), %rax        ## 8-byte Reload
	addq	$496, %rsp              ## imm = 0x1F0
	popq	%rbp
	retq
LBB9_10:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[ITMutableArray testObject4]
"-[ITMutableArray testObject4]":        ## @"\01-[ITMutableArray testObject4]"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi30:
	.cfi_def_cfa_offset 16
Lcfi31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi32:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	L_OBJC_SELECTOR_REFERENCES_.20(%rip), %rdi
	movq	%rdi, -32(%rbp)         ## 8-byte Spill
	movq	%rsi, %rdi
	movq	-32(%rbp), %rsi         ## 8-byte Reload
	callq	_objc_msgSend
	leaq	L__unnamed_cfstring_.36(%rip), %rsi
	leaq	L__unnamed_cfstring_.50(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movq	L_OBJC_SELECTOR_REFERENCES_.52(%rip), %rdx
	movq	%rdi, -40(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -48(%rbp)         ## 8-byte Spill
	movq	%rdx, %rsi
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	movq	-40(%rbp), %rcx         ## 8-byte Reload
	movb	$0, %al
	callq	_objc_msgSend
	movq	%rax, %rdi
	callq	_objc_retainAutoreleasedReturnValue
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	_CFGetRetainCount
	leaq	L__unnamed_cfstring_.48(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	_NSLog
	leaq	-24(%rbp), %rdi
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	callq	_objc_storeStrong
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function +[ITMutableArray object5:]
"+[ITMutableArray object5:]":           ## @"\01+[ITMutableArray object5:]"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi33:
	.cfi_def_cfa_offset 16
Lcfi34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi35:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	-24(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	_objc_storeStrong
	movq	L_OBJC_CLASSLIST_REFERENCES_$_(%rip), %rax
	movq	L_OBJC_SELECTOR_REFERENCES_.30(%rip), %rsi
	movq	%rax, %rdi
	callq	_objc_msgSend
	movq	L_OBJC_SELECTOR_REFERENCES_(%rip), %rsi
	movq	%rax, %rdi
	callq	_objc_msgSend
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	LBB11_2
## BB#1:
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	L_OBJC_SELECTOR_REFERENCES_.46(%rip), %rsi
	movq	%rax, %rdi
	callq	_objc_msgSend
LBB11_2:
	movq	-32(%rbp), %rdi
	callq	_CFGetRetainCount
	leaq	L__unnamed_cfstring_.54(%rip), %rdi
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, %rsi
	movb	%dl, %al
	movl	%ecx, -36(%rbp)         ## 4-byte Spill
	callq	_NSLog
	movq	-32(%rbp), %rdi
	movq	_objc_retain@GOTPCREL(%rip), %rsi
	callq	*%rsi
	movl	-36(%rbp), %ecx         ## 4-byte Reload
	movl	%ecx, %esi
	leaq	-32(%rbp), %rdi
	movq	%rsi, -48(%rbp)         ## 8-byte Spill
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	callq	_objc_storeStrong
	leaq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi         ## 8-byte Reload
	callq	_objc_storeStrong
	movq	-56(%rbp), %rdi         ## 8-byte Reload
	addq	$64, %rsp
	popq	%rbp
	jmp	_objc_autoreleaseReturnValue ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[ITMutableArray testObject5]
"-[ITMutableArray testObject5]":        ## @"\01-[ITMutableArray testObject5]"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi36:
	.cfi_def_cfa_offset 16
Lcfi37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi38:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	L_OBJC_SELECTOR_REFERENCES_.20(%rip), %rdi
	movq	%rdi, -32(%rbp)         ## 8-byte Spill
	movq	%rsi, %rdi
	movq	-32(%rbp), %rsi         ## 8-byte Reload
	callq	_objc_msgSend
	leaq	L__unnamed_cfstring_.36(%rip), %rsi
	movq	L_OBJC_SELECTOR_REFERENCES_.56(%rip), %rdi
	movq	%rdi, -40(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	movq	-40(%rbp), %rax         ## 8-byte Reload
	movq	%rsi, -48(%rbp)         ## 8-byte Spill
	movq	%rax, %rsi
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	callq	_objc_msgSend
	movq	%rax, %rdi
	callq	_objc_retainAutoreleasedReturnValue
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	_CFGetRetainCount
	leaq	L__unnamed_cfstring_.54(%rip), %rdx
	movq	%rdx, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	_NSLog
	leaq	-24(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	callq	_objc_storeStrong
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function +[ITMutableArray allocObject]
"+[ITMutableArray allocObject]":        ## @"\01+[ITMutableArray allocObject]"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi39:
	.cfi_def_cfa_offset 16
Lcfi40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi41:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	L_OBJC_CLASSLIST_REFERENCES_$_(%rip), %rsi
	movq	L_OBJC_SELECTOR_REFERENCES_.18(%rip), %rdi
	movq	%rdi, -24(%rbp)         ## 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         ## 8-byte Reload
	callq	_objc_msgSend
	movq	%rax, %rdi
	callq	_objc_retainAutoreleasedReturnValue
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[ITMutableArray test4]
"-[ITMutableArray test4]":              ## @"\01-[ITMutableArray test4]"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi42:
	.cfi_def_cfa_offset 16
Lcfi43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi44:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	L_OBJC_SELECTOR_REFERENCES_.20(%rip), %rdi
	movq	%rdi, -32(%rbp)         ## 8-byte Spill
	movq	%rsi, %rdi
	movq	-32(%rbp), %rsi         ## 8-byte Reload
	callq	_objc_msgSend
	movq	L_OBJC_SELECTOR_REFERENCES_.58(%rip), %rsi
	movq	%rax, %rdi
	callq	_objc_msgSend
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	_CFGetRetainCount
	leaq	L__unnamed_cfstring_.60(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	_NSLog
	leaq	-24(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	callq	_objc_storeStrong
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function +[ITMutableArray allocObject1]
"+[ITMutableArray allocObject1]":       ## @"\01+[ITMutableArray allocObject1]"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi45:
	.cfi_def_cfa_offset 16
Lcfi46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi47:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	L_OBJC_CLASSLIST_REFERENCES_$_(%rip), %rsi
	movq	L_OBJC_SELECTOR_REFERENCES_.18(%rip), %rdi
	movq	%rdi, -32(%rbp)         ## 8-byte Spill
	movq	%rsi, %rdi
	movq	-32(%rbp), %rsi         ## 8-byte Reload
	callq	_objc_msgSend
	movq	%rax, %rdi
	callq	_objc_retainAutoreleasedReturnValue
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	_objc_retain
	leaq	-24(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -40(%rbp)         ## 8-byte Spill
	callq	_objc_storeStrong
	movq	-40(%rbp), %rax         ## 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[ITMutableArray test5]
"-[ITMutableArray test5]":              ## @"\01-[ITMutableArray test5]"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi48:
	.cfi_def_cfa_offset 16
Lcfi49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi50:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	L_OBJC_SELECTOR_REFERENCES_.20(%rip), %rdi
	movq	%rdi, -32(%rbp)         ## 8-byte Spill
	movq	%rsi, %rdi
	movq	-32(%rbp), %rsi         ## 8-byte Reload
	callq	_objc_msgSend
	movq	L_OBJC_SELECTOR_REFERENCES_.62(%rip), %rsi
	movq	%rax, %rdi
	callq	_objc_msgSend
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	_CFGetRetainCount
	leaq	L__unnamed_cfstring_.64(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	_NSLog
	leaq	-24(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	callq	_objc_storeStrong
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__objc_data
	.globl	_OBJC_CLASS_$_ITMutableArray ## @"OBJC_CLASS_$_ITMutableArray"
	.p2align	3
_OBJC_CLASS_$_ITMutableArray:
	.quad	_OBJC_METACLASS_$_ITMutableArray
	.quad	_OBJC_CLASS_$_NSMutableArray
	.quad	__objc_empty_cache
	.quad	0
	.quad	l_OBJC_CLASS_RO_$_ITMutableArray

	.section	__DATA,__objc_superrefs,regular,no_dead_strip
	.p2align	3               ## @"OBJC_CLASSLIST_SUP_REFS_$_"
L_OBJC_CLASSLIST_SUP_REFS_$_:
	.quad	_OBJC_CLASS_$_ITMutableArray

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_:                  ## @OBJC_METH_VAR_NAME_
	.asciz	"init"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_
L_OBJC_SELECTOR_REFERENCES_:
	.quad	L_OBJC_METH_VAR_NAME_

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.1:                ## @OBJC_METH_VAR_NAME_.1
	.asciz	"testObject"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.2
L_OBJC_SELECTOR_REFERENCES_.2:
	.quad	L_OBJC_METH_VAR_NAME_.1

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.3:                ## @OBJC_METH_VAR_NAME_.3
	.asciz	"testObject1"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.4
L_OBJC_SELECTOR_REFERENCES_.4:
	.quad	L_OBJC_METH_VAR_NAME_.3

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.5:                ## @OBJC_METH_VAR_NAME_.5
	.asciz	"testObject2"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.6
L_OBJC_SELECTOR_REFERENCES_.6:
	.quad	L_OBJC_METH_VAR_NAME_.5

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.7:                ## @OBJC_METH_VAR_NAME_.7
	.asciz	"testObject3"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.8
L_OBJC_SELECTOR_REFERENCES_.8:
	.quad	L_OBJC_METH_VAR_NAME_.7

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.9:                ## @OBJC_METH_VAR_NAME_.9
	.asciz	"testObject4"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.10
L_OBJC_SELECTOR_REFERENCES_.10:
	.quad	L_OBJC_METH_VAR_NAME_.9

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.11:               ## @OBJC_METH_VAR_NAME_.11
	.asciz	"testObject5"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.12
L_OBJC_SELECTOR_REFERENCES_.12:
	.quad	L_OBJC_METH_VAR_NAME_.11

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.13:               ## @OBJC_METH_VAR_NAME_.13
	.asciz	"test4"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.14
L_OBJC_SELECTOR_REFERENCES_.14:
	.quad	L_OBJC_METH_VAR_NAME_.13

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.15:               ## @OBJC_METH_VAR_NAME_.15
	.asciz	"test5"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.16
L_OBJC_SELECTOR_REFERENCES_.16:
	.quad	L_OBJC_METH_VAR_NAME_.15

	.section	__DATA,__objc_classrefs,regular,no_dead_strip
	.p2align	3               ## @"OBJC_CLASSLIST_REFERENCES_$_"
L_OBJC_CLASSLIST_REFERENCES_$_:
	.quad	_OBJC_CLASS_$_NSMutableArray

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.17:               ## @OBJC_METH_VAR_NAME_.17
	.asciz	"array"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.18
L_OBJC_SELECTOR_REFERENCES_.18:
	.quad	L_OBJC_METH_VAR_NAME_.17

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.19:               ## @OBJC_METH_VAR_NAME_.19
	.asciz	"class"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.20
L_OBJC_SELECTOR_REFERENCES_.20:
	.quad	L_OBJC_METH_VAR_NAME_.19

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.21:               ## @OBJC_METH_VAR_NAME_.21
	.asciz	"object"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.22
L_OBJC_SELECTOR_REFERENCES_.22:
	.quad	L_OBJC_METH_VAR_NAME_.21

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"testObject - %ld"

	.section	__DATA,__cfstring
	.p2align	3               ## @_unnamed_cfstring_
L__unnamed_cfstring_:
	.quad	___CFConstantStringClassReference
	.long	1992                    ## 0x7c8
	.space	4
	.quad	L_.str
	.quad	16                      ## 0x10

	.section	__TEXT,__cstring,cstring_literals
L_.str.23:                              ## @.str.23
	.asciz	"object1 - %ld"

	.section	__DATA,__cfstring
	.p2align	3               ## @_unnamed_cfstring_.24
L__unnamed_cfstring_.24:
	.quad	___CFConstantStringClassReference
	.long	1992                    ## 0x7c8
	.space	4
	.quad	L_.str.23
	.quad	13                      ## 0xd

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.25:               ## @OBJC_METH_VAR_NAME_.25
	.asciz	"object1"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.26
L_OBJC_SELECTOR_REFERENCES_.26:
	.quad	L_OBJC_METH_VAR_NAME_.25

	.section	__TEXT,__cstring,cstring_literals
L_.str.27:                              ## @.str.27
	.asciz	"testObject1 - %ld"

	.section	__DATA,__cfstring
	.p2align	3               ## @_unnamed_cfstring_.28
L__unnamed_cfstring_.28:
	.quad	___CFConstantStringClassReference
	.long	1992                    ## 0x7c8
	.space	4
	.quad	L_.str.27
	.quad	17                      ## 0x11

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.29:               ## @OBJC_METH_VAR_NAME_.29
	.asciz	"alloc"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.30
L_OBJC_SELECTOR_REFERENCES_.30:
	.quad	L_OBJC_METH_VAR_NAME_.29

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.31:               ## @OBJC_METH_VAR_NAME_.31
	.asciz	"object2"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.32
L_OBJC_SELECTOR_REFERENCES_.32:
	.quad	L_OBJC_METH_VAR_NAME_.31

	.section	__TEXT,__cstring,cstring_literals
L_.str.33:                              ## @.str.33
	.asciz	"testObject2 - %ld"

	.section	__DATA,__cfstring
	.p2align	3               ## @_unnamed_cfstring_.34
L__unnamed_cfstring_.34:
	.quad	___CFConstantStringClassReference
	.long	1992                    ## 0x7c8
	.space	4
	.quad	L_.str.33
	.quad	17                      ## 0x11

	.section	__TEXT,__cstring,cstring_literals
L_.str.35:                              ## @.str.35
	.asciz	"1"

	.section	__DATA,__cfstring
	.p2align	3               ## @_unnamed_cfstring_.36
L__unnamed_cfstring_.36:
	.quad	___CFConstantStringClassReference
	.long	1992                    ## 0x7c8
	.space	4
	.quad	L_.str.35
	.quad	1                       ## 0x1

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.37:               ## @OBJC_METH_VAR_NAME_.37
	.asciz	"arrayWithObjects:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.38
L_OBJC_SELECTOR_REFERENCES_.38:
	.quad	L_OBJC_METH_VAR_NAME_.37

	.section	__TEXT,__cstring,cstring_literals
L_.str.39:                              ## @.str.39
	.asciz	"object3 - %ld"

	.section	__DATA,__cfstring
	.p2align	3               ## @_unnamed_cfstring_.40
L__unnamed_cfstring_.40:
	.quad	___CFConstantStringClassReference
	.long	1992                    ## 0x7c8
	.space	4
	.quad	L_.str.39
	.quad	13                      ## 0xd

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.41:               ## @OBJC_METH_VAR_NAME_.41
	.asciz	"object3"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.42
L_OBJC_SELECTOR_REFERENCES_.42:
	.quad	L_OBJC_METH_VAR_NAME_.41

	.section	__TEXT,__cstring,cstring_literals
L_.str.43:                              ## @.str.43
	.asciz	"testObject3 - %ld"

	.section	__DATA,__cfstring
	.p2align	3               ## @_unnamed_cfstring_.44
L__unnamed_cfstring_.44:
	.quad	___CFConstantStringClassReference
	.long	1992                    ## 0x7c8
	.space	4
	.quad	L_.str.43
	.quad	17                      ## 0x11

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.45:               ## @OBJC_METH_VAR_NAME_.45
	.asciz	"addObject:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.46
L_OBJC_SELECTOR_REFERENCES_.46:
	.quad	L_OBJC_METH_VAR_NAME_.45

	.section	__TEXT,__cstring,cstring_literals
L_.str.47:                              ## @.str.47
	.asciz	"testObject4 - %ld"

	.section	__DATA,__cfstring
	.p2align	3               ## @_unnamed_cfstring_.48
L__unnamed_cfstring_.48:
	.quad	___CFConstantStringClassReference
	.long	1992                    ## 0x7c8
	.space	4
	.quad	L_.str.47
	.quad	17                      ## 0x11

	.section	__TEXT,__cstring,cstring_literals
L_.str.49:                              ## @.str.49
	.asciz	"2"

	.section	__DATA,__cfstring
	.p2align	3               ## @_unnamed_cfstring_.50
L__unnamed_cfstring_.50:
	.quad	___CFConstantStringClassReference
	.long	1992                    ## 0x7c8
	.space	4
	.quad	L_.str.49
	.quad	1                       ## 0x1

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.51:               ## @OBJC_METH_VAR_NAME_.51
	.asciz	"object4:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.52
L_OBJC_SELECTOR_REFERENCES_.52:
	.quad	L_OBJC_METH_VAR_NAME_.51

	.section	__TEXT,__cstring,cstring_literals
L_.str.53:                              ## @.str.53
	.asciz	"testObject5 - %ld"

	.section	__DATA,__cfstring
	.p2align	3               ## @_unnamed_cfstring_.54
L__unnamed_cfstring_.54:
	.quad	___CFConstantStringClassReference
	.long	1992                    ## 0x7c8
	.space	4
	.quad	L_.str.53
	.quad	17                      ## 0x11

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.55:               ## @OBJC_METH_VAR_NAME_.55
	.asciz	"object5:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.56
L_OBJC_SELECTOR_REFERENCES_.56:
	.quad	L_OBJC_METH_VAR_NAME_.55

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.57:               ## @OBJC_METH_VAR_NAME_.57
	.asciz	"allocObject"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.58
L_OBJC_SELECTOR_REFERENCES_.58:
	.quad	L_OBJC_METH_VAR_NAME_.57

	.section	__TEXT,__cstring,cstring_literals
L_.str.59:                              ## @.str.59
	.asciz	"test4 - %ld"

	.section	__DATA,__cfstring
	.p2align	3               ## @_unnamed_cfstring_.60
L__unnamed_cfstring_.60:
	.quad	___CFConstantStringClassReference
	.long	1992                    ## 0x7c8
	.space	4
	.quad	L_.str.59
	.quad	11                      ## 0xb

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.61:               ## @OBJC_METH_VAR_NAME_.61
	.asciz	"allocObject1"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.62
L_OBJC_SELECTOR_REFERENCES_.62:
	.quad	L_OBJC_METH_VAR_NAME_.61

	.section	__TEXT,__cstring,cstring_literals
L_.str.63:                              ## @.str.63
	.asciz	"test5 - %ld"

	.section	__DATA,__cfstring
	.p2align	3               ## @_unnamed_cfstring_.64
L__unnamed_cfstring_.64:
	.quad	___CFConstantStringClassReference
	.long	1992                    ## 0x7c8
	.space	4
	.quad	L_.str.63
	.quad	11                      ## 0xb

	.section	__TEXT,__objc_classname,cstring_literals
L_OBJC_CLASS_NAME_:                     ## @OBJC_CLASS_NAME_
	.asciz	"ITMutableArray"

	.section	__TEXT,__objc_methtype,cstring_literals
L_OBJC_METH_VAR_TYPE_:                  ## @OBJC_METH_VAR_TYPE_
	.asciz	"@16@0:8"

L_OBJC_METH_VAR_TYPE_.65:               ## @OBJC_METH_VAR_TYPE_.65
	.asciz	"@24@0:8@16"

	.section	__DATA,__objc_const
	.p2align	3               ## @"\01l_OBJC_$_CLASS_METHODS_ITMutableArray"
l_OBJC_$_CLASS_METHODS_ITMutableArray:
	.long	24                      ## 0x18
	.long	8                       ## 0x8
	.quad	L_OBJC_METH_VAR_NAME_.21
	.quad	L_OBJC_METH_VAR_TYPE_
	.quad	"+[ITMutableArray object]"
	.quad	L_OBJC_METH_VAR_NAME_.25
	.quad	L_OBJC_METH_VAR_TYPE_
	.quad	"+[ITMutableArray object1]"
	.quad	L_OBJC_METH_VAR_NAME_.31
	.quad	L_OBJC_METH_VAR_TYPE_
	.quad	"+[ITMutableArray object2]"
	.quad	L_OBJC_METH_VAR_NAME_.41
	.quad	L_OBJC_METH_VAR_TYPE_
	.quad	"+[ITMutableArray object3]"
	.quad	L_OBJC_METH_VAR_NAME_.51
	.quad	L_OBJC_METH_VAR_TYPE_.65
	.quad	"+[ITMutableArray object4:]"
	.quad	L_OBJC_METH_VAR_NAME_.55
	.quad	L_OBJC_METH_VAR_TYPE_.65
	.quad	"+[ITMutableArray object5:]"
	.quad	L_OBJC_METH_VAR_NAME_.57
	.quad	L_OBJC_METH_VAR_TYPE_
	.quad	"+[ITMutableArray allocObject]"
	.quad	L_OBJC_METH_VAR_NAME_.61
	.quad	L_OBJC_METH_VAR_TYPE_
	.quad	"+[ITMutableArray allocObject1]"

	.p2align	3               ## @"\01l_OBJC_METACLASS_RO_$_ITMutableArray"
l_OBJC_METACLASS_RO_$_ITMutableArray:
	.long	129                     ## 0x81
	.long	40                      ## 0x28
	.long	40                      ## 0x28
	.space	4
	.quad	0
	.quad	L_OBJC_CLASS_NAME_
	.quad	l_OBJC_$_CLASS_METHODS_ITMutableArray
	.quad	0
	.quad	0
	.quad	0
	.quad	0

	.section	__DATA,__objc_data
	.globl	_OBJC_METACLASS_$_ITMutableArray ## @"OBJC_METACLASS_$_ITMutableArray"
	.p2align	3
_OBJC_METACLASS_$_ITMutableArray:
	.quad	_OBJC_METACLASS_$_NSObject
	.quad	_OBJC_METACLASS_$_NSMutableArray
	.quad	__objc_empty_cache
	.quad	0
	.quad	l_OBJC_METACLASS_RO_$_ITMutableArray

	.section	__TEXT,__objc_methtype,cstring_literals
L_OBJC_METH_VAR_TYPE_.66:               ## @OBJC_METH_VAR_TYPE_.66
	.asciz	"v16@0:8"

	.section	__DATA,__objc_const
	.p2align	3               ## @"\01l_OBJC_$_INSTANCE_METHODS_ITMutableArray"
l_OBJC_$_INSTANCE_METHODS_ITMutableArray:
	.long	24                      ## 0x18
	.long	9                       ## 0x9
	.quad	L_OBJC_METH_VAR_NAME_
	.quad	L_OBJC_METH_VAR_TYPE_
	.quad	"-[ITMutableArray init]"
	.quad	L_OBJC_METH_VAR_NAME_.1
	.quad	L_OBJC_METH_VAR_TYPE_.66
	.quad	"-[ITMutableArray testObject]"
	.quad	L_OBJC_METH_VAR_NAME_.3
	.quad	L_OBJC_METH_VAR_TYPE_.66
	.quad	"-[ITMutableArray testObject1]"
	.quad	L_OBJC_METH_VAR_NAME_.5
	.quad	L_OBJC_METH_VAR_TYPE_.66
	.quad	"-[ITMutableArray testObject2]"
	.quad	L_OBJC_METH_VAR_NAME_.7
	.quad	L_OBJC_METH_VAR_TYPE_.66
	.quad	"-[ITMutableArray testObject3]"
	.quad	L_OBJC_METH_VAR_NAME_.9
	.quad	L_OBJC_METH_VAR_TYPE_.66
	.quad	"-[ITMutableArray testObject4]"
	.quad	L_OBJC_METH_VAR_NAME_.11
	.quad	L_OBJC_METH_VAR_TYPE_.66
	.quad	"-[ITMutableArray testObject5]"
	.quad	L_OBJC_METH_VAR_NAME_.13
	.quad	L_OBJC_METH_VAR_TYPE_.66
	.quad	"-[ITMutableArray test4]"
	.quad	L_OBJC_METH_VAR_NAME_.15
	.quad	L_OBJC_METH_VAR_TYPE_.66
	.quad	"-[ITMutableArray test5]"

	.p2align	3               ## @"\01l_OBJC_CLASS_RO_$_ITMutableArray"
l_OBJC_CLASS_RO_$_ITMutableArray:
	.long	128                     ## 0x80
	.long	8                       ## 0x8
	.long	8                       ## 0x8
	.space	4
	.quad	0
	.quad	L_OBJC_CLASS_NAME_
	.quad	l_OBJC_$_INSTANCE_METHODS_ITMutableArray
	.quad	0
	.quad	0
	.quad	0
	.quad	0

	.section	__DATA,__objc_classlist,regular,no_dead_strip
	.p2align	3               ## @"OBJC_LABEL_CLASS_$"
L_OBJC_LABEL_CLASS_$:
	.quad	_OBJC_CLASS_$_ITMutableArray

	.section	__DATA,__objc_imageinfo,regular,no_dead_strip
L_OBJC_IMAGE_INFO:
	.long	0
	.long	64


.subsections_via_symbols
