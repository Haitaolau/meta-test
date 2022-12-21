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
PACKAGE_STRING = Gnutls 3.7.2
SHELL = /bin/sh
srcdir = .
top_srcdir = .
check_PROGRAMS = $(am__EXEEXT_2) $(am__EXEEXT_15) $(am__EXEEXT_19)
TESTS = $(am__EXEEXT_2) $(am__EXEEXT_15) $(dist_check_SCRIPTS)

am__dist_check_SCRIPTS_DIST = rfc2253-escape-test.sh \
	rsa-md5-collision/rsa-md5-collision.sh systemkey.sh \
	dtls/dtls.sh dtls/dtls-resume.sh fastopen.sh pkgconfig.sh \
	starttls.sh starttls-ftp.sh starttls-smtp.sh starttls-lmtp.sh \
	starttls-pop3.sh starttls-xmpp.sh starttls-nntp.sh \
	starttls-sieve.sh ocsp-tests/ocsp-tls-connection.sh \
	ocsp-tests/ocsp-must-staple-connection.sh \
	ocsp-tests/ocsp-test.sh cipher-listings.sh sni-hostname.sh \
	server-multi-keys.sh psktool.sh ocsp-tests/ocsp-load-chain.sh \
	gnutls-cli-save-data.sh gnutls-cli-debug.sh sni-resume.sh \
	ocsp-tests/ocsptool.sh cert-reencoding.sh pkcs7-cat.sh \
	long-crl.sh serv-udp.sh logfile-option.sh gnutls-cli-resume.sh \
	profile-tests.sh server-weak-keys.sh system-override-sig.sh \
	system-override-hash.sh system-override-versions.sh \
	system-override-invalid.sh system-override-curves.sh \
	system-override-profiles.sh system-override-tls.sh \
	system-override-kx.sh \
	system-override-default-priority-string.sh \
	gnutls-cli-self-signed.sh gnutls-cli-invalid-crl.sh \
	gnutls-cli-rawpk.sh dh-fips-approved.sh p11-kit-trust.sh \
	testpkcs11.sh certtool-pkcs11.sh p11-kit-load.sh danetool.sh \
	tpmtool_test.sh

#am__EXEEXT_1 = sanity-cpp$(EXEEXT)
am__EXEEXT_2 = $(am__EXEEXT_1)
#am__EXEEXT_3 = dtls-with-seccomp$(EXEEXT) \
#	tls-with-seccomp$(EXEEXT) \
#	dtls-client-with-seccomp$(EXEEXT) \
#	tls-client-with-seccomp$(EXEEXT)
am__EXEEXT_4 = strict-der$(EXEEXT)
am__EXEEXT_5 = system-prio-file$(EXEEXT)
#am__EXEEXT_6 = dtls-sliding-window$(EXEEXT) \
#	ip-utils$(EXEEXT) \
#	name-constraints-ip$(EXEEXT) \
#	conv-utf8$(EXEEXT) str-unicode$(EXEEXT) \
#	str-idna$(EXEEXT) tls10-prf$(EXEEXT) \
#	tls12-prf$(EXEEXT) \
#	gnutls_record_overhead$(EXEEXT) \
#	eagain$(EXEEXT) \
#	tls12-rehandshake-cert$(EXEEXT) \
#	eagain-auto-auth$(EXEEXT)
#am__EXEEXT_7 = pkcs11-cert-import-url-exts$(EXEEXT) \
#	pkcs11-get-exts$(EXEEXT) \
#	pkcs11-get-raw-issuer-exts$(EXEEXT) \
#	pkcs11-cert-import-url4-exts$(EXEEXT) \
#	pkcs11/pkcs11-chainverify$(EXEEXT) \
#	pkcs11/pkcs11-get-issuer$(EXEEXT) \
#	pkcs11/pkcs11-is-known$(EXEEXT) \
#	pkcs11/pkcs11-combo$(EXEEXT) \
#	pkcs11/pkcs11-privkey$(EXEEXT) \
#	pkcs11/pkcs11-pubkey-import-rsa$(EXEEXT) \
#	pkcs11/pkcs11-pubkey-import-ecdsa$(EXEEXT) \
#	pkcs11-import-url-privkey$(EXEEXT) \
#	pkcs11-privkey-fork$(EXEEXT) \
#	pkcs11/pkcs11-ec-privkey-test$(EXEEXT) \
#	pkcs11-privkey-always-auth$(EXEEXT) \
#	pkcs11-privkey-export$(EXEEXT) \
#	pkcs11/pkcs11-import-with-pin$(EXEEXT) \
#	pkcs11/pkcs11-privkey-pthread$(EXEEXT) \
#	pkcs11/pkcs11-pin-func$(EXEEXT) \
#	pkcs11/pkcs11-obj-import$(EXEEXT) \
#	pkcs11-privkey-fork-reinit$(EXEEXT) \
#	pkcs11-mechanisms$(EXEEXT) \
#	pkcs11-privkey-safenet-always-auth$(EXEEXT) \
#	pkcs11/pkcs11-rsa-pss-privkey-test$(EXEEXT) \
#	pkcs11/tls-neg-pkcs11-key$(EXEEXT) \
#	pkcs11/pkcs11-privkey-generate$(EXEEXT) \
#	pkcs11/gnutls_x509_crt_list_import_url$(EXEEXT) \
#	pkcs11/gnutls_pcert_list_import_x509_file$(EXEEXT) \
#	pkcs11/pkcs11-eddsa-privkey-test$(EXEEXT) \
#	pkcs11-token-raw$(EXEEXT) \
#	pkcs11-obj-raw$(EXEEXT)
##am__EXEEXT_8 = pkcs11-import-url-privkey-caps$(EXEEXT)
am__EXEEXT_9 = ocsp$(EXEEXT)
#am__EXEEXT_10 = dane$(EXEEXT) dane-strcodes$(EXEEXT)
am__EXEEXT_11 = openssl$(EXEEXT)
am__EXEEXT_12 = x509self$(EXEEXT) x509dn$(EXEEXT) \
	anonself$(EXEEXT) pskself$(EXEEXT) \
	pskself2$(EXEEXT) dhepskself$(EXEEXT) \
	setcredcrash$(EXEEXT) \
	tls12-resume-x509$(EXEEXT) \
	tls12-resume-psk$(EXEEXT) \
	tls12-resume-anon$(EXEEXT) \
	tls13-resume-x509$(EXEEXT) \
	tls13-resume-psk$(EXEEXT) \
	tls13-early-data$(EXEEXT) \
	tls13-early-data-neg$(EXEEXT) \
	tls13-early-data-neg2$(EXEEXT) \
	resume-with-record-size-limit$(EXEEXT)
#am__EXEEXT_13 = tls13/post-handshake-with-cert-pkcs11$(EXEEXT) \
#	pkcs11/tls-neg-pkcs11-no-key$(EXEEXT) \
#	global-init-override$(EXEEXT)
#am__EXEEXT_14 = win32-certopenstore$(EXEEXT)

