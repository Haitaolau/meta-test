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

PL_LOG_COMPILER = /usr/bin/perl
RECHECK_LOGS = $(TEST_LOGS)
TEST_SUITE_LOG = test-suite.log
TEST_EXTENSIONS =  .test
LOG_DRIVER = $(SHELL) $(top_srcdir)/test-driver
PL_LOG_DRIVER = $(SHELL) $(top_srcdir)/test-driver
PL_LOG_COMPILE = $(PL_LOG_COMPILER) $(AM_PL_LOG_FLAGS) $(PL_LOG_FLAGS)

am__test_logs1 = $(TESTS:=.log)
am__test_logs2 = $(am__test_logs1:.log=.log)
TEST_LOGS = $(am__test_logs2:.pl.log=.log)
MKDIR_P = /bin/mkdir -p
PACKAGE_STRING = xcrypt 4.4.18
SHELL = /bin/sh
srcdir = .
top_srcdir = .
am__set_b = \
  case '$@' in \
    */*) \
      case '$*' in \
        */*) b='$*';; \
          *) b=`echo '$@' | sed 's/\.log$$//'`; \
       esac;; \
    *) \
      b='$*';; \
  esac

TESTS = $(check_PROGRAMS)

check_PROGRAMS = test/ka-bcrypt$(EXEEXT) test/ka-bcrypt-a$(EXEEXT) \
	test/ka-bcrypt-x$(EXEEXT) test/ka-bcrypt-y$(EXEEXT) \
	test/ka-bigcrypt$(EXEEXT) test/ka-bsdicrypt$(EXEEXT) \
	test/ka-descrypt$(EXEEXT) test/ka-gost-yescrypt$(EXEEXT) \
	test/ka-md5crypt$(EXEEXT) test/ka-nt$(EXEEXT) \
	test/ka-scrypt$(EXEEXT) test/ka-sha1crypt$(EXEEXT) \
	test/ka-sha256crypt$(EXEEXT) test/ka-sha512crypt$(EXEEXT) \
	test/ka-sunmd5$(EXEEXT) test/ka-yescrypt$(EXEEXT) \
	test/alg-des$(EXEEXT) test/alg-gost3411-2012$(EXEEXT) \
	test/alg-gost3411-2012-hmac$(EXEEXT) \
	test/alg-hmac-sha1$(EXEEXT) test/alg-md4$(EXEEXT) \
	test/alg-md5$(EXEEXT) test/alg-pbkdf-hmac-sha256$(EXEEXT) \
	test/alg-sha1$(EXEEXT) test/alg-sha256$(EXEEXT) \
	test/alg-sha512$(EXEEXT) test/alg-yescrypt$(EXEEXT) \
	test/badsalt$(EXEEXT) test/badsetting$(EXEEXT) \
	test/byteorder$(EXEEXT) test/checksalt$(EXEEXT) \
	test/compile-strong-alias$(EXEEXT) test/crypt-badargs$(EXEEXT) \
	test/crypt-gost-yescrypt$(EXEEXT) test/gensalt$(EXEEXT) \
	test/gensalt-extradata$(EXEEXT) test/gensalt-nthash$(EXEEXT) \
	test/getrandom-fallbacks$(EXEEXT) \
	test/getrandom-interface$(EXEEXT) \
	test/preferred-method$(EXEEXT) test/short-outbuf$(EXEEXT) \
	test/special-char-salt$(EXEEXT) $(am__EXEEXT_1)

am__append_20 = test/symbols-static.pl test/symbols-renames.pl

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

