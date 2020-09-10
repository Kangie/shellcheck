module ShellCheck.Data where

import ShellCheck.Interface
import Data.Version (showVersion)
import Paths_ShellCheck (version)

shellcheckVersion = showVersion version

genericInternalVariables = [
    -- Generic
    "", "_", "rest", "REST",

    -- Bash
    "BASH", "BASHOPTS", "BASHPID", "BASH_ALIASES", "BASH_ARGC",
    "BASH_ARGV", "BASH_CMDS", "BASH_COMMAND", "BASH_EXECUTION_STRING",
    "BASH_LINENO", "BASH_REMATCH", "BASH_SOURCE", "BASH_SUBSHELL",
    "BASH_VERSINFO", "BASH_VERSION", "COMP_CWORD", "COMP_KEY",
    "COMP_LINE", "COMP_POINT", "COMP_TYPE", "COMP_WORDBREAKS",
    "COMP_WORDS", "COPROC", "DIRSTACK", "EUID", "FUNCNAME", "GROUPS",
    "HISTCMD", "HOSTNAME", "HOSTTYPE", "LINENO", "MACHTYPE", "MAPFILE",
    "OLDPWD", "OPTARG", "OPTIND", "OSTYPE", "PIPESTATUS", "PPID", "PWD",
    "RANDOM", "READLINE_LINE", "READLINE_POINT", "REPLY", "SECONDS",
    "SHELLOPTS", "SHLVL", "UID", "BASH_ENV", "BASH_XTRACEFD", "CDPATH",
    "COLUMNS", "COMPREPLY", "EMACS", "ENV", "FCEDIT", "FIGNORE",
    "FUNCNEST", "GLOBIGNORE", "HISTCONTROL", "HISTFILE", "HISTFILESIZE",
    "HISTIGNORE", "HISTSIZE", "HISTTIMEFORMAT", "HOME", "HOSTFILE", "IFS",
    "IGNOREEOF", "INPUTRC", "LANG", "LC_ALL", "LC_COLLATE", "LC_CTYPE",
    "LC_MESSAGES", "LC_MONETARY", "LC_NUMERIC", "LC_TIME", "LINES", "MAIL",
    "MAILCHECK", "MAILPATH", "OPTERR", "PATH", "POSIXLY_CORRECT",
    "PROMPT_COMMAND", "PROMPT_DIRTRIM", "PS1", "PS2", "PS3", "PS4", "SHELL",
    "TIMEFORMAT", "TMOUT", "TMPDIR", "auto_resume", "histchars", "COPROC",

    -- Other
    "USER", "TZ", "TERM", "LOGNAME", "LD_LIBRARY_PATH", "LANGUAGE", "DISPLAY",
    "HOSTNAME", "KRB5CCNAME", "XAUTHORITY"

    -- shflags
    , "FLAGS_ARGC", "FLAGS_ARGV", "FLAGS_ERROR", "FLAGS_FALSE", "FLAGS_HELP",
    "FLAGS_PARENT", "FLAGS_RESERVED", "FLAGS_TRUE", "FLAGS_VERSION",
    "flags_error", "flags_return"
  ]

kshInternalVariables = [
    ".sh.version"
  ]