am__EXEEXT_15 = tls13/supported_versions$(EXEEXT) \
	tls13/tls12-no-tls13-exts$(EXEEXT) \
	tls13/post-handshake-with-cert$(EXEEXT) \
	tls13/post-handshake-without-cert$(EXEEXT) \
	tls13/cookie$(EXEEXT) tls13/key_share$(EXEEXT) \
	tls13/prf$(EXEEXT) tls13/prf-early$(EXEEXT) \
	tls13/post-handshake-with-cert-ticket$(EXEEXT) \
	tls12-rollback-detection$(EXEEXT) \
	tls11-rollback-detection$(EXEEXT) \
	tls12-check-rollback-val$(EXEEXT) \
	tls11-check-rollback-val$(EXEEXT) \
	tls13/post-handshake-with-psk$(EXEEXT) \
	tls13/post-handshake-with-cert-auto$(EXEEXT) \
	tls13/anti_replay$(EXEEXT) tls13/hello_retry_request$(EXEEXT) \
	tls13/hello_retry_request_resume$(EXEEXT) \
	tls13/psk-ext$(EXEEXT) tls13/key_update$(EXEEXT) \
	tls13/key_update_multiple$(EXEEXT) tls13/key_limits$(EXEEXT) \
	tls13/multi-ocsp$(EXEEXT) tls13/ocsp-client$(EXEEXT) \
	tls13/change_cipher_spec$(EXEEXT) tls13-cipher-neg$(EXEEXT) \
	tls13/no-psk-exts$(EXEEXT) tls13/psk-dumbfw$(EXEEXT) \
	tls13-early-start$(EXEEXT) tls13/no-auto-send-ticket$(EXEEXT) \
	mini-record-2$(EXEEXT) simple$(EXEEXT) \
	gnutls_hmac_fast$(EXEEXT) set_pkcs12_cred$(EXEEXT) \
	cert$(EXEEXT) certuniqueid$(EXEEXT) tls-neg-ext-key$(EXEEXT) \
	mpi$(EXEEXT) certificate_set_x509_crl$(EXEEXT) dn$(EXEEXT) \
	parse_ca$(EXEEXT) x509-dn$(EXEEXT) x509-dn-decode$(EXEEXT) \
	record-sizes$(EXEEXT) hostname-check$(EXEEXT) \
	cve-2008-4989$(EXEEXT) pkcs12_s2k$(EXEEXT) \
	chainverify$(EXEEXT) missingissuer$(EXEEXT) \
	missingissuer_aia$(EXEEXT) record-sizes-range$(EXEEXT) \
	crq_key_id$(EXEEXT) x509sign-verify$(EXEEXT) \
	sign-verify$(EXEEXT) cve-2009-1415$(EXEEXT) \
	cve-2009-1416$(EXEEXT) tls10-server-kx-neg$(EXEEXT) \
	tls11-server-kx-neg$(EXEEXT) tls12-server-kx-neg$(EXEEXT) \
	ssl30-server-kx-neg$(EXEEXT) tls12-cipher-neg$(EXEEXT) \
	tls11-cipher-neg$(EXEEXT) tls10-cipher-neg$(EXEEXT) \
	ssl30-cipher-neg$(EXEEXT) crq_apis$(EXEEXT) \
	init_roundtrip$(EXEEXT) pkcs12_s2k_pem$(EXEEXT) dn2$(EXEEXT) \
	tls12-rehandshake-cert-3$(EXEEXT) nul-in-x509-names$(EXEEXT) \
	x509_altname$(EXEEXT) pkcs12_encode$(EXEEXT) \
	mini-x509$(EXEEXT) gnutls_session_set_id$(EXEEXT) \
	rng-fork$(EXEEXT) mini-eagain-dtls$(EXEEXT) \
	resume-dtls$(EXEEXT) empty_retrieve_function$(EXEEXT) \
	tls13-rehandshake-cert$(EXEEXT) gnutls_ext_raw_parse$(EXEEXT) \
	handshake-large-cert$(EXEEXT) x509cert$(EXEEXT) \
	x509cert-tl$(EXEEXT) infoaccess$(EXEEXT) \
	mini-dtls-hello-verify$(EXEEXT) \
	sign-verify-ed25519-rfc8080$(EXEEXT) trustdb-tofu$(EXEEXT) \
	dtls-rehandshake-anon$(EXEEXT) mini-alpn$(EXEEXT) \
	mini-dtls-large$(EXEEXT) mini-termination$(EXEEXT) \
	mini-x509-cas$(EXEEXT) mini-x509-2$(EXEEXT) \
	pkcs12_simple$(EXEEXT) tls-pthread$(EXEEXT) \
	mini-emsgsize-dtls$(EXEEXT) chainverify-unsorted$(EXEEXT) \
	mini-overhead$(EXEEXT) tls12-ffdhe$(EXEEXT) \
	mini-dtls-heartbeat$(EXEEXT) mini-x509-callbacks$(EXEEXT) \
	key-openssl$(EXEEXT) priorities$(EXEEXT) \
	priorities-groups$(EXEEXT) gnutls_x509_privkey_import$(EXEEXT) \
	gnutls_x509_crt_list_import$(EXEEXT) time$(EXEEXT) \
	x509-server-verify$(EXEEXT) sign-verify-ext4$(EXEEXT) \
	tls-neg-ext4-key$(EXEEXT) resume-lifetime$(EXEEXT) \
	mini-dtls-srtp$(EXEEXT) rsa-encrypt-decrypt$(EXEEXT) \
	mini-loss-time$(EXEEXT) gnutls-strcodes$(EXEEXT) \
	mini-record$(EXEEXT) mini-dtls-record$(EXEEXT) \
	handshake-timeout$(EXEEXT) mini-record-range$(EXEEXT) \
	cert-status$(EXEEXT) fips-mode-pthread$(EXEEXT) \
	rsa-psk$(EXEEXT) global-init$(EXEEXT) sec-params$(EXEEXT) \
	sign-verify-data$(EXEEXT) fips-test$(EXEEXT) \
	fips-override-test$(EXEEXT) mini-global-load$(EXEEXT) \
	name-constraints$(EXEEXT) x509-extensions$(EXEEXT) \
	long-session-id$(EXEEXT) mini-x509-callbacks-intr$(EXEEXT) \
	mini-dtls-lowmtu$(EXEEXT) set_x509_key_file-late$(EXEEXT) \
	crlverify$(EXEEXT) mini-dtls-discard$(EXEEXT) \
	mini-record-failure$(EXEEXT) openconnect-dtls12$(EXEEXT) \
	tls12-rehandshake-cert-2$(EXEEXT) custom-urls$(EXEEXT) \
	set_x509_key_mem$(EXEEXT) set_x509_key_file$(EXEEXT) \
	tls12-rehandshake-cert-auto$(EXEEXT) \
	tls12-rehandshake-set-prio$(EXEEXT) \
	mini-chain-unsorted$(EXEEXT) x509-verify-with-crl$(EXEEXT) \
	mini-dtls-mtu$(EXEEXT) privkey-verify-broken$(EXEEXT) \
	mini-dtls-record-asym$(EXEEXT) key-import-export$(EXEEXT) \
	priority-set$(EXEEXT) priority-set2$(EXEEXT) \
	pubkey-import-export$(EXEEXT) sign-is-secure$(EXEEXT) \
	spki$(EXEEXT) spki-abstract$(EXEEXT) rsa-rsa-pss$(EXEEXT) \
	mini-dtls-fork$(EXEEXT) dtls-pthread$(EXEEXT) \
	mini-key-material$(EXEEXT) x509cert-invalid$(EXEEXT) \
	tls-ext-register$(EXEEXT) tls-supplemental$(EXEEXT) \
	mini-dtls0-9$(EXEEXT) duplicate-extensions$(EXEEXT) \
	record-retvals$(EXEEXT) mini-server-name$(EXEEXT) \
	tls-etm$(EXEEXT) tls-force-etm$(EXEEXT) \
	x509-cert-callback$(EXEEXT) alerts$(EXEEXT) \
	client-sign-md5-rep$(EXEEXT) \
	tls12-invalid-key-exchanges$(EXEEXT) session-rdn-read$(EXEEXT) \
	tls13-cert-key-exchange$(EXEEXT) \
	x509-cert-callback-ocsp$(EXEEXT) \
	gnutls_ocsp_resp_list_import2$(EXEEXT) \
	server-sign-md5-rep$(EXEEXT) privkey-keygen$(EXEEXT) \
	mini-tls-nonblock$(EXEEXT) no-signal$(EXEEXT) \
	pkcs7-gen$(EXEEXT) dtls-etm$(EXEEXT) \
	x509sign-verify-rsa$(EXEEXT) x509sign-verify-ecdsa$(EXEEXT) \
	x509sign-verify-gost$(EXEEXT) cipher-alignment$(EXEEXT) \
	oids$(EXEEXT) atfork$(EXEEXT) prf$(EXEEXT) psk-file$(EXEEXT) \
	priority-init2$(EXEEXT) post-client-hello-change-prio$(EXEEXT) \
	status-request$(EXEEXT) status-request-ok$(EXEEXT) \
	rfc7633-missing$(EXEEXT) sign-verify-ext$(EXEEXT) \
	fallback-scsv$(EXEEXT) pkcs8-key-decode$(EXEEXT) urls$(EXEEXT) \
	dtls-rehandshake-cert$(EXEEXT) rfc7633-ok$(EXEEXT) \
	key-usage-rsa$(EXEEXT) key-usage-ecdhe-rsa$(EXEEXT) \
	mini-session-verify-function$(EXEEXT) auto-verify$(EXEEXT) \
	record-timeouts$(EXEEXT) mini-dtls-hello-verify-48$(EXEEXT) \
	set-default-prio$(EXEEXT) tls12-anon-upgrade$(EXEEXT) \
	tlsext-decoding$(EXEEXT) rsa-psk-cb$(EXEEXT) \
	gnutls-ids$(EXEEXT) rehandshake-switch-cert$(EXEEXT) \
	rehandshake-switch-cert-allow$(EXEEXT) \
	rehandshake-switch-cert-client$(EXEEXT) \
	rehandshake-switch-cert-client-allow$(EXEEXT) \
	handshake-versions$(EXEEXT) dtls-handshake-versions$(EXEEXT) \
	dtls-max-record$(EXEEXT) tls12-max-record$(EXEEXT) \
	alpn-server-prec$(EXEEXT) ocsp-filename-memleak$(EXEEXT) \
	dh-params$(EXEEXT) rehandshake-ext-secret$(EXEEXT) \
	pcert-list$(EXEEXT) session-export-funcs$(EXEEXT) \
	handshake-false-start$(EXEEXT) version-checks$(EXEEXT) \
	key-material-dtls$(EXEEXT) key-material-set-dtls$(EXEEXT) \
	name-constraints-merge$(EXEEXT) crl-basic$(EXEEXT) \
	crq-basic$(EXEEXT) send-client-cert$(EXEEXT) \
	custom-urls-override$(EXEEXT) hex$(EXEEXT) \
	rehandshake-switch-psk-id$(EXEEXT) \
	rehandshake-switch-srp-id$(EXEEXT) base64$(EXEEXT) \
	srpbase64$(EXEEXT) pkcs1-digest-info$(EXEEXT) \
	set_x509_key$(EXEEXT) set_x509_key_file_der$(EXEEXT) \
	set_x509_pkcs12_key$(EXEEXT) crt_apis$(EXEEXT) \
	tls12-cert-key-exchange$(EXEEXT) \
	tls11-cert-key-exchange$(EXEEXT) \
	tls10-cert-key-exchange$(EXEEXT) \
	ssl30-cert-key-exchange$(EXEEXT) \
	dtls12-cert-key-exchange$(EXEEXT) \
	dtls10-cert-key-exchange$(EXEEXT) \
	x509-cert-callback-legacy$(EXEEXT) keylog-env$(EXEEXT) \
	ssl2-hello$(EXEEXT) tlsfeature-ext$(EXEEXT) \
	dtls-rehandshake-cert-2$(EXEEXT) \
	dtls-session-ticket-lost$(EXEEXT) tlsfeature-crt$(EXEEXT) \
	dtls-rehandshake-cert-3$(EXEEXT) \
	resume-with-false-start$(EXEEXT) \
	set_x509_key_file_ocsp$(EXEEXT) client-fastopen$(EXEEXT) \
	rng-sigint$(EXEEXT) srp$(EXEEXT) rng-pthread$(EXEEXT) \
	safe-renegotiation/srn0$(EXEEXT) \
	safe-renegotiation/srn1$(EXEEXT) \
	safe-renegotiation/srn2$(EXEEXT) \
	safe-renegotiation/srn3$(EXEEXT) \
	safe-renegotiation/srn4$(EXEEXT) \
	safe-renegotiation/srn5$(EXEEXT) rsa-illegal-import$(EXEEXT) \
	set_x509_ocsp_multi_invalid$(EXEEXT) set_key$(EXEEXT) \
	set_x509_key_file_ocsp_multi2$(EXEEXT) \
	set_x509_ocsp_multi_unknown$(EXEEXT) \
	set_x509_ocsp_multi_pem$(EXEEXT) tls-ext-not-in-dtls$(EXEEXT) \
	set_key_utf8$(EXEEXT) set_x509_key_utf8$(EXEEXT) \
	insecure_key$(EXEEXT) handshake-large-packet$(EXEEXT) \
	client_dsa_key$(EXEEXT) server_ecdsa_key$(EXEEXT) \
	tls-session-ext-register$(EXEEXT) \
	tls-session-supplemental$(EXEEXT) multi-alerts$(EXEEXT) \
	naked-alerts$(EXEEXT) pkcs7-cat-parse$(EXEEXT) \
	set_known_dh_params_x509$(EXEEXT) \
	set_known_dh_params_anon$(EXEEXT) \
	set_known_dh_params_psk$(EXEEXT) session-tickets-ok$(EXEEXT) \
	session-tickets-missing$(EXEEXT) \
	set_x509_key_file_legacy$(EXEEXT) status-request-ext$(EXEEXT) \
	gnutls_x509_crt_sign$(EXEEXT) gnutls_x509_crq_sign$(EXEEXT) \
	dtls-repro-20170915$(EXEEXT) rng-no-onload$(EXEEXT) \
	dtls1-2-mtu-check$(EXEEXT) crl_apis$(EXEEXT) \
	cert_verify_inv_utf8$(EXEEXT) no-extensions$(EXEEXT) \
	hostname-check-utf8$(EXEEXT) \
	pkcs8-key-decode-encrypted$(EXEEXT) priority-mix$(EXEEXT) \
	pkcs7$(EXEEXT) send-data-before-handshake$(EXEEXT) \
	recv-data-before-handshake$(EXEEXT) crt_inv_write$(EXEEXT) \
	x509sign-verify-error$(EXEEXT) rng-op-nonce$(EXEEXT) \
	rng-op-random$(EXEEXT) rng-op-key$(EXEEXT) \
	x509-dn-decode-compat$(EXEEXT) ip-check$(EXEEXT) \
	mini-x509-ipaddr$(EXEEXT) trust-store$(EXEEXT) \
	base64-raw$(EXEEXT) random-art$(EXEEXT) dhex509self$(EXEEXT) \
	dss-sig-val$(EXEEXT) sign-pk-api$(EXEEXT) \
	tls-session-ext-override$(EXEEXT) record-pad$(EXEEXT) \
	tls13-server-kx-neg$(EXEEXT) \
	gnutls_ext_raw_parse_dtls$(EXEEXT) key-export-pkcs8$(EXEEXT) \
	null_retrieve_function$(EXEEXT) tls-record-size-limit$(EXEEXT) \
	tls-crt_type-neg$(EXEEXT) resume-with-stek-expiration$(EXEEXT) \
	resume-with-previous-stek$(EXEEXT) rawpk-api$(EXEEXT) \
	tls-record-size-limit-asym$(EXEEXT) dh-compute$(EXEEXT) \
	ecdh-compute$(EXEEXT) sign-verify-data-newapi$(EXEEXT) \
	sign-verify-newapi$(EXEEXT) sign-verify-deterministic$(EXEEXT) \
	iov$(EXEEXT) aead-cipher-vec$(EXEEXT) \
	tls13-without-timeout-func$(EXEEXT) buffer$(EXEEXT) \
	status-request-revoked$(EXEEXT) \
	set_x509_ocsp_multi_cli$(EXEEXT) kdf-api$(EXEEXT) \
	keylog-func$(EXEEXT) handshake-write$(EXEEXT) \
	x509cert-dntypes$(EXEEXT) id-on-xmppAddr$(EXEEXT) \
	tls13-compat-mode$(EXEEXT) tls-channel-binding$(EXEEXT) \
	$(am__EXEEXT_3) $(am__EXEEXT_4) $(am__EXEEXT_5) \
	$(am__EXEEXT_6) $(am__EXEEXT_7) $(am__EXEEXT_8) \
	$(am__EXEEXT_9) $(am__EXEEXT_10) $(am__EXEEXT_11) \
	$(am__EXEEXT_12) $(am__EXEEXT_13) $(am__EXEEXT_14)


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


