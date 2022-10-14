top_builddir=.
srcdir=.
EXEEXT =
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

TESTS = $(check_PROGRAMS) $(am__EXEEXT_3)
XFAIL_TESTS =
check_PROGRAMS = ascii_tag$(EXEEXT) long_tag$(EXEEXT) \
	short_tag$(EXEEXT) strip_rw$(EXEEXT) rewrite$(EXEEXT) \
	custom_dir$(EXEEXT) custom_dir_EXIF_231$(EXEEXT) \
	rational_precision2double$(EXEEXT) \
	defer_strile_loading$(EXEEXT) defer_strile_writing$(EXEEXT) \
	testtypes$(EXEEXT) $(am__EXEEXT_1)
am__EXEEXT_1 = raw_decode$(EXEEXT)
am__EXEEXT_2 = tiff2rgba-quad-tile.jpg.sh \
	tiff2rgba-ojpeg_zackthecat_subsamp22_single_strip.sh \
	tiff2rgba-ojpeg_chewey_subsamp21_multi_strip.sh \
	tiff2rgba-ojpeg_single_strip_no_rowsperstrip.sh
am__EXEEXT_3 = ppm2tiff_pbm.sh ppm2tiff_pgm.sh ppm2tiff_ppm.sh \
	fax2tiff.sh tiffcp-g3.sh tiffcp-g3-1d.sh tiffcp-g3-1d-fill.sh \
	tiffcp-g3-2d.sh tiffcp-g3-2d-fill.sh tiffcp-g4.sh \
	tiffcp-logluv.sh tiffcp-thumbnail.sh tiffcp-lzw-compat.sh \
	tiffcp-lzw-scanline-decode.sh tiffdump.sh tiffinfo.sh \
	tiffcp-split.sh tiffcp-split-join.sh tiff2ps-PS1.sh \
	tiff2ps-PS2.sh tiff2ps-PS3.sh tiff2ps-EPS1.sh tiff2pdf.sh \
	tiffcrop-doubleflip-logluv-3c-16b.sh \
	tiffcrop-doubleflip-minisblack-1c-16b.sh \
	tiffcrop-doubleflip-minisblack-1c-8b.sh \
	tiffcrop-doubleflip-minisblack-2c-8b-alpha.sh \
	tiffcrop-doubleflip-miniswhite-1c-1b.sh \
	tiffcrop-doubleflip-palette-1c-1b.sh \
	tiffcrop-doubleflip-palette-1c-4b.sh \
	tiffcrop-doubleflip-palette-1c-8b.sh \
	tiffcrop-doubleflip-rgb-3c-16b.sh \
	tiffcrop-doubleflip-rgb-3c-8b.sh \
	tiffcrop-extract-logluv-3c-16b.sh \
	tiffcrop-extract-minisblack-1c-16b.sh \
	tiffcrop-extract-minisblack-1c-8b.sh \
	tiffcrop-extract-minisblack-2c-8b-alpha.sh \
	tiffcrop-extract-miniswhite-1c-1b.sh \
	tiffcrop-extract-palette-1c-1b.sh \
	tiffcrop-extract-palette-1c-4b.sh \
	tiffcrop-extract-palette-1c-8b.sh \
	tiffcrop-extract-rgb-3c-16b.sh tiffcrop-extract-rgb-3c-8b.sh \
	tiffcrop-extractz14-logluv-3c-16b.sh \
	tiffcrop-extractz14-minisblack-1c-16b.sh \
	tiffcrop-extractz14-minisblack-1c-8b.sh \
	tiffcrop-extractz14-minisblack-2c-8b-alpha.sh \
	tiffcrop-extractz14-miniswhite-1c-1b.sh \
	tiffcrop-extractz14-palette-1c-1b.sh \
	tiffcrop-extractz14-palette-1c-4b.sh \
	tiffcrop-extractz14-palette-1c-8b.sh \
	tiffcrop-extractz14-rgb-3c-16b.sh \
	tiffcrop-extractz14-rgb-3c-8b.sh tiffcrop-R90-logluv-3c-16b.sh \
	tiffcrop-R90-minisblack-1c-16b.sh \
	tiffcrop-R90-minisblack-1c-8b.sh \
	tiffcrop-R90-minisblack-2c-8b-alpha.sh \
	tiffcrop-R90-miniswhite-1c-1b.sh tiffcrop-R90-palette-1c-1b.sh \
	tiffcrop-R90-palette-1c-4b.sh tiffcrop-R90-palette-1c-8b.sh \
	tiffcrop-R90-rgb-3c-16b.sh tiffcrop-R90-rgb-3c-8b.sh \
	tiff2bw-palette-1c-8b.sh tiff2bw-quad-lzw-compat.sh \
	tiff2bw-rgb-3c-8b.sh tiff2rgba-logluv-3c-16b.sh \
	tiff2rgba-minisblack-1c-16b.sh tiff2rgba-minisblack-1c-8b.sh \
	tiff2rgba-minisblack-2c-8b-alpha.sh \
	tiff2rgba-miniswhite-1c-1b.sh tiff2rgba-palette-1c-1b.sh \
	tiff2rgba-palette-1c-4b.sh tiff2rgba-palette-1c-8b.sh \
	tiff2rgba-rgb-3c-16b.sh tiff2rgba-rgb-3c-8b.sh testfax4.sh \
	testdeflatelaststripextradata.sh $(am__EXEEXT_2)
