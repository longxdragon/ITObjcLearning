	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.p2align	4, 0x90         ## -- Begin function -[ITARC init]
"-[ITARC init]":                        ## @"\01-[ITARC init]"
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
	.p2align	4, 0x90         ## -- Begin function -[ITARC testStrong]
"-[ITARC testStrong]":                  ## @"\01-[ITARC testStrong]"
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	L_OBJC_CLASSLIST_REFERENCES_$_(%rip), %rsi
	movq	L_OBJC_SELECTOR_REFERENCES_.4(%rip), %rdi
	movq	%rdi, -40(%rbp)         ## 8-byte Spill
	movq	%rsi, %rdi
	movq	-40(%rbp), %rsi         ## 8-byte Reload
	callq	_objc_msgSend
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	_objc_retain
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-24(%rbp), %rdi
	movq	%rax, -32(%rbp)
	callq	_objc_storeStrong
	leaq	L__unnamed_cfstring_(%rip), %rax
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	_NSLog
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-32(%rbp), %rdi
	callq	_objc_storeStrong
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-24(%rbp), %rdi
	callq	_objc_storeStrong
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[ITARC testWeak]
"-[ITARC testWeak]":                    ## @"\01-[ITARC testWeak]"
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___objc_personality_v0
	.cfi_lsda 16, Lexception0
## BB#0:
	pushq	%rbp
Lcfi6:
	.cfi_def_cfa_offset 16
Lcfi7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi8:
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
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	callq	_objc_initWeak
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-24(%rbp), %rdi
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	movl	%ecx, -68(%rbp)         ## 4-byte Spill
	callq	_objc_storeStrong
	movq	-56(%rbp), %rdi         ## 8-byte Reload
	callq	_objc_loadWeakRetained
	movq	%rax, %rsi
Ltmp0:
	leaq	L__unnamed_cfstring_(%rip), %rdi
	movl	-68(%rbp), %ecx         ## 4-byte Reload
	movb	%cl, %dl
	movq	%rsi, -80(%rbp)         ## 8-byte Spill
	movq	%rax, %rsi
	movb	%dl, %al
	callq	_NSLog
Ltmp1:
	jmp	LBB2_1
LBB2_1:
	movq	-80(%rbp), %rax         ## 8-byte Reload
	movq	%rax, %rdi
	callq	_objc_release
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	_objc_destroyWeak
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	_objc_storeStrong
	addq	$80, %rsp
	popq	%rbp
	retq
LBB2_2:
Ltmp2:
	leaq	-32(%rbp), %rcx
	movl	%edx, %esi
	movq	%rax, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rcx, %rdi
	callq	_objc_destroyWeak
## BB#3:
	movq	-40(%rbp), %rdi
	callq	__Unwind_Resume
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table2:
Lexception0:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset0 = Lfunc_begin0-Lfunc_begin0       ## >> Call Site 1 <<
	.long	Lset0
Lset1 = Ltmp0-Lfunc_begin0              ##   Call between Lfunc_begin0 and Ltmp0
	.long	Lset1
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset2 = Ltmp0-Lfunc_begin0              ## >> Call Site 2 <<
	.long	Lset2
Lset3 = Ltmp1-Ltmp0                     ##   Call between Ltmp0 and Ltmp1
	.long	Lset3
Lset4 = Ltmp2-Lfunc_begin0              ##     jumps to Ltmp2
	.long	Lset4
	.byte	0                       ##   On action: cleanup
Lset5 = Ltmp1-Lfunc_begin0              ## >> Call Site 3 <<
	.long	Lset5