test/ka-bcrypt.log: test/ka-bcrypt$(EXEEXT)
	@p='test/ka-bcrypt$(EXEEXT)'; \
	b='test/ka-bcrypt'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/ka-bcrypt-a.log: test/ka-bcrypt-a$(EXEEXT)
	@p='test/ka-bcrypt-a$(EXEEXT)'; \
	b='test/ka-bcrypt-a'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/ka-bcrypt-x.log: test/ka-bcrypt-x$(EXEEXT)
	@p='test/ka-bcrypt-x$(EXEEXT)'; \
	b='test/ka-bcrypt-x'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/ka-bcrypt-y.log: test/ka-bcrypt-y$(EXEEXT)
	@p='test/ka-bcrypt-y$(EXEEXT)'; \
	b='test/ka-bcrypt-y'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/ka-bigcrypt.log: test/ka-bigcrypt$(EXEEXT)
	@p='test/ka-bigcrypt$(EXEEXT)'; \
	b='test/ka-bigcrypt'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/ka-bsdicrypt.log: test/ka-bsdicrypt$(EXEEXT)
	@p='test/ka-bsdicrypt$(EXEEXT)'; \
	b='test/ka-bsdicrypt'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/ka-descrypt.log: test/ka-descrypt$(EXEEXT)
	@p='test/ka-descrypt$(EXEEXT)'; \
	b='test/ka-descrypt'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/ka-gost-yescrypt.log: test/ka-gost-yescrypt$(EXEEXT)
	@p='test/ka-gost-yescrypt$(EXEEXT)'; \
	b='test/ka-gost-yescrypt'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/ka-md5crypt.log: test/ka-md5crypt$(EXEEXT)
	@p='test/ka-md5crypt$(EXEEXT)'; \
	b='test/ka-md5crypt'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/ka-nt.log: test/ka-nt$(EXEEXT)
	@p='test/ka-nt$(EXEEXT)'; \
	b='test/ka-nt'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/ka-scrypt.log: test/ka-scrypt$(EXEEXT)
	@p='test/ka-scrypt$(EXEEXT)'; \
	b='test/ka-scrypt'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/ka-sha1crypt.log: test/ka-sha1crypt$(EXEEXT)
	@p='test/ka-sha1crypt$(EXEEXT)'; \
	b='test/ka-sha1crypt'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/ka-sha256crypt.log: test/ka-sha256crypt$(EXEEXT)
	@p='test/ka-sha256crypt$(EXEEXT)'; \
	b='test/ka-sha256crypt'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/ka-sha512crypt.log: test/ka-sha512crypt$(EXEEXT)
	@p='test/ka-sha512crypt$(EXEEXT)'; \
	b='test/ka-sha512crypt'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/ka-sunmd5.log: test/ka-sunmd5$(EXEEXT)
	@p='test/ka-sunmd5$(EXEEXT)'; \
	b='test/ka-sunmd5'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/ka-yescrypt.log: test/ka-yescrypt$(EXEEXT)
	@p='test/ka-yescrypt$(EXEEXT)'; \
	b='test/ka-yescrypt'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/alg-des.log: test/alg-des$(EXEEXT)
	@p='test/alg-des$(EXEEXT)'; \
	b='test/alg-des'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/alg-gost3411-2012.log: test/alg-gost3411-2012$(EXEEXT)
	@p='test/alg-gost3411-2012$(EXEEXT)'; \
	b='test/alg-gost3411-2012'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/alg-gost3411-2012-hmac.log: test/alg-gost3411-2012-hmac$(EXEEXT)
	@p='test/alg-gost3411-2012-hmac$(EXEEXT)'; \
	b='test/alg-gost3411-2012-hmac'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/alg-hmac-sha1.log: test/alg-hmac-sha1$(EXEEXT)
	@p='test/alg-hmac-sha1$(EXEEXT)'; \
	b='test/alg-hmac-sha1'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/alg-md4.log: test/alg-md4$(EXEEXT)
	@p='test/alg-md4$(EXEEXT)'; \
	b='test/alg-md4'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/alg-md5.log: test/alg-md5$(EXEEXT)
	@p='test/alg-md5$(EXEEXT)'; \
	b='test/alg-md5'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/alg-pbkdf-hmac-sha256.log: test/alg-pbkdf-hmac-sha256$(EXEEXT)
	@p='test/alg-pbkdf-hmac-sha256$(EXEEXT)'; \
	b='test/alg-pbkdf-hmac-sha256'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/alg-sha1.log: test/alg-sha1$(EXEEXT)
	@p='test/alg-sha1$(EXEEXT)'; \
	b='test/alg-sha1'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/alg-sha256.log: test/alg-sha256$(EXEEXT)
	@p='test/alg-sha256$(EXEEXT)'; \
	b='test/alg-sha256'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/alg-sha512.log: test/alg-sha512$(EXEEXT)
	@p='test/alg-sha512$(EXEEXT)'; \
	b='test/alg-sha512'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/alg-yescrypt.log: test/alg-yescrypt$(EXEEXT)
	@p='test/alg-yescrypt$(EXEEXT)'; \
	b='test/alg-yescrypt'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/badsalt.log: test/badsalt$(EXEEXT)
	@p='test/badsalt$(EXEEXT)'; \
	b='test/badsalt'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/badsetting.log: test/badsetting$(EXEEXT)
	@p='test/badsetting$(EXEEXT)'; \
	b='test/badsetting'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/byteorder.log: test/byteorder$(EXEEXT)
	@p='test/byteorder$(EXEEXT)'; \
	b='test/byteorder'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/checksalt.log: test/checksalt$(EXEEXT)
	@p='test/checksalt$(EXEEXT)'; \
	b='test/checksalt'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/compile-strong-alias.log: test/compile-strong-alias$(EXEEXT)
	@p='test/compile-strong-alias$(EXEEXT)'; \
	b='test/compile-strong-alias'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/crypt-badargs.log: test/crypt-badargs$(EXEEXT)
	@p='test/crypt-badargs$(EXEEXT)'; \
	b='test/crypt-badargs'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/crypt-gost-yescrypt.log: test/crypt-gost-yescrypt$(EXEEXT)
	@p='test/crypt-gost-yescrypt$(EXEEXT)'; \
	b='test/crypt-gost-yescrypt'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/gensalt.log: test/gensalt$(EXEEXT)
	@p='test/gensalt$(EXEEXT)'; \
	b='test/gensalt'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/gensalt-extradata.log: test/gensalt-extradata$(EXEEXT)
	@p='test/gensalt-extradata$(EXEEXT)'; \
	b='test/gensalt-extradata'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/gensalt-nthash.log: test/gensalt-nthash$(EXEEXT)
	@p='test/gensalt-nthash$(EXEEXT)'; \
	b='test/gensalt-nthash'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/getrandom-fallbacks.log: test/getrandom-fallbacks$(EXEEXT)
	@p='test/getrandom-fallbacks$(EXEEXT)'; \
	b='test/getrandom-fallbacks'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/getrandom-interface.log: test/getrandom-interface$(EXEEXT)
	@p='test/getrandom-interface$(EXEEXT)'; \
	b='test/getrandom-interface'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/preferred-method.log: test/preferred-method$(EXEEXT)
	@p='test/preferred-method$(EXEEXT)'; \
	b='test/preferred-method'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/short-outbuf.log: test/short-outbuf$(EXEEXT)
	@p='test/short-outbuf$(EXEEXT)'; \
	b='test/short-outbuf'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/special-char-salt.log: test/special-char-salt$(EXEEXT)
	@p='test/special-char-salt$(EXEEXT)'; \
	b='test/special-char-salt'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/des-obsolete.log: test/des-obsolete$(EXEEXT)
	@p='test/des-obsolete$(EXEEXT)'; \
	b='test/des-obsolete'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/des-obsolete_r.log: test/des-obsolete_r$(EXEEXT)
	@p='test/des-obsolete_r$(EXEEXT)'; \
	b='test/des-obsolete_r'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test/fcrypt-enosys.log: test/fcrypt-enosys$(EXEEXT)
	@p='test/fcrypt-enosys$(EXEEXT)'; \
	b='test/fcrypt-enosys'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)

test/symbols-compat.log test/symbols-compat.trs: test/TestCommon.pm
test/symbols-renames.log test/symbols-renames.trs: test/TestCommon.pm
test/symbols-static.log test/symbols-static.trs: test/TestCommon.pm

.pl.log:
	@p='$<'; \
	$(am__set_b); \
	$(am__check_pre) $(PL_LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_PL_LOG_DRIVER_FLAGS) $(PL_LOG_DRIVER_FLAGS) -- $(PL_LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)

