import CGLib

public let ANALYZER_ANALYZING = G_ANALYZER_ANALYZING // 1

/// A good size for a buffer to be passed into `g_ascii_dtostr()`.
/// It is guaranteed to be enough for all output of that function
/// on systems with 64bit IEEE-compatible doubles.
/// 
/// The typical usage would be something like:
/// (C Language Example):
/// ```C
///   char buf[G_ASCII_DTOSTR_BUF_SIZE];
/// 
///   fprintf (out, "value=%s\n", g_ascii_dtostr (buf, sizeof (buf), value));
/// ```
/// 
public let ASCII_DTOSTR_BUF_SIZE = G_ASCII_DTOSTR_BUF_SIZE // 39

/// Specifies one of the possible types of byte order.
/// See `G_BYTE_ORDER`.
public let BIG_ENDIAN = G_BIG_ENDIAN // 4321

/// The set of uppercase ASCII alphabet characters.
/// Used for specifying valid identifier characters
/// in `GScannerConfig`.
public let CSET_A_2_Z = G_CSET_A_2_Z // 3

/// The set of ASCII digits.
/// Used for specifying valid identifier characters
/// in `GScannerConfig`.
public let CSET_DIGITS = G_CSET_DIGITS // 123456789

/// The set of lowercase ASCII alphabet characters.
/// Used for specifying valid identifier characters
/// in `GScannerConfig`.
public let CSET_a_2_z = G_CSET_a_2_z // 5

/// A bitmask that restricts the possible flags passed to
/// `g_datalist_set_flags()`. Passing a flags value where
/// flags & ~G_DATALIST_FLAGS_MASK != 0 is an error.
public let DATALIST_FLAGS_MASK = G_DATALIST_FLAGS_MASK // 3

/// Represents an invalid `GDateDay`.
public let DATE_BAD_DAY = G_DATE_BAD_DAY // 0

/// Represents an invalid Julian day number.
public let DATE_BAD_JULIAN = G_DATE_BAD_JULIAN // 0

/// Represents an invalid year.
public let DATE_BAD_YEAR = G_DATE_BAD_YEAR // 0

/// The directory separator character.
/// This is '/' on UNIX machines and '\' under Windows.
public let DIR_SEPARATOR = 47 // G_DIR_SEPARATOR

/// The directory separator as a string.
/// This is "/" on UNIX machines and "\" under Windows.
public let DIR_SEPARATOR_S = G_DIR_SEPARATOR_S // 11

/// The base of natural logarithms.
public let E = G_E // 12

/// This is the platform dependent conversion specifier for scanning and
/// printing values of type `gint16`. It is a string literal, but doesn't
/// include the percent-sign, such that you can add precision and length
/// modifiers between percent-sign and conversion specifier.
/// 
/// (C Language Example):
/// ```C
/// gint16 in;
/// gint32 out;
/// sscanf ("42", "%" G_GINT16_FORMAT, &in)
/// out = in * 1000;
/// g_print ("%" G_GINT32_FORMAT, out);
/// ```
/// 
public let GINT16_FORMAT = G_GINT16_FORMAT // 13

/// The platform dependent length modifier for conversion specifiers
/// for scanning and printing values of type `gint16` or `guint16`. It
/// is a string literal, but doesn't include the percent-sign, such
/// that you can add precision and length modifiers between percent-sign
/// and conversion specifier and append a conversion specifier.
/// 
/// The following example prints "0x7b";
/// (C Language Example):
/// ```C
/// gint16 value = 123;
/// g_print ("%#" G_GINT16_MODIFIER "x", value);
/// ```
/// 
public let GINT16_MODIFIER = G_GINT16_MODIFIER // 14

/// This is the platform dependent conversion specifier for scanning
/// and printing values of type `gint32`. See also `G_GINT16_FORMAT`.
public let GINT32_FORMAT = G_GINT32_FORMAT // 15

/// The platform dependent length modifier for conversion specifiers
/// for scanning and printing values of type `gint32` or `guint32`. It
/// is a string literal. See also `G_GINT16_MODIFIER`.
public let GINT32_MODIFIER = G_GINT32_MODIFIER // 16

