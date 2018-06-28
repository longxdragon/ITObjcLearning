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
	movq	L_OBJC_SELECTOR_REFERENCES_.14(%rip), %rdi
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
	movq	L_OBJC_SELECTOR_REFERENCES_.16(%rip), %rdi
	movq	%rdi, -32(%rbp)         ## 8-byte Spill
	movq	%rsi, %rdi
	movq	-32(%rbp), %rsi         ## 8-byte Reload
	callq	_objc_msgSend
	movq	L_OBJC_SELECTOR_REFERENCES_.18(%rip), %rsi
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
	movq	L_OBJC_SELECTOR_REFERENCES_.14(%rip), %rsi
	movq	_objc_msgSend@GOTPCREL(%rip), %rax
	callq	*%rax
	movq	%rax, %rdi
	callq	_objc_retainAutoreleasedReturnValue
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	_CFGetRetainCount
	leaq	L__unnamed_cfstring_.20(%rip), %rdi
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
	movq	L_OBJC_SELECTOR_REFERENCES_.16(%rip), %rdi
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
	leaq	L__unnamed_cfstring_.24(%rip), %rsi
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
	movq	L_OBJC_SELECTOR_REFERENCES_.26(%rip), %rsi
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
	movq	L_OBJC_SELECTOR_REFERENCES_.16(%rip), %rdi
	movq	%rdi, -32(%rbp)         ## 8-byte Spill
	movq	%rsi, %rdi
	movq	-32(%rbp), %rsi         ## 8-byte Reload
	callq	_objc_msgSend
	movq	L_OBJC_SELECTOR_REFERENCES_.28(%rip), %rsi
	movq	%rax, %rdi
	callq	_objc_msgSend
	movq	%rax, %rdi
	callq	_objc_retainAutoreleasedReturnValue
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	_CFGetRetainCount
	leaq	L__unnamed_cfstring_.30(%rip), %rsi
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
	movq	L_OBJC_SELECTOR_REFERENCES_.34(%rip), %rsi
	leaq	L__unnamed_cfstring_.32(%rip), %rdx
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
	leaq	L__unnamed_cfstring_.36(%rip), %rdi
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
	movq	L_OBJC_SELECTOR_REFERENCES_.16(%rip), %rdi
	movq	%rdi, -32(%rbp)         ## 8-byte Spill
	movq	%rsi, %rdi
	movq	-32(%rbp), %rsi         ## 8-byte Reload
	callq	_objc_msgSend
	movq	L_OBJC_SELECTOR_REFERENCES_.38(%rip), %rsi
	movq	%rax, %rdi
	callq	_objc_msgSend
	movq	%rax, %rdi
	callq	_objc_retainAutoreleasedReturnValue
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	_CFGetRetainCount
	leaq	L__unnamed_cfstring_.40(%rip), %rsi
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
	.p2align	4, 0x90         ## -- Begin function +[ITMutableArray allocObject]
"+[ITMutableArray allocObject]":        ## @"\01+[ITMutableArray allocObject]"
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	L_OBJC_CLASSLIST_REFERENCES_$_(%rip), %rsi
	movq	L_OBJC_SELECTOR_REFERENCES_.14(%rip), %rdi
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
Lcfi30:
	.cfi_def_cfa_offset 16
Lcfi31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi32:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	L_OBJC_SELECTOR_REFERENCES_.16(%rip), %rdi
	movq	%rdi, -32(%rbp)         ## 8-byte Spill
	movq	%rsi, %rdi
	movq	-32(%rbp), %rsi         ## 8-byte Reload
	callq	_objc_msgSend
	movq	L_OBJC_SELECTOR_REFERENCES_.42(%rip), %rsi
	movq	%rax, %rdi
	callq	_objc_msgSend
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
	.p2align	4, 0x90         ## -- Begin function +[ITMutableArray allocObject1]
"+[ITMutableArray allocObject1]":       ## @"\01+[ITMutableArray allocObject1]"
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	L_OBJC_CLASSLIST_REFERENCES_$_(%rip), %rsi
	movq	L_OBJC_SELECTOR_REFERENCES_.14(%rip), %rdi
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
Lcfi36:
	.cfi_def_cfa_offset 16
Lcfi37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi38:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	L_OBJC_SELECTOR_REFERENCES_.16(%rip), %rdi
	movq	%rdi, -32(%rbp)         ## 8-byte Spill
	movq	%rsi, %rdi
	movq	-32(%rbp), %rsi         ## 8-byte Reload
	callq	_objc_msgSend
	movq	L_OBJC_SELECTOR_REFERENCES_.46(%rip), %rsi
	movq	%rax, %rdi
	callq	_objc_msgSend
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	_CFGetRetainCount
	leaq	L__unnamed_cfstring_.48(%rip), %rsi
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
	.asciz	"test4"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.10