portageInternalVariables = [
    "A", "BDEPEND", "BROOT", "CATEGORY", "D", "DEPEND", "DESCRIPTION",
    "DISTDIR", "DOCS", "EAPI", "EBUILD_PHASE_FUNC", "ED", "EPREFIX", "EROOT",
    "ESYSROOT", "FILESDIR", "HOME", "HOMEPAGE", "HTML_DOCS", "IUSE", "KEYWORDS",
    "LICENSE", "P", "PATCHES", "PDEPEND", "PF", "PN", "PR", "PROPERTIES", "PV",
    "PVR", "QA_AM_MAINTAINER_MODE", "QA_CONFIGURE_OPTIONS", "QA_DESKTOP_FILE",
    "QA_DT_NEEDED", "QA_EXECSTACK", "QA_FLAGS_IGNORED", "QA_MULTILIB_PATHS",
    "QA_PREBUILT", "QA_PRESTRIPPED", "QA_SONAME", "QA_SONAME_NO_SYMLINK",
    "QA_TEXTRELS", "QA_WX_LOAD", "RDEPEND", "REQUIRED_USE", "RESTRICT", "ROOT",
    "S", "SLOT", "SRC_TEST", "SRC_URI", "STRIP_MASK", "SUBSLOT", "SYSROOT", "T",
    "WORKDIR"

    -- toolchain settings
    , "CFLAGS", "CXXFLAGS", "CPPFLAGS", "LDFLAGS", "FFLAGS", "FCFLAGS",
    "CBUILD", "CHOST"
    -- TODO: Delete these if we can handle `tc-export CC` implicit export.
    , "CC", "CPP", "CXX"

    -- portage internals
    , "EBUILD_PHASE", "EBUILD_SH_ARGS", "EMERGE_FROM", "FILESDIR",
    "MERGE_TYPE", "PM_EBUILD_HOOK_DIR", "PORTAGE_ACTUAL_DISTDIR",
    "PORTAGE_ARCHLIST", "PORTAGE_BASHRC", "PORTAGE_BINPKG_FILE",
    "PORTAGE_BINPKG_TAR_OPTS", "PORTAGE_BINPKG_TMPFILE", "PORTAGE_BIN_PATH",
    "PORTAGE_BUILDDIR", "PORTAGE_BUILD_GROUP", "PORTAGE_BUILD_USER",
    "PORTAGE_BUNZIP2_COMMAND", "PORTAGE_BZIP2_COMMAND", "PORTAGE_COLORMAP",
    "PORTAGE_CONFIGROOT", "PORTAGE_DEBUG", "PORTAGE_DEPCACHEDIR",
    "PORTAGE_EBUILD_EXIT_FILE", "PORTAGE_ECLASS_LOCATIONS", "PORTAGE_GID",
    "PORTAGE_GRPNAME", "PORTAGE_INST_GID", "PORTAGE_INST_UID",
    "PORTAGE_INTERNAL_CALLER", "PORTAGE_IPC_DAEMON", "PORTAGE_IUSE",
    "PORTAGE_LOG_FILE", "PORTAGE_MUTABLE_FILTERED_VARS",
    "PORTAGE_OVERRIDE_EPREFIX", "PORTAGE_PYM_PATH", "PORTAGE_PYTHON",
    "PORTAGE_PYTHONPATH", "PORTAGE_READONLY_METADATA", "PORTAGE_READONLY_VARS",
    "PORTAGE_REPO_NAME", "PORTAGE_REPOSITORIES", "PORTAGE_RESTRICT",
    "PORTAGE_SAVED_READONLY_VARS", "PORTAGE_SIGPIPE_STATUS", "PORTAGE_TMPDIR",
    "PORTAGE_UPDATE_ENV", "PORTAGE_USERNAME", "PORTAGE_VERBOSE",
    "PORTAGE_WORKDIR_MODE", "PORTAGE_XATTR_EXCLUDE", "REPLACING_VERSIONS",
    "REPLACED_BY_VERSION", "__PORTAGE_HELPER", "__PORTAGE_TEST_HARDLINK_LOCKS",

    -- generic ebuilds
    "A", "BDEPEND", "BROOT", "CATEGORY", "D", "DEFINED_PHASES", "DEPEND",
    "DESCRIPTION", "DISTDIR", "DOCS", "EAPI", "ECLASS", "ED", "EPREFIX",
    "EROOT", "ESYSROOT", "EXTRA_ECONF", "EXTRA_EINSTALL", "EXTRA_MAKE",
    "FEATURES", "FILESDIR", "HOME", "HOMEPAGE", "HTML_DOCS", "INHERITED",
    "IUSE", "KEYWORDS", "LICENSE", "P", "PATCHES", "PDEPEND", "PF",
    "PKG_INSTALL_MASK", "PKGUSE", "PN", "PR", "PROPERTIES", "PROVIDES_EXCLUDE",
    "PV", "PVR", "QA_AM_MAINTAINER_MODE", "QA_CONFIGURE_OPTIONS",
    "QA_DESKTOP_FILE", "QA_DT_NEEDED", "QA_EXECSTACK", "QA_FLAGS_IGNORED",
    "QA_MULTILIB_PATHS", "QA_PREBUILT", "QA_PRESTRIPPED", "QA_SONAME",
    "QA_SONAME_NO_SYMLINK", "QA_TEXTRELS", "QA_WX_LOAD", "RDEPEND",
    "REPOSITORY", "REQUIRED_USE", "REQUIRES_EXCLUDE", "RESTRICT", "ROOT", "S",
    "SLOT", "SRC_TEST", "SRC_URI", "STRIP_MASK", "SUBSLOT", "SYSROOT", "T",
    "WORKDIR", 

    -- alternatives.eclass
    "ALTERNATIVES", "SOURCE",

    -- apache-2.eclass
    "GENTOO_DEVELOPER", "GENTOO_PATCHDIR", "GENTOO_PATCHNAME",
    "GENTOO_PATCHSTAMP", "GENTOO_PATCH_A", "IUSE_MODULES", "IUSE_MPMS_FORK",
    "IUSE_MPMS_THREAD", "MODULE_CRITICAL", "MODULE_DEFINES", "MODULE_DEPENDS",
    "MY_CONF", "MY_MODS", "MY_MPM",

    -- apache-module.eclass
    "APACHE2_EXECFILES", "APACHE2_MOD_CONF", "APACHE2_MOD_DEFINE",
    "APACHE2_MOD_FILE", "APACHE2_VHOST_CONF", "APXS2_ARGS", "APXS2_S",
    "DOCFILES",

    -- arc-build.eclass
    "ARC_BASE", "ARC_LLVM_VERSION", "ARC_VERSION_MAJOR", "ARC_VERSION_MINOR",
    "ARC_VERSION_PATCH",

    -- aspell-dict.eclass
    "ASPELL_LANG", "ASPOSTFIX",

    -- autotest-external-dep.eclass
    "PACKAGE",

    -- autotest.eclass
    "AUTOTEST_FILE_MASK", "AUTOTEST_FORCE_LIST",

    -- autotools-utils.eclass
    "AUTOTOOLS_AUTORECONF", "AUTOTOOLS_IN_SOURCE_BUILD",
    "AUTOTOOLS_PRUNE_LIBTOOL_FILES", "BUILD_DIR", "ECONF_SOURCE", "myeconfargs",

    -- autotools.eclass
    "AM_OPTS", "AT_M4DIR", "AT_NOEAUTOMAKE", "AT_NOELIBTOOLIZE", "AT_SYS_M4DIR",
    "AUTOTOOLS_AUTO_DEPEND", "WANT_AUTOCONF", "WANT_AUTOMAKE", "WANT_LIBTOOL",
    "_LATEST_AUTOMAKE",

    -- bash-completion.eclass
    "BASHCOMPFILES", "BASHCOMPLETION_NAME",

    -- boost-utils.eclass
    "BOOST_MAX_SLOT",

    -- bsdmk.eclass
    "mymakeopts",

    -- bzr.eclass
    "EBZR_BOOTSTRAP", "EBZR_CACHE_DIR", "EBZR_DIFF_CMD", "EBZR_EXPORT_CMD",
    "EBZR_FETCH_CMD", "EBZR_OFFLINE", "EBZR_OPTIONS", "EBZR_PATCHES",
    "EBZR_REPO_URI", "EBZR_REVISION", "EBZR_REVNO_CMD", "EBZR_STORE_DIR",
    "EBZR_UPDATE_CMD",

    -- cargo.eclass
    "CARGO_INSTALL_PATH",

    -- cbi-image.eclass
    "CROS_CBI_IMAGE_DIR", "EEPROM_SIZE",

    -- cdrom.eclass
    "CDROM_OPTIONAL",

    -- chromium-source.eclass
    "CHROMIUM_GCLIENT_TEMPLATE", "DEPOT_TOOLS", "EGCLIENT", "ENINJA",

    -- chromium.eclass
    "CHROMIUM_LANGS", "EGYP_CHROMIUM_COMMAND", "EGYP_CHROMIUM_DEPTH",

    -- clutter.eclass
    "EXAMPLES",

    -- cmake-multilib.eclass
    "CMAKE_ECLASS",

    -- cmake-utils.eclass
    "CMAKE_BINARY", "CMAKE_BUILD_TYPE", "CMAKE_EXTRA_CACHE_FILE",
    "CMAKE_IN_SOURCE_BUILD", "CMAKE_MAKEFILE_GENERATOR", "CMAKE_MIN_VERSION",
    "CMAKE_REMOVE_MODULES", "CMAKE_REMOVE_MODULES_LIST", "CMAKE_USE_DIR",
    "CMAKE_UTILS_QA_SRC_DIR_READONLY", "CMAKE_VERBOSE", "CMAKE_WARN_UNUSED_CLI",
    "mycmakeargs",

    -- cmake.eclass
    "CMAKE_QA_SRC_DIR_READONLY",

    -- confutils.eclass
    "EBUILD_SUPPORTS_SHAREDEXT",

    -- coreboot-sdk.eclass
    "COREBOOT_SDK_PREFIX", "COREBOOT_SDK_PREFIX_arm",
    "COREBOOT_SDK_PREFIX_arm64", "COREBOOT_SDK_PREFIX_mips",
    "COREBOOT_SDK_PREFIX_nds32", "COREBOOT_SDK_PREFIX_riscv",
    "COREBOOT_SDK_PREFIX_x86_32", "COREBOOT_SDK_PREFIX_x86_64",

    -- cros-bazel.eclass
    "BAZEL_BAZELRC", "BAZEL_CC_BAZELRC", "BAZEL_CC_BUILD",
    "BAZEL_CC_CONFIG_DIR", "BAZEL_CC_TOOLCHAIN_CONFIG",
    "BAZEL_PORTAGE_PACKAGE_DIR",

    -- cros-binary.eclass
    "CROS_BINARY_LOCAL_URI_BASE", "CROS_BINARY_URI",

    -- cros-camera.eclass
    "CROS_CAMERA_TESTS",

    -- cros-common.mk.eclass
    "CROS_COMMON_MK_NATIVE_TEST",

    -- cros-constants.eclass
    "ARC_ETC_DIR", "ARC_PREFIX", "ARC_VENDOR_DIR", "AUTOTEST_BASE",
    "CHROMITE_BIN_DIR", "CHROMITE_DIR", "CHROOT_SOURCE_ROOT",
    "CROS_GIT_AOSP_URL", "CROS_GIT_HOST_URL", "CROS_GIT_INT_HOST_URL",

    -- cros-cpfe.eclass
    "CROS_CPFE_BOARD_NAME", "CROS_CPFE_BOARD_OVERLAY", "CROS_CPFE_HOME",
    "CROS_CPFE_OVERLAY_NAME", "CROS_CPFE_PATH", "CROS_CPFE_URL",
    "CROS_CPFE_USER_NAME",

    -- cros-ec-board.eclass
    "EC_BOARDS",

    -- cros-ec-merge-ro.eclass
    "FIRMWARE_EC_RELEASE_RO_VERSION",

    -- cros-ec-release.eclass
    "FIRMWARE_EC_BOARD", "FIRMWARE_EC_RELEASE_REPLACE_RO",

    -- cros-factory.eclass
    "CROS_FACTORY_BOARD_RESOURCES_DIR",

    -- cros-firmware.eclass
    "CROS_FIRMWARE_BCS_OVERLAY", "CROS_FIRMWARE_EC_IMAGE",
    "CROS_FIRMWARE_MAIN_IMAGE", "CROS_FIRMWARE_MAIN_RW_IMAGE",
    "CROS_FIRMWARE_PD_IMAGE",

    -- cros-go.eclass
    "CROS_GO_BINARIES", "CROS_GO_PACKAGES", "CROS_GO_SOURCE", "CROS_GO_TEST",
    "CROS_GO_VERSION", "CROS_GO_VET", "CROS_GO_VET_FLAGS", "CROS_GO_WORKSPACE",

    -- cros-ish.eclass
    "ISH_TARGETS",

    -- cros-rust.eclass
    "CROS_RUST_CRATE_NAME", "CROS_RUST_CRATE_VERSION", "CROS_RUST_EMPTY_CRATE",
    "CROS_RUST_EMPTY_CRATE_FEATURES", "CROS_RUST_OVERFLOW_CHECKS",
    "CROS_RUST_REMOVE_DEV_DEPS", "CROS_RUST_TESTS",

    -- cros-unibuild.eclass
    "CROS_CONFIG_BUILD_CONFIG_DUMP_FILE", "CROS_CONFIG_TEST_DIR",
    "UNIBOARD_CROS_CONFIG_DIR", "UNIBOARD_C_CONFIG",
    "UNIBOARD_JSON_INSTALL_PATH", "UNIBOARD_YAML_CONFIG", "UNIBOARD_YAML_DIR",

    -- cros-workon.eclass
    "CROS_WORKON_ALWAYS_LIVE", "CROS_WORKON_BLACKLIST", "CROS_WORKON_COMMIT",
    "CROS_WORKON_DESTDIR", "CROS_WORKON_EGIT_BRANCH", "CROS_WORKON_GIT_SUFFIX",
    "CROS_WORKON_INCREMENTAL_BUILD", "CROS_WORKON_INPLACE",
    "CROS_WORKON_LOCALNAME", "CROS_WORKON_MAKE_COMPILE_ARGS",
    "CROS_WORKON_MANUAL_UPREV", "CROS_WORKON_OPTIONAL_CHECKOUT",
    "CROS_WORKON_OUTOFTREE_BUILD", "CROS_WORKON_PROJECT", "CROS_WORKON_REPO",
    "CROS_WORKON_SRCPATH", "CROS_WORKON_SRCROOT", "CROS_WORKON_SUBDIRS_TO_COPY",
    "CROS_WORKON_SUBDIRS_TO_REV", "CROS_WORKON_SUBTREE", "CROS_WORKON_TREE",
    "CROS_WORKON_USE_VCSID",

    -- cros-zephyr.eclass
    "ZEPHYR_BASE", "ZEPHYR_BUILD_TARGET_NAMES", "ZEPHYR_BUILD_TARGET_PATHS",
    "ZEPHYR_CHROME", "ZEPHYR_MODULES",

    -- cuda.eclass
    "CUDA_VERBOSE", "NVCCFLAGS",

    -- cvs.eclass
    "ECVS_AUTH", "ECVS_BRANCH", "ECVS_CLEAN", "ECVS_CO_OPTS",
    "ECVS_CVS_COMMAND", "ECVS_CVS_COMPRESS", "ECVS_CVS_OPTIONS", "ECVS_LOCAL",
    "ECVS_LOCALNAME", "ECVS_MODULE", "ECVS_PASS", "ECVS_RUNAS", "ECVS_SERVER",
    "ECVS_SSH_HOST_KEY", "ECVS_TOP_DIR", "ECVS_UP_OPTS", "ECVS_USER",

    -- depend.apache.eclass
    "APACHE2_2_DEPEND", "APACHE2_DEPEND", "APACHE_BASEDIR", "APACHE_BIN",
    "APACHE_CONFDIR", "APACHE_CTL", "APACHE_DEPEND", "APACHE_MODULESDIR",
    "APACHE_MODULES_CONFDIR", "APACHE_VERSION", "APACHE_VHOSTS_CONFDIR", "APXS",

    -- depend.php.eclass
    "PHPCHECKNODIE",

    -- distutils-r1.eclass
    "DISTUTILS_ALL_SUBPHASE_IMPLS", "DISTUTILS_IN_SOURCE_BUILD",
    "DISTUTILS_OPTIONAL", "DISTUTILS_SINGLE_IMPL", "DISTUTILS_USE_SETUPTOOLS",
    "mydistutilsargs",

    -- dlc.eclass
    "DLC_DESCRIPTION", "DLC_ENABLED", "DLC_FS_TYPE", "DLC_ID",
    "DLC_MOUNT_FILE_REQUIRED", "DLC_NAME", "DLC_PACKAGE", "DLC_PREALLOC_BLOCKS",
    "DLC_PRELOAD", "DLC_USED_BY", "DLC_VERSION",

    -- elisp-common.eclass
    "BYTECOMPFLAGS", "EMACS", "EMACSFLAGS", "SITEETC", "SITELISP",

    -- elisp.eclass
    "ELISP_PATCHES", "ELISP_TEXINFO", "NEED_EMACS", "SITEFILE",

    -- emboss.eclass
    "EBO_DESCRIPTION", "EBO_EAUTORECONF", "EBO_EXTRA_ECONF",

    -- epatch.eclass
    "EPATCH_COMMON_OPTS", "EPATCH_EXCLUDE", "EPATCH_FORCE", "EPATCH_MULTI_MSG",
    "EPATCH_OPTS", "EPATCH_SINGLE_MSG", "EPATCH_SOURCE", "EPATCH_SUFFIX",
    "EPATCH_USER_EXCLUDE", "EPATCH_USER_SOURCE",

    -- fcaps.eclass
    "FILECAPS",

    -- font.eclass
    "FONTDIR", "FONT_CONF", "FONT_PN", "FONT_S", "FONT_SUFFIX",

    -- fortran-2.eclass
    "FORTRAN_NEEDED", "FORTRAN_NEED_OPENMP", "FORTRAN_STANDARD",

    -- freedict.eclass
    "FORLANG", "TOLANG",

    -- gems.eclass
    "USE_RUBY",

    -- git-2.eclass
    "EGIT_BOOTSTRAP", "EGIT_BRANCH", "EGIT_COMMIT", "EGIT_DIR",
    "EGIT_HAS_SUBMODULES", "EGIT_MASTER", "EGIT_NONBARE", "EGIT_NOUNPACK",
    "EGIT_OPTIONS", "EGIT_PROJECT", "EGIT_PRUNE", "EGIT_REPACK",
    "EGIT_REPO_URI", "EGIT_SOURCEDIR", "EGIT_STORE_DIR", "EVCS_OFFLINE",

    -- git-r3.eclass
    "EGIT3_STORE_DIR", "EGIT_CHECKOUT_DIR", "EGIT_CLONE_TYPE",
    "EGIT_COMMIT_DATE", "EGIT_MIN_CLONE_TYPE", "EGIT_MIRROR_URI",
    "EGIT_SUBMODULES", "EVCS_UMASK",

    -- gnome.org.eclass
    "GNOME_ORG_MODULE", "GNOME_ORG_PVP", "GNOME_TARBALL_SUFFIX",

    -- gnome2-utils.eclass
    "GCONFTOOL_BIN", "GLIB_COMPILE_SCHEMAS", "GNOME2_ECLASS_GDK_PIXBUF_LOADERS",
    "GNOME2_ECLASS_GLIB_SCHEMAS", "GNOME2_ECLASS_ICONS",
    "GNOME2_ECLASS_SCHEMAS", "GNOME2_ECLASS_SCROLLS", "SCROLLKEEPER_DIR",
    "SCROLLKEEPER_UPDATE_BIN",

    -- gnome2.eclass
    "ELTCONF", "G2CONF", "GCONF_DEBUG", "GNOME2_EAUTORECONF",
    "GNOME2_ECLASS_GIO_MODULES", "GNOME2_LA_PUNT",

    -- go-module.eclass
    "EGO_SUM", "_GOMODULE_GOPROXY_BASEURI", "_GOMODULE_GOSUM_REVERSE_MAP",

    -- golang-base.eclass
    "EGO_PN",

    -- golang-build.eclass
    "EGO_BUILD_FLAGS",

    -- golang-vcs-snapshot.eclass
    "EGO_VENDOR",

    -- golang-vcs.eclass
    "EGO_STORE_DIR",

    -- gpe.eclass
    "GPE_DOCS",

    -- gtk-sharp-module.eclass
    "EAUTORECONF", "GTK_SHARP_MODULE", "GTK_SHARP_MODULE_DIR",
    "GTK_SHARP_REQUIRED_VERSION", "PV_MAJOR", "TARBALL", "gapi_users_list",

    -- haskell-cabal.eclass
    "CABAL_DEBUG_LOOSENING", "CABAL_EXTRA_BUILD_FLAGS",
    "CABAL_EXTRA_CONFIGURE_FLAGS", "CABAL_EXTRA_TEST_FLAGS",
    "CABAL_REPORT_OTHER_BROKEN_PACKAGES", "GHC_BOOTSTRAP_FLAGS",

    -- intel-sdp.eclass
    "INTEL_ARCH", "INTEL_BIN_RPMS", "INTEL_DAT_RPMS", "INTEL_DID", "INTEL_DPN",
    "INTEL_DPV", "INTEL_RPMS_DIRS", "INTEL_SDP_DB", "INTEL_SDP_DIR",
    "INTEL_SDP_EDIR", "INTEL_SUBDIR", "INTEL_X86",

    -- java-ant-2.eclass
    "JAVA_ANT_CLASSPATH_TAGS", "JAVA_ANT_DISABLE_ANT_CORE_DEP",
    "JAVA_ANT_IGNORE_SYSTEM_CLASSES", "JAVA_PKG_BSFIX", "JAVA_PKG_BSFIX_ALL",
    "JAVA_PKG_BSFIX_NAME", "JAVA_PKG_BSFIX_SOURCE_TAGS",
    "JAVA_PKG_BSFIX_TARGET_TAGS", "WANT_ANT_TASKS",

    -- java-osgi.eclass
    "_OSGI_T",

    -- java-pkg-2.eclass
    "JAVA_PKG_IUSE",

    -- java-pkg-opt-2.eclass
    "JAVA_PKG_OPT_USE",

    -- java-pkg-simple.eclass
    "JAVAC_ARGS", "JAVADOC_ARGS", "JAVA_ENCODING", "JAVA_GENTOO_CLASSPATH",
    "JAVA_GENTOO_CLASSPATH_EXTRA", "JAVA_JAR_FILENAME", "JAVA_SRC_DIR",

    -- java-utils-2.eclass
    "JAVA_PKG_ALLOW_VM_CHANGE", "JAVA_PKG_COMPILERS_CONF",
    "JAVA_PKG_COMPILER_DIR", "JAVA_PKG_DEBUG", "JAVA_PKG_E_DEPEND",
    "JAVA_PKG_FORCE_ANT_TASKS", "JAVA_PKG_FORCE_COMPILER", "JAVA_PKG_FORCE_VM",
    "JAVA_PKG_WANT_BOOTCLASSPATH", "JAVA_PKG_WANT_BUILD_VM",
    "JAVA_PKG_WANT_SOURCE", "JAVA_PKG_WANT_TARGET", "JAVA_RM_FILES",

    -- java-vm-2.eclass
    "JAVA_VM_BUILD_ONLY", "JAVA_VM_CONFIG_DIR", "JAVA_VM_DIR", "JAVA_VM_SYSTEM",

    -- kde4-base.eclass
    "CMAKE_REQUIRED", "CPPUNIT_REQUIRED", "ESVN_MIRROR", "ESVN_PROJECT_SUFFIX",
    "ESVN_UP_FREQ", "KDE_MINIMAL", "KDE_REQUIRED", "MULTIMEDIA_REQUIRED",
    "OPENGL_REQUIRED", "PREFIX", "QT_MINIMAL", "WEBKIT_REQUIRED",

    -- kde4-functions.eclass
    "KDEBASE", "KDE_DOC_DIRS", "KDE_LINGUAS", "KDE_LINGUAS_DIR",
    "KDE_LIVE_SLOTS", "KDE_SLOTS",

    -- kde4-meta.eclass
    "KMCOMPILEONLY", "KMEXTRA", "KMEXTRACTONLY", "KMMODULE", "KMNAME",
    "KMNOMODULE", "KMTARPARAMS",

    -- l10n.eclass
    "PLOCALES", "PLOCALE_BACKUP",

    -- latex-package.eclass
    "SUPPLIER",

    -- leechcraft.eclass
    "LEECHCRAFT_PLUGIN_CATEGORY",

    -- linux-info.eclass
    "CONFIG_CHECK", "KBUILD_OUTPUT", "KERNEL_DIR", "KV_DIR", "KV_EXTRA",
    "KV_FULL", "KV_LOCAL", "KV_MAJOR", "KV_MINOR", "KV_OUT_DIR", "KV_PATCH",
    "_LINUX_CONFIG_EXISTS_DONE",

    -- linux-mod.eclass
    "BUILD_PARAMS", "BUILD_TARGETS", "ECONF_PARAMS", "KV_OBJ",
    "MODULES_OPTIONAL_USE", "MODULE_NAMES",

    -- llvm.eclass
    "LLVM_MAX_SLOT", "_LLVM_KNOWN_SLOTS",

    -- llvm.org.eclass
    "LLVM_COMPONENTS", "LLVM_TEST_COMPONENTS", "_LLVM_MASTER_MAJOR",
    "_LLVM_SOURCE_TYPE",

    -- mercurial.eclass
    "EHG_CLONE_CMD", "EHG_OFFLINE", "EHG_PROJECT", "EHG_PULL_CMD", "EHG_QUIET",
    "EHG_REPO_URI", "EHG_REVISION",

    -- meson.eclass
    "EMESON_SOURCE", "emesonargs", "emesontestargs",

    -- mozlinguas.eclass
    "MOZ_FTP_URI", "MOZ_LANGPACK_PREFIX", "MOZ_LANGPACK_SUFFIX", "MOZ_LANGS",
    "MOZ_P", "MOZ_PN", "MOZ_PV",

    -- multibuild.eclass
    "MULTIBUILD_ID", "MULTIBUILD_VARIANT", "MULTIBUILD_VARIANTS",

    -- multilib-build.eclass
    "MULTILIB_ABI_FLAG", "MULTILIB_CHOST_TOOLS", "MULTILIB_COMPAT",
    "MULTILIB_USEDEP", "MULTILIB_WRAPPED_HEADERS", "_MULTILIB_FLAGS",

    -- myspell-r2.eclass
    "MYSPELL_DICT", "MYSPELL_HYPH", "MYSPELL_THES",

    -- mysql-multilib-r1.eclass
    "MYSQL_CMAKE_EXTRA_DEFINES", "MYSQL_CMAKE_NATIVE_DEFINES",
    "MYSQL_CMAKE_NONNATIVE_DEFINES", "MYSQL_EXTRAS_VER", "MYSQL_PV_MAJOR",
    "MYSQL_VERSION_ID",

    -- mysql-v2.eclass
    "BUILD", "PERCONA_VER", "XTRADB_VER",

    -- mysql.eclass
    "MYSQL_COMMUNITY_FEATURES",

    -- netsurf.eclass
    "NETSURF_BUILDSYSTEM", "NETSURF_BUILDSYSTEM_SRC_URI",
    "NETSURF_COMPONENT_TYPE", "netsurf_makeconf",

    -- ninja-utils.eclass
    "NINJAOPTS",

    -- oasis.eclass
    "OASIS_BUILD_DOCS", "OASIS_BUILD_TESTS", "OASIS_NO_DEBUG",

    -- obs-download.eclass
    "OBS_PACKAGE", "OBS_PROJECT", "OPENSUSE_RELEASE",

    -- obs-service.eclass
    "ADDITIONAL_FILES", "OBS_SERVICE_NAME",

    -- office-ext-r1.eclass
    "OFFICE_EXTENSIONS", "OFFICE_EXTENSIONS_LOCATION", "OFFICE_IMPLEMENTATIONS",
    "OFFICE_REQ_USE",

    -- office-ext.eclass
    "OO_EXTENSIONS",

    -- openib.eclass
    "OFED_RC", "OFED_RC_VER", "OFED_SNAPSHOT", "OFED_SUFFIX", "OFED_VER",
    "OFED_VERSIONS",

    -- perl-module.eclass
    "DIST_A", "DIST_AUTHOR", "DIST_A_EXT", "DIST_EXAMPLES", "DIST_NAME",
    "DIST_SECTION", "DIST_TEST", "DIST_TEST_OVERRIDE", "DIST_VERSION",
    "GENTOO_DEPEND_ON_PERL",

    -- php-ext-base-r1.eclass
    "PHP_EXT_INI", "PHP_EXT_NAME", "PHP_EXT_ZENDEXT",

    -- php-ext-pecl-r1.eclass
    "PHP_EXT_PECL_FILENAME", "PHP_EXT_PECL_PKG",

    -- php-ext-source-r1.eclass
    "PHP_EXT_SKIP_PHPIZE", "my_conf",

    -- php-ext-source-r2.eclass
    "PHP_EXT_OPTIONAL_USE", "PHP_EXT_S", "USE_PHP",

    -- php-ezc.eclass
    "EZC_BASE_MIN", "EZC_PV",

    -- php-lib-r1.eclass
    "PHP_LIB_NAME",

    -- php-pear-r1.eclass
    "PEAR_PV", "PHP_PEAR_PKG_NAME",

    -- php5_2-sapi.eclass
    "MY_PHP_P", "PHP_EXTRA_BRANDING", "PHP_PACKAGE", "PHP_PATCHSET_REV",
    "SUHOSIN_PATCH",

    -- platform.eclass
    "OUT", "PLATFORM_ARC_BUILD", "PLATFORM_BUILD", "PLATFORM_NATIVE_TEST",
    "PLATFORM_SUBDIR", "WANT_LIBBRILLO", "WANT_LIBCHROME",

    -- poppler.eclass
    "POPPLER_MODULE", "POPPLER_MODULE_S",

    -- python-any-r1.eclass
    "PYTHON_COMPAT", "PYTHON_COMPAT_OVERRIDE", "PYTHON_DEPS", "PYTHON_REQ_USE",
    "PYTHON_USEDEP",

    -- python-distutils-ng.eclass
    "PYTHON_DISABLE_COMPILATION", "PYTHON_DISABLE_SCRIPT_REDOS",
    "PYTHON_OPTIONAL", "PYTHON_USE",

    -- python-r1.eclass
    "PYTHON_REQUIRED_USE",

    -- python-single-r1.eclass
    "PYTHON_MULTI_USEDEP", "PYTHON_SINGLE_USEDEP",

    -- python-utils-r1.eclass
    "EPYTHON", "PYTHON", "PYTHON_COMPAT_NO_STRICT", "_PYTHON_ALL_IMPLS",

    -- qmake-utils.eclass
    "EQMAKE4_EXCLUDE",

    -- readme.gentoo-r1.eclass
    "DISABLE_AUTOFORMATTING", "FORCE_PRINT_ELOG", "README_GENTOO_SUFFIX",

    -- ruby-fakegem.eclass
    "RUBY_FAKEGEM_BINDIR", "RUBY_FAKEGEM_BINWRAP", "RUBY_FAKEGEM_DOCDIR",
    "RUBY_FAKEGEM_DOC_SOURCES", "RUBY_FAKEGEM_EXTRADOC",
    "RUBY_FAKEGEM_EXTRAINSTALL", "RUBY_FAKEGEM_GEMSPEC", "RUBY_FAKEGEM_NAME",
    "RUBY_FAKEGEM_RECIPE_DOC", "RUBY_FAKEGEM_RECIPE_TEST",
    "RUBY_FAKEGEM_REQUIRE_PATHS", "RUBY_FAKEGEM_TASK_DOC",
    "RUBY_FAKEGEM_TASK_TEST", "RUBY_FAKEGEM_VERSION",

    -- ruby-ng.eclass
    "RUBY_OPTIONAL", "RUBY_PATCHES", "RUBY_QA_ALLOWED_LIBS", "RUBY_S",

    -- ruby-single.eclass
    "RUBY_DEPS",

    -- ruby-utils.eclass
    "RUBY_TARGETS_PREFERENCE",

    -- scons-utils.eclass
    "EXTRA_ESCONS", "SCONSOPTS", "SCONS_MIN_VERSION", "USE_SCONS_FALSE",
    "USE_SCONS_TRUE", "myesconsargs",

    -- tast-bundle.eclass
    "TAST_BUNDLE_PRIVATE",

    -- tegra-bct.eclass
    "TEGRA_BCT_CHIP_FAMILY", "TEGRA_BCT_FLASH_CONFIG",
    "TEGRA_BCT_ODM_DATA_CONFIG", "TEGRA_BCT_SDRAM_CONFIG",

    -- texlive-module.eclass
    "TEXLIVE_MODULE_BINSCRIPTS", "TEXLIVE_MODULE_CONTENTS",
    "TEXLIVE_MODULE_DOC_CONTENTS", "TEXLIVE_MODULE_SRC_CONTENTS", "TL_PV",

    -- twisted-r1.eclass
    "TWISTED_P", "TWISTED_PLUGINS", "TWISTED_PN", "TWISTED_RELEASE",

    -- unpacker.eclass
    "UNPACKER_BZ2",

    -- vala.eclass
    "VALA_MAX_API_VERSION", "VALA_MIN_API_VERSION", "VALA_USE_DEPEND",

    -- virtuoso.eclass
    "VOS_EXTRACT",

    -- waf-utils.eclass
    "NO_WAF_LIBDIR", "WAF_BINARY", "WAF_VERBOSE",

    -- webapp.eclass
    "WEBAPP_DEPEND", "WEBAPP_NO_AUTO_INSTALL", "WEBAPP_OPTIONAL",

    -- x-modular.eclass
    "CONFIGURE_OPTIONS", "FONT_DIR", "MODULE", "SNAPSHOT", "XDIR",

    -- xdg-utils.eclass
    "DESKTOP_DATABASE_DIR", "MIMEINFO_DATABASE_DIR",

    -- xemacs-elisp.eclass
    "SIMPLE_ELISP",

    -- xfconf.eclass
    "EINTLTOOLIZE", "XFCONF",

    -- xorg-2.eclass
    "XORG_BASE_INDIVIDUAL_URI", "XORG_CONFIGURE_OPTIONS", "XORG_DOC",
    "XORG_DRI", "XORG_EAUTORECONF", "XORG_MODULE", "XORG_MODULE_REBUILD",
    "XORG_MULTILIB", "XORG_PACKAGE_NAME", "XORG_STATIC",

    -- xorg-3.eclass
    "XORG_TARBALL_SUFFIX",

    -- autotest.eclass declared incorrectly
    "AUTOTEST_CLIENT_TESTS", "AUTOTEST_CLIENT_SITE_TESTS",
    "AUTOTEST_SERVER_TESTS", "AUTOTEST_SERVER_SITE_TESTS", "AUTOTEST_CONFIG",
    "AUTOTEST_DEPS", "AUTOTEST_PROFILERS", "AUTOTEST_CONFIG_LIST",
    "AUTOTEST_DEPS_LIST", "AUTOTEST_PROFILERS_LIST",

    -- cros-board.eclass declared incorrectly
    "CROS_BOARDS",

    -- Undeclared cros-kernel2 vars
    "AFDO_PROFILE_VERSION",

    -- haskell-cabal.eclass declared incorrectly
    "CABAL_FEATURES",

    -- Undeclared haskell-cabal.eclass vars
    "CABAL_CORE_LIB_GHC_PV",

    -- Undeclared readme.gentoo.eclass vars
    "DOC_CONTENTS",

    -- Backwards compatibility perl-module.eclass vars
    "MODULE_AUTHOR", "MODULE_VERSION",

    -- Undeclared perl-module.eclass vars
    "mydoc",

    -- python-utils-r1.eclass declared incorrectly
    "RESTRICT_PYTHON_ABIS", "PYTHON_MODNAME"
  ]