/// This is the platform dependent conversion specifier for scanning
/// and printing values of type `gint64`. See also `G_GINT16_FORMAT`.
/// 
/// Some platforms do not support scanning and printing 64-bit integers,
/// even though the types are supported. On such platforms `G_GINT64_FORMAT`
/// is not defined. Note that `scanf()` may not support 64-bit integers, even
/// if `G_GINT64_FORMAT` is defined. Due to its weak error handling, `scanf()`
/// is not recommended for parsing anyway; consider using `g_ascii_strtoull()`
/// instead.
public let GINT64_FORMAT = G_GINT64_FORMAT // 17

/// The platform dependent length modifier for conversion specifiers
/// for scanning and printing values of type `gint64` or `guint64`.
/// It is a string literal.
/// 
/// Some platforms do not support printing 64-bit integers, even
/// though the types are supported. On such platforms `G_GINT64_MODIFIER`
/// is not defined.
public let GINT64_MODIFIER = G_GINT64_MODIFIER // 18

/// This is the platform dependent conversion specifier for scanning
/// and printing values of type `gintptr`.
public let GINTPTR_FORMAT = G_GINTPTR_FORMAT // 19

/// The platform dependent length modifier for conversion specifiers
/// for scanning and printing values of type `gintptr` or `guintptr`.
/// It is a string literal.
public let GINTPTR_MODIFIER = G_GINTPTR_MODIFIER // 20

/// Expands to "" on all modern compilers, and to  __FUNCTION__ on gcc
/// version 2.x. Don't use it.
///
/// **GNUC_FUNCTION is deprecated:**
/// Use G_STRFUNC() instead
// deprecated GNUC_FUNCTION = 21 // G_GNUC_FUNCTION

/// Expands to "" on all modern compilers, and to __PRETTY_FUNCTION__
/// on gcc version 2.x. Don't use it.
///
/// **GNUC_PRETTY_FUNCTION is deprecated:**
/// Use G_STRFUNC() instead
// deprecated GNUC_PRETTY_FUNCTION = 22 // G_GNUC_PRETTY_FUNCTION

/// This is the platform dependent conversion specifier for scanning
/// and printing values of type `gsize`. See also `G_GINT16_FORMAT`.
public let GSIZE_FORMAT = G_GSIZE_FORMAT // 23

/// The platform dependent length modifier for conversion specifiers
/// for scanning and printing values of type `gsize`. It
/// is a string literal.
public let GSIZE_MODIFIER = G_GSIZE_MODIFIER // 24

/// This is the platform dependent conversion specifier for scanning
/// and printing values of type `gssize`. See also `G_GINT16_FORMAT`.
public let GSSIZE_FORMAT = G_GSSIZE_FORMAT // 25

/// The platform dependent length modifier for conversion specifiers
/// for scanning and printing values of type `gssize`. It
/// is a string literal.
public let GSSIZE_MODIFIER = G_GSSIZE_MODIFIER // 26

/// This is the platform dependent conversion specifier for scanning
/// and printing values of type `guint16`. See also `G_GINT16_FORMAT`
public let GUINT16_FORMAT = G_GUINT16_FORMAT // 27

/// This is the platform dependent conversion specifier for scanning
/// and printing values of type `guint32`. See also `G_GINT16_FORMAT`.
public let GUINT32_FORMAT = G_GUINT32_FORMAT // 28

/// This is the platform dependent conversion specifier for scanning
/// and printing values of type `guint64`. See also `G_GINT16_FORMAT`.
/// 
/// Some platforms do not support scanning and printing 64-bit integers,
/// even though the types are supported. On such platforms `G_GUINT64_FORMAT`
/// is not defined.  Note that `scanf()` may not support 64-bit integers, even
/// if `G_GINT64_FORMAT` is defined. Due to its weak error handling, `scanf()`
/// is not recommended for parsing anyway; consider using `g_ascii_strtoull()`
/// instead.
public let GUINT64_FORMAT = G_GUINT64_FORMAT // 29

/// This is the platform dependent conversion specifier
/// for scanning and printing values of type `guintptr`.
public let GUINTPTR_FORMAT = G_GUINTPTR_FORMAT // 30

public let HAVE_GINT64 = G_HAVE_GINT64 // 1

public let HAVE_GNUC_VARARGS = G_HAVE_GNUC_VARARGS // 1

/// Defined to 1 if gcc-style visibility handling is supported.
public let HAVE_GNUC_VISIBILITY = G_HAVE_GNUC_VISIBILITY // 1

public let HAVE_GROWING_STACK = G_HAVE_GROWING_STACK // 0

