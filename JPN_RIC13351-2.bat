@echo off        
rem JPN_RIC13351-2 Usage
rem
rem JPN_RIC13351-2 <WorkBenchInstallPath> [withtest]
rem
rem <WorkBenchInstallPath> - Full path where Wind River workbench is installed
rem
rem withtest - optinal argument if files for patch test are to be copied
rem 

echo backing up Older files...

ren %1\vxworks-6.1\target\src\ssl\ssl\s3_srvr.c s3_srvr_b4ric13351-2.c 
ren %1\vxworks-6.1\target\src\ssl\ssl\s3_clnt.c s3_clnt_b4ric13351-2.c 

ren %1\vxworks-6.1\target\src\ssl\ssl\s23_srvr.c s23_srvr_b4ric13351-2.c 

ren %1\vxworks-6.1\target\src\security\certificate_support\asn1\a_verify.c a_verify_b4ric13351-2.c 
ren %1\vxworks-6.1\target\src\security\certificate_support\asn1\a_type.c a_type_b4ric13351-2.c 
ren %1\vxworks-6.1\target\src\security\certificate_support\asn1\x_algor.c x_algor_b4ric13351-2.c 
ren %1\vxworks-6.1\target\src\security\certificate_support\asn1\asn1_err.c asn1_err_b4ric13351-2.c 

ren %1\vxworks-6.1\target\src\security\certificate_support\x509\x_all.c x_all_b4ric13351-2.c 
ren %1\vxworks-6.1\target\src\security\certificate_support\x509\x509_vfy.c x509_vfy_b4ric13351-2.c 

ren %1\vxworks-6.1\target\src\security\compatibility\dsa\dsa_vrf.c dsa_vrf_b4ric13352-2.c

ren %1\vxworks-6.1\target\h\openssl\x509.h x509_b4ric13351-2.h
ren %1\vxworks-6.1\target\h\openssl\asn1.h ssl3_b4ric13351-2.h

 
echo copying JPN_RIC13351-2 patch files...


copy .\src\vxworks-6.1\target\src\ssl\ssl\s3_srvr.c %1\vxworks-6.1\target\src\ssl\ssl\s3_srvr.c
copy .\src\vxworks-6.1\target\src\ssl\ssl\s3_clnt.c %1\vxworks-6.1\target\src\ssl\ssl\s3_clnt.c
copy .\src\vxworks-6.1\target\src\ssl\ssl\s23_srvr.c %1\vxworks-6.1\target\src\ssl\ssl\s23_srvr.c

copy .\src\vxworks-6.1\target\src\security\certificate_support\asn1\a_verify.c %1\vxworks-6.1\target\src\security\certificate_support\asn1\a_verify.c
copy .\src\vxworks-6.1\target\src\security\certificate_support\asn1\a_type.c %1\vxworks-6.1\target\src\security\certificate_support\asn1\a_type.c
copy .\src\vxworks-6.1\target\src\security\certificate_support\asn1\x_algor.c %1\vxworks-6.1\target\src\security\certificate_support\asn1\x_algor.c
copy .\src\vxworks-6.1\target\src\security\certificate_support\asn1\asn1_err.c %1\vxworks-6.1\target\src\security\certificate_support\asn1\asn1_err.c

copy .\src\vxworks-6.1\target\src\security\certificate_support\x509\x_all.c %1\vxworks-6.1\target\src\security\certificate_support\x509\x_all.c
copy .\src\vxworks-6.1\target\src\security\certificate_support\x509\x509_vfy.c %1\vxworks-6.1\target\src\security\certificate_support\x509\x509_vfy.c

copy .\src\vxworks-6.1\target\src\security\compatibility\dsa\dsa_vrf.c %1\vxworks-6.1\target\src\security\compatibility\dsa\dsa_vrf.c


copy .\src\vxworks-6.1\target\h\openssl\x509.h %1\vxworks-6.1\target\h\openssl\x509.h
copy .\src\vxworks-6.1\target\h\openssl\asn1.h %1\vxworks-6.1\target\h\openssl\asn1.h


if "%2" == "withtest" (

echo backing up older files...

ren %1\vxworks-6.1\target\src\ssl\ssl\apps\progs.h progs_b4ric13351-2.h
ren %1\vxworks-6.1\target\src\ssl\ssl\apps\Makefile Makefile_b4ric13351-2
ren %1\vxworks-6.1\target\src\ssl\ssl\apps\Makefile.ssl Makefile_b4ric13351-2.ssl
ren %1\vxworks-6.1\target\src\ssl\ssl\apps\Makefile.windriver Makefile_b4ric13351-2.windriver
ren %1\vxworks-6.1\target\src\ssl\ssl\apps\ssl_apps_link_syms.c ssl_apps_link_syms_b4ric13351-2.c
ren %1\vxworks-6.1\target\src\ssl\ssl\s23_srvr.c s23_srvr_b4ric13351-3.c 

copy .\test_src\vxworks-6.1\target\src\ssl\ssl\apps\nm_client.c %1\vxworks-6.1\target\src\ssl\ssl\apps\nm_client.c
copy .\test_src\vxworks-6.1\target\src\ssl\ssl\apps\nm_server.c %1\vxworks-6.1\target\src\ssl\ssl\apps\nm_server.c
copy .\test_src\vxworks-6.1\target\src\ssl\ssl\apps\ssl_apps_link_syms.c %1\vxworks-6.1\target\src\ssl\ssl\apps\ssl_apps_link_syms.c
copy .\test_src\vxworks-6.1\target\src\ssl\ssl\apps\progs.h %1\vxworks-6.1\target\src\ssl\ssl\apps\progs.h
copy .\test_src\vxworks-6.1\target\src\ssl\ssl\apps\Makefile %1\vxworks-6.1\target\src\ssl\ssl\apps\Makefile
copy .\test_src\vxworks-6.1\target\src\ssl\ssl\apps\Makefile.ssl %1\vxworks-6.1\target\src\ssl\ssl\apps\Makefile.ssl
copy .\test_src\vxworks-6.1\target\src\ssl\ssl\apps\Makefile.windriver %1\vxworks-6.1\target\src\ssl\ssl\apps\Makefile.windriver
copy .\test_src\vxworks-6.1\target\src\ssl\ssl\s23_srvr.c %1\vxworks-6.1\target\src\ssl\ssl\s23_srvr.c

)

echo done.