TEST_SUITE_LOG = test-suite.log


am__sh_e_setup = case $$- in *e*) set +e;; esac

am__vpath_adj_setup = srcdirstrip=`echo "$(srcdir)" | sed 's|.|.|g'`;
am__vpath_adj = case $$p in \
    $(srcdir)/*) f=`echo "$$p" | sed "s|^$$srcdirstrip/||"`;; \
    *) f=$$p;; \
  esac;

am__check_pre = \
$(am__sh_e_setup);					\
$(am__vpath_adj_setup) $(am__vpath_adj)			\
$(am__tty_colors);					\
srcdir=$(srcdir); export srcdir;			\
case "$@" in						\
  */*) am__odir=`echo "./$@" | sed 's|/[^/]*$$||'`;;	\
    *) am__odir=.;; 					\
esac;							\
test "x$$am__odir" = x"." || test -d "$$am__odir" 	\
  || $(MKDIR_P) "$$am__odir" || exit $$?;		\
if test -f "./$$f"; then dir=./;			\
elif test -f "$$f"; then dir=;				\
else dir="$(srcdir)/"; fi;				\
tst=$$dir$$f; log='$@'; 				\
if test -n '$(DISABLE_HARD_ERRORS)'; then		\
  am__enable_hard_errors=no; 				\
else							\
  am__enable_hard_errors=yes; 				\
fi; 							\
case " $(XFAIL_TESTS) " in				\
  *[\ \	]$$f[\ \	]* | *[\ \	]$$dir$$f[\ \	]*) \
    am__expect_failure=yes;;				\
  *)							\
    am__expect_failure=no;;				\
esac; 							\
$(AM_TESTS_ENVIRONMENT) $(TESTS_ENVIRONMENT)

am__common_driver_flags = \
  --color-tests "$$am__color_tests" \
  --enable-hard-errors "$$am__enable_hard_errors" \
  --expect-failure "$$am__expect_failure"

am__set_TESTS_bases = \
  bases='$(TEST_LOGS)'; \
  bases=`for i in $$bases; do echo $$i; done | sed 's/\.log$$//'`; \
  bases=`echo $$bases`
RECHECK_LOGS = $(TEST_LOGS)
am__test_logs1 = $(TESTS:=.log)
am__test_logs2 = $(am__test_logs1:.log=.log)
TEST_LOGS = $(am__test_logs2:.test.log=.log)