public let HAVE_ISO_VARARGS = G_HAVE_ISO_VARARGS // 1

/// The position of the first bit which is not reserved for internal
/// use be the `GHook` implementation, i.e.
/// `1 &lt;&lt; G_HOOK_FLAG_USER_SHIFT` is the first
/// bit which can be used for application-defined flags.
public let HOOK_FLAG_USER_SHIFT = G_HOOK_FLAG_USER_SHIFT // 4

/// The bias by which exponents in double-precision floats are offset.
public let IEEE754_DOUBLE_BIAS = G_IEEE754_DOUBLE_BIAS // 1023

/// The bias by which exponents in single-precision floats are offset.
public let IEEE754_FLOAT_BIAS = G_IEEE754_FLOAT_BIAS // 127

/// The name of the main group of a desktop entry file, as defined in the
/// [Desktop Entry Specification](http://freedesktop.org/Standards/desktop-entry-spec).
/// Consult the specification for more
/// details about the meanings of the keys below.
public let KEY_FILE_DESKTOP_GROUP = G_KEY_FILE_DESKTOP_GROUP // 39

/// A key under `G_KEY_FILE_DESKTOP_GROUP`, whose value is a string list
/// giving the available application actions.
public let KEY_FILE_DESKTOP_KEY_ACTIONS = G_KEY_FILE_DESKTOP_KEY_ACTIONS // 40

/// A key under `G_KEY_FILE_DESKTOP_GROUP`, whose value is a list
/// of strings giving the categories in which the desktop entry
/// should be shown in a menu.
public let KEY_FILE_DESKTOP_KEY_CATEGORIES = G_KEY_FILE_DESKTOP_KEY_CATEGORIES // 41

/// A key under `G_KEY_FILE_DESKTOP_GROUP`, whose value is a localized
/// string giving the tooltip for the desktop entry.
public let KEY_FILE_DESKTOP_KEY_COMMENT = G_KEY_FILE_DESKTOP_KEY_COMMENT // 42

/// A key under `G_KEY_FILE_DESKTOP_GROUP`, whose value is a boolean set to true
/// if the application is D-Bus activatable.
public let KEY_FILE_DESKTOP_KEY_DBUS_ACTIVATABLE = G_KEY_FILE_DESKTOP_KEY_DBUS_ACTIVATABLE // 43

/// A key under `G_KEY_FILE_DESKTOP_GROUP`, whose value is a string
/// giving the command line to execute. It is only valid for desktop
/// entries with the `Application` type.
public let KEY_FILE_DESKTOP_KEY_EXEC = G_KEY_FILE_DESKTOP_KEY_EXEC // 44

/// A key under `G_KEY_FILE_DESKTOP_GROUP`, whose value is a localized
/// string giving the generic name of the desktop entry.
public let KEY_FILE_DESKTOP_KEY_GENERIC_NAME = G_KEY_FILE_DESKTOP_KEY_GENERIC_NAME // 45

/// A key under `G_KEY_FILE_DESKTOP_GROUP`, whose value is a boolean
/// stating whether the desktop entry has been deleted by the user.
public let KEY_FILE_DESKTOP_KEY_HIDDEN = G_KEY_FILE_DESKTOP_KEY_HIDDEN // 46

/// A key under `G_KEY_FILE_DESKTOP_GROUP`, whose value is a localized
/// string giving the name of the icon to be displayed for the desktop
/// entry.
public let KEY_FILE_DESKTOP_KEY_ICON = G_KEY_FILE_DESKTOP_KEY_ICON // 47

/// A key under `G_KEY_FILE_DESKTOP_GROUP`, whose value is a list
/// of strings giving the MIME types supported by this desktop entry.
public let KEY_FILE_DESKTOP_KEY_MIME_TYPE = G_KEY_FILE_DESKTOP_KEY_MIME_TYPE // 48

/// A key under `G_KEY_FILE_DESKTOP_GROUP`, whose value is a localized
/// string giving the specific name of the desktop entry.
public let KEY_FILE_DESKTOP_KEY_NAME = G_KEY_FILE_DESKTOP_KEY_NAME // 49

/// A key under `G_KEY_FILE_DESKTOP_GROUP`, whose value is a list of
/// strings identifying the environments that should not display the
/// desktop entry.
public let KEY_FILE_DESKTOP_KEY_NOT_SHOW_IN = G_KEY_FILE_DESKTOP_KEY_NOT_SHOW_IN // 50