sanity-cpp.log: sanity-cpp$(EXEEXT)
	@p='sanity-cpp$(EXEEXT)'; \
	b='sanity-cpp'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls13/supported_versions.log: tls13/supported_versions$(EXEEXT)
	@p='tls13/supported_versions$(EXEEXT)'; \
	b='tls13/supported_versions'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls13/tls12-no-tls13-exts.log: tls13/tls12-no-tls13-exts$(EXEEXT)
	@p='tls13/tls12-no-tls13-exts$(EXEEXT)'; \
	b='tls13/tls12-no-tls13-exts'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls13/post-handshake-with-cert.log: tls13/post-handshake-with-cert$(EXEEXT)
	@p='tls13/post-handshake-with-cert$(EXEEXT)'; \
	b='tls13/post-handshake-with-cert'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls13/post-handshake-without-cert.log: tls13/post-handshake-without-cert$(EXEEXT)
	@p='tls13/post-handshake-without-cert$(EXEEXT)'; \
	b='tls13/post-handshake-without-cert'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls13/cookie.log: tls13/cookie$(EXEEXT)
	@p='tls13/cookie$(EXEEXT)'; \
	b='tls13/cookie'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls13/key_share.log: tls13/key_share$(EXEEXT)
	@p='tls13/key_share$(EXEEXT)'; \
	b='tls13/key_share'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls13/prf.log: tls13/prf$(EXEEXT)
	@p='tls13/prf$(EXEEXT)'; \
	b='tls13/prf'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls13/prf-early.log: tls13/prf-early$(EXEEXT)
	@p='tls13/prf-early$(EXEEXT)'; \
	b='tls13/prf-early'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls13/post-handshake-with-cert-ticket.log: tls13/post-handshake-with-cert-ticket$(EXEEXT)
	@p='tls13/post-handshake-with-cert-ticket$(EXEEXT)'; \
	b='tls13/post-handshake-with-cert-ticket'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls12-rollback-detection.log: tls12-rollback-detection$(EXEEXT)
	@p='tls12-rollback-detection$(EXEEXT)'; \
	b='tls12-rollback-detection'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls11-rollback-detection.log: tls11-rollback-detection$(EXEEXT)
	@p='tls11-rollback-detection$(EXEEXT)'; \
	b='tls11-rollback-detection'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls12-check-rollback-val.log: tls12-check-rollback-val$(EXEEXT)
	@p='tls12-check-rollback-val$(EXEEXT)'; \
	b='tls12-check-rollback-val'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls11-check-rollback-val.log: tls11-check-rollback-val$(EXEEXT)
	@p='tls11-check-rollback-val$(EXEEXT)'; \
	b='tls11-check-rollback-val'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls13/post-handshake-with-psk.log: tls13/post-handshake-with-psk$(EXEEXT)
	@p='tls13/post-handshake-with-psk$(EXEEXT)'; \
	b='tls13/post-handshake-with-psk'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls13/post-handshake-with-cert-auto.log: tls13/post-handshake-with-cert-auto$(EXEEXT)
	@p='tls13/post-handshake-with-cert-auto$(EXEEXT)'; \
	b='tls13/post-handshake-with-cert-auto'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls13/anti_replay.log: tls13/anti_replay$(EXEEXT)
	@p='tls13/anti_replay$(EXEEXT)'; \
	b='tls13/anti_replay'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls13/hello_retry_request.log: tls13/hello_retry_request$(EXEEXT)
	@p='tls13/hello_retry_request$(EXEEXT)'; \
	b='tls13/hello_retry_request'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls13/hello_retry_request_resume.log: tls13/hello_retry_request_resume$(EXEEXT)
	@p='tls13/hello_retry_request_resume$(EXEEXT)'; \
	b='tls13/hello_retry_request_resume'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls13/psk-ext.log: tls13/psk-ext$(EXEEXT)
	@p='tls13/psk-ext$(EXEEXT)'; \
	b='tls13/psk-ext'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls13/key_update.log: tls13/key_update$(EXEEXT)
	@p='tls13/key_update$(EXEEXT)'; \
	b='tls13/key_update'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls13/key_update_multiple.log: tls13/key_update_multiple$(EXEEXT)
	@p='tls13/key_update_multiple$(EXEEXT)'; \
	b='tls13/key_update_multiple'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls13/key_limits.log: tls13/key_limits$(EXEEXT)
	@p='tls13/key_limits$(EXEEXT)'; \
	b='tls13/key_limits'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls13/multi-ocsp.log: tls13/multi-ocsp$(EXEEXT)
	@p='tls13/multi-ocsp$(EXEEXT)'; \
	b='tls13/multi-ocsp'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls13/ocsp-client.log: tls13/ocsp-client$(EXEEXT)
	@p='tls13/ocsp-client$(EXEEXT)'; \
	b='tls13/ocsp-client'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls13/change_cipher_spec.log: tls13/change_cipher_spec$(EXEEXT)
	@p='tls13/change_cipher_spec$(EXEEXT)'; \
	b='tls13/change_cipher_spec'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls13-cipher-neg.log: tls13-cipher-neg$(EXEEXT)
	@p='tls13-cipher-neg$(EXEEXT)'; \
	b='tls13-cipher-neg'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls13/no-psk-exts.log: tls13/no-psk-exts$(EXEEXT)
	@p='tls13/no-psk-exts$(EXEEXT)'; \
	b='tls13/no-psk-exts'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls13/psk-dumbfw.log: tls13/psk-dumbfw$(EXEEXT)
	@p='tls13/psk-dumbfw$(EXEEXT)'; \
	b='tls13/psk-dumbfw'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls13-early-start.log: tls13-early-start$(EXEEXT)
	@p='tls13-early-start$(EXEEXT)'; \
	b='tls13-early-start'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls13/no-auto-send-ticket.log: tls13/no-auto-send-ticket$(EXEEXT)
	@p='tls13/no-auto-send-ticket$(EXEEXT)'; \
	b='tls13/no-auto-send-ticket'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
mini-record-2.log: mini-record-2$(EXEEXT)
	@p='mini-record-2$(EXEEXT)'; \
	b='mini-record-2'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
simple.log: simple$(EXEEXT)
	@p='simple$(EXEEXT)'; \
	b='simple'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
gnutls_hmac_fast.log: gnutls_hmac_fast$(EXEEXT)
	@p='gnutls_hmac_fast$(EXEEXT)'; \
	b='gnutls_hmac_fast'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
set_pkcs12_cred.log: set_pkcs12_cred$(EXEEXT)
	@p='set_pkcs12_cred$(EXEEXT)'; \
	b='set_pkcs12_cred'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
cert.log: cert$(EXEEXT)
	@p='cert$(EXEEXT)'; \
	b='cert'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
certuniqueid.log: certuniqueid$(EXEEXT)
	@p='certuniqueid$(EXEEXT)'; \
	b='certuniqueid'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls-neg-ext-key.log: tls-neg-ext-key$(EXEEXT)
	@p='tls-neg-ext-key$(EXEEXT)'; \
	b='tls-neg-ext-key'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
mpi.log: mpi$(EXEEXT)
	@p='mpi$(EXEEXT)'; \
	b='mpi'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
certificate_set_x509_crl.log: certificate_set_x509_crl$(EXEEXT)
	@p='certificate_set_x509_crl$(EXEEXT)'; \
	b='certificate_set_x509_crl'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
dn.log: dn$(EXEEXT)
	@p='dn$(EXEEXT)'; \
	b='dn'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
parse_ca.log: parse_ca$(EXEEXT)
	@p='parse_ca$(EXEEXT)'; \
	b='parse_ca'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
x509-dn.log: x509-dn$(EXEEXT)
	@p='x509-dn$(EXEEXT)'; \
	b='x509-dn'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
x509-dn-decode.log: x509-dn-decode$(EXEEXT)
	@p='x509-dn-decode$(EXEEXT)'; \
	b='x509-dn-decode'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
record-sizes.log: record-sizes$(EXEEXT)
	@p='record-sizes$(EXEEXT)'; \
	b='record-sizes'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
hostname-check.log: hostname-check$(EXEEXT)
	@p='hostname-check$(EXEEXT)'; \
	b='hostname-check'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
cve-2008-4989.log: cve-2008-4989$(EXEEXT)
	@p='cve-2008-4989$(EXEEXT)'; \
	b='cve-2008-4989'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs12_s2k.log: pkcs12_s2k$(EXEEXT)
	@p='pkcs12_s2k$(EXEEXT)'; \
	b='pkcs12_s2k'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
chainverify.log: chainverify$(EXEEXT)
	@p='chainverify$(EXEEXT)'; \
	b='chainverify'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
missingissuer.log: missingissuer$(EXEEXT)
	@p='missingissuer$(EXEEXT)'; \
	b='missingissuer'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
missingissuer_aia.log: missingissuer_aia$(EXEEXT)
	@p='missingissuer_aia$(EXEEXT)'; \
	b='missingissuer_aia'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
record-sizes-range.log: record-sizes-range$(EXEEXT)
	@p='record-sizes-range$(EXEEXT)'; \
	b='record-sizes-range'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
crq_key_id.log: crq_key_id$(EXEEXT)
	@p='crq_key_id$(EXEEXT)'; \
	b='crq_key_id'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
x509sign-verify.log: x509sign-verify$(EXEEXT)
	@p='x509sign-verify$(EXEEXT)'; \
	b='x509sign-verify'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
sign-verify.log: sign-verify$(EXEEXT)
	@p='sign-verify$(EXEEXT)'; \
	b='sign-verify'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
cve-2009-1415.log: cve-2009-1415$(EXEEXT)
	@p='cve-2009-1415$(EXEEXT)'; \
	b='cve-2009-1415'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
cve-2009-1416.log: cve-2009-1416$(EXEEXT)
	@p='cve-2009-1416$(EXEEXT)'; \
	b='cve-2009-1416'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls10-server-kx-neg.log: tls10-server-kx-neg$(EXEEXT)
	@p='tls10-server-kx-neg$(EXEEXT)'; \
	b='tls10-server-kx-neg'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls11-server-kx-neg.log: tls11-server-kx-neg$(EXEEXT)
	@p='tls11-server-kx-neg$(EXEEXT)'; \
	b='tls11-server-kx-neg'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls12-server-kx-neg.log: tls12-server-kx-neg$(EXEEXT)
	@p='tls12-server-kx-neg$(EXEEXT)'; \
	b='tls12-server-kx-neg'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
ssl30-server-kx-neg.log: ssl30-server-kx-neg$(EXEEXT)
	@p='ssl30-server-kx-neg$(EXEEXT)'; \
	b='ssl30-server-kx-neg'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls12-cipher-neg.log: tls12-cipher-neg$(EXEEXT)
	@p='tls12-cipher-neg$(EXEEXT)'; \
	b='tls12-cipher-neg'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls11-cipher-neg.log: tls11-cipher-neg$(EXEEXT)
	@p='tls11-cipher-neg$(EXEEXT)'; \
	b='tls11-cipher-neg'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls10-cipher-neg.log: tls10-cipher-neg$(EXEEXT)
	@p='tls10-cipher-neg$(EXEEXT)'; \
	b='tls10-cipher-neg'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
ssl30-cipher-neg.log: ssl30-cipher-neg$(EXEEXT)
	@p='ssl30-cipher-neg$(EXEEXT)'; \
	b='ssl30-cipher-neg'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
crq_apis.log: crq_apis$(EXEEXT)
	@p='crq_apis$(EXEEXT)'; \
	b='crq_apis'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
init_roundtrip.log: init_roundtrip$(EXEEXT)
	@p='init_roundtrip$(EXEEXT)'; \
	b='init_roundtrip'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs12_s2k_pem.log: pkcs12_s2k_pem$(EXEEXT)
	@p='pkcs12_s2k_pem$(EXEEXT)'; \
	b='pkcs12_s2k_pem'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
dn2.log: dn2$(EXEEXT)
	@p='dn2$(EXEEXT)'; \
	b='dn2'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls12-rehandshake-cert-3.log: tls12-rehandshake-cert-3$(EXEEXT)
	@p='tls12-rehandshake-cert-3$(EXEEXT)'; \
	b='tls12-rehandshake-cert-3'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
nul-in-x509-names.log: nul-in-x509-names$(EXEEXT)
	@p='nul-in-x509-names$(EXEEXT)'; \
	b='nul-in-x509-names'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
x509_altname.log: x509_altname$(EXEEXT)
	@p='x509_altname$(EXEEXT)'; \
	b='x509_altname'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs12_encode.log: pkcs12_encode$(EXEEXT)
	@p='pkcs12_encode$(EXEEXT)'; \
	b='pkcs12_encode'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
mini-x509.log: mini-x509$(EXEEXT)
	@p='mini-x509$(EXEEXT)'; \
	b='mini-x509'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
gnutls_session_set_id.log: gnutls_session_set_id$(EXEEXT)
	@p='gnutls_session_set_id$(EXEEXT)'; \
	b='gnutls_session_set_id'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
rng-fork.log: rng-fork$(EXEEXT)
	@p='rng-fork$(EXEEXT)'; \
	b='rng-fork'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
mini-eagain-dtls.log: mini-eagain-dtls$(EXEEXT)
	@p='mini-eagain-dtls$(EXEEXT)'; \
	b='mini-eagain-dtls'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
resume-dtls.log: resume-dtls$(EXEEXT)
	@p='resume-dtls$(EXEEXT)'; \
	b='resume-dtls'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
