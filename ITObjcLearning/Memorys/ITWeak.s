	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.p2align	4, 0x90         ## -- Begin function -[ITWeak init]
"-[ITWeak init]":                       ## @"\01-[ITWeak init]"
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
	.p2align	4, 0x90         ## -- Begin function -[ITWeak defineWeakObj]
"-[ITWeak defineWeakObj]":              ## @"\01-[ITWeak defineWeakObj]"
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___objc_personality_v0
	.cfi_lsda 16, Lexception0
## BB#0:
	pushq	%rbp
Lcfi3:
	.cfi_def_cfa_offset 16
Lcfi4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi5:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	L_OBJC_CLASSLIST_REFERENCES_$_(%rip), %rdi
	movq	L_OBJC_SELECTOR_REFERENCES_.4(%rip), %rsi
	movq	_objc_msgSend@GOTPCREL(%rip), %rax
	callq	*%rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	leaq	-32(%rbp), %rdi
	callq	_objc_initWeak
	movq	-24(%rbp), %rdi
Ltmp0:
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	callq	__objc_rootRetainCount
Ltmp1:
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	jmp	LBB1_1
LBB1_1:
Ltmp2:
	leaq	L__unnamed_cfstring_(%rip), %rdi
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-64(%rbp), %rsi         ## 8-byte Reload
	movb	%cl, %al
	callq	_NSLog
Ltmp3:
	jmp	LBB1_2
LBB1_2:
	leaq	-32(%rbp), %rdi
	callq	_objc_loadWeakRetained
	movq	%rax, %rdi
