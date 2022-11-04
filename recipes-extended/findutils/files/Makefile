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
	@test -z "$(TEST_SUITE_LOG)" || rm -f $(TEST_SUITE_LOG)
	@set +e; $(am__set_TESTS_bases); \
	log_list=`for i in $$bases; do echo $$i.log; done`; \
	log_list=`echo $$log_list`; \
	$(MAKE) $(AM_MAKEFLAGS) $(TEST_SUITE_LOG) TEST_LOGS="$$log_list"; \
	exit $$?;

TESTS = test-accept$(EXEEXT) test-alloca-opt$(EXEEXT) \
	test-areadlink$(EXEEXT) test-areadlinkat$(EXEEXT) \
	test-argmatch$(EXEEXT) test-arpa_inet$(EXEEXT) \
	test-binary-io.sh test-bind$(EXEEXT) test-bitrotate$(EXEEXT) \
	test-btowc1.sh test-btowc2.sh test-byteswap$(EXEEXT) \
	test-c-ctype$(EXEEXT) test-c-strcase.sh \
	test-c-strcasestr$(EXEEXT) test-c-strstr$(EXEEXT) \
	test-canonicalize$(EXEEXT) test-chdir$(EXEEXT) \
	test-cloexec$(EXEEXT) test-close$(EXEEXT) test-closein.sh \
	test-connect$(EXEEXT) test-ctype$(EXEEXT) \
	test-dirent-safer$(EXEEXT) test-dirent$(EXEEXT) \
	test-dirname$(EXEEXT) test-dup$(EXEEXT) test-dup2$(EXEEXT) \
	test-environ$(EXEEXT) test-errno$(EXEEXT) \
	test-faccessat$(EXEEXT) test-fchdir$(EXEEXT) \
	test-fcntl-h$(EXEEXT) test-fcntl-safer$(EXEEXT) \
	test-fcntl$(EXEEXT) test-fdopen$(EXEEXT) \
	test-fdopendir$(EXEEXT) test-fflush$(EXEEXT) test-fflush2.sh \
	test-fgetc$(EXEEXT) test-float$(EXEEXT) \
	test-fnmatch-h$(EXEEXT) test-fnmatch$(EXEEXT) \
	test-fopen-gnu$(EXEEXT) test-fopen-safer$(EXEEXT) \
	test-fopen$(EXEEXT) test-fpending.sh test-fpurge$(EXEEXT) \
	test-fputc$(EXEEXT) test-fread$(EXEEXT) test-freadahead.sh \
	test-freading$(EXEEXT) test-free$(EXEEXT) test-fseek.sh \
	test-fseek2.sh test-fseeko.sh test-fseeko2.sh test-fseeko3.sh \
	test-fseeko4.sh test-fstat$(EXEEXT) test-fstatat$(EXEEXT) \
	test-ftell.sh test-ftell2.sh test-ftell3$(EXEEXT) \
	test-ftello.sh test-ftello2.sh test-ftello3$(EXEEXT) \
	test-ftello4.sh test-ftruncate.sh test-fwrite$(EXEEXT) \
	test-getcwd-lgpl$(EXEEXT) test-getcwd.sh \
	test-getdelim$(EXEEXT) test-getdtablesize$(EXEEXT) \
	test-getgroups$(EXEEXT) test-gethostname$(EXEEXT) \
	test-getline$(EXEEXT) test-getopt-gnu$(EXEEXT) \
	test-getopt-posix$(EXEEXT) test-getprogname$(EXEEXT) \
	test-gettimeofday$(EXEEXT) test-hard-locale$(EXEEXT) \
	test-hash$(EXEEXT) test-i-ring$(EXEEXT) \
	test-ignore-value$(EXEEXT) test-inet_pton$(EXEEXT) \
	test-intprops$(EXEEXT) test-inttostr$(EXEEXT) \
	test-inttypes$(EXEEXT) test-ioctl$(EXEEXT) \
	test-isblank$(EXEEXT) test-isfinite$(EXEEXT) \
	test-isinf$(EXEEXT) test-isnand-nolibm$(EXEEXT) \
	test-isnanf-nolibm$(EXEEXT) test-isnanl-nolibm$(EXEEXT) \
	test-iswblank$(EXEEXT) test-iswdigit.sh test-iswxdigit.sh \
	test-langinfo$(EXEEXT) test-limits-h$(EXEEXT) \
	test-listen$(EXEEXT) test-locale$(EXEEXT) \
	test-localeconv$(EXEEXT) test-localename$(EXEEXT) \
	test-rwlock1$(EXEEXT) test-lock$(EXEEXT) test-once1$(EXEEXT) \
	test-once2$(EXEEXT) test-lseek.sh test-lstat$(EXEEXT) \
	test-malloc-gnu$(EXEEXT) test-malloca$(EXEEXT) \
	test-math$(EXEEXT) test-mbrtowc1.sh test-mbrtowc2.sh \
	test-mbrtowc3.sh test-mbrtowc4.sh test-mbrtowc5.sh \
	test-mbrtowc-w32-1.sh test-mbrtowc-w32-2.sh \
	test-mbrtowc-w32-3.sh test-mbrtowc-w32-4.sh \
	test-mbrtowc-w32-5.sh test-mbrtowc-w32-6.sh \
	test-mbrtowc-w32-7.sh test-mbscasestr1$(EXEEXT) \
	test-mbscasestr2.sh test-mbscasestr3.sh test-mbscasestr4.sh \
	test-mbsinit.sh test-mbsrtowcs1.sh test-mbsrtowcs2.sh \
	test-mbsrtowcs3.sh test-mbsrtowcs4.sh test-mbsstr1$(EXEEXT) \
	test-mbsstr2.sh test-mbsstr3.sh test-memchr$(EXEEXT) \
	test-memrchr$(EXEEXT) test-modf$(EXEEXT) \
	test-nanosleep$(EXEEXT) test-netinet_in$(EXEEXT) \
	test-nl_langinfo.sh test-nl_langinfo-mt$(EXEEXT) \
	test-nstrftime$(EXEEXT) test-open$(EXEEXT) \
	test-openat-safer$(EXEEXT) test-openat$(EXEEXT) \
	test-parse-datetime$(EXEEXT) test-pathmax$(EXEEXT) \
	test-perror.sh test-perror2$(EXEEXT) test-pipe$(EXEEXT) \
	test-priv-set$(EXEEXT) test-pthread$(EXEEXT) \
	test-pthread-thread$(EXEEXT) test-pthread_sigmask1$(EXEEXT) \
	test-pthread_sigmask2$(EXEEXT) test-quotearg-simple$(EXEEXT) \
	test-raise$(EXEEXT) test-rawmemchr$(EXEEXT) test-read$(EXEEXT) \
	test-readlink$(EXEEXT) test-readlinkat$(EXEEXT) \
	test-realloc-gnu$(EXEEXT) test-regex$(EXEEXT) \
	test-rmdir$(EXEEXT) test-sched$(EXEEXT) \
	test-scratch-buffer$(EXEEXT) test-select$(EXEEXT) \
	test-select-in.sh test-select-out.sh test-setenv$(EXEEXT) \
	test-setlocale_null$(EXEEXT) \
	test-setlocale_null-mt-one$(EXEEXT) \
	test-setlocale_null-mt-all$(EXEEXT) test-setlocale1.sh \
	test-setlocale2.sh test-setsockopt$(EXEEXT) \
	test-sigaction$(EXEEXT) test-signal-h$(EXEEXT) \
	test-sigprocmask$(EXEEXT) test-sleep$(EXEEXT) \
	test-snprintf$(EXEEXT) test-sockets$(EXEEXT) \
	test-stat$(EXEEXT) test-stat-time$(EXEEXT) \
	test-statat$(EXEEXT) test-stdalign$(EXEEXT) \
	test-stdbool$(EXEEXT) test-stddef$(EXEEXT) \
	test-stdint$(EXEEXT) test-stdio$(EXEEXT) test-stdlib$(EXEEXT) \
	test-strcasestr$(EXEEXT) test-strerror$(EXEEXT) \
	test-strerror_r$(EXEEXT) test-string$(EXEEXT) \
	test-strings$(EXEEXT) test-strnlen$(EXEEXT) \
	test-strstr$(EXEEXT) test-strtoll$(EXEEXT) \
	test-strtoull$(EXEEXT) test-strtoumax$(EXEEXT) \
	test-symlink$(EXEEXT) test-symlinkat$(EXEEXT) \
	test-sys_ioctl$(EXEEXT) test-sys_select$(EXEEXT) \
	test-sys_socket$(EXEEXT) test-sys_stat$(EXEEXT) \
	test-sys_time$(EXEEXT) test-sys_types$(EXEEXT) \
	test-sys_uio$(EXEEXT) test-sys_utsname$(EXEEXT) \
	test-sys_wait$(EXEEXT) test-init.sh test-thread_self$(EXEEXT) \
	test-thread_create$(EXEEXT) test-time$(EXEEXT) \
	test-timespec$(EXEEXT) test-trunc1$(EXEEXT) \
	test-trunc2$(EXEEXT) test-uname$(EXEEXT) \
	test-dup-safer$(EXEEXT) test-unistd$(EXEEXT) \
	test-uc_width$(EXEEXT) uniwidth/test-uc_width2.sh \
	test-unlink$(EXEEXT) test-unlinkat$(EXEEXT) \
	test-unsetenv$(EXEEXT) test-update-copyright.sh \
	test-usleep$(EXEEXT) test-vasnprintf$(EXEEXT) \
	test-vc-list-files-git.sh test-vc-list-files-cvs.sh \
	test-verify$(EXEEXT) test-verify.sh test-version-etc.sh \
	test-wchar$(EXEEXT) test-wcrtomb.sh test-wcrtomb-w32-1.sh \
	test-wcrtomb-w32-2.sh test-wcrtomb-w32-3.sh \
	test-wcrtomb-w32-4.sh test-wcrtomb-w32-5.sh \
	test-wcrtomb-w32-6.sh test-wcrtomb-w32-7.sh \
	test-wctype-h$(EXEEXT) test-wcwidth$(EXEEXT) \
	test-xalloc-die.sh test-xstrtol.sh test-xstrtoumax.sh \
	test-yesno.sh