empty_retrieve_function.log: empty_retrieve_function$(EXEEXT)
	@p='empty_retrieve_function$(EXEEXT)'; \
	b='empty_retrieve_function'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls13-rehandshake-cert.log: tls13-rehandshake-cert$(EXEEXT)
	@p='tls13-rehandshake-cert$(EXEEXT)'; \
	b='tls13-rehandshake-cert'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
gnutls_ext_raw_parse.log: gnutls_ext_raw_parse$(EXEEXT)
	@p='gnutls_ext_raw_parse$(EXEEXT)'; \
	b='gnutls_ext_raw_parse'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
handshake-large-cert.log: handshake-large-cert$(EXEEXT)
	@p='handshake-large-cert$(EXEEXT)'; \
	b='handshake-large-cert'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
x509cert.log: x509cert$(EXEEXT)
	@p='x509cert$(EXEEXT)'; \
	b='x509cert'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
x509cert-tl.log: x509cert-tl$(EXEEXT)
	@p='x509cert-tl$(EXEEXT)'; \
	b='x509cert-tl'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
infoaccess.log: infoaccess$(EXEEXT)
	@p='infoaccess$(EXEEXT)'; \
	b='infoaccess'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
mini-dtls-hello-verify.log: mini-dtls-hello-verify$(EXEEXT)
	@p='mini-dtls-hello-verify$(EXEEXT)'; \
	b='mini-dtls-hello-verify'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
sign-verify-ed25519-rfc8080.log: sign-verify-ed25519-rfc8080$(EXEEXT)
	@p='sign-verify-ed25519-rfc8080$(EXEEXT)'; \
	b='sign-verify-ed25519-rfc8080'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
trustdb-tofu.log: trustdb-tofu$(EXEEXT)
	@p='trustdb-tofu$(EXEEXT)'; \
	b='trustdb-tofu'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
dtls-rehandshake-anon.log: dtls-rehandshake-anon$(EXEEXT)
	@p='dtls-rehandshake-anon$(EXEEXT)'; \
	b='dtls-rehandshake-anon'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
mini-alpn.log: mini-alpn$(EXEEXT)
	@p='mini-alpn$(EXEEXT)'; \
	b='mini-alpn'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
mini-dtls-large.log: mini-dtls-large$(EXEEXT)
	@p='mini-dtls-large$(EXEEXT)'; \
	b='mini-dtls-large'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
mini-termination.log: mini-termination$(EXEEXT)
	@p='mini-termination$(EXEEXT)'; \
	b='mini-termination'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
mini-x509-cas.log: mini-x509-cas$(EXEEXT)
	@p='mini-x509-cas$(EXEEXT)'; \
	b='mini-x509-cas'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
mini-x509-2.log: mini-x509-2$(EXEEXT)
	@p='mini-x509-2$(EXEEXT)'; \
	b='mini-x509-2'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs12_simple.log: pkcs12_simple$(EXEEXT)
	@p='pkcs12_simple$(EXEEXT)'; \
	b='pkcs12_simple'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls-pthread.log: tls-pthread$(EXEEXT)
	@p='tls-pthread$(EXEEXT)'; \
	b='tls-pthread'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
mini-emsgsize-dtls.log: mini-emsgsize-dtls$(EXEEXT)
	@p='mini-emsgsize-dtls$(EXEEXT)'; \
	b='mini-emsgsize-dtls'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
chainverify-unsorted.log: chainverify-unsorted$(EXEEXT)
	@p='chainverify-unsorted$(EXEEXT)'; \
	b='chainverify-unsorted'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
mini-overhead.log: mini-overhead$(EXEEXT)
	@p='mini-overhead$(EXEEXT)'; \
	b='mini-overhead'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls12-ffdhe.log: tls12-ffdhe$(EXEEXT)
	@p='tls12-ffdhe$(EXEEXT)'; \
	b='tls12-ffdhe'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
mini-dtls-heartbeat.log: mini-dtls-heartbeat$(EXEEXT)
	@p='mini-dtls-heartbeat$(EXEEXT)'; \
	b='mini-dtls-heartbeat'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
mini-x509-callbacks.log: mini-x509-callbacks$(EXEEXT)
	@p='mini-x509-callbacks$(EXEEXT)'; \
	b='mini-x509-callbacks'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
key-openssl.log: key-openssl$(EXEEXT)
	@p='key-openssl$(EXEEXT)'; \
	b='key-openssl'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
priorities.log: priorities$(EXEEXT)
	@p='priorities$(EXEEXT)'; \
	b='priorities'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
priorities-groups.log: priorities-groups$(EXEEXT)
	@p='priorities-groups$(EXEEXT)'; \
	b='priorities-groups'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
gnutls_x509_privkey_import.log: gnutls_x509_privkey_import$(EXEEXT)
	@p='gnutls_x509_privkey_import$(EXEEXT)'; \
	b='gnutls_x509_privkey_import'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
gnutls_x509_crt_list_import.log: gnutls_x509_crt_list_import$(EXEEXT)
	@p='gnutls_x509_crt_list_import$(EXEEXT)'; \
	b='gnutls_x509_crt_list_import'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
time.log: time$(EXEEXT)
	@p='time$(EXEEXT)'; \
	b='time'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
x509-server-verify.log: x509-server-verify$(EXEEXT)
	@p='x509-server-verify$(EXEEXT)'; \
	b='x509-server-verify'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
sign-verify-ext4.log: sign-verify-ext4$(EXEEXT)
	@p='sign-verify-ext4$(EXEEXT)'; \
	b='sign-verify-ext4'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls-neg-ext4-key.log: tls-neg-ext4-key$(EXEEXT)
	@p='tls-neg-ext4-key$(EXEEXT)'; \
	b='tls-neg-ext4-key'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
resume-lifetime.log: resume-lifetime$(EXEEXT)
	@p='resume-lifetime$(EXEEXT)'; \
	b='resume-lifetime'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
mini-dtls-srtp.log: mini-dtls-srtp$(EXEEXT)
	@p='mini-dtls-srtp$(EXEEXT)'; \
	b='mini-dtls-srtp'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
rsa-encrypt-decrypt.log: rsa-encrypt-decrypt$(EXEEXT)
	@p='rsa-encrypt-decrypt$(EXEEXT)'; \
	b='rsa-encrypt-decrypt'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
mini-loss-time.log: mini-loss-time$(EXEEXT)
	@p='mini-loss-time$(EXEEXT)'; \
	b='mini-loss-time'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
gnutls-strcodes.log: gnutls-strcodes$(EXEEXT)
	@p='gnutls-strcodes$(EXEEXT)'; \
	b='gnutls-strcodes'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
mini-record.log: mini-record$(EXEEXT)
	@p='mini-record$(EXEEXT)'; \
	b='mini-record'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
mini-dtls-record.log: mini-dtls-record$(EXEEXT)
	@p='mini-dtls-record$(EXEEXT)'; \
	b='mini-dtls-record'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
handshake-timeout.log: handshake-timeout$(EXEEXT)
	@p='handshake-timeout$(EXEEXT)'; \
	b='handshake-timeout'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
mini-record-range.log: mini-record-range$(EXEEXT)
	@p='mini-record-range$(EXEEXT)'; \
	b='mini-record-range'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
cert-status.log: cert-status$(EXEEXT)
	@p='cert-status$(EXEEXT)'; \
	b='cert-status'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
fips-mode-pthread.log: fips-mode-pthread$(EXEEXT)
	@p='fips-mode-pthread$(EXEEXT)'; \
	b='fips-mode-pthread'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
rsa-psk.log: rsa-psk$(EXEEXT)
	@p='rsa-psk$(EXEEXT)'; \
	b='rsa-psk'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
global-init.log: global-init$(EXEEXT)
	@p='global-init$(EXEEXT)'; \
	b='global-init'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
sec-params.log: sec-params$(EXEEXT)
	@p='sec-params$(EXEEXT)'; \
	b='sec-params'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
sign-verify-data.log: sign-verify-data$(EXEEXT)
	@p='sign-verify-data$(EXEEXT)'; \
	b='sign-verify-data'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
fips-test.log: fips-test$(EXEEXT)
	@p='fips-test$(EXEEXT)'; \
	b='fips-test'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
fips-override-test.log: fips-override-test$(EXEEXT)
	@p='fips-override-test$(EXEEXT)'; \
	b='fips-override-test'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
mini-global-load.log: mini-global-load$(EXEEXT)
	@p='mini-global-load$(EXEEXT)'; \
	b='mini-global-load'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
name-constraints.log: name-constraints$(EXEEXT)
	@p='name-constraints$(EXEEXT)'; \
	b='name-constraints'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
x509-extensions.log: x509-extensions$(EXEEXT)
	@p='x509-extensions$(EXEEXT)'; \
	b='x509-extensions'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
long-session-id.log: long-session-id$(EXEEXT)
	@p='long-session-id$(EXEEXT)'; \
	b='long-session-id'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
mini-x509-callbacks-intr.log: mini-x509-callbacks-intr$(EXEEXT)
	@p='mini-x509-callbacks-intr$(EXEEXT)'; \
	b='mini-x509-callbacks-intr'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
mini-dtls-lowmtu.log: mini-dtls-lowmtu$(EXEEXT)
	@p='mini-dtls-lowmtu$(EXEEXT)'; \
	b='mini-dtls-lowmtu'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
set_x509_key_file-late.log: set_x509_key_file-late$(EXEEXT)
	@p='set_x509_key_file-late$(EXEEXT)'; \
	b='set_x509_key_file-late'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
crlverify.log: crlverify$(EXEEXT)
	@p='crlverify$(EXEEXT)'; \
	b='crlverify'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
mini-dtls-discard.log: mini-dtls-discard$(EXEEXT)
	@p='mini-dtls-discard$(EXEEXT)'; \
	b='mini-dtls-discard'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
mini-record-failure.log: mini-record-failure$(EXEEXT)
	@p='mini-record-failure$(EXEEXT)'; \
	b='mini-record-failure'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
openconnect-dtls12.log: openconnect-dtls12$(EXEEXT)
	@p='openconnect-dtls12$(EXEEXT)'; \
	b='openconnect-dtls12'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls12-rehandshake-cert-2.log: tls12-rehandshake-cert-2$(EXEEXT)
	@p='tls12-rehandshake-cert-2$(EXEEXT)'; \
	b='tls12-rehandshake-cert-2'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
custom-urls.log: custom-urls$(EXEEXT)
	@p='custom-urls$(EXEEXT)'; \
	b='custom-urls'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
set_x509_key_mem.log: set_x509_key_mem$(EXEEXT)
	@p='set_x509_key_mem$(EXEEXT)'; \
	b='set_x509_key_mem'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
set_x509_key_file.log: set_x509_key_file$(EXEEXT)
	@p='set_x509_key_file$(EXEEXT)'; \
	b='set_x509_key_file'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls12-rehandshake-cert-auto.log: tls12-rehandshake-cert-auto$(EXEEXT)
	@p='tls12-rehandshake-cert-auto$(EXEEXT)'; \
	b='tls12-rehandshake-cert-auto'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls12-rehandshake-set-prio.log: tls12-rehandshake-set-prio$(EXEEXT)
	@p='tls12-rehandshake-set-prio$(EXEEXT)'; \
	b='tls12-rehandshake-set-prio'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
mini-chain-unsorted.log: mini-chain-unsorted$(EXEEXT)
	@p='mini-chain-unsorted$(EXEEXT)'; \
	b='mini-chain-unsorted'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
x509-verify-with-crl.log: x509-verify-with-crl$(EXEEXT)
	@p='x509-verify-with-crl$(EXEEXT)'; \
	b='x509-verify-with-crl'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
mini-dtls-mtu.log: mini-dtls-mtu$(EXEEXT)
	@p='mini-dtls-mtu$(EXEEXT)'; \
	b='mini-dtls-mtu'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
privkey-verify-broken.log: privkey-verify-broken$(EXEEXT)
	@p='privkey-verify-broken$(EXEEXT)'; \
	b='privkey-verify-broken'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
mini-dtls-record-asym.log: mini-dtls-record-asym$(EXEEXT)
	@p='mini-dtls-record-asym$(EXEEXT)'; \
	b='mini-dtls-record-asym'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
key-import-export.log: key-import-export$(EXEEXT)
	@p='key-import-export$(EXEEXT)'; \
	b='key-import-export'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
priority-set.log: priority-set$(EXEEXT)
	@p='priority-set$(EXEEXT)'; \
	b='priority-set'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