/// A key under `G_KEY_FILE_DESKTOP_GROUP`, whose value is a boolean
/// stating whether the desktop entry should be shown in menus.
public let KEY_FILE_DESKTOP_KEY_NO_DISPLAY = G_KEY_FILE_DESKTOP_KEY_NO_DISPLAY // 51

/// A key under `G_KEY_FILE_DESKTOP_GROUP`, whose value is a list of
/// strings identifying the environments that should display the
/// desktop entry.
public let KEY_FILE_DESKTOP_KEY_ONLY_SHOW_IN = G_KEY_FILE_DESKTOP_KEY_ONLY_SHOW_IN // 52

/// A key under `G_KEY_FILE_DESKTOP_GROUP`, whose value is a string
/// containing the working directory to run the program in. It is only
/// valid for desktop entries with the `Application` type.
public let KEY_FILE_DESKTOP_KEY_PATH = G_KEY_FILE_DESKTOP_KEY_PATH // 53

/// A key under `G_KEY_FILE_DESKTOP_GROUP`, whose value is a boolean
/// stating whether the application supports the
/// [Startup Notification Protocol Specification](http://www.freedesktop.org/Standards/startup-notification-spec).
public let KEY_FILE_DESKTOP_KEY_STARTUP_NOTIFY = G_KEY_FILE_DESKTOP_KEY_STARTUP_NOTIFY // 54

/// A key under `G_KEY_FILE_DESKTOP_GROUP`, whose value is string
/// identifying the WM class or name hint of a window that the application
/// will create, which can be used to emulate Startup Notification with
/// older applications.
public let KEY_FILE_DESKTOP_KEY_STARTUP_WM_CLASS = G_KEY_FILE_DESKTOP_KEY_STARTUP_WM_CLASS // 55

/// A key under `G_KEY_FILE_DESKTOP_GROUP`, whose value is a boolean
/// stating whether the program should be run in a terminal window.
/// It is only valid for desktop entries with the
/// `Application` type.
public let KEY_FILE_DESKTOP_KEY_TERMINAL = G_KEY_FILE_DESKTOP_KEY_TERMINAL // 56

/// A key under `G_KEY_FILE_DESKTOP_GROUP`, whose value is a string
/// giving the file name of a binary on disk used to determine if the
/// program is actually installed. It is only valid for desktop entries
/// with the `Application` type.
public let KEY_FILE_DESKTOP_KEY_TRY_EXEC = G_KEY_FILE_DESKTOP_KEY_TRY_EXEC // 57

/// A key under `G_KEY_FILE_DESKTOP_GROUP`, whose value is a string
/// giving the type of the desktop entry. Usually
/// `G_KEY_FILE_DESKTOP_TYPE_APPLICATION`,
/// `G_KEY_FILE_DESKTOP_TYPE_LINK`, or
/// `G_KEY_FILE_DESKTOP_TYPE_DIRECTORY`.
public let KEY_FILE_DESKTOP_KEY_TYPE = G_KEY_FILE_DESKTOP_KEY_TYPE // 58

/// A key under `G_KEY_FILE_DESKTOP_GROUP`, whose value is a string
/// giving the URL to access. It is only valid for desktop entries
/// with the `Link` type.
public let KEY_FILE_DESKTOP_KEY_URL = G_KEY_FILE_DESKTOP_KEY_URL // 59

/// A key under `G_KEY_FILE_DESKTOP_GROUP`, whose value is a string
/// giving the version of the Desktop Entry Specification used for
/// the desktop entry file.
public let KEY_FILE_DESKTOP_KEY_VERSION = G_KEY_FILE_DESKTOP_KEY_VERSION // 60

/// The value of the `G_KEY_FILE_DESKTOP_KEY_TYPE`, key for desktop
/// entries representing applications.
public let KEY_FILE_DESKTOP_TYPE_APPLICATION = G_KEY_FILE_DESKTOP_TYPE_APPLICATION // 61

/// The value of the `G_KEY_FILE_DESKTOP_KEY_TYPE`, key for desktop
/// entries representing directories.
public let KEY_FILE_DESKTOP_TYPE_DIRECTORY = G_KEY_FILE_DESKTOP_TYPE_DIRECTORY // 62