XFAIL_TESTS =
noinst_PROGRAMS = current-locale$(EXEEXT) test-localcharset$(EXEEXT)
check_PROGRAMS = test-accept$(EXEEXT) test-alloca-opt$(EXEEXT) \
	test-areadlink$(EXEEXT) test-areadlinkat$(EXEEXT) \
	test-argmatch$(EXEEXT) test-arpa_inet$(EXEEXT) \
	test-binary-io$(EXEEXT) test-bind$(EXEEXT) \
	test-bitrotate$(EXEEXT) test-btowc$(EXEEXT) \
	test-byteswap$(EXEEXT) test-c-ctype$(EXEEXT) \
	test-c-strcasecmp$(EXEEXT) test-c-strncasecmp$(EXEEXT) \
	test-c-strcasestr$(EXEEXT) test-c-strstr$(EXEEXT) \
	test-canonicalize$(EXEEXT) test-chdir$(EXEEXT) \
	test-cloexec$(EXEEXT) test-close$(EXEEXT) \
	test-closein$(EXEEXT) test-connect$(EXEEXT) \
	test-ctype$(EXEEXT) test-dirent-safer$(EXEEXT) \
	test-dirent$(EXEEXT) test-dirname$(EXEEXT) test-dup$(EXEEXT) \
	test-dup2$(EXEEXT) test-environ$(EXEEXT) test-errno$(EXEEXT) \
	test-faccessat$(EXEEXT) test-fchdir$(EXEEXT) \
	test-fcntl-h$(EXEEXT) test-fcntl-safer$(EXEEXT) \
	test-fcntl$(EXEEXT) test-fdopen$(EXEEXT) \
	test-fdopendir$(EXEEXT) test-fflush$(EXEEXT) \
	test-fflush2$(EXEEXT) test-fgetc$(EXEEXT) test-float$(EXEEXT) \
	test-fnmatch-h$(EXEEXT) test-fnmatch$(EXEEXT) \
	test-fopen-gnu$(EXEEXT) test-fopen-safer$(EXEEXT) \
	test-fopen$(EXEEXT) test-fpending$(EXEEXT) \
	test-fpurge$(EXEEXT) test-fputc$(EXEEXT) test-fread$(EXEEXT) \
	test-freadahead$(EXEEXT) test-freading$(EXEEXT) \
	test-free$(EXEEXT) test-fseek$(EXEEXT) test-fseeko$(EXEEXT) \
	test-fseeko3$(EXEEXT) test-fseeko4$(EXEEXT) \
	test-fstat$(EXEEXT) test-fstatat$(EXEEXT) test-ftell$(EXEEXT) \
	test-ftell3$(EXEEXT) test-ftello$(EXEEXT) \
	test-ftello3$(EXEEXT) test-ftello4$(EXEEXT) \
	test-ftruncate$(EXEEXT) test-fwrite$(EXEEXT) \
	test-getcwd-lgpl$(EXEEXT) test-getcwd$(EXEEXT) \
	test-getdelim$(EXEEXT) test-getdtablesize$(EXEEXT) \
	test-getgroups$(EXEEXT) test-gethostname$(EXEEXT) \
	test-getline$(EXEEXT) test-getopt-gnu$(EXEEXT) \
	test-getopt-posix$(EXEEXT) test-getprogname$(EXEEXT) \
	test-gettimeofday$(EXEEXT) test-hard-locale$(EXEEXT) \
	test-hash$(EXEEXT) test-i-ring$(EXEEXT) \
	test-ignore-value$(EXEEXT) test-inet_pton$(EXEEXT) \
	test-intprops$(EXEEXT) test-inttostr$(EXEEXT) \
	test-inttypes$(EXEEXT) test-ioctl$(EXEEXT) \
	test-isblank$(EXEEXT) test-isfinite$(EXEEXT) \
	test-isinf$(EXEEXT) test-isnand-nolibm$(EXEEXT) \
	test-isnanf-nolibm$(EXEEXT) test-isnanl-nolibm$(EXEEXT) \
	test-iswblank$(EXEEXT) test-iswdigit$(EXEEXT) \
	test-iswxdigit$(EXEEXT) test-langinfo$(EXEEXT) \
	test-limits-h$(EXEEXT) test-listen$(EXEEXT) \
	test-locale$(EXEEXT) test-localeconv$(EXEEXT) \
	test-localename$(EXEEXT) test-rwlock1$(EXEEXT) \
	test-lock$(EXEEXT) test-once1$(EXEEXT) test-once2$(EXEEXT) \
	test-lseek$(EXEEXT) test-lstat$(EXEEXT) \
	test-malloc-gnu$(EXEEXT) test-malloca$(EXEEXT) \
	test-math$(EXEEXT) test-mbrtowc$(EXEEXT) \
	test-mbrtowc-w32$(EXEEXT) test-mbscasestr1$(EXEEXT) \
	test-mbscasestr2$(EXEEXT) test-mbscasestr3$(EXEEXT) \
	test-mbscasestr4$(EXEEXT) test-mbsinit$(EXEEXT) \
	test-mbsrtowcs$(EXEEXT) test-mbsstr1$(EXEEXT) \
	test-mbsstr2$(EXEEXT) test-mbsstr3$(EXEEXT) \
	test-memchr$(EXEEXT) test-memrchr$(EXEEXT) test-modf$(EXEEXT) \
	test-nanosleep$(EXEEXT) test-netinet_in$(EXEEXT) \
	test-nl_langinfo$(EXEEXT) test-nl_langinfo-mt$(EXEEXT) \
	test-nstrftime$(EXEEXT) test-open$(EXEEXT) \
	test-openat-safer$(EXEEXT) test-openat$(EXEEXT) \
	test-parse-datetime$(EXEEXT) test-pathmax$(EXEEXT) \
	test-perror$(EXEEXT) test-perror2$(EXEEXT) test-pipe$(EXEEXT) \
	test-priv-set$(EXEEXT) test-pthread$(EXEEXT) \
	test-pthread-thread$(EXEEXT) test-pthread_sigmask1$(EXEEXT) \
	test-pthread_sigmask2$(EXEEXT) test-quotearg-simple$(EXEEXT) \
	test-raise$(EXEEXT) test-rawmemchr$(EXEEXT) test-read$(EXEEXT) \
	test-readlink$(EXEEXT) test-readlinkat$(EXEEXT) \
	test-realloc-gnu$(EXEEXT) test-regex$(EXEEXT) \
	test-rmdir$(EXEEXT) test-sched$(EXEEXT) \
	test-scratch-buffer$(EXEEXT) test-select$(EXEEXT) \
	test-select-fd$(EXEEXT) test-select-stdin$(EXEEXT) \
	test-setenv$(EXEEXT) test-setlocale_null$(EXEEXT) \
	test-setlocale_null-mt-one$(EXEEXT) \
	test-setlocale_null-mt-all$(EXEEXT) test-setlocale1$(EXEEXT) \
	test-setlocale2$(EXEEXT) test-setsockopt$(EXEEXT) \
	test-sigaction$(EXEEXT) test-signal-h$(EXEEXT) \
	test-sigprocmask$(EXEEXT) test-sleep$(EXEEXT) \
	test-snprintf$(EXEEXT) test-sockets$(EXEEXT) \
	test-stat$(EXEEXT) test-stat-time$(EXEEXT) \
	test-statat$(EXEEXT) test-stdalign$(EXEEXT) \
	test-stdbool$(EXEEXT) test-stddef$(EXEEXT) \
	test-stdint$(EXEEXT) test-stdio$(EXEEXT) test-stdlib$(EXEEXT) \
	test-strcasestr$(EXEEXT) test-strerror$(EXEEXT) \
	test-strerror_r$(EXEEXT) test-string$(EXEEXT) \
	test-strings$(EXEEXT) test-strnlen$(EXEEXT) \
	test-strstr$(EXEEXT) test-strtoll$(EXEEXT) \
	test-strtoull$(EXEEXT) test-strtoumax$(EXEEXT) \
	test-symlink$(EXEEXT) test-symlinkat$(EXEEXT) \
	test-sys_ioctl$(EXEEXT) test-sys_select$(EXEEXT) \
	test-sys_socket$(EXEEXT) test-sys_stat$(EXEEXT) \
	test-sys_time$(EXEEXT) test-sys_types$(EXEEXT) \
	test-sys_uio$(EXEEXT) test-sys_utsname$(EXEEXT) \
	test-sys_wait$(EXEEXT) test-thread_self$(EXEEXT) \
	test-thread_create$(EXEEXT) test-time$(EXEEXT) \
	test-timespec$(EXEEXT) test-trunc1$(EXEEXT) \
	test-trunc2$(EXEEXT) test-uname$(EXEEXT) \
	test-dup-safer$(EXEEXT) test-unistd$(EXEEXT) \
	test-uc_width$(EXEEXT) test-uc_width2$(EXEEXT) \
	test-unlink$(EXEEXT) test-unlinkat$(EXEEXT) \
	test-unsetenv$(EXEEXT) test-usleep$(EXEEXT) \
	test-vasnprintf$(EXEEXT) test-verify$(EXEEXT) \
	test-version-etc$(EXEEXT) test-wchar$(EXEEXT) \
	test-wcrtomb$(EXEEXT) test-wcrtomb-w32$(EXEEXT) \
	test-wctype-h$(EXEEXT) test-wcwidth$(EXEEXT) \
	test-xalloc-die$(EXEEXT) test-xstrtol$(EXEEXT) \
	test-xstrtoul$(EXEEXT) test-xstrtoumax$(EXEEXT) \
	test-yesno$(EXEEXT)