TEST_LOG_DRIVER = $(SHELL) $(top_builddir)/config/test-driver
LOG_DRIVER = $(SHELL) $(top_builddir)/config/test-driver

$(TEST_SUITE_LOG): $(TEST_LOGS)
	@$(am__set_TESTS_bases); \
	am__f_ok () { test -f "$$1" && test -r "$$1"; }; \
	redo_bases=`for i in $$bases; do \
	              am__f_ok $$i.trs && am__f_ok $$i.log || echo $$i; \
	            done`; \
	if test -n "$$redo_bases"; then \
	  redo_logs=`for i in $$redo_bases; do echo $$i.log; done`; \
	  redo_results=`for i in $$redo_bases; do echo $$i.trs; done`; \
	  if $(am__make_dryrun); then :; else \
	    rm -f $$redo_logs && rm -f $$redo_results || exit 1; \
	  fi; \
	fi; \
	if test -n "$$am__remaking_logs"; then \
	  echo "fatal: making $(TEST_SUITE_LOG): possible infinite" \
	       "recursion detected" >&2; \
	elif test -n "$$redo_logs"; then \
	  am__remaking_logs=yes $(MAKE) $(AM_MAKEFLAGS) $$redo_logs; \
	fi; \
	if $(am__make_dryrun); then :; else \
	  st=0;  \
	  errmsg="fatal: making $(TEST_SUITE_LOG): failed to create"; \
	  for i in $$redo_bases; do \
	    test -f $$i.trs && test -r $$i.trs \
	      || { echo "$$errmsg $$i.trs" >&2; st=1; }; \
	    test -f $$i.log && test -r $$i.log \
	      || { echo "$$errmsg $$i.log" >&2; st=1; }; \
	  done; \
	  test $$st -eq 0 || exit 1; \
	fi
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
	  for b in $$bases; do echo $$b; done				\
	    | $(am__create_global_log);					\
	} >$(TEST_SUITE_LOG).tmp || exit 1;				\
	mv $(TEST_SUITE_LOG).tmp $(TEST_SUITE_LOG);			\
	if $$success; then						\
	  col="$$grn";							\
	 else								\
	  col="$$red";							\
	  test x"$$VERBOSE" = x || cat $(TEST_SUITE_LOG);		\
	fi;								\
	echo "$${col}$$br$${std}"; 					\
	echo "$${col}Testsuite summary"$(AM_TESTSUITE_SUMMARY_HEADER)"$${std}";	\
	echo "$${col}$$br$${std}"; 					\
	create_testsuite_report --maybe-color;				\
	echo "$$col$$br$$std";						\
	if $$success; then :; else					\
	  echo "$${col}See $(subdir)/$(TEST_SUITE_LOG)$${std}";		\
	  if test -n "$(PACKAGE_BUGREPORT)"; then			\
	    echo "$${col}Please report to $(PACKAGE_BUGREPORT)$${std}";	\
	  fi;								\
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

ascii_tag.log: ascii_tag$(EXEEXT)
	@p='ascii_tag$(EXEEXT)'; \
	b='ascii_tag'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
long_tag.log: long_tag$(EXEEXT)
	@p='long_tag$(EXEEXT)'; \
	b='long_tag'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
short_tag.log: short_tag$(EXEEXT)
	@p='short_tag$(EXEEXT)'; \
	b='short_tag'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
strip_rw.log: strip_rw$(EXEEXT)
	@p='strip_rw$(EXEEXT)'; \
	b='strip_rw'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
rewrite.log: rewrite$(EXEEXT)
	@p='rewrite$(EXEEXT)'; \
	b='rewrite'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
custom_dir.log: custom_dir$(EXEEXT)
	@p='custom_dir$(EXEEXT)'; \
	b='custom_dir'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
custom_dir_EXIF_231.log: custom_dir_EXIF_231$(EXEEXT)
	@p='custom_dir_EXIF_231$(EXEEXT)'; \
	b='custom_dir_EXIF_231'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
