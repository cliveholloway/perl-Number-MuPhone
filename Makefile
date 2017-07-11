# This Makefile is for the Number::MuPhone extension to perl.
#
# It was generated automatically by MakeMaker version
# 7.0401 (Revision: 70401) from the contents of
# Makefile.PL. Don't edit this file, edit Makefile.PL instead.
#
#       ANY CHANGES MADE HERE WILL BE LOST!
#
#   MakeMaker ARGV: ()
#

#   MakeMaker Parameters:

#     ABSTRACT_FROM => q[lib/Number/MuPhone.pm]
#     AUTHOR => [q[Clive Holloway <clive.holloway@gmail.com>]]
#     BUILD_REQUIRES => { Test::More=>q[0] }
#     CONFIGURE_REQUIRES => { ExtUtils::MakeMaker=>q[0] }
#     LICENSE => q[artistic_2]
#     MIN_PERL_VERSION => q[5.006]
#     NAME => q[Number::MuPhone]
#     PL_FILES => {  }
#     PREREQ_PM => { Moo=>q[2.000000], Test::More=>q[0], YAML::XS=>q[0.21] }
#     TEST_REQUIRES => {  }
#     VERSION_FROM => q[lib/Number/MuPhone.pm]
#     clean => { FILES=>q[Number-MuPhone-*] }
#     dist => { COMPRESS=>q[gzip -9f], SUFFIX=>q[gz] }
#     test => { TESTS=>q[t/tests/*/*/*.t t/tests/*/*/*/*.t t/tests/*/*/*/*/*.t] }

# --- MakeMaker post_initialize section:


# --- MakeMaker const_config section:

# These definitions are from config.sh (via /usr/lib/x86_64-linux-gnu/perl/5.22/Config.pm).
# They may have been overridden via Makefile.PL or on the command line.
AR = ar
CC = x86_64-linux-gnu-gcc
CCCDLFLAGS = -fPIC
CCDLFLAGS = -Wl,-E
DLEXT = so
DLSRC = dl_dlopen.xs
EXE_EXT = 
FULL_AR = /usr/bin/ar
LD = x86_64-linux-gnu-gcc
LDDLFLAGS = -shared -L/usr/local/lib -fstack-protector-strong
LDFLAGS =  -fstack-protector-strong -L/usr/local/lib
LIBC = libc-2.21.so
LIB_EXT = .a
OBJ_EXT = .o
OSNAME = linux
OSVERS = 3.16.0
RANLIB = :
SITELIBEXP = /usr/local/share/perl/5.22.1
SITEARCHEXP = /usr/local/lib/x86_64-linux-gnu/perl/5.22.1
SO = so
VENDORARCHEXP = /usr/lib/x86_64-linux-gnu/perl5/5.22
VENDORLIBEXP = /usr/share/perl5