specialVariablesWithoutSpaces = [
    "$", "-", "?", "!", "#"
  ]

shellVariablesWithoutSpaces = specialVariablesWithoutSpaces ++ [
    "BASHPID", "BASH_ARGC", "BASH_LINENO", "BASH_SUBSHELL", "EUID", "LINENO",
    "OPTIND", "PPID", "RANDOM", "SECONDS", "SHELLOPTS", "SHLVL", "UID",
    "COLUMNS", "HISTFILESIZE", "HISTSIZE", "LINES"

    -- shflags
    , "FLAGS_ERROR", "FLAGS_FALSE", "FLAGS_TRUE"
  ]

portageVariablesWithoutSpaces = [
    "EAPI", "P", "PF", "PN", "PR", "PV", "PVR", "SLOT"
  ]

specialVariables = specialVariablesWithoutSpaces ++ ["@", "*"]

unbracedVariables = specialVariables ++ [
    "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"
  ]

shellArrayVariables = [
    "BASH_ALIASES", "BASH_ARGC", "BASH_ARGV", "BASH_CMDS", "BASH_LINENO",
    "BASH_REMATCH", "BASH_SOURCE", "BASH_VERSINFO", "COMP_WORDS", "COPROC",
    "DIRSTACK", "FUNCNAME", "GROUPS", "MAPFILE", "PIPESTATUS", "COMPREPLY"
  ]