rational_precision2double.log: rational_precision2double$(EXEEXT)
	@p='rational_precision2double$(EXEEXT)'; \
	b='rational_precision2double'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
defer_strile_loading.log: defer_strile_loading$(EXEEXT)
	@p='defer_strile_loading$(EXEEXT)'; \
	b='defer_strile_loading'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
defer_strile_writing.log: defer_strile_writing$(EXEEXT)
	@p='defer_strile_writing$(EXEEXT)'; \
	b='defer_strile_writing'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
testtypes.log: testtypes$(EXEEXT)
	@p='testtypes$(EXEEXT)'; \
	b='testtypes'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
raw_decode.log: raw_decode$(EXEEXT)
	@p='raw_decode$(EXEEXT)'; \
	b='raw_decode'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
ppm2tiff_pbm.sh.log: ppm2tiff_pbm.sh
	@p='ppm2tiff_pbm.sh'; \
	b='ppm2tiff_pbm.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
ppm2tiff_pgm.sh.log: ppm2tiff_pgm.sh
	@p='ppm2tiff_pgm.sh'; \
	b='ppm2tiff_pgm.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
ppm2tiff_ppm.sh.log: ppm2tiff_ppm.sh
	@p='ppm2tiff_ppm.sh'; \
	b='ppm2tiff_ppm.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