priority-set2.log: priority-set2$(EXEEXT)
	@p='priority-set2$(EXEEXT)'; \
	b='priority-set2'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pubkey-import-export.log: pubkey-import-export$(EXEEXT)
	@p='pubkey-import-export$(EXEEXT)'; \
	b='pubkey-import-export'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
sign-is-secure.log: sign-is-secure$(EXEEXT)
	@p='sign-is-secure$(EXEEXT)'; \
	b='sign-is-secure'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
spki.log: spki$(EXEEXT)
	@p='spki$(EXEEXT)'; \
	b='spki'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
spki-abstract.log: spki-abstract$(EXEEXT)
	@p='spki-abstract$(EXEEXT)'; \
	b='spki-abstract'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
rsa-rsa-pss.log: rsa-rsa-pss$(EXEEXT)
	@p='rsa-rsa-pss$(EXEEXT)'; \
	b='rsa-rsa-pss'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
mini-dtls-fork.log: mini-dtls-fork$(EXEEXT)
	@p='mini-dtls-fork$(EXEEXT)'; \
	b='mini-dtls-fork'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
dtls-pthread.log: dtls-pthread$(EXEEXT)
	@p='dtls-pthread$(EXEEXT)'; \
	b='dtls-pthread'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
mini-key-material.log: mini-key-material$(EXEEXT)
	@p='mini-key-material$(EXEEXT)'; \
	b='mini-key-material'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
x509cert-invalid.log: x509cert-invalid$(EXEEXT)
	@p='x509cert-invalid$(EXEEXT)'; \
	b='x509cert-invalid'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls-ext-register.log: tls-ext-register$(EXEEXT)
	@p='tls-ext-register$(EXEEXT)'; \
	b='tls-ext-register'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls-supplemental.log: tls-supplemental$(EXEEXT)
	@p='tls-supplemental$(EXEEXT)'; \
	b='tls-supplemental'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
mini-dtls0-9.log: mini-dtls0-9$(EXEEXT)
	@p='mini-dtls0-9$(EXEEXT)'; \
	b='mini-dtls0-9'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
duplicate-extensions.log: duplicate-extensions$(EXEEXT)
	@p='duplicate-extensions$(EXEEXT)'; \
	b='duplicate-extensions'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
record-retvals.log: record-retvals$(EXEEXT)
	@p='record-retvals$(EXEEXT)'; \
	b='record-retvals'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
mini-server-name.log: mini-server-name$(EXEEXT)
	@p='mini-server-name$(EXEEXT)'; \
	b='mini-server-name'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls-etm.log: tls-etm$(EXEEXT)
	@p='tls-etm$(EXEEXT)'; \
	b='tls-etm'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls-force-etm.log: tls-force-etm$(EXEEXT)
	@p='tls-force-etm$(EXEEXT)'; \
	b='tls-force-etm'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
x509-cert-callback.log: x509-cert-callback$(EXEEXT)
	@p='x509-cert-callback$(EXEEXT)'; \
	b='x509-cert-callback'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
alerts.log: alerts$(EXEEXT)
	@p='alerts$(EXEEXT)'; \
	b='alerts'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
client-sign-md5-rep.log: client-sign-md5-rep$(EXEEXT)
	@p='client-sign-md5-rep$(EXEEXT)'; \
	b='client-sign-md5-rep'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls12-invalid-key-exchanges.log: tls12-invalid-key-exchanges$(EXEEXT)
	@p='tls12-invalid-key-exchanges$(EXEEXT)'; \
	b='tls12-invalid-key-exchanges'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
session-rdn-read.log: session-rdn-read$(EXEEXT)
	@p='session-rdn-read$(EXEEXT)'; \
	b='session-rdn-read'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls13-cert-key-exchange.log: tls13-cert-key-exchange$(EXEEXT)
	@p='tls13-cert-key-exchange$(EXEEXT)'; \
	b='tls13-cert-key-exchange'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
x509-cert-callback-ocsp.log: x509-cert-callback-ocsp$(EXEEXT)
	@p='x509-cert-callback-ocsp$(EXEEXT)'; \
	b='x509-cert-callback-ocsp'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
gnutls_ocsp_resp_list_import2.log: gnutls_ocsp_resp_list_import2$(EXEEXT)
	@p='gnutls_ocsp_resp_list_import2$(EXEEXT)'; \
	b='gnutls_ocsp_resp_list_import2'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
server-sign-md5-rep.log: server-sign-md5-rep$(EXEEXT)
	@p='server-sign-md5-rep$(EXEEXT)'; \
	b='server-sign-md5-rep'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
privkey-keygen.log: privkey-keygen$(EXEEXT)
	@p='privkey-keygen$(EXEEXT)'; \
	b='privkey-keygen'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
mini-tls-nonblock.log: mini-tls-nonblock$(EXEEXT)
	@p='mini-tls-nonblock$(EXEEXT)'; \
	b='mini-tls-nonblock'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
no-signal.log: no-signal$(EXEEXT)
	@p='no-signal$(EXEEXT)'; \
	b='no-signal'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs7-gen.log: pkcs7-gen$(EXEEXT)
	@p='pkcs7-gen$(EXEEXT)'; \
	b='pkcs7-gen'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
dtls-etm.log: dtls-etm$(EXEEXT)
	@p='dtls-etm$(EXEEXT)'; \
	b='dtls-etm'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
x509sign-verify-rsa.log: x509sign-verify-rsa$(EXEEXT)
	@p='x509sign-verify-rsa$(EXEEXT)'; \
	b='x509sign-verify-rsa'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
x509sign-verify-ecdsa.log: x509sign-verify-ecdsa$(EXEEXT)
	@p='x509sign-verify-ecdsa$(EXEEXT)'; \
	b='x509sign-verify-ecdsa'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
x509sign-verify-gost.log: x509sign-verify-gost$(EXEEXT)
	@p='x509sign-verify-gost$(EXEEXT)'; \
	b='x509sign-verify-gost'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
cipher-alignment.log: cipher-alignment$(EXEEXT)
	@p='cipher-alignment$(EXEEXT)'; \
	b='cipher-alignment'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
oids.log: oids$(EXEEXT)
	@p='oids$(EXEEXT)'; \
	b='oids'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
atfork.log: atfork$(EXEEXT)
	@p='atfork$(EXEEXT)'; \
	b='atfork'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
prf.log: prf$(EXEEXT)
	@p='prf$(EXEEXT)'; \
	b='prf'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
psk-file.log: psk-file$(EXEEXT)
	@p='psk-file$(EXEEXT)'; \
	b='psk-file'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
priority-init2.log: priority-init2$(EXEEXT)
	@p='priority-init2$(EXEEXT)'; \
	b='priority-init2'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
post-client-hello-change-prio.log: post-client-hello-change-prio$(EXEEXT)
	@p='post-client-hello-change-prio$(EXEEXT)'; \
	b='post-client-hello-change-prio'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
status-request.log: status-request$(EXEEXT)
	@p='status-request$(EXEEXT)'; \
	b='status-request'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
status-request-ok.log: status-request-ok$(EXEEXT)
	@p='status-request-ok$(EXEEXT)'; \
	b='status-request-ok'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
rfc7633-missing.log: rfc7633-missing$(EXEEXT)
	@p='rfc7633-missing$(EXEEXT)'; \
	b='rfc7633-missing'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
sign-verify-ext.log: sign-verify-ext$(EXEEXT)
	@p='sign-verify-ext$(EXEEXT)'; \
	b='sign-verify-ext'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
fallback-scsv.log: fallback-scsv$(EXEEXT)
	@p='fallback-scsv$(EXEEXT)'; \
	b='fallback-scsv'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs8-key-decode.log: pkcs8-key-decode$(EXEEXT)
	@p='pkcs8-key-decode$(EXEEXT)'; \
	b='pkcs8-key-decode'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
urls.log: urls$(EXEEXT)
	@p='urls$(EXEEXT)'; \
	b='urls'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
dtls-rehandshake-cert.log: dtls-rehandshake-cert$(EXEEXT)
	@p='dtls-rehandshake-cert$(EXEEXT)'; \
	b='dtls-rehandshake-cert'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
rfc7633-ok.log: rfc7633-ok$(EXEEXT)
	@p='rfc7633-ok$(EXEEXT)'; \
	b='rfc7633-ok'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
key-usage-rsa.log: key-usage-rsa$(EXEEXT)
	@p='key-usage-rsa$(EXEEXT)'; \
	b='key-usage-rsa'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
key-usage-ecdhe-rsa.log: key-usage-ecdhe-rsa$(EXEEXT)
	@p='key-usage-ecdhe-rsa$(EXEEXT)'; \
	b='key-usage-ecdhe-rsa'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
mini-session-verify-function.log: mini-session-verify-function$(EXEEXT)
	@p='mini-session-verify-function$(EXEEXT)'; \
	b='mini-session-verify-function'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
auto-verify.log: auto-verify$(EXEEXT)
	@p='auto-verify$(EXEEXT)'; \
	b='auto-verify'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
record-timeouts.log: record-timeouts$(EXEEXT)
	@p='record-timeouts$(EXEEXT)'; \
	b='record-timeouts'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
mini-dtls-hello-verify-48.log: mini-dtls-hello-verify-48$(EXEEXT)
	@p='mini-dtls-hello-verify-48$(EXEEXT)'; \
	b='mini-dtls-hello-verify-48'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
set-default-prio.log: set-default-prio$(EXEEXT)
	@p='set-default-prio$(EXEEXT)'; \
	b='set-default-prio'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls12-anon-upgrade.log: tls12-anon-upgrade$(EXEEXT)
	@p='tls12-anon-upgrade$(EXEEXT)'; \
	b='tls12-anon-upgrade'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tlsext-decoding.log: tlsext-decoding$(EXEEXT)
	@p='tlsext-decoding$(EXEEXT)'; \
	b='tlsext-decoding'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
rsa-psk-cb.log: rsa-psk-cb$(EXEEXT)
	@p='rsa-psk-cb$(EXEEXT)'; \
	b='rsa-psk-cb'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
gnutls-ids.log: gnutls-ids$(EXEEXT)
	@p='gnutls-ids$(EXEEXT)'; \
	b='gnutls-ids'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
rehandshake-switch-cert.log: rehandshake-switch-cert$(EXEEXT)
	@p='rehandshake-switch-cert$(EXEEXT)'; \
	b='rehandshake-switch-cert'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
rehandshake-switch-cert-allow.log: rehandshake-switch-cert-allow$(EXEEXT)
	@p='rehandshake-switch-cert-allow$(EXEEXT)'; \
	b='rehandshake-switch-cert-allow'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
rehandshake-switch-cert-client.log: rehandshake-switch-cert-client$(EXEEXT)
	@p='rehandshake-switch-cert-client$(EXEEXT)'; \
	b='rehandshake-switch-cert-client'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
rehandshake-switch-cert-client-allow.log: rehandshake-switch-cert-client-allow$(EXEEXT)
	@p='rehandshake-switch-cert-client-allow$(EXEEXT)'; \
	b='rehandshake-switch-cert-client-allow'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
handshake-versions.log: handshake-versions$(EXEEXT)
	@p='handshake-versions$(EXEEXT)'; \
	b='handshake-versions'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
dtls-handshake-versions.log: dtls-handshake-versions$(EXEEXT)
	@p='dtls-handshake-versions$(EXEEXT)'; \
	b='dtls-handshake-versions'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
dtls-max-record.log: dtls-max-record$(EXEEXT)
	@p='dtls-max-record$(EXEEXT)'; \
	b='dtls-max-record'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls12-max-record.log: tls12-max-record$(EXEEXT)
	@p='tls12-max-record$(EXEEXT)'; \
	b='tls12-max-record'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
alpn-server-prec.log: alpn-server-prec$(EXEEXT)
	@p='alpn-server-prec$(EXEEXT)'; \
	b='alpn-server-prec'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
ocsp-filename-memleak.log: ocsp-filename-memleak$(EXEEXT)
	@p='ocsp-filename-memleak$(EXEEXT)'; \
	b='ocsp-filename-memleak'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
dh-params.log: dh-params$(EXEEXT)
	@p='dh-params$(EXEEXT)'; \
	b='dh-params'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
rehandshake-ext-secret.log: rehandshake-ext-secret$(EXEEXT)
	@p='rehandshake-ext-secret$(EXEEXT)'; \
	b='rehandshake-ext-secret'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pcert-list.log: pcert-list$(EXEEXT)
	@p='pcert-list$(EXEEXT)'; \
	b='pcert-list'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