portageArrayVariables = [
    "PATCHES"
  ]

commonCommands = [
    "admin", "alias", "ar", "asa", "at", "awk", "basename", "batch",
    "bc", "bg", "break", "c99", "cal", "cat", "cd", "cflow", "chgrp",
    "chmod", "chown", "cksum", "cmp", "colon", "comm", "command",
    "compress", "continue", "cp", "crontab", "csplit", "ctags", "cut",
    "cxref", "date", "dd", "delta", "df", "diff", "dirname", "dot",
    "du", "echo", "ed", "env", "eval", "ex", "exec", "exit", "expand",
    "export", "expr", "fc", "fg", "file", "find", "fold", "fort77",
    "fuser", "gencat", "get", "getconf", "getopts", "grep", "hash",
    "head", "iconv", "ipcrm", "ipcs", "jobs", "join", "kill", "lex",
    "link", "ln", "locale", "localedef", "logger", "logname", "lp",
    "ls", "m4", "mailx", "make", "man", "mesg", "mkdir", "mkfifo",
    "more", "mv", "newgrp", "nice", "nl", "nm", "nohup", "od", "paste",
    "patch", "pathchk", "pax", "pr", "printf", "prs", "ps", "pwd",
    "qalter", "qdel", "qhold", "qmove", "qmsg", "qrerun", "qrls",
    "qselect", "qsig", "qstat", "qsub", "read", "readonly", "renice",
    "return", "rm", "rmdel", "rmdir", "sact", "sccs", "sed", "set",
    "sh", "shift", "sleep", "sort", "split", "strings", "strip", "stty",
    "tabs", "tail", "talk", "tee", "test", "time", "times", "touch",
    "tput", "tr", "trap", "tsort", "tty", "type", "ulimit", "umask",
    "unalias", "uname", "uncompress", "unexpand", "unget", "uniq",
    "unlink", "unset", "uucp", "uudecode", "uuencode", "uustat", "uux",
    "val", "vi", "wait", "wc", "what", "who", "write", "xargs", "yacc",
    "zcat"
  ]