L_OBJC_SELECTOR_REFERENCES_.10:
	.quad	L_OBJC_METH_VAR_NAME_.9

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.11:               ## @OBJC_METH_VAR_NAME_.11
	.asciz	"test5"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.12
L_OBJC_SELECTOR_REFERENCES_.12:
	.quad	L_OBJC_METH_VAR_NAME_.11

	.section	__DATA,__objc_classrefs,regular,no_dead_strip
	.p2align	3               ## @"OBJC_CLASSLIST_REFERENCES_$_"
L_OBJC_CLASSLIST_REFERENCES_$_:
	.quad	_OBJC_CLASS_$_NSMutableArray

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.13:               ## @OBJC_METH_VAR_NAME_.13
	.asciz	"array"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.14
L_OBJC_SELECTOR_REFERENCES_.14:
	.quad	L_OBJC_METH_VAR_NAME_.13

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.15:               ## @OBJC_METH_VAR_NAME_.15
	.asciz	"class"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.16
L_OBJC_SELECTOR_REFERENCES_.16:
	.quad	L_OBJC_METH_VAR_NAME_.15

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.17:               ## @OBJC_METH_VAR_NAME_.17
	.asciz	"object"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.18
L_OBJC_SELECTOR_REFERENCES_.18:
	.quad	L_OBJC_METH_VAR_NAME_.17

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
L_.str.19:                              ## @.str.19
	.asciz	"object1 - %ld"

	.section	__DATA,__cfstring
	.p2align	3               ## @_unnamed_cfstring_.20
L__unnamed_cfstring_.20:
	.quad	___CFConstantStringClassReference
	.long	1992                    ## 0x7c8
	.space	4
	.quad	L_.str.19
	.quad	13                      ## 0xd

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.21:               ## @OBJC_METH_VAR_NAME_.21
	.asciz	"object1"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.22
L_OBJC_SELECTOR_REFERENCES_.22:
	.quad	L_OBJC_METH_VAR_NAME_.21

	.section	__TEXT,__cstring,cstring_literals
L_.str.23:                              ## @.str.23
	.asciz	"testObject1 - %ld"

	.section	__DATA,__cfstring
	.p2align	3               ## @_unnamed_cfstring_.24
L__unnamed_cfstring_.24:
	.quad	___CFConstantStringClassReference
	.long	1992                    ## 0x7c8
	.space	4
	.quad	L_.str.23
	.quad	17                      ## 0x11

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.25:               ## @OBJC_METH_VAR_NAME_.25
	.asciz	"alloc"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.26
L_OBJC_SELECTOR_REFERENCES_.26:
	.quad	L_OBJC_METH_VAR_NAME_.25

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.27:               ## @OBJC_METH_VAR_NAME_.27
	.asciz	"object2"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.28
L_OBJC_SELECTOR_REFERENCES_.28:
	.quad	L_OBJC_METH_VAR_NAME_.27

	.section	__TEXT,__cstring,cstring_literals
L_.str.29:                              ## @.str.29
	.asciz	"testObject2 - %ld"

	.section	__DATA,__cfstring
	.p2align	3               ## @_unnamed_cfstring_.30
L__unnamed_cfstring_.30:
	.quad	___CFConstantStringClassReference
	.long	1992                    ## 0x7c8
	.space	4
	.quad	L_.str.29
	.quad	17                      ## 0x11

	.section	__TEXT,__cstring,cstring_literals
L_.str.31:                              ## @.str.31
	.asciz	"1"

	.section	__DATA,__cfstring
	.p2align	3               ## @_unnamed_cfstring_.32
L__unnamed_cfstring_.32:
	.quad	___CFConstantStringClassReference
	.long	1992                    ## 0x7c8
	.space	4
	.quad	L_.str.31
	.quad	1                       ## 0x1

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.33:               ## @OBJC_METH_VAR_NAME_.33
	.asciz	"arrayWithObjects:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.34
L_OBJC_SELECTOR_REFERENCES_.34:
	.quad	L_OBJC_METH_VAR_NAME_.33

	.section	__TEXT,__cstring,cstring_literals
L_.str.35:                              ## @.str.35
	.asciz	"object3 - %ld"

	.section	__DATA,__cfstring
	.p2align	3               ## @_unnamed_cfstring_.36
L__unnamed_cfstring_.36:
	.quad	___CFConstantStringClassReference
	.long	1992                    ## 0x7c8
	.space	4
	.quad	L_.str.35
	.quad	13                      ## 0xd

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.37:               ## @OBJC_METH_VAR_NAME_.37
	.asciz	"object3"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.38
L_OBJC_SELECTOR_REFERENCES_.38:
	.quad	L_OBJC_METH_VAR_NAME_.37

	.section	__TEXT,__cstring,cstring_literals
L_.str.39:                              ## @.str.39
	.asciz	"testObject3 - %ld"

	.section	__DATA,__cfstring
	.p2align	3               ## @_unnamed_cfstring_.40