session-export-funcs.log: session-export-funcs$(EXEEXT)
	@p='session-export-funcs$(EXEEXT)'; \
	b='session-export-funcs'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
handshake-false-start.log: handshake-false-start$(EXEEXT)
	@p='handshake-false-start$(EXEEXT)'; \
	b='handshake-false-start'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
version-checks.log: version-checks$(EXEEXT)
	@p='version-checks$(EXEEXT)'; \
	b='version-checks'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
key-material-dtls.log: key-material-dtls$(EXEEXT)
	@p='key-material-dtls$(EXEEXT)'; \
	b='key-material-dtls'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
key-material-set-dtls.log: key-material-set-dtls$(EXEEXT)
	@p='key-material-set-dtls$(EXEEXT)'; \
	b='key-material-set-dtls'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
name-constraints-merge.log: name-constraints-merge$(EXEEXT)
	@p='name-constraints-merge$(EXEEXT)'; \
	b='name-constraints-merge'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
crl-basic.log: crl-basic$(EXEEXT)
	@p='crl-basic$(EXEEXT)'; \
	b='crl-basic'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
crq-basic.log: crq-basic$(EXEEXT)
	@p='crq-basic$(EXEEXT)'; \
	b='crq-basic'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
send-client-cert.log: send-client-cert$(EXEEXT)
	@p='send-client-cert$(EXEEXT)'; \
	b='send-client-cert'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
custom-urls-override.log: custom-urls-override$(EXEEXT)
	@p='custom-urls-override$(EXEEXT)'; \
	b='custom-urls-override'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
hex.log: hex$(EXEEXT)
	@p='hex$(EXEEXT)'; \
	b='hex'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
rehandshake-switch-psk-id.log: rehandshake-switch-psk-id$(EXEEXT)
	@p='rehandshake-switch-psk-id$(EXEEXT)'; \
	b='rehandshake-switch-psk-id'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
rehandshake-switch-srp-id.log: rehandshake-switch-srp-id$(EXEEXT)
	@p='rehandshake-switch-srp-id$(EXEEXT)'; \
	b='rehandshake-switch-srp-id'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
base64.log: base64$(EXEEXT)
	@p='base64$(EXEEXT)'; \
	b='base64'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
srpbase64.log: srpbase64$(EXEEXT)
	@p='srpbase64$(EXEEXT)'; \
	b='srpbase64'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs1-digest-info.log: pkcs1-digest-info$(EXEEXT)
	@p='pkcs1-digest-info$(EXEEXT)'; \
	b='pkcs1-digest-info'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
set_x509_key.log: set_x509_key$(EXEEXT)
	@p='set_x509_key$(EXEEXT)'; \
	b='set_x509_key'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
set_x509_key_file_der.log: set_x509_key_file_der$(EXEEXT)
	@p='set_x509_key_file_der$(EXEEXT)'; \
	b='set_x509_key_file_der'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
set_x509_pkcs12_key.log: set_x509_pkcs12_key$(EXEEXT)
	@p='set_x509_pkcs12_key$(EXEEXT)'; \
	b='set_x509_pkcs12_key'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
crt_apis.log: crt_apis$(EXEEXT)
	@p='crt_apis$(EXEEXT)'; \
	b='crt_apis'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls12-cert-key-exchange.log: tls12-cert-key-exchange$(EXEEXT)
	@p='tls12-cert-key-exchange$(EXEEXT)'; \
	b='tls12-cert-key-exchange'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls11-cert-key-exchange.log: tls11-cert-key-exchange$(EXEEXT)
	@p='tls11-cert-key-exchange$(EXEEXT)'; \
	b='tls11-cert-key-exchange'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls10-cert-key-exchange.log: tls10-cert-key-exchange$(EXEEXT)
	@p='tls10-cert-key-exchange$(EXEEXT)'; \
	b='tls10-cert-key-exchange'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
ssl30-cert-key-exchange.log: ssl30-cert-key-exchange$(EXEEXT)
	@p='ssl30-cert-key-exchange$(EXEEXT)'; \
	b='ssl30-cert-key-exchange'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
dtls12-cert-key-exchange.log: dtls12-cert-key-exchange$(EXEEXT)
	@p='dtls12-cert-key-exchange$(EXEEXT)'; \
	b='dtls12-cert-key-exchange'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
dtls10-cert-key-exchange.log: dtls10-cert-key-exchange$(EXEEXT)
	@p='dtls10-cert-key-exchange$(EXEEXT)'; \
	b='dtls10-cert-key-exchange'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
x509-cert-callback-legacy.log: x509-cert-callback-legacy$(EXEEXT)
	@p='x509-cert-callback-legacy$(EXEEXT)'; \
	b='x509-cert-callback-legacy'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
keylog-env.log: keylog-env$(EXEEXT)
	@p='keylog-env$(EXEEXT)'; \
	b='keylog-env'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
ssl2-hello.log: ssl2-hello$(EXEEXT)
	@p='ssl2-hello$(EXEEXT)'; \
	b='ssl2-hello'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tlsfeature-ext.log: tlsfeature-ext$(EXEEXT)
	@p='tlsfeature-ext$(EXEEXT)'; \
	b='tlsfeature-ext'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
dtls-rehandshake-cert-2.log: dtls-rehandshake-cert-2$(EXEEXT)
	@p='dtls-rehandshake-cert-2$(EXEEXT)'; \
	b='dtls-rehandshake-cert-2'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
dtls-session-ticket-lost.log: dtls-session-ticket-lost$(EXEEXT)
	@p='dtls-session-ticket-lost$(EXEEXT)'; \
	b='dtls-session-ticket-lost'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tlsfeature-crt.log: tlsfeature-crt$(EXEEXT)
	@p='tlsfeature-crt$(EXEEXT)'; \
	b='tlsfeature-crt'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
dtls-rehandshake-cert-3.log: dtls-rehandshake-cert-3$(EXEEXT)
	@p='dtls-rehandshake-cert-3$(EXEEXT)'; \
	b='dtls-rehandshake-cert-3'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
resume-with-false-start.log: resume-with-false-start$(EXEEXT)
	@p='resume-with-false-start$(EXEEXT)'; \
	b='resume-with-false-start'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
set_x509_key_file_ocsp.log: set_x509_key_file_ocsp$(EXEEXT)
	@p='set_x509_key_file_ocsp$(EXEEXT)'; \
	b='set_x509_key_file_ocsp'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
client-fastopen.log: client-fastopen$(EXEEXT)
	@p='client-fastopen$(EXEEXT)'; \
	b='client-fastopen'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
rng-sigint.log: rng-sigint$(EXEEXT)
	@p='rng-sigint$(EXEEXT)'; \
	b='rng-sigint'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
srp.log: srp$(EXEEXT)
	@p='srp$(EXEEXT)'; \
	b='srp'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
rng-pthread.log: rng-pthread$(EXEEXT)
	@p='rng-pthread$(EXEEXT)'; \
	b='rng-pthread'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
safe-renegotiation/srn0.log: safe-renegotiation/srn0$(EXEEXT)
	@p='safe-renegotiation/srn0$(EXEEXT)'; \
	b='safe-renegotiation/srn0'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
safe-renegotiation/srn1.log: safe-renegotiation/srn1$(EXEEXT)
	@p='safe-renegotiation/srn1$(EXEEXT)'; \
	b='safe-renegotiation/srn1'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
safe-renegotiation/srn2.log: safe-renegotiation/srn2$(EXEEXT)
	@p='safe-renegotiation/srn2$(EXEEXT)'; \
	b='safe-renegotiation/srn2'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
safe-renegotiation/srn3.log: safe-renegotiation/srn3$(EXEEXT)
	@p='safe-renegotiation/srn3$(EXEEXT)'; \
	b='safe-renegotiation/srn3'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
safe-renegotiation/srn4.log: safe-renegotiation/srn4$(EXEEXT)
	@p='safe-renegotiation/srn4$(EXEEXT)'; \
	b='safe-renegotiation/srn4'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
safe-renegotiation/srn5.log: safe-renegotiation/srn5$(EXEEXT)
	@p='safe-renegotiation/srn5$(EXEEXT)'; \
	b='safe-renegotiation/srn5'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
rsa-illegal-import.log: rsa-illegal-import$(EXEEXT)
	@p='rsa-illegal-import$(EXEEXT)'; \
	b='rsa-illegal-import'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
set_x509_ocsp_multi_invalid.log: set_x509_ocsp_multi_invalid$(EXEEXT)
	@p='set_x509_ocsp_multi_invalid$(EXEEXT)'; \
	b='set_x509_ocsp_multi_invalid'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
set_key.log: set_key$(EXEEXT)
	@p='set_key$(EXEEXT)'; \
	b='set_key'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
set_x509_key_file_ocsp_multi2.log: set_x509_key_file_ocsp_multi2$(EXEEXT)
	@p='set_x509_key_file_ocsp_multi2$(EXEEXT)'; \
	b='set_x509_key_file_ocsp_multi2'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
set_x509_ocsp_multi_unknown.log: set_x509_ocsp_multi_unknown$(EXEEXT)
	@p='set_x509_ocsp_multi_unknown$(EXEEXT)'; \
	b='set_x509_ocsp_multi_unknown'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
set_x509_ocsp_multi_pem.log: set_x509_ocsp_multi_pem$(EXEEXT)
	@p='set_x509_ocsp_multi_pem$(EXEEXT)'; \
	b='set_x509_ocsp_multi_pem'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls-ext-not-in-dtls.log: tls-ext-not-in-dtls$(EXEEXT)
	@p='tls-ext-not-in-dtls$(EXEEXT)'; \
	b='tls-ext-not-in-dtls'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
set_key_utf8.log: set_key_utf8$(EXEEXT)
	@p='set_key_utf8$(EXEEXT)'; \
	b='set_key_utf8'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
set_x509_key_utf8.log: set_x509_key_utf8$(EXEEXT)
	@p='set_x509_key_utf8$(EXEEXT)'; \
	b='set_x509_key_utf8'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
insecure_key.log: insecure_key$(EXEEXT)
	@p='insecure_key$(EXEEXT)'; \
	b='insecure_key'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
handshake-large-packet.log: handshake-large-packet$(EXEEXT)
	@p='handshake-large-packet$(EXEEXT)'; \
	b='handshake-large-packet'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
client_dsa_key.log: client_dsa_key$(EXEEXT)
	@p='client_dsa_key$(EXEEXT)'; \
	b='client_dsa_key'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
server_ecdsa_key.log: server_ecdsa_key$(EXEEXT)
	@p='server_ecdsa_key$(EXEEXT)'; \
	b='server_ecdsa_key'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls-session-ext-register.log: tls-session-ext-register$(EXEEXT)
	@p='tls-session-ext-register$(EXEEXT)'; \
	b='tls-session-ext-register'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls-session-supplemental.log: tls-session-supplemental$(EXEEXT)
	@p='tls-session-supplemental$(EXEEXT)'; \
	b='tls-session-supplemental'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
multi-alerts.log: multi-alerts$(EXEEXT)
	@p='multi-alerts$(EXEEXT)'; \
	b='multi-alerts'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
naked-alerts.log: naked-alerts$(EXEEXT)
	@p='naked-alerts$(EXEEXT)'; \
	b='naked-alerts'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs7-cat-parse.log: pkcs7-cat-parse$(EXEEXT)
	@p='pkcs7-cat-parse$(EXEEXT)'; \
	b='pkcs7-cat-parse'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
set_known_dh_params_x509.log: set_known_dh_params_x509$(EXEEXT)
	@p='set_known_dh_params_x509$(EXEEXT)'; \
	b='set_known_dh_params_x509'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
set_known_dh_params_anon.log: set_known_dh_params_anon$(EXEEXT)
	@p='set_known_dh_params_anon$(EXEEXT)'; \
	b='set_known_dh_params_anon'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
set_known_dh_params_psk.log: set_known_dh_params_psk$(EXEEXT)
	@p='set_known_dh_params_psk$(EXEEXT)'; \
	b='set_known_dh_params_psk'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
session-tickets-ok.log: session-tickets-ok$(EXEEXT)
	@p='session-tickets-ok$(EXEEXT)'; \
	b='session-tickets-ok'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
session-tickets-missing.log: session-tickets-missing$(EXEEXT)
	@p='session-tickets-missing$(EXEEXT)'; \
	b='session-tickets-missing'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
set_x509_key_file_legacy.log: set_x509_key_file_legacy$(EXEEXT)
	@p='set_x509_key_file_legacy$(EXEEXT)'; \
	b='set_x509_key_file_legacy'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