Ltmp4:
	movq	%rdi, -72(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	callq	__objc_rootRetainCount
Ltmp5:
	movq	%rax, -80(%rbp)         ## 8-byte Spill
	jmp	LBB1_3
LBB1_3:
Ltmp6:
	leaq	L__unnamed_cfstring_(%rip), %rdi
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-80(%rbp), %rsi         ## 8-byte Reload
	movb	%cl, %al
	callq	_NSLog
Ltmp7:
	jmp	LBB1_4
LBB1_4:
	movq	-72(%rbp), %rdi         ## 8-byte Reload
	callq	_objc_release
	leaq	-32(%rbp), %rdi
	callq	_objc_destroyWeak
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-24(%rbp), %rdi
	callq	_objc_storeStrong
	addq	$80, %rsp
	popq	%rbp
	retq
LBB1_5:
Ltmp8:
	leaq	-32(%rbp), %rdi
	movl	%edx, %ecx
	movq	%rax, -40(%rbp)
	movl	%ecx, -44(%rbp)
	callq	_objc_destroyWeak
## BB#6:
	movq	-40(%rbp), %rdi
	callq	__Unwind_Resume
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table1:
Lexception0:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\303\200"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	65                      ## Call site table length
Lset0 = Lfunc_begin0-Lfunc_begin0       ## >> Call Site 1 <<
	.long	Lset0
Lset1 = Ltmp0-Lfunc_begin0              ##   Call between Lfunc_begin0 and Ltmp0
	.long	Lset1
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset2 = Ltmp0-Lfunc_begin0              ## >> Call Site 2 <<
	.long	Lset2
Lset3 = Ltmp3-Ltmp0                     ##   Call between Ltmp0 and Ltmp3
	.long	Lset3
Lset4 = Ltmp8-Lfunc_begin0              ##     jumps to Ltmp8
	.long	Lset4
	.byte	0                       ##   On action: cleanup
Lset5 = Ltmp3-Lfunc_begin0              ## >> Call Site 3 <<
	.long	Lset5
Lset6 = Ltmp4-Ltmp3                     ##   Call between Ltmp3 and Ltmp4
	.long	Lset6
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset7 = Ltmp4-Lfunc_begin0              ## >> Call Site 4 <<
	.long	Lset7
Lset8 = Ltmp7-Ltmp4                     ##   Call between Ltmp4 and Ltmp7
	.long	Lset8
Lset9 = Ltmp8-Lfunc_begin0              ##     jumps to Ltmp8
	.long	Lset9
	.byte	0                       ##   On action: cleanup
Lset10 = Ltmp7-Lfunc_begin0             ## >> Call Site 5 <<
	.long	Lset10
Lset11 = Lfunc_end0-Ltmp7               ##   Call between Ltmp7 and Lfunc_end0
	.long	Lset11
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__DATA,__objc_data
	.globl	_OBJC_CLASS_$_ITWeak    ## @"OBJC_CLASS_$_ITWeak"
	.p2align	3
_OBJC_CLASS_$_ITWeak:
	.quad	_OBJC_METACLASS_$_ITWeak
	.quad	_OBJC_CLASS_$_NSObject
	.quad	__objc_empty_cache
	.quad	0
	.quad	l_OBJC_CLASS_RO_$_ITWeak

	.section	__DATA,__objc_superrefs,regular,no_dead_strip
	.p2align	3               ## @"OBJC_CLASSLIST_SUP_REFS_$_"
L_OBJC_CLASSLIST_SUP_REFS_$_:
	.quad	_OBJC_CLASS_$_ITWeak

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_:                  ## @OBJC_METH_VAR_NAME_
	.asciz	"init"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_
L_OBJC_SELECTOR_REFERENCES_:
	.quad	L_OBJC_METH_VAR_NAME_

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.1:                ## @OBJC_METH_VAR_NAME_.1
	.asciz	"defineWeakObj"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.2
L_OBJC_SELECTOR_REFERENCES_.2:
	.quad	L_OBJC_METH_VAR_NAME_.1

	.section	__DATA,__objc_classrefs,regular,no_dead_strip
	.p2align	3               ## @"OBJC_CLASSLIST_REFERENCES_$_"
L_OBJC_CLASSLIST_REFERENCES_$_:
	.quad	_OBJC_CLASS_$_NSObject

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.3:                ## @OBJC_METH_VAR_NAME_.3
	.asciz	"new"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.4
L_OBJC_SELECTOR_REFERENCES_.4:
	.quad	L_OBJC_METH_VAR_NAME_.3

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%ld"

	.section	__DATA,__cfstring
	.p2align	3               ## @_unnamed_cfstring_
L__unnamed_cfstring_:
	.quad	___CFConstantStringClassReference
	.long	1992                    ## 0x7c8
	.space	4
	.quad	L_.str
	.quad	3                       ## 0x3

	.section	__TEXT,__objc_classname,cstring_literals
L_OBJC_CLASS_NAME_:                     ## @OBJC_CLASS_NAME_
	.asciz	"ITWeak"

	.section	__DATA,__objc_const
	.p2align	3               ## @"\01l_OBJC_METACLASS_RO_$_ITWeak"
l_OBJC_METACLASS_RO_$_ITWeak:
	.long	129                     ## 0x81
	.long	40                      ## 0x28
	.long	40                      ## 0x28
	.space	4
	.quad	0
	.quad	L_OBJC_CLASS_NAME_
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0

	.section	__DATA,__objc_data
	.globl	_OBJC_METACLASS_$_ITWeak ## @"OBJC_METACLASS_$_ITWeak"
	.p2align	3
_OBJC_METACLASS_$_ITWeak:
	.quad	_OBJC_METACLASS_$_NSObject
	.quad	_OBJC_METACLASS_$_NSObject
	.quad	__objc_empty_cache
	.quad	0
	.quad	l_OBJC_METACLASS_RO_$_ITWeak

	.section	__TEXT,__objc_methtype,cstring_literals
L_OBJC_METH_VAR_TYPE_:                  ## @OBJC_METH_VAR_TYPE_
	.asciz	"@16@0:8"

L_OBJC_METH_VAR_TYPE_.5:                ## @OBJC_METH_VAR_TYPE_.5
	.asciz	"v16@0:8"

	.section	__DATA,__objc_const
	.p2align	3               ## @"\01l_OBJC_$_INSTANCE_METHODS_ITWeak"
l_OBJC_$_INSTANCE_METHODS_ITWeak:
	.long	24                      ## 0x18
	.long	2                       ## 0x2
	.quad	L_OBJC_METH_VAR_NAME_
	.quad	L_OBJC_METH_VAR_TYPE_
	.quad	"-[ITWeak init]"
	.quad	L_OBJC_METH_VAR_NAME_.1
	.quad	L_OBJC_METH_VAR_TYPE_.5
	.quad	"-[ITWeak defineWeakObj]"

	.p2align	3               ## @"\01l_OBJC_CLASS_RO_$_ITWeak"
l_OBJC_CLASS_RO_$_ITWeak:
	.long	128                     ## 0x80
	.long	8                       ## 0x8
	.long	8                       ## 0x8
	.space	4
	.quad	0
	.quad	L_OBJC_CLASS_NAME_
	.quad	l_OBJC_$_INSTANCE_METHODS_ITWeak
	.quad	0
	.quad	0
	.quad	0
	.quad	0

	.section	__DATA,__objc_classlist,regular,no_dead_strip
	.p2align	3               ## @"OBJC_LABEL_CLASS_$"
L_OBJC_LABEL_CLASS_$:
	.quad	_OBJC_CLASS_$_ITWeak

	.section	__DATA,__objc_imageinfo,regular,no_dead_strip
L_OBJC_IMAGE_INFO:
	.long	0
	.long	64


.subsections_via_symbols
