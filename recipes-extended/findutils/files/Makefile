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
MKDIR_P = /bin/mkdir -p
PACKAGE_STRING = GNU findutils 4.8.0
SHELL = /bin/sh
srcdir = .
top_srcdir = .
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
	@list='$(RECHECK_LOGS:.log=.trs)'; test -z "$$list" || rm -f $$list
	@test -z "$(TEST_SUITE_LOG)" || rm -f $(TEST_SUITE_LOG)
	@set +e; $(am__set_TESTS_bases); \
	log_list=`for i in $$bases; do echo $$i.log; done`; \
	trs_list=`for i in $$bases; do echo $$i.trs; done`; \
	log_list=`echo $$log_list`; trs_list=`echo $$trs_list`; \
	$(MAKE) $(AM_MAKEFLAGS) $(TEST_SUITE_LOG) TEST_LOGS="$$log_list"; \
	exit $$?;

.sh.log:
	@p='$<'; \
	$(am__set_b); \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(SH_LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)


misc/help-version.sh.log: misc/help-version.sh
	@p='help-version.sh'; \
	 b='misc/help-version.sh' ; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(SH_LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)

find/name-lbracket-literal.sh.log : find/name-lbracket-literal.sh
	@p='find/name-lbracket-literal.sh';\
        b='find/name-lbracket-literal.sh';\
        $(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
        $(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(SH_LOG_COMPILE) \
        "$$tst" $(AM_TESTS_FD_REDIRECT)
find/printf_escapechars.sh.log : find/printf_escapechars.sh
	@p='find/printf_escapechars.sh';\
        b='find/printf_escapechars.sh';\
        $(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
        $(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(SH_LOG_COMPILE) \
        "$$tst" $(AM_TESTS_FD_REDIRECT)
find/printf_escape_c.sh.log : find/printf_escape_c.sh
	@p='find/printf_escape_c.sh';\
        b='find/printf_escape_c.sh';\
        $(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
        $(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(SH_LOG_COMPILE) \
        "$$tst" $(AM_TESTS_FD_REDIRECT)
find/printf_inode.sh.log : find/printf_inode.sh
	@p='find/printf_inode.sh';\
        b='find/printf_inode.sh';\
        $(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
        $(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(SH_LOG_COMPILE) \
        "$$tst" $(AM_TESTS_FD_REDIRECT)
find/execdir-fd-leak.sh.log : find/execdir-fd-leak.sh
	@p='find/execdir-fd-leak.sh';\
        b='find/execdir-fd-leak.sh';\
        $(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
        $(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(SH_LOG_COMPILE) \
        "$$tst" $(AM_TESTS_FD_REDIRECT)
find/exec-plus-last-file.sh.log : find/exec-plus-last-file.sh
	@p='find/exec-plus-last-file.sh';\
        b='find/exec-plus-last-file.sh';\
        $(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
        $(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(SH_LOG_COMPILE) \
        "$$tst" $(AM_TESTS_FD_REDIRECT)
find/refuse-noop.sh.log : find/refuse-noop.sh
	@p='find/refuse-noop.sh';\
        b='find/refuse-noop.sh';\
        $(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
        $(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(SH_LOG_COMPILE) \
        "$$tst" $(AM_TESTS_FD_REDIRECT)
find/debug-missing-arg.sh.log : find/debug-missing-arg.sh
	@p='find/debug-missing-arg.sh';\
        b='find/debug-missing-arg.sh';\
        $(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
        $(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(SH_LOG_COMPILE) \
        "$$tst" $(AM_TESTS_FD_REDIRECT)
find/used.sh.log : find/used.sh
	@p='find/used.sh';\
        b='find/used.sh';\
        $(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
        $(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(SH_LOG_COMPILE) \
        "$$tst" $(AM_TESTS_FD_REDIRECT)
xargs/conflicting_opts.sh.log : xargs/conflicting_opts.sh
	@p='xargs/conflicting_opts.sh';\
        b='xargs/conflicting_opts.sh';\
        $(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
        $(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(SH_LOG_COMPILE) \
        "$$tst" $(AM_TESTS_FD_REDIRECT)
xargs/verbose-quote.sh.log : xargs/verbose-quote.sh
	@p='xargs/verbose-quote.sh';\
        b='xargs/verbose-quote.sh';\
        $(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
        $(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(SH_LOG_COMPILE) \
        "$$tst" $(AM_TESTS_FD_REDIRECT)

find/many-dir-entries-vs-OOM.sh.log: find/many-dir-entries-vs-OOM.sh
	@p='find/many-dir-entries-vs-OOM.sh';\
        b='find/many-dir-entries-vs-OOM.sh';\
        $(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
        $(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(SH_LOG_COMPILE) \
        "$$tst" $(AM_TESTS_FD_REDIRECT)

find/depth-unreadable-dir.sh.log: find/depth-unreadable-dir.sh
	@p='find/depth-unreadable-dir.sh';\
        b='find/depth-unreadable-dir.sh';\
        $(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
        $(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(SH_LOG_COMPILE) \
        "$$tst" $(AM_TESTS_FD_REDIRECT)
find/type_list.sh.log: find/type_list.sh
	@p='find/type_list.sh';\
        b='find/type_list.sh';\
        $(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
        $(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(SH_LOG_COMPILE) \
        "$$tst" $(AM_TESTS_FD_REDIRECT)


all_root_tests = \
  find/type_list.sh


TESTS = \
  misc/help-version.sh \
  find/depth-unreadable-dir.sh \
  find/many-dir-entries-vs-OOM.sh \
  find/name-lbracket-literal.sh \
  find/printf_escapechars.sh \
  find/printf_escape_c.sh \
  find/printf_inode.sh \
  find/execdir-fd-leak.sh \
  find/exec-plus-last-file.sh \
  find/refuse-noop.sh \
  find/debug-missing-arg.sh \
  find/used.sh \
  xargs/conflicting_opts.sh \
  xargs/verbose-quote.sh \
  $(all_root_tests)


root_tests = $(all_root_tests)
TEST_EXTENSIONS = .sh
SH_LOG_COMPILER = $(SHELL)

SH_LOG_COMPILE = $(SH_LOG_COMPILER) $(AM_SH_LOG_FLAGS) $(SH_LOG_FLAGS)
am__test_logs1 = $(TESTS:=.log)
am__test_logs2 = $(am__test_logs1:.log=.log)
TEST_LOGS = $(am__test_logs2:.test.log=.log)