# --- MakeMaker constants section:
AR_STATIC_ARGS = cr
DIRFILESEP = /
DFSEP = $(DIRFILESEP)
NAME = Number::MuPhone
NAME_SYM = Number_MuPhone
VERSION = 0.02
VERSION_MACRO = VERSION
VERSION_SYM = 0_02
DEFINE_VERSION = -D$(VERSION_MACRO)=\"$(VERSION)\"
XS_VERSION = 0.02
XS_VERSION_MACRO = XS_VERSION
XS_DEFINE_VERSION = -D$(XS_VERSION_MACRO)=\"$(XS_VERSION)\"
INST_ARCHLIB = blib/arch
INST_SCRIPT = blib/script
INST_BIN = blib/bin
INST_LIB = blib/lib
INST_MAN1DIR = blib/man1
INST_MAN3DIR = blib/man3
MAN1EXT = 1p
MAN3EXT = 3pm
INSTALLDIRS = site
DESTDIR = 
PREFIX = $(SITEPREFIX)
PERLPREFIX = /usr
SITEPREFIX = /usr/local
VENDORPREFIX = /usr
INSTALLPRIVLIB = /usr/share/perl/5.22
DESTINSTALLPRIVLIB = $(DESTDIR)$(INSTALLPRIVLIB)
INSTALLSITELIB = /usr/local/share/perl/5.22.1
DESTINSTALLSITELIB = $(DESTDIR)$(INSTALLSITELIB)
INSTALLVENDORLIB = /usr/share/perl5
DESTINSTALLVENDORLIB = $(DESTDIR)$(INSTALLVENDORLIB)
INSTALLARCHLIB = /usr/lib/x86_64-linux-gnu/perl/5.22
DESTINSTALLARCHLIB = $(DESTDIR)$(INSTALLARCHLIB)
INSTALLSITEARCH = /usr/local/lib/x86_64-linux-gnu/perl/5.22.1
DESTINSTALLSITEARCH = $(DESTDIR)$(INSTALLSITEARCH)
INSTALLVENDORARCH = /usr/lib/x86_64-linux-gnu/perl5/5.22
DESTINSTALLVENDORARCH = $(DESTDIR)$(INSTALLVENDORARCH)
INSTALLBIN = /usr/bin
DESTINSTALLBIN = $(DESTDIR)$(INSTALLBIN)
INSTALLSITEBIN = /usr/local/bin
DESTINSTALLSITEBIN = $(DESTDIR)$(INSTALLSITEBIN)
INSTALLVENDORBIN = /usr/bin
DESTINSTALLVENDORBIN = $(DESTDIR)$(INSTALLVENDORBIN)
INSTALLSCRIPT = /usr/bin
DESTINSTALLSCRIPT = $(DESTDIR)$(INSTALLSCRIPT)
INSTALLSITESCRIPT = /usr/local/bin
DESTINSTALLSITESCRIPT = $(DESTDIR)$(INSTALLSITESCRIPT)
INSTALLVENDORSCRIPT = /usr/bin
DESTINSTALLVENDORSCRIPT = $(DESTDIR)$(INSTALLVENDORSCRIPT)
INSTALLMAN1DIR = /usr/share/man/man1
DESTINSTALLMAN1DIR = $(DESTDIR)$(INSTALLMAN1DIR)
INSTALLSITEMAN1DIR = /usr/local/man/man1
DESTINSTALLSITEMAN1DIR = $(DESTDIR)$(INSTALLSITEMAN1DIR)
INSTALLVENDORMAN1DIR = /usr/share/man/man1
DESTINSTALLVENDORMAN1DIR = $(DESTDIR)$(INSTALLVENDORMAN1DIR)
INSTALLMAN3DIR = /usr/share/man/man3
DESTINSTALLMAN3DIR = $(DESTDIR)$(INSTALLMAN3DIR)
INSTALLSITEMAN3DIR = /usr/local/man/man3
DESTINSTALLSITEMAN3DIR = $(DESTDIR)$(INSTALLSITEMAN3DIR)
INSTALLVENDORMAN3DIR = /usr/share/man/man3
DESTINSTALLVENDORMAN3DIR = $(DESTDIR)$(INSTALLVENDORMAN3DIR)
PERL_LIB = /usr/share/perl/5.22
PERL_ARCHLIB = /usr/lib/x86_64-linux-gnu/perl/5.22
PERL_ARCHLIBDEP = /usr/lib/x86_64-linux-gnu/perl/5.22
LIBPERL_A = libperl.a
FIRST_MAKEFILE = Makefile
MAKEFILE_OLD = Makefile.old
MAKE_APERL_FILE = Makefile.aperl
PERLMAINCC = $(CC)
PERL_INC = /usr/lib/x86_64-linux-gnu/perl/5.22/CORE
PERL_INCDEP = /usr/lib/x86_64-linux-gnu/perl/5.22/CORE
PERL = "/usr/bin/perl"
FULLPERL = "/usr/bin/perl"
ABSPERL = $(PERL)
PERLRUN = $(PERL)
FULLPERLRUN = $(FULLPERL)
ABSPERLRUN = $(ABSPERL)
PERLRUNINST = $(PERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"
FULLPERLRUNINST = $(FULLPERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"
ABSPERLRUNINST = $(ABSPERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"
PERL_CORE = 0
PERM_DIR = 755
PERM_RW = 644
PERM_RWX = 755

MAKEMAKER   = /usr/share/perl/5.22/ExtUtils/MakeMaker.pm
MM_VERSION  = 7.0401
MM_REVISION = 70401

# FULLEXT = Pathname for extension directory (eg Foo/Bar/Oracle).
# BASEEXT = Basename part of FULLEXT. May be just equal FULLEXT. (eg Oracle)
# PARENT_NAME = NAME without BASEEXT and no trailing :: (eg Foo::Bar)
# DLBASE  = Basename part of dynamic library. May be just equal BASEEXT.
MAKE = make
FULLEXT = Number/MuPhone
BASEEXT = MuPhone
PARENT_NAME = Number
DLBASE = $(BASEEXT)
VERSION_FROM = lib/Number/MuPhone.pm
OBJECT = 
LDFROM = $(OBJECT)
LINKTYPE = dynamic
BOOTDEP = 

# Handy lists of source code files:
XS_FILES = 
C_FILES  = 
O_FILES  = 
H_FILES  = 
MAN1PODS = 
MAN3PODS = lib/Number/MuPhone.pm \
	lib/Number/MuPhone/Parser.pm

# Where is the Config information that we are using/depend on
CONFIGDEP = $(PERL_ARCHLIBDEP)$(DFSEP)Config.pm $(PERL_INCDEP)$(DFSEP)config.h

# Where to build things
INST_LIBDIR      = $(INST_LIB)/Number
INST_ARCHLIBDIR  = $(INST_ARCHLIB)/Number

INST_AUTODIR     = $(INST_LIB)/auto/$(FULLEXT)
INST_ARCHAUTODIR = $(INST_ARCHLIB)/auto/$(FULLEXT)

INST_STATIC      = 
INST_DYNAMIC     = 
INST_BOOT        = 

# Extra linker info
EXPORT_LIST        = 
PERL_ARCHIVE       = 
PERL_ARCHIVEDEP    = 
PERL_ARCHIVE_AFTER = 


TO_INST_PM = lib/Number/MuPhone.pm \
	lib/Number/MuPhone/Config.pm \
	lib/Number/MuPhone/Data.pm \
	lib/Number/MuPhone/Parser.pm \
	lib/Number/MuPhone/Parser/AC.pm \
	lib/Number/MuPhone/Parser/AD.pm \
	lib/Number/MuPhone/Parser/AE.pm \
	lib/Number/MuPhone/Parser/AF.pm \
	lib/Number/MuPhone/Parser/AG.pm \
	lib/Number/MuPhone/Parser/AI.pm \
	lib/Number/MuPhone/Parser/AL.pm \
	lib/Number/MuPhone/Parser/AM.pm \
	lib/Number/MuPhone/Parser/AO.pm \
	lib/Number/MuPhone/Parser/AQ.pm \
	lib/Number/MuPhone/Parser/AR.pm \
	lib/Number/MuPhone/Parser/AS.pm \
	lib/Number/MuPhone/Parser/AT.pm \
	lib/Number/MuPhone/Parser/AU.pm \
	lib/Number/MuPhone/Parser/AW.pm \
	lib/Number/MuPhone/Parser/AX.pm \
	lib/Number/MuPhone/Parser/AZ.pm \
	lib/Number/MuPhone/Parser/BA.pm \
	lib/Number/MuPhone/Parser/BB.pm \
	lib/Number/MuPhone/Parser/BD.pm \
	lib/Number/MuPhone/Parser/BE.pm \
	lib/Number/MuPhone/Parser/BF.pm \
	lib/Number/MuPhone/Parser/BG.pm \
	lib/Number/MuPhone/Parser/BH.pm \
	lib/Number/MuPhone/Parser/BI.pm \
	lib/Number/MuPhone/Parser/BJ.pm \
	lib/Number/MuPhone/Parser/BL.pm \
	lib/Number/MuPhone/Parser/BM.pm \
	lib/Number/MuPhone/Parser/BN.pm \
	lib/Number/MuPhone/Parser/BO.pm \
	lib/Number/MuPhone/Parser/BQ.pm \
	lib/Number/MuPhone/Parser/BR.pm \
	lib/Number/MuPhone/Parser/BS.pm \
	lib/Number/MuPhone/Parser/BT.pm \
	lib/Number/MuPhone/Parser/BV.pm \
	lib/Number/MuPhone/Parser/BW.pm \
	lib/Number/MuPhone/Parser/BY.pm \
	lib/Number/MuPhone/Parser/BZ.pm \
	lib/Number/MuPhone/Parser/CA.pm \
	lib/Number/MuPhone/Parser/CC.pm \
	lib/Number/MuPhone/Parser/CD.pm \
	lib/Number/MuPhone/Parser/CF.pm \
	lib/Number/MuPhone/Parser/CG.pm \
	lib/Number/MuPhone/Parser/CH.pm \
	lib/Number/MuPhone/Parser/CI.pm \
	lib/Number/MuPhone/Parser/CK.pm \
	lib/Number/MuPhone/Parser/CL.pm \
	lib/Number/MuPhone/Parser/CM.pm \
	lib/Number/MuPhone/Parser/CN.pm \
	lib/Number/MuPhone/Parser/CO.pm \
	lib/Number/MuPhone/Parser/CR.pm \
	lib/Number/MuPhone/Parser/CU.pm \
	lib/Number/MuPhone/Parser/CV.pm \
	lib/Number/MuPhone/Parser/CW.pm \
	lib/Number/MuPhone/Parser/CX.pm \
	lib/Number/MuPhone/Parser/CY.pm \
	lib/Number/MuPhone/Parser/CZ.pm \
	lib/Number/MuPhone/Parser/DE.pm \
	lib/Number/MuPhone/Parser/DJ.pm \
	lib/Number/MuPhone/Parser/DK.pm \
	lib/Number/MuPhone/Parser/DM.pm \
	lib/Number/MuPhone/Parser/DO.pm \
	lib/Number/MuPhone/Parser/DZ.pm \
	lib/Number/MuPhone/Parser/EC.pm \
	lib/Number/MuPhone/Parser/EE.pm \
	lib/Number/MuPhone/Parser/EG.pm \
	lib/Number/MuPhone/Parser/EH.pm \
	lib/Number/MuPhone/Parser/ER.pm \
	lib/Number/MuPhone/Parser/ES.pm \
	lib/Number/MuPhone/Parser/ET.pm \
	lib/Number/MuPhone/Parser/FI.pm \
	lib/Number/MuPhone/Parser/FJ.pm \
	lib/Number/MuPhone/Parser/FK.pm \
	lib/Number/MuPhone/Parser/FM.pm \
	lib/Number/MuPhone/Parser/FO.pm \
	lib/Number/MuPhone/Parser/FR.pm \
	lib/Number/MuPhone/Parser/GA.pm \
	lib/Number/MuPhone/Parser/GD.pm \
	lib/Number/MuPhone/Parser/GE.pm \
	lib/Number/MuPhone/Parser/GF.pm \
	lib/Number/MuPhone/Parser/GG.pm \
	lib/Number/MuPhone/Parser/GH.pm \
	lib/Number/MuPhone/Parser/GI.pm \
	lib/Number/MuPhone/Parser/GL.pm \
	lib/Number/MuPhone/Parser/GM.pm \
	lib/Number/MuPhone/Parser/GN.pm \
	lib/Number/MuPhone/Parser/GP.pm \
	lib/Number/MuPhone/Parser/GQ.pm \
	lib/Number/MuPhone/Parser/GR.pm \
	lib/Number/MuPhone/Parser/GS.pm \
	lib/Number/MuPhone/Parser/GT.pm \
	lib/Number/MuPhone/Parser/GU.pm \
	lib/Number/MuPhone/Parser/GW.pm \
	lib/Number/MuPhone/Parser/GY.pm \
	lib/Number/MuPhone/Parser/HK.pm \
	lib/Number/MuPhone/Parser/HN.pm \
	lib/Number/MuPhone/Parser/HR.pm \
	lib/Number/MuPhone/Parser/HT.pm \
	lib/Number/MuPhone/Parser/HU.pm \
	lib/Number/MuPhone/Parser/ID.pm \
	lib/Number/MuPhone/Parser/IE.pm \
	lib/Number/MuPhone/Parser/IL.pm \
	lib/Number/MuPhone/Parser/IM.pm \
	lib/Number/MuPhone/Parser/IN.pm \
	lib/Number/MuPhone/Parser/IO.pm \
	lib/Number/MuPhone/Parser/IQ.pm \
	lib/Number/MuPhone/Parser/IR.pm \
	lib/Number/MuPhone/Parser/IS.pm \
	lib/Number/MuPhone/Parser/IT.pm \
	lib/Number/MuPhone/Parser/JE.pm \
	lib/Number/MuPhone/Parser/JM.pm \
	lib/Number/MuPhone/Parser/JO.pm \
	lib/Number/MuPhone/Parser/JP.pm \
	lib/Number/MuPhone/Parser/KE.pm \
	lib/Number/MuPhone/Parser/KG.pm \
	lib/Number/MuPhone/Parser/KH.pm \
	lib/Number/MuPhone/Parser/KI.pm \
	lib/Number/MuPhone/Parser/KM.pm \
	lib/Number/MuPhone/Parser/KN.pm \
	lib/Number/MuPhone/Parser/KP.pm \
	lib/Number/MuPhone/Parser/KR.pm \
	lib/Number/MuPhone/Parser/KW.pm \
	lib/Number/MuPhone/Parser/KY.pm \
	lib/Number/MuPhone/Parser/KZ.pm \
	lib/Number/MuPhone/Parser/LA.pm \
	lib/Number/MuPhone/Parser/LB.pm \
	lib/Number/MuPhone/Parser/LC.pm \
	lib/Number/MuPhone/Parser/LI.pm \
	lib/Number/MuPhone/Parser/LK.pm \
	lib/Number/MuPhone/Parser/LR.pm \
	lib/Number/MuPhone/Parser/LS.pm \
	lib/Number/MuPhone/Parser/LT.pm \
	lib/Number/MuPhone/Parser/LU.pm \
	lib/Number/MuPhone/Parser/LV.pm \
	lib/Number/MuPhone/Parser/LY.pm \
	lib/Number/MuPhone/Parser/MA.pm \
	lib/Number/MuPhone/Parser/MC.pm \
	lib/Number/MuPhone/Parser/MD.pm \
	lib/Number/MuPhone/Parser/ME.pm \
	lib/Number/MuPhone/Parser/MF.pm \
	lib/Number/MuPhone/Parser/MG.pm \
	lib/Number/MuPhone/Parser/MH.pm \
	lib/Number/MuPhone/Parser/MK.pm \
	lib/Number/MuPhone/Parser/ML.pm \
	lib/Number/MuPhone/Parser/MM.pm \
	lib/Number/MuPhone/Parser/MN.pm \
	lib/Number/MuPhone/Parser/MO.pm \
	lib/Number/MuPhone/Parser/MP.pm \
	lib/Number/MuPhone/Parser/MQ.pm \
	lib/Number/MuPhone/Parser/MR.pm \
	lib/Number/MuPhone/Parser/MS.pm \
	lib/Number/MuPhone/Parser/MT.pm \
	lib/Number/MuPhone/Parser/MU.pm \
	lib/Number/MuPhone/Parser/MV.pm \
	lib/Number/MuPhone/Parser/MW.pm \
	lib/Number/MuPhone/Parser/MX.pm \
	lib/Number/MuPhone/Parser/MY.pm \
	lib/Number/MuPhone/Parser/MZ.pm \
	lib/Number/MuPhone/Parser/NA.pm \
	lib/Number/MuPhone/Parser/NANP.pm \
	lib/Number/MuPhone/Parser/NC.pm \
	lib/Number/MuPhone/Parser/NE.pm \
	lib/Number/MuPhone/Parser/NF.pm \
	lib/Number/MuPhone/Parser/NG.pm \
	lib/Number/MuPhone/Parser/NI.pm \
	lib/Number/MuPhone/Parser/NL.pm \
	lib/Number/MuPhone/Parser/NO.pm \
	lib/Number/MuPhone/Parser/NP.pm \
	lib/Number/MuPhone/Parser/NR.pm \
	lib/Number/MuPhone/Parser/NU.pm \
	lib/Number/MuPhone/Parser/NZ.pm \
	lib/Number/MuPhone/Parser/OM.pm \
	lib/Number/MuPhone/Parser/PA.pm \
	lib/Number/MuPhone/Parser/PE.pm \
	lib/Number/MuPhone/Parser/PF.pm \
	lib/Number/MuPhone/Parser/PG.pm \
	lib/Number/MuPhone/Parser/PH.pm \
	lib/Number/MuPhone/Parser/PK.pm \
	lib/Number/MuPhone/Parser/PL.pm \
	lib/Number/MuPhone/Parser/PM.pm \
	lib/Number/MuPhone/Parser/PN.pm \
	lib/Number/MuPhone/Parser/PR.pm \
	lib/Number/MuPhone/Parser/PS.pm \
	lib/Number/MuPhone/Parser/PT.pm \
	lib/Number/MuPhone/Parser/PW.pm \
	lib/Number/MuPhone/Parser/PY.pm \
	lib/Number/MuPhone/Parser/QA.pm \
	lib/Number/MuPhone/Parser/RE.pm \
	lib/Number/MuPhone/Parser/RO.pm \
	lib/Number/MuPhone/Parser/RS.pm \
	lib/Number/MuPhone/Parser/RU.pm \
	lib/Number/MuPhone/Parser/RW.pm \
	lib/Number/MuPhone/Parser/SA.pm \
	lib/Number/MuPhone/Parser/SB.pm \
	lib/Number/MuPhone/Parser/SC.pm \
	lib/Number/MuPhone/Parser/SD.pm \
	lib/Number/MuPhone/Parser/SE.pm \
	lib/Number/MuPhone/Parser/SG.pm \
	lib/Number/MuPhone/Parser/SH.pm \
	lib/Number/MuPhone/Parser/SI.pm \
	lib/Number/MuPhone/Parser/SJ.pm \
	lib/Number/MuPhone/Parser/SK.pm \
	lib/Number/MuPhone/Parser/SL.pm \
	lib/Number/MuPhone/Parser/SM.pm \
	lib/Number/MuPhone/Parser/SN.pm \
	lib/Number/MuPhone/Parser/SO.pm \
	lib/Number/MuPhone/Parser/SR.pm \
	lib/Number/MuPhone/Parser/SS.pm \
	lib/Number/MuPhone/Parser/ST.pm \
	lib/Number/MuPhone/Parser/SV.pm \
	lib/Number/MuPhone/Parser/SX.pm \
	lib/Number/MuPhone/Parser/SY.pm \
	lib/Number/MuPhone/Parser/SZ.pm \
	lib/Number/MuPhone/Parser/TA.pm \
	lib/Number/MuPhone/Parser/TC.pm \
	lib/Number/MuPhone/Parser/TD.pm \
	lib/Number/MuPhone/Parser/TF.pm \
	lib/Number/MuPhone/Parser/TG.pm \
	lib/Number/MuPhone/Parser/TH.pm \
	lib/Number/MuPhone/Parser/TJ.pm \
	lib/Number/MuPhone/Parser/TK.pm \
	lib/Number/MuPhone/Parser/TL.pm \
	lib/Number/MuPhone/Parser/TM.pm \
	lib/Number/MuPhone/Parser/TN.pm \
	lib/Number/MuPhone/Parser/TO.pm \
	lib/Number/MuPhone/Parser/TR.pm \
	lib/Number/MuPhone/Parser/TT.pm \
	lib/Number/MuPhone/Parser/TV.pm \
	lib/Number/MuPhone/Parser/TW.pm \
	lib/Number/MuPhone/Parser/TZ.pm \
	lib/Number/MuPhone/Parser/UA.pm \
	lib/Number/MuPhone/Parser/UG.pm \
	lib/Number/MuPhone/Parser/UK.pm \
	lib/Number/MuPhone/Parser/US.pm \
	lib/Number/MuPhone/Parser/UY.pm \
	lib/Number/MuPhone/Parser/UZ.pm \
	lib/Number/MuPhone/Parser/VA.pm \
	lib/Number/MuPhone/Parser/VC.pm \
	lib/Number/MuPhone/Parser/VE.pm \
	lib/Number/MuPhone/Parser/VG.pm \
	lib/Number/MuPhone/Parser/VI.pm \
	lib/Number/MuPhone/Parser/VN.pm \
	lib/Number/MuPhone/Parser/VU.pm \
	lib/Number/MuPhone/Parser/WF.pm \
	lib/Number/MuPhone/Parser/WS.pm \
	lib/Number/MuPhone/Parser/YE.pm \
	lib/Number/MuPhone/Parser/YT.pm \
	lib/Number/MuPhone/Parser/ZA.pm \
	lib/Number/MuPhone/Parser/ZM.pm \
	lib/Number/MuPhone/Parser/ZW.pm

PM_TO_BLIB = lib/Number/MuPhone.pm \
	blib/lib/Number/MuPhone.pm \
	lib/Number/MuPhone/Config.pm \
	blib/lib/Number/MuPhone/Config.pm \
	lib/Number/MuPhone/Data.pm \
	blib/lib/Number/MuPhone/Data.pm \
	lib/Number/MuPhone/Parser.pm \
	blib/lib/Number/MuPhone/Parser.pm \
	lib/Number/MuPhone/Parser/AC.pm \
	blib/lib/Number/MuPhone/Parser/AC.pm \
	lib/Number/MuPhone/Parser/AD.pm \
	blib/lib/Number/MuPhone/Parser/AD.pm \
	lib/Number/MuPhone/Parser/AE.pm \
	blib/lib/Number/MuPhone/Parser/AE.pm \
	lib/Number/MuPhone/Parser/AF.pm \
	blib/lib/Number/MuPhone/Parser/AF.pm \
	lib/Number/MuPhone/Parser/AG.pm \
	blib/lib/Number/MuPhone/Parser/AG.pm \
	lib/Number/MuPhone/Parser/AI.pm \
	blib/lib/Number/MuPhone/Parser/AI.pm \
	lib/Number/MuPhone/Parser/AL.pm \
	blib/lib/Number/MuPhone/Parser/AL.pm \
	lib/Number/MuPhone/Parser/AM.pm \
	blib/lib/Number/MuPhone/Parser/AM.pm \
	lib/Number/MuPhone/Parser/AO.pm \
	blib/lib/Number/MuPhone/Parser/AO.pm \
	lib/Number/MuPhone/Parser/AQ.pm \
	blib/lib/Number/MuPhone/Parser/AQ.pm \
	lib/Number/MuPhone/Parser/AR.pm \
	blib/lib/Number/MuPhone/Parser/AR.pm \
	lib/Number/MuPhone/Parser/AS.pm \
	blib/lib/Number/MuPhone/Parser/AS.pm \
	lib/Number/MuPhone/Parser/AT.pm \
	blib/lib/Number/MuPhone/Parser/AT.pm \
	lib/Number/MuPhone/Parser/AU.pm \
	blib/lib/Number/MuPhone/Parser/AU.pm \
	lib/Number/MuPhone/Parser/AW.pm \
	blib/lib/Number/MuPhone/Parser/AW.pm \
	lib/Number/MuPhone/Parser/AX.pm \
	blib/lib/Number/MuPhone/Parser/AX.pm \
	lib/Number/MuPhone/Parser/AZ.pm \
	blib/lib/Number/MuPhone/Parser/AZ.pm \
	lib/Number/MuPhone/Parser/BA.pm \
	blib/lib/Number/MuPhone/Parser/BA.pm \
	lib/Number/MuPhone/Parser/BB.pm \
	blib/lib/Number/MuPhone/Parser/BB.pm \
	lib/Number/MuPhone/Parser/BD.pm \
	blib/lib/Number/MuPhone/Parser/BD.pm \
	lib/Number/MuPhone/Parser/BE.pm \
	blib/lib/Number/MuPhone/Parser/BE.pm \
	lib/Number/MuPhone/Parser/BF.pm \
	blib/lib/Number/MuPhone/Parser/BF.pm \
	lib/Number/MuPhone/Parser/BG.pm \
	blib/lib/Number/MuPhone/Parser/BG.pm \
	lib/Number/MuPhone/Parser/BH.pm \
	blib/lib/Number/MuPhone/Parser/BH.pm \
	lib/Number/MuPhone/Parser/BI.pm \
	blib/lib/Number/MuPhone/Parser/BI.pm \
	lib/Number/MuPhone/Parser/BJ.pm \
	blib/lib/Number/MuPhone/Parser/BJ.pm \
	lib/Number/MuPhone/Parser/BL.pm \
	blib/lib/Number/MuPhone/Parser/BL.pm \
	lib/Number/MuPhone/Parser/BM.pm \
	blib/lib/Number/MuPhone/Parser/BM.pm \
	lib/Number/MuPhone/Parser/BN.pm \
	blib/lib/Number/MuPhone/Parser/BN.pm \
	lib/Number/MuPhone/Parser/BO.pm \
	blib/lib/Number/MuPhone/Parser/BO.pm \
	lib/Number/MuPhone/Parser/BQ.pm \
	blib/lib/Number/MuPhone/Parser/BQ.pm \
	lib/Number/MuPhone/Parser/BR.pm \
	blib/lib/Number/MuPhone/Parser/BR.pm \
	lib/Number/MuPhone/Parser/BS.pm \
	blib/lib/Number/MuPhone/Parser/BS.pm \
	lib/Number/MuPhone/Parser/BT.pm \
	blib/lib/Number/MuPhone/Parser/BT.pm \
	lib/Number/MuPhone/Parser/BV.pm \
	blib/lib/Number/MuPhone/Parser/BV.pm \
	lib/Number/MuPhone/Parser/BW.pm \
	blib/lib/Number/MuPhone/Parser/BW.pm \
	lib/Number/MuPhone/Parser/BY.pm \
	blib/lib/Number/MuPhone/Parser/BY.pm \
	lib/Number/MuPhone/Parser/BZ.pm \
	blib/lib/Number/MuPhone/Parser/BZ.pm \
	lib/Number/MuPhone/Parser/CA.pm \
	blib/lib/Number/MuPhone/Parser/CA.pm \
	lib/Number/MuPhone/Parser/CC.pm \
	blib/lib/Number/MuPhone/Parser/CC.pm \
	lib/Number/MuPhone/Parser/CD.pm \
	blib/lib/Number/MuPhone/Parser/CD.pm \
	lib/Number/MuPhone/Parser/CF.pm \
	blib/lib/Number/MuPhone/Parser/CF.pm \
	lib/Number/MuPhone/Parser/CG.pm \
	blib/lib/Number/MuPhone/Parser/CG.pm \
	lib/Number/MuPhone/Parser/CH.pm \
	blib/lib/Number/MuPhone/Parser/CH.pm \
	lib/Number/MuPhone/Parser/CI.pm \
	blib/lib/Number/MuPhone/Parser/CI.pm \
	lib/Number/MuPhone/Parser/CK.pm \
	blib/lib/Number/MuPhone/Parser/CK.pm \
	lib/Number/MuPhone/Parser/CL.pm \
	blib/lib/Number/MuPhone/Parser/CL.pm \
	lib/Number/MuPhone/Parser/CM.pm \
	blib/lib/Number/MuPhone/Parser/CM.pm \
	lib/Number/MuPhone/Parser/CN.pm \
	blib/lib/Number/MuPhone/Parser/CN.pm \
	lib/Number/MuPhone/Parser/CO.pm \
	blib/lib/Number/MuPhone/Parser/CO.pm \
	lib/Number/MuPhone/Parser/CR.pm \
	blib/lib/Number/MuPhone/Parser/CR.pm \
	lib/Number/MuPhone/Parser/CU.pm \
	blib/lib/Number/MuPhone/Parser/CU.pm \
	lib/Number/MuPhone/Parser/CV.pm \
	blib/lib/Number/MuPhone/Parser/CV.pm \
	lib/Number/MuPhone/Parser/CW.pm \
	blib/lib/Number/MuPhone/Parser/CW.pm \
	lib/Number/MuPhone/Parser/CX.pm \
	blib/lib/Number/MuPhone/Parser/CX.pm \
	lib/Number/MuPhone/Parser/CY.pm \
	blib/lib/Number/MuPhone/Parser/CY.pm \
	lib/Number/MuPhone/Parser/CZ.pm \
	blib/lib/Number/MuPhone/Parser/CZ.pm \
	lib/Number/MuPhone/Parser/DE.pm \
	blib/lib/Number/MuPhone/Parser/DE.pm \
	lib/Number/MuPhone/Parser/DJ.pm \
	blib/lib/Number/MuPhone/Parser/DJ.pm \
	lib/Number/MuPhone/Parser/DK.pm \
	blib/lib/Number/MuPhone/Parser/DK.pm \
	lib/Number/MuPhone/Parser/DM.pm \
	blib/lib/Number/MuPhone/Parser/DM.pm \
	lib/Number/MuPhone/Parser/DO.pm \
	blib/lib/Number/MuPhone/Parser/DO.pm \
	lib/Number/MuPhone/Parser/DZ.pm \
	blib/lib/Number/MuPhone/Parser/DZ.pm \
	lib/Number/MuPhone/Parser/EC.pm \
	blib/lib/Number/MuPhone/Parser/EC.pm \
	lib/Number/MuPhone/Parser/EE.pm \
	blib/lib/Number/MuPhone/Parser/EE.pm \
	lib/Number/MuPhone/Parser/EG.pm \
	blib/lib/Number/MuPhone/Parser/EG.pm \
	lib/Number/MuPhone/Parser/EH.pm \
	blib/lib/Number/MuPhone/Parser/EH.pm \
	lib/Number/MuPhone/Parser/ER.pm \
	blib/lib/Number/MuPhone/Parser/ER.pm \
	lib/Number/MuPhone/Parser/ES.pm \
	blib/lib/Number/MuPhone/Parser/ES.pm \
	lib/Number/MuPhone/Parser/ET.pm \
	blib/lib/Number/MuPhone/Parser/ET.pm \
	lib/Number/MuPhone/Parser/FI.pm \
	blib/lib/Number/MuPhone/Parser/FI.pm \
	lib/Number/MuPhone/Parser/FJ.pm \
	blib/lib/Number/MuPhone/Parser/FJ.pm \
	lib/Number/MuPhone/Parser/FK.pm \
	blib/lib/Number/MuPhone/Parser/FK.pm \
	lib/Number/MuPhone/Parser/FM.pm \
	blib/lib/Number/MuPhone/Parser/FM.pm \
	lib/Number/MuPhone/Parser/FO.pm \
	blib/lib/Number/MuPhone/Parser/FO.pm \
	lib/Number/MuPhone/Parser/FR.pm \
	blib/lib/Number/MuPhone/Parser/FR.pm \
	lib/Number/MuPhone/Parser/GA.pm \
	blib/lib/Number/MuPhone/Parser/GA.pm \
	lib/Number/MuPhone/Parser/GD.pm \
	blib/lib/Number/MuPhone/Parser/GD.pm \
	lib/Number/MuPhone/Parser/GE.pm \
	blib/lib/Number/MuPhone/Parser/GE.pm \
	lib/Number/MuPhone/Parser/GF.pm \
	blib/lib/Number/MuPhone/Parser/GF.pm \
	lib/Number/MuPhone/Parser/GG.pm \
	blib/lib/Number/MuPhone/Parser/GG.pm \
	lib/Number/MuPhone/Parser/GH.pm \
	blib/lib/Number/MuPhone/Parser/GH.pm \
	lib/Number/MuPhone/Parser/GI.pm \
	blib/lib/Number/MuPhone/Parser/GI.pm \
	lib/Number/MuPhone/Parser/GL.pm \
	blib/lib/Number/MuPhone/Parser/GL.pm \
	lib/Number/MuPhone/Parser/GM.pm \
	blib/lib/Number/MuPhone/Parser/GM.pm \
	lib/Number/MuPhone/Parser/GN.pm \
	blib/lib/Number/MuPhone/Parser/GN.pm \
	lib/Number/MuPhone/Parser/GP.pm \
	blib/lib/Number/MuPhone/Parser/GP.pm \
	lib/Number/MuPhone/Parser/GQ.pm \
	blib/lib/Number/MuPhone/Parser/GQ.pm \
	lib/Number/MuPhone/Parser/GR.pm \
	blib/lib/Number/MuPhone/Parser/GR.pm \
	lib/Number/MuPhone/Parser/GS.pm \
	blib/lib/Number/MuPhone/Parser/GS.pm \
	lib/Number/MuPhone/Parser/GT.pm \
	blib/lib/Number/MuPhone/Parser/GT.pm \
	lib/Number/MuPhone/Parser/GU.pm \
	blib/lib/Number/MuPhone/Parser/GU.pm \
	lib/Number/MuPhone/Parser/GW.pm \
	blib/lib/Number/MuPhone/Parser/GW.pm \
	lib/Number/MuPhone/Parser/GY.pm \
	blib/lib/Number/MuPhone/Parser/GY.pm \
	lib/Number/MuPhone/Parser/HK.pm \
	blib/lib/Number/MuPhone/Parser/HK.pm \
	lib/Number/MuPhone/Parser/HN.pm \
	blib/lib/Number/MuPhone/Parser/HN.pm \
	lib/Number/MuPhone/Parser/HR.pm \
	blib/lib/Number/MuPhone/Parser/HR.pm \
	lib/Number/MuPhone/Parser/HT.pm \
	blib/lib/Number/MuPhone/Parser/HT.pm \
	lib/Number/MuPhone/Parser/HU.pm \
	blib/lib/Number/MuPhone/Parser/HU.pm \
	lib/Number/MuPhone/Parser/ID.pm \
	blib/lib/Number/MuPhone/Parser/ID.pm \
	lib/Number/MuPhone/Parser/IE.pm \
	blib/lib/Number/MuPhone/Parser/IE.pm \
	lib/Number/MuPhone/Parser/IL.pm \
	blib/lib/Number/MuPhone/Parser/IL.pm \
	lib/Number/MuPhone/Parser/IM.pm \
	blib/lib/Number/MuPhone/Parser/IM.pm \
	lib/Number/MuPhone/Parser/IN.pm \
	blib/lib/Number/MuPhone/Parser/IN.pm \
	lib/Number/MuPhone/Parser/IO.pm \
	blib/lib/Number/MuPhone/Parser/IO.pm \
	lib/Number/MuPhone/Parser/IQ.pm \
	blib/lib/Number/MuPhone/Parser/IQ.pm \
	lib/Number/MuPhone/Parser/IR.pm \
	blib/lib/Number/MuPhone/Parser/IR.pm \
	lib/Number/MuPhone/Parser/IS.pm \
	blib/lib/Number/MuPhone/Parser/IS.pm \
	lib/Number/MuPhone/Parser/IT.pm \
	blib/lib/Number/MuPhone/Parser/IT.pm \
	lib/Number/MuPhone/Parser/JE.pm \
	blib/lib/Number/MuPhone/Parser/JE.pm \
	lib/Number/MuPhone/Parser/JM.pm \
	blib/lib/Number/MuPhone/Parser/JM.pm \
	lib/Number/MuPhone/Parser/JO.pm \
	blib/lib/Number/MuPhone/Parser/JO.pm \
	lib/Number/MuPhone/Parser/JP.pm \
	blib/lib/Number/MuPhone/Parser/JP.pm \
	lib/Number/MuPhone/Parser/KE.pm \
	blib/lib/Number/MuPhone/Parser/KE.pm \
	lib/Number/MuPhone/Parser/KG.pm \
	blib/lib/Number/MuPhone/Parser/KG.pm \
	lib/Number/MuPhone/Parser/KH.pm \
	blib/lib/Number/MuPhone/Parser/KH.pm \
	lib/Number/MuPhone/Parser/KI.pm \
	blib/lib/Number/MuPhone/Parser/KI.pm \
	lib/Number/MuPhone/Parser/KM.pm \
	blib/lib/Number/MuPhone/Parser/KM.pm \
	lib/Number/MuPhone/Parser/KN.pm \
	blib/lib/Number/MuPhone/Parser/KN.pm \
	lib/Number/MuPhone/Parser/KP.pm \
	blib/lib/Number/MuPhone/Parser/KP.pm \
	lib/Number/MuPhone/Parser/KR.pm \
	blib/lib/Number/MuPhone/Parser/KR.pm \
	lib/Number/MuPhone/Parser/KW.pm \
	blib/lib/Number/MuPhone/Parser/KW.pm \
	lib/Number/MuPhone/Parser/KY.pm \
	blib/lib/Number/MuPhone/Parser/KY.pm \
	lib/Number/MuPhone/Parser/KZ.pm \
	blib/lib/Number/MuPhone/Parser/KZ.pm \
	lib/Number/MuPhone/Parser/LA.pm \
	blib/lib/Number/MuPhone/Parser/LA.pm \
	lib/Number/MuPhone/Parser/LB.pm \
	blib/lib/Number/MuPhone/Parser/LB.pm \
	lib/Number/MuPhone/Parser/LC.pm \
	blib/lib/Number/MuPhone/Parser/LC.pm \
	lib/Number/MuPhone/Parser/LI.pm \
	blib/lib/Number/MuPhone/Parser/LI.pm \
	lib/Number/MuPhone/Parser/LK.pm \
	blib/lib/Number/MuPhone/Parser/LK.pm \
	lib/Number/MuPhone/Parser/LR.pm \
	blib/lib/Number/MuPhone/Parser/LR.pm \
	lib/Number/MuPhone/Parser/LS.pm \
	blib/lib/Number/MuPhone/Parser/LS.pm \
	lib/Number/MuPhone/Parser/LT.pm \
	blib/lib/Number/MuPhone/Parser/LT.pm \
	lib/Number/MuPhone/Parser/LU.pm \
	blib/lib/Number/MuPhone/Parser/LU.pm \
	lib/Number/MuPhone/Parser/LV.pm \
	blib/lib/Number/MuPhone/Parser/LV.pm \
	lib/Number/MuPhone/Parser/LY.pm \
	blib/lib/Number/MuPhone/Parser/LY.pm \
	lib/Number/MuPhone/Parser/MA.pm \
	blib/lib/Number/MuPhone/Parser/MA.pm \
	lib/Number/MuPhone/Parser/MC.pm \
	blib/lib/Number/MuPhone/Parser/MC.pm \
	lib/Number/MuPhone/Parser/MD.pm \
	blib/lib/Number/MuPhone/Parser/MD.pm \
	lib/Number/MuPhone/Parser/ME.pm \
	blib/lib/Number/MuPhone/Parser/ME.pm \
	lib/Number/MuPhone/Parser/MF.pm \
	blib/lib/Number/MuPhone/Parser/MF.pm \
	lib/Number/MuPhone/Parser/MG.pm \
	blib/lib/Number/MuPhone/Parser/MG.pm \
	lib/Number/MuPhone/Parser/MH.pm \
	blib/lib/Number/MuPhone/Parser/MH.pm \
	lib/Number/MuPhone/Parser/MK.pm \
	blib/lib/Number/MuPhone/Parser/MK.pm \
	lib/Number/MuPhone/Parser/ML.pm \
	blib/lib/Number/MuPhone/Parser/ML.pm \
	lib/Number/MuPhone/Parser/MM.pm \
	blib/lib/Number/MuPhone/Parser/MM.pm \
	lib/Number/MuPhone/Parser/MN.pm \
	blib/lib/Number/MuPhone/Parser/MN.pm \
	lib/Number/MuPhone/Parser/MO.pm \
	blib/lib/Number/MuPhone/Parser/MO.pm \
	lib/Number/MuPhone/Parser/MP.pm \
	blib/lib/Number/MuPhone/Parser/MP.pm \
	lib/Number/MuPhone/Parser/MQ.pm \
	blib/lib/Number/MuPhone/Parser/MQ.pm \
	lib/Number/MuPhone/Parser/MR.pm \
	blib/lib/Number/MuPhone/Parser/MR.pm \
	lib/Number/MuPhone/Parser/MS.pm \
	blib/lib/Number/MuPhone/Parser/MS.pm \
	lib/Number/MuPhone/Parser/MT.pm \
	blib/lib/Number/MuPhone/Parser/MT.pm \
	lib/Number/MuPhone/Parser/MU.pm \
	blib/lib/Number/MuPhone/Parser/MU.pm \
	lib/Number/MuPhone/Parser/MV.pm \
	blib/lib/Number/MuPhone/Parser/MV.pm \
	lib/Number/MuPhone/Parser/MW.pm \
	blib/lib/Number/MuPhone/Parser/MW.pm \
	lib/Number/MuPhone/Parser/MX.pm \
	blib/lib/Number/MuPhone/Parser/MX.pm \
	lib/Number/MuPhone/Parser/MY.pm \
	blib/lib/Number/MuPhone/Parser/MY.pm \
	lib/Number/MuPhone/Parser/MZ.pm \
	blib/lib/Number/MuPhone/Parser/MZ.pm \
	lib/Number/MuPhone/Parser/NA.pm \
	blib/lib/Number/MuPhone/Parser/NA.pm \
	lib/Number/MuPhone/Parser/NANP.pm \
	blib/lib/Number/MuPhone/Parser/NANP.pm \
	lib/Number/MuPhone/Parser/NC.pm \
	blib/lib/Number/MuPhone/Parser/NC.pm \
	lib/Number/MuPhone/Parser/NE.pm \
	blib/lib/Number/MuPhone/Parser/NE.pm \
	lib/Number/MuPhone/Parser/NF.pm \
	blib/lib/Number/MuPhone/Parser/NF.pm \
	lib/Number/MuPhone/Parser/NG.pm \
	blib/lib/Number/MuPhone/Parser/NG.pm \
	lib/Number/MuPhone/Parser/NI.pm \
	blib/lib/Number/MuPhone/Parser/NI.pm \
	lib/Number/MuPhone/Parser/NL.pm \
	blib/lib/Number/MuPhone/Parser/NL.pm \
	lib/Number/MuPhone/Parser/NO.pm \
	blib/lib/Number/MuPhone/Parser/NO.pm \
	lib/Number/MuPhone/Parser/NP.pm \
	blib/lib/Number/MuPhone/Parser/NP.pm \
	lib/Number/MuPhone/Parser/NR.pm \
	blib/lib/Number/MuPhone/Parser/NR.pm \
	lib/Number/MuPhone/Parser/NU.pm \
	blib/lib/Number/MuPhone/Parser/NU.pm \
	lib/Number/MuPhone/Parser/NZ.pm \
	blib/lib/Number/MuPhone/Parser/NZ.pm \
	lib/Number/MuPhone/Parser/OM.pm \
	blib/lib/Number/MuPhone/Parser/OM.pm \
	lib/Number/MuPhone/Parser/PA.pm \
	blib/lib/Number/MuPhone/Parser/PA.pm \
	lib/Number/MuPhone/Parser/PE.pm \
	blib/lib/Number/MuPhone/Parser/PE.pm \
	lib/Number/MuPhone/Parser/PF.pm \
	blib/lib/Number/MuPhone/Parser/PF.pm \
	lib/Number/MuPhone/Parser/PG.pm \
	blib/lib/Number/MuPhone/Parser/PG.pm \
	lib/Number/MuPhone/Parser/PH.pm \
	blib/lib/Number/MuPhone/Parser/PH.pm \
	lib/Number/MuPhone/Parser/PK.pm \
	blib/lib/Number/MuPhone/Parser/PK.pm \
	lib/Number/MuPhone/Parser/PL.pm \
	blib/lib/Number/MuPhone/Parser/PL.pm \
	lib/Number/MuPhone/Parser/PM.pm \
	blib/lib/Number/MuPhone/Parser/PM.pm \
	lib/Number/MuPhone/Parser/PN.pm \
	blib/lib/Number/MuPhone/Parser/PN.pm \
	lib/Number/MuPhone/Parser/PR.pm \
	blib/lib/Number/MuPhone/Parser/PR.pm \
	lib/Number/MuPhone/Parser/PS.pm \
	blib/lib/Number/MuPhone/Parser/PS.pm \
	lib/Number/MuPhone/Parser/PT.pm \
	blib/lib/Number/MuPhone/Parser/PT.pm \
	lib/Number/MuPhone/Parser/PW.pm \
	blib/lib/Number/MuPhone/Parser/PW.pm \
	lib/Number/MuPhone/Parser/PY.pm \
	blib/lib/Number/MuPhone/Parser/PY.pm \
	lib/Number/MuPhone/Parser/QA.pm \
	blib/lib/Number/MuPhone/Parser/QA.pm \
	lib/Number/MuPhone/Parser/RE.pm \
	blib/lib/Number/MuPhone/Parser/RE.pm \
	lib/Number/MuPhone/Parser/RO.pm \
	blib/lib/Number/MuPhone/Parser/RO.pm \
	lib/Number/MuPhone/Parser/RS.pm \
	blib/lib/Number/MuPhone/Parser/RS.pm \
	lib/Number/MuPhone/Parser/RU.pm \
	blib/lib/Number/MuPhone/Parser/RU.pm \
	lib/Number/MuPhone/Parser/RW.pm \
	blib/lib/Number/MuPhone/Parser/RW.pm \
	lib/Number/MuPhone/Parser/SA.pm \
	blib/lib/Number/MuPhone/Parser/SA.pm \
	lib/Number/MuPhone/Parser/SB.pm \
	blib/lib/Number/MuPhone/Parser/SB.pm \
	lib/Number/MuPhone/Parser/SC.pm \
	blib/lib/Number/MuPhone/Parser/SC.pm \
	lib/Number/MuPhone/Parser/SD.pm \
	blib/lib/Number/MuPhone/Parser/SD.pm \
	lib/Number/MuPhone/Parser/SE.pm \
	blib/lib/Number/MuPhone/Parser/SE.pm \
	lib/Number/MuPhone/Parser/SG.pm \
	blib/lib/Number/MuPhone/Parser/SG.pm \
	lib/Number/MuPhone/Parser/SH.pm \
	blib/lib/Number/MuPhone/Parser/SH.pm \
	lib/Number/MuPhone/Parser/SI.pm \
	blib/lib/Number/MuPhone/Parser/SI.pm \
	lib/Number/MuPhone/Parser/SJ.pm \
	blib/lib/Number/MuPhone/Parser/SJ.pm \
	lib/Number/MuPhone/Parser/SK.pm \
	blib/lib/Number/MuPhone/Parser/SK.pm \
	lib/Number/MuPhone/Parser/SL.pm \
	blib/lib/Number/MuPhone/Parser/SL.pm \
	lib/Number/MuPhone/Parser/SM.pm \
	blib/lib/Number/MuPhone/Parser/SM.pm \
	lib/Number/MuPhone/Parser/SN.pm \
	blib/lib/Number/MuPhone/Parser/SN.pm \
	lib/Number/MuPhone/Parser/SO.pm \
	blib/lib/Number/MuPhone/Parser/SO.pm \
	lib/Number/MuPhone/Parser/SR.pm \
	blib/lib/Number/MuPhone/Parser/SR.pm \
	lib/Number/MuPhone/Parser/SS.pm \
	blib/lib/Number/MuPhone/Parser/SS.pm \
	lib/Number/MuPhone/Parser/ST.pm \
	blib/lib/Number/MuPhone/Parser/ST.pm \
	lib/Number/MuPhone/Parser/SV.pm \
	blib/lib/Number/MuPhone/Parser/SV.pm \
	lib/Number/MuPhone/Parser/SX.pm \
	blib/lib/Number/MuPhone/Parser/SX.pm \
	lib/Number/MuPhone/Parser/SY.pm \
	blib/lib/Number/MuPhone/Parser/SY.pm \
	lib/Number/MuPhone/Parser/SZ.pm \
	blib/lib/Number/MuPhone/Parser/SZ.pm \
	lib/Number/MuPhone/Parser/TA.pm \
	blib/lib/Number/MuPhone/Parser/TA.pm \
	lib/Number/MuPhone/Parser/TC.pm \
	blib/lib/Number/MuPhone/Parser/TC.pm \
	lib/Number/MuPhone/Parser/TD.pm \
	blib/lib/Number/MuPhone/Parser/TD.pm \
	lib/Number/MuPhone/Parser/TF.pm \
	blib/lib/Number/MuPhone/Parser/TF.pm \
	lib/Number/MuPhone/Parser/TG.pm \
	blib/lib/Number/MuPhone/Parser/TG.pm \
	lib/Number/MuPhone/Parser/TH.pm \
	blib/lib/Number/MuPhone/Parser/TH.pm \
	lib/Number/MuPhone/Parser/TJ.pm \
	blib/lib/Number/MuPhone/Parser/TJ.pm \
	lib/Number/MuPhone/Parser/TK.pm \
	blib/lib/Number/MuPhone/Parser/TK.pm \
	lib/Number/MuPhone/Parser/TL.pm \
	blib/lib/Number/MuPhone/Parser/TL.pm \
	lib/Number/MuPhone/Parser/TM.pm \
	blib/lib/Number/MuPhone/Parser/TM.pm \
	lib/Number/MuPhone/Parser/TN.pm \
	blib/lib/Number/MuPhone/Parser/TN.pm \
	lib/Number/MuPhone/Parser/TO.pm \
	blib/lib/Number/MuPhone/Parser/TO.pm \
	lib/Number/MuPhone/Parser/TR.pm \
	blib/lib/Number/MuPhone/Parser/TR.pm \
	lib/Number/MuPhone/Parser/TT.pm \
	blib/lib/Number/MuPhone/Parser/TT.pm \
	lib/Number/MuPhone/Parser/TV.pm \
	blib/lib/Number/MuPhone/Parser/TV.pm \
	lib/Number/MuPhone/Parser/TW.pm \
	blib/lib/Number/MuPhone/Parser/TW.pm \
	lib/Number/MuPhone/Parser/TZ.pm \
	blib/lib/Number/MuPhone/Parser/TZ.pm \
	lib/Number/MuPhone/Parser/UA.pm \
	blib/lib/Number/MuPhone/Parser/UA.pm \
	lib/Number/MuPhone/Parser/UG.pm \
	blib/lib/Number/MuPhone/Parser/UG.pm \
	lib/Number/MuPhone/Parser/UK.pm \
	blib/lib/Number/MuPhone/Parser/UK.pm \
	lib/Number/MuPhone/Parser/US.pm \
	blib/lib/Number/MuPhone/Parser/US.pm \
	lib/Number/MuPhone/Parser/UY.pm \
	blib/lib/Number/MuPhone/Parser/UY.pm \
	lib/Number/MuPhone/Parser/UZ.pm \
	blib/lib/Number/MuPhone/Parser/UZ.pm \
	lib/Number/MuPhone/Parser/VA.pm \
	blib/lib/Number/MuPhone/Parser/VA.pm \
	lib/Number/MuPhone/Parser/VC.pm \
	blib/lib/Number/MuPhone/Parser/VC.pm \
	lib/Number/MuPhone/Parser/VE.pm \
	blib/lib/Number/MuPhone/Parser/VE.pm \
	lib/Number/MuPhone/Parser/VG.pm \
	blib/lib/Number/MuPhone/Parser/VG.pm \
	lib/Number/MuPhone/Parser/VI.pm \
	blib/lib/Number/MuPhone/Parser/VI.pm \
	lib/Number/MuPhone/Parser/VN.pm \
	blib/lib/Number/MuPhone/Parser/VN.pm \
	lib/Number/MuPhone/Parser/VU.pm \
	blib/lib/Number/MuPhone/Parser/VU.pm \
	lib/Number/MuPhone/Parser/WF.pm \
	blib/lib/Number/MuPhone/Parser/WF.pm \
	lib/Number/MuPhone/Parser/WS.pm \
	blib/lib/Number/MuPhone/Parser/WS.pm \
	lib/Number/MuPhone/Parser/YE.pm \
	blib/lib/Number/MuPhone/Parser/YE.pm \
	lib/Number/MuPhone/Parser/YT.pm \
	blib/lib/Number/MuPhone/Parser/YT.pm \
	lib/Number/MuPhone/Parser/ZA.pm \
	blib/lib/Number/MuPhone/Parser/ZA.pm \
	lib/Number/MuPhone/Parser/ZM.pm \
	blib/lib/Number/MuPhone/Parser/ZM.pm \
	lib/Number/MuPhone/Parser/ZW.pm \
	blib/lib/Number/MuPhone/Parser/ZW.pm


# --- MakeMaker platform_constants section:
MM_Unix_VERSION = 7.0401
PERL_MALLOC_DEF = -DPERL_EXTMALLOC_DEF -Dmalloc=Perl_malloc -Dfree=Perl_mfree -Drealloc=Perl_realloc -Dcalloc=Perl_calloc


# --- MakeMaker tool_autosplit section:
# Usage: $(AUTOSPLITFILE) FileToSplit AutoDirToSplitInto
AUTOSPLITFILE = $(ABSPERLRUN)  -e 'use AutoSplit;  autosplit($$$$ARGV[0], $$$$ARGV[1], 0, 1, 1)' --



# --- MakeMaker tool_xsubpp section:


# --- MakeMaker tools_other section:
SHELL = /bin/sh
CHMOD = chmod
CP = cp
MV = mv
NOOP = $(TRUE)
NOECHO = @
RM_F = rm -f
RM_RF = rm -rf
TEST_F = test -f
TOUCH = touch
UMASK_NULL = umask 0
DEV_NULL = > /dev/null 2>&1
MKPATH = $(ABSPERLRUN) -MExtUtils::Command -e 'mkpath' --
EQUALIZE_TIMESTAMP = $(ABSPERLRUN) -MExtUtils::Command -e 'eqtime' --
FALSE = false
TRUE = true
ECHO = echo
ECHO_N = echo -n
UNINST = 0
VERBINST = 0
MOD_INSTALL = $(ABSPERLRUN) -MExtUtils::Install -e 'install([ from_to => {@ARGV}, verbose => '\''$(VERBINST)'\'', uninstall_shadows => '\''$(UNINST)'\'', dir_mode => '\''$(PERM_DIR)'\'' ]);' --
DOC_INSTALL = $(ABSPERLRUN) -MExtUtils::Command::MM -e 'perllocal_install' --
UNINSTALL = $(ABSPERLRUN) -MExtUtils::Command::MM -e 'uninstall' --
WARN_IF_OLD_PACKLIST = $(ABSPERLRUN) -MExtUtils::Command::MM -e 'warn_if_old_packlist' --
MACROSTART = 
MACROEND = 
USEMAKEFILE = -f
FIXIN = $(ABSPERLRUN) -MExtUtils::MY -e 'MY->fixin(shift)' --
CP_NONEMPTY = $(ABSPERLRUN) -MExtUtils::Command::MM -e 'cp_nonempty' --


# --- MakeMaker makemakerdflt section:
makemakerdflt : all
	$(NOECHO) $(NOOP)


# --- MakeMaker dist section:
TAR = tar
TARFLAGS = cvf
ZIP = zip
ZIPFLAGS = -r
COMPRESS = gzip -9f
SUFFIX = .gz
SHAR = shar
PREOP = $(NOECHO) $(NOOP)
POSTOP = $(NOECHO) $(NOOP)
TO_UNIX = $(NOECHO) $(NOOP)
CI = ci -u
RCS_LABEL = rcs -Nv$(VERSION_SYM): -q
DIST_CP = best
DIST_DEFAULT = tardist
DISTNAME = Number-MuPhone
DISTVNAME = Number-MuPhone-0.02


# --- MakeMaker macro section:


# --- MakeMaker depend section:


# --- MakeMaker cflags section:


# --- MakeMaker const_loadlibs section:


# --- MakeMaker const_cccmd section:


# --- MakeMaker post_constants section:


# --- MakeMaker pasthru section:

PASTHRU = LIBPERL_A="$(LIBPERL_A)"\
	LINKTYPE="$(LINKTYPE)"\
	LD="$(LD)"\
	PREFIX="$(PREFIX)"


# --- MakeMaker special_targets section:
.SUFFIXES : .xs .c .C .cpp .i .s .cxx .cc $(OBJ_EXT)

.PHONY: all config static dynamic test linkext manifest blibdirs clean realclean disttest distdir



# --- MakeMaker c_o section:


# --- MakeMaker xs_c section:


# --- MakeMaker xs_o section:


# --- MakeMaker top_targets section:
all :: pure_all manifypods
	$(NOECHO) $(NOOP)


pure_all :: config pm_to_blib subdirs linkext
	$(NOECHO) $(NOOP)

subdirs :: $(MYEXTLIB)
	$(NOECHO) $(NOOP)

config :: $(FIRST_MAKEFILE) blibdirs
	$(NOECHO) $(NOOP)

help :
	perldoc ExtUtils::MakeMaker


# --- MakeMaker blibdirs section:
blibdirs : $(INST_LIBDIR)$(DFSEP).exists $(INST_ARCHLIB)$(DFSEP).exists $(INST_AUTODIR)$(DFSEP).exists $(INST_ARCHAUTODIR)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists $(INST_SCRIPT)$(DFSEP).exists $(INST_MAN1DIR)$(DFSEP).exists $(INST_MAN3DIR)$(DFSEP).exists
	$(NOECHO) $(NOOP)

# Backwards compat with 6.18 through 6.25
blibdirs.ts : blibdirs
	$(NOECHO) $(NOOP)

$(INST_LIBDIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_LIBDIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_LIBDIR)
	$(NOECHO) $(TOUCH) $(INST_LIBDIR)$(DFSEP).exists

$(INST_ARCHLIB)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_ARCHLIB)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_ARCHLIB)
	$(NOECHO) $(TOUCH) $(INST_ARCHLIB)$(DFSEP).exists