fax2tiff.sh.log: fax2tiff.sh
	@p='fax2tiff.sh'; \
	b='fax2tiff.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcp-g3.sh.log: tiffcp-g3.sh
	@p='tiffcp-g3.sh'; \
	b='tiffcp-g3.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcp-g3-1d.sh.log: tiffcp-g3-1d.sh
	@p='tiffcp-g3-1d.sh'; \
	b='tiffcp-g3-1d.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcp-g3-1d-fill.sh.log: tiffcp-g3-1d-fill.sh
	@p='tiffcp-g3-1d-fill.sh'; \
	b='tiffcp-g3-1d-fill.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcp-g3-2d.sh.log: tiffcp-g3-2d.sh
	@p='tiffcp-g3-2d.sh'; \
	b='tiffcp-g3-2d.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcp-g3-2d-fill.sh.log: tiffcp-g3-2d-fill.sh
	@p='tiffcp-g3-2d-fill.sh'; \
	b='tiffcp-g3-2d-fill.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcp-g4.sh.log: tiffcp-g4.sh
	@p='tiffcp-g4.sh'; \
	b='tiffcp-g4.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcp-logluv.sh.log: tiffcp-logluv.sh
	@p='tiffcp-logluv.sh'; \
	b='tiffcp-logluv.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcp-thumbnail.sh.log: tiffcp-thumbnail.sh
	@p='tiffcp-thumbnail.sh'; \
	b='tiffcp-thumbnail.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcp-lzw-compat.sh.log: tiffcp-lzw-compat.sh
	@p='tiffcp-lzw-compat.sh'; \
	b='tiffcp-lzw-compat.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcp-lzw-scanline-decode.sh.log: tiffcp-lzw-scanline-decode.sh
	@p='tiffcp-lzw-scanline-decode.sh'; \
	b='tiffcp-lzw-scanline-decode.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffdump.sh.log: tiffdump.sh
	@p='tiffdump.sh'; \
	b='tiffdump.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffinfo.sh.log: tiffinfo.sh
	@p='tiffinfo.sh'; \
	b='tiffinfo.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcp-split.sh.log: tiffcp-split.sh
	@p='tiffcp-split.sh'; \
	b='tiffcp-split.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcp-split-join.sh.log: tiffcp-split-join.sh
	@p='tiffcp-split-join.sh'; \
	b='tiffcp-split-join.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiff2ps-PS1.sh.log: tiff2ps-PS1.sh
	@p='tiff2ps-PS1.sh'; \
	b='tiff2ps-PS1.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiff2ps-PS2.sh.log: tiff2ps-PS2.sh
	@p='tiff2ps-PS2.sh'; \
	b='tiff2ps-PS2.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiff2ps-PS3.sh.log: tiff2ps-PS3.sh
	@p='tiff2ps-PS3.sh'; \
	b='tiff2ps-PS3.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiff2ps-EPS1.sh.log: tiff2ps-EPS1.sh
	@p='tiff2ps-EPS1.sh'; \
	b='tiff2ps-EPS1.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiff2pdf.sh.log: tiff2pdf.sh
	@p='tiff2pdf.sh'; \
	b='tiff2pdf.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcrop-doubleflip-logluv-3c-16b.sh.log: tiffcrop-doubleflip-logluv-3c-16b.sh
	@p='tiffcrop-doubleflip-logluv-3c-16b.sh'; \
	b='tiffcrop-doubleflip-logluv-3c-16b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcrop-doubleflip-minisblack-1c-16b.sh.log: tiffcrop-doubleflip-minisblack-1c-16b.sh
	@p='tiffcrop-doubleflip-minisblack-1c-16b.sh'; \
	b='tiffcrop-doubleflip-minisblack-1c-16b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcrop-doubleflip-minisblack-1c-8b.sh.log: tiffcrop-doubleflip-minisblack-1c-8b.sh
	@p='tiffcrop-doubleflip-minisblack-1c-8b.sh'; \
	b='tiffcrop-doubleflip-minisblack-1c-8b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcrop-doubleflip-minisblack-2c-8b-alpha.sh.log: tiffcrop-doubleflip-minisblack-2c-8b-alpha.sh
	@p='tiffcrop-doubleflip-minisblack-2c-8b-alpha.sh'; \
	b='tiffcrop-doubleflip-minisblack-2c-8b-alpha.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcrop-doubleflip-miniswhite-1c-1b.sh.log: tiffcrop-doubleflip-miniswhite-1c-1b.sh
	@p='tiffcrop-doubleflip-miniswhite-1c-1b.sh'; \
	b='tiffcrop-doubleflip-miniswhite-1c-1b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcrop-doubleflip-palette-1c-1b.sh.log: tiffcrop-doubleflip-palette-1c-1b.sh
	@p='tiffcrop-doubleflip-palette-1c-1b.sh'; \
	b='tiffcrop-doubleflip-palette-1c-1b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcrop-doubleflip-palette-1c-4b.sh.log: tiffcrop-doubleflip-palette-1c-4b.sh
	@p='tiffcrop-doubleflip-palette-1c-4b.sh'; \
	b='tiffcrop-doubleflip-palette-1c-4b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcrop-doubleflip-palette-1c-8b.sh.log: tiffcrop-doubleflip-palette-1c-8b.sh
	@p='tiffcrop-doubleflip-palette-1c-8b.sh'; \
	b='tiffcrop-doubleflip-palette-1c-8b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcrop-doubleflip-rgb-3c-16b.sh.log: tiffcrop-doubleflip-rgb-3c-16b.sh
	@p='tiffcrop-doubleflip-rgb-3c-16b.sh'; \
	b='tiffcrop-doubleflip-rgb-3c-16b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcrop-doubleflip-rgb-3c-8b.sh.log: tiffcrop-doubleflip-rgb-3c-8b.sh
	@p='tiffcrop-doubleflip-rgb-3c-8b.sh'; \
	b='tiffcrop-doubleflip-rgb-3c-8b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcrop-extract-logluv-3c-16b.sh.log: tiffcrop-extract-logluv-3c-16b.sh
	@p='tiffcrop-extract-logluv-3c-16b.sh'; \
	b='tiffcrop-extract-logluv-3c-16b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcrop-extract-minisblack-1c-16b.sh.log: tiffcrop-extract-minisblack-1c-16b.sh
	@p='tiffcrop-extract-minisblack-1c-16b.sh'; \
	b='tiffcrop-extract-minisblack-1c-16b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcrop-extract-minisblack-1c-8b.sh.log: tiffcrop-extract-minisblack-1c-8b.sh
	@p='tiffcrop-extract-minisblack-1c-8b.sh'; \
	b='tiffcrop-extract-minisblack-1c-8b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcrop-extract-minisblack-2c-8b-alpha.sh.log: tiffcrop-extract-minisblack-2c-8b-alpha.sh
	@p='tiffcrop-extract-minisblack-2c-8b-alpha.sh'; \
	b='tiffcrop-extract-minisblack-2c-8b-alpha.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcrop-extract-miniswhite-1c-1b.sh.log: tiffcrop-extract-miniswhite-1c-1b.sh
	@p='tiffcrop-extract-miniswhite-1c-1b.sh'; \
	b='tiffcrop-extract-miniswhite-1c-1b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcrop-extract-palette-1c-1b.sh.log: tiffcrop-extract-palette-1c-1b.sh
	@p='tiffcrop-extract-palette-1c-1b.sh'; \
	b='tiffcrop-extract-palette-1c-1b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcrop-extract-palette-1c-4b.sh.log: tiffcrop-extract-palette-1c-4b.sh
	@p='tiffcrop-extract-palette-1c-4b.sh'; \
	b='tiffcrop-extract-palette-1c-4b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcrop-extract-palette-1c-8b.sh.log: tiffcrop-extract-palette-1c-8b.sh
	@p='tiffcrop-extract-palette-1c-8b.sh'; \
	b='tiffcrop-extract-palette-1c-8b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcrop-extract-rgb-3c-16b.sh.log: tiffcrop-extract-rgb-3c-16b.sh
	@p='tiffcrop-extract-rgb-3c-16b.sh'; \
	b='tiffcrop-extract-rgb-3c-16b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcrop-extract-rgb-3c-8b.sh.log: tiffcrop-extract-rgb-3c-8b.sh
	@p='tiffcrop-extract-rgb-3c-8b.sh'; \
	b='tiffcrop-extract-rgb-3c-8b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcrop-extractz14-logluv-3c-16b.sh.log: tiffcrop-extractz14-logluv-3c-16b.sh
	@p='tiffcrop-extractz14-logluv-3c-16b.sh'; \
	b='tiffcrop-extractz14-logluv-3c-16b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcrop-extractz14-minisblack-1c-16b.sh.log: tiffcrop-extractz14-minisblack-1c-16b.sh
	@p='tiffcrop-extractz14-minisblack-1c-16b.sh'; \
	b='tiffcrop-extractz14-minisblack-1c-16b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcrop-extractz14-minisblack-1c-8b.sh.log: tiffcrop-extractz14-minisblack-1c-8b.sh
	@p='tiffcrop-extractz14-minisblack-1c-8b.sh'; \
	b='tiffcrop-extractz14-minisblack-1c-8b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcrop-extractz14-minisblack-2c-8b-alpha.sh.log: tiffcrop-extractz14-minisblack-2c-8b-alpha.sh
	@p='tiffcrop-extractz14-minisblack-2c-8b-alpha.sh'; \
	b='tiffcrop-extractz14-minisblack-2c-8b-alpha.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcrop-extractz14-miniswhite-1c-1b.sh.log: tiffcrop-extractz14-miniswhite-1c-1b.sh
	@p='tiffcrop-extractz14-miniswhite-1c-1b.sh'; \
	b='tiffcrop-extractz14-miniswhite-1c-1b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcrop-extractz14-palette-1c-1b.sh.log: tiffcrop-extractz14-palette-1c-1b.sh
	@p='tiffcrop-extractz14-palette-1c-1b.sh'; \
	b='tiffcrop-extractz14-palette-1c-1b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcrop-extractz14-palette-1c-4b.sh.log: tiffcrop-extractz14-palette-1c-4b.sh
	@p='tiffcrop-extractz14-palette-1c-4b.sh'; \
	b='tiffcrop-extractz14-palette-1c-4b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcrop-extractz14-palette-1c-8b.sh.log: tiffcrop-extractz14-palette-1c-8b.sh
	@p='tiffcrop-extractz14-palette-1c-8b.sh'; \
	b='tiffcrop-extractz14-palette-1c-8b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcrop-extractz14-rgb-3c-16b.sh.log: tiffcrop-extractz14-rgb-3c-16b.sh
	@p='tiffcrop-extractz14-rgb-3c-16b.sh'; \
	b='tiffcrop-extractz14-rgb-3c-16b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcrop-extractz14-rgb-3c-8b.sh.log: tiffcrop-extractz14-rgb-3c-8b.sh
	@p='tiffcrop-extractz14-rgb-3c-8b.sh'; \
	b='tiffcrop-extractz14-rgb-3c-8b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcrop-R90-logluv-3c-16b.sh.log: tiffcrop-R90-logluv-3c-16b.sh
	@p='tiffcrop-R90-logluv-3c-16b.sh'; \
	b='tiffcrop-R90-logluv-3c-16b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcrop-R90-minisblack-1c-16b.sh.log: tiffcrop-R90-minisblack-1c-16b.sh
	@p='tiffcrop-R90-minisblack-1c-16b.sh'; \
	b='tiffcrop-R90-minisblack-1c-16b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcrop-R90-minisblack-1c-8b.sh.log: tiffcrop-R90-minisblack-1c-8b.sh
	@p='tiffcrop-R90-minisblack-1c-8b.sh'; \
	b='tiffcrop-R90-minisblack-1c-8b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcrop-R90-minisblack-2c-8b-alpha.sh.log: tiffcrop-R90-minisblack-2c-8b-alpha.sh
	@p='tiffcrop-R90-minisblack-2c-8b-alpha.sh'; \
	b='tiffcrop-R90-minisblack-2c-8b-alpha.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcrop-R90-miniswhite-1c-1b.sh.log: tiffcrop-R90-miniswhite-1c-1b.sh
	@p='tiffcrop-R90-miniswhite-1c-1b.sh'; \
	b='tiffcrop-R90-miniswhite-1c-1b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcrop-R90-palette-1c-1b.sh.log: tiffcrop-R90-palette-1c-1b.sh
	@p='tiffcrop-R90-palette-1c-1b.sh'; \
	b='tiffcrop-R90-palette-1c-1b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcrop-R90-palette-1c-4b.sh.log: tiffcrop-R90-palette-1c-4b.sh
	@p='tiffcrop-R90-palette-1c-4b.sh'; \
	b='tiffcrop-R90-palette-1c-4b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcrop-R90-palette-1c-8b.sh.log: tiffcrop-R90-palette-1c-8b.sh
	@p='tiffcrop-R90-palette-1c-8b.sh'; \
	b='tiffcrop-R90-palette-1c-8b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcrop-R90-rgb-3c-16b.sh.log: tiffcrop-R90-rgb-3c-16b.sh
	@p='tiffcrop-R90-rgb-3c-16b.sh'; \
	b='tiffcrop-R90-rgb-3c-16b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiffcrop-R90-rgb-3c-8b.sh.log: tiffcrop-R90-rgb-3c-8b.sh
	@p='tiffcrop-R90-rgb-3c-8b.sh'; \
	b='tiffcrop-R90-rgb-3c-8b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiff2bw-palette-1c-8b.sh.log: tiff2bw-palette-1c-8b.sh
	@p='tiff2bw-palette-1c-8b.sh'; \
	b='tiff2bw-palette-1c-8b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiff2bw-quad-lzw-compat.sh.log: tiff2bw-quad-lzw-compat.sh
	@p='tiff2bw-quad-lzw-compat.sh'; \
	b='tiff2bw-quad-lzw-compat.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiff2bw-rgb-3c-8b.sh.log: tiff2bw-rgb-3c-8b.sh
	@p='tiff2bw-rgb-3c-8b.sh'; \
	b='tiff2bw-rgb-3c-8b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiff2rgba-logluv-3c-16b.sh.log: tiff2rgba-logluv-3c-16b.sh
	@p='tiff2rgba-logluv-3c-16b.sh'; \
	b='tiff2rgba-logluv-3c-16b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiff2rgba-minisblack-1c-16b.sh.log: tiff2rgba-minisblack-1c-16b.sh
	@p='tiff2rgba-minisblack-1c-16b.sh'; \
	b='tiff2rgba-minisblack-1c-16b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiff2rgba-minisblack-1c-8b.sh.log: tiff2rgba-minisblack-1c-8b.sh
	@p='tiff2rgba-minisblack-1c-8b.sh'; \
	b='tiff2rgba-minisblack-1c-8b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiff2rgba-minisblack-2c-8b-alpha.sh.log: tiff2rgba-minisblack-2c-8b-alpha.sh
	@p='tiff2rgba-minisblack-2c-8b-alpha.sh'; \
	b='tiff2rgba-minisblack-2c-8b-alpha.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiff2rgba-miniswhite-1c-1b.sh.log: tiff2rgba-miniswhite-1c-1b.sh
	@p='tiff2rgba-miniswhite-1c-1b.sh'; \
	b='tiff2rgba-miniswhite-1c-1b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiff2rgba-palette-1c-1b.sh.log: tiff2rgba-palette-1c-1b.sh
	@p='tiff2rgba-palette-1c-1b.sh'; \
	b='tiff2rgba-palette-1c-1b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiff2rgba-palette-1c-4b.sh.log: tiff2rgba-palette-1c-4b.sh
	@p='tiff2rgba-palette-1c-4b.sh'; \
	b='tiff2rgba-palette-1c-4b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiff2rgba-palette-1c-8b.sh.log: tiff2rgba-palette-1c-8b.sh
	@p='tiff2rgba-palette-1c-8b.sh'; \
	b='tiff2rgba-palette-1c-8b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiff2rgba-rgb-3c-16b.sh.log: tiff2rgba-rgb-3c-16b.sh
	@p='tiff2rgba-rgb-3c-16b.sh'; \
	b='tiff2rgba-rgb-3c-16b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiff2rgba-rgb-3c-8b.sh.log: tiff2rgba-rgb-3c-8b.sh
	@p='tiff2rgba-rgb-3c-8b.sh'; \
	b='tiff2rgba-rgb-3c-8b.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
