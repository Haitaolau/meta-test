SHELL = /bin/sh
srcdir = .
top_srcdir = .
TESTS_ENVIRONMENT = EXEEXT='' srcdir='$(srcdir)' \
	LOCALE_FR='fr_FR' LOCALE_FR_UTF8='none' \
	LOCALE_FR='fr_FR' LOCALE_TR_UTF8='none' \
	LOCALE_FR='fr_FR' LOCALE_FR_UTF8='none' \
	LOCALE_JA='none' LOCALE_ZH_CN='none' \
	LOCALE_FR_UTF8='none' LOCALE_FR='fr_FR' \
	LOCALE_FR_UTF8='none' LOCALE_JA='none' \
	LOCALE_ZH_CN='none' LOCALE_FR='fr_FR' \
	LOCALE_FR_UTF8='none' LOCALE_JA='none' \
	LOCALE_TR_UTF8='none' \
	LOCALE_ZH_CN='none' LOCALE_FR='fr_FR' \
	LOCALE_FR_UTF8='none' LOCALE_FR='fr_FR' \
	LOCALE_FR_UTF8='none' LOCALE_AR='none' \
	LOCALE_FR='fr_FR' LOCALE_FR_UTF8='none' \
	LOCALE_FR='fr_FR' LOCALE_FR_UTF8='none' \
	LOCALE_FR='fr_FR' LOCALE_FR_UTF8='none' \
	LOCALE_FR='fr_FR' LOCALE_FR_UTF8='none' \
	LOCALE_FR='fr_FR' MAKE='$(MAKE)' LOCALE_FR='fr_FR' \
	LOCALE_FR_UTF8='none' LOCALE_JA='none' \
	LOCALE_ZH_CN='none'

subdir = .
am__vpath_adj_setup = srcdirstrip=`echo "$(srcdir)" | sed 's|.|.|g'`;
am__vpath_adj = case $$p in \
    $(srcdir)/*) f=`echo "$$p" | sed "s|^$$srcdirstrip/||"`;; \
    *) f=$$p;; \
  esac;
am__tty_colors_dummy = \
  mgn= red= grn= lgn= blu= brg= std=; \
  am__color_tests=no
am__tty_colors = { \
  $(am__tty_colors_dummy); \
  if test "X$(AM_COLOR_TESTS)" = Xno; then \
    am__color_tests=no; \
  elif test "X$(AM_COLOR_TESTS)" = Xalways; then \
    am__color_tests=yes; \
  elif test "X$$TERM" != Xdumb && { test -t 1; } 2>/dev/null; then \
    am__color_tests=yes; \
  fi; \
  if test $$am__color_tests = yes; then \
    red='[0;31m'; \
    grn='[0;32m'; \
    lgn='[1;32m'; \
    blu='[1;34m'; \
    mgn='[0;35m'; \
    brg='[1m'; \
    std='[m'; \
  fi; \
}
am__rst_title = { sed 's/.*/   &   /;h;s/./=/g;p;x;s/ *$$//;p;g' && echo; }
am__sh_e_setup = case $$- in *e*) set +e;; esac
am__common_driver_flags = \
  --color-tests "$$am__color_tests" \
  --enable-hard-errors "$$am__enable_hard_errors" \
  --expect-failure "$$am__expect_failure"