/// The value of the `G_KEY_FILE_DESKTOP_KEY_TYPE`, key for desktop
/// entries representing links to documents.
public let KEY_FILE_DESKTOP_TYPE_LINK = G_KEY_FILE_DESKTOP_TYPE_LINK // 63

/// Specifies one of the possible types of byte order.
/// See `G_BYTE_ORDER`.
public let LITTLE_ENDIAN = G_LITTLE_ENDIAN // 1234

/// The natural logarithm of 10.
public let LN10 = G_LN10 // 65

/// The natural logarithm of 2.
public let LN2 = G_LN2 // 66

/// Multiplying the base 2 exponent by this number yields the base 10 exponent.
public let LOG_2_BASE_10 = G_LOG_2_BASE_10 // 67

/// Defines the log domain. See [Log Domains](`log-domains`).
/// 
/// Libraries should define this so that any messages
/// which they log can be differentiated from messages from other
/// libraries and application code. But be careful not to define
/// it in any public header files.
/// 
/// Log domains must be unique, and it is recommended that they are the
/// application or library name, optionally followed by a hyphen and a sub-domain
/// name. For example, `bloatpad` or `bloatpad-io`.
/// 
/// If undefined, it defaults to the default `nil` (or `""`) log domain; this is
/// not advisable, as it cannot be filtered against using the `G_MESSAGES_DEBUG`
/// environment variable.
/// 
/// For example, GTK+ uses this in its `Makefile.am`:
/// ```
/// AM_CPPFLAGS = -DG_LOG_DOMAIN=\"Gtk\"
/// ```
/// 
/// Applications can choose to leave it as the default `nil` (or `""`)
/// domain. However, defining the domain offers the same advantages as
/// above.
public let LOG_DOMAIN = 0 // G_LOG_DOMAIN

/// GLib log levels that are considered fatal by default.
/// 
/// This is not used if structured logging is enabled; see
/// [Using Structured Logging](#using-structured-logging).
public let LOG_FATAL_MASK = 5 // G_LOG_FATAL_MASK

/// Log levels below 1&lt;&lt;G_LOG_LEVEL_USER_SHIFT are used by GLib.
/// Higher bits can be used for user-defined log levels.
public let LOG_LEVEL_USER_SHIFT = G_LOG_LEVEL_USER_SHIFT // 8

/// The major version number of the GLib library.
/// 
/// Like `glib_major_version`, but from the headers used at
/// application compile time, rather than from the library
/// linked against at application run time.
public let MAJOR_VERSION = GLIB_MAJOR_VERSION // 2

/// The maximum value which can be held in a `gint16`.
public let MAXINT16 = 32767 // G_MAXINT16

/// The maximum value which can be held in a `gint32`.
public let MAXINT32 = 2147483647 // G_MAXINT32

/// The maximum value which can be held in a `gint64`.
public let MAXINT64 = 9223372036854775807 // G_MAXINT64

/// The maximum value which can be held in a `gint8`.
public let MAXINT8 = 127 // G_MAXINT8

/// The maximum value which can be held in a `guint16`.
public let MAXUINT16 = 65535 // G_MAXUINT16

/// The maximum value which can be held in a `guint32`.
public let MAXUINT32 = 4294967295 // G_MAXUINT32

/// The maximum value which can be held in a `guint64`.
public let MAXUINT64 = 78 // G_MAXUINT64

/// The maximum value which can be held in a `guint8`.
public let MAXUINT8 = 255 // G_MAXUINT8

/// The micro version number of the GLib library.
/// 
/// Like `gtk_micro_version`, but from the headers used at
/// application compile time, rather than from the library
/// linked against at application run time.
public let MICRO_VERSION = GLIB_MICRO_VERSION // 7

/// The minimum value which can be held in a `gint16`.
public let MININT16 = G_MININT16 // -32768

/// The minimum value which can be held in a `gint32`.
public let MININT32 = G_MININT32 // -2147483648

/// The minimum value which can be held in a `gint64`.
public let MININT64 = -9223372036854775808 // G_MININT64

/// The minimum value which can be held in a `gint8`.
public let MININT8 = G_MININT8 // -128

/// The minor version number of the GLib library.
/// 
/// Like `gtk_minor_version`, but from the headers used at
/// application compile time, rather than from the library
/// linked against at application run time.
public let MINOR_VERSION = GLIB_MINOR_VERSION // 66