$(INST_AUTODIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_AUTODIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_AUTODIR)
	$(NOECHO) $(TOUCH) $(INST_AUTODIR)$(DFSEP).exists

$(INST_ARCHAUTODIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_ARCHAUTODIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_ARCHAUTODIR)
	$(NOECHO) $(TOUCH) $(INST_ARCHAUTODIR)$(DFSEP).exists

$(INST_BIN)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_BIN)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_BIN)
	$(NOECHO) $(TOUCH) $(INST_BIN)$(DFSEP).exists

$(INST_SCRIPT)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_SCRIPT)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_SCRIPT)
	$(NOECHO) $(TOUCH) $(INST_SCRIPT)$(DFSEP).exists

$(INST_MAN1DIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_MAN1DIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_MAN1DIR)
	$(NOECHO) $(TOUCH) $(INST_MAN1DIR)$(DFSEP).exists

$(INST_MAN3DIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_MAN3DIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_MAN3DIR)
	$(NOECHO) $(TOUCH) $(INST_MAN3DIR)$(DFSEP).exists



# --- MakeMaker linkext section:

linkext :: $(LINKTYPE)
	$(NOECHO) $(NOOP)


# --- MakeMaker dlsyms section:


# --- MakeMaker dynamic_bs section:

BOOTSTRAP =