EXTRA_PROGRAMS = test-verify-try$(EXEEXT)


test-accept.log: test-accept$(EXEEXT)
	@p='test-accept$(EXEEXT)'; \
	b='test-accept'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-alloca-opt.log: test-alloca-opt$(EXEEXT)
	@p='test-alloca-opt$(EXEEXT)'; \
	b='test-alloca-opt'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-areadlink.log: test-areadlink$(EXEEXT)
	@p='test-areadlink$(EXEEXT)'; \
	b='test-areadlink'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-areadlinkat.log: test-areadlinkat$(EXEEXT)
	@p='test-areadlinkat$(EXEEXT)'; \
	b='test-areadlinkat'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-argmatch.log: test-argmatch$(EXEEXT)
	@p='test-argmatch$(EXEEXT)'; \
	b='test-argmatch'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-arpa_inet.log: test-arpa_inet$(EXEEXT)
	@p='test-arpa_inet$(EXEEXT)'; \
	b='test-arpa_inet'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-binary-io.sh.log: test-binary-io.sh
	@p='test-binary-io.sh'; \
	b='test-binary-io.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-bind.log: test-bind$(EXEEXT)
	@p='test-bind$(EXEEXT)'; \
	b='test-bind'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-bitrotate.log: test-bitrotate$(EXEEXT)
	@p='test-bitrotate$(EXEEXT)'; \
	b='test-bitrotate'; \
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
test-byteswap.log: test-byteswap$(EXEEXT)
	@p='test-byteswap$(EXEEXT)'; \
	b='test-byteswap'; \
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
test-c-strcasestr.log: test-c-strcasestr$(EXEEXT)
	@p='test-c-strcasestr$(EXEEXT)'; \
	b='test-c-strcasestr'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-c-strstr.log: test-c-strstr$(EXEEXT)
	@p='test-c-strstr$(EXEEXT)'; \
	b='test-c-strstr'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-canonicalize.log: test-canonicalize$(EXEEXT)
	@p='test-canonicalize$(EXEEXT)'; \
	b='test-canonicalize'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-chdir.log: test-chdir$(EXEEXT)
	@p='test-chdir$(EXEEXT)'; \
	b='test-chdir'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-cloexec.log: test-cloexec$(EXEEXT)
	@p='test-cloexec$(EXEEXT)'; \
	b='test-cloexec'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-close.log: test-close$(EXEEXT)
	@p='test-close$(EXEEXT)'; \
	b='test-close'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-closein.sh.log: test-closein.sh
	@p='test-closein.sh'; \
	b='test-closein.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-connect.log: test-connect$(EXEEXT)
	@p='test-connect$(EXEEXT)'; \
	b='test-connect'; \
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
test-dirent-safer.log: test-dirent-safer$(EXEEXT)
	@p='test-dirent-safer$(EXEEXT)'; \
	b='test-dirent-safer'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-dirent.log: test-dirent$(EXEEXT)
	@p='test-dirent$(EXEEXT)'; \
	b='test-dirent'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-dirname.log: test-dirname$(EXEEXT)
	@p='test-dirname$(EXEEXT)'; \
	b='test-dirname'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-dup.log: test-dup$(EXEEXT)
	@p='test-dup$(EXEEXT)'; \
	b='test-dup'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-dup2.log: test-dup2$(EXEEXT)
	@p='test-dup2$(EXEEXT)'; \
	b='test-dup2'; \
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
test-faccessat.log: test-faccessat$(EXEEXT)
	@p='test-faccessat$(EXEEXT)'; \
	b='test-faccessat'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-fchdir.log: test-fchdir$(EXEEXT)
	@p='test-fchdir$(EXEEXT)'; \
	b='test-fchdir'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-fcntl-h.log: test-fcntl-h$(EXEEXT)
	@p='test-fcntl-h$(EXEEXT)'; \
	b='test-fcntl-h'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-fcntl-safer.log: test-fcntl-safer$(EXEEXT)
	@p='test-fcntl-safer$(EXEEXT)'; \
	b='test-fcntl-safer'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-fcntl.log: test-fcntl$(EXEEXT)
	@p='test-fcntl$(EXEEXT)'; \
	b='test-fcntl'; \
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
test-fdopendir.log: test-fdopendir$(EXEEXT)
	@p='test-fdopendir$(EXEEXT)'; \
	b='test-fdopendir'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-fflush.log: test-fflush$(EXEEXT)
	@p='test-fflush$(EXEEXT)'; \
	b='test-fflush'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-fflush2.sh.log: test-fflush2.sh
	@p='test-fflush2.sh'; \
	b='test-fflush2.sh'; \
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
test-fnmatch-h.log: test-fnmatch-h$(EXEEXT)
	@p='test-fnmatch-h$(EXEEXT)'; \
	b='test-fnmatch-h'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-fnmatch.log: test-fnmatch$(EXEEXT)
	@p='test-fnmatch$(EXEEXT)'; \
	b='test-fnmatch'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-fopen-gnu.log: test-fopen-gnu$(EXEEXT)
	@p='test-fopen-gnu$(EXEEXT)'; \
	b='test-fopen-gnu'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-fopen-safer.log: test-fopen-safer$(EXEEXT)
	@p='test-fopen-safer$(EXEEXT)'; \
	b='test-fopen-safer'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-fopen.log: test-fopen$(EXEEXT)
	@p='test-fopen$(EXEEXT)'; \
	b='test-fopen'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-fpending.sh.log: test-fpending.sh
	@p='test-fpending.sh'; \
	b='test-fpending.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-fpurge.log: test-fpurge$(EXEEXT)
	@p='test-fpurge$(EXEEXT)'; \
	b='test-fpurge'; \
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
test-freadahead.sh.log: test-freadahead.sh
	@p='test-freadahead.sh'; \
	b='test-freadahead.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-freading.log: test-freading$(EXEEXT)
	@p='test-freading$(EXEEXT)'; \
	b='test-freading'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-free.log: test-free$(EXEEXT)
	@p='test-free$(EXEEXT)'; \
	b='test-free'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-fseek.sh.log: test-fseek.sh
	@p='test-fseek.sh'; \
	b='test-fseek.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-fseek2.sh.log: test-fseek2.sh
	@p='test-fseek2.sh'; \
	b='test-fseek2.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-fseeko.sh.log: test-fseeko.sh
	@p='test-fseeko.sh'; \
	b='test-fseeko.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-fseeko2.sh.log: test-fseeko2.sh
	@p='test-fseeko2.sh'; \
	b='test-fseeko2.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-fseeko3.sh.log: test-fseeko3.sh
	@p='test-fseeko3.sh'; \
	b='test-fseeko3.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-fseeko4.sh.log: test-fseeko4.sh
	@p='test-fseeko4.sh'; \
	b='test-fseeko4.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-fstat.log: test-fstat$(EXEEXT)
	@p='test-fstat$(EXEEXT)'; \
	b='test-fstat'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-fstatat.log: test-fstatat$(EXEEXT)
	@p='test-fstatat$(EXEEXT)'; \
	b='test-fstatat'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-ftell.sh.log: test-ftell.sh
	@p='test-ftell.sh'; \
	b='test-ftell.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-ftell2.sh.log: test-ftell2.sh
	@p='test-ftell2.sh'; \
	b='test-ftell2.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-ftell3.log: test-ftell3$(EXEEXT)
	@p='test-ftell3$(EXEEXT)'; \
	b='test-ftell3'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-ftello.sh.log: test-ftello.sh
	@p='test-ftello.sh'; \
	b='test-ftello.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-ftello2.sh.log: test-ftello2.sh
	@p='test-ftello2.sh'; \
	b='test-ftello2.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-ftello3.log: test-ftello3$(EXEEXT)
	@p='test-ftello3$(EXEEXT)'; \
	b='test-ftello3'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-ftello4.sh.log: test-ftello4.sh
	@p='test-ftello4.sh'; \
	b='test-ftello4.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-ftruncate.sh.log: test-ftruncate.sh
	@p='test-ftruncate.sh'; \
	b='test-ftruncate.sh'; \
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
test-getcwd-lgpl.log: test-getcwd-lgpl$(EXEEXT)
	@p='test-getcwd-lgpl$(EXEEXT)'; \
	b='test-getcwd-lgpl'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-getcwd.sh.log: test-getcwd.sh
	@p='test-getcwd.sh'; \
	b='test-getcwd.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-getdelim.log: test-getdelim$(EXEEXT)
	@p='test-getdelim$(EXEEXT)'; \
	b='test-getdelim'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-getdtablesize.log: test-getdtablesize$(EXEEXT)
	@p='test-getdtablesize$(EXEEXT)'; \
	b='test-getdtablesize'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-getgroups.log: test-getgroups$(EXEEXT)
	@p='test-getgroups$(EXEEXT)'; \
	b='test-getgroups'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-gethostname.log: test-gethostname$(EXEEXT)
	@p='test-gethostname$(EXEEXT)'; \
	b='test-gethostname'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-getline.log: test-getline$(EXEEXT)
	@p='test-getline$(EXEEXT)'; \
	b='test-getline'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-getopt-gnu.log: test-getopt-gnu$(EXEEXT)
	@p='test-getopt-gnu$(EXEEXT)'; \
	b='test-getopt-gnu'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-getopt-posix.log: test-getopt-posix$(EXEEXT)
	@p='test-getopt-posix$(EXEEXT)'; \
	b='test-getopt-posix'; \
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
test-gettimeofday.log: test-gettimeofday$(EXEEXT)
	@p='test-gettimeofday$(EXEEXT)'; \
	b='test-gettimeofday'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-hard-locale.log: test-hard-locale$(EXEEXT)
	@p='test-hard-locale$(EXEEXT)'; \
	b='test-hard-locale'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-hash.log: test-hash$(EXEEXT)
	@p='test-hash$(EXEEXT)'; \
	b='test-hash'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-i-ring.log: test-i-ring$(EXEEXT)
	@p='test-i-ring$(EXEEXT)'; \
	b='test-i-ring'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-ignore-value.log: test-ignore-value$(EXEEXT)
	@p='test-ignore-value$(EXEEXT)'; \
	b='test-ignore-value'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-inet_pton.log: test-inet_pton$(EXEEXT)
	@p='test-inet_pton$(EXEEXT)'; \
	b='test-inet_pton'; \
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
test-inttostr.log: test-inttostr$(EXEEXT)
	@p='test-inttostr$(EXEEXT)'; \
	b='test-inttostr'; \
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
test-ioctl.log: test-ioctl$(EXEEXT)
	@p='test-ioctl$(EXEEXT)'; \
	b='test-ioctl'; \
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
test-isfinite.log: test-isfinite$(EXEEXT)
	@p='test-isfinite$(EXEEXT)'; \
	b='test-isfinite'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-isinf.log: test-isinf$(EXEEXT)
	@p='test-isinf$(EXEEXT)'; \
	b='test-isinf'; \
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
test-iswdigit.sh.log: test-iswdigit.sh
	@p='test-iswdigit.sh'; \
	b='test-iswdigit.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-iswxdigit.sh.log: test-iswxdigit.sh
	@p='test-iswxdigit.sh'; \
	b='test-iswxdigit.sh'; \
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
test-listen.log: test-listen$(EXEEXT)
	@p='test-listen$(EXEEXT)'; \
	b='test-listen'; \
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
test-localeconv.log: test-localeconv$(EXEEXT)
	@p='test-localeconv$(EXEEXT)'; \
	b='test-localeconv'; \
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
test-lseek.sh.log: test-lseek.sh
	@p='test-lseek.sh'; \
	b='test-lseek.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-lstat.log: test-lstat$(EXEEXT)
	@p='test-lstat$(EXEEXT)'; \
	b='test-lstat'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-malloc-gnu.log: test-malloc-gnu$(EXEEXT)
	@p='test-malloc-gnu$(EXEEXT)'; \
	b='test-malloc-gnu'; \
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
test-mbrtowc-w32-6.sh.log: test-mbrtowc-w32-6.sh
	@p='test-mbrtowc-w32-6.sh'; \
	b='test-mbrtowc-w32-6.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-mbrtowc-w32-7.sh.log: test-mbrtowc-w32-7.sh
	@p='test-mbrtowc-w32-7.sh'; \
	b='test-mbrtowc-w32-7.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-mbscasestr1.log: test-mbscasestr1$(EXEEXT)
	@p='test-mbscasestr1$(EXEEXT)'; \
	b='test-mbscasestr1'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-mbscasestr2.sh.log: test-mbscasestr2.sh
	@p='test-mbscasestr2.sh'; \
	b='test-mbscasestr2.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-mbscasestr3.sh.log: test-mbscasestr3.sh
	@p='test-mbscasestr3.sh'; \
	b='test-mbscasestr3.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-mbscasestr4.sh.log: test-mbscasestr4.sh
	@p='test-mbscasestr4.sh'; \
	b='test-mbscasestr4.sh'; \
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
test-mbsrtowcs1.sh.log: test-mbsrtowcs1.sh
	@p='test-mbsrtowcs1.sh'; \
	b='test-mbsrtowcs1.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-mbsrtowcs2.sh.log: test-mbsrtowcs2.sh
	@p='test-mbsrtowcs2.sh'; \
	b='test-mbsrtowcs2.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-mbsrtowcs3.sh.log: test-mbsrtowcs3.sh
	@p='test-mbsrtowcs3.sh'; \
	b='test-mbsrtowcs3.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-mbsrtowcs4.sh.log: test-mbsrtowcs4.sh
	@p='test-mbsrtowcs4.sh'; \
	b='test-mbsrtowcs4.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-mbsstr1.log: test-mbsstr1$(EXEEXT)
	@p='test-mbsstr1$(EXEEXT)'; \
	b='test-mbsstr1'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-mbsstr2.sh.log: test-mbsstr2.sh
	@p='test-mbsstr2.sh'; \
	b='test-mbsstr2.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-mbsstr3.sh.log: test-mbsstr3.sh
	@p='test-mbsstr3.sh'; \
	b='test-mbsstr3.sh'; \
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
test-memrchr.log: test-memrchr$(EXEEXT)
	@p='test-memrchr$(EXEEXT)'; \
	b='test-memrchr'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-modf.log: test-modf$(EXEEXT)
	@p='test-modf$(EXEEXT)'; \
	b='test-modf'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-nanosleep.log: test-nanosleep$(EXEEXT)
	@p='test-nanosleep$(EXEEXT)'; \
	b='test-nanosleep'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-netinet_in.log: test-netinet_in$(EXEEXT)
	@p='test-netinet_in$(EXEEXT)'; \
	b='test-netinet_in'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-nl_langinfo.sh.log: test-nl_langinfo.sh
	@p='test-nl_langinfo.sh'; \
	b='test-nl_langinfo.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-nl_langinfo-mt.log: test-nl_langinfo-mt$(EXEEXT)
	@p='test-nl_langinfo-mt$(EXEEXT)'; \
	b='test-nl_langinfo-mt'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-nstrftime.log: test-nstrftime$(EXEEXT)
	@p='test-nstrftime$(EXEEXT)'; \
	b='test-nstrftime'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-open.log: test-open$(EXEEXT)
	@p='test-open$(EXEEXT)'; \
	b='test-open'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-openat-safer.log: test-openat-safer$(EXEEXT)
	@p='test-openat-safer$(EXEEXT)'; \
	b='test-openat-safer'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-openat.log: test-openat$(EXEEXT)
	@p='test-openat$(EXEEXT)'; \
	b='test-openat'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-parse-datetime.log: test-parse-datetime$(EXEEXT)
	@p='test-parse-datetime$(EXEEXT)'; \
	b='test-parse-datetime'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pathmax.log: test-pathmax$(EXEEXT)
	@p='test-pathmax$(EXEEXT)'; \
	b='test-pathmax'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-perror.sh.log: test-perror.sh
	@p='test-perror.sh'; \
	b='test-perror.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-perror2.log: test-perror2$(EXEEXT)
	@p='test-perror2$(EXEEXT)'; \
	b='test-perror2'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pipe.log: test-pipe$(EXEEXT)
	@p='test-pipe$(EXEEXT)'; \
	b='test-pipe'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-priv-set.log: test-priv-set$(EXEEXT)
	@p='test-priv-set$(EXEEXT)'; \
	b='test-priv-set'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pthread.log: test-pthread$(EXEEXT)
	@p='test-pthread$(EXEEXT)'; \
	b='test-pthread'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-pthread-thread.log: test-pthread-thread$(EXEEXT)
	@p='test-pthread-thread$(EXEEXT)'; \
	b='test-pthread-thread'; \
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
test-quotearg-simple.log: test-quotearg-simple$(EXEEXT)
	@p='test-quotearg-simple$(EXEEXT)'; \
	b='test-quotearg-simple'; \
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
test-rawmemchr.log: test-rawmemchr$(EXEEXT)
	@p='test-rawmemchr$(EXEEXT)'; \
	b='test-rawmemchr'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-read.log: test-read$(EXEEXT)
	@p='test-read$(EXEEXT)'; \
	b='test-read'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-readlink.log: test-readlink$(EXEEXT)
	@p='test-readlink$(EXEEXT)'; \
	b='test-readlink'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-readlinkat.log: test-readlinkat$(EXEEXT)
	@p='test-readlinkat$(EXEEXT)'; \
	b='test-readlinkat'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-realloc-gnu.log: test-realloc-gnu$(EXEEXT)
	@p='test-realloc-gnu$(EXEEXT)'; \
	b='test-realloc-gnu'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-regex.log: test-regex$(EXEEXT)
	@p='test-regex$(EXEEXT)'; \
	b='test-regex'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-rmdir.log: test-rmdir$(EXEEXT)
	@p='test-rmdir$(EXEEXT)'; \
	b='test-rmdir'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-sched.log: test-sched$(EXEEXT)
	@p='test-sched$(EXEEXT)'; \
	b='test-sched'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-scratch-buffer.log: test-scratch-buffer$(EXEEXT)
	@p='test-scratch-buffer$(EXEEXT)'; \
	b='test-scratch-buffer'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-select.log: test-select$(EXEEXT)
	@p='test-select$(EXEEXT)'; \
	b='test-select'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-select-in.sh.log: test-select-in.sh
	@p='test-select-in.sh'; \
	b='test-select-in.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-select-out.sh.log: test-select-out.sh
	@p='test-select-out.sh'; \
	b='test-select-out.sh'; \
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
test-setlocale_null.log: test-setlocale_null$(EXEEXT)
	@p='test-setlocale_null$(EXEEXT)'; \
	b='test-setlocale_null'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-setlocale_null-mt-one.log: test-setlocale_null-mt-one$(EXEEXT)
	@p='test-setlocale_null-mt-one$(EXEEXT)'; \
	b='test-setlocale_null-mt-one'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-setlocale_null-mt-all.log: test-setlocale_null-mt-all$(EXEEXT)
	@p='test-setlocale_null-mt-all$(EXEEXT)'; \
	b='test-setlocale_null-mt-all'; \
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
test-setsockopt.log: test-setsockopt$(EXEEXT)
	@p='test-setsockopt$(EXEEXT)'; \
	b='test-setsockopt'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-sigaction.log: test-sigaction$(EXEEXT)
	@p='test-sigaction$(EXEEXT)'; \
	b='test-sigaction'; \
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
test-snprintf.log: test-snprintf$(EXEEXT)
	@p='test-snprintf$(EXEEXT)'; \
	b='test-snprintf'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-sockets.log: test-sockets$(EXEEXT)
	@p='test-sockets$(EXEEXT)'; \
	b='test-sockets'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-stat.log: test-stat$(EXEEXT)
	@p='test-stat$(EXEEXT)'; \
	b='test-stat'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-stat-time.log: test-stat-time$(EXEEXT)
	@p='test-stat-time$(EXEEXT)'; \
	b='test-stat-time'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-statat.log: test-statat$(EXEEXT)
	@p='test-statat$(EXEEXT)'; \
	b='test-statat'; \
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
test-strcasestr.log: test-strcasestr$(EXEEXT)
	@p='test-strcasestr$(EXEEXT)'; \
	b='test-strcasestr'; \
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
test-strerror_r.log: test-strerror_r$(EXEEXT)
	@p='test-strerror_r$(EXEEXT)'; \
	b='test-strerror_r'; \
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
test-strings.log: test-strings$(EXEEXT)
	@p='test-strings$(EXEEXT)'; \
	b='test-strings'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-strnlen.log: test-strnlen$(EXEEXT)
	@p='test-strnlen$(EXEEXT)'; \
	b='test-strnlen'; \
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
test-strtoll.log: test-strtoll$(EXEEXT)
	@p='test-strtoll$(EXEEXT)'; \
	b='test-strtoll'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-strtoull.log: test-strtoull$(EXEEXT)
	@p='test-strtoull$(EXEEXT)'; \
	b='test-strtoull'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-strtoumax.log: test-strtoumax$(EXEEXT)
	@p='test-strtoumax$(EXEEXT)'; \
	b='test-strtoumax'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-symlink.log: test-symlink$(EXEEXT)
	@p='test-symlink$(EXEEXT)'; \
	b='test-symlink'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-symlinkat.log: test-symlinkat$(EXEEXT)
	@p='test-symlinkat$(EXEEXT)'; \
	b='test-symlinkat'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-sys_ioctl.log: test-sys_ioctl$(EXEEXT)
	@p='test-sys_ioctl$(EXEEXT)'; \
	b='test-sys_ioctl'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-sys_select.log: test-sys_select$(EXEEXT)
	@p='test-sys_select$(EXEEXT)'; \
	b='test-sys_select'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-sys_socket.log: test-sys_socket$(EXEEXT)
	@p='test-sys_socket$(EXEEXT)'; \
	b='test-sys_socket'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-sys_stat.log: test-sys_stat$(EXEEXT)
	@p='test-sys_stat$(EXEEXT)'; \
	b='test-sys_stat'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-sys_time.log: test-sys_time$(EXEEXT)
	@p='test-sys_time$(EXEEXT)'; \
	b='test-sys_time'; \
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
test-sys_uio.log: test-sys_uio$(EXEEXT)
	@p='test-sys_uio$(EXEEXT)'; \
	b='test-sys_uio'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-sys_utsname.log: test-sys_utsname$(EXEEXT)
	@p='test-sys_utsname$(EXEEXT)'; \
	b='test-sys_utsname'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-sys_wait.log: test-sys_wait$(EXEEXT)
	@p='test-sys_wait$(EXEEXT)'; \
	b='test-sys_wait'; \
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
test-timespec.log: test-timespec$(EXEEXT)
	@p='test-timespec$(EXEEXT)'; \
	b='test-timespec'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-trunc1.log: test-trunc1$(EXEEXT)
	@p='test-trunc1$(EXEEXT)'; \
	b='test-trunc1'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-trunc2.log: test-trunc2$(EXEEXT)
	@p='test-trunc2$(EXEEXT)'; \
	b='test-trunc2'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-uname.log: test-uname$(EXEEXT)
	@p='test-uname$(EXEEXT)'; \
	b='test-uname'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-dup-safer.log: test-dup-safer$(EXEEXT)
	@p='test-dup-safer$(EXEEXT)'; \
	b='test-dup-safer'; \
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
test-unlink.log: test-unlink$(EXEEXT)
	@p='test-unlink$(EXEEXT)'; \
	b='test-unlink'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-unlinkat.log: test-unlinkat$(EXEEXT)
	@p='test-unlinkat$(EXEEXT)'; \
	b='test-unlinkat'; \
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
test-update-copyright.sh.log: test-update-copyright.sh
	@p='test-update-copyright.sh'; \
	b='test-update-copyright.sh'; \
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
test-vasnprintf.log: test-vasnprintf$(EXEEXT)
	@p='test-vasnprintf$(EXEEXT)'; \
	b='test-vasnprintf'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-vc-list-files-git.sh.log: test-vc-list-files-git.sh
	@p='test-vc-list-files-git.sh'; \
	b='test-vc-list-files-git.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-vc-list-files-cvs.sh.log: test-vc-list-files-cvs.sh
	@p='test-vc-list-files-cvs.sh'; \
	b='test-vc-list-files-cvs.sh'; \
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
test-version-etc.sh.log: test-version-etc.sh
	@p='test-version-etc.sh'; \
	b='test-version-etc.sh'; \
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
test-wcrtomb-w32-6.sh.log: test-wcrtomb-w32-6.sh
	@p='test-wcrtomb-w32-6.sh'; \
	b='test-wcrtomb-w32-6.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-wcrtomb-w32-7.sh.log: test-wcrtomb-w32-7.sh
	@p='test-wcrtomb-w32-7.sh'; \
	b='test-wcrtomb-w32-7.sh'; \
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
test-xstrtol.sh.log: test-xstrtol.sh
	@p='test-xstrtol.sh'; \
	b='test-xstrtol.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-xstrtoumax.sh.log: test-xstrtoumax.sh
	@p='test-xstrtoumax.sh'; \
	b='test-xstrtoumax.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
test-yesno.sh.log: test-yesno.sh
	@p='test-yesno.sh'; \
	b='test-yesno.sh'; \
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
#.test$(EXEEXT).log:
#	@p='$<'; \
#	$(am__set_b); \
#	$(am__check_pre) $(TEST_LOG_DRIVER) --test-name "$$f" \
#	--log-file $$b.log --trs-file $$b.trs \
#	$(am__common_driver_flags) $(AM_TEST_LOG_DRIVER_FLAGS) $(TEST_LOG_DRIVER_FLAGS) -- $(TEST_LOG_COMPILE) \
#	"$$tst" $(AM_TESTS_FD_REDIRECT)