L__unnamed_cfstring_.40:
	.quad	___CFConstantStringClassReference
	.long	1992                    ## 0x7c8
	.space	4
	.quad	L_.str.39
	.quad	17                      ## 0x11

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.41:               ## @OBJC_METH_VAR_NAME_.41
	.asciz	"allocObject"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.42
L_OBJC_SELECTOR_REFERENCES_.42:
	.quad	L_OBJC_METH_VAR_NAME_.41

	.section	__TEXT,__cstring,cstring_literals
L_.str.43:                              ## @.str.43
	.asciz	"test4 - %ld"

	.section	__DATA,__cfstring
	.p2align	3               ## @_unnamed_cfstring_.44
L__unnamed_cfstring_.44:
	.quad	___CFConstantStringClassReference
	.long	1992                    ## 0x7c8
	.space	4
	.quad	L_.str.43
	.quad	11                      ## 0xb

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.45:               ## @OBJC_METH_VAR_NAME_.45
	.asciz	"allocObject1"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.46
L_OBJC_SELECTOR_REFERENCES_.46:
	.quad	L_OBJC_METH_VAR_NAME_.45

	.section	__TEXT,__cstring,cstring_literals
L_.str.47:                              ## @.str.47
	.asciz	"test5 - %ld"

	.section	__DATA,__cfstring
	.p2align	3               ## @_unnamed_cfstring_.48
L__unnamed_cfstring_.48:
	.quad	___CFConstantStringClassReference
	.long	1992                    ## 0x7c8
	.space	4
	.quad	L_.str.47
	.quad	11                      ## 0xb

	.section	__TEXT,__objc_classname,cstring_literals
L_OBJC_CLASS_NAME_:                     ## @OBJC_CLASS_NAME_
	.asciz	"ITMutableArray"

	.section	__TEXT,__objc_methtype,cstring_literals
L_OBJC_METH_VAR_TYPE_:                  ## @OBJC_METH_VAR_TYPE_
	.asciz	"@16@0:8"

	.section	__DATA,__objc_const
	.p2align	3               ## @"\01l_OBJC_$_CLASS_METHODS_ITMutableArray"
l_OBJC_$_CLASS_METHODS_ITMutableArray:
	.long	24                      ## 0x18
	.long	6                       ## 0x6
	.quad	L_OBJC_METH_VAR_NAME_.17
	.quad	L_OBJC_METH_VAR_TYPE_
	.quad	"+[ITMutableArray object]"
	.quad	L_OBJC_METH_VAR_NAME_.21
	.quad	L_OBJC_METH_VAR_TYPE_
	.quad	"+[ITMutableArray object1]"
	.quad	L_OBJC_METH_VAR_NAME_.27
	.quad	L_OBJC_METH_VAR_TYPE_
	.quad	"+[ITMutableArray object2]"
	.quad	L_OBJC_METH_VAR_NAME_.37
	.quad	L_OBJC_METH_VAR_TYPE_
	.quad	"+[ITMutableArray object3]"
	.quad	L_OBJC_METH_VAR_NAME_.41
	.quad	L_OBJC_METH_VAR_TYPE_
	.quad	"+[ITMutableArray allocObject]"
	.quad	L_OBJC_METH_VAR_NAME_.45
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
L_OBJC_METH_VAR_TYPE_.49:               ## @OBJC_METH_VAR_TYPE_.49
	.asciz	"v16@0:8"

	.section	__DATA,__objc_const
	.p2align	3               ## @"\01l_OBJC_$_INSTANCE_METHODS_ITMutableArray"
l_OBJC_$_INSTANCE_METHODS_ITMutableArray:
	.long	24                      ## 0x18
	.long	7                       ## 0x7
	.quad	L_OBJC_METH_VAR_NAME_
	.quad	L_OBJC_METH_VAR_TYPE_
	.quad	"-[ITMutableArray init]"
	.quad	L_OBJC_METH_VAR_NAME_.1
	.quad	L_OBJC_METH_VAR_TYPE_.49
	.quad	"-[ITMutableArray testObject]"
	.quad	L_OBJC_METH_VAR_NAME_.3
	.quad	L_OBJC_METH_VAR_TYPE_.49
	.quad	"-[ITMutableArray testObject1]"
	.quad	L_OBJC_METH_VAR_NAME_.5
	.quad	L_OBJC_METH_VAR_TYPE_.49
	.quad	"-[ITMutableArray testObject2]"
	.quad	L_OBJC_METH_VAR_NAME_.7
	.quad	L_OBJC_METH_VAR_TYPE_.49
	.quad	"-[ITMutableArray testObject3]"
	.quad	L_OBJC_METH_VAR_NAME_.9
	.quad	L_OBJC_METH_VAR_TYPE_.49
	.quad	"-[ITMutableArray test4]"
	.quad	L_OBJC_METH_VAR_NAME_.11
	.quad	L_OBJC_METH_VAR_TYPE_.49
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