status-request-ext.log: status-request-ext$(EXEEXT)
	@p='status-request-ext$(EXEEXT)'; \
	b='status-request-ext'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
gnutls_x509_crt_sign.log: gnutls_x509_crt_sign$(EXEEXT)
	@p='gnutls_x509_crt_sign$(EXEEXT)'; \
	b='gnutls_x509_crt_sign'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
gnutls_x509_crq_sign.log: gnutls_x509_crq_sign$(EXEEXT)
	@p='gnutls_x509_crq_sign$(EXEEXT)'; \
	b='gnutls_x509_crq_sign'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
dtls-repro-20170915.log: dtls-repro-20170915$(EXEEXT)
	@p='dtls-repro-20170915$(EXEEXT)'; \
	b='dtls-repro-20170915'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
rng-no-onload.log: rng-no-onload$(EXEEXT)
	@p='rng-no-onload$(EXEEXT)'; \
	b='rng-no-onload'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
dtls1-2-mtu-check.log: dtls1-2-mtu-check$(EXEEXT)
	@p='dtls1-2-mtu-check$(EXEEXT)'; \
	b='dtls1-2-mtu-check'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
crl_apis.log: crl_apis$(EXEEXT)
	@p='crl_apis$(EXEEXT)'; \
	b='crl_apis'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
cert_verify_inv_utf8.log: cert_verify_inv_utf8$(EXEEXT)
	@p='cert_verify_inv_utf8$(EXEEXT)'; \
	b='cert_verify_inv_utf8'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
no-extensions.log: no-extensions$(EXEEXT)
	@p='no-extensions$(EXEEXT)'; \
	b='no-extensions'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
hostname-check-utf8.log: hostname-check-utf8$(EXEEXT)
	@p='hostname-check-utf8$(EXEEXT)'; \
	b='hostname-check-utf8'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs8-key-decode-encrypted.log: pkcs8-key-decode-encrypted$(EXEEXT)
	@p='pkcs8-key-decode-encrypted$(EXEEXT)'; \
	b='pkcs8-key-decode-encrypted'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
priority-mix.log: priority-mix$(EXEEXT)
	@p='priority-mix$(EXEEXT)'; \
	b='priority-mix'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs7.log: pkcs7$(EXEEXT)
	@p='pkcs7$(EXEEXT)'; \
	b='pkcs7'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
send-data-before-handshake.log: send-data-before-handshake$(EXEEXT)
	@p='send-data-before-handshake$(EXEEXT)'; \
	b='send-data-before-handshake'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
recv-data-before-handshake.log: recv-data-before-handshake$(EXEEXT)
	@p='recv-data-before-handshake$(EXEEXT)'; \
	b='recv-data-before-handshake'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
crt_inv_write.log: crt_inv_write$(EXEEXT)
	@p='crt_inv_write$(EXEEXT)'; \
	b='crt_inv_write'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
x509sign-verify-error.log: x509sign-verify-error$(EXEEXT)
	@p='x509sign-verify-error$(EXEEXT)'; \
	b='x509sign-verify-error'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
rng-op-nonce.log: rng-op-nonce$(EXEEXT)
	@p='rng-op-nonce$(EXEEXT)'; \
	b='rng-op-nonce'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
rng-op-random.log: rng-op-random$(EXEEXT)
	@p='rng-op-random$(EXEEXT)'; \
	b='rng-op-random'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
rng-op-key.log: rng-op-key$(EXEEXT)
	@p='rng-op-key$(EXEEXT)'; \
	b='rng-op-key'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
x509-dn-decode-compat.log: x509-dn-decode-compat$(EXEEXT)
	@p='x509-dn-decode-compat$(EXEEXT)'; \
	b='x509-dn-decode-compat'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
ip-check.log: ip-check$(EXEEXT)
	@p='ip-check$(EXEEXT)'; \
	b='ip-check'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
mini-x509-ipaddr.log: mini-x509-ipaddr$(EXEEXT)
	@p='mini-x509-ipaddr$(EXEEXT)'; \
	b='mini-x509-ipaddr'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
trust-store.log: trust-store$(EXEEXT)
	@p='trust-store$(EXEEXT)'; \
	b='trust-store'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
base64-raw.log: base64-raw$(EXEEXT)
	@p='base64-raw$(EXEEXT)'; \
	b='base64-raw'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
random-art.log: random-art$(EXEEXT)
	@p='random-art$(EXEEXT)'; \
	b='random-art'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
dhex509self.log: dhex509self$(EXEEXT)
	@p='dhex509self$(EXEEXT)'; \
	b='dhex509self'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
dss-sig-val.log: dss-sig-val$(EXEEXT)
	@p='dss-sig-val$(EXEEXT)'; \
	b='dss-sig-val'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
sign-pk-api.log: sign-pk-api$(EXEEXT)
	@p='sign-pk-api$(EXEEXT)'; \
	b='sign-pk-api'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls-session-ext-override.log: tls-session-ext-override$(EXEEXT)
	@p='tls-session-ext-override$(EXEEXT)'; \
	b='tls-session-ext-override'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
record-pad.log: record-pad$(EXEEXT)
	@p='record-pad$(EXEEXT)'; \
	b='record-pad'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls13-server-kx-neg.log: tls13-server-kx-neg$(EXEEXT)
	@p='tls13-server-kx-neg$(EXEEXT)'; \
	b='tls13-server-kx-neg'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
gnutls_ext_raw_parse_dtls.log: gnutls_ext_raw_parse_dtls$(EXEEXT)
	@p='gnutls_ext_raw_parse_dtls$(EXEEXT)'; \
	b='gnutls_ext_raw_parse_dtls'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
key-export-pkcs8.log: key-export-pkcs8$(EXEEXT)
	@p='key-export-pkcs8$(EXEEXT)'; \
	b='key-export-pkcs8'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
null_retrieve_function.log: null_retrieve_function$(EXEEXT)
	@p='null_retrieve_function$(EXEEXT)'; \
	b='null_retrieve_function'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls-record-size-limit.log: tls-record-size-limit$(EXEEXT)
	@p='tls-record-size-limit$(EXEEXT)'; \
	b='tls-record-size-limit'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls-crt_type-neg.log: tls-crt_type-neg$(EXEEXT)
	@p='tls-crt_type-neg$(EXEEXT)'; \
	b='tls-crt_type-neg'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
resume-with-stek-expiration.log: resume-with-stek-expiration$(EXEEXT)
	@p='resume-with-stek-expiration$(EXEEXT)'; \
	b='resume-with-stek-expiration'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
resume-with-previous-stek.log: resume-with-previous-stek$(EXEEXT)
	@p='resume-with-previous-stek$(EXEEXT)'; \
	b='resume-with-previous-stek'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
rawpk-api.log: rawpk-api$(EXEEXT)
	@p='rawpk-api$(EXEEXT)'; \
	b='rawpk-api'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls-record-size-limit-asym.log: tls-record-size-limit-asym$(EXEEXT)
	@p='tls-record-size-limit-asym$(EXEEXT)'; \
	b='tls-record-size-limit-asym'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
dh-compute.log: dh-compute$(EXEEXT)
	@p='dh-compute$(EXEEXT)'; \
	b='dh-compute'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
ecdh-compute.log: ecdh-compute$(EXEEXT)
	@p='ecdh-compute$(EXEEXT)'; \
	b='ecdh-compute'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
sign-verify-data-newapi.log: sign-verify-data-newapi$(EXEEXT)
	@p='sign-verify-data-newapi$(EXEEXT)'; \
	b='sign-verify-data-newapi'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
sign-verify-newapi.log: sign-verify-newapi$(EXEEXT)
	@p='sign-verify-newapi$(EXEEXT)'; \
	b='sign-verify-newapi'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
sign-verify-deterministic.log: sign-verify-deterministic$(EXEEXT)
	@p='sign-verify-deterministic$(EXEEXT)'; \
	b='sign-verify-deterministic'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
iov.log: iov$(EXEEXT)
	@p='iov$(EXEEXT)'; \
	b='iov'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
aead-cipher-vec.log: aead-cipher-vec$(EXEEXT)
	@p='aead-cipher-vec$(EXEEXT)'; \
	b='aead-cipher-vec'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls13-without-timeout-func.log: tls13-without-timeout-func$(EXEEXT)
	@p='tls13-without-timeout-func$(EXEEXT)'; \
	b='tls13-without-timeout-func'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
buffer.log: buffer$(EXEEXT)
	@p='buffer$(EXEEXT)'; \
	b='buffer'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
status-request-revoked.log: status-request-revoked$(EXEEXT)
	@p='status-request-revoked$(EXEEXT)'; \
	b='status-request-revoked'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
set_x509_ocsp_multi_cli.log: set_x509_ocsp_multi_cli$(EXEEXT)
	@p='set_x509_ocsp_multi_cli$(EXEEXT)'; \
	b='set_x509_ocsp_multi_cli'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
kdf-api.log: kdf-api$(EXEEXT)
	@p='kdf-api$(EXEEXT)'; \
	b='kdf-api'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
keylog-func.log: keylog-func$(EXEEXT)
	@p='keylog-func$(EXEEXT)'; \
	b='keylog-func'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
handshake-write.log: handshake-write$(EXEEXT)
	@p='handshake-write$(EXEEXT)'; \
	b='handshake-write'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
x509cert-dntypes.log: x509cert-dntypes$(EXEEXT)
	@p='x509cert-dntypes$(EXEEXT)'; \
	b='x509cert-dntypes'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
id-on-xmppAddr.log: id-on-xmppAddr$(EXEEXT)
	@p='id-on-xmppAddr$(EXEEXT)'; \
	b='id-on-xmppAddr'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls13-compat-mode.log: tls13-compat-mode$(EXEEXT)
	@p='tls13-compat-mode$(EXEEXT)'; \
	b='tls13-compat-mode'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls-channel-binding.log: tls-channel-binding$(EXEEXT)
	@p='tls-channel-binding$(EXEEXT)'; \
	b='tls-channel-binding'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
dtls-with-seccomp.log: dtls-with-seccomp$(EXEEXT)
	@p='dtls-with-seccomp$(EXEEXT)'; \
	b='dtls-with-seccomp'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls-with-seccomp.log: tls-with-seccomp$(EXEEXT)
	@p='tls-with-seccomp$(EXEEXT)'; \
	b='tls-with-seccomp'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
dtls-client-with-seccomp.log: dtls-client-with-seccomp$(EXEEXT)
	@p='dtls-client-with-seccomp$(EXEEXT)'; \
	b='dtls-client-with-seccomp'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls-client-with-seccomp.log: tls-client-with-seccomp$(EXEEXT)
	@p='tls-client-with-seccomp$(EXEEXT)'; \
	b='tls-client-with-seccomp'; \
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
system-prio-file.log: system-prio-file$(EXEEXT)
	@p='system-prio-file$(EXEEXT)'; \
	b='system-prio-file'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
dtls-sliding-window.log: dtls-sliding-window$(EXEEXT)
	@p='dtls-sliding-window$(EXEEXT)'; \
	b='dtls-sliding-window'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
ip-utils.log: ip-utils$(EXEEXT)
	@p='ip-utils$(EXEEXT)'; \
	b='ip-utils'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
name-constraints-ip.log: name-constraints-ip$(EXEEXT)
	@p='name-constraints-ip$(EXEEXT)'; \
	b='name-constraints-ip'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
conv-utf8.log: conv-utf8$(EXEEXT)
	@p='conv-utf8$(EXEEXT)'; \
	b='conv-utf8'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
str-unicode.log: str-unicode$(EXEEXT)
	@p='str-unicode$(EXEEXT)'; \
	b='str-unicode'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
str-idna.log: str-idna$(EXEEXT)
	@p='str-idna$(EXEEXT)'; \
	b='str-idna'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls10-prf.log: tls10-prf$(EXEEXT)
	@p='tls10-prf$(EXEEXT)'; \
	b='tls10-prf'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls12-prf.log: tls12-prf$(EXEEXT)
	@p='tls12-prf$(EXEEXT)'; \
	b='tls12-prf'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
gnutls_record_overhead.log: gnutls_record_overhead$(EXEEXT)
	@p='gnutls_record_overhead$(EXEEXT)'; \
	b='gnutls_record_overhead'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
eagain.log: eagain$(EXEEXT)
	@p='eagain$(EXEEXT)'; \
	b='eagain'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls12-rehandshake-cert.log: tls12-rehandshake-cert$(EXEEXT)
	@p='tls12-rehandshake-cert$(EXEEXT)'; \
	b='tls12-rehandshake-cert'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