am__check_pre = \
$(am__sh_e_setup); \
$(am__vpath_adj_setup) $(am__vpath_adj) \
$(am__tty_colors); \
srcdir=$(srcdir); export srcdir; \
case "$@" in \
  */*) am__odir=`echo "./$@" | sed 's|/[^/]*$$||'`;; \
    *) am__odir=.;; \
esac; \
test "x$$am__odir" = x"." || test -d "$$am__odir" \
  || $(MKDIR_P) "$$am__odir" || exit $$?; \
if test -f "./$$f"; then dir=./; \
elif test -f "$$f"; then dir=; \
else dir="$(srcdir)/"; fi; \
tst=$$dir$$f; log='$@'; \
if test -n '$(DISABLE_HARD_ERRORS)'; then \
  am__enable_hard_errors=no; \
else \
  am__enable_hard_errors=yes; \
fi; \
$(TESTS_ENVIRONMENT)

am__set_TESTS_bases = \
  bases='$(TEST_LOGS)'; \
  bases=`for i in $$bases; do echo $$i; done | sed 's/\.log$$//'`; \
  bases=`echo $$bases`
RECHECK_LOGS = $(TEST_LOGS)
TEST_SUITE_LOG = test-suite.log
TEST_EXTENSIONS =  .test
LOG_DRIVER = $(SHELL) $(top_srcdir)/test-driver
am__test_logs1 = $(TESTS:=.log)
am__test_logs2 = $(am__test_logs1:.log=.log)
TEST_LOGS = $(am__test_logs2:.test.log=.log)
MKDIR_P = /bin/mkdir -p
PACKAGE_STRING = unistring 0.9.10
$(TEST_SUITE_LOG): $(TEST_LOGS)
	@$(am__set_TESTS_bases); \
	am__f_ok () { test -f "$$1" && test -r "$$1"; }; \
	redo_bases=`for i in $$bases; do \
	              am__f_ok $$i.trs && am__f_ok $$i.log || echo $$i; \
	            done`; \
	st=0;  \
	errmsg="fatal: making $(TEST_SUITE_LOG): failed to create"; \
	for i in $$redo_bases; do \
	  test -f $$i.trs && test -r $$i.trs \
	    || { echo "$$errmsg $$i.trs" >&2; st=1; }; \
	  test -f $$i.log && test -r $$i.log \
	    || { echo "$$errmsg $$i.log" >&2; st=1; }; \
	done; \
	test $$st -eq 0 || exit 1;
	@$(am__sh_e_setup); $(am__tty_colors); $(am__set_TESTS_bases); \
	ws='[ 	]'; \
	results=`for b in $$bases; do echo $$b.trs; done`; \
	test -n "$$results" || results=/dev/null; \
	all=`  grep "^$$ws*:test-result:"           $$results | wc -l`; \
	pass=` grep "^$$ws*:test-result:$$ws*PASS"  $$results | wc -l`; \
	fail=` grep "^$$ws*:test-result:$$ws*FAIL"  $$results | wc -l`; \
	skip=` grep "^$$ws*:test-result:$$ws*SKIP"  $$results | wc -l`; \
	xfail=`grep "^$$ws*:test-result:$$ws*XFAIL" $$results | wc -l`; \
	xpass=`grep "^$$ws*:test-result:$$ws*XPASS" $$results | wc -l`; \
	error=`grep "^$$ws*:test-result:$$ws*ERROR" $$results | wc -l`; \
	if test `expr $$fail + $$xpass + $$error` -eq 0; then \
	  success=true; \
	else \
	  success=false; \
	fi; \
	br='==================='; br=$$br$$br$$br$$br; \
	result_count () \
	{ \
	    if test x"$$1" = x"--maybe-color"; then \
	      maybe_colorize=yes; \
	    elif test x"$$1" = x"--no-color"; then \
	      maybe_colorize=no; \
	    else \
	      echo "$@: invalid 'result_count' usage" >&2; exit 4; \
	    fi; \
	    shift; \
	    desc=$$1 count=$$2; \
	    if test $$maybe_colorize = yes && test $$count -gt 0; then \
	      color_start=$$3 color_end=$$std; \
	    else \
	      color_start= color_end=; \
	    fi; \
	    echo "$${color_start}# $$desc $$count$${color_end}"; \
	}; \
	create_testsuite_report () \
	{ \
	  result_count $$1 "TOTAL:" $$all   "$$brg"; \
	  result_count $$1 "PASS: " $$pass  "$$grn"; \
	  result_count $$1 "SKIP: " $$skip  "$$blu"; \
	  result_count $$1 "XFAIL:" $$xfail "$$lgn"; \
	  result_count $$1 "FAIL: " $$fail  "$$red"; \
	  result_count $$1 "XPASS:" $$xpass "$$red"; \
	  result_count $$1 "ERROR:" $$error "$$mgn"; \
	}; \
	{								\
	  echo "$(PACKAGE_STRING): $(subdir)/$(TEST_SUITE_LOG)" |	\
	    $(am__rst_title);						\
	  create_testsuite_report --no-color;				\
	  echo;								\
	  echo ".. contents:: :depth: 2";				\
	  echo;								\
	  for b in $$bases; do echo $$b; done;				\
	} >$(TEST_SUITE_LOG).tmp || exit 1;				\
	mv $(TEST_SUITE_LOG).tmp $(TEST_SUITE_LOG);			\
	if $$success; then						\
	  col="$$grn";							\
	 else								\
	  col="$$red";							\
	  test x"$$VERBOSE" = x || cat $(TEST_SUITE_LOG);		\
	fi;								\
	echo "$${col}$$br$${std}"; 					\
	echo "$${col}Testsuite summary for $(PACKAGE_STRING)$${std}";	\
	echo "$${col}$$br$${std}"; 					\
	create_testsuite_report --maybe-color;				\
	echo "$$col$$br$$std";						\
	if $$success; then :; else					\
	  echo "$${col}See $(subdir)/$(TEST_SUITE_LOG)$${std}";		\
	  echo "$$col$$br$$std";					\
	fi;								\
	$$success || exit 1
check-TESTS:
	@list='$(RECHECK_LOGS)';           test -z "$$list" || rm -f $$list
	@test -z "$(TEST_SUITE_LOG)" || rm -f $(TEST_SUITE_LOG)
	@set +e; $(am__set_TESTS_bases); \
	log_list=`for i in $$bases; do echo $$i.log; done`; \
	log_list=`echo $$log_list`; \
	$(MAKE) $(AM_MAKEFLAGS) $(TEST_SUITE_LOG) TEST_LOGS="$$log_list"; \
	exit $$?;

TESTS = test-alloca-opt$(EXEEXT) test-array-mergesort$(EXEEXT) \
	test-btowc1.sh test-btowc2.sh test-c-ctype$(EXEEXT) \
	test-c-strcase.sh test-ctype$(EXEEXT) test-environ$(EXEEXT) \
	test-errno$(EXEEXT) test-fdopen$(EXEEXT) test-fgetc$(EXEEXT) \
	test-float$(EXEEXT) test-fputc$(EXEEXT) test-fread$(EXEEXT) \
	test-frexp-nolibm$(EXEEXT) test-frexpl-nolibm$(EXEEXT) \
	test-fseterr$(EXEEXT) test-fwrite$(EXEEXT) \
	test-getprogname$(EXEEXT) test-iconv-h$(EXEEXT) \
	test-iconv$(EXEEXT) test-intprops$(EXEEXT) \
	test-inttypes$(EXEEXT) test-isblank$(EXEEXT) \
	test-isnand-nolibm$(EXEEXT) test-isnanf-nolibm$(EXEEXT) \
	test-isnanl-nolibm$(EXEEXT) test-iswblank$(EXEEXT) \
	test-langinfo$(EXEEXT) test-limits-h$(EXEEXT) \
	test-locale$(EXEEXT) test-localename$(EXEEXT) \
	test-rwlock1$(EXEEXT) test-lock$(EXEEXT) test-once1$(EXEEXT) \
	test-once2$(EXEEXT) test-malloca$(EXEEXT) test-math$(EXEEXT) \
	test-mbrtowc1.sh test-mbrtowc2.sh test-mbrtowc3.sh \
	test-mbrtowc4.sh test-mbrtowc5.sh test-mbrtowc-w32-1.sh \
	test-mbrtowc-w32-2.sh test-mbrtowc-w32-3.sh \
	test-mbrtowc-w32-4.sh test-mbrtowc-w32-5.sh test-mbsinit.sh \
	test-memchr$(EXEEXT) test-printf-frexp$(EXEEXT) \
	test-printf-frexpl$(EXEEXT) test-pthread_sigmask1$(EXEEXT) \
	test-pthread_sigmask2$(EXEEXT) test-raise$(EXEEXT) \
	test-setenv$(EXEEXT) test-setlocale1.sh test-setlocale2.sh \
	test-signal-h$(EXEEXT) test-signbit$(EXEEXT) \
	test-sigprocmask$(EXEEXT) test-sleep$(EXEEXT) \
	test-stdalign$(EXEEXT) test-stdbool$(EXEEXT) \
	test-stddef$(EXEEXT) test-stdint$(EXEEXT) test-stdio$(EXEEXT) \
	test-stdlib$(EXEEXT) test-strerror$(EXEEXT) \
	test-striconveh$(EXEEXT) test-striconveha$(EXEEXT) \
	test-string$(EXEEXT) test-strncat$(EXEEXT) \
	test-strstr$(EXEEXT) test-sys_types$(EXEEXT) test-init.sh \
	test-thread_self$(EXEEXT) test-thread_create$(EXEEXT) \
	test-time$(EXEEXT) test-cased$(EXEEXT) test-ignorable$(EXEEXT) \
	unicase/test-locale-language.sh test-uc_tolower$(EXEEXT) \
	test-uc_totitle$(EXEEXT) test-uc_toupper$(EXEEXT) \
	test-u16-casecmp$(EXEEXT) test-u16-casecoll$(EXEEXT) \
	test-u16-casefold$(EXEEXT) test-u16-is-cased$(EXEEXT) \
	test-u16-is-casefolded$(EXEEXT) test-u16-is-lowercase$(EXEEXT) \
	test-u16-is-titlecase$(EXEEXT) test-u16-is-uppercase$(EXEEXT) \
	test-u16-tolower$(EXEEXT) test-u16-totitle$(EXEEXT) \
	test-u16-toupper$(EXEEXT) test-u32-casecmp$(EXEEXT) \
	test-u32-casecoll$(EXEEXT) test-u32-casefold$(EXEEXT) \
	test-u32-is-cased$(EXEEXT) test-u32-is-casefolded$(EXEEXT) \
	test-u32-is-lowercase$(EXEEXT) test-u32-is-titlecase$(EXEEXT) \
	test-u32-is-uppercase$(EXEEXT) test-u32-tolower$(EXEEXT) \
	test-u32-totitle$(EXEEXT) test-u32-toupper$(EXEEXT) \
	test-u8-casecmp$(EXEEXT) test-u8-casecoll$(EXEEXT) \
	test-u8-casefold$(EXEEXT) test-u8-is-cased$(EXEEXT) \
	test-u8-is-casefolded$(EXEEXT) test-u8-is-lowercase$(EXEEXT) \
	test-u8-is-titlecase$(EXEEXT) test-u8-is-uppercase$(EXEEXT) \
	test-u8-tolower$(EXEEXT) test-u8-totitle$(EXEEXT) \
	test-u8-toupper$(EXEEXT) unicase/test-ulc-casecmp1.sh \
	unicase/test-ulc-casecmp2.sh unicase/test-ulc-casecoll1.sh \
	unicase/test-ulc-casecoll2.sh test-u16-conv-from-enc$(EXEEXT) \
	test-u16-conv-to-enc$(EXEEXT) \
	test-u16-strconv-from-enc$(EXEEXT) \
	test-u16-strconv-to-enc$(EXEEXT) \
	test-u32-conv-from-enc$(EXEEXT) test-u32-conv-to-enc$(EXEEXT) \
	test-u32-strconv-from-enc$(EXEEXT) \
	test-u32-strconv-to-enc$(EXEEXT) \
	test-u8-conv-from-enc$(EXEEXT) test-u8-conv-to-enc$(EXEEXT) \
	test-u8-strconv-from-enc$(EXEEXT) \
	test-u8-strconv-to-enc$(EXEEXT) test-bidi_byname$(EXEEXT) \
	test-bidi_longname$(EXEEXT) test-bidi_name$(EXEEXT) \
	test-bidi_of$(EXEEXT) test-bidi_test$(EXEEXT) \
	test-block_list$(EXEEXT) test-block_of$(EXEEXT) \
	test-block_test$(EXEEXT) test-categ_C$(EXEEXT) \
	test-categ_Cc$(EXEEXT) test-categ_Cf$(EXEEXT) \
	test-categ_Cn$(EXEEXT) test-categ_Co$(EXEEXT) \
	test-categ_Cs$(EXEEXT) test-categ_L$(EXEEXT) \
	test-categ_LC$(EXEEXT) test-categ_Ll$(EXEEXT) \
	test-categ_Lm$(EXEEXT) test-categ_Lo$(EXEEXT) \
	test-categ_Lt$(EXEEXT) test-categ_Lu$(EXEEXT) \
	test-categ_M$(EXEEXT) test-categ_Mc$(EXEEXT) \
	test-categ_Me$(EXEEXT) test-categ_Mn$(EXEEXT) \
	test-categ_N$(EXEEXT) test-categ_Nd$(EXEEXT) \
	test-categ_Nl$(EXEEXT) test-categ_No$(EXEEXT) \
	test-categ_P$(EXEEXT) test-categ_Pc$(EXEEXT) \
	test-categ_Pd$(EXEEXT) test-categ_Pe$(EXEEXT) \
	test-categ_Pf$(EXEEXT) test-categ_Pi$(EXEEXT) \
	test-categ_Po$(EXEEXT) test-categ_Ps$(EXEEXT) \
	test-categ_S$(EXEEXT) test-categ_Sc$(EXEEXT) \
	test-categ_Sk$(EXEEXT) test-categ_Sm$(EXEEXT) \
	test-categ_So$(EXEEXT) test-categ_Z$(EXEEXT) \
	test-categ_Zl$(EXEEXT) test-categ_Zp$(EXEEXT) \
	test-categ_Zs$(EXEEXT) test-categ_and_not$(EXEEXT) \
	test-categ_and$(EXEEXT) test-categ_byname$(EXEEXT) \
	test-categ_longname$(EXEEXT) test-categ_name$(EXEEXT) \
	$(am__EXEEXT_1) test-categ_of$(EXEEXT) test-categ_or$(EXEEXT) \
	test-categ_test_withtable$(EXEEXT) \
	test-combiningclass_byname$(EXEEXT) \
	test-combiningclass_longname$(EXEEXT) \
	test-combiningclass_name$(EXEEXT) test-combiningclass$(EXEEXT) \
	test-ctype_alnum$(EXEEXT) test-ctype_alpha$(EXEEXT) \
	test-ctype_blank$(EXEEXT) test-ctype_cntrl$(EXEEXT) \
	test-ctype_digit$(EXEEXT) test-ctype_graph$(EXEEXT) \
	test-ctype_lower$(EXEEXT) test-ctype_print$(EXEEXT) \
	test-ctype_punct$(EXEEXT) test-ctype_space$(EXEEXT) \
	test-ctype_upper$(EXEEXT) test-ctype_xdigit$(EXEEXT) \
	test-decdigit$(EXEEXT) test-digit$(EXEEXT) \
	test-joininggroup_byname$(EXEEXT) \
	test-joininggroup_name$(EXEEXT) test-joininggroup_of$(EXEEXT) \
	test-joiningtype_byname$(EXEEXT) \
	test-joiningtype_longname$(EXEEXT) \
	test-joiningtype_name$(EXEEXT) test-joiningtype_of$(EXEEXT) \
	test-mirror$(EXEEXT) test-numeric$(EXEEXT) \
	test-pr_alphabetic$(EXEEXT) test-pr_ascii_hex_digit$(EXEEXT) \
	test-pr_bidi_arabic_digit$(EXEEXT) \
	test-pr_bidi_arabic_right_to_left$(EXEEXT) \
	test-pr_bidi_block_separator$(EXEEXT) \
	test-pr_bidi_boundary_neutral$(EXEEXT) \
	test-pr_bidi_common_separator$(EXEEXT) \
	test-pr_bidi_control$(EXEEXT) \
	test-pr_bidi_embedding_or_override$(EXEEXT) \
	test-pr_bidi_eur_num_separator$(EXEEXT) \
	test-pr_bidi_eur_num_terminator$(EXEEXT) \
	test-pr_bidi_european_digit$(EXEEXT) \
	test-pr_bidi_hebrew_right_to_left$(EXEEXT) \
	test-pr_bidi_left_to_right$(EXEEXT) \
	test-pr_bidi_non_spacing_mark$(EXEEXT) \
	test-pr_bidi_other_neutral$(EXEEXT) test-pr_bidi_pdf$(EXEEXT) \
	test-pr_bidi_segment_separator$(EXEEXT) \
	test-pr_bidi_whitespace$(EXEEXT) test-pr_byname$(EXEEXT) \
	test-pr_case_ignorable$(EXEEXT) test-pr_cased$(EXEEXT) \
	test-pr_changes_when_casefolded$(EXEEXT) \
	test-pr_changes_when_casemapped$(EXEEXT) \
	test-pr_changes_when_lowercased$(EXEEXT) \
	test-pr_changes_when_titlecased$(EXEEXT) \
	test-pr_changes_when_uppercased$(EXEEXT) \
	test-pr_combining$(EXEEXT) test-pr_composite$(EXEEXT) \
	test-pr_currency_symbol$(EXEEXT) test-pr_dash$(EXEEXT) \
	test-pr_decimal_digit$(EXEEXT) \
	test-pr_default_ignorable_code_point$(EXEEXT) \
	test-pr_deprecated$(EXEEXT) test-pr_diacritic$(EXEEXT) \
	test-pr_extender$(EXEEXT) test-pr_format_control$(EXEEXT) \
	test-pr_grapheme_base$(EXEEXT) \
	test-pr_grapheme_extend$(EXEEXT) \
	test-pr_grapheme_link$(EXEEXT) test-pr_hex_digit$(EXEEXT) \
	test-pr_hyphen$(EXEEXT) test-pr_id_continue$(EXEEXT) \
	test-pr_id_start$(EXEEXT) test-pr_ideographic$(EXEEXT) \
	test-pr_ids_binary_operator$(EXEEXT) \
	test-pr_ids_trinary_operator$(EXEEXT) \
	test-pr_ignorable_control$(EXEEXT) \
	test-pr_iso_control$(EXEEXT) test-pr_join_control$(EXEEXT) \
	test-pr_left_of_pair$(EXEEXT) test-pr_line_separator$(EXEEXT) \
	test-pr_logical_order_exception$(EXEEXT) \
	test-pr_lowercase$(EXEEXT) test-pr_math$(EXEEXT) \
	test-pr_non_break$(EXEEXT) test-pr_not_a_character$(EXEEXT) \
	test-pr_numeric$(EXEEXT) test-pr_other_alphabetic$(EXEEXT) \
	test-pr_other_default_ignorable_code_point$(EXEEXT) \
	test-pr_other_grapheme_extend$(EXEEXT) \
	test-pr_other_id_continue$(EXEEXT) \
	test-pr_other_id_start$(EXEEXT) \
	test-pr_other_lowercase$(EXEEXT) test-pr_other_math$(EXEEXT) \
	test-pr_other_uppercase$(EXEEXT) \
	test-pr_paired_punctuation$(EXEEXT) \
	test-pr_paragraph_separator$(EXEEXT) \
	test-pr_pattern_syntax$(EXEEXT) \
	test-pr_pattern_white_space$(EXEEXT) \
	test-pr_private_use$(EXEEXT) test-pr_punctuation$(EXEEXT) \
	test-pr_quotation_mark$(EXEEXT) test-pr_radical$(EXEEXT) \
	test-pr_sentence_terminal$(EXEEXT) \
	test-pr_soft_dotted$(EXEEXT) test-pr_space$(EXEEXT) \
	test-pr_terminal_punctuation$(EXEEXT) test-pr_test$(EXEEXT) \
	test-pr_titlecase$(EXEEXT) \
	test-pr_unassigned_code_value$(EXEEXT) \
	test-pr_unified_ideograph$(EXEEXT) test-pr_uppercase$(EXEEXT) \
	test-pr_variation_selector$(EXEEXT) \
	test-pr_white_space$(EXEEXT) test-pr_xid_continue$(EXEEXT) \
	test-pr_xid_start$(EXEEXT) test-pr_zero_width$(EXEEXT) \
	test-scripts$(EXEEXT) test-sy_c_ident$(EXEEXT) \
	test-sy_c_whitespace$(EXEEXT) test-sy_java_ident$(EXEEXT) \
	test-sy_java_whitespace$(EXEEXT) \
	test-u16-grapheme-breaks$(EXEEXT) \
	test-u16-grapheme-next$(EXEEXT) \
	test-u16-grapheme-prev$(EXEEXT) \
	test-u32-grapheme-breaks$(EXEEXT) \
	test-u32-grapheme-next$(EXEEXT) \
	test-u32-grapheme-prev$(EXEEXT) \
	test-u8-grapheme-breaks$(EXEEXT) \
	test-u8-grapheme-next$(EXEEXT) test-u8-grapheme-prev$(EXEEXT) \
	test-uc-gbrk-prop$(EXEEXT) unigbrk/test-uc-grapheme-breaks.sh \
	unigbrk/test-uc-is-grapheme-break.sh \
	unigbrk/test-ulc-grapheme-breaks.sh \
	test-u16-possible-linebreaks$(EXEEXT) \
	test-u16-width-linebreaks$(EXEEXT) \
	test-u32-possible-linebreaks$(EXEEXT) \
	test-u32-width-linebreaks$(EXEEXT) \
	test-u8-possible-linebreaks$(EXEEXT) \
	test-u8-width-linebreaks$(EXEEXT) \
	test-ulc-possible-linebreaks$(EXEEXT) \
	test-ulc-width-linebreaks$(EXEEXT) $(am__append_3) \
	test-canonical-decomposition$(EXEEXT) \
	test-compat-decomposition$(EXEEXT) test-composition$(EXEEXT) \
	test-decomposing-form$(EXEEXT) test-decomposition$(EXEEXT) \
	test-uninorm-filter-nfc$(EXEEXT) test-nfc$(EXEEXT) \
	uninorm/test-u32-nfc-big.sh test-nfd$(EXEEXT) \
	uninorm/test-u32-nfd-big.sh test-nfkc$(EXEEXT) \
	uninorm/test-u32-nfkc-big.sh test-nfkd$(EXEEXT) \
	uninorm/test-u32-nfkd-big.sh test-u16-normcmp$(EXEEXT) \
	test-u16-normcoll$(EXEEXT) test-u32-normcmp$(EXEEXT) \
	test-u32-normcoll$(EXEEXT) test-u8-normcmp$(EXEEXT) \
	test-u8-normcoll$(EXEEXT) test-unistd$(EXEEXT) \
	test-u16-asnprintf1$(EXEEXT) test-u16-vasnprintf1$(EXEEXT) \
	unistdio/test-u16-vasnprintf2.sh \
	unistdio/test-u16-vasnprintf3.sh test-u16-vasprintf1$(EXEEXT) \
	test-u16-vsnprintf1$(EXEEXT) test-u16-vsprintf1$(EXEEXT) \
	test-u32-asnprintf1$(EXEEXT) test-u32-vasnprintf1$(EXEEXT) \
	unistdio/test-u32-vasnprintf2.sh \
	unistdio/test-u32-vasnprintf3.sh test-u32-vasprintf1$(EXEEXT) \
	test-u32-vsnprintf1$(EXEEXT) test-u32-vsprintf1$(EXEEXT) \
	test-u8-asnprintf1$(EXEEXT) test-u8-vasnprintf1$(EXEEXT) \
	unistdio/test-u8-vasnprintf2.sh \
	unistdio/test-u8-vasnprintf3.sh test-u8-vasprintf1$(EXEEXT) \
	test-u8-vsnprintf1$(EXEEXT) test-u8-vsprintf1$(EXEEXT) \
	test-ulc-asnprintf1$(EXEEXT) test-ulc-vasnprintf1$(EXEEXT) \
	unistdio/test-ulc-vasnprintf2.sh \
	unistdio/test-ulc-vasnprintf3.sh test-ulc-vasprintf1$(EXEEXT) \
	test-ulc-vsnprintf1$(EXEEXT) test-ulc-vsprintf1$(EXEEXT) \
	test-u16-check$(EXEEXT) test-u16-chr$(EXEEXT) \
	test-u16-cmp$(EXEEXT) test-u16-cmp2$(EXEEXT) \
	test-u16-cpy-alloc$(EXEEXT) test-u16-cpy$(EXEEXT) \
	test-u16-mblen$(EXEEXT) test-u16-mbsnlen$(EXEEXT) \
	test-u16-mbtouc$(EXEEXT) test-u16-mbtouc-unsafe$(EXEEXT) \
	test-u16-mbtoucr$(EXEEXT) test-u16-move$(EXEEXT) \
	test-u16-next$(EXEEXT) test-u16-prev$(EXEEXT) \
	test-u16-set$(EXEEXT) test-u16-stpcpy$(EXEEXT) \
	test-u16-stpncpy$(EXEEXT) test-u16-strcat$(EXEEXT) \
	test-u16-strchr$(EXEEXT) test-u16-strcmp$(EXEEXT) \
	test-u16-strcoll$(EXEEXT) test-u16-strcpy$(EXEEXT) \
	test-u16-strdup$(EXEEXT) test-u16-strlen$(EXEEXT) \
	test-u16-strmblen$(EXEEXT) test-u16-strmbtouc$(EXEEXT) \
	test-u16-strncat$(EXEEXT) test-u16-strncmp$(EXEEXT) \
	test-u16-strncpy$(EXEEXT) test-u16-strnlen$(EXEEXT) \
	test-u16-strstr$(EXEEXT) test-u16-strtok$(EXEEXT) \
	test-u16-to-u32$(EXEEXT) test-u16-to-u8$(EXEEXT) \
	test-u16-uctomb$(EXEEXT) test-u32-check$(EXEEXT) \
	test-u32-chr$(EXEEXT) test-u32-cmp$(EXEEXT) \
	test-u32-cmp2$(EXEEXT) test-u32-cpy-alloc$(EXEEXT) \
	test-u32-cpy$(EXEEXT) test-u32-mblen$(EXEEXT) \
	test-u32-mbsnlen$(EXEEXT) test-u32-mbtouc$(EXEEXT) \
	test-u32-mbtouc-unsafe$(EXEEXT) test-u32-mbtoucr$(EXEEXT) \
	test-u32-move$(EXEEXT) test-u32-next$(EXEEXT) \
	test-u32-prev$(EXEEXT) test-u32-set$(EXEEXT) \
	test-u32-stpcpy$(EXEEXT) test-u32-stpncpy$(EXEEXT) \
	test-u32-strcat$(EXEEXT) test-u32-strchr$(EXEEXT) \
	test-u32-strcmp$(EXEEXT) test-u32-strcoll$(EXEEXT) \
	test-u32-strcpy$(EXEEXT) test-u32-strdup$(EXEEXT) \
	test-u32-strlen$(EXEEXT) test-u32-strmblen$(EXEEXT) \
	test-u32-strmbtouc$(EXEEXT) test-u32-strncat$(EXEEXT) \
	test-u32-strncmp$(EXEEXT) test-u32-strncpy$(EXEEXT) \
	test-u32-strnlen$(EXEEXT) test-u32-strstr$(EXEEXT) \
	test-u32-strtok$(EXEEXT) test-u32-to-u16$(EXEEXT) \
	test-u32-to-u8$(EXEEXT) test-u32-uctomb$(EXEEXT) \
	test-u8-check$(EXEEXT) test-u8-chr$(EXEEXT) \
	test-u8-cmp$(EXEEXT) test-u8-cmp2$(EXEEXT) \
	test-u8-cpy-alloc$(EXEEXT) test-u8-cpy$(EXEEXT) \
	test-u8-mblen$(EXEEXT) test-u8-mbsnlen$(EXEEXT) \
	test-u8-mbtouc$(EXEEXT) test-u8-mbtouc-unsafe$(EXEEXT) \
	test-u8-mbtoucr$(EXEEXT) test-u8-move$(EXEEXT) \
	test-u8-next$(EXEEXT) test-u8-prev$(EXEEXT) \
	test-u8-set$(EXEEXT) test-u8-stpcpy$(EXEEXT) \
	test-u8-stpncpy$(EXEEXT) test-u8-strcat$(EXEEXT) \
	test-u8-strchr$(EXEEXT) test-u8-strcmp$(EXEEXT) \
	test-u8-strcoll$(EXEEXT) test-u8-strcpy$(EXEEXT) \
	test-u8-strdup$(EXEEXT) test-u8-strlen$(EXEEXT) \
	test-u8-strmblen$(EXEEXT) test-u8-strmbtouc$(EXEEXT) \
	test-u8-strncat$(EXEEXT) test-u8-strncmp$(EXEEXT) \
	test-u8-strncpy$(EXEEXT) test-u8-strnlen$(EXEEXT) \
	test-u8-strstr$(EXEEXT) test-u8-strtok$(EXEEXT) \
	test-u8-to-u16$(EXEEXT) test-u8-to-u32$(EXEEXT) \
	test-u8-uctomb$(EXEEXT) test-u16-wordbreaks$(EXEEXT) \
	test-u32-wordbreaks$(EXEEXT) uniwbrk/test-uc-wordbreaks.sh \
	test-u8-wordbreaks$(EXEEXT) uniwbrk/test-ulc-wordbreaks.sh \
	test-u16-strwidth$(EXEEXT) test-u16-width$(EXEEXT) \
	test-u32-strwidth$(EXEEXT) test-u32-width$(EXEEXT) \
	test-u8-strwidth$(EXEEXT) test-u8-width$(EXEEXT) \
	test-uc_width$(EXEEXT) uniwidth/test-uc_width2.sh \
	test-unsetenv$(EXEEXT) test-usleep$(EXEEXT) \
	test-verify$(EXEEXT) test-verify.sh test-wchar$(EXEEXT) \
	test-wcrtomb.sh test-wcrtomb-w32-1.sh test-wcrtomb-w32-2.sh \
	test-wcrtomb-w32-3.sh test-wcrtomb-w32-4.sh \
	test-wcrtomb-w32-5.sh test-wctype-h$(EXEEXT) \
	test-wcwidth$(EXEEXT) test-xalloc-die.sh
XFAIL_TESTS =
noinst_PROGRAMS =
check_PROGRAMS = test-alloca-opt$(EXEEXT) \
	test-array-mergesort$(EXEEXT) test-btowc$(EXEEXT) \
	test-c-ctype$(EXEEXT) test-c-strcasecmp$(EXEEXT) \
	test-c-strncasecmp$(EXEEXT) test-ctype$(EXEEXT) \
	test-environ$(EXEEXT) test-errno$(EXEEXT) test-fdopen$(EXEEXT) \
	test-fgetc$(EXEEXT) test-float$(EXEEXT) test-fputc$(EXEEXT) \
	test-fread$(EXEEXT) test-frexp-nolibm$(EXEEXT) \
	test-frexpl-nolibm$(EXEEXT) test-fseterr$(EXEEXT) \
	test-fwrite$(EXEEXT) test-getprogname$(EXEEXT) \
	test-iconv-h$(EXEEXT) test-iconv$(EXEEXT) \
	test-intprops$(EXEEXT) test-inttypes$(EXEEXT) \
	test-isblank$(EXEEXT) test-isnand-nolibm$(EXEEXT) \
	test-isnanf-nolibm$(EXEEXT) test-isnanl-nolibm$(EXEEXT) \
	test-iswblank$(EXEEXT) test-langinfo$(EXEEXT) \
	test-limits-h$(EXEEXT) test-locale$(EXEEXT) \
	test-localename$(EXEEXT) test-rwlock1$(EXEEXT) \
	test-lock$(EXEEXT) test-once1$(EXEEXT) test-once2$(EXEEXT) \
	test-malloca$(EXEEXT) test-math$(EXEEXT) test-mbrtowc$(EXEEXT) \
	test-mbrtowc-w32$(EXEEXT) test-mbsinit$(EXEEXT) \
	test-memchr$(EXEEXT) test-printf-frexp$(EXEEXT) \
	test-printf-frexpl$(EXEEXT) test-pthread_sigmask1$(EXEEXT) \
	test-pthread_sigmask2$(EXEEXT) test-raise$(EXEEXT) \
	test-setenv$(EXEEXT) test-setlocale1$(EXEEXT) \
	test-setlocale2$(EXEEXT) test-signal-h$(EXEEXT) \
	test-signbit$(EXEEXT) test-sigprocmask$(EXEEXT) \
	test-sleep$(EXEEXT) test-stdalign$(EXEEXT) \
	test-stdbool$(EXEEXT) test-stddef$(EXEEXT) \
	test-stdint$(EXEEXT) test-stdio$(EXEEXT) test-stdlib$(EXEEXT) \
	test-strerror$(EXEEXT) test-striconveh$(EXEEXT) \
	test-striconveha$(EXEEXT) test-string$(EXEEXT) \
	test-strncat$(EXEEXT) test-strstr$(EXEEXT) \
	test-sys_types$(EXEEXT) test-thread_self$(EXEEXT) \
	test-thread_create$(EXEEXT) test-time$(EXEEXT) \
	test-cased$(EXEEXT) test-ignorable$(EXEEXT) \
	test-locale-language$(EXEEXT) test-uc_tolower$(EXEEXT) \
	test-uc_totitle$(EXEEXT) test-uc_toupper$(EXEEXT) \
	test-u16-casecmp$(EXEEXT) test-u16-casecoll$(EXEEXT) \
	test-u16-casefold$(EXEEXT) test-u16-is-cased$(EXEEXT) \
	test-u16-is-casefolded$(EXEEXT) test-u16-is-lowercase$(EXEEXT) \
	test-u16-is-titlecase$(EXEEXT) test-u16-is-uppercase$(EXEEXT) \
	test-u16-tolower$(EXEEXT) test-u16-totitle$(EXEEXT) \
	test-u16-toupper$(EXEEXT) test-u32-casecmp$(EXEEXT) \
	test-u32-casecoll$(EXEEXT) test-u32-casefold$(EXEEXT) \
	test-u32-is-cased$(EXEEXT) test-u32-is-casefolded$(EXEEXT) \
	test-u32-is-lowercase$(EXEEXT) test-u32-is-titlecase$(EXEEXT) \
	test-u32-is-uppercase$(EXEEXT) test-u32-tolower$(EXEEXT) \
	test-u32-totitle$(EXEEXT) test-u32-toupper$(EXEEXT) \
	test-u8-casecmp$(EXEEXT) test-u8-casecoll$(EXEEXT) \
	test-u8-casefold$(EXEEXT) test-u8-is-cased$(EXEEXT) \
	test-u8-is-casefolded$(EXEEXT) test-u8-is-lowercase$(EXEEXT) \
	test-u8-is-titlecase$(EXEEXT) test-u8-is-uppercase$(EXEEXT) \
	test-u8-tolower$(EXEEXT) test-u8-totitle$(EXEEXT) \
	test-u8-toupper$(EXEEXT) test-ulc-casecmp$(EXEEXT) \
	test-ulc-casecoll$(EXEEXT) test-u16-conv-from-enc$(EXEEXT) \
	test-u16-conv-to-enc$(EXEEXT) \
	test-u16-strconv-from-enc$(EXEEXT) \
	test-u16-strconv-to-enc$(EXEEXT) \
	test-u32-conv-from-enc$(EXEEXT) test-u32-conv-to-enc$(EXEEXT) \
	test-u32-strconv-from-enc$(EXEEXT) \
	test-u32-strconv-to-enc$(EXEEXT) \
	test-u8-conv-from-enc$(EXEEXT) test-u8-conv-to-enc$(EXEEXT) \
	test-u8-strconv-from-enc$(EXEEXT) \
	test-u8-strconv-to-enc$(EXEEXT) test-bidi_byname$(EXEEXT) \
	test-bidi_longname$(EXEEXT) test-bidi_name$(EXEEXT) \
	test-bidi_of$(EXEEXT) test-bidi_test$(EXEEXT) \
	test-block_list$(EXEEXT) test-block_of$(EXEEXT) \
	test-block_test$(EXEEXT) test-categ_C$(EXEEXT) \
	test-categ_Cc$(EXEEXT) test-categ_Cf$(EXEEXT) \
	test-categ_Cn$(EXEEXT) test-categ_Co$(EXEEXT) \
	test-categ_Cs$(EXEEXT) test-categ_L$(EXEEXT) \
	test-categ_LC$(EXEEXT) test-categ_Ll$(EXEEXT) \
	test-categ_Lm$(EXEEXT) test-categ_Lo$(EXEEXT) \
	test-categ_Lt$(EXEEXT) test-categ_Lu$(EXEEXT) \
	test-categ_M$(EXEEXT) test-categ_Mc$(EXEEXT) \
	test-categ_Me$(EXEEXT) test-categ_Mn$(EXEEXT) \
	test-categ_N$(EXEEXT) test-categ_Nd$(EXEEXT) \
	test-categ_Nl$(EXEEXT) test-categ_No$(EXEEXT) \
	test-categ_P$(EXEEXT) test-categ_Pc$(EXEEXT) \
	test-categ_Pd$(EXEEXT) test-categ_Pe$(EXEEXT) \
	test-categ_Pf$(EXEEXT) test-categ_Pi$(EXEEXT) \
	test-categ_Po$(EXEEXT) test-categ_Ps$(EXEEXT) \
	test-categ_S$(EXEEXT) test-categ_Sc$(EXEEXT) \
	test-categ_Sk$(EXEEXT) test-categ_Sm$(EXEEXT) \
	test-categ_So$(EXEEXT) test-categ_Z$(EXEEXT) \
	test-categ_Zl$(EXEEXT) test-categ_Zp$(EXEEXT) \
	test-categ_Zs$(EXEEXT) test-categ_and_not$(EXEEXT) \
	test-categ_and$(EXEEXT) test-categ_byname$(EXEEXT) \
	test-categ_longname$(EXEEXT) test-categ_name$(EXEEXT) \
	$(am__EXEEXT_1) test-categ_of$(EXEEXT) test-categ_or$(EXEEXT) \
	test-categ_test_withtable$(EXEEXT) \
	test-combiningclass_byname$(EXEEXT) \
	test-combiningclass_longname$(EXEEXT) \
	test-combiningclass_name$(EXEEXT) test-combiningclass$(EXEEXT) \
	test-ctype_alnum$(EXEEXT) test-ctype_alpha$(EXEEXT) \
	test-ctype_blank$(EXEEXT) test-ctype_cntrl$(EXEEXT) \
	test-ctype_digit$(EXEEXT) test-ctype_graph$(EXEEXT) \
	test-ctype_lower$(EXEEXT) test-ctype_print$(EXEEXT) \
	test-ctype_punct$(EXEEXT) test-ctype_space$(EXEEXT) \
	test-ctype_upper$(EXEEXT) test-ctype_xdigit$(EXEEXT) \
	test-decdigit$(EXEEXT) test-digit$(EXEEXT) \
	test-joininggroup_byname$(EXEEXT) \
	test-joininggroup_name$(EXEEXT) test-joininggroup_of$(EXEEXT) \
	test-joiningtype_byname$(EXEEXT) \
	test-joiningtype_longname$(EXEEXT) \
	test-joiningtype_name$(EXEEXT) test-joiningtype_of$(EXEEXT) \
	test-mirror$(EXEEXT) test-numeric$(EXEEXT) \
	test-pr_alphabetic$(EXEEXT) test-pr_ascii_hex_digit$(EXEEXT) \
	test-pr_bidi_arabic_digit$(EXEEXT) \
	test-pr_bidi_arabic_right_to_left$(EXEEXT) \
	test-pr_bidi_block_separator$(EXEEXT) \
	test-pr_bidi_boundary_neutral$(EXEEXT) \
	test-pr_bidi_common_separator$(EXEEXT) \
	test-pr_bidi_control$(EXEEXT) \
	test-pr_bidi_embedding_or_override$(EXEEXT) \
	test-pr_bidi_eur_num_separator$(EXEEXT) \
	test-pr_bidi_eur_num_terminator$(EXEEXT) \
	test-pr_bidi_european_digit$(EXEEXT) \
	test-pr_bidi_hebrew_right_to_left$(EXEEXT) \
	test-pr_bidi_left_to_right$(EXEEXT) \
	test-pr_bidi_non_spacing_mark$(EXEEXT) \
	test-pr_bidi_other_neutral$(EXEEXT) test-pr_bidi_pdf$(EXEEXT) \
	test-pr_bidi_segment_separator$(EXEEXT) \
	test-pr_bidi_whitespace$(EXEEXT) test-pr_byname$(EXEEXT) \
	test-pr_case_ignorable$(EXEEXT) test-pr_cased$(EXEEXT) \
	test-pr_changes_when_casefolded$(EXEEXT) \
	test-pr_changes_when_casemapped$(EXEEXT) \
	test-pr_changes_when_lowercased$(EXEEXT) \
	test-pr_changes_when_titlecased$(EXEEXT) \
	test-pr_changes_when_uppercased$(EXEEXT) \
	test-pr_combining$(EXEEXT) test-pr_composite$(EXEEXT) \
	test-pr_currency_symbol$(EXEEXT) test-pr_dash$(EXEEXT) \
	test-pr_decimal_digit$(EXEEXT) \
	test-pr_default_ignorable_code_point$(EXEEXT) \
	test-pr_deprecated$(EXEEXT) test-pr_diacritic$(EXEEXT) \
	test-pr_extender$(EXEEXT) test-pr_format_control$(EXEEXT) \
	test-pr_grapheme_base$(EXEEXT) \
	test-pr_grapheme_extend$(EXEEXT) \
	test-pr_grapheme_link$(EXEEXT) test-pr_hex_digit$(EXEEXT) \
	test-pr_hyphen$(EXEEXT) test-pr_id_continue$(EXEEXT) \
	test-pr_id_start$(EXEEXT) test-pr_ideographic$(EXEEXT) \
	test-pr_ids_binary_operator$(EXEEXT) \
	test-pr_ids_trinary_operator$(EXEEXT) \
	test-pr_ignorable_control$(EXEEXT) \
	test-pr_iso_control$(EXEEXT) test-pr_join_control$(EXEEXT) \
	test-pr_left_of_pair$(EXEEXT) test-pr_line_separator$(EXEEXT) \
	test-pr_logical_order_exception$(EXEEXT) \
	test-pr_lowercase$(EXEEXT) test-pr_math$(EXEEXT) \
	test-pr_non_break$(EXEEXT) test-pr_not_a_character$(EXEEXT) \
	test-pr_numeric$(EXEEXT) test-pr_other_alphabetic$(EXEEXT) \
	test-pr_other_default_ignorable_code_point$(EXEEXT) \
	test-pr_other_grapheme_extend$(EXEEXT) \
	test-pr_other_id_continue$(EXEEXT) \
	test-pr_other_id_start$(EXEEXT) \
	test-pr_other_lowercase$(EXEEXT) test-pr_other_math$(EXEEXT) \
	test-pr_other_uppercase$(EXEEXT) \
	test-pr_paired_punctuation$(EXEEXT) \
	test-pr_paragraph_separator$(EXEEXT) \
	test-pr_pattern_syntax$(EXEEXT) \
	test-pr_pattern_white_space$(EXEEXT) \
	test-pr_private_use$(EXEEXT) test-pr_punctuation$(EXEEXT) \
	test-pr_quotation_mark$(EXEEXT) test-pr_radical$(EXEEXT) \
	test-pr_sentence_terminal$(EXEEXT) \
	test-pr_soft_dotted$(EXEEXT) test-pr_space$(EXEEXT) \
	test-pr_terminal_punctuation$(EXEEXT) test-pr_test$(EXEEXT) \
	test-pr_titlecase$(EXEEXT) \
	test-pr_unassigned_code_value$(EXEEXT) \
	test-pr_unified_ideograph$(EXEEXT) test-pr_uppercase$(EXEEXT) \
	test-pr_variation_selector$(EXEEXT) \
	test-pr_white_space$(EXEEXT) test-pr_xid_continue$(EXEEXT) \
	test-pr_xid_start$(EXEEXT) test-pr_zero_width$(EXEEXT) \
	test-scripts$(EXEEXT) test-sy_c_ident$(EXEEXT) \
	test-sy_c_whitespace$(EXEEXT) test-sy_java_ident$(EXEEXT) \
	test-sy_java_whitespace$(EXEEXT) \
	test-u16-grapheme-breaks$(EXEEXT) \
	test-u16-grapheme-next$(EXEEXT) \
	test-u16-grapheme-prev$(EXEEXT) \
	test-u32-grapheme-breaks$(EXEEXT) \
	test-u32-grapheme-next$(EXEEXT) \
	test-u32-grapheme-prev$(EXEEXT) \
	test-u8-grapheme-breaks$(EXEEXT) \
	test-u8-grapheme-next$(EXEEXT) test-u8-grapheme-prev$(EXEEXT) \
	test-uc-gbrk-prop$(EXEEXT) test-uc-grapheme-breaks$(EXEEXT) \
	test-uc-is-grapheme-break$(EXEEXT) \
	test-ulc-grapheme-breaks$(EXEEXT) \
	test-u16-possible-linebreaks$(EXEEXT) \
	test-u16-width-linebreaks$(EXEEXT) \
	test-u32-possible-linebreaks$(EXEEXT) \
	test-u32-width-linebreaks$(EXEEXT) \
	test-u8-possible-linebreaks$(EXEEXT) \
	test-u8-width-linebreaks$(EXEEXT) \
	test-ulc-possible-linebreaks$(EXEEXT) \
	test-ulc-width-linebreaks$(EXEEXT) $(am__EXEEXT_2) \
	test-canonical-decomposition$(EXEEXT) \
	test-compat-decomposition$(EXEEXT) test-composition$(EXEEXT) \
	test-decomposing-form$(EXEEXT) test-decomposition$(EXEEXT) \
	test-uninorm-filter-nfc$(EXEEXT) test-nfc$(EXEEXT) \
	test-u32-nfc-big$(EXEEXT) test-nfd$(EXEEXT) \
	test-u32-nfd-big$(EXEEXT) test-nfkc$(EXEEXT) \
	test-u32-nfkc-big$(EXEEXT) test-nfkd$(EXEEXT) \
	test-u32-nfkd-big$(EXEEXT) test-u16-normcmp$(EXEEXT) \
	test-u16-normcoll$(EXEEXT) test-u32-normcmp$(EXEEXT) \
	test-u32-normcoll$(EXEEXT) test-u8-normcmp$(EXEEXT) \
	test-u8-normcoll$(EXEEXT) test-unistd$(EXEEXT) \
	test-u16-asnprintf1$(EXEEXT) test-u16-vasnprintf1$(EXEEXT) \
	test-u16-vasnprintf2$(EXEEXT) test-u16-vasnprintf3$(EXEEXT) \
	test-u16-vasprintf1$(EXEEXT) test-u16-vsnprintf1$(EXEEXT) \
	test-u16-vsprintf1$(EXEEXT) test-u32-asnprintf1$(EXEEXT) \
	test-u32-vasnprintf1$(EXEEXT) test-u32-vasnprintf2$(EXEEXT) \
	test-u32-vasnprintf3$(EXEEXT) test-u32-vasprintf1$(EXEEXT) \
	test-u32-vsnprintf1$(EXEEXT) test-u32-vsprintf1$(EXEEXT) \
	test-u8-asnprintf1$(EXEEXT) test-u8-vasnprintf1$(EXEEXT) \
	test-u8-vasnprintf2$(EXEEXT) test-u8-vasnprintf3$(EXEEXT) \
	test-u8-vasprintf1$(EXEEXT) test-u8-vsnprintf1$(EXEEXT) \
	test-u8-vsprintf1$(EXEEXT) test-ulc-asnprintf1$(EXEEXT) \
	test-ulc-vasnprintf1$(EXEEXT) test-ulc-vasnprintf2$(EXEEXT) \
	test-ulc-vasnprintf3$(EXEEXT) test-ulc-vasprintf1$(EXEEXT) \
	test-ulc-vsnprintf1$(EXEEXT) test-ulc-vsprintf1$(EXEEXT) \
	test-u16-check$(EXEEXT) test-u16-chr$(EXEEXT) \
	test-u16-cmp$(EXEEXT) test-u16-cmp2$(EXEEXT) \
	test-u16-cpy-alloc$(EXEEXT) test-u16-cpy$(EXEEXT) \
	test-u16-mblen$(EXEEXT) test-u16-mbsnlen$(EXEEXT) \
	test-u16-mbtouc$(EXEEXT) test-u16-mbtouc-unsafe$(EXEEXT) \
	test-u16-mbtoucr$(EXEEXT) test-u16-move$(EXEEXT) \
	test-u16-next$(EXEEXT) test-u16-prev$(EXEEXT) \
	test-u16-set$(EXEEXT) test-u16-stpcpy$(EXEEXT) \
	test-u16-stpncpy$(EXEEXT) test-u16-strcat$(EXEEXT) \
	test-u16-strchr$(EXEEXT) test-u16-strcmp$(EXEEXT) \
	test-u16-strcoll$(EXEEXT) test-u16-strcpy$(EXEEXT) \
	test-u16-strdup$(EXEEXT) test-u16-strlen$(EXEEXT) \
	test-u16-strmblen$(EXEEXT) test-u16-strmbtouc$(EXEEXT) \
	test-u16-strncat$(EXEEXT) test-u16-strncmp$(EXEEXT) \
	test-u16-strncpy$(EXEEXT) test-u16-strnlen$(EXEEXT) \
	test-u16-strstr$(EXEEXT) test-u16-strtok$(EXEEXT) \
	test-u16-to-u32$(EXEEXT) test-u16-to-u8$(EXEEXT) \
	test-u16-uctomb$(EXEEXT) test-u32-check$(EXEEXT) \
	test-u32-chr$(EXEEXT) test-u32-cmp$(EXEEXT) \
	test-u32-cmp2$(EXEEXT) test-u32-cpy-alloc$(EXEEXT) \
	test-u32-cpy$(EXEEXT) test-u32-mblen$(EXEEXT) \
	test-u32-mbsnlen$(EXEEXT) test-u32-mbtouc$(EXEEXT) \
	test-u32-mbtouc-unsafe$(EXEEXT) test-u32-mbtoucr$(EXEEXT) \
	test-u32-move$(EXEEXT) test-u32-next$(EXEEXT) \
	test-u32-prev$(EXEEXT) test-u32-set$(EXEEXT) \
	test-u32-stpcpy$(EXEEXT) test-u32-stpncpy$(EXEEXT) \
	test-u32-strcat$(EXEEXT) test-u32-strchr$(EXEEXT) \
	test-u32-strcmp$(EXEEXT) test-u32-strcoll$(EXEEXT) \
	test-u32-strcpy$(EXEEXT) test-u32-strdup$(EXEEXT) \
	test-u32-strlen$(EXEEXT) test-u32-strmblen$(EXEEXT) \
	test-u32-strmbtouc$(EXEEXT) test-u32-strncat$(EXEEXT) \
	test-u32-strncmp$(EXEEXT) test-u32-strncpy$(EXEEXT) \
	test-u32-strnlen$(EXEEXT) test-u32-strstr$(EXEEXT) \
	test-u32-strtok$(EXEEXT) test-u32-to-u16$(EXEEXT) \
	test-u32-to-u8$(EXEEXT) test-u32-uctomb$(EXEEXT) \
	test-u8-check$(EXEEXT) test-u8-chr$(EXEEXT) \
	test-u8-cmp$(EXEEXT) test-u8-cmp2$(EXEEXT) \
	test-u8-cpy-alloc$(EXEEXT) test-u8-cpy$(EXEEXT) \
	test-u8-mblen$(EXEEXT) test-u8-mbsnlen$(EXEEXT) \
	test-u8-mbtouc$(EXEEXT) test-u8-mbtouc-unsafe$(EXEEXT) \
	test-u8-mbtoucr$(EXEEXT) test-u8-move$(EXEEXT) \
	test-u8-next$(EXEEXT) test-u8-prev$(EXEEXT) \
	test-u8-set$(EXEEXT) test-u8-stpcpy$(EXEEXT) \
	test-u8-stpncpy$(EXEEXT) test-u8-strcat$(EXEEXT) \
	test-u8-strchr$(EXEEXT) test-u8-strcmp$(EXEEXT) \
	test-u8-strcoll$(EXEEXT) test-u8-strcpy$(EXEEXT) \
	test-u8-strdup$(EXEEXT) test-u8-strlen$(EXEEXT) \
	test-u8-strmblen$(EXEEXT) test-u8-strmbtouc$(EXEEXT) \
	test-u8-strncat$(EXEEXT) test-u8-strncmp$(EXEEXT) \
	test-u8-strncpy$(EXEEXT) test-u8-strnlen$(EXEEXT) \
	test-u8-strstr$(EXEEXT) test-u8-strtok$(EXEEXT) \
	test-u8-to-u16$(EXEEXT) test-u8-to-u32$(EXEEXT) \
	test-u8-uctomb$(EXEEXT) test-u16-wordbreaks$(EXEEXT) \
	test-u32-wordbreaks$(EXEEXT) test-uc-wordbreaks$(EXEEXT) \
	test-u8-wordbreaks$(EXEEXT) test-ulc-wordbreaks$(EXEEXT) \
	test-u16-strwidth$(EXEEXT) test-u16-width$(EXEEXT) \
	test-u32-strwidth$(EXEEXT) test-u32-width$(EXEEXT) \
	test-u8-strwidth$(EXEEXT) test-u8-width$(EXEEXT) \
	test-uc_width$(EXEEXT) test-uc_width2$(EXEEXT) \
	test-unsetenv$(EXEEXT) test-usleep$(EXEEXT) \
	test-verify$(EXEEXT) test-wchar$(EXEEXT) test-wcrtomb$(EXEEXT) \
	test-wcrtomb-w32$(EXEEXT) test-wctype-h$(EXEEXT) \
	test-wcwidth$(EXEEXT) test-xalloc-die$(EXEEXT)
EXTRA_PROGRAMS = test-verify-try$(EXEEXT)
am__append_1 = test-categ_none
am__append_2 = test-categ_none

# Unlike other libunistring modules, this test passes only when the
# same version of uniname/uniname.c is used (even if it is newer).
am__append_3 = uniname/test-uninames.sh
am__append_4 = test-uninames


test-alloca-opt.log: test-alloca-opt$(EXEEXT)
	@p='test-alloca-opt$(EXEEXT)'; \
	b='test-alloca-opt'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-array-mergesort.log: test-array-mergesort$(EXEEXT)
	@p='test-array-mergesort$(EXEEXT)'; \
	b='test-array-mergesort'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-btowc1.sh.log: test-btowc1.sh
	@p='test-btowc1.sh'; \
	b='test-btowc1.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-btowc2.sh.log: test-btowc2.sh
	@p='test-btowc2.sh'; \
	b='test-btowc2.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-c-ctype.log: test-c-ctype$(EXEEXT)
	@p='test-c-ctype$(EXEEXT)'; \
	b='test-c-ctype'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-c-strcase.sh.log: test-c-strcase.sh
	@p='test-c-strcase.sh'; \
	b='test-c-strcase.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-ctype.log: test-ctype$(EXEEXT)
	@p='test-ctype$(EXEEXT)'; \
	b='test-ctype'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-environ.log: test-environ$(EXEEXT)
	@p='test-environ$(EXEEXT)'; \
	b='test-environ'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-errno.log: test-errno$(EXEEXT)
	@p='test-errno$(EXEEXT)'; \
	b='test-errno'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-fdopen.log: test-fdopen$(EXEEXT)
	@p='test-fdopen$(EXEEXT)'; \
	b='test-fdopen'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-fgetc.log: test-fgetc$(EXEEXT)
	@p='test-fgetc$(EXEEXT)'; \
	b='test-fgetc'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-float.log: test-float$(EXEEXT)
	@p='test-float$(EXEEXT)'; \
	b='test-float'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-fputc.log: test-fputc$(EXEEXT)
	@p='test-fputc$(EXEEXT)'; \
	b='test-fputc'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-fread.log: test-fread$(EXEEXT)
	@p='test-fread$(EXEEXT)'; \
	b='test-fread'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-frexp-nolibm.log: test-frexp-nolibm$(EXEEXT)
	@p='test-frexp-nolibm$(EXEEXT)'; \
	b='test-frexp-nolibm'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-frexpl-nolibm.log: test-frexpl-nolibm$(EXEEXT)
	@p='test-frexpl-nolibm$(EXEEXT)'; \
	b='test-frexpl-nolibm'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-fseterr.log: test-fseterr$(EXEEXT)
	@p='test-fseterr$(EXEEXT)'; \
	b='test-fseterr'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-fwrite.log: test-fwrite$(EXEEXT)
	@p='test-fwrite$(EXEEXT)'; \
	b='test-fwrite'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-getprogname.log: test-getprogname$(EXEEXT)
	@p='test-getprogname$(EXEEXT)'; \
	b='test-getprogname'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-iconv-h.log: test-iconv-h$(EXEEXT)
	@p='test-iconv-h$(EXEEXT)'; \
	b='test-iconv-h'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-iconv.log: test-iconv$(EXEEXT)
	@p='test-iconv$(EXEEXT)'; \
	b='test-iconv'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-intprops.log: test-intprops$(EXEEXT)
	@p='test-intprops$(EXEEXT)'; \
	b='test-intprops'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-inttypes.log: test-inttypes$(EXEEXT)
	@p='test-inttypes$(EXEEXT)'; \
	b='test-inttypes'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-isblank.log: test-isblank$(EXEEXT)
	@p='test-isblank$(EXEEXT)'; \
	b='test-isblank'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-isnand-nolibm.log: test-isnand-nolibm$(EXEEXT)
	@p='test-isnand-nolibm$(EXEEXT)'; \
	b='test-isnand-nolibm'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-isnanf-nolibm.log: test-isnanf-nolibm$(EXEEXT)
	@p='test-isnanf-nolibm$(EXEEXT)'; \
	b='test-isnanf-nolibm'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-isnanl-nolibm.log: test-isnanl-nolibm$(EXEEXT)
	@p='test-isnanl-nolibm$(EXEEXT)'; \
	b='test-isnanl-nolibm'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-iswblank.log: test-iswblank$(EXEEXT)
	@p='test-iswblank$(EXEEXT)'; \
	b='test-iswblank'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-langinfo.log: test-langinfo$(EXEEXT)
	@p='test-langinfo$(EXEEXT)'; \
	b='test-langinfo'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-limits-h.log: test-limits-h$(EXEEXT)
	@p='test-limits-h$(EXEEXT)'; \
	b='test-limits-h'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-locale.log: test-locale$(EXEEXT)
	@p='test-locale$(EXEEXT)'; \
	b='test-locale'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-localename.log: test-localename$(EXEEXT)
	@p='test-localename$(EXEEXT)'; \
	b='test-localename'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-rwlock1.log: test-rwlock1$(EXEEXT)
	@p='test-rwlock1$(EXEEXT)'; \
	b='test-rwlock1'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-lock.log: test-lock$(EXEEXT)
	@p='test-lock$(EXEEXT)'; \
	b='test-lock'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-once1.log: test-once1$(EXEEXT)
	@p='test-once1$(EXEEXT)'; \
	b='test-once1'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-once2.log: test-once2$(EXEEXT)
	@p='test-once2$(EXEEXT)'; \
	b='test-once2'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-malloca.log: test-malloca$(EXEEXT)
	@p='test-malloca$(EXEEXT)'; \
	b='test-malloca'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-math.log: test-math$(EXEEXT)
	@p='test-math$(EXEEXT)'; \
	b='test-math'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-mbrtowc1.sh.log: test-mbrtowc1.sh
	@p='test-mbrtowc1.sh'; \
	b='test-mbrtowc1.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-mbrtowc2.sh.log: test-mbrtowc2.sh
	@p='test-mbrtowc2.sh'; \
	b='test-mbrtowc2.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-mbrtowc3.sh.log: test-mbrtowc3.sh
	@p='test-mbrtowc3.sh'; \
	b='test-mbrtowc3.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-mbrtowc4.sh.log: test-mbrtowc4.sh
	@p='test-mbrtowc4.sh'; \
	b='test-mbrtowc4.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-mbrtowc5.sh.log: test-mbrtowc5.sh
	@p='test-mbrtowc5.sh'; \
	b='test-mbrtowc5.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-mbrtowc-w32-1.sh.log: test-mbrtowc-w32-1.sh
	@p='test-mbrtowc-w32-1.sh'; \
	b='test-mbrtowc-w32-1.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-mbrtowc-w32-2.sh.log: test-mbrtowc-w32-2.sh
	@p='test-mbrtowc-w32-2.sh'; \
	b='test-mbrtowc-w32-2.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-mbrtowc-w32-3.sh.log: test-mbrtowc-w32-3.sh
	@p='test-mbrtowc-w32-3.sh'; \
	b='test-mbrtowc-w32-3.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-mbrtowc-w32-4.sh.log: test-mbrtowc-w32-4.sh
	@p='test-mbrtowc-w32-4.sh'; \
	b='test-mbrtowc-w32-4.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-mbrtowc-w32-5.sh.log: test-mbrtowc-w32-5.sh
	@p='test-mbrtowc-w32-5.sh'; \
	b='test-mbrtowc-w32-5.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-mbsinit.sh.log: test-mbsinit.sh
	@p='test-mbsinit.sh'; \
	b='test-mbsinit.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-memchr.log: test-memchr$(EXEEXT)
	@p='test-memchr$(EXEEXT)'; \
	b='test-memchr'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-printf-frexp.log: test-printf-frexp$(EXEEXT)
	@p='test-printf-frexp$(EXEEXT)'; \
	b='test-printf-frexp'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-printf-frexpl.log: test-printf-frexpl$(EXEEXT)
	@p='test-printf-frexpl$(EXEEXT)'; \
	b='test-printf-frexpl'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pthread_sigmask1.log: test-pthread_sigmask1$(EXEEXT)
	@p='test-pthread_sigmask1$(EXEEXT)'; \
	b='test-pthread_sigmask1'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pthread_sigmask2.log: test-pthread_sigmask2$(EXEEXT)
	@p='test-pthread_sigmask2$(EXEEXT)'; \
	b='test-pthread_sigmask2'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-raise.log: test-raise$(EXEEXT)
	@p='test-raise$(EXEEXT)'; \
	b='test-raise'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-setenv.log: test-setenv$(EXEEXT)
	@p='test-setenv$(EXEEXT)'; \
	b='test-setenv'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-setlocale1.sh.log: test-setlocale1.sh
	@p='test-setlocale1.sh'; \
	b='test-setlocale1.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-setlocale2.sh.log: test-setlocale2.sh
	@p='test-setlocale2.sh'; \
	b='test-setlocale2.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-signal-h.log: test-signal-h$(EXEEXT)
	@p='test-signal-h$(EXEEXT)'; \
	b='test-signal-h'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-signbit.log: test-signbit$(EXEEXT)
	@p='test-signbit$(EXEEXT)'; \
	b='test-signbit'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-sigprocmask.log: test-sigprocmask$(EXEEXT)
	@p='test-sigprocmask$(EXEEXT)'; \
	b='test-sigprocmask'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-sleep.log: test-sleep$(EXEEXT)
	@p='test-sleep$(EXEEXT)'; \
	b='test-sleep'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-stdalign.log: test-stdalign$(EXEEXT)
	@p='test-stdalign$(EXEEXT)'; \
	b='test-stdalign'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-stdbool.log: test-stdbool$(EXEEXT)
	@p='test-stdbool$(EXEEXT)'; \
	b='test-stdbool'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-stddef.log: test-stddef$(EXEEXT)
	@p='test-stddef$(EXEEXT)'; \
	b='test-stddef'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-stdint.log: test-stdint$(EXEEXT)
	@p='test-stdint$(EXEEXT)'; \
	b='test-stdint'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-stdio.log: test-stdio$(EXEEXT)
	@p='test-stdio$(EXEEXT)'; \
	b='test-stdio'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-stdlib.log: test-stdlib$(EXEEXT)
	@p='test-stdlib$(EXEEXT)'; \
	b='test-stdlib'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-strerror.log: test-strerror$(EXEEXT)
	@p='test-strerror$(EXEEXT)'; \
	b='test-strerror'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-striconveh.log: test-striconveh$(EXEEXT)
	@p='test-striconveh$(EXEEXT)'; \
	b='test-striconveh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-striconveha.log: test-striconveha$(EXEEXT)
	@p='test-striconveha$(EXEEXT)'; \
	b='test-striconveha'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-string.log: test-string$(EXEEXT)
	@p='test-string$(EXEEXT)'; \
	b='test-string'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-strncat.log: test-strncat$(EXEEXT)
	@p='test-strncat$(EXEEXT)'; \
	b='test-strncat'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-strstr.log: test-strstr$(EXEEXT)
	@p='test-strstr$(EXEEXT)'; \
	b='test-strstr'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-sys_types.log: test-sys_types$(EXEEXT)
	@p='test-sys_types$(EXEEXT)'; \
	b='test-sys_types'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-init.sh.log: test-init.sh
	@p='test-init.sh'; \
	b='test-init.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-thread_self.log: test-thread_self$(EXEEXT)
	@p='test-thread_self$(EXEEXT)'; \
	b='test-thread_self'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-thread_create.log: test-thread_create$(EXEEXT)
	@p='test-thread_create$(EXEEXT)'; \
	b='test-thread_create'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-time.log: test-time$(EXEEXT)
	@p='test-time$(EXEEXT)'; \
	b='test-time'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-cased.log: test-cased$(EXEEXT)
	@p='test-cased$(EXEEXT)'; \
	b='test-cased'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-ignorable.log: test-ignorable$(EXEEXT)
	@p='test-ignorable$(EXEEXT)'; \
	b='test-ignorable'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
unicase/test-locale-language.sh.log: unicase/test-locale-language.sh
	@p='unicase/test-locale-language.sh'; \
	b='unicase/test-locale-language.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-uc_tolower.log: test-uc_tolower$(EXEEXT)
	@p='test-uc_tolower$(EXEEXT)'; \
	b='test-uc_tolower'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-uc_totitle.log: test-uc_totitle$(EXEEXT)
	@p='test-uc_totitle$(EXEEXT)'; \
	b='test-uc_totitle'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-uc_toupper.log: test-uc_toupper$(EXEEXT)
	@p='test-uc_toupper$(EXEEXT)'; \
	b='test-uc_toupper'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-casecmp.log: test-u16-casecmp$(EXEEXT)
	@p='test-u16-casecmp$(EXEEXT)'; \
	b='test-u16-casecmp'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-casecoll.log: test-u16-casecoll$(EXEEXT)
	@p='test-u16-casecoll$(EXEEXT)'; \
	b='test-u16-casecoll'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-casefold.log: test-u16-casefold$(EXEEXT)
	@p='test-u16-casefold$(EXEEXT)'; \
	b='test-u16-casefold'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-is-cased.log: test-u16-is-cased$(EXEEXT)
	@p='test-u16-is-cased$(EXEEXT)'; \
	b='test-u16-is-cased'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-is-casefolded.log: test-u16-is-casefolded$(EXEEXT)
	@p='test-u16-is-casefolded$(EXEEXT)'; \
	b='test-u16-is-casefolded'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-is-lowercase.log: test-u16-is-lowercase$(EXEEXT)
	@p='test-u16-is-lowercase$(EXEEXT)'; \
	b='test-u16-is-lowercase'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-is-titlecase.log: test-u16-is-titlecase$(EXEEXT)
	@p='test-u16-is-titlecase$(EXEEXT)'; \
	b='test-u16-is-titlecase'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-is-uppercase.log: test-u16-is-uppercase$(EXEEXT)
	@p='test-u16-is-uppercase$(EXEEXT)'; \
	b='test-u16-is-uppercase'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-tolower.log: test-u16-tolower$(EXEEXT)
	@p='test-u16-tolower$(EXEEXT)'; \
	b='test-u16-tolower'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-totitle.log: test-u16-totitle$(EXEEXT)
	@p='test-u16-totitle$(EXEEXT)'; \
	b='test-u16-totitle'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-toupper.log: test-u16-toupper$(EXEEXT)
	@p='test-u16-toupper$(EXEEXT)'; \
	b='test-u16-toupper'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-casecmp.log: test-u32-casecmp$(EXEEXT)
	@p='test-u32-casecmp$(EXEEXT)'; \
	b='test-u32-casecmp'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-casecoll.log: test-u32-casecoll$(EXEEXT)
	@p='test-u32-casecoll$(EXEEXT)'; \
	b='test-u32-casecoll'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-casefold.log: test-u32-casefold$(EXEEXT)
	@p='test-u32-casefold$(EXEEXT)'; \
	b='test-u32-casefold'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-is-cased.log: test-u32-is-cased$(EXEEXT)
	@p='test-u32-is-cased$(EXEEXT)'; \
	b='test-u32-is-cased'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-is-casefolded.log: test-u32-is-casefolded$(EXEEXT)
	@p='test-u32-is-casefolded$(EXEEXT)'; \
	b='test-u32-is-casefolded'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-is-lowercase.log: test-u32-is-lowercase$(EXEEXT)
	@p='test-u32-is-lowercase$(EXEEXT)'; \
	b='test-u32-is-lowercase'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-is-titlecase.log: test-u32-is-titlecase$(EXEEXT)
	@p='test-u32-is-titlecase$(EXEEXT)'; \
	b='test-u32-is-titlecase'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-is-uppercase.log: test-u32-is-uppercase$(EXEEXT)
	@p='test-u32-is-uppercase$(EXEEXT)'; \
	b='test-u32-is-uppercase'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-tolower.log: test-u32-tolower$(EXEEXT)
	@p='test-u32-tolower$(EXEEXT)'; \
	b='test-u32-tolower'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-totitle.log: test-u32-totitle$(EXEEXT)
	@p='test-u32-totitle$(EXEEXT)'; \
	b='test-u32-totitle'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-toupper.log: test-u32-toupper$(EXEEXT)
	@p='test-u32-toupper$(EXEEXT)'; \
	b='test-u32-toupper'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-casecmp.log: test-u8-casecmp$(EXEEXT)
	@p='test-u8-casecmp$(EXEEXT)'; \
	b='test-u8-casecmp'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-casecoll.log: test-u8-casecoll$(EXEEXT)
	@p='test-u8-casecoll$(EXEEXT)'; \
	b='test-u8-casecoll'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-casefold.log: test-u8-casefold$(EXEEXT)
	@p='test-u8-casefold$(EXEEXT)'; \
	b='test-u8-casefold'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-is-cased.log: test-u8-is-cased$(EXEEXT)
	@p='test-u8-is-cased$(EXEEXT)'; \
	b='test-u8-is-cased'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-is-casefolded.log: test-u8-is-casefolded$(EXEEXT)
	@p='test-u8-is-casefolded$(EXEEXT)'; \
	b='test-u8-is-casefolded'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-is-lowercase.log: test-u8-is-lowercase$(EXEEXT)
	@p='test-u8-is-lowercase$(EXEEXT)'; \
	b='test-u8-is-lowercase'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-is-titlecase.log: test-u8-is-titlecase$(EXEEXT)
	@p='test-u8-is-titlecase$(EXEEXT)'; \
	b='test-u8-is-titlecase'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-is-uppercase.log: test-u8-is-uppercase$(EXEEXT)
	@p='test-u8-is-uppercase$(EXEEXT)'; \
	b='test-u8-is-uppercase'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-tolower.log: test-u8-tolower$(EXEEXT)
	@p='test-u8-tolower$(EXEEXT)'; \
	b='test-u8-tolower'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-totitle.log: test-u8-totitle$(EXEEXT)
	@p='test-u8-totitle$(EXEEXT)'; \
	b='test-u8-totitle'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-toupper.log: test-u8-toupper$(EXEEXT)
	@p='test-u8-toupper$(EXEEXT)'; \
	b='test-u8-toupper'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
unicase/test-ulc-casecmp1.sh.log: unicase/test-ulc-casecmp1.sh
	@p='unicase/test-ulc-casecmp1.sh'; \
	b='unicase/test-ulc-casecmp1.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
unicase/test-ulc-casecmp2.sh.log: unicase/test-ulc-casecmp2.sh
	@p='unicase/test-ulc-casecmp2.sh'; \
	b='unicase/test-ulc-casecmp2.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
unicase/test-ulc-casecoll1.sh.log: unicase/test-ulc-casecoll1.sh
	@p='unicase/test-ulc-casecoll1.sh'; \
	b='unicase/test-ulc-casecoll1.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
unicase/test-ulc-casecoll2.sh.log: unicase/test-ulc-casecoll2.sh
	@p='unicase/test-ulc-casecoll2.sh'; \
	b='unicase/test-ulc-casecoll2.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-conv-from-enc.log: test-u16-conv-from-enc$(EXEEXT)
	@p='test-u16-conv-from-enc$(EXEEXT)'; \
	b='test-u16-conv-from-enc'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-conv-to-enc.log: test-u16-conv-to-enc$(EXEEXT)
	@p='test-u16-conv-to-enc$(EXEEXT)'; \
	b='test-u16-conv-to-enc'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-strconv-from-enc.log: test-u16-strconv-from-enc$(EXEEXT)
	@p='test-u16-strconv-from-enc$(EXEEXT)'; \
	b='test-u16-strconv-from-enc'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-strconv-to-enc.log: test-u16-strconv-to-enc$(EXEEXT)
	@p='test-u16-strconv-to-enc$(EXEEXT)'; \
	b='test-u16-strconv-to-enc'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-conv-from-enc.log: test-u32-conv-from-enc$(EXEEXT)
	@p='test-u32-conv-from-enc$(EXEEXT)'; \
	b='test-u32-conv-from-enc'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-conv-to-enc.log: test-u32-conv-to-enc$(EXEEXT)
	@p='test-u32-conv-to-enc$(EXEEXT)'; \
	b='test-u32-conv-to-enc'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-strconv-from-enc.log: test-u32-strconv-from-enc$(EXEEXT)
	@p='test-u32-strconv-from-enc$(EXEEXT)'; \
	b='test-u32-strconv-from-enc'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-strconv-to-enc.log: test-u32-strconv-to-enc$(EXEEXT)
	@p='test-u32-strconv-to-enc$(EXEEXT)'; \
	b='test-u32-strconv-to-enc'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-conv-from-enc.log: test-u8-conv-from-enc$(EXEEXT)
	@p='test-u8-conv-from-enc$(EXEEXT)'; \
	b='test-u8-conv-from-enc'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-conv-to-enc.log: test-u8-conv-to-enc$(EXEEXT)
	@p='test-u8-conv-to-enc$(EXEEXT)'; \
	b='test-u8-conv-to-enc'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-strconv-from-enc.log: test-u8-strconv-from-enc$(EXEEXT)
	@p='test-u8-strconv-from-enc$(EXEEXT)'; \
	b='test-u8-strconv-from-enc'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-strconv-to-enc.log: test-u8-strconv-to-enc$(EXEEXT)
	@p='test-u8-strconv-to-enc$(EXEEXT)'; \
	b='test-u8-strconv-to-enc'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-bidi_byname.log: test-bidi_byname$(EXEEXT)
	@p='test-bidi_byname$(EXEEXT)'; \
	b='test-bidi_byname'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-bidi_longname.log: test-bidi_longname$(EXEEXT)
	@p='test-bidi_longname$(EXEEXT)'; \
	b='test-bidi_longname'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-bidi_name.log: test-bidi_name$(EXEEXT)
	@p='test-bidi_name$(EXEEXT)'; \
	b='test-bidi_name'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-bidi_of.log: test-bidi_of$(EXEEXT)
	@p='test-bidi_of$(EXEEXT)'; \
	b='test-bidi_of'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-bidi_test.log: test-bidi_test$(EXEEXT)
	@p='test-bidi_test$(EXEEXT)'; \
	b='test-bidi_test'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-block_list.log: test-block_list$(EXEEXT)
	@p='test-block_list$(EXEEXT)'; \
	b='test-block_list'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-block_of.log: test-block_of$(EXEEXT)
	@p='test-block_of$(EXEEXT)'; \
	b='test-block_of'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-block_test.log: test-block_test$(EXEEXT)
	@p='test-block_test$(EXEEXT)'; \
	b='test-block_test'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_C.log: test-categ_C$(EXEEXT)
	@p='test-categ_C$(EXEEXT)'; \
	b='test-categ_C'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_Cc.log: test-categ_Cc$(EXEEXT)
	@p='test-categ_Cc$(EXEEXT)'; \
	b='test-categ_Cc'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_Cf.log: test-categ_Cf$(EXEEXT)
	@p='test-categ_Cf$(EXEEXT)'; \
	b='test-categ_Cf'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_Cn.log: test-categ_Cn$(EXEEXT)
	@p='test-categ_Cn$(EXEEXT)'; \
	b='test-categ_Cn'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_Co.log: test-categ_Co$(EXEEXT)
	@p='test-categ_Co$(EXEEXT)'; \
	b='test-categ_Co'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_Cs.log: test-categ_Cs$(EXEEXT)
	@p='test-categ_Cs$(EXEEXT)'; \
	b='test-categ_Cs'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_L.log: test-categ_L$(EXEEXT)
	@p='test-categ_L$(EXEEXT)'; \
	b='test-categ_L'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_LC.log: test-categ_LC$(EXEEXT)
	@p='test-categ_LC$(EXEEXT)'; \
	b='test-categ_LC'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_Ll.log: test-categ_Ll$(EXEEXT)
	@p='test-categ_Ll$(EXEEXT)'; \
	b='test-categ_Ll'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_Lm.log: test-categ_Lm$(EXEEXT)
	@p='test-categ_Lm$(EXEEXT)'; \
	b='test-categ_Lm'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_Lo.log: test-categ_Lo$(EXEEXT)
	@p='test-categ_Lo$(EXEEXT)'; \
	b='test-categ_Lo'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_Lt.log: test-categ_Lt$(EXEEXT)
	@p='test-categ_Lt$(EXEEXT)'; \
	b='test-categ_Lt'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_Lu.log: test-categ_Lu$(EXEEXT)
	@p='test-categ_Lu$(EXEEXT)'; \
	b='test-categ_Lu'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_M.log: test-categ_M$(EXEEXT)
	@p='test-categ_M$(EXEEXT)'; \
	b='test-categ_M'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_Mc.log: test-categ_Mc$(EXEEXT)
	@p='test-categ_Mc$(EXEEXT)'; \
	b='test-categ_Mc'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_Me.log: test-categ_Me$(EXEEXT)
	@p='test-categ_Me$(EXEEXT)'; \
	b='test-categ_Me'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_Mn.log: test-categ_Mn$(EXEEXT)
	@p='test-categ_Mn$(EXEEXT)'; \
	b='test-categ_Mn'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_N.log: test-categ_N$(EXEEXT)
	@p='test-categ_N$(EXEEXT)'; \
	b='test-categ_N'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_Nd.log: test-categ_Nd$(EXEEXT)
	@p='test-categ_Nd$(EXEEXT)'; \
	b='test-categ_Nd'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_Nl.log: test-categ_Nl$(EXEEXT)
	@p='test-categ_Nl$(EXEEXT)'; \
	b='test-categ_Nl'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_No.log: test-categ_No$(EXEEXT)
	@p='test-categ_No$(EXEEXT)'; \
	b='test-categ_No'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_P.log: test-categ_P$(EXEEXT)
	@p='test-categ_P$(EXEEXT)'; \
	b='test-categ_P'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_Pc.log: test-categ_Pc$(EXEEXT)
	@p='test-categ_Pc$(EXEEXT)'; \
	b='test-categ_Pc'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_Pd.log: test-categ_Pd$(EXEEXT)
	@p='test-categ_Pd$(EXEEXT)'; \
	b='test-categ_Pd'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_Pe.log: test-categ_Pe$(EXEEXT)
	@p='test-categ_Pe$(EXEEXT)'; \
	b='test-categ_Pe'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_Pf.log: test-categ_Pf$(EXEEXT)
	@p='test-categ_Pf$(EXEEXT)'; \
	b='test-categ_Pf'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_Pi.log: test-categ_Pi$(EXEEXT)
	@p='test-categ_Pi$(EXEEXT)'; \
	b='test-categ_Pi'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_Po.log: test-categ_Po$(EXEEXT)
	@p='test-categ_Po$(EXEEXT)'; \
	b='test-categ_Po'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_Ps.log: test-categ_Ps$(EXEEXT)
	@p='test-categ_Ps$(EXEEXT)'; \
	b='test-categ_Ps'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_S.log: test-categ_S$(EXEEXT)
	@p='test-categ_S$(EXEEXT)'; \
	b='test-categ_S'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_Sc.log: test-categ_Sc$(EXEEXT)
	@p='test-categ_Sc$(EXEEXT)'; \
	b='test-categ_Sc'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_Sk.log: test-categ_Sk$(EXEEXT)
	@p='test-categ_Sk$(EXEEXT)'; \
	b='test-categ_Sk'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_Sm.log: test-categ_Sm$(EXEEXT)
	@p='test-categ_Sm$(EXEEXT)'; \
	b='test-categ_Sm'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_So.log: test-categ_So$(EXEEXT)
	@p='test-categ_So$(EXEEXT)'; \
	b='test-categ_So'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_Z.log: test-categ_Z$(EXEEXT)
	@p='test-categ_Z$(EXEEXT)'; \
	b='test-categ_Z'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_Zl.log: test-categ_Zl$(EXEEXT)
	@p='test-categ_Zl$(EXEEXT)'; \
	b='test-categ_Zl'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_Zp.log: test-categ_Zp$(EXEEXT)
	@p='test-categ_Zp$(EXEEXT)'; \
	b='test-categ_Zp'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_Zs.log: test-categ_Zs$(EXEEXT)
	@p='test-categ_Zs$(EXEEXT)'; \
	b='test-categ_Zs'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_and_not.log: test-categ_and_not$(EXEEXT)
	@p='test-categ_and_not$(EXEEXT)'; \
	b='test-categ_and_not'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_and.log: test-categ_and$(EXEEXT)
	@p='test-categ_and$(EXEEXT)'; \
	b='test-categ_and'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_byname.log: test-categ_byname$(EXEEXT)
	@p='test-categ_byname$(EXEEXT)'; \
	b='test-categ_byname'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_longname.log: test-categ_longname$(EXEEXT)
	@p='test-categ_longname$(EXEEXT)'; \
	b='test-categ_longname'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_name.log: test-categ_name$(EXEEXT)
	@p='test-categ_name$(EXEEXT)'; \
	b='test-categ_name'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_none.log: test-categ_none$(EXEEXT)
	@p='test-categ_none$(EXEEXT)'; \
	b='test-categ_none'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_of.log: test-categ_of$(EXEEXT)
	@p='test-categ_of$(EXEEXT)'; \
	b='test-categ_of'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_or.log: test-categ_or$(EXEEXT)
	@p='test-categ_or$(EXEEXT)'; \
	b='test-categ_or'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-categ_test_withtable.log: test-categ_test_withtable$(EXEEXT)
	@p='test-categ_test_withtable$(EXEEXT)'; \
	b='test-categ_test_withtable'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-combiningclass_byname.log: test-combiningclass_byname$(EXEEXT)
	@p='test-combiningclass_byname$(EXEEXT)'; \
	b='test-combiningclass_byname'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-combiningclass_longname.log: test-combiningclass_longname$(EXEEXT)
	@p='test-combiningclass_longname$(EXEEXT)'; \
	b='test-combiningclass_longname'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-combiningclass_name.log: test-combiningclass_name$(EXEEXT)
	@p='test-combiningclass_name$(EXEEXT)'; \
	b='test-combiningclass_name'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-combiningclass.log: test-combiningclass$(EXEEXT)
	@p='test-combiningclass$(EXEEXT)'; \
	b='test-combiningclass'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-ctype_alnum.log: test-ctype_alnum$(EXEEXT)
	@p='test-ctype_alnum$(EXEEXT)'; \
	b='test-ctype_alnum'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-ctype_alpha.log: test-ctype_alpha$(EXEEXT)
	@p='test-ctype_alpha$(EXEEXT)'; \
	b='test-ctype_alpha'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-ctype_blank.log: test-ctype_blank$(EXEEXT)
	@p='test-ctype_blank$(EXEEXT)'; \
	b='test-ctype_blank'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-ctype_cntrl.log: test-ctype_cntrl$(EXEEXT)
	@p='test-ctype_cntrl$(EXEEXT)'; \
	b='test-ctype_cntrl'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-ctype_digit.log: test-ctype_digit$(EXEEXT)
	@p='test-ctype_digit$(EXEEXT)'; \
	b='test-ctype_digit'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-ctype_graph.log: test-ctype_graph$(EXEEXT)
	@p='test-ctype_graph$(EXEEXT)'; \
	b='test-ctype_graph'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-ctype_lower.log: test-ctype_lower$(EXEEXT)
	@p='test-ctype_lower$(EXEEXT)'; \
	b='test-ctype_lower'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-ctype_print.log: test-ctype_print$(EXEEXT)
	@p='test-ctype_print$(EXEEXT)'; \
	b='test-ctype_print'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-ctype_punct.log: test-ctype_punct$(EXEEXT)
	@p='test-ctype_punct$(EXEEXT)'; \
	b='test-ctype_punct'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-ctype_space.log: test-ctype_space$(EXEEXT)
	@p='test-ctype_space$(EXEEXT)'; \
	b='test-ctype_space'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-ctype_upper.log: test-ctype_upper$(EXEEXT)
	@p='test-ctype_upper$(EXEEXT)'; \
	b='test-ctype_upper'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-ctype_xdigit.log: test-ctype_xdigit$(EXEEXT)
	@p='test-ctype_xdigit$(EXEEXT)'; \
	b='test-ctype_xdigit'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-decdigit.log: test-decdigit$(EXEEXT)
	@p='test-decdigit$(EXEEXT)'; \
	b='test-decdigit'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-digit.log: test-digit$(EXEEXT)
	@p='test-digit$(EXEEXT)'; \
	b='test-digit'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-joininggroup_byname.log: test-joininggroup_byname$(EXEEXT)
	@p='test-joininggroup_byname$(EXEEXT)'; \
	b='test-joininggroup_byname'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-joininggroup_name.log: test-joininggroup_name$(EXEEXT)
	@p='test-joininggroup_name$(EXEEXT)'; \
	b='test-joininggroup_name'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-joininggroup_of.log: test-joininggroup_of$(EXEEXT)
	@p='test-joininggroup_of$(EXEEXT)'; \
	b='test-joininggroup_of'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-joiningtype_byname.log: test-joiningtype_byname$(EXEEXT)
	@p='test-joiningtype_byname$(EXEEXT)'; \
	b='test-joiningtype_byname'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-joiningtype_longname.log: test-joiningtype_longname$(EXEEXT)
	@p='test-joiningtype_longname$(EXEEXT)'; \
	b='test-joiningtype_longname'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-joiningtype_name.log: test-joiningtype_name$(EXEEXT)
	@p='test-joiningtype_name$(EXEEXT)'; \
	b='test-joiningtype_name'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-joiningtype_of.log: test-joiningtype_of$(EXEEXT)
	@p='test-joiningtype_of$(EXEEXT)'; \
	b='test-joiningtype_of'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-mirror.log: test-mirror$(EXEEXT)
	@p='test-mirror$(EXEEXT)'; \
	b='test-mirror'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-numeric.log: test-numeric$(EXEEXT)
	@p='test-numeric$(EXEEXT)'; \
	b='test-numeric'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_alphabetic.log: test-pr_alphabetic$(EXEEXT)
	@p='test-pr_alphabetic$(EXEEXT)'; \
	b='test-pr_alphabetic'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_ascii_hex_digit.log: test-pr_ascii_hex_digit$(EXEEXT)
	@p='test-pr_ascii_hex_digit$(EXEEXT)'; \
	b='test-pr_ascii_hex_digit'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_bidi_arabic_digit.log: test-pr_bidi_arabic_digit$(EXEEXT)
	@p='test-pr_bidi_arabic_digit$(EXEEXT)'; \
	b='test-pr_bidi_arabic_digit'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_bidi_arabic_right_to_left.log: test-pr_bidi_arabic_right_to_left$(EXEEXT)
	@p='test-pr_bidi_arabic_right_to_left$(EXEEXT)'; \
	b='test-pr_bidi_arabic_right_to_left'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_bidi_block_separator.log: test-pr_bidi_block_separator$(EXEEXT)
	@p='test-pr_bidi_block_separator$(EXEEXT)'; \
	b='test-pr_bidi_block_separator'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_bidi_boundary_neutral.log: test-pr_bidi_boundary_neutral$(EXEEXT)
	@p='test-pr_bidi_boundary_neutral$(EXEEXT)'; \
	b='test-pr_bidi_boundary_neutral'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_bidi_common_separator.log: test-pr_bidi_common_separator$(EXEEXT)
	@p='test-pr_bidi_common_separator$(EXEEXT)'; \
	b='test-pr_bidi_common_separator'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_bidi_control.log: test-pr_bidi_control$(EXEEXT)
	@p='test-pr_bidi_control$(EXEEXT)'; \
	b='test-pr_bidi_control'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_bidi_embedding_or_override.log: test-pr_bidi_embedding_or_override$(EXEEXT)
	@p='test-pr_bidi_embedding_or_override$(EXEEXT)'; \
	b='test-pr_bidi_embedding_or_override'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_bidi_eur_num_separator.log: test-pr_bidi_eur_num_separator$(EXEEXT)
	@p='test-pr_bidi_eur_num_separator$(EXEEXT)'; \
	b='test-pr_bidi_eur_num_separator'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_bidi_eur_num_terminator.log: test-pr_bidi_eur_num_terminator$(EXEEXT)
	@p='test-pr_bidi_eur_num_terminator$(EXEEXT)'; \
	b='test-pr_bidi_eur_num_terminator'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_bidi_european_digit.log: test-pr_bidi_european_digit$(EXEEXT)
	@p='test-pr_bidi_european_digit$(EXEEXT)'; \
	b='test-pr_bidi_european_digit'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_bidi_hebrew_right_to_left.log: test-pr_bidi_hebrew_right_to_left$(EXEEXT)
	@p='test-pr_bidi_hebrew_right_to_left$(EXEEXT)'; \
	b='test-pr_bidi_hebrew_right_to_left'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_bidi_left_to_right.log: test-pr_bidi_left_to_right$(EXEEXT)
	@p='test-pr_bidi_left_to_right$(EXEEXT)'; \
	b='test-pr_bidi_left_to_right'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_bidi_non_spacing_mark.log: test-pr_bidi_non_spacing_mark$(EXEEXT)
	@p='test-pr_bidi_non_spacing_mark$(EXEEXT)'; \
	b='test-pr_bidi_non_spacing_mark'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_bidi_other_neutral.log: test-pr_bidi_other_neutral$(EXEEXT)
	@p='test-pr_bidi_other_neutral$(EXEEXT)'; \
	b='test-pr_bidi_other_neutral'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_bidi_pdf.log: test-pr_bidi_pdf$(EXEEXT)
	@p='test-pr_bidi_pdf$(EXEEXT)'; \
	b='test-pr_bidi_pdf'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_bidi_segment_separator.log: test-pr_bidi_segment_separator$(EXEEXT)
	@p='test-pr_bidi_segment_separator$(EXEEXT)'; \
	b='test-pr_bidi_segment_separator'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_bidi_whitespace.log: test-pr_bidi_whitespace$(EXEEXT)
	@p='test-pr_bidi_whitespace$(EXEEXT)'; \
	b='test-pr_bidi_whitespace'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_byname.log: test-pr_byname$(EXEEXT)
	@p='test-pr_byname$(EXEEXT)'; \
	b='test-pr_byname'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_case_ignorable.log: test-pr_case_ignorable$(EXEEXT)
	@p='test-pr_case_ignorable$(EXEEXT)'; \
	b='test-pr_case_ignorable'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_cased.log: test-pr_cased$(EXEEXT)
	@p='test-pr_cased$(EXEEXT)'; \
	b='test-pr_cased'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_changes_when_casefolded.log: test-pr_changes_when_casefolded$(EXEEXT)
	@p='test-pr_changes_when_casefolded$(EXEEXT)'; \
	b='test-pr_changes_when_casefolded'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_changes_when_casemapped.log: test-pr_changes_when_casemapped$(EXEEXT)
	@p='test-pr_changes_when_casemapped$(EXEEXT)'; \
	b='test-pr_changes_when_casemapped'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_changes_when_lowercased.log: test-pr_changes_when_lowercased$(EXEEXT)
	@p='test-pr_changes_when_lowercased$(EXEEXT)'; \
	b='test-pr_changes_when_lowercased'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_changes_when_titlecased.log: test-pr_changes_when_titlecased$(EXEEXT)
	@p='test-pr_changes_when_titlecased$(EXEEXT)'; \
	b='test-pr_changes_when_titlecased'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_changes_when_uppercased.log: test-pr_changes_when_uppercased$(EXEEXT)
	@p='test-pr_changes_when_uppercased$(EXEEXT)'; \
	b='test-pr_changes_when_uppercased'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_combining.log: test-pr_combining$(EXEEXT)
	@p='test-pr_combining$(EXEEXT)'; \
	b='test-pr_combining'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_composite.log: test-pr_composite$(EXEEXT)
	@p='test-pr_composite$(EXEEXT)'; \
	b='test-pr_composite'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_currency_symbol.log: test-pr_currency_symbol$(EXEEXT)
	@p='test-pr_currency_symbol$(EXEEXT)'; \
	b='test-pr_currency_symbol'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_dash.log: test-pr_dash$(EXEEXT)
	@p='test-pr_dash$(EXEEXT)'; \
	b='test-pr_dash'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_decimal_digit.log: test-pr_decimal_digit$(EXEEXT)
	@p='test-pr_decimal_digit$(EXEEXT)'; \
	b='test-pr_decimal_digit'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_default_ignorable_code_point.log: test-pr_default_ignorable_code_point$(EXEEXT)
	@p='test-pr_default_ignorable_code_point$(EXEEXT)'; \
	b='test-pr_default_ignorable_code_point'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_deprecated.log: test-pr_deprecated$(EXEEXT)
	@p='test-pr_deprecated$(EXEEXT)'; \
	b='test-pr_deprecated'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_diacritic.log: test-pr_diacritic$(EXEEXT)
	@p='test-pr_diacritic$(EXEEXT)'; \
	b='test-pr_diacritic'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_extender.log: test-pr_extender$(EXEEXT)
	@p='test-pr_extender$(EXEEXT)'; \
	b='test-pr_extender'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_format_control.log: test-pr_format_control$(EXEEXT)
	@p='test-pr_format_control$(EXEEXT)'; \
	b='test-pr_format_control'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_grapheme_base.log: test-pr_grapheme_base$(EXEEXT)
	@p='test-pr_grapheme_base$(EXEEXT)'; \
	b='test-pr_grapheme_base'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_grapheme_extend.log: test-pr_grapheme_extend$(EXEEXT)
	@p='test-pr_grapheme_extend$(EXEEXT)'; \
	b='test-pr_grapheme_extend'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_grapheme_link.log: test-pr_grapheme_link$(EXEEXT)
	@p='test-pr_grapheme_link$(EXEEXT)'; \
	b='test-pr_grapheme_link'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_hex_digit.log: test-pr_hex_digit$(EXEEXT)
	@p='test-pr_hex_digit$(EXEEXT)'; \
	b='test-pr_hex_digit'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_hyphen.log: test-pr_hyphen$(EXEEXT)
	@p='test-pr_hyphen$(EXEEXT)'; \
	b='test-pr_hyphen'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_id_continue.log: test-pr_id_continue$(EXEEXT)
	@p='test-pr_id_continue$(EXEEXT)'; \
	b='test-pr_id_continue'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_id_start.log: test-pr_id_start$(EXEEXT)
	@p='test-pr_id_start$(EXEEXT)'; \
	b='test-pr_id_start'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_ideographic.log: test-pr_ideographic$(EXEEXT)
	@p='test-pr_ideographic$(EXEEXT)'; \
	b='test-pr_ideographic'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_ids_binary_operator.log: test-pr_ids_binary_operator$(EXEEXT)
	@p='test-pr_ids_binary_operator$(EXEEXT)'; \
	b='test-pr_ids_binary_operator'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_ids_trinary_operator.log: test-pr_ids_trinary_operator$(EXEEXT)
	@p='test-pr_ids_trinary_operator$(EXEEXT)'; \
	b='test-pr_ids_trinary_operator'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_ignorable_control.log: test-pr_ignorable_control$(EXEEXT)
	@p='test-pr_ignorable_control$(EXEEXT)'; \
	b='test-pr_ignorable_control'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_iso_control.log: test-pr_iso_control$(EXEEXT)
	@p='test-pr_iso_control$(EXEEXT)'; \
	b='test-pr_iso_control'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_join_control.log: test-pr_join_control$(EXEEXT)
	@p='test-pr_join_control$(EXEEXT)'; \
	b='test-pr_join_control'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_left_of_pair.log: test-pr_left_of_pair$(EXEEXT)
	@p='test-pr_left_of_pair$(EXEEXT)'; \
	b='test-pr_left_of_pair'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_line_separator.log: test-pr_line_separator$(EXEEXT)
	@p='test-pr_line_separator$(EXEEXT)'; \
	b='test-pr_line_separator'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_logical_order_exception.log: test-pr_logical_order_exception$(EXEEXT)
	@p='test-pr_logical_order_exception$(EXEEXT)'; \
	b='test-pr_logical_order_exception'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_lowercase.log: test-pr_lowercase$(EXEEXT)
	@p='test-pr_lowercase$(EXEEXT)'; \
	b='test-pr_lowercase'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_math.log: test-pr_math$(EXEEXT)
	@p='test-pr_math$(EXEEXT)'; \
	b='test-pr_math'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_non_break.log: test-pr_non_break$(EXEEXT)
	@p='test-pr_non_break$(EXEEXT)'; \
	b='test-pr_non_break'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_not_a_character.log: test-pr_not_a_character$(EXEEXT)
	@p='test-pr_not_a_character$(EXEEXT)'; \
	b='test-pr_not_a_character'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_numeric.log: test-pr_numeric$(EXEEXT)
	@p='test-pr_numeric$(EXEEXT)'; \
	b='test-pr_numeric'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_other_alphabetic.log: test-pr_other_alphabetic$(EXEEXT)
	@p='test-pr_other_alphabetic$(EXEEXT)'; \
	b='test-pr_other_alphabetic'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_other_default_ignorable_code_point.log: test-pr_other_default_ignorable_code_point$(EXEEXT)
	@p='test-pr_other_default_ignorable_code_point$(EXEEXT)'; \
	b='test-pr_other_default_ignorable_code_point'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_other_grapheme_extend.log: test-pr_other_grapheme_extend$(EXEEXT)
	@p='test-pr_other_grapheme_extend$(EXEEXT)'; \
	b='test-pr_other_grapheme_extend'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_other_id_continue.log: test-pr_other_id_continue$(EXEEXT)
	@p='test-pr_other_id_continue$(EXEEXT)'; \
	b='test-pr_other_id_continue'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_other_id_start.log: test-pr_other_id_start$(EXEEXT)
	@p='test-pr_other_id_start$(EXEEXT)'; \
	b='test-pr_other_id_start'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_other_lowercase.log: test-pr_other_lowercase$(EXEEXT)
	@p='test-pr_other_lowercase$(EXEEXT)'; \
	b='test-pr_other_lowercase'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_other_math.log: test-pr_other_math$(EXEEXT)
	@p='test-pr_other_math$(EXEEXT)'; \
	b='test-pr_other_math'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_other_uppercase.log: test-pr_other_uppercase$(EXEEXT)
	@p='test-pr_other_uppercase$(EXEEXT)'; \
	b='test-pr_other_uppercase'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_paired_punctuation.log: test-pr_paired_punctuation$(EXEEXT)
	@p='test-pr_paired_punctuation$(EXEEXT)'; \
	b='test-pr_paired_punctuation'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_paragraph_separator.log: test-pr_paragraph_separator$(EXEEXT)
	@p='test-pr_paragraph_separator$(EXEEXT)'; \
	b='test-pr_paragraph_separator'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_pattern_syntax.log: test-pr_pattern_syntax$(EXEEXT)
	@p='test-pr_pattern_syntax$(EXEEXT)'; \
	b='test-pr_pattern_syntax'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_pattern_white_space.log: test-pr_pattern_white_space$(EXEEXT)
	@p='test-pr_pattern_white_space$(EXEEXT)'; \
	b='test-pr_pattern_white_space'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_private_use.log: test-pr_private_use$(EXEEXT)
	@p='test-pr_private_use$(EXEEXT)'; \
	b='test-pr_private_use'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_punctuation.log: test-pr_punctuation$(EXEEXT)
	@p='test-pr_punctuation$(EXEEXT)'; \
	b='test-pr_punctuation'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_quotation_mark.log: test-pr_quotation_mark$(EXEEXT)
	@p='test-pr_quotation_mark$(EXEEXT)'; \
	b='test-pr_quotation_mark'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_radical.log: test-pr_radical$(EXEEXT)
	@p='test-pr_radical$(EXEEXT)'; \
	b='test-pr_radical'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_sentence_terminal.log: test-pr_sentence_terminal$(EXEEXT)
	@p='test-pr_sentence_terminal$(EXEEXT)'; \
	b='test-pr_sentence_terminal'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_soft_dotted.log: test-pr_soft_dotted$(EXEEXT)
	@p='test-pr_soft_dotted$(EXEEXT)'; \
	b='test-pr_soft_dotted'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_space.log: test-pr_space$(EXEEXT)
	@p='test-pr_space$(EXEEXT)'; \
	b='test-pr_space'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_terminal_punctuation.log: test-pr_terminal_punctuation$(EXEEXT)
	@p='test-pr_terminal_punctuation$(EXEEXT)'; \
	b='test-pr_terminal_punctuation'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_test.log: test-pr_test$(EXEEXT)
	@p='test-pr_test$(EXEEXT)'; \
	b='test-pr_test'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_titlecase.log: test-pr_titlecase$(EXEEXT)
	@p='test-pr_titlecase$(EXEEXT)'; \
	b='test-pr_titlecase'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_unassigned_code_value.log: test-pr_unassigned_code_value$(EXEEXT)
	@p='test-pr_unassigned_code_value$(EXEEXT)'; \
	b='test-pr_unassigned_code_value'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_unified_ideograph.log: test-pr_unified_ideograph$(EXEEXT)
	@p='test-pr_unified_ideograph$(EXEEXT)'; \
	b='test-pr_unified_ideograph'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_uppercase.log: test-pr_uppercase$(EXEEXT)
	@p='test-pr_uppercase$(EXEEXT)'; \
	b='test-pr_uppercase'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_variation_selector.log: test-pr_variation_selector$(EXEEXT)
	@p='test-pr_variation_selector$(EXEEXT)'; \
	b='test-pr_variation_selector'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_white_space.log: test-pr_white_space$(EXEEXT)
	@p='test-pr_white_space$(EXEEXT)'; \
	b='test-pr_white_space'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_xid_continue.log: test-pr_xid_continue$(EXEEXT)
	@p='test-pr_xid_continue$(EXEEXT)'; \
	b='test-pr_xid_continue'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_xid_start.log: test-pr_xid_start$(EXEEXT)
	@p='test-pr_xid_start$(EXEEXT)'; \
	b='test-pr_xid_start'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pr_zero_width.log: test-pr_zero_width$(EXEEXT)
	@p='test-pr_zero_width$(EXEEXT)'; \
	b='test-pr_zero_width'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-scripts.log: test-scripts$(EXEEXT)
	@p='test-scripts$(EXEEXT)'; \
	b='test-scripts'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-sy_c_ident.log: test-sy_c_ident$(EXEEXT)
	@p='test-sy_c_ident$(EXEEXT)'; \
	b='test-sy_c_ident'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-sy_c_whitespace.log: test-sy_c_whitespace$(EXEEXT)
	@p='test-sy_c_whitespace$(EXEEXT)'; \
	b='test-sy_c_whitespace'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-sy_java_ident.log: test-sy_java_ident$(EXEEXT)
	@p='test-sy_java_ident$(EXEEXT)'; \
	b='test-sy_java_ident'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-sy_java_whitespace.log: test-sy_java_whitespace$(EXEEXT)
	@p='test-sy_java_whitespace$(EXEEXT)'; \
	b='test-sy_java_whitespace'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-grapheme-breaks.log: test-u16-grapheme-breaks$(EXEEXT)
	@p='test-u16-grapheme-breaks$(EXEEXT)'; \
	b='test-u16-grapheme-breaks'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-grapheme-next.log: test-u16-grapheme-next$(EXEEXT)
	@p='test-u16-grapheme-next$(EXEEXT)'; \
	b='test-u16-grapheme-next'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-grapheme-prev.log: test-u16-grapheme-prev$(EXEEXT)
	@p='test-u16-grapheme-prev$(EXEEXT)'; \
	b='test-u16-grapheme-prev'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-grapheme-breaks.log: test-u32-grapheme-breaks$(EXEEXT)
	@p='test-u32-grapheme-breaks$(EXEEXT)'; \
	b='test-u32-grapheme-breaks'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-grapheme-next.log: test-u32-grapheme-next$(EXEEXT)
	@p='test-u32-grapheme-next$(EXEEXT)'; \
	b='test-u32-grapheme-next'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-grapheme-prev.log: test-u32-grapheme-prev$(EXEEXT)
	@p='test-u32-grapheme-prev$(EXEEXT)'; \
	b='test-u32-grapheme-prev'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-grapheme-breaks.log: test-u8-grapheme-breaks$(EXEEXT)
	@p='test-u8-grapheme-breaks$(EXEEXT)'; \
	b='test-u8-grapheme-breaks'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-grapheme-next.log: test-u8-grapheme-next$(EXEEXT)
	@p='test-u8-grapheme-next$(EXEEXT)'; \
	b='test-u8-grapheme-next'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-grapheme-prev.log: test-u8-grapheme-prev$(EXEEXT)
	@p='test-u8-grapheme-prev$(EXEEXT)'; \
	b='test-u8-grapheme-prev'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-uc-gbrk-prop.log: test-uc-gbrk-prop$(EXEEXT)
	@p='test-uc-gbrk-prop$(EXEEXT)'; \
	b='test-uc-gbrk-prop'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
unigbrk/test-uc-grapheme-breaks.sh.log: unigbrk/test-uc-grapheme-breaks.sh
	@p='unigbrk/test-uc-grapheme-breaks.sh'; \
	b='unigbrk/test-uc-grapheme-breaks.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
unigbrk/test-uc-is-grapheme-break.sh.log: unigbrk/test-uc-is-grapheme-break.sh
	@p='unigbrk/test-uc-is-grapheme-break.sh'; \
	b='unigbrk/test-uc-is-grapheme-break.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
unigbrk/test-ulc-grapheme-breaks.sh.log: unigbrk/test-ulc-grapheme-breaks.sh
	@p='unigbrk/test-ulc-grapheme-breaks.sh'; \
	b='unigbrk/test-ulc-grapheme-breaks.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-possible-linebreaks.log: test-u16-possible-linebreaks$(EXEEXT)
	@p='test-u16-possible-linebreaks$(EXEEXT)'; \
	b='test-u16-possible-linebreaks'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-width-linebreaks.log: test-u16-width-linebreaks$(EXEEXT)
	@p='test-u16-width-linebreaks$(EXEEXT)'; \
	b='test-u16-width-linebreaks'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-possible-linebreaks.log: test-u32-possible-linebreaks$(EXEEXT)
	@p='test-u32-possible-linebreaks$(EXEEXT)'; \
	b='test-u32-possible-linebreaks'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-width-linebreaks.log: test-u32-width-linebreaks$(EXEEXT)
	@p='test-u32-width-linebreaks$(EXEEXT)'; \
	b='test-u32-width-linebreaks'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-possible-linebreaks.log: test-u8-possible-linebreaks$(EXEEXT)
	@p='test-u8-possible-linebreaks$(EXEEXT)'; \
	b='test-u8-possible-linebreaks'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-width-linebreaks.log: test-u8-width-linebreaks$(EXEEXT)
	@p='test-u8-width-linebreaks$(EXEEXT)'; \
	b='test-u8-width-linebreaks'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-ulc-possible-linebreaks.log: test-ulc-possible-linebreaks$(EXEEXT)
	@p='test-ulc-possible-linebreaks$(EXEEXT)'; \
	b='test-ulc-possible-linebreaks'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-ulc-width-linebreaks.log: test-ulc-width-linebreaks$(EXEEXT)
	@p='test-ulc-width-linebreaks$(EXEEXT)'; \
	b='test-ulc-width-linebreaks'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
uniname/test-uninames.sh.log: uniname/test-uninames.sh
	@p='uniname/test-uninames.sh'; \
	b='uniname/test-uninames.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-canonical-decomposition.log: test-canonical-decomposition$(EXEEXT)
	@p='test-canonical-decomposition$(EXEEXT)'; \
	b='test-canonical-decomposition'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-compat-decomposition.log: test-compat-decomposition$(EXEEXT)
	@p='test-compat-decomposition$(EXEEXT)'; \
	b='test-compat-decomposition'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-composition.log: test-composition$(EXEEXT)
	@p='test-composition$(EXEEXT)'; \
	b='test-composition'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-decomposing-form.log: test-decomposing-form$(EXEEXT)
	@p='test-decomposing-form$(EXEEXT)'; \
	b='test-decomposing-form'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-decomposition.log: test-decomposition$(EXEEXT)
	@p='test-decomposition$(EXEEXT)'; \
	b='test-decomposition'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-uninorm-filter-nfc.log: test-uninorm-filter-nfc$(EXEEXT)
	@p='test-uninorm-filter-nfc$(EXEEXT)'; \
	b='test-uninorm-filter-nfc'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-nfc.log: test-nfc$(EXEEXT)
	@p='test-nfc$(EXEEXT)'; \
	b='test-nfc'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
uninorm/test-u32-nfc-big.sh.log: uninorm/test-u32-nfc-big.sh
	@p='uninorm/test-u32-nfc-big.sh'; \
	b='uninorm/test-u32-nfc-big.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-nfd.log: test-nfd$(EXEEXT)
	@p='test-nfd$(EXEEXT)'; \
	b='test-nfd'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
uninorm/test-u32-nfd-big.sh.log: uninorm/test-u32-nfd-big.sh
	@p='uninorm/test-u32-nfd-big.sh'; \
	b='uninorm/test-u32-nfd-big.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-nfkc.log: test-nfkc$(EXEEXT)
	@p='test-nfkc$(EXEEXT)'; \
	b='test-nfkc'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
uninorm/test-u32-nfkc-big.sh.log: uninorm/test-u32-nfkc-big.sh
	@p='uninorm/test-u32-nfkc-big.sh'; \
	b='uninorm/test-u32-nfkc-big.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-nfkd.log: test-nfkd$(EXEEXT)
	@p='test-nfkd$(EXEEXT)'; \
	b='test-nfkd'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
uninorm/test-u32-nfkd-big.sh.log: uninorm/test-u32-nfkd-big.sh
	@p='uninorm/test-u32-nfkd-big.sh'; \
	b='uninorm/test-u32-nfkd-big.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-normcmp.log: test-u16-normcmp$(EXEEXT)
	@p='test-u16-normcmp$(EXEEXT)'; \
	b='test-u16-normcmp'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-normcoll.log: test-u16-normcoll$(EXEEXT)
	@p='test-u16-normcoll$(EXEEXT)'; \
	b='test-u16-normcoll'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-normcmp.log: test-u32-normcmp$(EXEEXT)
	@p='test-u32-normcmp$(EXEEXT)'; \
	b='test-u32-normcmp'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-normcoll.log: test-u32-normcoll$(EXEEXT)
	@p='test-u32-normcoll$(EXEEXT)'; \
	b='test-u32-normcoll'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-normcmp.log: test-u8-normcmp$(EXEEXT)
	@p='test-u8-normcmp$(EXEEXT)'; \
	b='test-u8-normcmp'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-normcoll.log: test-u8-normcoll$(EXEEXT)
	@p='test-u8-normcoll$(EXEEXT)'; \
	b='test-u8-normcoll'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-unistd.log: test-unistd$(EXEEXT)
	@p='test-unistd$(EXEEXT)'; \
	b='test-unistd'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-asnprintf1.log: test-u16-asnprintf1$(EXEEXT)
	@p='test-u16-asnprintf1$(EXEEXT)'; \
	b='test-u16-asnprintf1'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-vasnprintf1.log: test-u16-vasnprintf1$(EXEEXT)
	@p='test-u16-vasnprintf1$(EXEEXT)'; \
	b='test-u16-vasnprintf1'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
unistdio/test-u16-vasnprintf2.sh.log: unistdio/test-u16-vasnprintf2.sh
	@p='unistdio/test-u16-vasnprintf2.sh'; \
	b='unistdio/test-u16-vasnprintf2.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
unistdio/test-u16-vasnprintf3.sh.log: unistdio/test-u16-vasnprintf3.sh
	@p='unistdio/test-u16-vasnprintf3.sh'; \
	b='unistdio/test-u16-vasnprintf3.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-vasprintf1.log: test-u16-vasprintf1$(EXEEXT)
	@p='test-u16-vasprintf1$(EXEEXT)'; \
	b='test-u16-vasprintf1'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-vsnprintf1.log: test-u16-vsnprintf1$(EXEEXT)
	@p='test-u16-vsnprintf1$(EXEEXT)'; \
	b='test-u16-vsnprintf1'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-vsprintf1.log: test-u16-vsprintf1$(EXEEXT)
	@p='test-u16-vsprintf1$(EXEEXT)'; \
	b='test-u16-vsprintf1'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-asnprintf1.log: test-u32-asnprintf1$(EXEEXT)
	@p='test-u32-asnprintf1$(EXEEXT)'; \
	b='test-u32-asnprintf1'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-vasnprintf1.log: test-u32-vasnprintf1$(EXEEXT)
	@p='test-u32-vasnprintf1$(EXEEXT)'; \
	b='test-u32-vasnprintf1'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
unistdio/test-u32-vasnprintf2.sh.log: unistdio/test-u32-vasnprintf2.sh
	@p='unistdio/test-u32-vasnprintf2.sh'; \
	b='unistdio/test-u32-vasnprintf2.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
unistdio/test-u32-vasnprintf3.sh.log: unistdio/test-u32-vasnprintf3.sh
	@p='unistdio/test-u32-vasnprintf3.sh'; \
	b='unistdio/test-u32-vasnprintf3.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-vasprintf1.log: test-u32-vasprintf1$(EXEEXT)
	@p='test-u32-vasprintf1$(EXEEXT)'; \
	b='test-u32-vasprintf1'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-vsnprintf1.log: test-u32-vsnprintf1$(EXEEXT)
	@p='test-u32-vsnprintf1$(EXEEXT)'; \
	b='test-u32-vsnprintf1'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-vsprintf1.log: test-u32-vsprintf1$(EXEEXT)
	@p='test-u32-vsprintf1$(EXEEXT)'; \
	b='test-u32-vsprintf1'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-asnprintf1.log: test-u8-asnprintf1$(EXEEXT)
	@p='test-u8-asnprintf1$(EXEEXT)'; \
	b='test-u8-asnprintf1'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-vasnprintf1.log: test-u8-vasnprintf1$(EXEEXT)
	@p='test-u8-vasnprintf1$(EXEEXT)'; \
	b='test-u8-vasnprintf1'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
unistdio/test-u8-vasnprintf2.sh.log: unistdio/test-u8-vasnprintf2.sh
	@p='unistdio/test-u8-vasnprintf2.sh'; \
	b='unistdio/test-u8-vasnprintf2.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
unistdio/test-u8-vasnprintf3.sh.log: unistdio/test-u8-vasnprintf3.sh
	@p='unistdio/test-u8-vasnprintf3.sh'; \
	b='unistdio/test-u8-vasnprintf3.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-vasprintf1.log: test-u8-vasprintf1$(EXEEXT)
	@p='test-u8-vasprintf1$(EXEEXT)'; \
	b='test-u8-vasprintf1'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-vsnprintf1.log: test-u8-vsnprintf1$(EXEEXT)
	@p='test-u8-vsnprintf1$(EXEEXT)'; \
	b='test-u8-vsnprintf1'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-vsprintf1.log: test-u8-vsprintf1$(EXEEXT)
	@p='test-u8-vsprintf1$(EXEEXT)'; \
	b='test-u8-vsprintf1'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-ulc-asnprintf1.log: test-ulc-asnprintf1$(EXEEXT)
	@p='test-ulc-asnprintf1$(EXEEXT)'; \
	b='test-ulc-asnprintf1'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-ulc-vasnprintf1.log: test-ulc-vasnprintf1$(EXEEXT)
	@p='test-ulc-vasnprintf1$(EXEEXT)'; \
	b='test-ulc-vasnprintf1'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
unistdio/test-ulc-vasnprintf2.sh.log: unistdio/test-ulc-vasnprintf2.sh
	@p='unistdio/test-ulc-vasnprintf2.sh'; \
	b='unistdio/test-ulc-vasnprintf2.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
unistdio/test-ulc-vasnprintf3.sh.log: unistdio/test-ulc-vasnprintf3.sh
	@p='unistdio/test-ulc-vasnprintf3.sh'; \
	b='unistdio/test-ulc-vasnprintf3.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-ulc-vasprintf1.log: test-ulc-vasprintf1$(EXEEXT)
	@p='test-ulc-vasprintf1$(EXEEXT)'; \
	b='test-ulc-vasprintf1'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-ulc-vsnprintf1.log: test-ulc-vsnprintf1$(EXEEXT)
	@p='test-ulc-vsnprintf1$(EXEEXT)'; \
	b='test-ulc-vsnprintf1'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-ulc-vsprintf1.log: test-ulc-vsprintf1$(EXEEXT)
	@p='test-ulc-vsprintf1$(EXEEXT)'; \
	b='test-ulc-vsprintf1'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-check.log: test-u16-check$(EXEEXT)
	@p='test-u16-check$(EXEEXT)'; \
	b='test-u16-check'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-chr.log: test-u16-chr$(EXEEXT)
	@p='test-u16-chr$(EXEEXT)'; \
	b='test-u16-chr'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-cmp.log: test-u16-cmp$(EXEEXT)
	@p='test-u16-cmp$(EXEEXT)'; \
	b='test-u16-cmp'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-cmp2.log: test-u16-cmp2$(EXEEXT)
	@p='test-u16-cmp2$(EXEEXT)'; \
	b='test-u16-cmp2'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-cpy-alloc.log: test-u16-cpy-alloc$(EXEEXT)
	@p='test-u16-cpy-alloc$(EXEEXT)'; \
	b='test-u16-cpy-alloc'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-cpy.log: test-u16-cpy$(EXEEXT)
	@p='test-u16-cpy$(EXEEXT)'; \
	b='test-u16-cpy'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-mblen.log: test-u16-mblen$(EXEEXT)
	@p='test-u16-mblen$(EXEEXT)'; \
	b='test-u16-mblen'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-mbsnlen.log: test-u16-mbsnlen$(EXEEXT)
	@p='test-u16-mbsnlen$(EXEEXT)'; \
	b='test-u16-mbsnlen'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-mbtouc.log: test-u16-mbtouc$(EXEEXT)
	@p='test-u16-mbtouc$(EXEEXT)'; \
	b='test-u16-mbtouc'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-mbtouc-unsafe.log: test-u16-mbtouc-unsafe$(EXEEXT)
	@p='test-u16-mbtouc-unsafe$(EXEEXT)'; \
	b='test-u16-mbtouc-unsafe'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-mbtoucr.log: test-u16-mbtoucr$(EXEEXT)
	@p='test-u16-mbtoucr$(EXEEXT)'; \
	b='test-u16-mbtoucr'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-move.log: test-u16-move$(EXEEXT)
	@p='test-u16-move$(EXEEXT)'; \
	b='test-u16-move'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-next.log: test-u16-next$(EXEEXT)
	@p='test-u16-next$(EXEEXT)'; \
	b='test-u16-next'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-prev.log: test-u16-prev$(EXEEXT)
	@p='test-u16-prev$(EXEEXT)'; \
	b='test-u16-prev'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-set.log: test-u16-set$(EXEEXT)
	@p='test-u16-set$(EXEEXT)'; \
	b='test-u16-set'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-stpcpy.log: test-u16-stpcpy$(EXEEXT)
	@p='test-u16-stpcpy$(EXEEXT)'; \
	b='test-u16-stpcpy'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-stpncpy.log: test-u16-stpncpy$(EXEEXT)
	@p='test-u16-stpncpy$(EXEEXT)'; \
	b='test-u16-stpncpy'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-strcat.log: test-u16-strcat$(EXEEXT)
	@p='test-u16-strcat$(EXEEXT)'; \
	b='test-u16-strcat'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-strchr.log: test-u16-strchr$(EXEEXT)
	@p='test-u16-strchr$(EXEEXT)'; \
	b='test-u16-strchr'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-strcmp.log: test-u16-strcmp$(EXEEXT)
	@p='test-u16-strcmp$(EXEEXT)'; \
	b='test-u16-strcmp'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-strcoll.log: test-u16-strcoll$(EXEEXT)
	@p='test-u16-strcoll$(EXEEXT)'; \
	b='test-u16-strcoll'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-strcpy.log: test-u16-strcpy$(EXEEXT)
	@p='test-u16-strcpy$(EXEEXT)'; \
	b='test-u16-strcpy'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-strdup.log: test-u16-strdup$(EXEEXT)
	@p='test-u16-strdup$(EXEEXT)'; \
	b='test-u16-strdup'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-strlen.log: test-u16-strlen$(EXEEXT)
	@p='test-u16-strlen$(EXEEXT)'; \
	b='test-u16-strlen'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-strmblen.log: test-u16-strmblen$(EXEEXT)
	@p='test-u16-strmblen$(EXEEXT)'; \
	b='test-u16-strmblen'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-strmbtouc.log: test-u16-strmbtouc$(EXEEXT)
	@p='test-u16-strmbtouc$(EXEEXT)'; \
	b='test-u16-strmbtouc'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-strncat.log: test-u16-strncat$(EXEEXT)
	@p='test-u16-strncat$(EXEEXT)'; \
	b='test-u16-strncat'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-strncmp.log: test-u16-strncmp$(EXEEXT)
	@p='test-u16-strncmp$(EXEEXT)'; \
	b='test-u16-strncmp'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-strncpy.log: test-u16-strncpy$(EXEEXT)
	@p='test-u16-strncpy$(EXEEXT)'; \
	b='test-u16-strncpy'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-strnlen.log: test-u16-strnlen$(EXEEXT)
	@p='test-u16-strnlen$(EXEEXT)'; \
	b='test-u16-strnlen'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-strstr.log: test-u16-strstr$(EXEEXT)
	@p='test-u16-strstr$(EXEEXT)'; \
	b='test-u16-strstr'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-strtok.log: test-u16-strtok$(EXEEXT)
	@p='test-u16-strtok$(EXEEXT)'; \
	b='test-u16-strtok'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-to-u32.log: test-u16-to-u32$(EXEEXT)
	@p='test-u16-to-u32$(EXEEXT)'; \
	b='test-u16-to-u32'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-to-u8.log: test-u16-to-u8$(EXEEXT)
	@p='test-u16-to-u8$(EXEEXT)'; \
	b='test-u16-to-u8'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-uctomb.log: test-u16-uctomb$(EXEEXT)
	@p='test-u16-uctomb$(EXEEXT)'; \
	b='test-u16-uctomb'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-check.log: test-u32-check$(EXEEXT)
	@p='test-u32-check$(EXEEXT)'; \
	b='test-u32-check'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-chr.log: test-u32-chr$(EXEEXT)
	@p='test-u32-chr$(EXEEXT)'; \
	b='test-u32-chr'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-cmp.log: test-u32-cmp$(EXEEXT)
	@p='test-u32-cmp$(EXEEXT)'; \
	b='test-u32-cmp'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-cmp2.log: test-u32-cmp2$(EXEEXT)
	@p='test-u32-cmp2$(EXEEXT)'; \
	b='test-u32-cmp2'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-cpy-alloc.log: test-u32-cpy-alloc$(EXEEXT)
	@p='test-u32-cpy-alloc$(EXEEXT)'; \
	b='test-u32-cpy-alloc'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-cpy.log: test-u32-cpy$(EXEEXT)
	@p='test-u32-cpy$(EXEEXT)'; \
	b='test-u32-cpy'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-mblen.log: test-u32-mblen$(EXEEXT)
	@p='test-u32-mblen$(EXEEXT)'; \
	b='test-u32-mblen'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-mbsnlen.log: test-u32-mbsnlen$(EXEEXT)
	@p='test-u32-mbsnlen$(EXEEXT)'; \
	b='test-u32-mbsnlen'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-mbtouc.log: test-u32-mbtouc$(EXEEXT)
	@p='test-u32-mbtouc$(EXEEXT)'; \
	b='test-u32-mbtouc'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-mbtouc-unsafe.log: test-u32-mbtouc-unsafe$(EXEEXT)
	@p='test-u32-mbtouc-unsafe$(EXEEXT)'; \
	b='test-u32-mbtouc-unsafe'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-mbtoucr.log: test-u32-mbtoucr$(EXEEXT)
	@p='test-u32-mbtoucr$(EXEEXT)'; \
	b='test-u32-mbtoucr'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-move.log: test-u32-move$(EXEEXT)
	@p='test-u32-move$(EXEEXT)'; \
	b='test-u32-move'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-next.log: test-u32-next$(EXEEXT)
	@p='test-u32-next$(EXEEXT)'; \
	b='test-u32-next'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-prev.log: test-u32-prev$(EXEEXT)
	@p='test-u32-prev$(EXEEXT)'; \
	b='test-u32-prev'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-set.log: test-u32-set$(EXEEXT)
	@p='test-u32-set$(EXEEXT)'; \
	b='test-u32-set'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-stpcpy.log: test-u32-stpcpy$(EXEEXT)
	@p='test-u32-stpcpy$(EXEEXT)'; \
	b='test-u32-stpcpy'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-stpncpy.log: test-u32-stpncpy$(EXEEXT)
	@p='test-u32-stpncpy$(EXEEXT)'; \
	b='test-u32-stpncpy'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-strcat.log: test-u32-strcat$(EXEEXT)
	@p='test-u32-strcat$(EXEEXT)'; \
	b='test-u32-strcat'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-strchr.log: test-u32-strchr$(EXEEXT)
	@p='test-u32-strchr$(EXEEXT)'; \
	b='test-u32-strchr'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-strcmp.log: test-u32-strcmp$(EXEEXT)
	@p='test-u32-strcmp$(EXEEXT)'; \
	b='test-u32-strcmp'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-strcoll.log: test-u32-strcoll$(EXEEXT)
	@p='test-u32-strcoll$(EXEEXT)'; \
	b='test-u32-strcoll'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-strcpy.log: test-u32-strcpy$(EXEEXT)
	@p='test-u32-strcpy$(EXEEXT)'; \
	b='test-u32-strcpy'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-strdup.log: test-u32-strdup$(EXEEXT)
	@p='test-u32-strdup$(EXEEXT)'; \
	b='test-u32-strdup'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-strlen.log: test-u32-strlen$(EXEEXT)
	@p='test-u32-strlen$(EXEEXT)'; \
	b='test-u32-strlen'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-strmblen.log: test-u32-strmblen$(EXEEXT)
	@p='test-u32-strmblen$(EXEEXT)'; \
	b='test-u32-strmblen'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-strmbtouc.log: test-u32-strmbtouc$(EXEEXT)
	@p='test-u32-strmbtouc$(EXEEXT)'; \
	b='test-u32-strmbtouc'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-strncat.log: test-u32-strncat$(EXEEXT)
	@p='test-u32-strncat$(EXEEXT)'; \
	b='test-u32-strncat'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-strncmp.log: test-u32-strncmp$(EXEEXT)
	@p='test-u32-strncmp$(EXEEXT)'; \
	b='test-u32-strncmp'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-strncpy.log: test-u32-strncpy$(EXEEXT)
	@p='test-u32-strncpy$(EXEEXT)'; \
	b='test-u32-strncpy'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-strnlen.log: test-u32-strnlen$(EXEEXT)
	@p='test-u32-strnlen$(EXEEXT)'; \
	b='test-u32-strnlen'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-strstr.log: test-u32-strstr$(EXEEXT)
	@p='test-u32-strstr$(EXEEXT)'; \
	b='test-u32-strstr'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-strtok.log: test-u32-strtok$(EXEEXT)
	@p='test-u32-strtok$(EXEEXT)'; \
	b='test-u32-strtok'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-to-u16.log: test-u32-to-u16$(EXEEXT)
	@p='test-u32-to-u16$(EXEEXT)'; \
	b='test-u32-to-u16'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-to-u8.log: test-u32-to-u8$(EXEEXT)
	@p='test-u32-to-u8$(EXEEXT)'; \
	b='test-u32-to-u8'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-uctomb.log: test-u32-uctomb$(EXEEXT)
	@p='test-u32-uctomb$(EXEEXT)'; \
	b='test-u32-uctomb'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-check.log: test-u8-check$(EXEEXT)
	@p='test-u8-check$(EXEEXT)'; \
	b='test-u8-check'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-chr.log: test-u8-chr$(EXEEXT)
	@p='test-u8-chr$(EXEEXT)'; \
	b='test-u8-chr'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-cmp.log: test-u8-cmp$(EXEEXT)
	@p='test-u8-cmp$(EXEEXT)'; \
	b='test-u8-cmp'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-cmp2.log: test-u8-cmp2$(EXEEXT)
	@p='test-u8-cmp2$(EXEEXT)'; \
	b='test-u8-cmp2'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-cpy-alloc.log: test-u8-cpy-alloc$(EXEEXT)
	@p='test-u8-cpy-alloc$(EXEEXT)'; \
	b='test-u8-cpy-alloc'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-cpy.log: test-u8-cpy$(EXEEXT)
	@p='test-u8-cpy$(EXEEXT)'; \
	b='test-u8-cpy'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-mblen.log: test-u8-mblen$(EXEEXT)
	@p='test-u8-mblen$(EXEEXT)'; \
	b='test-u8-mblen'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-mbsnlen.log: test-u8-mbsnlen$(EXEEXT)
	@p='test-u8-mbsnlen$(EXEEXT)'; \
	b='test-u8-mbsnlen'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-mbtouc.log: test-u8-mbtouc$(EXEEXT)
	@p='test-u8-mbtouc$(EXEEXT)'; \
	b='test-u8-mbtouc'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-mbtouc-unsafe.log: test-u8-mbtouc-unsafe$(EXEEXT)
	@p='test-u8-mbtouc-unsafe$(EXEEXT)'; \
	b='test-u8-mbtouc-unsafe'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-mbtoucr.log: test-u8-mbtoucr$(EXEEXT)
	@p='test-u8-mbtoucr$(EXEEXT)'; \
	b='test-u8-mbtoucr'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-move.log: test-u8-move$(EXEEXT)
	@p='test-u8-move$(EXEEXT)'; \
	b='test-u8-move'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-next.log: test-u8-next$(EXEEXT)
	@p='test-u8-next$(EXEEXT)'; \
	b='test-u8-next'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-prev.log: test-u8-prev$(EXEEXT)
	@p='test-u8-prev$(EXEEXT)'; \
	b='test-u8-prev'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-set.log: test-u8-set$(EXEEXT)
	@p='test-u8-set$(EXEEXT)'; \
	b='test-u8-set'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-stpcpy.log: test-u8-stpcpy$(EXEEXT)
	@p='test-u8-stpcpy$(EXEEXT)'; \
	b='test-u8-stpcpy'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-stpncpy.log: test-u8-stpncpy$(EXEEXT)
	@p='test-u8-stpncpy$(EXEEXT)'; \
	b='test-u8-stpncpy'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-strcat.log: test-u8-strcat$(EXEEXT)
	@p='test-u8-strcat$(EXEEXT)'; \
	b='test-u8-strcat'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-strchr.log: test-u8-strchr$(EXEEXT)
	@p='test-u8-strchr$(EXEEXT)'; \
	b='test-u8-strchr'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-strcmp.log: test-u8-strcmp$(EXEEXT)
	@p='test-u8-strcmp$(EXEEXT)'; \
	b='test-u8-strcmp'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-strcoll.log: test-u8-strcoll$(EXEEXT)
	@p='test-u8-strcoll$(EXEEXT)'; \
	b='test-u8-strcoll'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-strcpy.log: test-u8-strcpy$(EXEEXT)
	@p='test-u8-strcpy$(EXEEXT)'; \
	b='test-u8-strcpy'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-strdup.log: test-u8-strdup$(EXEEXT)
	@p='test-u8-strdup$(EXEEXT)'; \
	b='test-u8-strdup'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-strlen.log: test-u8-strlen$(EXEEXT)
	@p='test-u8-strlen$(EXEEXT)'; \
	b='test-u8-strlen'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-strmblen.log: test-u8-strmblen$(EXEEXT)
	@p='test-u8-strmblen$(EXEEXT)'; \
	b='test-u8-strmblen'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-strmbtouc.log: test-u8-strmbtouc$(EXEEXT)
	@p='test-u8-strmbtouc$(EXEEXT)'; \
	b='test-u8-strmbtouc'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-strncat.log: test-u8-strncat$(EXEEXT)
	@p='test-u8-strncat$(EXEEXT)'; \
	b='test-u8-strncat'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-strncmp.log: test-u8-strncmp$(EXEEXT)
	@p='test-u8-strncmp$(EXEEXT)'; \
	b='test-u8-strncmp'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-strncpy.log: test-u8-strncpy$(EXEEXT)
	@p='test-u8-strncpy$(EXEEXT)'; \
	b='test-u8-strncpy'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-strnlen.log: test-u8-strnlen$(EXEEXT)
	@p='test-u8-strnlen$(EXEEXT)'; \
	b='test-u8-strnlen'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-strstr.log: test-u8-strstr$(EXEEXT)
	@p='test-u8-strstr$(EXEEXT)'; \
	b='test-u8-strstr'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-strtok.log: test-u8-strtok$(EXEEXT)
	@p='test-u8-strtok$(EXEEXT)'; \
	b='test-u8-strtok'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-to-u16.log: test-u8-to-u16$(EXEEXT)
	@p='test-u8-to-u16$(EXEEXT)'; \
	b='test-u8-to-u16'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-to-u32.log: test-u8-to-u32$(EXEEXT)
	@p='test-u8-to-u32$(EXEEXT)'; \
	b='test-u8-to-u32'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-uctomb.log: test-u8-uctomb$(EXEEXT)
	@p='test-u8-uctomb$(EXEEXT)'; \
	b='test-u8-uctomb'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-wordbreaks.log: test-u16-wordbreaks$(EXEEXT)
	@p='test-u16-wordbreaks$(EXEEXT)'; \
	b='test-u16-wordbreaks'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-wordbreaks.log: test-u32-wordbreaks$(EXEEXT)
	@p='test-u32-wordbreaks$(EXEEXT)'; \
	b='test-u32-wordbreaks'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
uniwbrk/test-uc-wordbreaks.sh.log: uniwbrk/test-uc-wordbreaks.sh
	@p='uniwbrk/test-uc-wordbreaks.sh'; \
	b='uniwbrk/test-uc-wordbreaks.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-wordbreaks.log: test-u8-wordbreaks$(EXEEXT)
	@p='test-u8-wordbreaks$(EXEEXT)'; \
	b='test-u8-wordbreaks'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
uniwbrk/test-ulc-wordbreaks.sh.log: uniwbrk/test-ulc-wordbreaks.sh
	@p='uniwbrk/test-ulc-wordbreaks.sh'; \
	b='uniwbrk/test-ulc-wordbreaks.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-strwidth.log: test-u16-strwidth$(EXEEXT)
	@p='test-u16-strwidth$(EXEEXT)'; \
	b='test-u16-strwidth'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u16-width.log: test-u16-width$(EXEEXT)
	@p='test-u16-width$(EXEEXT)'; \
	b='test-u16-width'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-strwidth.log: test-u32-strwidth$(EXEEXT)
	@p='test-u32-strwidth$(EXEEXT)'; \
	b='test-u32-strwidth'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u32-width.log: test-u32-width$(EXEEXT)
	@p='test-u32-width$(EXEEXT)'; \
	b='test-u32-width'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-strwidth.log: test-u8-strwidth$(EXEEXT)
	@p='test-u8-strwidth$(EXEEXT)'; \
	b='test-u8-strwidth'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-u8-width.log: test-u8-width$(EXEEXT)
	@p='test-u8-width$(EXEEXT)'; \
	b='test-u8-width'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-uc_width.log: test-uc_width$(EXEEXT)
	@p='test-uc_width$(EXEEXT)'; \
	b='test-uc_width'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
uniwidth/test-uc_width2.sh.log: uniwidth/test-uc_width2.sh
	@p='uniwidth/test-uc_width2.sh'; \
	b='uniwidth/test-uc_width2.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-unsetenv.log: test-unsetenv$(EXEEXT)
	@p='test-unsetenv$(EXEEXT)'; \
	b='test-unsetenv'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-usleep.log: test-usleep$(EXEEXT)
	@p='test-usleep$(EXEEXT)'; \
	b='test-usleep'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-verify.log: test-verify$(EXEEXT)
	@p='test-verify$(EXEEXT)'; \
	b='test-verify'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-verify.sh.log: test-verify.sh
	@p='test-verify.sh'; \
	b='test-verify.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-wchar.log: test-wchar$(EXEEXT)
	@p='test-wchar$(EXEEXT)'; \
	b='test-wchar'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-wcrtomb.sh.log: test-wcrtomb.sh
	@p='test-wcrtomb.sh'; \
	b='test-wcrtomb.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-wcrtomb-w32-1.sh.log: test-wcrtomb-w32-1.sh
	@p='test-wcrtomb-w32-1.sh'; \
	b='test-wcrtomb-w32-1.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-wcrtomb-w32-2.sh.log: test-wcrtomb-w32-2.sh
	@p='test-wcrtomb-w32-2.sh'; \
	b='test-wcrtomb-w32-2.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-wcrtomb-w32-3.sh.log: test-wcrtomb-w32-3.sh
	@p='test-wcrtomb-w32-3.sh'; \
	b='test-wcrtomb-w32-3.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-wcrtomb-w32-4.sh.log: test-wcrtomb-w32-4.sh
	@p='test-wcrtomb-w32-4.sh'; \
	b='test-wcrtomb-w32-4.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-wcrtomb-w32-5.sh.log: test-wcrtomb-w32-5.sh
	@p='test-wcrtomb-w32-5.sh'; \
	b='test-wcrtomb-w32-5.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-wctype-h.log: test-wctype-h$(EXEEXT)
	@p='test-wctype-h$(EXEEXT)'; \
	b='test-wctype-h'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-wcwidth.log: test-wcwidth$(EXEEXT)
	@p='test-wcwidth$(EXEEXT)'; \
	b='test-wcwidth'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-xalloc-die.sh.log: test-xalloc-die.sh
	@p='test-xalloc-die.sh'; \
	b='test-xalloc-die.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
.test.log:
	@p='$<'; \
	$(am__set_b); \
	$(am__check_pre) $(TEST_LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_TEST_LOG_DRIVER_FLAGS) $(TEST_LOG_DRIVER_FLAGS) -- $(TEST_LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)