# --- MakeMaker dynamic section:

dynamic :: $(FIRST_MAKEFILE) $(BOOTSTRAP) $(INST_DYNAMIC)
	$(NOECHO) $(NOOP)


# --- MakeMaker dynamic_lib section:


# --- MakeMaker static section:

## $(INST_PM) has been moved to the all: target.
## It remains here for awhile to allow for old usage: "make static"
static :: $(FIRST_MAKEFILE) $(INST_STATIC)
	$(NOECHO) $(NOOP)


# --- MakeMaker static_lib section:


# --- MakeMaker manifypods section:

POD2MAN_EXE = $(PERLRUN) "-MExtUtils::Command::MM" -e pod2man "--"
POD2MAN = $(POD2MAN_EXE)


manifypods : pure_all  \
	lib/Number/MuPhone.pm \
	lib/Number/MuPhone/Parser.pm
	$(NOECHO) $(POD2MAN) --section=$(MAN3EXT) --perm_rw=$(PERM_RW) -u \
	  lib/Number/MuPhone.pm $(INST_MAN3DIR)/Number::MuPhone.$(MAN3EXT) \
	  lib/Number/MuPhone/Parser.pm $(INST_MAN3DIR)/Number::MuPhone::Parser.$(MAN3EXT) 




# --- MakeMaker processPL section:


# --- MakeMaker installbin section:


# --- MakeMaker subdirs section:

# none

# --- MakeMaker clean_subdirs section:
clean_subdirs :
	$(NOECHO) $(NOOP)


# --- MakeMaker clean section:

# Delete temporary files but do not touch installed files. We don't delete
# the Makefile here so a later make realclean still has a makefile to use.

clean :: clean_subdirs
	- $(RM_F) \
	  $(BASEEXT).bso $(BASEEXT).def \
	  $(BASEEXT).exp $(BASEEXT).x \
	  $(BOOTSTRAP) $(INST_ARCHAUTODIR)/extralibs.all \
	  $(INST_ARCHAUTODIR)/extralibs.ld $(MAKE_APERL_FILE) \
	  *$(LIB_EXT) *$(OBJ_EXT) \
	  *perl.core MYMETA.json \
	  MYMETA.yml blibdirs.ts \
	  core core.*perl.*.? \
	  core.[0-9] core.[0-9][0-9] \
	  core.[0-9][0-9][0-9] core.[0-9][0-9][0-9][0-9] \
	  core.[0-9][0-9][0-9][0-9][0-9] lib$(BASEEXT).def \
	  mon.out perl \
	  perl$(EXE_EXT) perl.exe \
	  perlmain.c pm_to_blib \
	  pm_to_blib.ts so_locations \
	  tmon.out 
	- $(RM_RF) \
	  Number-MuPhone-* blib 
	  $(NOECHO) $(RM_F) $(MAKEFILE_OLD)
	- $(MV) $(FIRST_MAKEFILE) $(MAKEFILE_OLD) $(DEV_NULL)


# --- MakeMaker realclean_subdirs section:
realclean_subdirs :
	$(NOECHO) $(NOOP)


# --- MakeMaker realclean section:
# Delete temporary files (via clean) and also delete dist files
realclean purge ::  clean realclean_subdirs
	- $(RM_F) \
	  $(FIRST_MAKEFILE) $(MAKEFILE_OLD) 
	- $(RM_RF) \
	  $(DISTVNAME) 


# --- MakeMaker metafile section:
metafile : create_distdir
	$(NOECHO) $(ECHO) Generating META.yml
	$(NOECHO) $(ECHO) '---' > META_new.yml
	$(NOECHO) $(ECHO) 'abstract: '\''phone number parsing and display'\''' >> META_new.yml
	$(NOECHO) $(ECHO) 'author:' >> META_new.yml
	$(NOECHO) $(ECHO) '  - '\''Clive Holloway <clive.holloway@gmail.com>'\''' >> META_new.yml
	$(NOECHO) $(ECHO) 'build_requires:' >> META_new.yml
	$(NOECHO) $(ECHO) '  Test::More: '\''0'\''' >> META_new.yml
	$(NOECHO) $(ECHO) 'configure_requires:' >> META_new.yml
	$(NOECHO) $(ECHO) '  ExtUtils::MakeMaker: '\''0'\''' >> META_new.yml
	$(NOECHO) $(ECHO) 'dynamic_config: 1' >> META_new.yml
	$(NOECHO) $(ECHO) 'generated_by: '\''ExtUtils::MakeMaker version 7.0401, CPAN::Meta::Converter version 2.150005'\''' >> META_new.yml
	$(NOECHO) $(ECHO) 'license: artistic_2' >> META_new.yml
	$(NOECHO) $(ECHO) 'meta-spec:' >> META_new.yml
	$(NOECHO) $(ECHO) '  url: http://module-build.sourceforge.net/META-spec-v1.4.html' >> META_new.yml
	$(NOECHO) $(ECHO) '  version: '\''1.4'\''' >> META_new.yml
	$(NOECHO) $(ECHO) 'name: Number-MuPhone' >> META_new.yml
	$(NOECHO) $(ECHO) 'no_index:' >> META_new.yml
	$(NOECHO) $(ECHO) '  directory:' >> META_new.yml
	$(NOECHO) $(ECHO) '    - t' >> META_new.yml
	$(NOECHO) $(ECHO) '    - inc' >> META_new.yml
	$(NOECHO) $(ECHO) 'requires:' >> META_new.yml
	$(NOECHO) $(ECHO) '  Moo: '\''2.000000'\''' >> META_new.yml
	$(NOECHO) $(ECHO) '  YAML::XS: '\''0.21'\''' >> META_new.yml
	$(NOECHO) $(ECHO) '  perl: '\''5.006'\''' >> META_new.yml
	$(NOECHO) $(ECHO) 'version: '\''0.02'\''' >> META_new.yml
	$(NOECHO) $(ECHO) 'x_serialization_backend: '\''CPAN::Meta::YAML version 0.018'\''' >> META_new.yml
	-$(NOECHO) $(MV) META_new.yml $(DISTVNAME)/META.yml
	$(NOECHO) $(ECHO) Generating META.json
	$(NOECHO) $(ECHO) '{' > META_new.json
	$(NOECHO) $(ECHO) '   "abstract" : "phone number parsing and display",' >> META_new.json
	$(NOECHO) $(ECHO) '   "author" : [' >> META_new.json
	$(NOECHO) $(ECHO) '      "Clive Holloway <clive.holloway@gmail.com>"' >> META_new.json
	$(NOECHO) $(ECHO) '   ],' >> META_new.json
	$(NOECHO) $(ECHO) '   "dynamic_config" : 1,' >> META_new.json
	$(NOECHO) $(ECHO) '   "generated_by" : "ExtUtils::MakeMaker version 7.0401, CPAN::Meta::Converter version 2.150005",' >> META_new.json
	$(NOECHO) $(ECHO) '   "license" : [' >> META_new.json
	$(NOECHO) $(ECHO) '      "artistic_2"' >> META_new.json
	$(NOECHO) $(ECHO) '   ],' >> META_new.json
	$(NOECHO) $(ECHO) '   "meta-spec" : {' >> META_new.json
	$(NOECHO) $(ECHO) '      "url" : "http://search.cpan.org/perldoc?CPAN::Meta::Spec",' >> META_new.json
	$(NOECHO) $(ECHO) '      "version" : "2"' >> META_new.json
	$(NOECHO) $(ECHO) '   },' >> META_new.json
	$(NOECHO) $(ECHO) '   "name" : "Number-MuPhone",' >> META_new.json
	$(NOECHO) $(ECHO) '   "no_index" : {' >> META_new.json
	$(NOECHO) $(ECHO) '      "directory" : [' >> META_new.json
	$(NOECHO) $(ECHO) '         "t",' >> META_new.json
	$(NOECHO) $(ECHO) '         "inc"' >> META_new.json
	$(NOECHO) $(ECHO) '      ]' >> META_new.json
	$(NOECHO) $(ECHO) '   },' >> META_new.json
	$(NOECHO) $(ECHO) '   "prereqs" : {' >> META_new.json
	$(NOECHO) $(ECHO) '      "build" : {' >> META_new.json
	$(NOECHO) $(ECHO) '         "requires" : {' >> META_new.json
	$(NOECHO) $(ECHO) '            "Test::More" : "0"' >> META_new.json
	$(NOECHO) $(ECHO) '         }' >> META_new.json
	$(NOECHO) $(ECHO) '      },' >> META_new.json
	$(NOECHO) $(ECHO) '      "configure" : {' >> META_new.json
	$(NOECHO) $(ECHO) '         "requires" : {' >> META_new.json
	$(NOECHO) $(ECHO) '            "ExtUtils::MakeMaker" : "0"' >> META_new.json
	$(NOECHO) $(ECHO) '         }' >> META_new.json
	$(NOECHO) $(ECHO) '      },' >> META_new.json
	$(NOECHO) $(ECHO) '      "runtime" : {' >> META_new.json
	$(NOECHO) $(ECHO) '         "requires" : {' >> META_new.json
	$(NOECHO) $(ECHO) '            "Moo" : "2.000000",' >> META_new.json
	$(NOECHO) $(ECHO) '            "YAML::XS" : "0.21",' >> META_new.json
	$(NOECHO) $(ECHO) '            "perl" : "5.006"' >> META_new.json
	$(NOECHO) $(ECHO) '         }' >> META_new.json
	$(NOECHO) $(ECHO) '      }' >> META_new.json
	$(NOECHO) $(ECHO) '   },' >> META_new.json
	$(NOECHO) $(ECHO) '   "release_status" : "stable",' >> META_new.json
	$(NOECHO) $(ECHO) '   "version" : "0.02",' >> META_new.json
	$(NOECHO) $(ECHO) '   "x_serialization_backend" : "JSON::PP version 2.27300"' >> META_new.json
	$(NOECHO) $(ECHO) '}' >> META_new.json
	-$(NOECHO) $(MV) META_new.json $(DISTVNAME)/META.json


# --- MakeMaker signature section:
signature :
	cpansign -s


# --- MakeMaker dist_basics section:
distclean :: realclean distcheck
	$(NOECHO) $(NOOP)

distcheck :
	$(PERLRUN) "-MExtUtils::Manifest=fullcheck" -e fullcheck

skipcheck :
	$(PERLRUN) "-MExtUtils::Manifest=skipcheck" -e skipcheck

manifest :
	$(PERLRUN) "-MExtUtils::Manifest=mkmanifest" -e mkmanifest

veryclean : realclean
	$(RM_F) *~ */*~ *.orig */*.orig *.bak */*.bak *.old */*.old



# --- MakeMaker dist_core section:

dist : $(DIST_DEFAULT) $(FIRST_MAKEFILE)
	$(NOECHO) $(ABSPERLRUN) -l -e 'print '\''Warning: Makefile possibly out of date with $(VERSION_FROM)'\''' \
	  -e '    if -e '\''$(VERSION_FROM)'\'' and -M '\''$(VERSION_FROM)'\'' < -M '\''$(FIRST_MAKEFILE)'\'';' --

tardist : $(DISTVNAME).tar$(SUFFIX)
	$(NOECHO) $(NOOP)

uutardist : $(DISTVNAME).tar$(SUFFIX)
	uuencode $(DISTVNAME).tar$(SUFFIX) $(DISTVNAME).tar$(SUFFIX) > $(DISTVNAME).tar$(SUFFIX)_uu
	$(NOECHO) $(ECHO) 'Created $(DISTVNAME).tar$(SUFFIX)_uu'

$(DISTVNAME).tar$(SUFFIX) : distdir
	$(PREOP)
	$(TO_UNIX)
	$(TAR) $(TARFLAGS) $(DISTVNAME).tar $(DISTVNAME)
	$(RM_RF) $(DISTVNAME)
	$(COMPRESS) $(DISTVNAME).tar
	$(NOECHO) $(ECHO) 'Created $(DISTVNAME).tar$(SUFFIX)'
	$(POSTOP)

zipdist : $(DISTVNAME).zip
	$(NOECHO) $(NOOP)

$(DISTVNAME).zip : distdir
	$(PREOP)
	$(ZIP) $(ZIPFLAGS) $(DISTVNAME).zip $(DISTVNAME)
	$(RM_RF) $(DISTVNAME)
	$(NOECHO) $(ECHO) 'Created $(DISTVNAME).zip'
	$(POSTOP)

shdist : distdir
	$(PREOP)
	$(SHAR) $(DISTVNAME) > $(DISTVNAME).shar
	$(RM_RF) $(DISTVNAME)
	$(NOECHO) $(ECHO) 'Created $(DISTVNAME).shar'
	$(POSTOP)


# --- MakeMaker distdir section:
create_distdir :
	$(RM_RF) $(DISTVNAME)
	$(PERLRUN) "-MExtUtils::Manifest=manicopy,maniread" \
		-e "manicopy(maniread(),'$(DISTVNAME)', '$(DIST_CP)');"

distdir : create_distdir distmeta 
	$(NOECHO) $(NOOP)



# --- MakeMaker dist_test section:
disttest : distdir
	cd $(DISTVNAME) && $(ABSPERLRUN) Makefile.PL 
	cd $(DISTVNAME) && $(MAKE) $(PASTHRU)
	cd $(DISTVNAME) && $(MAKE) test $(PASTHRU)



# --- MakeMaker dist_ci section:

ci :
	$(PERLRUN) "-MExtUtils::Manifest=maniread" \
	  -e "@all = keys %{ maniread() };" \
	  -e "print(qq{Executing $(CI) @all\n}); system(qq{$(CI) @all});" \
	  -e "print(qq{Executing $(RCS_LABEL) ...\n}); system(qq{$(RCS_LABEL) @all});"


# --- MakeMaker distmeta section:
distmeta : create_distdir metafile
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e 'exit unless -e q{META.yml};' \
	  -e 'eval { maniadd({q{META.yml} => q{Module YAML meta-data (added by MakeMaker)}}) }' \
	  -e '    or print "Could not add META.yml to MANIFEST: $$$${'\''@'\''}\n"' --
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e 'exit unless -f q{META.json};' \
	  -e 'eval { maniadd({q{META.json} => q{Module JSON meta-data (added by MakeMaker)}}) }' \
	  -e '    or print "Could not add META.json to MANIFEST: $$$${'\''@'\''}\n"' --



# --- MakeMaker distsignature section:
distsignature : create_distdir
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e 'eval { maniadd({q{SIGNATURE} => q{Public-key signature (added by MakeMaker)}}) }' \
	  -e '    or print "Could not add SIGNATURE to MANIFEST: $$$${'\''@'\''}\n"' --
	$(NOECHO) cd $(DISTVNAME) && $(TOUCH) SIGNATURE
	cd $(DISTVNAME) && cpansign -s



# --- MakeMaker install section:

install :: pure_install doc_install
	$(NOECHO) $(NOOP)

install_perl :: pure_perl_install doc_perl_install
	$(NOECHO) $(NOOP)

install_site :: pure_site_install doc_site_install
	$(NOECHO) $(NOOP)

install_vendor :: pure_vendor_install doc_vendor_install
	$(NOECHO) $(NOOP)

pure_install :: pure_$(INSTALLDIRS)_install
	$(NOECHO) $(NOOP)

doc_install :: doc_$(INSTALLDIRS)_install
	$(NOECHO) $(NOOP)

pure__install : pure_site_install
	$(NOECHO) $(ECHO) INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

doc__install : doc_site_install
	$(NOECHO) $(ECHO) INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

pure_perl_install :: all
	$(NOECHO) umask 022; $(MOD_INSTALL) \
		"$(INST_LIB)" "$(DESTINSTALLPRIVLIB)" \
		"$(INST_ARCHLIB)" "$(DESTINSTALLARCHLIB)" \
		"$(INST_BIN)" "$(DESTINSTALLBIN)" \
		"$(INST_SCRIPT)" "$(DESTINSTALLSCRIPT)" \
		"$(INST_MAN1DIR)" "$(DESTINSTALLMAN1DIR)" \
		"$(INST_MAN3DIR)" "$(DESTINSTALLMAN3DIR)"
	$(NOECHO) $(WARN_IF_OLD_PACKLIST) \
		"$(SITEARCHEXP)/auto/$(FULLEXT)"


pure_site_install :: all
	$(NOECHO) umask 02; $(MOD_INSTALL) \
		read "$(SITEARCHEXP)/auto/$(FULLEXT)/.packlist" \
		write "$(DESTINSTALLSITEARCH)/auto/$(FULLEXT)/.packlist" \
		"$(INST_LIB)" "$(DESTINSTALLSITELIB)" \
		"$(INST_ARCHLIB)" "$(DESTINSTALLSITEARCH)" \
		"$(INST_BIN)" "$(DESTINSTALLSITEBIN)" \
		"$(INST_SCRIPT)" "$(DESTINSTALLSITESCRIPT)" \
		"$(INST_MAN1DIR)" "$(DESTINSTALLSITEMAN1DIR)" \
		"$(INST_MAN3DIR)" "$(DESTINSTALLSITEMAN3DIR)"
	$(NOECHO) $(WARN_IF_OLD_PACKLIST) \
		"$(PERL_ARCHLIB)/auto/$(FULLEXT)"

pure_vendor_install :: all
	$(NOECHO) umask 022; $(MOD_INSTALL) \
		"$(INST_LIB)" "$(DESTINSTALLVENDORLIB)" \
		"$(INST_ARCHLIB)" "$(DESTINSTALLVENDORARCH)" \
		"$(INST_BIN)" "$(DESTINSTALLVENDORBIN)" \
		"$(INST_SCRIPT)" "$(DESTINSTALLVENDORSCRIPT)" \
		"$(INST_MAN1DIR)" "$(DESTINSTALLVENDORMAN1DIR)" \
		"$(INST_MAN3DIR)" "$(DESTINSTALLVENDORMAN3DIR)"


doc_perl_install :: all

doc_site_install :: all
	$(NOECHO) $(ECHO) Appending installation info to "$(DESTINSTALLSITEARCH)/perllocal.pod"
	-$(NOECHO) umask 02; $(MKPATH) "$(DESTINSTALLSITEARCH)"
	-$(NOECHO) umask 02; $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" $(INSTALLSITELIB) \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> "$(DESTINSTALLSITEARCH)/perllocal.pod"

doc_vendor_install :: all


uninstall :: uninstall_from_$(INSTALLDIRS)dirs
	$(NOECHO) $(NOOP)

uninstall_from_perldirs ::

uninstall_from_sitedirs ::
	$(NOECHO) $(UNINSTALL) "$(SITEARCHEXP)/auto/$(FULLEXT)/.packlist"

uninstall_from_vendordirs ::


# --- MakeMaker force section:
# Phony target to force checking subdirectories.
FORCE :
	$(NOECHO) $(NOOP)


# --- MakeMaker perldepend section:


# --- MakeMaker makefile section:
# We take a very conservative approach here, but it's worth it.
# We move Makefile to Makefile.old here to avoid gnu make looping.
$(FIRST_MAKEFILE) : Makefile.PL $(CONFIGDEP)
	$(NOECHO) $(ECHO) "Makefile out-of-date with respect to $?"
	$(NOECHO) $(ECHO) "Cleaning current config before rebuilding Makefile..."
	-$(NOECHO) $(RM_F) $(MAKEFILE_OLD)
	-$(NOECHO) $(MV)   $(FIRST_MAKEFILE) $(MAKEFILE_OLD)
	- $(MAKE) $(USEMAKEFILE) $(MAKEFILE_OLD) clean $(DEV_NULL)
	$(PERLRUN) Makefile.PL 
	$(NOECHO) $(ECHO) "==> Your Makefile has been rebuilt. <=="
	$(NOECHO) $(ECHO) "==> Please rerun the $(MAKE) command.  <=="
	$(FALSE)



# --- MakeMaker staticmake section:

# --- MakeMaker makeaperl section ---
MAP_TARGET    = perl
FULLPERL      = "/usr/bin/perl"

$(MAP_TARGET) :: static $(MAKE_APERL_FILE)
	$(MAKE) $(USEMAKEFILE) $(MAKE_APERL_FILE) $@

$(MAKE_APERL_FILE) : $(FIRST_MAKEFILE) pm_to_blib
	$(NOECHO) $(ECHO) Writing \"$(MAKE_APERL_FILE)\" for this $(MAP_TARGET)
	$(NOECHO) $(PERLRUNINST) \
		Makefile.PL DIR="" \
		MAKEFILE=$(MAKE_APERL_FILE) LINKTYPE=static \
		MAKEAPERL=1 NORECURS=1 CCCDLFLAGS=


# --- MakeMaker test section:

TEST_VERBOSE=0
TEST_TYPE=test_$(LINKTYPE)
TEST_FILE = test.pl
TEST_FILES = t/tests/*/*/*.t t/tests/*/*/*/*.t t/tests/*/*/*/*/*.t
TESTDB_SW = -d

testdb :: testdb_$(LINKTYPE)

test :: $(TEST_TYPE) subdirs-test

subdirs-test ::
	$(NOECHO) $(NOOP)


test_dynamic :: pure_all
	PERL_DL_NONLAZY=1 $(FULLPERLRUN) "-MExtUtils::Command::MM" "-MTest::Harness" "-e" "undef *Test::Harness::Switches; test_harness($(TEST_VERBOSE), '$(INST_LIB)', '$(INST_ARCHLIB)')" $(TEST_FILES)

testdb_dynamic :: pure_all
	PERL_DL_NONLAZY=1 $(FULLPERLRUN) $(TESTDB_SW) "-I$(INST_LIB)" "-I$(INST_ARCHLIB)" $(TEST_FILE)

test_ : test_dynamic

test_static :: test_dynamic
testdb_static :: testdb_dynamic


# --- MakeMaker ppd section:
# Creates a PPD (Perl Package Description) for a binary distribution.
ppd :
	$(NOECHO) $(ECHO) '<SOFTPKG NAME="$(DISTNAME)" VERSION="$(VERSION)">' > $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <ABSTRACT>phone number parsing and display</ABSTRACT>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <AUTHOR>Clive Holloway &lt;clive.holloway@gmail.com&gt;</AUTHOR>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <IMPLEMENTATION>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <PERLCORE VERSION="5,006,0,0" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moo::" VERSION="2.000000" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="YAML::XS" VERSION="0.21" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <ARCHITECTURE NAME="x86_64-linux-gnu-thread-multi-5.22" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <CODEBASE HREF="" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    </IMPLEMENTATION>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '</SOFTPKG>' >> $(DISTNAME).ppd


# --- MakeMaker pm_to_blib section:

