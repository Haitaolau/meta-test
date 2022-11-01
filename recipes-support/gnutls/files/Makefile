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
fi;
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
PACKAGE_STRING = PCRE 8.36
SHELL = /bin/sh
srcdir = .
top_srcdir = .
check_PROGRAMS = Test_parser$(EXEEXT) Test_tree$(EXEEXT) \
	Test_encoding$(EXEEXT) Test_indefinite$(EXEEXT) \
	Test_errors$(EXEEXT) Test_simple$(EXEEXT) \
	Test_overflow$(EXEEXT) Test_strings$(EXEEXT) \
	Test_choice$(EXEEXT) Test_encdec$(EXEEXT) copynode$(EXEEXT) \
	coding-decoding2$(EXEEXT) strict-der$(EXEEXT) \
	Test_choice_ocsp$(EXEEXT) ocsp-basic-response$(EXEEXT) \
	octet-string$(EXEEXT) coding-long-oid$(EXEEXT) \
	object-id-decoding$(EXEEXT) spc_pe_image_data$(EXEEXT) \
	setof$(EXEEXT) CVE-2018-1000654$(EXEEXT) reproducers$(EXEEXT) \
	object-id-encoding$(EXEEXT)
TESTS = Test_parser$(EXEEXT) Test_tree$(EXEEXT) Test_encoding$(EXEEXT) \
	Test_indefinite$(EXEEXT) Test_errors$(EXEEXT) \
	Test_simple$(EXEEXT) Test_overflow$(EXEEXT) crlf threadsafety \
	Test_strings$(EXEEXT) Test_choice$(EXEEXT) \
	Test_encdec$(EXEEXT) copynode$(EXEEXT) \
	coding-decoding2$(EXEEXT) strict-der$(EXEEXT) \
	Test_choice_ocsp$(EXEEXT) decoding decoding-invalid-x509 \
	ocsp-basic-response$(EXEEXT) octet-string$(EXEEXT) \
	coding-long-oid$(EXEEXT) object-id-decoding$(EXEEXT) \
	spc_pe_image_data$(EXEEXT) decoding-invalid-pkcs7 coding \
	setof$(EXEEXT) CVE-2018-1000654$(EXEEXT) parser.sh \
	reproducers$(EXEEXT) object-id-encoding$(EXEEXT)



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

Test_parser.log: Test_parser$(EXEEXT)
	@p='Test_parser$(EXEEXT)'; \
	b='Test_parser'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
Test_tree.log: Test_tree$(EXEEXT)
	@p='Test_tree$(EXEEXT)'; \
	b='Test_tree'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
Test_encoding.log: Test_encoding$(EXEEXT)
	@p='Test_encoding$(EXEEXT)'; \
	b='Test_encoding'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
Test_indefinite.log: Test_indefinite$(EXEEXT)
	@p='Test_indefinite$(EXEEXT)'; \
	b='Test_indefinite'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
Test_errors.log: Test_errors$(EXEEXT)
	@p='Test_errors$(EXEEXT)'; \
	b='Test_errors'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
Test_simple.log: Test_simple$(EXEEXT)
	@p='Test_simple$(EXEEXT)'; \
	b='Test_simple'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
Test_overflow.log: Test_overflow$(EXEEXT)
	@p='Test_overflow$(EXEEXT)'; \
	b='Test_overflow'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
crlf.log: crlf
	@p='crlf'; \
	b='crlf'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
threadsafety.log: threadsafety
	@p='threadsafety'; \
	b='threadsafety'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
Test_strings.log: Test_strings$(EXEEXT)
	@p='Test_strings$(EXEEXT)'; \
	b='Test_strings'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
Test_choice.log: Test_choice$(EXEEXT)
	@p='Test_choice$(EXEEXT)'; \
	b='Test_choice'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
Test_encdec.log: Test_encdec$(EXEEXT)
	@p='Test_encdec$(EXEEXT)'; \
	b='Test_encdec'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
copynode.log: copynode$(EXEEXT)
	@p='copynode$(EXEEXT)'; \
	b='copynode'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
coding-decoding2.log: coding-decoding2$(EXEEXT)
	@p='coding-decoding2$(EXEEXT)'; \
	b='coding-decoding2'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
strict-der.log: strict-der$(EXEEXT)
	@p='strict-der$(EXEEXT)'; \
	b='strict-der'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
Test_choice_ocsp.log: Test_choice_ocsp$(EXEEXT)
	@p='Test_choice_ocsp$(EXEEXT)'; \
	b='Test_choice_ocsp'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
decoding.log: decoding
	@p='decoding'; \
	b='decoding'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
decoding-invalid-x509.log: decoding-invalid-x509
	@p='decoding-invalid-x509'; \
	b='decoding-invalid-x509'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
ocsp-basic-response.log: ocsp-basic-response$(EXEEXT)
	@p='ocsp-basic-response$(EXEEXT)'; \
	b='ocsp-basic-response'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
octet-string.log: octet-string$(EXEEXT)
	@p='octet-string$(EXEEXT)'; \
	b='octet-string'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
coding-long-oid.log: coding-long-oid$(EXEEXT)
	@p='coding-long-oid$(EXEEXT)'; \
	b='coding-long-oid'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
object-id-decoding.log: object-id-decoding$(EXEEXT)
	@p='object-id-decoding$(EXEEXT)'; \
	b='object-id-decoding'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
spc_pe_image_data.log: spc_pe_image_data$(EXEEXT)
	@p='spc_pe_image_data$(EXEEXT)'; \
	b='spc_pe_image_data'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
decoding-invalid-pkcs7.log: decoding-invalid-pkcs7
	@p='decoding-invalid-pkcs7'; \
	b='decoding-invalid-pkcs7'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
coding.log: coding
	@p='coding'; \
	b='coding'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
setof.log: setof$(EXEEXT)
	@p='setof$(EXEEXT)'; \
	b='setof'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
CVE-2018-1000654.log: CVE-2018-1000654$(EXEEXT)
	@p='CVE-2018-1000654$(EXEEXT)'; \
	b='CVE-2018-1000654'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
parser.sh.log: parser.sh
	@p='parser.sh'; \
	b='parser.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
reproducers.log: reproducers$(EXEEXT)
	@p='reproducers$(EXEEXT)'; \
	b='reproducers'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
object-id-encoding.log: object-id-encoding$(EXEEXT)
	@p='object-id-encoding$(EXEEXT)'; \
	b='object-id-encoding'; \
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
mostlyclean-generic:
	-test -z "$(MOSTLYCLEANFILES)" || rm -f $(MOSTLYCLEANFILES)
	-test -z "$(TEST_LOGS)" || rm -f $(TEST_LOGS)
	-test -z "$(TEST_LOGS:.log=.trs)" || rm -f $(TEST_LOGS:.log=.trs)
	-test -z "$(TEST_SUITE_LOG)" || rm -f $(TEST_SUITE_LOG)

clean: mostlyclean-generic