eagain-auto-auth.log: eagain-auto-auth$(EXEEXT)
	@p='eagain-auto-auth$(EXEEXT)'; \
	b='eagain-auto-auth'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs11-cert-import-url-exts.log: pkcs11-cert-import-url-exts$(EXEEXT)
	@p='pkcs11-cert-import-url-exts$(EXEEXT)'; \
	b='pkcs11-cert-import-url-exts'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs11-get-exts.log: pkcs11-get-exts$(EXEEXT)
	@p='pkcs11-get-exts$(EXEEXT)'; \
	b='pkcs11-get-exts'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs11-get-raw-issuer-exts.log: pkcs11-get-raw-issuer-exts$(EXEEXT)
	@p='pkcs11-get-raw-issuer-exts$(EXEEXT)'; \
	b='pkcs11-get-raw-issuer-exts'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs11-cert-import-url4-exts.log: pkcs11-cert-import-url4-exts$(EXEEXT)
	@p='pkcs11-cert-import-url4-exts$(EXEEXT)'; \
	b='pkcs11-cert-import-url4-exts'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs11/pkcs11-chainverify.log: pkcs11/pkcs11-chainverify$(EXEEXT)
	@p='pkcs11/pkcs11-chainverify$(EXEEXT)'; \
	b='pkcs11/pkcs11-chainverify'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs11/pkcs11-get-issuer.log: pkcs11/pkcs11-get-issuer$(EXEEXT)
	@p='pkcs11/pkcs11-get-issuer$(EXEEXT)'; \
	b='pkcs11/pkcs11-get-issuer'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs11/pkcs11-is-known.log: pkcs11/pkcs11-is-known$(EXEEXT)
	@p='pkcs11/pkcs11-is-known$(EXEEXT)'; \
	b='pkcs11/pkcs11-is-known'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs11/pkcs11-combo.log: pkcs11/pkcs11-combo$(EXEEXT)
	@p='pkcs11/pkcs11-combo$(EXEEXT)'; \
	b='pkcs11/pkcs11-combo'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs11/pkcs11-privkey.log: pkcs11/pkcs11-privkey$(EXEEXT)
	@p='pkcs11/pkcs11-privkey$(EXEEXT)'; \
	b='pkcs11/pkcs11-privkey'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs11/pkcs11-pubkey-import-rsa.log: pkcs11/pkcs11-pubkey-import-rsa$(EXEEXT)
	@p='pkcs11/pkcs11-pubkey-import-rsa$(EXEEXT)'; \
	b='pkcs11/pkcs11-pubkey-import-rsa'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs11/pkcs11-pubkey-import-ecdsa.log: pkcs11/pkcs11-pubkey-import-ecdsa$(EXEEXT)
	@p='pkcs11/pkcs11-pubkey-import-ecdsa$(EXEEXT)'; \
	b='pkcs11/pkcs11-pubkey-import-ecdsa'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs11-import-url-privkey.log: pkcs11-import-url-privkey$(EXEEXT)
	@p='pkcs11-import-url-privkey$(EXEEXT)'; \
	b='pkcs11-import-url-privkey'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs11-privkey-fork.log: pkcs11-privkey-fork$(EXEEXT)
	@p='pkcs11-privkey-fork$(EXEEXT)'; \
	b='pkcs11-privkey-fork'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs11/pkcs11-ec-privkey-test.log: pkcs11/pkcs11-ec-privkey-test$(EXEEXT)
	@p='pkcs11/pkcs11-ec-privkey-test$(EXEEXT)'; \
	b='pkcs11/pkcs11-ec-privkey-test'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs11-privkey-always-auth.log: pkcs11-privkey-always-auth$(EXEEXT)
	@p='pkcs11-privkey-always-auth$(EXEEXT)'; \
	b='pkcs11-privkey-always-auth'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs11-privkey-export.log: pkcs11-privkey-export$(EXEEXT)
	@p='pkcs11-privkey-export$(EXEEXT)'; \
	b='pkcs11-privkey-export'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs11/pkcs11-import-with-pin.log: pkcs11/pkcs11-import-with-pin$(EXEEXT)
	@p='pkcs11/pkcs11-import-with-pin$(EXEEXT)'; \
	b='pkcs11/pkcs11-import-with-pin'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs11/pkcs11-privkey-pthread.log: pkcs11/pkcs11-privkey-pthread$(EXEEXT)
	@p='pkcs11/pkcs11-privkey-pthread$(EXEEXT)'; \
	b='pkcs11/pkcs11-privkey-pthread'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs11/pkcs11-pin-func.log: pkcs11/pkcs11-pin-func$(EXEEXT)
	@p='pkcs11/pkcs11-pin-func$(EXEEXT)'; \
	b='pkcs11/pkcs11-pin-func'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs11/pkcs11-obj-import.log: pkcs11/pkcs11-obj-import$(EXEEXT)
	@p='pkcs11/pkcs11-obj-import$(EXEEXT)'; \
	b='pkcs11/pkcs11-obj-import'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs11-privkey-fork-reinit.log: pkcs11-privkey-fork-reinit$(EXEEXT)
	@p='pkcs11-privkey-fork-reinit$(EXEEXT)'; \
	b='pkcs11-privkey-fork-reinit'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs11-mechanisms.log: pkcs11-mechanisms$(EXEEXT)
	@p='pkcs11-mechanisms$(EXEEXT)'; \
	b='pkcs11-mechanisms'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs11-privkey-safenet-always-auth.log: pkcs11-privkey-safenet-always-auth$(EXEEXT)
	@p='pkcs11-privkey-safenet-always-auth$(EXEEXT)'; \
	b='pkcs11-privkey-safenet-always-auth'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs11/pkcs11-rsa-pss-privkey-test.log: pkcs11/pkcs11-rsa-pss-privkey-test$(EXEEXT)
	@p='pkcs11/pkcs11-rsa-pss-privkey-test$(EXEEXT)'; \
	b='pkcs11/pkcs11-rsa-pss-privkey-test'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs11/tls-neg-pkcs11-key.log: pkcs11/tls-neg-pkcs11-key$(EXEEXT)
	@p='pkcs11/tls-neg-pkcs11-key$(EXEEXT)'; \
	b='pkcs11/tls-neg-pkcs11-key'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs11/pkcs11-privkey-generate.log: pkcs11/pkcs11-privkey-generate$(EXEEXT)
	@p='pkcs11/pkcs11-privkey-generate$(EXEEXT)'; \
	b='pkcs11/pkcs11-privkey-generate'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs11/gnutls_x509_crt_list_import_url.log: pkcs11/gnutls_x509_crt_list_import_url$(EXEEXT)
	@p='pkcs11/gnutls_x509_crt_list_import_url$(EXEEXT)'; \
	b='pkcs11/gnutls_x509_crt_list_import_url'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs11/gnutls_pcert_list_import_x509_file.log: pkcs11/gnutls_pcert_list_import_x509_file$(EXEEXT)
	@p='pkcs11/gnutls_pcert_list_import_x509_file$(EXEEXT)'; \
	b='pkcs11/gnutls_pcert_list_import_x509_file'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs11/pkcs11-eddsa-privkey-test.log: pkcs11/pkcs11-eddsa-privkey-test$(EXEEXT)
	@p='pkcs11/pkcs11-eddsa-privkey-test$(EXEEXT)'; \
	b='pkcs11/pkcs11-eddsa-privkey-test'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs11-token-raw.log: pkcs11-token-raw$(EXEEXT)
	@p='pkcs11-token-raw$(EXEEXT)'; \
	b='pkcs11-token-raw'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs11-obj-raw.log: pkcs11-obj-raw$(EXEEXT)
	@p='pkcs11-obj-raw$(EXEEXT)'; \
	b='pkcs11-obj-raw'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs11-import-url-privkey-caps.log: pkcs11-import-url-privkey-caps$(EXEEXT)
	@p='pkcs11-import-url-privkey-caps$(EXEEXT)'; \
	b='pkcs11-import-url-privkey-caps'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
ocsp.log: ocsp$(EXEEXT)
	@p='ocsp$(EXEEXT)'; \
	b='ocsp'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
dane.log: dane$(EXEEXT)
	@p='dane$(EXEEXT)'; \
	b='dane'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
dane-strcodes.log: dane-strcodes$(EXEEXT)
	@p='dane-strcodes$(EXEEXT)'; \
	b='dane-strcodes'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
openssl.log: openssl$(EXEEXT)
	@p='openssl$(EXEEXT)'; \
	b='openssl'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
x509self.log: x509self$(EXEEXT)
	@p='x509self$(EXEEXT)'; \
	b='x509self'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
x509dn.log: x509dn$(EXEEXT)
	@p='x509dn$(EXEEXT)'; \
	b='x509dn'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
anonself.log: anonself$(EXEEXT)
	@p='anonself$(EXEEXT)'; \
	b='anonself'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pskself.log: pskself$(EXEEXT)
	@p='pskself$(EXEEXT)'; \
	b='pskself'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pskself2.log: pskself2$(EXEEXT)
	@p='pskself2$(EXEEXT)'; \
	b='pskself2'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
dhepskself.log: dhepskself$(EXEEXT)
	@p='dhepskself$(EXEEXT)'; \
	b='dhepskself'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
setcredcrash.log: setcredcrash$(EXEEXT)
	@p='setcredcrash$(EXEEXT)'; \
	b='setcredcrash'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls12-resume-x509.log: tls12-resume-x509$(EXEEXT)
	@p='tls12-resume-x509$(EXEEXT)'; \
	b='tls12-resume-x509'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls12-resume-psk.log: tls12-resume-psk$(EXEEXT)
	@p='tls12-resume-psk$(EXEEXT)'; \
	b='tls12-resume-psk'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls12-resume-anon.log: tls12-resume-anon$(EXEEXT)
	@p='tls12-resume-anon$(EXEEXT)'; \
	b='tls12-resume-anon'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls13-resume-x509.log: tls13-resume-x509$(EXEEXT)
	@p='tls13-resume-x509$(EXEEXT)'; \
	b='tls13-resume-x509'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls13-resume-psk.log: tls13-resume-psk$(EXEEXT)
	@p='tls13-resume-psk$(EXEEXT)'; \
	b='tls13-resume-psk'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls13-early-data.log: tls13-early-data$(EXEEXT)
	@p='tls13-early-data$(EXEEXT)'; \
	b='tls13-early-data'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls13-early-data-neg.log: tls13-early-data-neg$(EXEEXT)
	@p='tls13-early-data-neg$(EXEEXT)'; \
	b='tls13-early-data-neg'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls13-early-data-neg2.log: tls13-early-data-neg2$(EXEEXT)
	@p='tls13-early-data-neg2$(EXEEXT)'; \
	b='tls13-early-data-neg2'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
resume-with-record-size-limit.log: resume-with-record-size-limit$(EXEEXT)
	@p='resume-with-record-size-limit$(EXEEXT)'; \
	b='resume-with-record-size-limit'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
tls13/post-handshake-with-cert-pkcs11.log: tls13/post-handshake-with-cert-pkcs11$(EXEEXT)
	@p='tls13/post-handshake-with-cert-pkcs11$(EXEEXT)'; \
	b='tls13/post-handshake-with-cert-pkcs11'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
pkcs11/tls-neg-pkcs11-no-key.log: pkcs11/tls-neg-pkcs11-no-key$(EXEEXT)
	@p='pkcs11/tls-neg-pkcs11-no-key$(EXEEXT)'; \
	b='pkcs11/tls-neg-pkcs11-no-key'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
global-init-override.log: global-init-override$(EXEEXT)
	@p='global-init-override$(EXEEXT)'; \
	b='global-init-override'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
win32-certopenstore.log: win32-certopenstore$(EXEEXT)
	@p='win32-certopenstore$(EXEEXT)'; \
	b='win32-certopenstore'; \
	$(am__check_pre) $(LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_LOG_DRIVER_FLAGS) $(LOG_DRIVER_FLAGS) -- $(LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
.sh.log:
	@p='$<'; \
	$(am__set_b); \
	$(am__check_pre) $(SH_LOG_DRIVER) --test-name "$$f" \
	--log-file $$b.log --trs-file $$b.trs \
	$(am__common_driver_flags) $(AM_SH_LOG_DRIVER_FLAGS) $(SH_LOG_DRIVER_FLAGS) -- $(SH_LOG_COMPILE) \
	"$$tst" $(AM_TESTS_FD_REDIRECT)