public let MODULE_SUFFIX = G_MODULE_SUFFIX // 86

/// If a long option in the main group has this name, it is not treated as a
/// regular option. Instead it collects all non-option arguments which would
/// otherwise be left in `argv`. The option must be of type
/// `G_OPTION_ARG_CALLBACK`, `G_OPTION_ARG_STRING_ARRAY`
/// or `G_OPTION_ARG_FILENAME_ARRAY`.
/// 
/// 
/// Using `G_OPTION_REMAINING` instead of simply scanning `argv`
/// for leftover arguments has the advantage that GOption takes care of
/// necessary encoding conversions for strings or filenames.
public let OPTION_REMAINING = G_OPTION_REMAINING // 87

/// Specifies one of the possible types of byte order
/// (currently unused). See `G_BYTE_ORDER`.
public let PDP_ENDIAN = G_PDP_ENDIAN // 3412

/// The value of pi (ratio of circle's circumference to its diameter).
public let PI = G_PI // 89

/// A format specifier that can be used in `printf()`-style format strings
/// when printing a `GPid`.
public let PID_FORMAT = G_PID_FORMAT // 90

/// Pi divided by 2.
public let PI_2 = G_PI_2 // 91

/// Pi divided by 4.
public let PI_4 = G_PI_4 // 92

/// A format specifier that can be used in `printf()`-style format strings
/// when printing the `fd` member of a `GPollFD`.
public let POLLFD_FORMAT = G_POLLFD_FORMAT // 93

/// Use this for default priority event sources.
/// 
/// In GLib this priority is used when adding timeout functions
/// with `g_timeout_add()`. In GDK this priority is used for events
/// from the X server.
public let PRIORITY_DEFAULT = G_PRIORITY_DEFAULT // 0

/// Use this for default priority idle functions.
/// 
/// In GLib this priority is used when adding idle functions with
/// `g_idle_add()`.
public let PRIORITY_DEFAULT_IDLE = G_PRIORITY_DEFAULT_IDLE // 200

/// Use this for high priority event sources.
/// 
/// It is not used within GLib or GTK+.
public let PRIORITY_HIGH = G_PRIORITY_HIGH // -100

/// Use this for high priority idle functions.
/// 
/// GTK+ uses `G_PRIORITY_HIGH_IDLE` + 10 for resizing operations,
/// and `G_PRIORITY_HIGH_IDLE` + 20 for redrawing operations. (This is
/// done to ensure that any pending resizes are processed before any
/// pending redraws, so that widgets are not redrawn twice unnecessarily.)
public let PRIORITY_HIGH_IDLE = G_PRIORITY_HIGH_IDLE // 100

/// Use this for very low priority background tasks.
/// 
/// It is not used within GLib or GTK+.
public let PRIORITY_LOW = G_PRIORITY_LOW // 300

/// The search path separator character.
/// This is ':' on UNIX machines and ';' under Windows.
public let SEARCHPATH_SEPARATOR = 58 // G_SEARCHPATH_SEPARATOR

/// The search path separator as a string.
/// This is ":" on UNIX machines and ";" under Windows.
public let SEARCHPATH_SEPARATOR_S = G_SEARCHPATH_SEPARATOR_S // 100

public let SIZEOF_LONG = GLIB_SIZEOF_LONG // 8

public let SIZEOF_SIZE_T = GLIB_SIZEOF_SIZE_T // 8

public let SIZEOF_SSIZE_T = GLIB_SIZEOF_SSIZE_T // 8

public let SIZEOF_VOID_P = GLIB_SIZEOF_VOID_P // 8

/// Use this macro as the return value of a `GSourceFunc` to leave
/// the `GSource` in the main loop.
public let SOURCE_CONTINUE = G_SOURCE_CONTINUE // 105

/// Use this macro as the return value of a `GSourceFunc` to remove
/// the `GSource` from the main loop.
public let SOURCE_REMOVE = G_SOURCE_REMOVE // 106

/// The square root of two.
public let SQRT2 = G_SQRT2 // 107

/// The standard delimiters, used in `g_strdelimit()`.
public let STR_DELIMITERS = G_STR_DELIMITERS // 108

public let SYSDEF_AF_INET = GLIB_SYSDEF_AF_INET // 2

public let SYSDEF_AF_INET6 = GLIB_SYSDEF_AF_INET6 // 30