nonReadingCommands = [
    "alias", "basename", "bg", "cal", "cd", "chgrp", "chmod", "chown",
    "cp", "du", "echo", "export", "false", "fg", "fuser", "getconf",
    "getopt", "getopts", "ipcrm", "ipcs", "jobs", "kill", "ln", "ls",
    "locale", "mv", "printf", "ps", "pwd", "renice", "rm", "rmdir",
    "set", "sleep", "touch", "trap", "true", "ulimit", "unalias", "uname"
    ]

sampleWords = [
    "alpha", "bravo", "charlie", "delta", "echo", "foxtrot",
    "golf", "hotel", "india", "juliett", "kilo", "lima", "mike",
    "november", "oscar", "papa", "quebec", "romeo", "sierra",
    "tango", "uniform", "victor", "whiskey", "xray", "yankee",
    "zulu"
  ]

binaryTestOps = [
    "-nt", "-ot", "-ef", "==", "!=", "<=", ">=", "-eq", "-ne", "-lt", "-le",
    "-gt", "-ge", "=~", ">", "<", "=", "\\<", "\\>", "\\<=", "\\>="
  ]

arithmeticBinaryTestOps = [
    "-eq", "-ne", "-lt", "-le", "-gt", "-ge"
  ]

unaryTestOps = [
    "!", "-a", "-b", "-c", "-d", "-e", "-f", "-g", "-h", "-L", "-k", "-p",
    "-r", "-s", "-S", "-t", "-u", "-w", "-x", "-O", "-G", "-N", "-z", "-n",
    "-o", "-v", "-R"
  ]

shellForExecutable :: String -> Maybe Shell
shellForExecutable name =
    case name of
        "sh"    -> return Sh
        "bash"  -> return Bash
        "bats"  -> return Bash
        "dash"  -> return Dash
        "ash"   -> return Dash -- There's also a warning for this.
        "ksh"   -> return Ksh
        "ksh88" -> return Ksh
        "ksh93" -> return Ksh
        _ -> Nothing

flagsForRead = "sreu:n:N:i:p:a:t:"