Lset6 = Lfunc_end0-Ltmp1                ##   Call between Ltmp1 and Lfunc_end0
	.long	Lset6
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90         ## -- Begin function -[ITARC testUnsafeUnRetained]
"-[ITARC testUnsafeUnRetained]":        ## @"\01-[ITARC testUnsafeUnRetained]"
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
	movq	$0, -24(%rbp)
	movq	L_OBJC_CLASSLIST_REFERENCES_$_.5(%rip), %rsi
	movq	L_OBJC_SELECTOR_REFERENCES_.7(%rip), %rdi
	movq	%rdi, -40(%rbp)         ## 8-byte Spill
	movq	%rsi, %rdi
	movq	-40(%rbp), %rsi         ## 8-byte Reload
	callq	_objc_msgSend
	movq	L_OBJC_SELECTOR_REFERENCES_(%rip), %rsi
	movq	%rax, %rdi
	callq	_objc_msgSend
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	__objc_rootRetainCount
	leaq	L__unnamed_cfstring_.9(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	_NSLog
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-32(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	%rdx, -24(%rbp)
	callq	_objc_storeStrong
	leaq	L__unnamed_cfstring_(%rip), %rdx
	movq	-24(%rbp), %rsi
	movq	%rdx, %rdi
	movb	$0, %al
	callq	_NSLog
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[ITARC testAutorelease]
"-[ITARC testAutorelease]":             ## @"\01-[ITARC testAutorelease]"
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___objc_personality_v0
	.cfi_lsda 16, Lexception1
## BB#0:
	pushq	%rbp
Lcfi12:
	.cfi_def_cfa_offset 16
Lcfi13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi14:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	L_OBJC_CLASSLIST_REFERENCES_$_(%rip), %rdi
	movq	L_OBJC_SELECTOR_REFERENCES_.4(%rip), %rsi
	movq	_objc_msgSend@GOTPCREL(%rip), %rax
	movq	%rax, -120(%rbp)        ## 8-byte Spill
	callq	*%rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	_objc_retainAutorelease
	movq	%rax, -32(%rbp)
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-24(%rbp), %rdi
	movl	%ecx, -124(%rbp)        ## 4-byte Spill
	callq	_objc_storeStrong
	movq	-32(%rbp), %rsi
	leaq	L__unnamed_cfstring_(%rip), %rdi
	movl	-124(%rbp), %ecx        ## 4-byte Reload
	movb	%cl, %dl
	movb	%dl, %al
	movb	%dl, -125(%rbp)         ## 1-byte Spill
	callq	_NSLog
	movq	L_OBJC_CLASSLIST_REFERENCES_$_.5(%rip), %rdi
	movq	L_OBJC_SELECTOR_REFERENCES_.11(%rip), %rsi
	movq	-120(%rbp), %r8         ## 8-byte Reload
	callq	*%r8
	movq	%rax, %rdi
	callq	_objc_retainAutoreleasedReturnValue
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	__objc_rootRetainCount
	leaq	L__unnamed_cfstring_.9(%rip), %rdi
	movq	%rax, %rsi
	movb	-125(%rbp), %al         ## 1-byte Reload
	callq	_NSLog
	movq	$0, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	%rsi, -64(%rbp)
	movq	L_OBJC_SELECTOR_REFERENCES_.13(%rip), %rsi
	leaq	-64(%rbp), %rdx
	movq	-120(%rbp), %r8         ## 8-byte Reload
	callq	*%r8
	movq	-64(%rbp), %rsi
	leaq	-48(%rbp), %rdi
	movb	%al, -126(%rbp)         ## 1-byte Spill
	callq	_objc_storeStrong
	movb	-126(%rbp), %al         ## 1-byte Reload
	movb	%al, -49(%rbp)
	movq	-48(%rbp), %rdi
	callq	__objc_rootRetainCount
	leaq	L__unnamed_cfstring_.15(%rip), %rdi
	movq	%rax, %rsi
	movb	-125(%rbp), %al         ## 1-byte Reload
	callq	_NSLog
	movsbl	-49(%rbp), %esi
	movq	-48(%rbp), %rdx
	leaq	L__unnamed_cfstring_.17(%rip), %rdi
	movb	-125(%rbp), %al         ## 1-byte Reload
	callq	_NSLog
	movq	$0, -72(%rbp)
	movq	-8(%rbp), %rdi
	movq	-72(%rbp), %rdx
	movq	L_OBJC_SELECTOR_REFERENCES_.19(%rip), %rsi
	movq	-120(%rbp), %r8         ## 8-byte Reload
	callq	*%r8
	movb	%al, -73(%rbp)
	movsbl	-73(%rbp), %esi
	movq	-72(%rbp), %rdx
	leaq	L__unnamed_cfstring_.21(%rip), %rdi
	movb	-125(%rbp), %al         ## 1-byte Reload
	callq	_NSLog
	movq	$0, -88(%rbp)
	callq	_objc_autoreleasePoolPush
	movq	L_OBJC_CLASSLIST_REFERENCES_$_.5(%rip), %rdi
	movq	L_OBJC_SELECTOR_REFERENCES_.7(%rip), %rsi
Ltmp3:
	movq	-120(%rbp), %rdx        ## 8-byte Reload
	movq	%rax, -136(%rbp)        ## 8-byte Spill
	callq	*%rdx
Ltmp4:
	movq	%rax, -144(%rbp)        ## 8-byte Spill
	jmp	LBB4_1
LBB4_1:
	movq	L_OBJC_SELECTOR_REFERENCES_(%rip), %rsi
Ltmp5:
	movq	_objc_msgSend@GOTPCREL(%rip), %rax
	movq	-144(%rbp), %rdi        ## 8-byte Reload
	callq	*%rax
Ltmp6:
	movq	%rax, -152(%rbp)        ## 8-byte Spill
	jmp	LBB4_2
LBB4_2:
	movq	-152(%rbp), %rdi        ## 8-byte Reload
	callq	_objc_autorelease
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rsi
	leaq	-88(%rbp), %rdi
	callq	_objc_storeWeak
Ltmp7:
	movq	-136(%rbp), %rdi        ## 8-byte Reload
	movq	%rax, -160(%rbp)        ## 8-byte Spill
	callq	_objc_autoreleasePoolPop
Ltmp8:
	jmp	LBB4_3
LBB4_3:
	leaq	-88(%rbp), %rdi
	callq	_objc_loadWeakRetained
	movq	%rax, %rdi
Ltmp9:
	leaq	L__unnamed_cfstring_(%rip), %rcx
	xorl	%edx, %edx
	movb	%dl, %sil
	movq	%rdi, -168(%rbp)        ## 8-byte Spill
	movq	%rcx, %rdi
	movb	%sil, -169(%rbp)        ## 1-byte Spill
	movq	%rax, %rsi
	movb	-169(%rbp), %al         ## 1-byte Reload
	callq	_NSLog
Ltmp10:
	jmp	LBB4_4
LBB4_4:
	movq	-168(%rbp), %rdi        ## 8-byte Reload
	callq	_objc_release
	leaq	-88(%rbp), %rdi
	callq	_objc_destroyWeak
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-72(%rbp), %rdi
	callq	_objc_storeStrong
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-48(%rbp), %rdi
	callq	_objc_storeStrong
	leaq	-40(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_objc_storeStrong
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-24(%rbp), %rdi
	callq	_objc_storeStrong
	addq	$176, %rsp
	popq	%rbp
	retq
LBB4_5:
Ltmp11:
	leaq	-88(%rbp), %rdi
	movl	%edx, %ecx
	movq	%rax, -104(%rbp)
	movl	%ecx, -108(%rbp)
	callq	_objc_destroyWeak
## BB#6:
	movq	-104(%rbp), %rdi
	callq	__Unwind_Resume
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table4:
Lexception1:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	93                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	91                      ## Call site table length
Lset7 = Lfunc_begin1-Lfunc_begin1       ## >> Call Site 1 <<
	.long	Lset7
Lset8 = Ltmp3-Lfunc_begin1              ##   Call between Lfunc_begin1 and Ltmp3
	.long	Lset8
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset9 = Ltmp3-Lfunc_begin1              ## >> Call Site 2 <<
	.long	Lset9
Lset10 = Ltmp6-Ltmp3                    ##   Call between Ltmp3 and Ltmp6
	.long	Lset10
Lset11 = Ltmp11-Lfunc_begin1            ##     jumps to Ltmp11
	.long	Lset11
	.byte	0                       ##   On action: cleanup
Lset12 = Ltmp6-Lfunc_begin1             ## >> Call Site 3 <<
	.long	Lset12
Lset13 = Ltmp7-Ltmp6                    ##   Call between Ltmp6 and Ltmp7
	.long	Lset13
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset14 = Ltmp7-Lfunc_begin1             ## >> Call Site 4 <<
	.long	Lset14
Lset15 = Ltmp8-Ltmp7                    ##   Call between Ltmp7 and Ltmp8
	.long	Lset15
Lset16 = Ltmp11-Lfunc_begin1            ##     jumps to Ltmp11
	.long	Lset16
	.byte	0                       ##   On action: cleanup
Lset17 = Ltmp8-Lfunc_begin1             ## >> Call Site 5 <<
	.long	Lset17
Lset18 = Ltmp9-Ltmp8                    ##   Call between Ltmp8 and Ltmp9
	.long	Lset18
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset19 = Ltmp9-Lfunc_begin1             ## >> Call Site 6 <<
	.long	Lset19
Lset20 = Ltmp10-Ltmp9                   ##   Call between Ltmp9 and Ltmp10
	.long	Lset20
Lset21 = Ltmp11-Lfunc_begin1            ##     jumps to Ltmp11
	.long	Lset21
	.byte	0                       ##   On action: cleanup
Lset22 = Ltmp10-Lfunc_begin1            ## >> Call Site 7 <<
	.long	Lset22
Lset23 = Lfunc_end1-Ltmp10              ##   Call between Ltmp10 and Lfunc_end1
	.long	Lset23
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90         ## -- Begin function -[ITARC testFactoryMethod1]
"-[ITARC testFactoryMethod1]":          ## @"\01-[ITARC testFactoryMethod1]"
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	L_OBJC_CLASSLIST_REFERENCES_$_.5(%rip), %rsi
	movq	L_OBJC_SELECTOR_REFERENCES_.11(%rip), %rdi
	movq	%rdi, -40(%rbp)         ## 8-byte Spill
	movq	%rsi, %rdi
	movq	-40(%rbp), %rsi         ## 8-byte Reload
	callq	_objc_msgSend
	movq	%rax, %rdi
	callq	_objc_retainAutoreleasedReturnValue
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	__objc_rootRetainCount
	leaq	L__unnamed_cfstring_.9(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	_NSLog
	leaq	-32(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rdx
	movq	%rdx, -24(%rbp)
	callq	_objc_storeStrong
	leaq	L__unnamed_cfstring_(%rip), %rdx
	movq	-24(%rbp), %rsi
	movq	%rdx, %rdi
	movb	$0, %al
	callq	_NSLog
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[ITARC testFactoryMethod2]
"-[ITARC testFactoryMethod2]":          ## @"\01-[ITARC testFactoryMethod2]"
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
	subq	$48, %rsp
	leaq	L__unnamed_cfstring_.23(%rip), %rax
	xorl	%ecx, %ecx
                                        ## kill: %RCX<def> %ECX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	L_OBJC_CLASSLIST_REFERENCES_$_.5(%rip), %rsi
	movq	L_OBJC_SELECTOR_REFERENCES_.25(%rip), %rdi
	movq	%rdi, -40(%rbp)         ## 8-byte Spill
	movq	%rsi, %rdi
	movq	-40(%rbp), %rsi         ## 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	_objc_msgSend
	movq	%rax, %rdi
	callq	_objc_retainAutoreleasedReturnValue
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	__objc_rootRetainCount
	leaq	L__unnamed_cfstring_.9(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	_NSLog
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	leaq	-32(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rdx, -24(%rbp)
	movq	%rcx, %rdi
	callq	_objc_storeStrong
	leaq	L__unnamed_cfstring_(%rip), %rcx
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	movb	$0, %al
	callq	_NSLog
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[ITARC doSomethingError:]
"-[ITARC doSomethingError:]":           ## @"\01-[ITARC doSomethingError:]"
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	LBB7_2
## BB#1:
	leaq	L__unnamed_cfstring_.28(%rip), %rax
	movl	$1, %ecx
                                        ## kill: %RCX<def> %ECX<kill>
	xorl	%edx, %edx
	movl	%edx, %r8d
	movq	L_OBJC_CLASSLIST_REFERENCES_$_.26(%rip), %rsi
	movq	L_OBJC_SELECTOR_REFERENCES_.30(%rip), %rdi
	movq	%rdi, -32(%rbp)         ## 8-byte Spill
	movq	%rsi, %rdi
	movq	-32(%rbp), %rsi         ## 8-byte Reload
	movq	%rax, %rdx
	callq	_objc_msgSend
	movq	%rax, %rdi
	callq	_objc_retainAutoreleasedReturnValue
	movq	%rax, %rdi
	callq	_objc_autorelease
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
LBB7_2:
	xorl	%eax, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function -[ITARC doSomethingError2:]
"-[ITARC doSomethingError2:]":          ## @"\01-[ITARC doSomethingError2:]"
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
	movq	%rdx, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	LBB8_2
## BB#1:
	leaq	L__unnamed_cfstring_.28(%rip), %rax
	movl	$1, %ecx
                                        ## kill: %RCX<def> %ECX<kill>
	xorl	%edx, %edx
	movl	%edx, %r8d
	movq	L_OBJC_CLASSLIST_REFERENCES_$_.26(%rip), %rsi
	movq	L_OBJC_SELECTOR_REFERENCES_.30(%rip), %rdi
	movq	%rdi, -32(%rbp)         ## 8-byte Spill
	movq	%rsi, %rdi
	movq	-32(%rbp), %rsi         ## 8-byte Reload
	movq	%rax, %rdx
	callq	_objc_msgSend
	movq	%rax, %rdi
	callq	_objc_retainAutoreleasedReturnValue
	movq	%rax, %rdi
	callq	_objc_autorelease
	movq	%rax, -24(%rbp)
LBB8_2:
	xorl	%eax, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__objc_data
	.globl	_OBJC_CLASS_$_ITARC     ## @"OBJC_CLASS_$_ITARC"
	.p2align	3
_OBJC_CLASS_$_ITARC:
	.quad	_OBJC_METACLASS_$_ITARC
	.quad	_OBJC_CLASS_$_NSObject
	.quad	__objc_empty_cache
	.quad	0
	.quad	l_OBJC_CLASS_RO_$_ITARC

	.section	__DATA,__objc_superrefs,regular,no_dead_strip
	.p2align	3               ## @"OBJC_CLASSLIST_SUP_REFS_$_"
L_OBJC_CLASSLIST_SUP_REFS_$_:
	.quad	_OBJC_CLASS_$_ITARC

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_:                  ## @OBJC_METH_VAR_NAME_
	.asciz	"init"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_
L_OBJC_SELECTOR_REFERENCES_:
	.quad	L_OBJC_METH_VAR_NAME_

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.1:                ## @OBJC_METH_VAR_NAME_.1
	.asciz	"testAutorelease"

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
	.asciz	"%@"

	.section	__DATA,__cfstring
	.p2align	3               ## @_unnamed_cfstring_
L__unnamed_cfstring_:
	.quad	___CFConstantStringClassReference
	.long	1992                    ## 0x7c8
	.space	4
	.quad	L_.str
	.quad	2                       ## 0x2

	.section	__DATA,__objc_classrefs,regular,no_dead_strip
	.p2align	3               ## @"OBJC_CLASSLIST_REFERENCES_$_.5"
L_OBJC_CLASSLIST_REFERENCES_$_.5:
	.quad	_OBJC_CLASS_$_NSMutableArray

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.6:                ## @OBJC_METH_VAR_NAME_.6
	.asciz	"alloc"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.7
L_OBJC_SELECTOR_REFERENCES_.7:
	.quad	L_OBJC_METH_VAR_NAME_.6

	.section	__TEXT,__cstring,cstring_literals
L_.str.8:                               ## @.str.8
	.asciz	"%ld"

	.section	__DATA,__cfstring
	.p2align	3               ## @_unnamed_cfstring_.9
L__unnamed_cfstring_.9:
	.quad	___CFConstantStringClassReference
	.long	1992                    ## 0x7c8
	.space	4
	.quad	L_.str.8
	.quad	3                       ## 0x3

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.10:               ## @OBJC_METH_VAR_NAME_.10
	.asciz	"array"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.11
L_OBJC_SELECTOR_REFERENCES_.11:
	.quad	L_OBJC_METH_VAR_NAME_.10

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.12:               ## @OBJC_METH_VAR_NAME_.12
	.asciz	"doSomethingError:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.13
L_OBJC_SELECTOR_REFERENCES_.13:
	.quad	L_OBJC_METH_VAR_NAME_.12

	.section	__TEXT,__cstring,cstring_literals
L_.str.14:                              ## @.str.14
	.asciz	"e1 : %ld"

	.section	__DATA,__cfstring
	.p2align	3               ## @_unnamed_cfstring_.15
L__unnamed_cfstring_.15:
	.quad	___CFConstantStringClassReference
	.long	1992                    ## 0x7c8
	.space	4
	.quad	L_.str.14
	.quad	8                       ## 0x8

	.section	__TEXT,__cstring,cstring_literals
L_.str.16:                              ## @.str.16
	.asciz	"e1 : %d %@"

	.section	__DATA,__cfstring
	.p2align	3               ## @_unnamed_cfstring_.17
L__unnamed_cfstring_.17:
	.quad	___CFConstantStringClassReference
	.long	1992                    ## 0x7c8
	.space	4
	.quad	L_.str.16
	.quad	10                      ## 0xa

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.18:               ## @OBJC_METH_VAR_NAME_.18
	.asciz	"doSomethingError2:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.19
L_OBJC_SELECTOR_REFERENCES_.19:
	.quad	L_OBJC_METH_VAR_NAME_.18

	.section	__TEXT,__cstring,cstring_literals
L_.str.20:                              ## @.str.20
	.asciz	"e2 : %d %@"

	.section	__DATA,__cfstring
	.p2align	3               ## @_unnamed_cfstring_.21
L__unnamed_cfstring_.21:
	.quad	___CFConstantStringClassReference
	.long	1992                    ## 0x7c8
	.space	4
	.quad	L_.str.20
	.quad	10                      ## 0xa

	.section	__TEXT,__cstring,cstring_literals
L_.str.22:                              ## @.str.22
	.asciz	"1"

	.section	__DATA,__cfstring
	.p2align	3               ## @_unnamed_cfstring_.23
L__unnamed_cfstring_.23:
	.quad	___CFConstantStringClassReference
	.long	1992                    ## 0x7c8
	.space	4
	.quad	L_.str.22
	.quad	1                       ## 0x1

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.24:               ## @OBJC_METH_VAR_NAME_.24
	.asciz	"arrayWithObjects:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.25
L_OBJC_SELECTOR_REFERENCES_.25:
	.quad	L_OBJC_METH_VAR_NAME_.24

	.section	__DATA,__objc_classrefs,regular,no_dead_strip
	.p2align	3               ## @"OBJC_CLASSLIST_REFERENCES_$_.26"
L_OBJC_CLASSLIST_REFERENCES_$_.26:
	.quad	_OBJC_CLASS_$_NSError

	.section	__TEXT,__cstring,cstring_literals
L_.str.27:                              ## @.str.27
	.asciz	"Error"

	.section	__DATA,__cfstring
	.p2align	3               ## @_unnamed_cfstring_.28
L__unnamed_cfstring_.28:
	.quad	___CFConstantStringClassReference
	.long	1992                    ## 0x7c8
	.space	4
	.quad	L_.str.27
	.quad	5                       ## 0x5

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.29:               ## @OBJC_METH_VAR_NAME_.29
	.asciz	"errorWithDomain:code:userInfo:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ## @OBJC_SELECTOR_REFERENCES_.30
L_OBJC_SELECTOR_REFERENCES_.30:
	.quad	L_OBJC_METH_VAR_NAME_.29

	.section	__TEXT,__objc_classname,cstring_literals
L_OBJC_CLASS_NAME_:                     ## @OBJC_CLASS_NAME_
	.asciz	"ITARC"

	.section	__DATA,__objc_const
	.p2align	3               ## @"\01l_OBJC_METACLASS_RO_$_ITARC"
l_OBJC_METACLASS_RO_$_ITARC:
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
	.globl	_OBJC_METACLASS_$_ITARC ## @"OBJC_METACLASS_$_ITARC"
	.p2align	3
_OBJC_METACLASS_$_ITARC:
	.quad	_OBJC_METACLASS_$_NSObject
	.quad	_OBJC_METACLASS_$_NSObject
	.quad	__objc_empty_cache
	.quad	0
	.quad	l_OBJC_METACLASS_RO_$_ITARC

	.section	__TEXT,__objc_methtype,cstring_literals
L_OBJC_METH_VAR_TYPE_:                  ## @OBJC_METH_VAR_TYPE_
	.asciz	"@16@0:8"

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.31:               ## @OBJC_METH_VAR_NAME_.31
	.asciz	"testStrong"

	.section	__TEXT,__objc_methtype,cstring_literals
L_OBJC_METH_VAR_TYPE_.32:               ## @OBJC_METH_VAR_TYPE_.32
	.asciz	"v16@0:8"

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_.33:               ## @OBJC_METH_VAR_NAME_.33
	.asciz	"testWeak"

L_OBJC_METH_VAR_NAME_.34:               ## @OBJC_METH_VAR_NAME_.34
	.asciz	"testUnsafeUnRetained"

L_OBJC_METH_VAR_NAME_.35:               ## @OBJC_METH_VAR_NAME_.35
	.asciz	"testFactoryMethod1"

L_OBJC_METH_VAR_NAME_.36:               ## @OBJC_METH_VAR_NAME_.36
	.asciz	"testFactoryMethod2"

	.section	__TEXT,__objc_methtype,cstring_literals
L_OBJC_METH_VAR_TYPE_.37:               ## @OBJC_METH_VAR_TYPE_.37
	.asciz	"c24@0:8^@16"

L_OBJC_METH_VAR_TYPE_.38:               ## @OBJC_METH_VAR_TYPE_.38
	.asciz	"c24@0:8@16"

	.section	__DATA,__objc_const
	.p2align	3               ## @"\01l_OBJC_$_INSTANCE_METHODS_ITARC"
l_OBJC_$_INSTANCE_METHODS_ITARC:
	.long	24                      ## 0x18
	.long	9                       ## 0x9
	.quad	L_OBJC_METH_VAR_NAME_
	.quad	L_OBJC_METH_VAR_TYPE_
	.quad	"-[ITARC init]"
	.quad	L_OBJC_METH_VAR_NAME_.31
	.quad	L_OBJC_METH_VAR_TYPE_.32
	.quad	"-[ITARC testStrong]"
	.quad	L_OBJC_METH_VAR_NAME_.33
	.quad	L_OBJC_METH_VAR_TYPE_.32
	.quad	"-[ITARC testWeak]"
	.quad	L_OBJC_METH_VAR_NAME_.34
	.quad	L_OBJC_METH_VAR_TYPE_.32
	.quad	"-[ITARC testUnsafeUnRetained]"
	.quad	L_OBJC_METH_VAR_NAME_.1
	.quad	L_OBJC_METH_VAR_TYPE_.32
	.quad	"-[ITARC testAutorelease]"
	.quad	L_OBJC_METH_VAR_NAME_.35
	.quad	L_OBJC_METH_VAR_TYPE_.32
	.quad	"-[ITARC testFactoryMethod1]"
	.quad	L_OBJC_METH_VAR_NAME_.36
	.quad	L_OBJC_METH_VAR_TYPE_.32
	.quad	"-[ITARC testFactoryMethod2]"
	.quad	L_OBJC_METH_VAR_NAME_.12
	.quad	L_OBJC_METH_VAR_TYPE_.37
	.quad	"-[ITARC doSomethingError:]"
	.quad	L_OBJC_METH_VAR_NAME_.18
	.quad	L_OBJC_METH_VAR_TYPE_.38
	.quad	"-[ITARC doSomethingError2:]"

	.p2align	3               ## @"\01l_OBJC_CLASS_RO_$_ITARC"
l_OBJC_CLASS_RO_$_ITARC:
	.long	128                     ## 0x80
	.long	8                       ## 0x8
	.long	8                       ## 0x8
	.space	4
	.quad	0
	.quad	L_OBJC_CLASS_NAME_
	.quad	l_OBJC_$_INSTANCE_METHODS_ITARC
	.quad	0
	.quad	0
	.quad	0
	.quad	0

	.section	__DATA,__objc_classlist,regular,no_dead_strip
	.p2align	3               ## @"OBJC_LABEL_CLASS_$"
L_OBJC_LABEL_CLASS_$:
	.quad	_OBJC_CLASS_$_ITARC

	.section	__DATA,__objc_imageinfo,regular,no_dead_strip
L_OBJC_IMAGE_INFO:
	.long	0
	.long	64


.subsections_via_symbols