pm_to_blib : $(FIRST_MAKEFILE) $(TO_INST_PM)
	$(NOECHO) $(ABSPERLRUN) -MExtUtils::Install -e 'pm_to_blib({@ARGV}, '\''$(INST_LIB)/auto'\'', q[$(PM_FILTER)], '\''$(PERM_DIR)'\'')' -- \
	  lib/Number/MuPhone.pm blib/lib/Number/MuPhone.pm \
	  lib/Number/MuPhone/Config.pm blib/lib/Number/MuPhone/Config.pm \
	  lib/Number/MuPhone/Data.pm blib/lib/Number/MuPhone/Data.pm \
	  lib/Number/MuPhone/Parser.pm blib/lib/Number/MuPhone/Parser.pm \
	  lib/Number/MuPhone/Parser/AC.pm blib/lib/Number/MuPhone/Parser/AC.pm \
	  lib/Number/MuPhone/Parser/AD.pm blib/lib/Number/MuPhone/Parser/AD.pm \
	  lib/Number/MuPhone/Parser/AE.pm blib/lib/Number/MuPhone/Parser/AE.pm \
	  lib/Number/MuPhone/Parser/AF.pm blib/lib/Number/MuPhone/Parser/AF.pm \
	  lib/Number/MuPhone/Parser/AG.pm blib/lib/Number/MuPhone/Parser/AG.pm \
	  lib/Number/MuPhone/Parser/AI.pm blib/lib/Number/MuPhone/Parser/AI.pm \
	  lib/Number/MuPhone/Parser/AL.pm blib/lib/Number/MuPhone/Parser/AL.pm \
	  lib/Number/MuPhone/Parser/AM.pm blib/lib/Number/MuPhone/Parser/AM.pm \
	  lib/Number/MuPhone/Parser/AO.pm blib/lib/Number/MuPhone/Parser/AO.pm \
	  lib/Number/MuPhone/Parser/AQ.pm blib/lib/Number/MuPhone/Parser/AQ.pm \
	  lib/Number/MuPhone/Parser/AR.pm blib/lib/Number/MuPhone/Parser/AR.pm \
	  lib/Number/MuPhone/Parser/AS.pm blib/lib/Number/MuPhone/Parser/AS.pm \
	  lib/Number/MuPhone/Parser/AT.pm blib/lib/Number/MuPhone/Parser/AT.pm \
	  lib/Number/MuPhone/Parser/AU.pm blib/lib/Number/MuPhone/Parser/AU.pm \
	  lib/Number/MuPhone/Parser/AW.pm blib/lib/Number/MuPhone/Parser/AW.pm \
	  lib/Number/MuPhone/Parser/AX.pm blib/lib/Number/MuPhone/Parser/AX.pm \
	  lib/Number/MuPhone/Parser/AZ.pm blib/lib/Number/MuPhone/Parser/AZ.pm \
	  lib/Number/MuPhone/Parser/BA.pm blib/lib/Number/MuPhone/Parser/BA.pm \
	  lib/Number/MuPhone/Parser/BB.pm blib/lib/Number/MuPhone/Parser/BB.pm \
	  lib/Number/MuPhone/Parser/BD.pm blib/lib/Number/MuPhone/Parser/BD.pm \
	  lib/Number/MuPhone/Parser/BE.pm blib/lib/Number/MuPhone/Parser/BE.pm \
	  lib/Number/MuPhone/Parser/BF.pm blib/lib/Number/MuPhone/Parser/BF.pm \
	  lib/Number/MuPhone/Parser/BG.pm blib/lib/Number/MuPhone/Parser/BG.pm \
	  lib/Number/MuPhone/Parser/BH.pm blib/lib/Number/MuPhone/Parser/BH.pm \
	  lib/Number/MuPhone/Parser/BI.pm blib/lib/Number/MuPhone/Parser/BI.pm \
	  lib/Number/MuPhone/Parser/BJ.pm blib/lib/Number/MuPhone/Parser/BJ.pm \
	  lib/Number/MuPhone/Parser/BL.pm blib/lib/Number/MuPhone/Parser/BL.pm \
	  lib/Number/MuPhone/Parser/BM.pm blib/lib/Number/MuPhone/Parser/BM.pm \
	  lib/Number/MuPhone/Parser/BN.pm blib/lib/Number/MuPhone/Parser/BN.pm \
	  lib/Number/MuPhone/Parser/BO.pm blib/lib/Number/MuPhone/Parser/BO.pm \
	  lib/Number/MuPhone/Parser/BQ.pm blib/lib/Number/MuPhone/Parser/BQ.pm \
	  lib/Number/MuPhone/Parser/BR.pm blib/lib/Number/MuPhone/Parser/BR.pm \
	  lib/Number/MuPhone/Parser/BS.pm blib/lib/Number/MuPhone/Parser/BS.pm \
	  lib/Number/MuPhone/Parser/BT.pm blib/lib/Number/MuPhone/Parser/BT.pm 
	$(NOECHO) $(ABSPERLRUN) -MExtUtils::Install -e 'pm_to_blib({@ARGV}, '\''$(INST_LIB)/auto'\'', q[$(PM_FILTER)], '\''$(PERM_DIR)'\'')' -- \
	  lib/Number/MuPhone/Parser/BV.pm blib/lib/Number/MuPhone/Parser/BV.pm \
	  lib/Number/MuPhone/Parser/BW.pm blib/lib/Number/MuPhone/Parser/BW.pm \
	  lib/Number/MuPhone/Parser/BY.pm blib/lib/Number/MuPhone/Parser/BY.pm \
	  lib/Number/MuPhone/Parser/BZ.pm blib/lib/Number/MuPhone/Parser/BZ.pm \
	  lib/Number/MuPhone/Parser/CA.pm blib/lib/Number/MuPhone/Parser/CA.pm \
	  lib/Number/MuPhone/Parser/CC.pm blib/lib/Number/MuPhone/Parser/CC.pm \
	  lib/Number/MuPhone/Parser/CD.pm blib/lib/Number/MuPhone/Parser/CD.pm \
	  lib/Number/MuPhone/Parser/CF.pm blib/lib/Number/MuPhone/Parser/CF.pm \
	  lib/Number/MuPhone/Parser/CG.pm blib/lib/Number/MuPhone/Parser/CG.pm \
	  lib/Number/MuPhone/Parser/CH.pm blib/lib/Number/MuPhone/Parser/CH.pm \
	  lib/Number/MuPhone/Parser/CI.pm blib/lib/Number/MuPhone/Parser/CI.pm \
	  lib/Number/MuPhone/Parser/CK.pm blib/lib/Number/MuPhone/Parser/CK.pm \
	  lib/Number/MuPhone/Parser/CL.pm blib/lib/Number/MuPhone/Parser/CL.pm \
	  lib/Number/MuPhone/Parser/CM.pm blib/lib/Number/MuPhone/Parser/CM.pm \
	  lib/Number/MuPhone/Parser/CN.pm blib/lib/Number/MuPhone/Parser/CN.pm \
	  lib/Number/MuPhone/Parser/CO.pm blib/lib/Number/MuPhone/Parser/CO.pm \
	  lib/Number/MuPhone/Parser/CR.pm blib/lib/Number/MuPhone/Parser/CR.pm \
	  lib/Number/MuPhone/Parser/CU.pm blib/lib/Number/MuPhone/Parser/CU.pm \
	  lib/Number/MuPhone/Parser/CV.pm blib/lib/Number/MuPhone/Parser/CV.pm \
	  lib/Number/MuPhone/Parser/CW.pm blib/lib/Number/MuPhone/Parser/CW.pm \
	  lib/Number/MuPhone/Parser/CX.pm blib/lib/Number/MuPhone/Parser/CX.pm \
	  lib/Number/MuPhone/Parser/CY.pm blib/lib/Number/MuPhone/Parser/CY.pm \
	  lib/Number/MuPhone/Parser/CZ.pm blib/lib/Number/MuPhone/Parser/CZ.pm \
	  lib/Number/MuPhone/Parser/DE.pm blib/lib/Number/MuPhone/Parser/DE.pm \
	  lib/Number/MuPhone/Parser/DJ.pm blib/lib/Number/MuPhone/Parser/DJ.pm \
	  lib/Number/MuPhone/Parser/DK.pm blib/lib/Number/MuPhone/Parser/DK.pm \
	  lib/Number/MuPhone/Parser/DM.pm blib/lib/Number/MuPhone/Parser/DM.pm \
	  lib/Number/MuPhone/Parser/DO.pm blib/lib/Number/MuPhone/Parser/DO.pm \
	  lib/Number/MuPhone/Parser/DZ.pm blib/lib/Number/MuPhone/Parser/DZ.pm \
	  lib/Number/MuPhone/Parser/EC.pm blib/lib/Number/MuPhone/Parser/EC.pm \
	  lib/Number/MuPhone/Parser/EE.pm blib/lib/Number/MuPhone/Parser/EE.pm \
	  lib/Number/MuPhone/Parser/EG.pm blib/lib/Number/MuPhone/Parser/EG.pm \
	  lib/Number/MuPhone/Parser/EH.pm blib/lib/Number/MuPhone/Parser/EH.pm \
	  lib/Number/MuPhone/Parser/ER.pm blib/lib/Number/MuPhone/Parser/ER.pm \
	  lib/Number/MuPhone/Parser/ES.pm blib/lib/Number/MuPhone/Parser/ES.pm \
	  lib/Number/MuPhone/Parser/ET.pm blib/lib/Number/MuPhone/Parser/ET.pm \
	  lib/Number/MuPhone/Parser/FI.pm blib/lib/Number/MuPhone/Parser/FI.pm 
	$(NOECHO) $(ABSPERLRUN) -MExtUtils::Install -e 'pm_to_blib({@ARGV}, '\''$(INST_LIB)/auto'\'', q[$(PM_FILTER)], '\''$(PERM_DIR)'\'')' -- \
	  lib/Number/MuPhone/Parser/FJ.pm blib/lib/Number/MuPhone/Parser/FJ.pm \
	  lib/Number/MuPhone/Parser/FK.pm blib/lib/Number/MuPhone/Parser/FK.pm \
	  lib/Number/MuPhone/Parser/FM.pm blib/lib/Number/MuPhone/Parser/FM.pm \
	  lib/Number/MuPhone/Parser/FO.pm blib/lib/Number/MuPhone/Parser/FO.pm \
	  lib/Number/MuPhone/Parser/FR.pm blib/lib/Number/MuPhone/Parser/FR.pm \
	  lib/Number/MuPhone/Parser/GA.pm blib/lib/Number/MuPhone/Parser/GA.pm \
	  lib/Number/MuPhone/Parser/GD.pm blib/lib/Number/MuPhone/Parser/GD.pm \
	  lib/Number/MuPhone/Parser/GE.pm blib/lib/Number/MuPhone/Parser/GE.pm \
	  lib/Number/MuPhone/Parser/GF.pm blib/lib/Number/MuPhone/Parser/GF.pm \
	  lib/Number/MuPhone/Parser/GG.pm blib/lib/Number/MuPhone/Parser/GG.pm \
	  lib/Number/MuPhone/Parser/GH.pm blib/lib/Number/MuPhone/Parser/GH.pm \
	  lib/Number/MuPhone/Parser/GI.pm blib/lib/Number/MuPhone/Parser/GI.pm \
	  lib/Number/MuPhone/Parser/GL.pm blib/lib/Number/MuPhone/Parser/GL.pm \
	  lib/Number/MuPhone/Parser/GM.pm blib/lib/Number/MuPhone/Parser/GM.pm \
	  lib/Number/MuPhone/Parser/GN.pm blib/lib/Number/MuPhone/Parser/GN.pm \
	  lib/Number/MuPhone/Parser/GP.pm blib/lib/Number/MuPhone/Parser/GP.pm \
	  lib/Number/MuPhone/Parser/GQ.pm blib/lib/Number/MuPhone/Parser/GQ.pm \
	  lib/Number/MuPhone/Parser/GR.pm blib/lib/Number/MuPhone/Parser/GR.pm \
	  lib/Number/MuPhone/Parser/GS.pm blib/lib/Number/MuPhone/Parser/GS.pm \
	  lib/Number/MuPhone/Parser/GT.pm blib/lib/Number/MuPhone/Parser/GT.pm \
	  lib/Number/MuPhone/Parser/GU.pm blib/lib/Number/MuPhone/Parser/GU.pm \
	  lib/Number/MuPhone/Parser/GW.pm blib/lib/Number/MuPhone/Parser/GW.pm \
	  lib/Number/MuPhone/Parser/GY.pm blib/lib/Number/MuPhone/Parser/GY.pm \
	  lib/Number/MuPhone/Parser/HK.pm blib/lib/Number/MuPhone/Parser/HK.pm \
	  lib/Number/MuPhone/Parser/HN.pm blib/lib/Number/MuPhone/Parser/HN.pm \
	  lib/Number/MuPhone/Parser/HR.pm blib/lib/Number/MuPhone/Parser/HR.pm \
	  lib/Number/MuPhone/Parser/HT.pm blib/lib/Number/MuPhone/Parser/HT.pm \
	  lib/Number/MuPhone/Parser/HU.pm blib/lib/Number/MuPhone/Parser/HU.pm \
	  lib/Number/MuPhone/Parser/ID.pm blib/lib/Number/MuPhone/Parser/ID.pm \
	  lib/Number/MuPhone/Parser/IE.pm blib/lib/Number/MuPhone/Parser/IE.pm \
	  lib/Number/MuPhone/Parser/IL.pm blib/lib/Number/MuPhone/Parser/IL.pm \
	  lib/Number/MuPhone/Parser/IM.pm blib/lib/Number/MuPhone/Parser/IM.pm \
	  lib/Number/MuPhone/Parser/IN.pm blib/lib/Number/MuPhone/Parser/IN.pm \
	  lib/Number/MuPhone/Parser/IO.pm blib/lib/Number/MuPhone/Parser/IO.pm \
	  lib/Number/MuPhone/Parser/IQ.pm blib/lib/Number/MuPhone/Parser/IQ.pm \
	  lib/Number/MuPhone/Parser/IR.pm blib/lib/Number/MuPhone/Parser/IR.pm \
	  lib/Number/MuPhone/Parser/IS.pm blib/lib/Number/MuPhone/Parser/IS.pm 
	$(NOECHO) $(ABSPERLRUN) -MExtUtils::Install -e 'pm_to_blib({@ARGV}, '\''$(INST_LIB)/auto'\'', q[$(PM_FILTER)], '\''$(PERM_DIR)'\'')' -- \
	  lib/Number/MuPhone/Parser/IT.pm blib/lib/Number/MuPhone/Parser/IT.pm \
	  lib/Number/MuPhone/Parser/JE.pm blib/lib/Number/MuPhone/Parser/JE.pm \
	  lib/Number/MuPhone/Parser/JM.pm blib/lib/Number/MuPhone/Parser/JM.pm \
	  lib/Number/MuPhone/Parser/JO.pm blib/lib/Number/MuPhone/Parser/JO.pm \
	  lib/Number/MuPhone/Parser/JP.pm blib/lib/Number/MuPhone/Parser/JP.pm \
	  lib/Number/MuPhone/Parser/KE.pm blib/lib/Number/MuPhone/Parser/KE.pm \
	  lib/Number/MuPhone/Parser/KG.pm blib/lib/Number/MuPhone/Parser/KG.pm \
	  lib/Number/MuPhone/Parser/KH.pm blib/lib/Number/MuPhone/Parser/KH.pm \
	  lib/Number/MuPhone/Parser/KI.pm blib/lib/Number/MuPhone/Parser/KI.pm \
	  lib/Number/MuPhone/Parser/KM.pm blib/lib/Number/MuPhone/Parser/KM.pm \
	  lib/Number/MuPhone/Parser/KN.pm blib/lib/Number/MuPhone/Parser/KN.pm \
	  lib/Number/MuPhone/Parser/KP.pm blib/lib/Number/MuPhone/Parser/KP.pm \
	  lib/Number/MuPhone/Parser/KR.pm blib/lib/Number/MuPhone/Parser/KR.pm \
	  lib/Number/MuPhone/Parser/KW.pm blib/lib/Number/MuPhone/Parser/KW.pm \
	  lib/Number/MuPhone/Parser/KY.pm blib/lib/Number/MuPhone/Parser/KY.pm \
	  lib/Number/MuPhone/Parser/KZ.pm blib/lib/Number/MuPhone/Parser/KZ.pm \
	  lib/Number/MuPhone/Parser/LA.pm blib/lib/Number/MuPhone/Parser/LA.pm \
	  lib/Number/MuPhone/Parser/LB.pm blib/lib/Number/MuPhone/Parser/LB.pm \
	  lib/Number/MuPhone/Parser/LC.pm blib/lib/Number/MuPhone/Parser/LC.pm \
	  lib/Number/MuPhone/Parser/LI.pm blib/lib/Number/MuPhone/Parser/LI.pm \
	  lib/Number/MuPhone/Parser/LK.pm blib/lib/Number/MuPhone/Parser/LK.pm \
	  lib/Number/MuPhone/Parser/LR.pm blib/lib/Number/MuPhone/Parser/LR.pm \
	  lib/Number/MuPhone/Parser/LS.pm blib/lib/Number/MuPhone/Parser/LS.pm \
	  lib/Number/MuPhone/Parser/LT.pm blib/lib/Number/MuPhone/Parser/LT.pm \
	  lib/Number/MuPhone/Parser/LU.pm blib/lib/Number/MuPhone/Parser/LU.pm \
	  lib/Number/MuPhone/Parser/LV.pm blib/lib/Number/MuPhone/Parser/LV.pm \
	  lib/Number/MuPhone/Parser/LY.pm blib/lib/Number/MuPhone/Parser/LY.pm \
	  lib/Number/MuPhone/Parser/MA.pm blib/lib/Number/MuPhone/Parser/MA.pm \
	  lib/Number/MuPhone/Parser/MC.pm blib/lib/Number/MuPhone/Parser/MC.pm \
	  lib/Number/MuPhone/Parser/MD.pm blib/lib/Number/MuPhone/Parser/MD.pm \
	  lib/Number/MuPhone/Parser/ME.pm blib/lib/Number/MuPhone/Parser/ME.pm \
	  lib/Number/MuPhone/Parser/MF.pm blib/lib/Number/MuPhone/Parser/MF.pm \
	  lib/Number/MuPhone/Parser/MG.pm blib/lib/Number/MuPhone/Parser/MG.pm \
	  lib/Number/MuPhone/Parser/MH.pm blib/lib/Number/MuPhone/Parser/MH.pm \
	  lib/Number/MuPhone/Parser/MK.pm blib/lib/Number/MuPhone/Parser/MK.pm \
	  lib/Number/MuPhone/Parser/ML.pm blib/lib/Number/MuPhone/Parser/ML.pm \
	  lib/Number/MuPhone/Parser/MM.pm blib/lib/Number/MuPhone/Parser/MM.pm 
	$(NOECHO) $(ABSPERLRUN) -MExtUtils::Install -e 'pm_to_blib({@ARGV}, '\''$(INST_LIB)/auto'\'', q[$(PM_FILTER)], '\''$(PERM_DIR)'\'')' -- \
	  lib/Number/MuPhone/Parser/MN.pm blib/lib/Number/MuPhone/Parser/MN.pm \
	  lib/Number/MuPhone/Parser/MO.pm blib/lib/Number/MuPhone/Parser/MO.pm \
	  lib/Number/MuPhone/Parser/MP.pm blib/lib/Number/MuPhone/Parser/MP.pm \
	  lib/Number/MuPhone/Parser/MQ.pm blib/lib/Number/MuPhone/Parser/MQ.pm \
	  lib/Number/MuPhone/Parser/MR.pm blib/lib/Number/MuPhone/Parser/MR.pm \
	  lib/Number/MuPhone/Parser/MS.pm blib/lib/Number/MuPhone/Parser/MS.pm \
	  lib/Number/MuPhone/Parser/MT.pm blib/lib/Number/MuPhone/Parser/MT.pm \
	  lib/Number/MuPhone/Parser/MU.pm blib/lib/Number/MuPhone/Parser/MU.pm \
	  lib/Number/MuPhone/Parser/MV.pm blib/lib/Number/MuPhone/Parser/MV.pm \
	  lib/Number/MuPhone/Parser/MW.pm blib/lib/Number/MuPhone/Parser/MW.pm \
	  lib/Number/MuPhone/Parser/MX.pm blib/lib/Number/MuPhone/Parser/MX.pm \
	  lib/Number/MuPhone/Parser/MY.pm blib/lib/Number/MuPhone/Parser/MY.pm \
	  lib/Number/MuPhone/Parser/MZ.pm blib/lib/Number/MuPhone/Parser/MZ.pm \
	  lib/Number/MuPhone/Parser/NA.pm blib/lib/Number/MuPhone/Parser/NA.pm \
	  lib/Number/MuPhone/Parser/NANP.pm blib/lib/Number/MuPhone/Parser/NANP.pm \
	  lib/Number/MuPhone/Parser/NC.pm blib/lib/Number/MuPhone/Parser/NC.pm \
	  lib/Number/MuPhone/Parser/NE.pm blib/lib/Number/MuPhone/Parser/NE.pm \
	  lib/Number/MuPhone/Parser/NF.pm blib/lib/Number/MuPhone/Parser/NF.pm \
	  lib/Number/MuPhone/Parser/NG.pm blib/lib/Number/MuPhone/Parser/NG.pm \
	  lib/Number/MuPhone/Parser/NI.pm blib/lib/Number/MuPhone/Parser/NI.pm \
	  lib/Number/MuPhone/Parser/NL.pm blib/lib/Number/MuPhone/Parser/NL.pm \
	  lib/Number/MuPhone/Parser/NO.pm blib/lib/Number/MuPhone/Parser/NO.pm \
	  lib/Number/MuPhone/Parser/NP.pm blib/lib/Number/MuPhone/Parser/NP.pm \
	  lib/Number/MuPhone/Parser/NR.pm blib/lib/Number/MuPhone/Parser/NR.pm \
	  lib/Number/MuPhone/Parser/NU.pm blib/lib/Number/MuPhone/Parser/NU.pm \
	  lib/Number/MuPhone/Parser/NZ.pm blib/lib/Number/MuPhone/Parser/NZ.pm \
	  lib/Number/MuPhone/Parser/OM.pm blib/lib/Number/MuPhone/Parser/OM.pm \
	  lib/Number/MuPhone/Parser/PA.pm blib/lib/Number/MuPhone/Parser/PA.pm \
	  lib/Number/MuPhone/Parser/PE.pm blib/lib/Number/MuPhone/Parser/PE.pm \
	  lib/Number/MuPhone/Parser/PF.pm blib/lib/Number/MuPhone/Parser/PF.pm \
	  lib/Number/MuPhone/Parser/PG.pm blib/lib/Number/MuPhone/Parser/PG.pm \
	  lib/Number/MuPhone/Parser/PH.pm blib/lib/Number/MuPhone/Parser/PH.pm \
	  lib/Number/MuPhone/Parser/PK.pm blib/lib/Number/MuPhone/Parser/PK.pm \
	  lib/Number/MuPhone/Parser/PL.pm blib/lib/Number/MuPhone/Parser/PL.pm \
	  lib/Number/MuPhone/Parser/PM.pm blib/lib/Number/MuPhone/Parser/PM.pm \
	  lib/Number/MuPhone/Parser/PN.pm blib/lib/Number/MuPhone/Parser/PN.pm \
	  lib/Number/MuPhone/Parser/PR.pm blib/lib/Number/MuPhone/Parser/PR.pm 
	$(NOECHO) $(ABSPERLRUN) -MExtUtils::Install -e 'pm_to_blib({@ARGV}, '\''$(INST_LIB)/auto'\'', q[$(PM_FILTER)], '\''$(PERM_DIR)'\'')' -- \
	  lib/Number/MuPhone/Parser/PS.pm blib/lib/Number/MuPhone/Parser/PS.pm \
	  lib/Number/MuPhone/Parser/PT.pm blib/lib/Number/MuPhone/Parser/PT.pm \
	  lib/Number/MuPhone/Parser/PW.pm blib/lib/Number/MuPhone/Parser/PW.pm \
	  lib/Number/MuPhone/Parser/PY.pm blib/lib/Number/MuPhone/Parser/PY.pm \
	  lib/Number/MuPhone/Parser/QA.pm blib/lib/Number/MuPhone/Parser/QA.pm \
	  lib/Number/MuPhone/Parser/RE.pm blib/lib/Number/MuPhone/Parser/RE.pm \
	  lib/Number/MuPhone/Parser/RO.pm blib/lib/Number/MuPhone/Parser/RO.pm \
	  lib/Number/MuPhone/Parser/RS.pm blib/lib/Number/MuPhone/Parser/RS.pm \
	  lib/Number/MuPhone/Parser/RU.pm blib/lib/Number/MuPhone/Parser/RU.pm \
	  lib/Number/MuPhone/Parser/RW.pm blib/lib/Number/MuPhone/Parser/RW.pm \
	  lib/Number/MuPhone/Parser/SA.pm blib/lib/Number/MuPhone/Parser/SA.pm \
	  lib/Number/MuPhone/Parser/SB.pm blib/lib/Number/MuPhone/Parser/SB.pm \
	  lib/Number/MuPhone/Parser/SC.pm blib/lib/Number/MuPhone/Parser/SC.pm \
	  lib/Number/MuPhone/Parser/SD.pm blib/lib/Number/MuPhone/Parser/SD.pm \
	  lib/Number/MuPhone/Parser/SE.pm blib/lib/Number/MuPhone/Parser/SE.pm \
	  lib/Number/MuPhone/Parser/SG.pm blib/lib/Number/MuPhone/Parser/SG.pm \
	  lib/Number/MuPhone/Parser/SH.pm blib/lib/Number/MuPhone/Parser/SH.pm \
	  lib/Number/MuPhone/Parser/SI.pm blib/lib/Number/MuPhone/Parser/SI.pm \
	  lib/Number/MuPhone/Parser/SJ.pm blib/lib/Number/MuPhone/Parser/SJ.pm \
	  lib/Number/MuPhone/Parser/SK.pm blib/lib/Number/MuPhone/Parser/SK.pm \
	  lib/Number/MuPhone/Parser/SL.pm blib/lib/Number/MuPhone/Parser/SL.pm \
	  lib/Number/MuPhone/Parser/SM.pm blib/lib/Number/MuPhone/Parser/SM.pm \
	  lib/Number/MuPhone/Parser/SN.pm blib/lib/Number/MuPhone/Parser/SN.pm \
	  lib/Number/MuPhone/Parser/SO.pm blib/lib/Number/MuPhone/Parser/SO.pm \
	  lib/Number/MuPhone/Parser/SR.pm blib/lib/Number/MuPhone/Parser/SR.pm \
	  lib/Number/MuPhone/Parser/SS.pm blib/lib/Number/MuPhone/Parser/SS.pm \
	  lib/Number/MuPhone/Parser/ST.pm blib/lib/Number/MuPhone/Parser/ST.pm \
	  lib/Number/MuPhone/Parser/SV.pm blib/lib/Number/MuPhone/Parser/SV.pm \
	  lib/Number/MuPhone/Parser/SX.pm blib/lib/Number/MuPhone/Parser/SX.pm \
	  lib/Number/MuPhone/Parser/SY.pm blib/lib/Number/MuPhone/Parser/SY.pm \
	  lib/Number/MuPhone/Parser/SZ.pm blib/lib/Number/MuPhone/Parser/SZ.pm \
	  lib/Number/MuPhone/Parser/TA.pm blib/lib/Number/MuPhone/Parser/TA.pm \
	  lib/Number/MuPhone/Parser/TC.pm blib/lib/Number/MuPhone/Parser/TC.pm \
	  lib/Number/MuPhone/Parser/TD.pm blib/lib/Number/MuPhone/Parser/TD.pm \
	  lib/Number/MuPhone/Parser/TF.pm blib/lib/Number/MuPhone/Parser/TF.pm \
	  lib/Number/MuPhone/Parser/TG.pm blib/lib/Number/MuPhone/Parser/TG.pm \
	  lib/Number/MuPhone/Parser/TH.pm blib/lib/Number/MuPhone/Parser/TH.pm 
	$(NOECHO) $(ABSPERLRUN) -MExtUtils::Install -e 'pm_to_blib({@ARGV}, '\''$(INST_LIB)/auto'\'', q[$(PM_FILTER)], '\''$(PERM_DIR)'\'')' -- \
	  lib/Number/MuPhone/Parser/TJ.pm blib/lib/Number/MuPhone/Parser/TJ.pm \
	  lib/Number/MuPhone/Parser/TK.pm blib/lib/Number/MuPhone/Parser/TK.pm \
	  lib/Number/MuPhone/Parser/TL.pm blib/lib/Number/MuPhone/Parser/TL.pm \
	  lib/Number/MuPhone/Parser/TM.pm blib/lib/Number/MuPhone/Parser/TM.pm \
	  lib/Number/MuPhone/Parser/TN.pm blib/lib/Number/MuPhone/Parser/TN.pm \
	  lib/Number/MuPhone/Parser/TO.pm blib/lib/Number/MuPhone/Parser/TO.pm \
	  lib/Number/MuPhone/Parser/TR.pm blib/lib/Number/MuPhone/Parser/TR.pm \
	  lib/Number/MuPhone/Parser/TT.pm blib/lib/Number/MuPhone/Parser/TT.pm \
	  lib/Number/MuPhone/Parser/TV.pm blib/lib/Number/MuPhone/Parser/TV.pm \
	  lib/Number/MuPhone/Parser/TW.pm blib/lib/Number/MuPhone/Parser/TW.pm \
	  lib/Number/MuPhone/Parser/TZ.pm blib/lib/Number/MuPhone/Parser/TZ.pm \
	  lib/Number/MuPhone/Parser/UA.pm blib/lib/Number/MuPhone/Parser/UA.pm \
	  lib/Number/MuPhone/Parser/UG.pm blib/lib/Number/MuPhone/Parser/UG.pm \
	  lib/Number/MuPhone/Parser/UK.pm blib/lib/Number/MuPhone/Parser/UK.pm \
	  lib/Number/MuPhone/Parser/US.pm blib/lib/Number/MuPhone/Parser/US.pm \
	  lib/Number/MuPhone/Parser/UY.pm blib/lib/Number/MuPhone/Parser/UY.pm \
	  lib/Number/MuPhone/Parser/UZ.pm blib/lib/Number/MuPhone/Parser/UZ.pm \
	  lib/Number/MuPhone/Parser/VA.pm blib/lib/Number/MuPhone/Parser/VA.pm \
	  lib/Number/MuPhone/Parser/VC.pm blib/lib/Number/MuPhone/Parser/VC.pm \
	  lib/Number/MuPhone/Parser/VE.pm blib/lib/Number/MuPhone/Parser/VE.pm \
	  lib/Number/MuPhone/Parser/VG.pm blib/lib/Number/MuPhone/Parser/VG.pm \
	  lib/Number/MuPhone/Parser/VI.pm blib/lib/Number/MuPhone/Parser/VI.pm \
	  lib/Number/MuPhone/Parser/VN.pm blib/lib/Number/MuPhone/Parser/VN.pm \
	  lib/Number/MuPhone/Parser/VU.pm blib/lib/Number/MuPhone/Parser/VU.pm \
	  lib/Number/MuPhone/Parser/WF.pm blib/lib/Number/MuPhone/Parser/WF.pm \
	  lib/Number/MuPhone/Parser/WS.pm blib/lib/Number/MuPhone/Parser/WS.pm \
	  lib/Number/MuPhone/Parser/YE.pm blib/lib/Number/MuPhone/Parser/YE.pm \
	  lib/Number/MuPhone/Parser/YT.pm blib/lib/Number/MuPhone/Parser/YT.pm \
	  lib/Number/MuPhone/Parser/ZA.pm blib/lib/Number/MuPhone/Parser/ZA.pm \
	  lib/Number/MuPhone/Parser/ZM.pm blib/lib/Number/MuPhone/Parser/ZM.pm \
	  lib/Number/MuPhone/Parser/ZW.pm blib/lib/Number/MuPhone/Parser/ZW.pm 
	$(NOECHO) $(TOUCH) pm_to_blib


# --- MakeMaker selfdocument section:


# --- MakeMaker postamble section:


# End.