public let SYSDEF_AF_UNIX = GLIB_SYSDEF_AF_UNIX // 1

public let SYSDEF_MSG_DONTROUTE = GLIB_SYSDEF_MSG_DONTROUTE // 4

public let SYSDEF_MSG_OOB = GLIB_SYSDEF_MSG_OOB // 1

public let SYSDEF_MSG_PEEK = GLIB_SYSDEF_MSG_PEEK // 2

/// Creates a unique temporary directory for each unit test and uses
/// `g_set_user_dirs()` to set XDG directories to point into subdirectories of it
/// for the duration of the unit test. The directory tree is cleaned up after the
/// test finishes successfully. Note that this doesn’t take effect until
/// `g_test_run()` is called, so calls to (for example) `g_get_user_home_dir()` will
/// return the system-wide value when made in a test program’s `main()` function.
/// 
/// The following functions will return subdirectories of the temporary directory
/// when this option is used. The specific subdirectory paths in use are not
/// guaranteed to be stable API — always use a getter function to retrieve them.
/// 
///  - `g_get_home_dir()`
///  - `g_get_user_cache_dir()`
///  - `g_get_system_config_dirs()`
///  - `g_get_user_config_dir()`
///  - `g_get_system_data_dirs()`
///  - `g_get_user_data_dir()`
///  - `g_get_user_runtime_dir()`
/// 
/// The subdirectories may not be created by the test harness; as with normal
/// calls to functions like `g_get_user_cache_dir()`, the caller must be prepared
/// to create the directory if it doesn’t exist.
public let TEST_OPTION_ISOLATE_DIRS = G_TEST_OPTION_ISOLATE_DIRS // 115

/// Evaluates to a time span of one day.
public let TIME_SPAN_DAY = 86400000000 // G_TIME_SPAN_DAY

/// Evaluates to a time span of one hour.
public let TIME_SPAN_HOUR = 3600000000 // G_TIME_SPAN_HOUR

/// Evaluates to a time span of one millisecond.
public let TIME_SPAN_MILLISECOND = 1000 // G_TIME_SPAN_MILLISECOND

/// Evaluates to a time span of one minute.
public let TIME_SPAN_MINUTE = 60000000 // G_TIME_SPAN_MINUTE

/// Evaluates to a time span of one second.
public let TIME_SPAN_SECOND = 1000000 // G_TIME_SPAN_SECOND

/// The maximum length (in codepoints) of a compatibility or canonical
/// decomposition of a single Unicode character.
/// 
/// This is as defined by Unicode 6.1.
public let UNICHAR_MAX_DECOMPOSITION_LENGTH = G_UNICHAR_MAX_DECOMPOSITION_LENGTH // 18

/// Generic delimiters characters as defined in
/// [RFC 3986](https://tools.ietf.org/html/rfc3986). Includes `:/?#[]@`.
public let URI_RESERVED_CHARS_GENERIC_DELIMITERS = G_URI_RESERVED_CHARS_GENERIC_DELIMITERS // 122

/// Subcomponent delimiter characters as defined in
/// [RFC 3986](https://tools.ietf.org/html/rfc3986). Includes `!$&'()*+,;=`.
public let URI_RESERVED_CHARS_SUBCOMPONENT_DELIMITERS = G_URI_RESERVED_CHARS_SUBCOMPONENT_DELIMITERS // 123

/// Number of microseconds in one second (1 million).
/// This macro is provided for code readability.
public let USEC_PER_SEC = G_USEC_PER_SEC // 1000000

public let VA_COPY_AS_ARRAY = G_VA_COPY_AS_ARRAY // 1

/// A macro that should be defined by the user prior to including
/// the glib.h header.
/// The definition should be one of the predefined GLib version
/// macros: `GLIB_VERSION_2_26`, `GLIB_VERSION_2_28`,...
/// 
/// This macro defines the earliest version of GLib that the package is
/// required to be able to compile against.
/// 
/// If the compiler is configured to warn about the use of deprecated
/// functions, then using functions that were deprecated in version
/// `GLIB_VERSION_MIN_REQUIRED` or earlier will cause warnings (but
/// using functions deprecated in later releases will not).
public let VERSION_MIN_REQUIRED = 2 // GLIB_VERSION_MIN_REQUIRED

public let WIN32_MSG_HANDLE = 19981206 // G_WIN32_MSG_HANDLE