testfax4.sh.log: testfax4.sh
	@p='testfax4.sh'; \
	b='testfax4.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
testdeflatelaststripextradata.sh.log: testdeflatelaststripextradata.sh
	@p='testdeflatelaststripextradata.sh'; \
	b='testdeflatelaststripextradata.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiff2rgba-quad-tile.jpg.sh.log: tiff2rgba-quad-tile.jpg.sh
	@p='tiff2rgba-quad-tile.jpg.sh'; \
	b='tiff2rgba-quad-tile.jpg.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiff2rgba-ojpeg_zackthecat_subsamp22_single_strip.sh.log: tiff2rgba-ojpeg_zackthecat_subsamp22_single_strip.sh
	@p='tiff2rgba-ojpeg_zackthecat_subsamp22_single_strip.sh'; \
	b='tiff2rgba-ojpeg_zackthecat_subsamp22_single_strip.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiff2rgba-ojpeg_chewey_subsamp21_multi_strip.sh.log: tiff2rgba-ojpeg_chewey_subsamp21_multi_strip.sh
	@p='tiff2rgba-ojpeg_chewey_subsamp21_multi_strip.sh'; \
	b='tiff2rgba-ojpeg_chewey_subsamp21_multi_strip.sh'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tiff2rgba-ojpeg_single_strip_no_rowsperstrip.sh.log: tiff2rgba-ojpeg_single_strip_no_rowsperstrip.sh
	@p='tiff2rgba-ojpeg_single_strip_no_rowsperstrip.sh'; \
	b='tiff2rgba-ojpeg_single_strip_no_rowsperstrip.sh'; \
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


