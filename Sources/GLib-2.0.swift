private func cast<S, T>(_ param: UnsafeMutablePointer<S>?) -> UnsafeMutablePointer<T>! {
    return UnsafeMutablePointer<T>(param)
}

private func cast<S, T>(_ param: UnsafeMutablePointer<S>?) -> UnsafePointer<T>! {
    return UnsafePointer<T>(param)
}

private func cast<S, T>(_ param: UnsafePointer<S>?) -> UnsafePointer<T>! {
    return UnsafePointer<T>(param)
}

private func cast<T>(_ param: OpaquePointer?) -> UnsafeMutablePointer<T>! {
    return UnsafeMutablePointer<T>(param)
}

private func cast<T>(_ param: OpaquePointer?) -> UnsafePointer<T>! {
    return UnsafePointer<T>(param)
}

private func cast<S, T>(_ param: UnsafePointer<S>?) -> UnsafeMutablePointer<T>! {
    return UnsafeMutablePointer<T>(param)
}

private func cast<T>(_ param: UnsafePointer<T>?) -> OpaquePointer! {
    return OpaquePointer(param)
}

private func cast<T>(_ param: UnsafeMutablePointer<T>?) -> OpaquePointer! {
    return OpaquePointer(param)
}

private extension gboolean {
    private init(_ b: Bool) { self = b ? gboolean(1) : gboolean(0) }
}

private func asStringArray(_ param: UnsafePointer<UnsafePointer<CChar>?>) -> [String] {
    var ptr = param
    var rv = [String]()
    while ptr.pointee != nil {
        rv.append(String(cString: ptr.pointee!))
        ptr = ptr.successor()
    }
    return rv
}

private func asStringArray<T>(_ param: UnsafePointer<UnsafePointer<CChar>?>, release: ((UnsafePointer<T>?) -> Void)) -> [String] {
    let rv = asStringArray(param)
    release(UnsafePointer<T>(param))
    return rv
}


import CGLib

// The following three declarations are invalid in the .gir XML file:

public let G_MININT16: Int16 = -32768
public let G_MININT32: Int32 = -2147483648
public let G_MININT8: Int8 = -128
public let G_SOURCE_CONTINUE: gboolean = 1

// export the following aliases as part of GLib (vs CGLib)

public typealias CompareDataFunc = GCompareDataFunc
public typealias CompareFunc = GCompareFunc
public typealias HookCheckMarshaller = GHookCheckMarshaller
public typealias HookMarshaller = GHookMarshaller
public typealias IOFlags = GIOFlags
public typealias TraverseFlags = GTraverseFlags
public typealias OptionParseFunc = GOptionParseFunc
public typealias CopyFunc = GCopyFunc
public typealias Func = GFunc
public typealias HFunc = GHFunc
public typealias NodeForeachFunc = GNodeForeachFunc
public typealias NodeTraverseFunc = GNodeTraverseFunc
public typealias OptionErrorFunc = GOptionErrorFunc
public typealias PollFunc = GPollFunc
public typealias SequenceIterCompareFunc = GSequenceIterCompareFunc
public typealias SourceFunc = GSourceFunc
public typealias ThreadFunc = GThreadFunc
public typealias TranslateFunc = GTranslateFunc
public typealias TraverseFunc = GTraverseFunc
public typealias DestroyNotify = GDestroyNotify
public typealias RegexEvalCallback = GRegexEvalCallback
public typealias RegexMatchFlags = GRegexMatchFlags
public typealias IOCondition = GIOCondition
public typealias KeyFileFlags = GKeyFileFlags
public typealias HRFunc = GHRFunc
public typealias HashFunc = GHashFunc
public typealias EqualFunc = GEqualFunc
public typealias HookFindFunc = GHookFindFunc
public typealias HookCompareFunc = GHookCompareFunc
public typealias RegexCompileFlags = GRegexCompileFlags
public typealias MarkupParseFlags = GMarkupParseFlags

public typealias Array_autoptr = GArray_autoptr

public typealias AsyncQueue_autoptr = GAsyncQueue_autoptr

public typealias BookmarkFile_autoptr = GBookmarkFile_autoptr

public typealias ByteArray_autoptr = GByteArray_autoptr

public typealias Bytes_autoptr = GBytes_autoptr

public typealias Checksum_autoptr = GChecksum_autoptr

/// Integer representing a day of the month; between 1 and 31.
/// #G_DATE_BAD_DAY represents an invalid day of the month.
public typealias DateDay = GDateDay

public typealias DateTime_autoptr = GDateTime_autoptr

/// Integer representing a year; #G_DATE_BAD_YEAR is the invalid
/// value. The year must be 1 or higher; negative (BC) years are not
/// allowed. The year is represented with four digits.
public typealias DateYear = GDateYear

public typealias Dir_autoptr = GDir_autoptr

public typealias Error_autoptr = GError_autoptr

public typealias HashTable_autoptr = GHashTable_autoptr

public typealias Hmac_autoptr = GHmac_autoptr

public typealias IOChannel_autoptr = GIOChannel_autoptr

public typealias KeyFile_autoptr = GKeyFile_autoptr

public typealias List_autoptr = GList_autoptr

public typealias MainContext_autoptr = GMainContext_autoptr

public typealias MainLoop_autoptr = GMainLoop_autoptr

public typealias MappedFile_autoptr = GMappedFile_autoptr

public typealias MarkupParseContext_autoptr = GMarkupParseContext_autoptr

public typealias MatchInfo_autoptr = GMatchInfo_autoptr

/// Opaque type. See g_mutex_locker_new() for details.
public typealias MutexLocker = GMutexLocker

public typealias MutexLocker_autoptr = GMutexLocker_autoptr

public typealias Node_autoptr = GNode_autoptr

public typealias OptionContext_autoptr = GOptionContext_autoptr

public typealias OptionGroup_autoptr = GOptionGroup_autoptr

public typealias PatternSpec_autoptr = GPatternSpec_autoptr

/// A type which is used to hold a process identification.
/// 
/// On UNIX, processes are identified by a process id (an integer),
/// while Windows uses process handles (which are pointers).
/// 
/// GPid is used in GLib only for descendant processes spawned with
/// the g_spawn functions.
public typealias Pid = GPid

public typealias PtrArray_autoptr = GPtrArray_autoptr

/// A GQuark is a non-zero integer which uniquely identifies a
/// particular string. A GQuark value of zero is associated to %NULL.
public typealias Quark = GQuark

public typealias Queue_autoptr = GQueue_autoptr

public typealias Rand_autoptr = GRand_autoptr

public typealias Regex_autoptr = GRegex_autoptr

public typealias SList_autoptr = GSList_autoptr

public typealias Scanner_autoptr = GScanner_autoptr

public typealias Sequence_autoptr = GSequence_autoptr

public typealias Source_autoptr = GSource_autoptr

public typealias StringChunk_autoptr = GStringChunk_autoptr

public typealias Strv = GStrv

public typealias Thread_autoptr = GThread_autoptr

/// Simply a replacement for time_t. It has been deprecated
/// since it is not equivalent to time_t on 64-bit platforms
/// with a 64-bit time_t. Unrelated to #GTimer.
/// 
/// Note that #GTime is defined to always be a 32-bit integer,
/// unlike time_t which may be 64-bit on some systems. Therefore,
/// #GTime will overflow in the year 2038, and you cannot use the
/// address of a #GTime variable as argument to the UNIX time()
/// function.
/// 
/// Instead, do the following:
/// |[<!-- language="C" -->
/// time_t ttime;
/// GTime gtime;
/// 
/// time (&ttime);
/// gtime = (GTime)ttime;
/// ]|
public typealias Time = GTime

/// A value representing an interval of time, in microseconds.
public typealias TimeSpan = GTimeSpan

public typealias TimeZone_autoptr = GTimeZone_autoptr

public typealias Timer_autoptr = GTimer_autoptr

public typealias Tree_autoptr = GTree_autoptr

public typealias Type_ = GType

public typealias VariantBuilder_autoptr = GVariantBuilder_autoptr

public typealias VariantDict_autoptr = GVariantDict_autoptr

public typealias VariantIter_autoptr = GVariantIter_autoptr

public typealias VariantType_autoptr = GVariantType_autoptr

public typealias Variant_autoptr = GVariant_autoptr
public let ANALYZER_ANALYZING = G_ANALYZER_ANALYZING /* gint 1 */

/// A good size for a buffer to be passed into g_ascii_dtostr().
/// It is guaranteed to be enough for all output of that function
/// on systems with 64bit IEEE-compatible doubles.
/// 
/// The typical usage would be something like:
/// |[<!-- language="C" -->
///   char buf[G_ASCII_DTOSTR_BUF_SIZE];
/// 
///   fprintf (out, "value=%s\n", g_ascii_dtostr (buf, sizeof (buf), value));
/// ]|
public let ASCII_DTOSTR_BUF_SIZE: CInt = 39 /* G_ASCII_DTOSTR_BUF_SIZE */

/// Specifies one of the possible types of byte order.
/// See #G_BYTE_ORDER.
public let BIG_ENDIAN = G_BIG_ENDIAN /* gint 4321 */

public let CAN_INLINE = G_CAN_INLINE /* gint 1 */

/// The set of uppercase ASCII alphabet characters.
/// Used for specifying valid identifier characters
/// in #GScannerConfig.
public let CSET_A_2_Z = G_CSET_A_2_Z /* utf8 4 */

/// The set of ASCII digits.
/// Used for specifying valid identifier characters
/// in #GScannerConfig.
public let CSET_DIGITS = G_CSET_DIGITS /* utf8 123456789 */

/// The set of lowercase ASCII alphabet characters.
/// Used for specifying valid identifier characters
/// in #GScannerConfig.
public let CSET_a_2_z = G_CSET_a_2_z /* utf8 6 */

/// A bitmask that restricts the possible flags passed to
/// g_datalist_set_flags(). Passing a flags value where
/// flags & ~G_DATALIST_FLAGS_MASK != 0 is an error.
public let DATALIST_FLAGS_MASK = G_DATALIST_FLAGS_MASK /* gint 3 */

/// Represents an invalid #GDateDay.
public let DATE_BAD_DAY = G_DATE_BAD_DAY /* gint 0 */

/// Represents an invalid Julian day number.
public let DATE_BAD_JULIAN = G_DATE_BAD_JULIAN /* gint 0 */

/// Represents an invalid year.
public let DATE_BAD_YEAR = G_DATE_BAD_YEAR /* gint 0 */

/// The directory separator character.
/// This is '/' on UNIX machines and '\' under Windows.
public let DIR_SEPARATOR: CInt = 92 /* G_DIR_SEPARATOR */

/// The directory separator as a string.
/// This is "/" on UNIX machines and "\" under Windows.
public let DIR_SEPARATOR_S = G_DIR_SEPARATOR_S /* utf8 12 */

/// The base of natural logarithms.
public let E = G_E /* gdouble 13 */

/// This is the platform dependent conversion specifier for scanning and
/// printing values of type #gint16. It is a string literal, but doesn't
/// include the percent-sign, such that you can add precision and length
/// modifiers between percent-sign and conversion specifier.
/// 
/// |[<!-- language="C" -->
/// gint16 in;
/// gint32 out;
/// sscanf ("42", "%" G_GINT16_FORMAT, &in)
/// out = in * 1000;
/// g_print ("%" G_GINT32_FORMAT, out);
/// ]|
public let GINT16_FORMAT = G_GINT16_FORMAT /* utf8 14 */

/// The platform dependent length modifier for conversion specifiers
/// for scanning and printing values of type #gint16 or #guint16. It
/// is a string literal, but doesn't include the percent-sign, such
/// that you can add precision and length modifiers between percent-sign
/// and conversion specifier and append a conversion specifier.
/// 
/// The following example prints "0x7b";
/// |[<!-- language="C" -->
/// gint16 value = 123;
/// g_print ("%#" G_GINT16_MODIFIER "x", value);
/// ]|
public let GINT16_MODIFIER = G_GINT16_MODIFIER /* utf8 15 */

/// This is the platform dependent conversion specifier for scanning
/// and printing values of type #gint32. See also #G_GINT16_FORMAT.
public let GINT32_FORMAT = G_GINT32_FORMAT /* utf8 16 */

/// The platform dependent length modifier for conversion specifiers
/// for scanning and printing values of type #gint32 or #guint32. It
/// is a string literal. See also #G_GINT16_MODIFIER.
public let GINT32_MODIFIER = G_GINT32_MODIFIER /* utf8 17 */

/// This is the platform dependent conversion specifier for scanning
/// and printing values of type #gint64. See also #G_GINT16_FORMAT.
/// 
/// Some platforms do not support scanning and printing 64-bit integers,
/// even though the types are supported. On such platforms %G_GINT64_FORMAT
/// is not defined. Note that scanf() may not support 64-bit integers, even
/// if %G_GINT64_FORMAT is defined. Due to its weak error handling, scanf()
/// is not recommended for parsing anyway; consider using g_ascii_strtoull()
/// instead.
public let GINT64_FORMAT = G_GINT64_FORMAT /* utf8 18 */

/// The platform dependent length modifier for conversion specifiers
/// for scanning and printing values of type #gint64 or #guint64.
/// It is a string literal.
/// 
/// Some platforms do not support printing 64-bit integers, even
/// though the types are supported. On such platforms %G_GINT64_MODIFIER
/// is not defined.
public let GINT64_MODIFIER = G_GINT64_MODIFIER /* utf8 19 */

/// This is the platform dependent conversion specifier for scanning
/// and printing values of type #gintptr.
public let GINTPTR_FORMAT = G_GINTPTR_FORMAT /* utf8 20 */

/// The platform dependent length modifier for conversion specifiers
/// for scanning and printing values of type #gintptr or #guintptr.
/// It is a string literal.
public let GINTPTR_MODIFIER = G_GINTPTR_MODIFIER /* utf8 21 */

/// Expands to "" on all modern compilers, and to  __FUNCTION__ on gcc
/// version 2.x. Don't use it.
///
/// **GNUC_FUNCTION is deprecated:**
/// Use G_STRFUNC() instead
public let GNUC_FUNCTION = G_GNUC_FUNCTION /* utf8 22 */

/// Expands to "" on all modern compilers, and to __PRETTY_FUNCTION__
/// on gcc version 2.x. Don't use it.
///
/// **GNUC_PRETTY_FUNCTION is deprecated:**
/// Use G_STRFUNC() instead
public let GNUC_PRETTY_FUNCTION = G_GNUC_PRETTY_FUNCTION /* utf8 23 */

/// This is the platform dependent conversion specifier for scanning
/// and printing values of type #gsize. See also #G_GINT16_FORMAT.
public let GSIZE_FORMAT = G_GSIZE_FORMAT /* utf8 24 */

/// The platform dependent length modifier for conversion specifiers
/// for scanning and printing values of type #gsize. It
/// is a string literal.
public let GSIZE_MODIFIER = G_GSIZE_MODIFIER /* utf8 25 */

/// This is the platform dependent conversion specifier for scanning
/// and printing values of type #gssize. See also #G_GINT16_FORMAT.
public let GSSIZE_FORMAT = G_GSSIZE_FORMAT /* utf8 26 */

/// The platform dependent length modifier for conversion specifiers
/// for scanning and printing values of type #gssize. It
/// is a string literal.
public let GSSIZE_MODIFIER = G_GSSIZE_MODIFIER /* utf8 27 */

/// This is the platform dependent conversion specifier for scanning
/// and printing values of type #guint16. See also #G_GINT16_FORMAT
public let GUINT16_FORMAT = G_GUINT16_FORMAT /* utf8 28 */

/// This is the platform dependent conversion specifier for scanning
/// and printing values of type #guint32. See also #G_GINT16_FORMAT.
public let GUINT32_FORMAT = G_GUINT32_FORMAT /* utf8 29 */

/// This is the platform dependent conversion specifier for scanning
/// and printing values of type #guint64. See also #G_GINT16_FORMAT.
/// 
/// Some platforms do not support scanning and printing 64-bit integers,
/// even though the types are supported. On such platforms %G_GUINT64_FORMAT
/// is not defined.  Note that scanf() may not support 64-bit integers, even
/// if %G_GINT64_FORMAT is defined. Due to its weak error handling, scanf()
/// is not recommended for parsing anyway; consider using g_ascii_strtoull()
/// instead.
public let GUINT64_FORMAT = G_GUINT64_FORMAT /* utf8 30 */

/// This is the platform dependent conversion specifier
/// for scanning and printing values of type #guintptr.
public let GUINTPTR_FORMAT = G_GUINTPTR_FORMAT /* utf8 31 */

public let HAVE_GINT64 = G_HAVE_GINT64 /* gint 1 */

public let HAVE_GNUC_VARARGS = G_HAVE_GNUC_VARARGS /* gint 1 */

public let HAVE_GROWING_STACK = G_HAVE_GROWING_STACK /* gint 1 */

public let HAVE_INLINE = G_HAVE_INLINE /* gint 1 */

public let HAVE_ISO_VARARGS = G_HAVE_ISO_VARARGS /* gint 1 */

public let HAVE___INLINE = G_HAVE___INLINE /* gint 1 */

public let HAVE___INLINE__ = G_HAVE___INLINE__ /* gint 1 */

/// The position of the first bit which is not reserved for internal
/// use be the #GHook implementation, i.e.
/// `1 << G_HOOK_FLAG_USER_SHIFT` is the first
/// bit which can be used for application-defined flags.
public let HOOK_FLAG_USER_SHIFT = G_HOOK_FLAG_USER_SHIFT /* gint 4 */

/// The bias by which exponents in double-precision floats are offset.
public let IEEE754_DOUBLE_BIAS = G_IEEE754_DOUBLE_BIAS /* gint 1023 */

/// The bias by which exponents in single-precision floats are offset.
public let IEEE754_FLOAT_BIAS = G_IEEE754_FLOAT_BIAS /* gint 127 */

/// The name of the main group of a desktop entry file, as defined in the
/// [Desktop Entry Specification](http://freedesktop.org/Standards/desktop-entry-spec).
/// Consult the specification for more
/// details about the meanings of the keys below.
public let KEY_FILE_DESKTOP_GROUP = G_KEY_FILE_DESKTOP_GROUP /* utf8 42 */

/// A key under #G_KEY_FILE_DESKTOP_GROUP, whose value is a string list
/// giving the available application actions.
public let KEY_FILE_DESKTOP_KEY_ACTIONS = G_KEY_FILE_DESKTOP_KEY_ACTIONS /* utf8 43 */

/// A key under #G_KEY_FILE_DESKTOP_GROUP, whose value is a list
/// of strings giving the categories in which the desktop entry
/// should be shown in a menu.
public let KEY_FILE_DESKTOP_KEY_CATEGORIES = G_KEY_FILE_DESKTOP_KEY_CATEGORIES /* utf8 44 */

/// A key under #G_KEY_FILE_DESKTOP_GROUP, whose value is a localized
/// string giving the tooltip for the desktop entry.
public let KEY_FILE_DESKTOP_KEY_COMMENT = G_KEY_FILE_DESKTOP_KEY_COMMENT /* utf8 45 */

/// A key under #G_KEY_FILE_DESKTOP_GROUP, whose value is a boolean set to true
/// if the application is D-Bus activatable.
public let KEY_FILE_DESKTOP_KEY_DBUS_ACTIVATABLE = G_KEY_FILE_DESKTOP_KEY_DBUS_ACTIVATABLE /* utf8 46 */

/// A key under #G_KEY_FILE_DESKTOP_GROUP, whose value is a string
/// giving the command line to execute. It is only valid for desktop
/// entries with the `Application` type.
public let KEY_FILE_DESKTOP_KEY_EXEC = G_KEY_FILE_DESKTOP_KEY_EXEC /* utf8 47 */

/// A key under #G_KEY_FILE_DESKTOP_GROUP, whose value is a localized
/// string giving the generic name of the desktop entry.
public let KEY_FILE_DESKTOP_KEY_GENERIC_NAME = G_KEY_FILE_DESKTOP_KEY_GENERIC_NAME /* utf8 48 */

/// A key under #G_KEY_FILE_DESKTOP_GROUP, whose value is a boolean
/// stating whether the desktop entry has been deleted by the user.
public let KEY_FILE_DESKTOP_KEY_HIDDEN = G_KEY_FILE_DESKTOP_KEY_HIDDEN /* utf8 49 */

/// A key under #G_KEY_FILE_DESKTOP_GROUP, whose value is a localized
/// string giving the name of the icon to be displayed for the desktop
/// entry.
public let KEY_FILE_DESKTOP_KEY_ICON = G_KEY_FILE_DESKTOP_KEY_ICON /* utf8 50 */

/// A key under #G_KEY_FILE_DESKTOP_GROUP, whose value is a list
/// of strings giving the MIME types supported by this desktop entry.
public let KEY_FILE_DESKTOP_KEY_MIME_TYPE = G_KEY_FILE_DESKTOP_KEY_MIME_TYPE /* utf8 51 */

/// A key under #G_KEY_FILE_DESKTOP_GROUP, whose value is a localized
/// string giving the specific name of the desktop entry.
public let KEY_FILE_DESKTOP_KEY_NAME = G_KEY_FILE_DESKTOP_KEY_NAME /* utf8 52 */

/// A key under #G_KEY_FILE_DESKTOP_GROUP, whose value is a list of
/// strings identifying the environments that should not display the
/// desktop entry.
public let KEY_FILE_DESKTOP_KEY_NOT_SHOW_IN = G_KEY_FILE_DESKTOP_KEY_NOT_SHOW_IN /* utf8 53 */

/// A key under #G_KEY_FILE_DESKTOP_GROUP, whose value is a boolean
/// stating whether the desktop entry should be shown in menus.
public let KEY_FILE_DESKTOP_KEY_NO_DISPLAY = G_KEY_FILE_DESKTOP_KEY_NO_DISPLAY /* utf8 54 */

/// A key under #G_KEY_FILE_DESKTOP_GROUP, whose value is a list of
/// strings identifying the environments that should display the
/// desktop entry.
public let KEY_FILE_DESKTOP_KEY_ONLY_SHOW_IN = G_KEY_FILE_DESKTOP_KEY_ONLY_SHOW_IN /* utf8 55 */

/// A key under #G_KEY_FILE_DESKTOP_GROUP, whose value is a string
/// containing the working directory to run the program in. It is only
/// valid for desktop entries with the `Application` type.
public let KEY_FILE_DESKTOP_KEY_PATH = G_KEY_FILE_DESKTOP_KEY_PATH /* utf8 56 */

/// A key under #G_KEY_FILE_DESKTOP_GROUP, whose value is a boolean
/// stating whether the application supports the
/// [Startup Notification Protocol Specification](http://www.freedesktop.org/Standards/startup-notification-spec).
public let KEY_FILE_DESKTOP_KEY_STARTUP_NOTIFY = G_KEY_FILE_DESKTOP_KEY_STARTUP_NOTIFY /* utf8 57 */

/// A key under #G_KEY_FILE_DESKTOP_GROUP, whose value is string
/// identifying the WM class or name hint of a window that the application
/// will create, which can be used to emulate Startup Notification with
/// older applications.
public let KEY_FILE_DESKTOP_KEY_STARTUP_WM_CLASS = G_KEY_FILE_DESKTOP_KEY_STARTUP_WM_CLASS /* utf8 58 */

/// A key under #G_KEY_FILE_DESKTOP_GROUP, whose value is a boolean
/// stating whether the program should be run in a terminal window.
/// It is only valid for desktop entries with the
/// `Application` type.
public let KEY_FILE_DESKTOP_KEY_TERMINAL = G_KEY_FILE_DESKTOP_KEY_TERMINAL /* utf8 59 */

/// A key under #G_KEY_FILE_DESKTOP_GROUP, whose value is a string
/// giving the file name of a binary on disk used to determine if the
/// program is actually installed. It is only valid for desktop entries
/// with the `Application` type.
public let KEY_FILE_DESKTOP_KEY_TRY_EXEC = G_KEY_FILE_DESKTOP_KEY_TRY_EXEC /* utf8 60 */

/// A key under #G_KEY_FILE_DESKTOP_GROUP, whose value is a string
/// giving the type of the desktop entry. Usually
/// #G_KEY_FILE_DESKTOP_TYPE_APPLICATION,
/// #G_KEY_FILE_DESKTOP_TYPE_LINK, or
/// #G_KEY_FILE_DESKTOP_TYPE_DIRECTORY.
public let KEY_FILE_DESKTOP_KEY_TYPE = G_KEY_FILE_DESKTOP_KEY_TYPE /* utf8 61 */

/// A key under #G_KEY_FILE_DESKTOP_GROUP, whose value is a string
/// giving the URL to access. It is only valid for desktop entries
/// with the `Link` type.
public let KEY_FILE_DESKTOP_KEY_URL = G_KEY_FILE_DESKTOP_KEY_URL /* utf8 62 */

/// A key under #G_KEY_FILE_DESKTOP_GROUP, whose value is a string
/// giving the version of the Desktop Entry Specification used for
/// the desktop entry file.
public let KEY_FILE_DESKTOP_KEY_VERSION = G_KEY_FILE_DESKTOP_KEY_VERSION /* utf8 63 */

/// The value of the #G_KEY_FILE_DESKTOP_KEY_TYPE, key for desktop
/// entries representing applications.
public let KEY_FILE_DESKTOP_TYPE_APPLICATION = G_KEY_FILE_DESKTOP_TYPE_APPLICATION /* utf8 64 */

/// The value of the #G_KEY_FILE_DESKTOP_KEY_TYPE, key for desktop
/// entries representing directories.
public let KEY_FILE_DESKTOP_TYPE_DIRECTORY = G_KEY_FILE_DESKTOP_TYPE_DIRECTORY /* utf8 65 */

/// The value of the #G_KEY_FILE_DESKTOP_KEY_TYPE, key for desktop
/// entries representing links to documents.
public let KEY_FILE_DESKTOP_TYPE_LINK = G_KEY_FILE_DESKTOP_TYPE_LINK /* utf8 66 */

/// Specifies one of the possible types of byte order.
/// See #G_BYTE_ORDER.
public let LITTLE_ENDIAN = G_LITTLE_ENDIAN /* gint 1234 */

/// The natural logarithm of 10.
public let LN10 = G_LN10 /* gdouble 68 */

/// The natural logarithm of 2.
public let LN2 = G_LN2 /* gdouble 69 */

/// Multiplying the base 2 exponent by this number yields the base 10 exponent.
public let LOG_2_BASE_10 = G_LOG_2_BASE_10 /* gdouble 70 */

/// Defines the log domain.
/// 
/// For applications, this is typically left as the default %NULL
/// (or "") domain. Libraries should define this so that any messages
/// which they log can be differentiated from messages from other
/// libraries and application code. But be careful not to define
/// it in any public header files.
/// 
/// For example, GTK+ uses this in its Makefile.am:
/// |[
/// AM_CPPFLAGS = -DG_LOG_DOMAIN=\"Gtk\"
/// ]|
public let LOG_DOMAIN: gchar = 0 /* G_LOG_DOMAIN */

/// GLib log levels that are considered fatal by default.
public let LOG_FATAL_MASK: CInt = 0 /* G_LOG_FATAL_MASK */

/// Log levels below 1<<G_LOG_LEVEL_USER_SHIFT are used by GLib.
/// Higher bits can be used for user-defined log levels.
public let LOG_LEVEL_USER_SHIFT = G_LOG_LEVEL_USER_SHIFT /* gint 8 */

/// The major version number of the GLib library.
/// 
/// Like #glib_major_version, but from the headers used at
/// application compile time, rather than from the library
/// linked against at application run time.
public let MAJOR_VERSION = GLIB_MAJOR_VERSION /* gint 2 */

/// The maximum value which can be held in a #gint16.
public let MAXINT16: Int16 = 32767 /* G_MAXINT16 */

/// The maximum value which can be held in a #gint32.
public let MAXINT32: Int32 = 2147483647 /* G_MAXINT32 */

/// The maximum value which can be held in a #gint64.
public let MAXINT64: Int64 = 9223372036854775807 /* G_MAXINT64 */

/// The maximum value which can be held in a #gint8.
public let MAXINT8: Int8 = 127 /* G_MAXINT8 */

/// The maximum value which can be held in a #guint16.
public let MAXUINT16: UInt16 = 65535 /* G_MAXUINT16 */

/// The maximum value which can be held in a #guint32.
public let MAXUINT32: UInt32 = 4294967295 /* G_MAXUINT32 */

/// The maximum value which can be held in a #guint64.
public let MAXUINT64: UInt64 = 81 /* G_MAXUINT64 */

/// The maximum value which can be held in a #guint8.
public let MAXUINT8: UInt8 = 255 /* G_MAXUINT8 */

/// The micro version number of the GLib library.
/// 
/// Like #gtk_micro_version, but from the headers used at
/// application compile time, rather than from the library
/// linked against at application run time.
public let MICRO_VERSION = GLIB_MICRO_VERSION /* gint 2 */

/// The minimum value which can be held in a #gint16.
public let MININT16 = G_MININT16 /* gint16 32768 */

/// The minimum value which can be held in a #gint32.
public let MININT32 = G_MININT32 /* gint32 2147483648 */

/// The minimum value which can be held in a #gint64.
public let MININT64: Int64 = -9223372036854775808 /* G_MININT64 */

/// The minimum value which can be held in a #gint8.
public let MININT8 = G_MININT8 /* gint8 128 */

/// The minor version number of the GLib library.
/// 
/// Like #gtk_minor_version, but from the headers used at
/// application compile time, rather than from the library
/// linked against at application run time.
public let MINOR_VERSION = GLIB_MINOR_VERSION /* gint 46 */

public let MODULE_SUFFIX = G_MODULE_SUFFIX /* utf8 89 */

/// If a long option in the main group has this name, it is not treated as a
/// regular option. Instead it collects all non-option arguments which would
/// otherwise be left in `argv`. The option must be of type
/// %G_OPTION_ARG_CALLBACK, %G_OPTION_ARG_STRING_ARRAY
/// or %G_OPTION_ARG_FILENAME_ARRAY.
/// 
/// 
/// Using #G_OPTION_REMAINING instead of simply scanning `argv`
/// for leftover arguments has the advantage that GOption takes care of
/// necessary encoding conversions for strings or filenames.
public let OPTION_REMAINING = G_OPTION_REMAINING /* utf8 90 */

/// Specifies one of the possible types of byte order
/// (currently unused). See #G_BYTE_ORDER.
public let PDP_ENDIAN = G_PDP_ENDIAN /* gint 3412 */

/// The value of pi (ratio of circle's circumference to its diameter).
public let PI = G_PI /* gdouble 92 */

/// Pi divided by 2.
public let PI_2 = G_PI_2 /* gdouble 93 */

/// Pi divided by 4.
public let PI_4 = G_PI_4 /* gdouble 94 */

/// A format specifier that can be used in printf()-style format strings
/// when printing the @fd member of a #GPollFD.
public let POLLFD_FORMAT = G_POLLFD_FORMAT /* utf8 95 */

/// Use this for default priority event sources.
/// 
/// In GLib this priority is used when adding timeout functions
/// with g_timeout_add(). In GDK this priority is used for events
/// from the X server.
public let PRIORITY_DEFAULT = G_PRIORITY_DEFAULT /* gint 0 */

/// Use this for default priority idle functions.
/// 
/// In GLib this priority is used when adding idle functions with
/// g_idle_add().
public let PRIORITY_DEFAULT_IDLE = G_PRIORITY_DEFAULT_IDLE /* gint 200 */

/// Use this for high priority event sources.
/// 
/// It is not used within GLib or GTK+.
public let PRIORITY_HIGH = G_PRIORITY_HIGH /* gint -100 */

/// Use this for high priority idle functions.
/// 
/// GTK+ uses #G_PRIORITY_HIGH_IDLE + 10 for resizing operations,
/// and #G_PRIORITY_HIGH_IDLE + 20 for redrawing operations. (This is
/// done to ensure that any pending resizes are processed before any
/// pending redraws, so that widgets are not redrawn twice unnecessarily.)
public let PRIORITY_HIGH_IDLE = G_PRIORITY_HIGH_IDLE /* gint 100 */

/// Use this for very low priority background tasks.
/// 
/// It is not used within GLib or GTK+.
public let PRIORITY_LOW = G_PRIORITY_LOW /* gint 300 */

/// The search path separator character.
/// This is ':' on UNIX machines and ';' under Windows.
public let SEARCHPATH_SEPARATOR: CInt = 59 /* G_SEARCHPATH_SEPARATOR */

/// The search path separator as a string.
/// This is ":" on UNIX machines and ";" under Windows.
public let SEARCHPATH_SEPARATOR_S = G_SEARCHPATH_SEPARATOR_S /* utf8 102 */

public let SIZEOF_LONG = GLIB_SIZEOF_LONG /* gint 8 */

public let SIZEOF_SIZE_T = GLIB_SIZEOF_SIZE_T /* gint 8 */

public let SIZEOF_SSIZE_T = GLIB_SIZEOF_SSIZE_T /* gint 8 */

public let SIZEOF_VOID_P = GLIB_SIZEOF_VOID_P /* gint 8 */

/// Use this macro as the return value of a #GSourceFunc to leave
/// the #GSource in the main loop.
public let SOURCE_CONTINUE = G_SOURCE_CONTINUE /* gboolean 107 */

/// Use this macro as the return value of a #GSourceFunc to remove
/// the #GSource from the main loop.
public let SOURCE_REMOVE = G_SOURCE_REMOVE /* gboolean 108 */

/// The square root of two.
public let SQRT2 = G_SQRT2 /* gdouble 109 */

/// The standard delimiters, used in g_strdelimit().
public let STR_DELIMITERS = G_STR_DELIMITERS /* utf8 110 */

public let SYSDEF_AF_INET = GLIB_SYSDEF_AF_INET /* gint 2 */

public let SYSDEF_AF_INET6 = GLIB_SYSDEF_AF_INET6 /* gint 30 */

public let SYSDEF_AF_UNIX = GLIB_SYSDEF_AF_UNIX /* gint 1 */

public let SYSDEF_MSG_DONTROUTE = GLIB_SYSDEF_MSG_DONTROUTE /* gint 4 */

public let SYSDEF_MSG_OOB = GLIB_SYSDEF_MSG_OOB /* gint 1 */

public let SYSDEF_MSG_PEEK = GLIB_SYSDEF_MSG_PEEK /* gint 2 */

/// Evaluates to a time span of one day.
public let TIME_SPAN_DAY: Int64 = 86400000000 /* G_TIME_SPAN_DAY */

/// Evaluates to a time span of one hour.
public let TIME_SPAN_HOUR: Int64 = 3600000000 /* G_TIME_SPAN_HOUR */

/// Evaluates to a time span of one millisecond.
public let TIME_SPAN_MILLISECOND: Int64 = 1000 /* G_TIME_SPAN_MILLISECOND */

/// Evaluates to a time span of one minute.
public let TIME_SPAN_MINUTE: Int64 = 60000000 /* G_TIME_SPAN_MINUTE */

/// Evaluates to a time span of one second.
public let TIME_SPAN_SECOND: Int64 = 1000000 /* G_TIME_SPAN_SECOND */

/// The maximum length (in codepoints) of a compatibility or canonical
/// decomposition of a single Unicode character.
/// 
/// This is as defined by Unicode 6.1.
public let UNICHAR_MAX_DECOMPOSITION_LENGTH = G_UNICHAR_MAX_DECOMPOSITION_LENGTH /* gint 18 */

/// Generic delimiters characters as defined in RFC 3986. Includes ":/?#[]@".
public let URI_RESERVED_CHARS_GENERIC_DELIMITERS = G_URI_RESERVED_CHARS_GENERIC_DELIMITERS /* utf8 123 */

/// Subcomponent delimiter characters as defined in RFC 3986. Includes "!$&'()*+,;=".
public let URI_RESERVED_CHARS_SUBCOMPONENT_DELIMITERS = G_URI_RESERVED_CHARS_SUBCOMPONENT_DELIMITERS /* utf8 124 */

/// Number of microseconds in one second (1 million).
/// This macro is provided for code readability.
public let USEC_PER_SEC = G_USEC_PER_SEC /* gint 1000000 */

public let VA_COPY_AS_ARRAY = G_VA_COPY_AS_ARRAY /* gint 1 */

/// A macro that should be defined by the user prior to including
/// the glib.h header.
/// The definition should be one of the predefined GLib version
/// macros: %GLIB_VERSION_2_26, %GLIB_VERSION_2_28,...
/// 
/// This macro defines the earliest version of GLib that the package is
/// required to be able to compile against.
/// 
/// If the compiler is configured to warn about the use of deprecated
/// functions, then using functions that were deprecated in version
/// %GLIB_VERSION_MIN_REQUIRED or earlier will cause warnings (but
/// using functions deprecated in later releases will not).
public let VERSION_MIN_REQUIRED: CInt = 2 /* GLIB_VERSION_MIN_REQUIRED */

public let WIN32_MSG_HANDLE: CInt = 19981206 /* G_WIN32_MSG_HANDLE */
/// Error codes returned by bookmark file parsing.
public typealias BookmarkFileError = GBookmarkFileError

public extension BookmarkFileError {
    /// URI was ill-formed
    public static let invalid_uri = G_BOOKMARK_FILE_ERROR_INVALID_URI /* 0 */
    /// a requested field was not found
    public static let invalid_value = G_BOOKMARK_FILE_ERROR_INVALID_VALUE /* 1 */
    /// a requested application did
    ///     not register a bookmark
    public static let app_not_registered = G_BOOKMARK_FILE_ERROR_APP_NOT_REGISTERED /* 2 */
    /// a requested URI was not found
    public static let uri_not_found = G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND /* 3 */
    /// document was ill formed
    public static let read = G_BOOKMARK_FILE_ERROR_READ /* 4 */
    /// the text being parsed was
    ///     in an unknown encoding
    public static let unknown_encoding = G_BOOKMARK_FILE_ERROR_UNKNOWN_ENCODING /* 5 */
    /// an error occurred while writing
    public static let write = G_BOOKMARK_FILE_ERROR_WRITE /* 6 */
    /// requested file was not found
    public static let file_not_found = G_BOOKMARK_FILE_ERROR_FILE_NOT_FOUND /* 7 */
}

/// The hashing algorithm to be used by #GChecksum when performing the
/// digest of some data.
/// 
/// Note that the #GChecksumType enumeration may be extended at a later
/// date to include new hashing algorithm types.
public typealias ChecksumType = GChecksumType

public extension ChecksumType {
    /// Use the MD5 hashing algorithm
    public static let md5 = G_CHECKSUM_MD5 /* 0 */
    /// Use the SHA-1 hashing algorithm
    public static let sha1 = G_CHECKSUM_SHA1 /* 1 */
    /// Use the SHA-256 hashing algorithm
    public static let sha256 = G_CHECKSUM_SHA256 /* 2 */
    /// Use the SHA-512 hashing algorithm
    public static let sha512 = G_CHECKSUM_SHA512 /* 3 */
}

/// Error codes returned by character set conversion routines.
public typealias ConvertError = GConvertError

public extension ConvertError {
    /// Conversion between the requested character
    ///     sets is not supported.
    public static let no_conversion = G_CONVERT_ERROR_NO_CONVERSION /* 0 */
    /// Invalid byte sequence in conversion input.
    public static let illegal_sequence = G_CONVERT_ERROR_ILLEGAL_SEQUENCE /* 1 */
    /// Conversion failed for some reason.
    public static let failed = G_CONVERT_ERROR_FAILED /* 2 */
    /// Partial character sequence at end of input.
    public static let partial_input = G_CONVERT_ERROR_PARTIAL_INPUT /* 3 */
    /// URI is invalid.
    public static let bad_uri = G_CONVERT_ERROR_BAD_URI /* 4 */
    /// Pathname is not an absolute path.
    public static let not_absolute_path = G_CONVERT_ERROR_NOT_ABSOLUTE_PATH /* 5 */
    /// No memory available. Since: 2.40
    public static let no_memory = G_CONVERT_ERROR_NO_MEMORY /* 6 */
}

/// This enumeration isn't used in the API, but may be useful if you need
/// to mark a number as a day, month, or year.
public typealias DateDMY = GDateDMY

public extension DateDMY {
    /// a day
    public static let day = G_DATE_DAY /* 0 */
    /// a month
    public static let month = G_DATE_MONTH /* 1 */
    /// a year
    public static let year = G_DATE_YEAR /* 2 */
}

/// Enumeration representing a month; values are #G_DATE_JANUARY,
/// #G_DATE_FEBRUARY, etc. #G_DATE_BAD_MONTH is the invalid value.
public typealias DateMonth = GDateMonth

public extension DateMonth {
    /// invalid value
    public static let bad_month = G_DATE_BAD_MONTH /* 0 */
    /// January
    public static let january = G_DATE_JANUARY /* 1 */
    /// February
    public static let february = G_DATE_FEBRUARY /* 2 */
    /// March
    public static let march = G_DATE_MARCH /* 3 */
    /// April
    public static let april = G_DATE_APRIL /* 4 */
    /// May
    public static let may = G_DATE_MAY /* 5 */
    /// June
    public static let june = G_DATE_JUNE /* 6 */
    /// July
    public static let july = G_DATE_JULY /* 7 */
    /// August
    public static let august = G_DATE_AUGUST /* 8 */
    /// September
    public static let september = G_DATE_SEPTEMBER /* 9 */
    /// October
    public static let october = G_DATE_OCTOBER /* 10 */
    /// November
    public static let november = G_DATE_NOVEMBER /* 11 */
    /// December
    public static let december = G_DATE_DECEMBER /* 12 */
}

/// Enumeration representing a day of the week; #G_DATE_MONDAY,
/// #G_DATE_TUESDAY, etc. #G_DATE_BAD_WEEKDAY is an invalid weekday.
public typealias DateWeekday = GDateWeekday

public extension DateWeekday {
    /// invalid value
    public static let bad_weekday = G_DATE_BAD_WEEKDAY /* 0 */
    /// Monday
    public static let monday = G_DATE_MONDAY /* 1 */
    /// Tuesday
    public static let tuesday = G_DATE_TUESDAY /* 2 */
    /// Wednesday
    public static let wednesday = G_DATE_WEDNESDAY /* 3 */
    /// Thursday
    public static let thursday = G_DATE_THURSDAY /* 4 */
    /// Friday
    public static let friday = G_DATE_FRIDAY /* 5 */
    /// Saturday
    public static let saturday = G_DATE_SATURDAY /* 6 */
    /// Sunday
    public static let sunday = G_DATE_SUNDAY /* 7 */
}

/// The possible errors, used in the @v_error field
/// of #GTokenValue, when the token is a %G_TOKEN_ERROR.
public typealias ErrorEnum = GErrorType

extension ErrorType: ErrorProtocol {
    /// unknown error
    public static let unknown = G_ERR_UNKNOWN /* 0 */
    /// unexpected end of file
    public static let unexp_eof = G_ERR_UNEXP_EOF /* 1 */
    /// unterminated string constant
    public static let unexp_eof_in_string = G_ERR_UNEXP_EOF_IN_STRING /* 2 */
    /// unterminated comment
    public static let unexp_eof_in_comment = G_ERR_UNEXP_EOF_IN_COMMENT /* 3 */
    /// non-digit character in a number
    public static let non_digit_in_const = G_ERR_NON_DIGIT_IN_CONST /* 4 */
    /// digit beyond radix in a number
    public static let digit_radix = G_ERR_DIGIT_RADIX /* 5 */
    /// non-decimal floating point number
    public static let float_radix = G_ERR_FLOAT_RADIX /* 6 */
    /// malformed floating point number
    public static let float_malformed = G_ERR_FLOAT_MALFORMED /* 7 */
}

/// Values corresponding to @errno codes returned from file operations
/// on UNIX. Unlike @errno codes, GFileError values are available on
/// all systems, even Windows. The exact meaning of each code depends
/// on what sort of file operation you were performing; the UNIX
/// documentation gives more details. The following error code descriptions
/// come from the GNU C Library manual, and are under the copyright
/// of that manual.
/// 
/// It's not very portable to make detailed assumptions about exactly
/// which errors will be returned from a given operation. Some errors
/// don't occur on some systems, etc., sometimes there are subtle
/// differences in when a system will report a given error, etc.
public typealias FileError = GFileError

public extension FileError {
    /// Operation not permitted; only the owner of
    ///     the file (or other resource) or processes with special privileges
    ///     can perform the operation.
    public static let exist = G_FILE_ERROR_EXIST /* 0 */
    /// File is a directory; you cannot open a directory
    ///     for writing, or create or remove hard links to it.
    public static let isdir = G_FILE_ERROR_ISDIR /* 1 */
    /// Permission denied; the file permissions do not
    ///     allow the attempted operation.
    public static let acces = G_FILE_ERROR_ACCES /* 2 */
    /// Filename too long.
    public static let nametoolong = G_FILE_ERROR_NAMETOOLONG /* 3 */
    /// No such file or directory. This is a "file
    ///     doesn't exist" error for ordinary files that are referenced in
    ///     contexts where they are expected to already exist.
    public static let noent = G_FILE_ERROR_NOENT /* 4 */
    /// A file that isn't a directory was specified when
    ///     a directory is required.
    public static let notdir = G_FILE_ERROR_NOTDIR /* 5 */
    /// No such device or address. The system tried to
    ///     use the device represented by a file you specified, and it
    ///     couldn't find the device. This can mean that the device file was
    ///     installed incorrectly, or that the physical device is missing or
    ///     not correctly attached to the computer.
    public static let nxio = G_FILE_ERROR_NXIO /* 6 */
    /// The underlying file system of the specified file
    ///     does not support memory mapping.
    public static let nodev = G_FILE_ERROR_NODEV /* 7 */
    /// The directory containing the new link can't be
    ///     modified because it's on a read-only file system.
    public static let rofs = G_FILE_ERROR_ROFS /* 8 */
    /// Text file busy.
    public static let txtbsy = G_FILE_ERROR_TXTBSY /* 9 */
    /// You passed in a pointer to bad memory.
    ///     (GLib won't reliably return this, don't pass in pointers to bad
    ///     memory.)
    public static let fault = G_FILE_ERROR_FAULT /* 10 */
    /// Too many levels of symbolic links were encountered
    ///     in looking up a file name. This often indicates a cycle of symbolic
    ///     links.
    public static let loop = G_FILE_ERROR_LOOP /* 11 */
    /// No space left on device; write operation on a
    ///     file failed because the disk is full.
    public static let nospc = G_FILE_ERROR_NOSPC /* 12 */
    /// No memory available. The system cannot allocate
    ///     more virtual memory because its capacity is full.
    public static let nomem = G_FILE_ERROR_NOMEM /* 13 */
    /// The current process has too many files open and
    ///     can't open any more. Duplicate descriptors do count toward this
    ///     limit.
    public static let mfile = G_FILE_ERROR_MFILE /* 14 */
    /// There are too many distinct file openings in the
    ///     entire system.
    public static let nfile = G_FILE_ERROR_NFILE /* 15 */
    /// Bad file descriptor; for example, I/O on a
    ///     descriptor that has been closed or reading from a descriptor open
    ///     only for writing (or vice versa).
    public static let badf = G_FILE_ERROR_BADF /* 16 */
    /// Invalid argument. This is used to indicate
    ///     various kinds of problems with passing the wrong argument to a
    ///     library function.
    public static let inval = G_FILE_ERROR_INVAL /* 17 */
    /// Broken pipe; there is no process reading from the
    ///     other end of a pipe. Every library function that returns this
    ///     error code also generates a 'SIGPIPE' signal; this signal
    ///     terminates the program if not handled or blocked. Thus, your
    ///     program will never actually see this code unless it has handled
    ///     or blocked 'SIGPIPE'.
    public static let pipe = G_FILE_ERROR_PIPE /* 18 */
    /// Resource temporarily unavailable; the call might
    ///     work if you try again later.
    public static let again = G_FILE_ERROR_AGAIN /* 19 */
    /// Interrupted function call; an asynchronous signal
    ///     occurred and prevented completion of the call. When this
    ///     happens, you should try the call again.
    public static let intr = G_FILE_ERROR_INTR /* 20 */
    /// Input/output error; usually used for physical read
    ///    or write errors. i.e. the disk or other physical device hardware
    ///    is returning errors.
    public static let io = G_FILE_ERROR_IO /* 21 */
    /// Operation not permitted; only the owner of the
    ///    file (or other resource) or processes with special privileges can
    ///    perform the operation.
    public static let perm = G_FILE_ERROR_PERM /* 22 */
    /// Function not implemented; this indicates that
    ///    the system is missing some functionality.
    public static let nosys = G_FILE_ERROR_NOSYS /* 23 */
    /// Does not correspond to a UNIX error code; this
    ///    is the standard "failed for unspecified reason" error code present
    ///    in all #GError error code enumerations. Returned if no specific
    ///    code applies.
    public static let failed = G_FILE_ERROR_FAILED /* 24 */
}

/// Error codes returned by #GIOChannel operations.
public typealias IOChannelError = GIOChannelError

public extension IOChannelError {
    /// File too large.
    public static let fbig = G_IO_CHANNEL_ERROR_FBIG /* 0 */
    /// Invalid argument.
    public static let inval = G_IO_CHANNEL_ERROR_INVAL /* 1 */
    /// IO error.
    public static let io = G_IO_CHANNEL_ERROR_IO /* 2 */
    /// File is a directory.
    public static let isdir = G_IO_CHANNEL_ERROR_ISDIR /* 3 */
    /// No space left on device.
    public static let nospc = G_IO_CHANNEL_ERROR_NOSPC /* 4 */
    /// No such device or address.
    public static let nxio = G_IO_CHANNEL_ERROR_NXIO /* 5 */
    /// Value too large for defined datatype.
    public static let overflow = G_IO_CHANNEL_ERROR_OVERFLOW /* 6 */
    /// Broken pipe.
    public static let pipe = G_IO_CHANNEL_ERROR_PIPE /* 7 */
    /// Some other error.
    public static let failed = G_IO_CHANNEL_ERROR_FAILED /* 8 */
}

/// #GIOError is only used by the deprecated functions
/// g_io_channel_read(), g_io_channel_write(), and g_io_channel_seek().
public typealias IOError = GIOError

public extension IOError {
    /// no error
    public static let none_ = G_IO_ERROR_NONE /* 0 */
    /// an EAGAIN error occurred
    public static let again = G_IO_ERROR_AGAIN /* 1 */
    /// an EINVAL error occurred
    public static let inval = G_IO_ERROR_INVAL /* 2 */
    /// another error occurred
    public static let unknown = G_IO_ERROR_UNKNOWN /* 3 */
}

/// Stati returned by most of the #GIOFuncs functions.
public typealias IOStatus = GIOStatus

public extension IOStatus {
    /// An error occurred.
    public static let error = G_IO_STATUS_ERROR /* 0 */
    /// Success.
    public static let normal = G_IO_STATUS_NORMAL /* 1 */
    /// End of file.
    public static let eof = G_IO_STATUS_EOF /* 2 */
    /// Resource temporarily unavailable.
    public static let again = G_IO_STATUS_AGAIN /* 3 */
}

/// Error codes returned by key file parsing.
public typealias KeyFileError = GKeyFileError

public extension KeyFileError {
    /// the text being parsed was in
    ///     an unknown encoding
    public static let unknown_encoding = G_KEY_FILE_ERROR_UNKNOWN_ENCODING /* 0 */
    /// document was ill-formed
    public static let parse = G_KEY_FILE_ERROR_PARSE /* 1 */
    /// the file was not found
    public static let not_found = G_KEY_FILE_ERROR_NOT_FOUND /* 2 */
    /// a requested key was not found
    public static let key_not_found = G_KEY_FILE_ERROR_KEY_NOT_FOUND /* 3 */
    /// a requested group was not found
    public static let group_not_found = G_KEY_FILE_ERROR_GROUP_NOT_FOUND /* 4 */
    /// a value could not be parsed
    public static let invalid_value = G_KEY_FILE_ERROR_INVALID_VALUE /* 5 */
}

/// Error codes returned by markup parsing.
public typealias MarkupError = GMarkupError

public extension MarkupError {
    /// text being parsed was not valid UTF-8
    public static let bad_utf8 = G_MARKUP_ERROR_BAD_UTF8 /* 0 */
    /// document contained nothing, or only whitespace
    public static let empty = G_MARKUP_ERROR_EMPTY /* 1 */
    /// document was ill-formed
    public static let parse = G_MARKUP_ERROR_PARSE /* 2 */
    /// error should be set by #GMarkupParser
    ///     functions; element wasn't known
    public static let unknown_element = G_MARKUP_ERROR_UNKNOWN_ELEMENT /* 3 */
    /// error should be set by #GMarkupParser
    ///     functions; attribute wasn't known
    public static let unknown_attribute = G_MARKUP_ERROR_UNKNOWN_ATTRIBUTE /* 4 */
    /// error should be set by #GMarkupParser
    ///     functions; content was invalid
    public static let invalid_content = G_MARKUP_ERROR_INVALID_CONTENT /* 5 */
    /// error should be set by #GMarkupParser
    ///     functions; a required attribute was missing
    public static let missing_attribute = G_MARKUP_ERROR_MISSING_ATTRIBUTE /* 6 */
}

/// Defines how a Unicode string is transformed in a canonical
/// form, standardizing such issues as whether a character with
/// an accent is represented as a base character and combining
/// accent or as a single precomposed character. Unicode strings
/// should generally be normalized before comparing them.
public typealias NormalizeMode = GNormalizeMode

public extension NormalizeMode {
    /// standardize differences that do not affect the
    ///     text content, such as the above-mentioned accent representation
    public static let default_ = G_NORMALIZE_DEFAULT /* 0 */
    /// another name for %G_NORMALIZE_DEFAULT
    public static let nfd = G_NORMALIZE_NFD /* 0 */
    /// like %G_NORMALIZE_DEFAULT, but with
    ///     composed forms rather than a maximally decomposed form
    public static let default_compose = G_NORMALIZE_DEFAULT_COMPOSE /* 1 */
    /// another name for %G_NORMALIZE_DEFAULT_COMPOSE
    public static let nfc = G_NORMALIZE_NFC /* 1 */
    /// beyond %G_NORMALIZE_DEFAULT also standardize the
    ///     "compatibility" characters in Unicode, such as SUPERSCRIPT THREE
    ///     to the standard forms (in this case DIGIT THREE). Formatting
    ///     information may be lost but for most text operations such
    ///     characters should be considered the same
    public static let all = G_NORMALIZE_ALL /* 2 */
    /// another name for %G_NORMALIZE_ALL
    public static let nfkd = G_NORMALIZE_NFKD /* 2 */
    /// like %G_NORMALIZE_ALL, but with composed
    ///     forms rather than a maximally decomposed form
    public static let all_compose = G_NORMALIZE_ALL_COMPOSE /* 3 */
    /// another name for %G_NORMALIZE_ALL_COMPOSE
    public static let nfkc = G_NORMALIZE_NFKC /* 3 */
}

/// The possible statuses of a one-time initialization function
/// controlled by a #GOnce struct.
public typealias OnceStatus = GOnceStatus

public extension OnceStatus {
    /// the function has not been called yet.
    public static let notcalled = G_ONCE_STATUS_NOTCALLED /* 0 */
    /// the function call is currently in progress.
    public static let progress = G_ONCE_STATUS_PROGRESS /* 1 */
    /// the function has been called.
    public static let ready = G_ONCE_STATUS_READY /* 2 */
}

/// The #GOptionArg enum values determine which type of extra argument the
/// options expect to find. If an option expects an extra argument, it can
/// be specified in several ways; with a short option: `-x arg`, with a long
/// option: `--name arg` or combined in a single argument: `--name=arg`.
public typealias OptionArg = GOptionArg

public extension OptionArg {
    /// No extra argument. This is useful for simple flags.
    public static let none_ = G_OPTION_ARG_NONE /* 0 */
    /// The option takes a string argument.
    public static let string = G_OPTION_ARG_STRING /* 1 */
    /// The option takes an integer argument.
    public static let CInt_ = G_OPTION_ARG_INT /* 2 */
    /// The option provides a callback (of type
    ///     #GOptionArgFunc) to parse the extra argument.
    public static let callback = G_OPTION_ARG_CALLBACK /* 3 */
    /// The option takes a filename as argument.
    public static let filename = G_OPTION_ARG_FILENAME /* 4 */
    /// The option takes a string argument, multiple
    ///     uses of the option are collected into an array of strings.
    public static let string_array = G_OPTION_ARG_STRING_ARRAY /* 5 */
    /// The option takes a filename as argument,
    ///     multiple uses of the option are collected into an array of strings.
    public static let filename_array = G_OPTION_ARG_FILENAME_ARRAY /* 6 */
    /// The option takes a double argument. The argument
    ///     can be formatted either for the user's locale or for the "C" locale.
    ///     Since 2.12
    public static let double = G_OPTION_ARG_DOUBLE /* 7 */
    /// The option takes a 64-bit integer. Like
    ///     %G_OPTION_ARG_INT but for larger numbers. The number can be in
    ///     decimal base, or in hexadecimal (when prefixed with `0x`, for
    ///     example, `0xffffffff`). Since 2.12
    public static let int64 = G_OPTION_ARG_INT64 /* 8 */
}

/// Error codes returned by option parsing.
public typealias OptionError = GOptionError

public extension OptionError {
    /// An option was not known to the parser.
    ///  This error will only be reported, if the parser hasn't been instructed
    ///  to ignore unknown options, see g_option_context_set_ignore_unknown_options().
    public static let unknown_option = G_OPTION_ERROR_UNKNOWN_OPTION /* 0 */
    /// A value couldn't be parsed.
    public static let bad_value = G_OPTION_ERROR_BAD_VALUE /* 1 */
    /// A #GOptionArgFunc callback failed.
    public static let failed = G_OPTION_ERROR_FAILED /* 2 */
}

/// Error codes returned by regular expressions functions.
public typealias RegexError = GRegexError

public extension RegexError {
    /// Compilation of the regular expression failed.
    public static let compile = G_REGEX_ERROR_COMPILE /* 0 */
    /// Optimization of the regular expression failed.
    public static let optimize = G_REGEX_ERROR_OPTIMIZE /* 1 */
    /// Replacement failed due to an ill-formed replacement
    ///     string.
    public static let replace = G_REGEX_ERROR_REPLACE /* 2 */
    /// The match process failed.
    public static let match = G_REGEX_ERROR_MATCH /* 3 */
    /// Internal error of the regular expression engine.
    ///     Since 2.16
    public static let internal_ = G_REGEX_ERROR_INTERNAL /* 4 */
    /// "\\" at end of pattern. Since 2.16
    public static let stray_backslash = G_REGEX_ERROR_STRAY_BACKSLASH /* 101 */
    /// "\\c" at end of pattern. Since 2.16
    public static let missing_control_char = G_REGEX_ERROR_MISSING_CONTROL_CHAR /* 102 */
    /// Unrecognized character follows "\\".
    ///     Since 2.16
    public static let unrecognized_escape = G_REGEX_ERROR_UNRECOGNIZED_ESCAPE /* 103 */
    /// Numbers out of order in "{}"
    ///     quantifier. Since 2.16
    public static let quantifiers_out_of_order = G_REGEX_ERROR_QUANTIFIERS_OUT_OF_ORDER /* 104 */
    /// Number too big in "{}" quantifier.
    ///     Since 2.16
    public static let quantifier_too_big = G_REGEX_ERROR_QUANTIFIER_TOO_BIG /* 105 */
    /// Missing terminating "]" for
    ///     character class. Since 2.16
    public static let unterminated_character_class = G_REGEX_ERROR_UNTERMINATED_CHARACTER_CLASS /* 106 */
    /// Invalid escape sequence
    ///     in character class. Since 2.16
    public static let invalid_escape_in_character_class = G_REGEX_ERROR_INVALID_ESCAPE_IN_CHARACTER_CLASS /* 107 */
    /// Range out of order in character class.
    ///     Since 2.16
    public static let range_out_of_order = G_REGEX_ERROR_RANGE_OUT_OF_ORDER /* 108 */
    /// Nothing to repeat. Since 2.16
    public static let nothing_to_repeat = G_REGEX_ERROR_NOTHING_TO_REPEAT /* 109 */
    /// Unrecognized character after "(?",
    ///     "(?&lt;" or "(?P". Since 2.16
    public static let unrecognized_character = G_REGEX_ERROR_UNRECOGNIZED_CHARACTER /* 112 */
    /// POSIX named classes are
    ///     supported only within a class. Since 2.16
    public static let posix_named_class_outside_class = G_REGEX_ERROR_POSIX_NAMED_CLASS_OUTSIDE_CLASS /* 113 */
    /// Missing terminating ")" or ")"
    ///     without opening "(". Since 2.16
    public static let unmatched_parenthesis = G_REGEX_ERROR_UNMATCHED_PARENTHESIS /* 114 */
    /// Reference to non-existent
    ///     subpattern. Since 2.16
    public static let inexistent_subpattern_reference = G_REGEX_ERROR_INEXISTENT_SUBPATTERN_REFERENCE /* 115 */
    /// Missing terminating ")" after comment.
    ///     Since 2.16
    public static let unterminated_comment = G_REGEX_ERROR_UNTERMINATED_COMMENT /* 118 */
    /// Regular expression too large.
    ///     Since 2.16
    public static let expression_too_large = G_REGEX_ERROR_EXPRESSION_TOO_LARGE /* 120 */
    /// Failed to get memory. Since 2.16
    public static let memory_error = G_REGEX_ERROR_MEMORY_ERROR /* 121 */
    /// Lookbehind assertion is not
    ///     fixed length. Since 2.16
    public static let variable_length_lookbehind = G_REGEX_ERROR_VARIABLE_LENGTH_LOOKBEHIND /* 125 */
    /// Malformed number or name after "(?(".
    ///     Since 2.16
    public static let malformed_condition = G_REGEX_ERROR_MALFORMED_CONDITION /* 126 */
    /// Conditional group contains
    ///     more than two branches. Since 2.16
    public static let too_many_conditional_branches = G_REGEX_ERROR_TOO_MANY_CONDITIONAL_BRANCHES /* 127 */
    /// Assertion expected after "(?(".
    ///     Since 2.16
    public static let assertion_expected = G_REGEX_ERROR_ASSERTION_EXPECTED /* 128 */
    /// Unknown POSIX class name.
    ///     Since 2.16
    public static let unknown_posix_class_name = G_REGEX_ERROR_UNKNOWN_POSIX_CLASS_NAME /* 130 */
    /// POSIX collating
    ///     elements are not supported. Since 2.16
    public static let posix_collating_elements_not_supported = G_REGEX_ERROR_POSIX_COLLATING_ELEMENTS_NOT_SUPPORTED /* 131 */
    /// Character value in "\\x{...}" sequence
    ///     is too large. Since 2.16
    public static let hex_code_too_large = G_REGEX_ERROR_HEX_CODE_TOO_LARGE /* 134 */
    /// Invalid condition "(?(0)". Since 2.16
    public static let invalid_condition = G_REGEX_ERROR_INVALID_CONDITION /* 135 */
    /// \\C not allowed in
    ///     lookbehind assertion. Since 2.16
    public static let single_byte_match_in_lookbehind = G_REGEX_ERROR_SINGLE_BYTE_MATCH_IN_LOOKBEHIND /* 136 */
    /// Recursive call could loop indefinitely.
    ///     Since 2.16
    public static let infinite_loop = G_REGEX_ERROR_INFINITE_LOOP /* 140 */
    /// Missing terminator
    ///     in subpattern name. Since 2.16
    public static let missing_subpattern_name_terminator = G_REGEX_ERROR_MISSING_SUBPATTERN_NAME_TERMINATOR /* 142 */
    /// Two named subpatterns have
    ///     the same name. Since 2.16
    public static let duplicate_subpattern_name = G_REGEX_ERROR_DUPLICATE_SUBPATTERN_NAME /* 143 */
    /// Malformed "\\P" or "\\p" sequence.
    ///     Since 2.16
    public static let malformed_property = G_REGEX_ERROR_MALFORMED_PROPERTY /* 146 */
    /// Unknown property name after "\\P" or
    ///     "\\p". Since 2.16
    public static let unknown_property = G_REGEX_ERROR_UNKNOWN_PROPERTY /* 147 */
    /// Subpattern name is too long
    ///     (maximum 32 characters). Since 2.16
    public static let subpattern_name_too_long = G_REGEX_ERROR_SUBPATTERN_NAME_TOO_LONG /* 148 */
    /// Too many named subpatterns (maximum
    ///     10,000). Since 2.16
    public static let too_many_subpatterns = G_REGEX_ERROR_TOO_MANY_SUBPATTERNS /* 149 */
    /// Octal value is greater than "\\377".
    ///     Since 2.16
    public static let invalid_octal_value = G_REGEX_ERROR_INVALID_OCTAL_VALUE /* 151 */
    /// "DEFINE" group contains more
    ///     than one branch. Since 2.16
    public static let too_many_branches_in_define = G_REGEX_ERROR_TOO_MANY_BRANCHES_IN_DEFINE /* 154 */
    /// Repeating a "DEFINE" group is not allowed.
    ///     This error is never raised. Since: 2.16 Deprecated: 2.34
    public static let define_repetion = G_REGEX_ERROR_DEFINE_REPETION /* 155 */
    /// Inconsistent newline options.
    ///     Since 2.16
    public static let inconsistent_newline_options = G_REGEX_ERROR_INCONSISTENT_NEWLINE_OPTIONS /* 156 */
    /// "\\g" is not followed by a braced,
    ///      angle-bracketed, or quoted name or number, or by a plain number. Since: 2.16
    public static let missing_back_reference = G_REGEX_ERROR_MISSING_BACK_REFERENCE /* 157 */
    /// relative reference must not be zero. Since: 2.34
    public static let invalid_relative_reference = G_REGEX_ERROR_INVALID_RELATIVE_REFERENCE /* 158 */
    /// the backtracing
    ///     control verb used does not allow an argument. Since: 2.34
    public static let backtracking_control_verb_argument_forbidden = G_REGEX_ERROR_BACKTRACKING_CONTROL_VERB_ARGUMENT_FORBIDDEN /* 159 */
    /// unknown backtracing
    ///     control verb. Since: 2.34
    public static let unknown_backtracking_control_verb = G_REGEX_ERROR_UNKNOWN_BACKTRACKING_CONTROL_VERB /* 160 */
    /// number is too big in escape sequence. Since: 2.34
    public static let number_too_big = G_REGEX_ERROR_NUMBER_TOO_BIG /* 161 */
    /// Missing subpattern name. Since: 2.34
    public static let missing_subpattern_name = G_REGEX_ERROR_MISSING_SUBPATTERN_NAME /* 162 */
    /// Missing digit. Since 2.34
    public static let missing_digit = G_REGEX_ERROR_MISSING_DIGIT /* 163 */
    /// In JavaScript compatibility mode,
    ///     "[" is an invalid data character. Since: 2.34
    public static let invalid_data_character = G_REGEX_ERROR_INVALID_DATA_CHARACTER /* 164 */
    /// different names for subpatterns of the
    ///     same number are not allowed. Since: 2.34
    public static let extra_subpattern_name = G_REGEX_ERROR_EXTRA_SUBPATTERN_NAME /* 165 */
    /// the backtracing control
    ///     verb requires an argument. Since: 2.34
    public static let backtracking_control_verb_argument_required = G_REGEX_ERROR_BACKTRACKING_CONTROL_VERB_ARGUMENT_REQUIRED /* 166 */
    /// "\\c" must be followed by an ASCII
    ///     character. Since: 2.34
    public static let invalid_control_char = G_REGEX_ERROR_INVALID_CONTROL_CHAR /* 168 */
    /// "\\k" is not followed by a braced, angle-bracketed, or
    ///     quoted name. Since: 2.34
    public static let missing_name = G_REGEX_ERROR_MISSING_NAME /* 169 */
    /// "\\N" is not supported in a class. Since: 2.34
    public static let not_supported_in_class = G_REGEX_ERROR_NOT_SUPPORTED_IN_CLASS /* 171 */
    /// too many forward references. Since: 2.34
    public static let too_many_forward_references = G_REGEX_ERROR_TOO_MANY_FORWARD_REFERENCES /* 172 */
    /// the name is too long in "(*MARK)", "(*PRUNE)",
    ///     "(*SKIP)", or "(*THEN)". Since: 2.34
    public static let name_too_long = G_REGEX_ERROR_NAME_TOO_LONG /* 175 */
    /// the character value in the \\u sequence is
    ///     too large. Since: 2.34
    public static let character_value_too_large = G_REGEX_ERROR_CHARACTER_VALUE_TOO_LARGE /* 176 */
}

/// An enumeration specifying the base position for a
/// g_io_channel_seek_position() operation.
public typealias SeekType = GSeekType

public extension SeekType {
    /// the current position in the file.
    public static let cur = G_SEEK_CUR /* 0 */
    /// the start of the file.
    public static let set_ = G_SEEK_SET /* 1 */
    /// the end of the file.
    public static let end = G_SEEK_END /* 2 */
}

/// Error codes returned by shell functions.
public typealias ShellError = GShellError

public extension ShellError {
    /// Mismatched or otherwise mangled quoting.
    public static let bad_quoting = G_SHELL_ERROR_BAD_QUOTING /* 0 */
    /// String to be parsed was empty.
    public static let empty_string = G_SHELL_ERROR_EMPTY_STRING /* 1 */
    /// Some other error.
    public static let failed = G_SHELL_ERROR_FAILED /* 2 */
}

public typealias SliceConfig = GSliceConfig

public extension SliceConfig {
    public static let always_malloc = G_SLICE_CONFIG_ALWAYS_MALLOC /* 1 */
    public static let bypass_magazines = G_SLICE_CONFIG_BYPASS_MAGAZINES /* 2 */
    public static let working_set_msecs = G_SLICE_CONFIG_WORKING_SET_MSECS /* 3 */
    public static let color_increment = G_SLICE_CONFIG_COLOR_INCREMENT /* 4 */
    public static let chunk_sizes = G_SLICE_CONFIG_CHUNK_SIZES /* 5 */
    public static let contention_counter = G_SLICE_CONFIG_CONTENTION_COUNTER /* 6 */
}

/// Error codes returned by spawning processes.
public typealias SpawnError = GSpawnError

public extension SpawnError {
    /// Fork failed due to lack of memory.
    public static let fork = G_SPAWN_ERROR_FORK /* 0 */
    /// Read or select on pipes failed.
    public static let read = G_SPAWN_ERROR_READ /* 1 */
    /// Changing to working directory failed.
    public static let chdir = G_SPAWN_ERROR_CHDIR /* 2 */
    /// execv() returned `EACCES`
    public static let acces = G_SPAWN_ERROR_ACCES /* 3 */
    /// execv() returned `EPERM`
    public static let perm = G_SPAWN_ERROR_PERM /* 4 */
    /// execv() returned `E2BIG`
    public static let too_big = G_SPAWN_ERROR_TOO_BIG /* 5 */
    /// deprecated alias for %G_SPAWN_ERROR_TOO_BIG
    public static let _2big = G_SPAWN_ERROR_2BIG /* 5 */
    /// execv() returned `ENOEXEC`
    public static let noexec = G_SPAWN_ERROR_NOEXEC /* 6 */
    /// execv() returned `ENAMETOOLONG`
    public static let nametoolong = G_SPAWN_ERROR_NAMETOOLONG /* 7 */
    /// execv() returned `ENOENT`
    public static let noent = G_SPAWN_ERROR_NOENT /* 8 */
    /// execv() returned `ENOMEM`
    public static let nomem = G_SPAWN_ERROR_NOMEM /* 9 */
    /// execv() returned `ENOTDIR`
    public static let notdir = G_SPAWN_ERROR_NOTDIR /* 10 */
    /// execv() returned `ELOOP`
    public static let loop = G_SPAWN_ERROR_LOOP /* 11 */
    /// execv() returned `ETXTBUSY`
    public static let txtbusy = G_SPAWN_ERROR_TXTBUSY /* 12 */
    /// execv() returned `EIO`
    public static let io = G_SPAWN_ERROR_IO /* 13 */
    /// execv() returned `ENFILE`
    public static let nfile = G_SPAWN_ERROR_NFILE /* 14 */
    /// execv() returned `EMFILE`
    public static let mfile = G_SPAWN_ERROR_MFILE /* 15 */
    /// execv() returned `EINVAL`
    public static let inval = G_SPAWN_ERROR_INVAL /* 16 */
    /// execv() returned `EISDIR`
    public static let isdir = G_SPAWN_ERROR_ISDIR /* 17 */
    /// execv() returned `ELIBBAD`
    public static let libbad = G_SPAWN_ERROR_LIBBAD /* 18 */
    /// Some other fatal failure,
    ///   `error->message` should explain.
    public static let failed = G_SPAWN_ERROR_FAILED /* 19 */
}

/// The type of file to return the filename for, when used with
/// g_test_build_filename().
/// 
/// These two options correspond rather directly to the 'dist' and
/// 'built' terminology that automake uses and are explicitly used to
/// distinguish between the 'srcdir' and 'builddir' being separate.  All
/// files in your project should either be dist (in the
/// `DIST_EXTRA` or `dist_schema_DATA`
/// sense, in which case they will always be in the srcdir) or built (in
/// the `BUILT_SOURCES` sense, in which case they will
/// always be in the builddir).
/// 
/// Note: as a general rule of automake, files that are generated only as
/// part of the build-from-git process (but then are distributed with the
/// tarball) always go in srcdir (even if doing a srcdir != builddir
/// build from git) and are considered as distributed files.
public typealias TestFileType = GTestFileType

public extension TestFileType {
    /// a file that was included in the distribution tarball
    public static let dist = G_TEST_DIST /* 0 */
    /// a file that was built on the compiling machine
    public static let built = G_TEST_BUILT /* 1 */
}

public typealias TestLogType = GTestLogType

public extension TestLogType {
    public static let none_ = G_TEST_LOG_NONE /* 0 */
    public static let error = G_TEST_LOG_ERROR /* 1 */
    public static let start_binary = G_TEST_LOG_START_BINARY /* 2 */
    public static let list_case = G_TEST_LOG_LIST_CASE /* 3 */
    public static let skip_case = G_TEST_LOG_SKIP_CASE /* 4 */
    public static let start_case = G_TEST_LOG_START_CASE /* 5 */
    public static let stop_case = G_TEST_LOG_STOP_CASE /* 6 */
    public static let min_result = G_TEST_LOG_MIN_RESULT /* 7 */
    public static let max_result = G_TEST_LOG_MAX_RESULT /* 8 */
    public static let message = G_TEST_LOG_MESSAGE /* 9 */
    public static let start_suite = G_TEST_LOG_START_SUITE /* 10 */
    public static let stop_suite = G_TEST_LOG_STOP_SUITE /* 11 */
}

/// Possible errors of thread related functions.
public typealias ThreadError = GThreadError

public extension ThreadError {
    /// a thread couldn't be created due to resource
    ///                        shortage. Try again later.
    public static let thread_error_again = G_THREAD_ERROR_AGAIN /* 0 */
}

/// Disambiguates a given time in two ways.
/// 
/// First, specifies if the given time is in universal or local time.
/// 
/// Second, if the time is in local time, specifies if it is local
/// standard time or local daylight time.  This is important for the case
/// where the same local time occurs twice (during daylight savings time
/// transitions, for example).
public typealias TimeType = GTimeType

public extension TimeType {
    /// the time is in local standard time
    public static let standard = G_TIME_TYPE_STANDARD /* 0 */
    /// the time is in local daylight time
    public static let daylight = G_TIME_TYPE_DAYLIGHT /* 1 */
    /// the time is in UTC
    public static let universal = G_TIME_TYPE_UNIVERSAL /* 2 */
}

/// The possible types of token returned from each
/// g_scanner_get_next_token() call.
public typealias TokenType = GTokenType

public extension TokenType {
    /// the end of the file
    public static let eof = G_TOKEN_EOF /* 0 */
    /// a '(' character
    public static let left_paren = G_TOKEN_LEFT_PAREN /* 40 */
    /// a ')' character
    public static let right_paren = G_TOKEN_RIGHT_PAREN /* 41 */
    /// a '{' character
    public static let left_curly = G_TOKEN_LEFT_CURLY /* 123 */
    /// a '}' character
    public static let right_curly = G_TOKEN_RIGHT_CURLY /* 125 */
    /// a '[' character
    public static let left_brace = G_TOKEN_LEFT_BRACE /* 91 */
    /// a ']' character
    public static let right_brace = G_TOKEN_RIGHT_BRACE /* 93 */
    /// a '=' character
    public static let equal_sign = G_TOKEN_EQUAL_SIGN /* 61 */
    /// a ',' character
    public static let comma = G_TOKEN_COMMA /* 44 */
    /// not a token
    public static let none_ = G_TOKEN_NONE /* 256 */
    /// an error occurred
    public static let error = G_TOKEN_ERROR /* 257 */
    /// a character
    public static let CChar = G_TOKEN_CHAR /* 258 */
    /// a binary integer
    public static let binary = G_TOKEN_BINARY /* 259 */
    /// an octal integer
    public static let octal = G_TOKEN_OCTAL /* 260 */
    /// an integer
    public static let CInt_ = G_TOKEN_INT /* 261 */
    /// a hex integer
    public static let hex = G_TOKEN_HEX /* 262 */
    /// a floating point number
    public static let float = G_TOKEN_FLOAT /* 263 */
    /// a string
    public static let string = G_TOKEN_STRING /* 264 */
    /// a symbol
    public static let symbol = G_TOKEN_SYMBOL /* 265 */
    /// an identifier
    public static let identifier = G_TOKEN_IDENTIFIER /* 266 */
    /// a null identifier
    public static let identifier_null = G_TOKEN_IDENTIFIER_NULL /* 267 */
    /// one line comment
    public static let comment_single = G_TOKEN_COMMENT_SINGLE /* 268 */
    /// multi line comment
    public static let comment_multi = G_TOKEN_COMMENT_MULTI /* 269 */
}

/// Specifies the type of traveral performed by g_tree_traverse(),
/// g_node_traverse() and g_node_find(). The different orders are
/// illustrated here:
/// - In order: A, B, C, D, E, F, G, H, I
///   ![](Sorted_binary_tree_inorder.svg)
/// - Pre order: F, B, A, D, C, E, G, I, H
///   ![](Sorted_binary_tree_preorder.svg)
/// - Post order: A, C, E, D, B, H, I, G, F
///   ![](Sorted_binary_tree_postorder.svg)
/// - Level order: F, B, G, A, D, I, C, E, H
///   ![](Sorted_binary_tree_breadth-first_traversal.svg)
public typealias TraverseType = GTraverseType

public extension TraverseType {
    /// vists a node's left child first, then the node itself,
    ///              then its right child. This is the one to use if you
    ///              want the output sorted according to the compare
    ///              function.
    public static let in_order = G_IN_ORDER /* 0 */
    /// visits a node, then its children.
    public static let pre_order = G_PRE_ORDER /* 1 */
    /// visits the node's children, then the node itself.
    public static let post_order = G_POST_ORDER /* 2 */
    /// is not implemented for
    ///              [balanced binary trees][glib-Balanced-Binary-Trees].
    ///              For [n-ary trees][glib-N-ary-Trees], it
    ///              vists the root node first, then its children, then
    ///              its grandchildren, and so on. Note that this is less
    ///              efficient than the other orders.
    public static let level_order = G_LEVEL_ORDER /* 3 */
}

/// These are the possible line break classifications.
/// 
/// Since new unicode versions may add new types here, applications should be ready
/// to handle unknown values. They may be regarded as %G_UNICODE_BREAK_UNKNOWN.
/// 
/// See <ulink url="http://www.unicode.org/unicode/reports/tr14/">http://www.unicode.org/unicode/reports/tr14/</ulink>.
public typealias UnicodeBreakType = GUnicodeBreakType

public extension UnicodeBreakType {
    /// Mandatory Break (BK)
    public static let mandatory = G_UNICODE_BREAK_MANDATORY /* 0 */
    /// Carriage Return (CR)
    public static let carriage_return = G_UNICODE_BREAK_CARRIAGE_RETURN /* 1 */
    /// Line Feed (LF)
    public static let line_feed = G_UNICODE_BREAK_LINE_FEED /* 2 */
    /// Attached Characters and Combining Marks (CM)
    public static let combining_mark = G_UNICODE_BREAK_COMBINING_MARK /* 3 */
    /// Surrogates (SG)
    public static let surrogate = G_UNICODE_BREAK_SURROGATE /* 4 */
    /// Zero Width Space (ZW)
    public static let zero_width_space = G_UNICODE_BREAK_ZERO_WIDTH_SPACE /* 5 */
    /// Inseparable (IN)
    public static let inseparable = G_UNICODE_BREAK_INSEPARABLE /* 6 */
    /// Non-breaking ("Glue") (GL)
    public static let non_breaking_glue = G_UNICODE_BREAK_NON_BREAKING_GLUE /* 7 */
    /// Contingent Break Opportunity (CB)
    public static let contingent = G_UNICODE_BREAK_CONTINGENT /* 8 */
    /// Space (SP)
    public static let space = G_UNICODE_BREAK_SPACE /* 9 */
    /// Break Opportunity After (BA)
    public static let after = G_UNICODE_BREAK_AFTER /* 10 */
    /// Break Opportunity Before (BB)
    public static let before = G_UNICODE_BREAK_BEFORE /* 11 */
    /// Break Opportunity Before and After (B2)
    public static let before_and_after = G_UNICODE_BREAK_BEFORE_AND_AFTER /* 12 */
    /// Hyphen (HY)
    public static let hyphen = G_UNICODE_BREAK_HYPHEN /* 13 */
    /// Nonstarter (NS)
    public static let non_starter = G_UNICODE_BREAK_NON_STARTER /* 14 */
    /// Opening Punctuation (OP)
    public static let open_punctuation = G_UNICODE_BREAK_OPEN_PUNCTUATION /* 15 */
    /// Closing Punctuation (CL)
    public static let close_punctuation = G_UNICODE_BREAK_CLOSE_PUNCTUATION /* 16 */
    /// Ambiguous Quotation (QU)
    public static let quotation = G_UNICODE_BREAK_QUOTATION /* 17 */
    /// Exclamation/Interrogation (EX)
    public static let exclamation = G_UNICODE_BREAK_EXCLAMATION /* 18 */
    /// Ideographic (ID)
    public static let ideographic = G_UNICODE_BREAK_IDEOGRAPHIC /* 19 */
    /// Numeric (NU)
    public static let numeric = G_UNICODE_BREAK_NUMERIC /* 20 */
    /// Infix Separator (Numeric) (IS)
    public static let infix_separator = G_UNICODE_BREAK_INFIX_SEPARATOR /* 21 */
    /// Symbols Allowing Break After (SY)
    public static let symbol = G_UNICODE_BREAK_SYMBOL /* 22 */
    /// Ordinary Alphabetic and Symbol Characters (AL)
    public static let alphabetic = G_UNICODE_BREAK_ALPHABETIC /* 23 */
    /// Prefix (Numeric) (PR)
    public static let prefix_ = G_UNICODE_BREAK_PREFIX /* 24 */
    /// Postfix (Numeric) (PO)
    public static let postfix_ = G_UNICODE_BREAK_POSTFIX /* 25 */
    /// Complex Content Dependent (South East Asian) (SA)
    public static let complex_context = G_UNICODE_BREAK_COMPLEX_CONTEXT /* 26 */
    /// Ambiguous (Alphabetic or Ideographic) (AI)
    public static let ambiguous = G_UNICODE_BREAK_AMBIGUOUS /* 27 */
    /// Unknown (XX)
    public static let unknown = G_UNICODE_BREAK_UNKNOWN /* 28 */
    /// Next Line (NL)
    public static let next_line = G_UNICODE_BREAK_NEXT_LINE /* 29 */
    /// Word Joiner (WJ)
    public static let word_joiner = G_UNICODE_BREAK_WORD_JOINER /* 30 */
    /// Hangul L Jamo (JL)
    public static let hangul_l_jamo = G_UNICODE_BREAK_HANGUL_L_JAMO /* 31 */
    /// Hangul V Jamo (JV)
    public static let hangul_v_jamo = G_UNICODE_BREAK_HANGUL_V_JAMO /* 32 */
    /// Hangul T Jamo (JT)
    public static let hangul_t_jamo = G_UNICODE_BREAK_HANGUL_T_JAMO /* 33 */
    /// Hangul LV Syllable (H2)
    public static let hangul_lv_syllable = G_UNICODE_BREAK_HANGUL_LV_SYLLABLE /* 34 */
    /// Hangul LVT Syllable (H3)
    public static let hangul_lvt_syllable = G_UNICODE_BREAK_HANGUL_LVT_SYLLABLE /* 35 */
    /// Closing Parenthesis (CP). Since 2.28
    public static let close_paranthesis = G_UNICODE_BREAK_CLOSE_PARANTHESIS /* 36 */
    /// Conditional Japanese Starter (CJ). Since: 2.32
    public static let conditional_japanese_starter = G_UNICODE_BREAK_CONDITIONAL_JAPANESE_STARTER /* 37 */
    /// Hebrew Letter (HL). Since: 2.32
    public static let hebrew_letter = G_UNICODE_BREAK_HEBREW_LETTER /* 38 */
    /// Regional Indicator (RI). Since: 2.36
    public static let regional_indicator = G_UNICODE_BREAK_REGIONAL_INDICATOR /* 39 */
}

/// The #GUnicodeScript enumeration identifies different writing
/// systems. The values correspond to the names as defined in the
/// Unicode standard. The enumeration has been added in GLib 2.14,
/// and is interchangeable with #PangoScript.
/// 
/// Note that new types may be added in the future. Applications
/// should be ready to handle unknown values.
/// See <ulink
/// url="http://www.unicode.org/reports/tr24/">Unicode Standard Annex
/// #24: Script names</ulink>.
public typealias UnicodeScript = GUnicodeScript

public extension UnicodeScript {
    /// a value never returned from g_unichar_get_script()
    public static let invalid_code = G_UNICODE_SCRIPT_INVALID_CODE /* -1 */
    /// a character used by multiple different scripts
    public static let common = G_UNICODE_SCRIPT_COMMON /* 0 */
    /// a mark glyph that takes its script from the
    ///                               base glyph to which it is attached
    public static let inherited = G_UNICODE_SCRIPT_INHERITED /* 1 */
    /// Arabic
    public static let arabic = G_UNICODE_SCRIPT_ARABIC /* 2 */
    /// Armenian
    public static let armenian = G_UNICODE_SCRIPT_ARMENIAN /* 3 */
    /// Bengali
    public static let bengali = G_UNICODE_SCRIPT_BENGALI /* 4 */
    /// Bopomofo
    public static let bopomofo = G_UNICODE_SCRIPT_BOPOMOFO /* 5 */
    /// Cherokee
    public static let cherokee = G_UNICODE_SCRIPT_CHEROKEE /* 6 */
    /// Coptic
    public static let coptic = G_UNICODE_SCRIPT_COPTIC /* 7 */
    /// Cyrillic
    public static let cyrillic = G_UNICODE_SCRIPT_CYRILLIC /* 8 */
    /// Deseret
    public static let deseret = G_UNICODE_SCRIPT_DESERET /* 9 */
    /// Devanagari
    public static let devanagari = G_UNICODE_SCRIPT_DEVANAGARI /* 10 */
    /// Ethiopic
    public static let ethiopic = G_UNICODE_SCRIPT_ETHIOPIC /* 11 */
    /// Georgian
    public static let georgian = G_UNICODE_SCRIPT_GEORGIAN /* 12 */
    /// Gothic
    public static let gothic = G_UNICODE_SCRIPT_GOTHIC /* 13 */
    /// Greek
    public static let greek = G_UNICODE_SCRIPT_GREEK /* 14 */
    /// Gujarati
    public static let gujarati = G_UNICODE_SCRIPT_GUJARATI /* 15 */
    /// Gurmukhi
    public static let gurmukhi = G_UNICODE_SCRIPT_GURMUKHI /* 16 */
    /// Han
    public static let han = G_UNICODE_SCRIPT_HAN /* 17 */
    /// Hangul
    public static let hangul = G_UNICODE_SCRIPT_HANGUL /* 18 */
    /// Hebrew
    public static let hebrew = G_UNICODE_SCRIPT_HEBREW /* 19 */
    /// Hiragana
    public static let hiragana = G_UNICODE_SCRIPT_HIRAGANA /* 20 */
    /// Kannada
    public static let kannada = G_UNICODE_SCRIPT_KANNADA /* 21 */
    /// Katakana
    public static let katakana = G_UNICODE_SCRIPT_KATAKANA /* 22 */
    /// Khmer
    public static let khmer = G_UNICODE_SCRIPT_KHMER /* 23 */
    /// Lao
    public static let lao = G_UNICODE_SCRIPT_LAO /* 24 */
    /// Latin
    public static let latin = G_UNICODE_SCRIPT_LATIN /* 25 */
    /// Malayalam
    public static let malayalam = G_UNICODE_SCRIPT_MALAYALAM /* 26 */
    /// Mongolian
    public static let mongolian = G_UNICODE_SCRIPT_MONGOLIAN /* 27 */
    /// Myanmar
    public static let myanmar = G_UNICODE_SCRIPT_MYANMAR /* 28 */
    /// Ogham
    public static let ogham = G_UNICODE_SCRIPT_OGHAM /* 29 */
    /// Old Italic
    public static let old_italic = G_UNICODE_SCRIPT_OLD_ITALIC /* 30 */
    /// Oriya
    public static let oriya = G_UNICODE_SCRIPT_ORIYA /* 31 */
    /// Runic
    public static let runic = G_UNICODE_SCRIPT_RUNIC /* 32 */
    /// Sinhala
    public static let sinhala = G_UNICODE_SCRIPT_SINHALA /* 33 */
    /// Syriac
    public static let syriac = G_UNICODE_SCRIPT_SYRIAC /* 34 */
    /// Tamil
    public static let tamil = G_UNICODE_SCRIPT_TAMIL /* 35 */
    /// Telugu
    public static let telugu = G_UNICODE_SCRIPT_TELUGU /* 36 */
    /// Thaana
    public static let thaana = G_UNICODE_SCRIPT_THAANA /* 37 */
    /// Thai
    public static let thai = G_UNICODE_SCRIPT_THAI /* 38 */
    /// Tibetan
    public static let tibetan = G_UNICODE_SCRIPT_TIBETAN /* 39 */
    /// Canadian Aboriginal
    public static let canadian_aboriginal = G_UNICODE_SCRIPT_CANADIAN_ABORIGINAL /* 40 */
    /// Yi
    public static let yi = G_UNICODE_SCRIPT_YI /* 41 */
    /// Tagalog
    public static let tagalog = G_UNICODE_SCRIPT_TAGALOG /* 42 */
    /// Hanunoo
    public static let hanunoo = G_UNICODE_SCRIPT_HANUNOO /* 43 */
    /// Buhid
    public static let buhid = G_UNICODE_SCRIPT_BUHID /* 44 */
    /// Tagbanwa
    public static let tagbanwa = G_UNICODE_SCRIPT_TAGBANWA /* 45 */
    /// Braille
    public static let braille = G_UNICODE_SCRIPT_BRAILLE /* 46 */
    /// Cypriot
    public static let cypriot = G_UNICODE_SCRIPT_CYPRIOT /* 47 */
    /// Limbu
    public static let limbu = G_UNICODE_SCRIPT_LIMBU /* 48 */
    /// Osmanya
    public static let osmanya = G_UNICODE_SCRIPT_OSMANYA /* 49 */
    /// Shavian
    public static let shavian = G_UNICODE_SCRIPT_SHAVIAN /* 50 */
    /// Linear B
    public static let linear_b = G_UNICODE_SCRIPT_LINEAR_B /* 51 */
    /// Tai Le
    public static let tai_le = G_UNICODE_SCRIPT_TAI_LE /* 52 */
    /// Ugaritic
    public static let ugaritic = G_UNICODE_SCRIPT_UGARITIC /* 53 */
    /// New Tai Lue
    public static let new_tai_lue = G_UNICODE_SCRIPT_NEW_TAI_LUE /* 54 */
    /// Buginese
    public static let buginese = G_UNICODE_SCRIPT_BUGINESE /* 55 */
    /// Glagolitic
    public static let glagolitic = G_UNICODE_SCRIPT_GLAGOLITIC /* 56 */
    /// Tifinagh
    public static let tifinagh = G_UNICODE_SCRIPT_TIFINAGH /* 57 */
    /// Syloti Nagri
    public static let syloti_nagri = G_UNICODE_SCRIPT_SYLOTI_NAGRI /* 58 */
    /// Old Persian
    public static let old_persian = G_UNICODE_SCRIPT_OLD_PERSIAN /* 59 */
    /// Kharoshthi
    public static let kharoshthi = G_UNICODE_SCRIPT_KHAROSHTHI /* 60 */
    /// an unassigned code point
    public static let unknown = G_UNICODE_SCRIPT_UNKNOWN /* 61 */
    /// Balinese
    public static let balinese = G_UNICODE_SCRIPT_BALINESE /* 62 */
    /// Cuneiform
    public static let cuneiform = G_UNICODE_SCRIPT_CUNEIFORM /* 63 */
    /// Phoenician
    public static let phoenician = G_UNICODE_SCRIPT_PHOENICIAN /* 64 */
    /// Phags-pa
    public static let phags_pa = G_UNICODE_SCRIPT_PHAGS_PA /* 65 */
    /// N'Ko
    public static let nko = G_UNICODE_SCRIPT_NKO /* 66 */
    /// Kayah Li. Since 2.16.3
    public static let kayah_li = G_UNICODE_SCRIPT_KAYAH_LI /* 67 */
    /// Lepcha. Since 2.16.3
    public static let lepcha = G_UNICODE_SCRIPT_LEPCHA /* 68 */
    /// Rejang. Since 2.16.3
    public static let rejang = G_UNICODE_SCRIPT_REJANG /* 69 */
    /// Sundanese. Since 2.16.3
    public static let sundanese = G_UNICODE_SCRIPT_SUNDANESE /* 70 */
    /// Saurashtra. Since 2.16.3
    public static let saurashtra = G_UNICODE_SCRIPT_SAURASHTRA /* 71 */
    /// Cham. Since 2.16.3
    public static let cham = G_UNICODE_SCRIPT_CHAM /* 72 */
    /// Ol Chiki. Since 2.16.3
    public static let ol_chiki = G_UNICODE_SCRIPT_OL_CHIKI /* 73 */
    /// Vai. Since 2.16.3
    public static let vai = G_UNICODE_SCRIPT_VAI /* 74 */
    /// Carian. Since 2.16.3
    public static let carian = G_UNICODE_SCRIPT_CARIAN /* 75 */
    /// Lycian. Since 2.16.3
    public static let lycian = G_UNICODE_SCRIPT_LYCIAN /* 76 */
    /// Lydian. Since 2.16.3
    public static let lydian = G_UNICODE_SCRIPT_LYDIAN /* 77 */
    /// Avestan. Since 2.26
    public static let avestan = G_UNICODE_SCRIPT_AVESTAN /* 78 */
    /// Bamum. Since 2.26
    public static let bamum = G_UNICODE_SCRIPT_BAMUM /* 79 */
    /// Egyptian Hieroglpyhs. Since 2.26
    public static let egyptian_hieroglyphs = G_UNICODE_SCRIPT_EGYPTIAN_HIEROGLYPHS /* 80 */
    /// Imperial Aramaic. Since 2.26
    public static let imperial_aramaic = G_UNICODE_SCRIPT_IMPERIAL_ARAMAIC /* 81 */
    /// Inscriptional Pahlavi. Since 2.26
    public static let inscriptional_pahlavi = G_UNICODE_SCRIPT_INSCRIPTIONAL_PAHLAVI /* 82 */
    /// Inscriptional Parthian. Since 2.26
    public static let inscriptional_parthian = G_UNICODE_SCRIPT_INSCRIPTIONAL_PARTHIAN /* 83 */
    /// Javanese. Since 2.26
    public static let javanese = G_UNICODE_SCRIPT_JAVANESE /* 84 */
    /// Kaithi. Since 2.26
    public static let kaithi = G_UNICODE_SCRIPT_KAITHI /* 85 */
    /// Lisu. Since 2.26
    public static let lisu = G_UNICODE_SCRIPT_LISU /* 86 */
    /// Meetei Mayek. Since 2.26
    public static let meetei_mayek = G_UNICODE_SCRIPT_MEETEI_MAYEK /* 87 */
    /// Old South Arabian. Since 2.26
    public static let old_south_arabian = G_UNICODE_SCRIPT_OLD_SOUTH_ARABIAN /* 88 */
    /// Old Turkic. Since 2.28
    public static let old_turkic = G_UNICODE_SCRIPT_OLD_TURKIC /* 89 */
    /// Samaritan. Since 2.26
    public static let samaritan = G_UNICODE_SCRIPT_SAMARITAN /* 90 */
    /// Tai Tham. Since 2.26
    public static let tai_tham = G_UNICODE_SCRIPT_TAI_THAM /* 91 */
    /// Tai Viet. Since 2.26
    public static let tai_viet = G_UNICODE_SCRIPT_TAI_VIET /* 92 */
    /// Batak. Since 2.28
    public static let batak = G_UNICODE_SCRIPT_BATAK /* 93 */
    /// Brahmi. Since 2.28
    public static let brahmi = G_UNICODE_SCRIPT_BRAHMI /* 94 */
    /// Mandaic. Since 2.28
    public static let mandaic = G_UNICODE_SCRIPT_MANDAIC /* 95 */
    /// Chakma. Since: 2.32
    public static let chakma = G_UNICODE_SCRIPT_CHAKMA /* 96 */
    /// Meroitic Cursive. Since: 2.32
    public static let meroitic_cursive = G_UNICODE_SCRIPT_MEROITIC_CURSIVE /* 97 */
    /// Meroitic Hieroglyphs. Since: 2.32
    public static let meroitic_hieroglyphs = G_UNICODE_SCRIPT_MEROITIC_HIEROGLYPHS /* 98 */
    /// Miao. Since: 2.32
    public static let miao = G_UNICODE_SCRIPT_MIAO /* 99 */
    /// Sharada. Since: 2.32
    public static let sharada = G_UNICODE_SCRIPT_SHARADA /* 100 */
    /// Sora Sompeng. Since: 2.32
    public static let sora_sompeng = G_UNICODE_SCRIPT_SORA_SOMPENG /* 101 */
    /// Takri. Since: 2.32
    public static let takri = G_UNICODE_SCRIPT_TAKRI /* 102 */
    /// Bassa. Since: 2.42
    public static let bassa_vah = G_UNICODE_SCRIPT_BASSA_VAH /* 103 */
    /// Caucasian Albanian. Since: 2.42
    public static let caucasian_albanian = G_UNICODE_SCRIPT_CAUCASIAN_ALBANIAN /* 104 */
    /// Duployan. Since: 2.42
    public static let duployan = G_UNICODE_SCRIPT_DUPLOYAN /* 105 */
    /// Elbasan. Since: 2.42
    public static let elbasan = G_UNICODE_SCRIPT_ELBASAN /* 106 */
    /// Grantha. Since: 2.42
    public static let grantha = G_UNICODE_SCRIPT_GRANTHA /* 107 */
    /// Kjohki. Since: 2.42
    public static let khojki = G_UNICODE_SCRIPT_KHOJKI /* 108 */
    /// Khudawadi, Sindhi. Since: 2.42
    public static let khudawadi = G_UNICODE_SCRIPT_KHUDAWADI /* 109 */
    /// Linear A. Since: 2.42
    public static let linear_a = G_UNICODE_SCRIPT_LINEAR_A /* 110 */
    /// Mahajani. Since: 2.42
    public static let mahajani = G_UNICODE_SCRIPT_MAHAJANI /* 111 */
    /// Manichaean. Since: 2.42
    public static let manichaean = G_UNICODE_SCRIPT_MANICHAEAN /* 112 */
    /// Mende Kikakui. Since: 2.42
    public static let mende_kikakui = G_UNICODE_SCRIPT_MENDE_KIKAKUI /* 113 */
    /// Modi. Since: 2.42
    public static let modi = G_UNICODE_SCRIPT_MODI /* 114 */
    /// Mro. Since: 2.42
    public static let mro = G_UNICODE_SCRIPT_MRO /* 115 */
    /// Nabataean. Since: 2.42
    public static let nabataean = G_UNICODE_SCRIPT_NABATAEAN /* 116 */
    /// Old North Arabian. Since: 2.42
    public static let old_north_arabian = G_UNICODE_SCRIPT_OLD_NORTH_ARABIAN /* 117 */
    /// Old Permic. Since: 2.42
    public static let old_permic = G_UNICODE_SCRIPT_OLD_PERMIC /* 118 */
    /// Pahawh Hmong. Since: 2.42
    public static let pahawh_hmong = G_UNICODE_SCRIPT_PAHAWH_HMONG /* 119 */
    /// Palmyrene. Since: 2.42
    public static let palmyrene = G_UNICODE_SCRIPT_PALMYRENE /* 120 */
    /// Pau Cin Hau. Since: 2.42
    public static let pau_cin_hau = G_UNICODE_SCRIPT_PAU_CIN_HAU /* 121 */
    /// Psalter Pahlavi. Since: 2.42
    public static let psalter_pahlavi = G_UNICODE_SCRIPT_PSALTER_PAHLAVI /* 122 */
    /// Siddham. Since: 2.42
    public static let siddham = G_UNICODE_SCRIPT_SIDDHAM /* 123 */
    /// Tirhuta. Since: 2.42
    public static let tirhuta = G_UNICODE_SCRIPT_TIRHUTA /* 124 */
    /// Warang Citi. Since: 2.42
    public static let warang_citi = G_UNICODE_SCRIPT_WARANG_CITI /* 125 */
}

/// These are the possible character classifications from the
/// Unicode specification.
/// See <ulink url="http://www.unicode.org/Public/UNIDATA/UnicodeData.html">http://www.unicode.org/Public/UNIDATA/UnicodeData.html</ulink>.
public typealias UnicodeType = GUnicodeType

public extension UnicodeType {
    /// General category "Other, Control" (Cc)
    public static let control = G_UNICODE_CONTROL /* 0 */
    /// General category "Other, Format" (Cf)
    public static let format = G_UNICODE_FORMAT /* 1 */
    /// General category "Other, Not Assigned" (Cn)
    public static let unassigned = G_UNICODE_UNASSIGNED /* 2 */
    /// General category "Other, Private Use" (Co)
    public static let private_use = G_UNICODE_PRIVATE_USE /* 3 */
    /// General category "Other, Surrogate" (Cs)
    public static let surrogate = G_UNICODE_SURROGATE /* 4 */
    /// General category "Letter, Lowercase" (Ll)
    public static let lowercase_letter = G_UNICODE_LOWERCASE_LETTER /* 5 */
    /// General category "Letter, Modifier" (Lm)
    public static let modifier_letter = G_UNICODE_MODIFIER_LETTER /* 6 */
    /// General category "Letter, Other" (Lo)
    public static let other_letter = G_UNICODE_OTHER_LETTER /* 7 */
    /// General category "Letter, Titlecase" (Lt)
    public static let titlecase_letter = G_UNICODE_TITLECASE_LETTER /* 8 */
    /// General category "Letter, Uppercase" (Lu)
    public static let uppercase_letter = G_UNICODE_UPPERCASE_LETTER /* 9 */
    /// General category "Mark, Spacing" (Mc)
    public static let spacing_mark = G_UNICODE_SPACING_MARK /* 10 */
    /// General category "Mark, Enclosing" (Me)
    public static let enclosing_mark = G_UNICODE_ENCLOSING_MARK /* 11 */
    /// General category "Mark, Nonspacing" (Mn)
    public static let non_spacing_mark = G_UNICODE_NON_SPACING_MARK /* 12 */
    /// General category "Number, Decimal Digit" (Nd)
    public static let decimal_number = G_UNICODE_DECIMAL_NUMBER /* 13 */
    /// General category "Number, Letter" (Nl)
    public static let letter_number = G_UNICODE_LETTER_NUMBER /* 14 */
    /// General category "Number, Other" (No)
    public static let other_number = G_UNICODE_OTHER_NUMBER /* 15 */
    /// General category "Punctuation, Connector" (Pc)
    public static let connect_punctuation = G_UNICODE_CONNECT_PUNCTUATION /* 16 */
    /// General category "Punctuation, Dash" (Pd)
    public static let dash_punctuation = G_UNICODE_DASH_PUNCTUATION /* 17 */
    /// General category "Punctuation, Close" (Pe)
    public static let close_punctuation = G_UNICODE_CLOSE_PUNCTUATION /* 18 */
    /// General category "Punctuation, Final quote" (Pf)
    public static let final_punctuation = G_UNICODE_FINAL_PUNCTUATION /* 19 */
    /// General category "Punctuation, Initial quote" (Pi)
    public static let initial_punctuation = G_UNICODE_INITIAL_PUNCTUATION /* 20 */
    /// General category "Punctuation, Other" (Po)
    public static let other_punctuation = G_UNICODE_OTHER_PUNCTUATION /* 21 */
    /// General category "Punctuation, Open" (Ps)
    public static let open_punctuation = G_UNICODE_OPEN_PUNCTUATION /* 22 */
    /// General category "Symbol, Currency" (Sc)
    public static let currency_symbol = G_UNICODE_CURRENCY_SYMBOL /* 23 */
    /// General category "Symbol, Modifier" (Sk)
    public static let modifier_symbol = G_UNICODE_MODIFIER_SYMBOL /* 24 */
    /// General category "Symbol, Math" (Sm)
    public static let math_symbol = G_UNICODE_MATH_SYMBOL /* 25 */
    /// General category "Symbol, Other" (So)
    public static let other_symbol = G_UNICODE_OTHER_SYMBOL /* 26 */
    /// General category "Separator, Line" (Zl)
    public static let line_separator = G_UNICODE_LINE_SEPARATOR /* 27 */
    /// General category "Separator, Paragraph" (Zp)
    public static let paragraph_separator = G_UNICODE_PARAGRAPH_SEPARATOR /* 28 */
    /// General category "Separator, Space" (Zs)
    public static let space_separator = G_UNICODE_SPACE_SEPARATOR /* 29 */
}

/// These are logical ids for special directories which are defined
/// depending on the platform used. You should use g_get_user_special_dir()
/// to retrieve the full path associated to the logical id.
/// 
/// The #GUserDirectory enumeration can be extended at later date. Not
/// every platform has a directory for every logical id in this
/// enumeration.
public typealias UserDirectory = GUserDirectory

public extension UserDirectory {
    /// the user's Desktop directory
    public static let directory_desktop = G_USER_DIRECTORY_DESKTOP /* 0 */
    /// the user's Documents directory
    public static let directory_documents = G_USER_DIRECTORY_DOCUMENTS /* 1 */
    /// the user's Downloads directory
    public static let directory_download = G_USER_DIRECTORY_DOWNLOAD /* 2 */
    /// the user's Music directory
    public static let directory_music = G_USER_DIRECTORY_MUSIC /* 3 */
    /// the user's Pictures directory
    public static let directory_pictures = G_USER_DIRECTORY_PICTURES /* 4 */
    /// the user's shared directory
    public static let directory_public_share = G_USER_DIRECTORY_PUBLIC_SHARE /* 5 */
    /// the user's Templates directory
    public static let directory_templates = G_USER_DIRECTORY_TEMPLATES /* 6 */
    /// the user's Movies directory
    public static let directory_videos = G_USER_DIRECTORY_VIDEOS /* 7 */
    /// the number of enum values
    public static let n_directories = G_USER_N_DIRECTORIES /* 8 */
}

/// The range of possible top-level types of #GVariant instances.
public typealias VariantClass = GVariantClass

public extension VariantClass {
    /// The #GVariant is a boolean.
    public static let boolean = G_VARIANT_CLASS_BOOLEAN /* 98 */
    /// The #GVariant is a byte.
    public static let byte = G_VARIANT_CLASS_BYTE /* 121 */
    /// The #GVariant is a signed 16 bit integer.
    public static let int16 = G_VARIANT_CLASS_INT16 /* 110 */
    /// The #GVariant is an unsigned 16 bit integer.
    public static let uint16 = G_VARIANT_CLASS_UINT16 /* 113 */
    /// The #GVariant is a signed 32 bit integer.
    public static let int32 = G_VARIANT_CLASS_INT32 /* 105 */
    /// The #GVariant is an unsigned 32 bit integer.
    public static let uint32 = G_VARIANT_CLASS_UINT32 /* 117 */
    /// The #GVariant is a signed 64 bit integer.
    public static let int64 = G_VARIANT_CLASS_INT64 /* 120 */
    /// The #GVariant is an unsigned 64 bit integer.
    public static let uint64 = G_VARIANT_CLASS_UINT64 /* 116 */
    /// The #GVariant is a file handle index.
    public static let handle = G_VARIANT_CLASS_HANDLE /* 104 */
    /// The #GVariant is a double precision floating
    ///                          point value.
    public static let double = G_VARIANT_CLASS_DOUBLE /* 100 */
    /// The #GVariant is a normal string.
    public static let string = G_VARIANT_CLASS_STRING /* 115 */
    /// The #GVariant is a D-Bus object path
    ///                               string.
    public static let object_path = G_VARIANT_CLASS_OBJECT_PATH /* 111 */
    /// The #GVariant is a D-Bus signature string.
    public static let signature = G_VARIANT_CLASS_SIGNATURE /* 103 */
    /// The #GVariant is a variant.
    public static let variant = G_VARIANT_CLASS_VARIANT /* 118 */
    /// The #GVariant is a maybe-typed value.
    public static let maybe = G_VARIANT_CLASS_MAYBE /* 109 */
    /// The #GVariant is an array.
    public static let array = G_VARIANT_CLASS_ARRAY /* 97 */
    /// The #GVariant is a tuple.
    public static let tuple = G_VARIANT_CLASS_TUPLE /* 40 */
    /// The #GVariant is a dictionary entry.
    public static let dict_entry = G_VARIANT_CLASS_DICT_ENTRY /* 123 */
}

/// Error codes returned by parsing text-format GVariants.
public typealias VariantParseError = GVariantParseError

public extension VariantParseError {
    /// generic error (unused)
    public static let failed = G_VARIANT_PARSE_ERROR_FAILED /* 0 */
    /// a non-basic #GVariantType was given where a basic type was expected
    public static let basic_type_expected = G_VARIANT_PARSE_ERROR_BASIC_TYPE_EXPECTED /* 1 */
    /// cannot infer the #GVariantType
    public static let cannot_infer_type = G_VARIANT_PARSE_ERROR_CANNOT_INFER_TYPE /* 2 */
    /// an indefinite #GVariantType was given where a definite type was expected
    public static let definite_type_expected = G_VARIANT_PARSE_ERROR_DEFINITE_TYPE_EXPECTED /* 3 */
    /// extra data after parsing finished
    public static let input_not_at_end = G_VARIANT_PARSE_ERROR_INPUT_NOT_AT_END /* 4 */
    /// invalid character in number or unicode escape
    public static let invalid_character = G_VARIANT_PARSE_ERROR_INVALID_CHARACTER /* 5 */
    /// not a valid #GVariant format string
    public static let invalid_format_string = G_VARIANT_PARSE_ERROR_INVALID_FORMAT_STRING /* 6 */
    /// not a valid object path
    public static let invalid_object_path = G_VARIANT_PARSE_ERROR_INVALID_OBJECT_PATH /* 7 */
    /// not a valid type signature
    public static let invalid_signature = G_VARIANT_PARSE_ERROR_INVALID_SIGNATURE /* 8 */
    /// not a valid #GVariant type string
    public static let invalid_type_string = G_VARIANT_PARSE_ERROR_INVALID_TYPE_STRING /* 9 */
    /// could not find a common type for array entries
    public static let no_common_type = G_VARIANT_PARSE_ERROR_NO_COMMON_TYPE /* 10 */
    /// the numerical value is out of range of the given type
    public static let number_out_of_range = G_VARIANT_PARSE_ERROR_NUMBER_OUT_OF_RANGE /* 11 */
    /// the numerical value is out of range for any type
    public static let number_too_big = G_VARIANT_PARSE_ERROR_NUMBER_TOO_BIG /* 12 */
    /// cannot parse as variant of the specified type
    public static let type_error = G_VARIANT_PARSE_ERROR_TYPE_ERROR /* 13 */
    /// an unexpected token was encountered
    public static let unexpected_token = G_VARIANT_PARSE_ERROR_UNEXPECTED_TOKEN /* 14 */
    /// an unknown keyword was encountered
    public static let unknown_keyword = G_VARIANT_PARSE_ERROR_UNKNOWN_KEYWORD /* 15 */
    /// unterminated string constant
    public static let unterminated_string_constant = G_VARIANT_PARSE_ERROR_UNTERMINATED_STRING_CONSTANT /* 16 */
    /// no value given
    public static let value_expected = G_VARIANT_PARSE_ERROR_VALUE_EXPECTED /* 17 */
}

public protocol ArrayTypeProtocol {
    var ptr: UnsafeMutablePointer<GArray> { get }
}

public struct ArrayRef: ArrayTypeProtocol {
    public let ptr: UnsafeMutablePointer<GArray>
}

public extension ArrayRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GArray>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GArray>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GArray>(opaquePointer)
    }

        /// Creates a new #GArray with @reserved_size elements preallocated and
    /// a reference count of 1. This avoids frequent reallocation, if you
    /// are going to add many elements to the array. Note however that the
    /// size of the array is still 0.
    public static func sized_new(zero_terminated: Bool, clear_: Bool, element_size: CUnsignedInt, reserved_size: CUnsignedInt) -> ArrayRef! {
        let rv = g_array_sized_new(gboolean(zero_terminated ? 1 : 0), gboolean(clear_ ? 1 : 0), guint(element_size), guint(reserved_size))
        return rv.map { ArrayRef(ptr: cast($0)) }
    }
}

public class ArrayType: ArrayTypeProtocol {
    public let ptr: UnsafeMutablePointer<GArray>

    public init(ptr: UnsafeMutablePointer<GArray>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension ArrayType {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GArray>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GArray>(opaquePointer))
    }

        /// Creates a new #GArray with @reserved_size elements preallocated and
    /// a reference count of 1. This avoids frequent reallocation, if you
    /// are going to add many elements to the array. Note however that the
    /// size of the array is still 0.
    public static func sized_new(zero_terminated: Bool, clear_: Bool, element_size: CUnsignedInt, reserved_size: CUnsignedInt) -> ArrayType! {
        let rv = g_array_sized_new(gboolean(zero_terminated ? 1 : 0), gboolean(clear_ ? 1 : 0), guint(element_size), guint(reserved_size))
        return rv.map { ArrayType(ptr: cast($0)) }
    }
}

public extension ArrayTypeProtocol {
    /// Adds @len elements onto the end of the array.
    public func append_vals(data: gconstpointer, len: CUnsignedInt) -> UnsafeMutablePointer<GArray>! {
        let rv = g_array_append_vals(cast(ptr), cast(data), guint(len))
        return cast(rv)
    }

    /// Frees the memory allocated for the #GArray. If @free_segment is
    /// %TRUE it frees the memory block holding the elements as well and
    /// also each element if @array has a @element_free_func set. Pass
    /// %FALSE if you want to free the #GArray wrapper but preserve the
    /// underlying array for use elsewhere. If the reference count of @array
    /// is greater than one, the #GArray wrapper is preserved but the size
    /// of @array will be set to zero.
    /// 
    /// If array elements contain dynamically-allocated memory, they should
    /// be freed separately.
    public func free(free_segment: Bool) -> UnsafeMutablePointer<gchar>! {
        let rv = g_array_free(cast(ptr), gboolean(free_segment ? 1 : 0))
        return cast(rv)
    }

    /// Gets the size of the elements in @array.
    public func get_element_size() -> CUnsignedInt {
        let rv = g_array_get_element_size(cast(ptr))
        return CUnsignedInt(rv)
    }

    /// Inserts @len elements into a #GArray at the given index.
    public func insert_vals(index_: CUnsignedInt, data: gconstpointer, len: CUnsignedInt) -> UnsafeMutablePointer<GArray>! {
        let rv = g_array_insert_vals(cast(ptr), guint(index_), cast(data), guint(len))
        return cast(rv)
    }

    /// Adds @len elements onto the start of the array.
    /// 
    /// This operation is slower than g_array_append_vals() since the
    /// existing elements in the array have to be moved to make space for
    /// the new elements.
    public func prepend_vals(data: gconstpointer, len: CUnsignedInt) -> UnsafeMutablePointer<GArray>! {
        let rv = g_array_prepend_vals(cast(ptr), cast(data), guint(len))
        return cast(rv)
    }

    /// Atomically increments the reference count of @array by one.
    /// This function is MT-safe and may be called from any thread.
    public func ref() -> UnsafeMutablePointer<GArray>! {
        let rv = g_array_ref(cast(ptr))
        return cast(rv)
    }

    /// Removes the element at the given index from a #GArray. The following
    /// elements are moved down one place.
    public func remove_index(index_: CUnsignedInt) -> UnsafeMutablePointer<GArray>! {
        let rv = g_array_remove_index(cast(ptr), guint(index_))
        return cast(rv)
    }

    /// Removes the element at the given index from a #GArray. The last
    /// element in the array is used to fill in the space, so this function
    /// does not preserve the order of the #GArray. But it is faster than
    /// g_array_remove_index().
    public func remove_index_fast(index_: CUnsignedInt) -> UnsafeMutablePointer<GArray>! {
        let rv = g_array_remove_index_fast(cast(ptr), guint(index_))
        return cast(rv)
    }

    /// Removes the given number of elements starting at the given index
    /// from a #GArray.  The following elements are moved to close the gap.
    public func remove_range(index_: CUnsignedInt, length: CUnsignedInt) -> UnsafeMutablePointer<GArray>! {
        let rv = g_array_remove_range(cast(ptr), guint(index_), guint(length))
        return cast(rv)
    }

    /// Sets a function to clear an element of @array.
    /// 
    /// The @clear_func will be called when an element in the array
    /// data segment is removed and when the array is freed and data
    /// segment is deallocated as well.
    /// 
    /// Note that in contrast with other uses of #GDestroyNotify
    /// functions, @clear_func is expected to clear the contents of
    /// the array element it is given, but not free the element itself.
    public func set_clear_func(clear_func: DestroyNotify) {
        g_array_set_clear_func(cast(ptr), clear_func)
    }

    /// Sets the size of the array, expanding it if necessary. If the array
    /// was created with @clear_ set to %TRUE, the new elements are set to 0.
    public func set_size(length: CUnsignedInt) -> UnsafeMutablePointer<GArray>! {
        let rv = g_array_set_size(cast(ptr), guint(length))
        return cast(rv)
    }

    /// Sorts a #GArray using @compare_func which should be a qsort()-style
    /// comparison function (returns less than zero for first arg is less
    /// than second arg, zero for equal, greater zero if first arg is
    /// greater than second arg).
    /// 
    /// This is guaranteed to be a stable sort since version 2.32.
    public func sort(compare_func: CompareFunc) {
        g_array_sort(cast(ptr), compare_func)
    }

    /// Like g_array_sort(), but the comparison function receives an extra
    /// user data argument.
    /// 
    /// This is guaranteed to be a stable sort since version 2.32.
    /// 
    /// There used to be a comment here about making the sort stable by
    /// using the addresses of the elements in the comparison function.
    /// This did not actually work, so any such code should be removed.
    public func sort_with_data(compare_func: CompareDataFunc, user_data: OpaquePointer) {
        g_array_sort_with_data(cast(ptr), compare_func, cast(user_data))
    }

    /// Atomically decrements the reference count of @array by one. If the
    /// reference count drops to 0, all memory allocated by the array is
    /// released. This function is MT-safe and may be called from any
    /// thread.
    public func unref() {
        g_array_unref(cast(ptr))
    }
}



public protocol AsyncQueueProtocol {
    var ptr: UnsafeMutablePointer<GAsyncQueue> { get }
}

public struct AsyncQueueRef: AsyncQueueProtocol {
    public let ptr: UnsafeMutablePointer<GAsyncQueue>
}

public extension AsyncQueueRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GAsyncQueue>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GAsyncQueue>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GAsyncQueue>(opaquePointer)
    }

        /// Creates a new asynchronous queue and sets up a destroy notify
    /// function that is used to free any remaining queue items when
    /// the queue is destroyed after the final unref.
    public static func new_full(item_free_func: DestroyNotify) -> AsyncQueueRef! {
        let rv = g_async_queue_new_full(item_free_func)
        return rv.map { AsyncQueueRef(ptr: cast($0)) }
    }
}

public class AsyncQueue: AsyncQueueProtocol {
    public let ptr: UnsafeMutablePointer<GAsyncQueue>

    public init(ptr: UnsafeMutablePointer<GAsyncQueue>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension AsyncQueue {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GAsyncQueue>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GAsyncQueue>(opaquePointer))
    }

        /// Creates a new asynchronous queue and sets up a destroy notify
    /// function that is used to free any remaining queue items when
    /// the queue is destroyed after the final unref.
    public static func new_full(item_free_func: DestroyNotify) -> AsyncQueue! {
        let rv = g_async_queue_new_full(item_free_func)
        return rv.map { AsyncQueue(ptr: cast($0)) }
    }
}

public extension AsyncQueueProtocol {
    /// Returns the length of the queue.
    /// 
    /// Actually this function returns the number of data items in
    /// the queue minus the number of waiting threads, so a negative
    /// value means waiting threads, and a positive value means available
    /// entries in the @queue. A return value of 0 could mean n entries
    /// in the queue and n threads waiting. This can happen due to locking
    /// of the queue or due to scheduling.
    public func length() -> CInt {
        let rv = g_async_queue_length(cast(ptr))
        return CInt(rv)
    }

    /// Returns the length of the queue.
    /// 
    /// Actually this function returns the number of data items in
    /// the queue minus the number of waiting threads, so a negative
    /// value means waiting threads, and a positive value means available
    /// entries in the @queue. A return value of 0 could mean n entries
    /// in the queue and n threads waiting. This can happen due to locking
    /// of the queue or due to scheduling.
    /// 
    /// This function must be called while holding the @queue's lock.
    public func length_unlocked() -> CInt {
        let rv = g_async_queue_length_unlocked(cast(ptr))
        return CInt(rv)
    }

    /// Acquires the @queue's lock. If another thread is already
    /// holding the lock, this call will block until the lock
    /// becomes available.
    /// 
    /// Call g_async_queue_unlock() to drop the lock again.
    /// 
    /// While holding the lock, you can only call the
    /// g_async_queue_*_unlocked() functions on @queue. Otherwise,
    /// deadlock may occur.
    public func lock() {
        g_async_queue_lock(cast(ptr))
    }

    /// Pops data from the @queue. If @queue is empty, this function
    /// blocks until data becomes available.
    public func pop() -> OpaquePointer! {
        let rv = g_async_queue_pop(cast(ptr))
        return cast(rv)
    }

    /// Pops data from the @queue. If @queue is empty, this function
    /// blocks until data becomes available.
    /// 
    /// This function must be called while holding the @queue's lock.
    public func pop_unlocked() -> OpaquePointer! {
        let rv = g_async_queue_pop_unlocked(cast(ptr))
        return cast(rv)
    }

    /// Pushes the @data into the @queue. @data must not be %NULL.
    public func push(data: OpaquePointer) {
        g_async_queue_push(cast(ptr), cast(data))
    }

    /// Pushes the @data into the @queue. @data must not be %NULL.
    /// In contrast to g_async_queue_push(), this function
    /// pushes the new item ahead of the items already in the queue,
    /// so that it will be the next one to be popped off the queue.
    public func push_front(item: OpaquePointer) {
        g_async_queue_push_front(cast(ptr), cast(item))
    }

    /// Pushes the @data into the @queue. @data must not be %NULL.
    /// In contrast to g_async_queue_push_unlocked(), this function
    /// pushes the new item ahead of the items already in the queue,
    /// so that it will be the next one to be popped off the queue.
    /// 
    /// This function must be called while holding the @queue's lock.
    public func push_front_unlocked(item: OpaquePointer) {
        g_async_queue_push_front_unlocked(cast(ptr), cast(item))
    }

    /// Inserts @data into @queue using @func to determine the new
    /// position.
    /// 
    /// This function requires that the @queue is sorted before pushing on
    /// new elements, see g_async_queue_sort().
    /// 
    /// This function will lock @queue before it sorts the queue and unlock
    /// it when it is finished.
    /// 
    /// For an example of @func see g_async_queue_sort().
    public func push_sorted(data: OpaquePointer, func_: CompareDataFunc, user_data: OpaquePointer) {
        g_async_queue_push_sorted(cast(ptr), cast(data), func_, cast(user_data))
    }

    /// Inserts @data into @queue using @func to determine the new
    /// position.
    /// 
    /// The sort function @func is passed two elements of the @queue.
    /// It should return 0 if they are equal, a negative value if the
    /// first element should be higher in the @queue or a positive value
    /// if the first element should be lower in the @queue than the second
    /// element.
    /// 
    /// This function requires that the @queue is sorted before pushing on
    /// new elements, see g_async_queue_sort().
    /// 
    /// This function must be called while holding the @queue's lock.
    /// 
    /// For an example of @func see g_async_queue_sort().
    public func push_sorted_unlocked(data: OpaquePointer, func_: CompareDataFunc, user_data: OpaquePointer) {
        g_async_queue_push_sorted_unlocked(cast(ptr), cast(data), func_, cast(user_data))
    }

    /// Pushes the @data into the @queue. @data must not be %NULL.
    /// 
    /// This function must be called while holding the @queue's lock.
    public func push_unlocked(data: OpaquePointer) {
        g_async_queue_push_unlocked(cast(ptr), cast(data))
    }

    /// Increases the reference count of the asynchronous @queue by 1.
    /// You do not need to hold the lock to call this function.
    public func ref() -> UnsafeMutablePointer<GAsyncQueue>! {
        let rv = g_async_queue_ref(cast(ptr))
        return cast(rv)
    }

    /// Increases the reference count of the asynchronous @queue by 1.
    ///
    /// **ref_unlocked is deprecated:**
    /// Reference counting is done atomically.
    /// so g_async_queue_ref() can be used regardless of the @queue's
    /// lock.
    @available(*, deprecated) public func ref_unlocked() {
        g_async_queue_ref_unlocked(cast(ptr))
    }

    /// Remove an item from the queue.
    public func remove(item: OpaquePointer) -> Bool {
        let rv = g_async_queue_remove(cast(ptr), cast(item))
        return Bool(rv != 0)
    }

    /// Remove an item from the queue.
    /// 
    /// This function must be called while holding the @queue's lock.
    public func remove_unlocked(item: OpaquePointer) -> Bool {
        let rv = g_async_queue_remove_unlocked(cast(ptr), cast(item))
        return Bool(rv != 0)
    }

    /// Sorts @queue using @func.
    /// 
    /// The sort function @func is passed two elements of the @queue.
    /// It should return 0 if they are equal, a negative value if the
    /// first element should be higher in the @queue or a positive value
    /// if the first element should be lower in the @queue than the second
    /// element.
    /// 
    /// This function will lock @queue before it sorts the queue and unlock
    /// it when it is finished.
    /// 
    /// If you were sorting a list of priority numbers to make sure the
    /// lowest priority would be at the top of the queue, you could use:
    /// |[<!-- language="C" -->
    ///  gint32 id1;
    ///  gint32 id2;
    /// 
    ///  id1 = GPOINTER_TO_INT (element1);
    ///  id2 = GPOINTER_TO_INT (element2);
    /// 
    ///  return (id1 > id2 ? +1 : id1 == id2 ? 0 : -1);
    /// ]|
    public func sort(func_: CompareDataFunc, user_data: OpaquePointer) {
        g_async_queue_sort(cast(ptr), func_, cast(user_data))
    }

    /// Sorts @queue using @func.
    /// 
    /// The sort function @func is passed two elements of the @queue.
    /// It should return 0 if they are equal, a negative value if the
    /// first element should be higher in the @queue or a positive value
    /// if the first element should be lower in the @queue than the second
    /// element.
    /// 
    /// This function must be called while holding the @queue's lock.
    public func sort_unlocked(func_: CompareDataFunc, user_data: OpaquePointer) {
        g_async_queue_sort_unlocked(cast(ptr), func_, cast(user_data))
    }

    /// Pops data from the @queue. If the queue is empty, blocks until
    /// @end_time or until data becomes available.
    /// 
    /// If no data is received before @end_time, %NULL is returned.
    /// 
    /// To easily calculate @end_time, a combination of g_get_current_time()
    /// and g_time_val_add() can be used.
    ///
    /// **timed_pop is deprecated:**
    /// use g_async_queue_timeout_pop().
    @available(*, deprecated) public func timed_pop(end_time: TimeValProtocol) -> OpaquePointer! {
        let rv = g_async_queue_timed_pop(cast(ptr), cast(end_time.ptr))
        return cast(rv)
    }

    /// Pops data from the @queue. If the queue is empty, blocks until
    /// @end_time or until data becomes available.
    /// 
    /// If no data is received before @end_time, %NULL is returned.
    /// 
    /// To easily calculate @end_time, a combination of g_get_current_time()
    /// and g_time_val_add() can be used.
    /// 
    /// This function must be called while holding the @queue's lock.
    ///
    /// **timed_pop_unlocked is deprecated:**
    /// use g_async_queue_timeout_pop_unlocked().
    @available(*, deprecated) public func timed_pop_unlocked(end_time: TimeValProtocol) -> OpaquePointer! {
        let rv = g_async_queue_timed_pop_unlocked(cast(ptr), cast(end_time.ptr))
        return cast(rv)
    }

    /// Pops data from the @queue. If the queue is empty, blocks for
    /// @timeout microseconds, or until data becomes available.
    /// 
    /// If no data is received before the timeout, %NULL is returned.
    public func timeout_pop(timeout: UInt64) -> OpaquePointer! {
        let rv = g_async_queue_timeout_pop(cast(ptr), guint64(timeout))
        return cast(rv)
    }

    /// Pops data from the @queue. If the queue is empty, blocks for
    /// @timeout microseconds, or until data becomes available.
    /// 
    /// If no data is received before the timeout, %NULL is returned.
    /// 
    /// This function must be called while holding the @queue's lock.
    public func timeout_pop_unlocked(timeout: UInt64) -> OpaquePointer! {
        let rv = g_async_queue_timeout_pop_unlocked(cast(ptr), guint64(timeout))
        return cast(rv)
    }

    /// Tries to pop data from the @queue. If no data is available,
    /// %NULL is returned.
    public func try_pop() -> OpaquePointer! {
        let rv = g_async_queue_try_pop(cast(ptr))
        return cast(rv)
    }

    /// Tries to pop data from the @queue. If no data is available,
    /// %NULL is returned.
    /// 
    /// This function must be called while holding the @queue's lock.
    public func try_pop_unlocked() -> OpaquePointer! {
        let rv = g_async_queue_try_pop_unlocked(cast(ptr))
        return cast(rv)
    }

    /// Releases the queue's lock.
    /// 
    /// Calling this function when you have not acquired
    /// the with g_async_queue_lock() leads to undefined
    /// behaviour.
    public func unlock() {
        g_async_queue_unlock(cast(ptr))
    }

    /// Decreases the reference count of the asynchronous @queue by 1.
    /// 
    /// If the reference count went to 0, the @queue will be destroyed
    /// and the memory allocated will be freed. So you are not allowed
    /// to use the @queue afterwards, as it might have disappeared.
    /// You do not need to hold the lock to call this function.
    public func unref() {
        g_async_queue_unref(cast(ptr))
    }

    /// Decreases the reference count of the asynchronous @queue by 1
    /// and releases the lock. This function must be called while holding
    /// the @queue's lock. If the reference count went to 0, the @queue
    /// will be destroyed and the memory allocated will be freed.
    ///
    /// **unref_and_unlock is deprecated:**
    /// Reference counting is done atomically.
    /// so g_async_queue_unref() can be used regardless of the @queue's
    /// lock.
    @available(*, deprecated) public func unref_and_unlock() {
        g_async_queue_unref_and_unlock(cast(ptr))
    }
}



public protocol BookmarkFileProtocol {
    var ptr: UnsafeMutablePointer<GBookmarkFile> { get }
}

public struct BookmarkFileRef: BookmarkFileProtocol {
    public let ptr: UnsafeMutablePointer<GBookmarkFile>
}

public extension BookmarkFileRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GBookmarkFile>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GBookmarkFile>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GBookmarkFile>(opaquePointer)
    }

    }

public class BookmarkFile: BookmarkFileProtocol {
    public let ptr: UnsafeMutablePointer<GBookmarkFile>

    public init(ptr: UnsafeMutablePointer<GBookmarkFile>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension BookmarkFile {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GBookmarkFile>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GBookmarkFile>(opaquePointer))
    }

    }

public extension BookmarkFileProtocol {
    /// Adds the application with @name and @exec to the list of
    /// applications that have registered a bookmark for @uri into
    /// @bookmark.
    /// 
    /// Every bookmark inside a #GBookmarkFile must have at least an
    /// application registered.  Each application must provide a name, a
    /// command line useful for launching the bookmark, the number of times
    /// the bookmark has been registered by the application and the last
    /// time the application registered this bookmark.
    /// 
    /// If @name is %NULL, the name of the application will be the
    /// same returned by g_get_application_name(); if @exec is %NULL, the
    /// command line will be a composition of the program name as
    /// returned by g_get_prgname() and the "\%u" modifier, which will be
    /// expanded to the bookmark's URI.
    /// 
    /// This function will automatically take care of updating the
    /// registrations count and timestamping in case an application
    /// with the same @name had already registered a bookmark for
    /// @uri inside @bookmark.
    /// 
    /// If no bookmark for @uri is found, one is created.
    public func add_application(uri: UnsafePointer<gchar>, name: UnsafePointer<gchar>, exec: UnsafePointer<gchar>) {
        g_bookmark_file_add_application(cast(ptr), cast(uri), cast(name), cast(exec))
    }

    /// Adds @group to the list of groups to which the bookmark for @uri
    /// belongs to.
    /// 
    /// If no bookmark for @uri is found then it is created.
    public func add_group(uri: UnsafePointer<gchar>, group: UnsafePointer<gchar>) {
        g_bookmark_file_add_group(cast(ptr), cast(uri), cast(group))
    }

    /// Frees a #GBookmarkFile.
    public func free() {
        g_bookmark_file_free(cast(ptr))
    }

    /// Gets the time the bookmark for @uri was added to @bookmark
    /// 
    /// In the event the URI cannot be found, -1 is returned and
    /// @error is set to #G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.
    public func get_added(uri: UnsafePointer<gchar>) throws -> time_t {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_get_added(cast(ptr), cast(uri), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return rv
    }

    /// Gets the registration informations of @app_name for the bookmark for
    /// @uri.  See g_bookmark_file_set_app_info() for more informations about
    /// the returned data.
    /// 
    /// The string returned in @app_exec must be freed.
    /// 
    /// In the event the URI cannot be found, %FALSE is returned and
    /// @error is set to #G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.  In the
    /// event that no application with name @app_name has registered a bookmark
    /// for @uri,  %FALSE is returned and error is set to
    /// #G_BOOKMARK_FILE_ERROR_APP_NOT_REGISTERED. In the event that unquoting
    /// the command line fails, an error of the #G_SHELL_ERROR domain is
    /// set and %FALSE is returned.
    public func get_app_info(uri: UnsafePointer<gchar>, name: UnsafePointer<gchar>, exec: UnsafeMutablePointer<UnsafeMutablePointer<gchar>>, count: UnsafeMutablePointer<guint>, stamp: UnsafeMutablePointer<time_t>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_get_app_info(cast(ptr), cast(uri), cast(name), cast(exec), cast(count), cast(stamp), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return Bool(rv != 0)
    }

    /// Retrieves the names of the applications that have registered the
    /// bookmark for @uri.
    /// 
    /// In the event the URI cannot be found, %NULL is returned and
    /// @error is set to #G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.
    public func get_applications(uri: UnsafePointer<gchar>, length: UnsafeMutablePointer<gsize>) throws -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_get_applications(cast(ptr), cast(uri), cast(length), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return cast(rv)
    }

    /// Retrieves the description of the bookmark for @uri.
    /// 
    /// In the event the URI cannot be found, %NULL is returned and
    /// @error is set to #G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.
    public func get_description(uri: UnsafePointer<gchar>) throws -> UnsafeMutablePointer<gchar>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_get_description(cast(ptr), cast(uri), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return cast(rv)
    }

    /// Retrieves the list of group names of the bookmark for @uri.
    /// 
    /// In the event the URI cannot be found, %NULL is returned and
    /// @error is set to #G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.
    /// 
    /// The returned array is %NULL terminated, so @length may optionally
    /// be %NULL.
    public func get_groups(uri: UnsafePointer<gchar>, length: UnsafeMutablePointer<gsize>) throws -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_get_groups(cast(ptr), cast(uri), cast(length), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return cast(rv)
    }

    /// Gets the icon of the bookmark for @uri.
    /// 
    /// In the event the URI cannot be found, %FALSE is returned and
    /// @error is set to #G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.
    public func get_icon(uri: UnsafePointer<gchar>, href: UnsafeMutablePointer<UnsafeMutablePointer<gchar>>, mime_type: UnsafeMutablePointer<UnsafeMutablePointer<gchar>>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_get_icon(cast(ptr), cast(uri), cast(href), cast(mime_type), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return Bool(rv != 0)
    }

    /// Gets whether the private flag of the bookmark for @uri is set.
    /// 
    /// In the event the URI cannot be found, %FALSE is returned and
    /// @error is set to #G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.  In the
    /// event that the private flag cannot be found, %FALSE is returned and
    /// @error is set to #G_BOOKMARK_FILE_ERROR_INVALID_VALUE.
    public func get_is_private(uri: UnsafePointer<gchar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_get_is_private(cast(ptr), cast(uri), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return Bool(rv != 0)
    }

    /// Retrieves the MIME type of the resource pointed by @uri.
    /// 
    /// In the event the URI cannot be found, %NULL is returned and
    /// @error is set to #G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.  In the
    /// event that the MIME type cannot be found, %NULL is returned and
    /// @error is set to #G_BOOKMARK_FILE_ERROR_INVALID_VALUE.
    public func get_mime_type(uri: UnsafePointer<gchar>) throws -> UnsafeMutablePointer<gchar>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_get_mime_type(cast(ptr), cast(uri), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return cast(rv)
    }

    /// Gets the time when the bookmark for @uri was last modified.
    /// 
    /// In the event the URI cannot be found, -1 is returned and
    /// @error is set to #G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.
    public func get_modified(uri: UnsafePointer<gchar>) throws -> time_t {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_get_modified(cast(ptr), cast(uri), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return rv
    }

    /// Gets the number of bookmarks inside @bookmark.
    public func get_size() -> CInt {
        let rv = g_bookmark_file_get_size(cast(ptr))
        return CInt(rv)
    }

    /// Returns the title of the bookmark for @uri.
    /// 
    /// If @uri is %NULL, the title of @bookmark is returned.
    /// 
    /// In the event the URI cannot be found, %NULL is returned and
    /// @error is set to #G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.
    public func get_title(uri: UnsafePointer<gchar>) throws -> UnsafeMutablePointer<gchar>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_get_title(cast(ptr), cast(uri), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return cast(rv)
    }

    /// Returns all URIs of the bookmarks in the bookmark file @bookmark.
    /// The array of returned URIs will be %NULL-terminated, so @length may
    /// optionally be %NULL.
    public func get_uris(length: UnsafeMutablePointer<gsize>) -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        let rv = g_bookmark_file_get_uris(cast(ptr), cast(length))
        return cast(rv)
    }

    /// Gets the time the bookmark for @uri was last visited.
    /// 
    /// In the event the URI cannot be found, -1 is returned and
    /// @error is set to #G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.
    public func get_visited(uri: UnsafePointer<gchar>) throws -> time_t {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_get_visited(cast(ptr), cast(uri), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return rv
    }

    /// Checks whether the bookmark for @uri inside @bookmark has been
    /// registered by application @name.
    /// 
    /// In the event the URI cannot be found, %FALSE is returned and
    /// @error is set to #G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.
    public func has_application(uri: UnsafePointer<gchar>, name: UnsafePointer<gchar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_has_application(cast(ptr), cast(uri), cast(name), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return Bool(rv != 0)
    }

    /// Checks whether @group appears in the list of groups to which
    /// the bookmark for @uri belongs to.
    /// 
    /// In the event the URI cannot be found, %FALSE is returned and
    /// @error is set to #G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.
    public func has_group(uri: UnsafePointer<gchar>, group: UnsafePointer<gchar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_has_group(cast(ptr), cast(uri), cast(group), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return Bool(rv != 0)
    }

    /// Looks whether the desktop bookmark has an item with its URI set to @uri.
    public func has_item(uri: UnsafePointer<gchar>) -> Bool {
        let rv = g_bookmark_file_has_item(cast(ptr), cast(uri))
        return Bool(rv != 0)
    }

    /// Loads a bookmark file from memory into an empty #GBookmarkFile
    /// structure.  If the object cannot be created then @error is set to a
    /// #GBookmarkFileError.
    public func load_from_data(data: UnsafePointer<gchar>, length: Int) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_load_from_data(cast(ptr), cast(data), gsize(length), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return Bool(rv != 0)
    }

    /// This function looks for a desktop bookmark file named @file in the
    /// paths returned from g_get_user_data_dir() and g_get_system_data_dirs(),
    /// loads the file into @bookmark and returns the file's full path in
    /// @full_path.  If the file could not be loaded then an %error is
    /// set to either a #GFileError or #GBookmarkFileError.
    public func load_from_data_dirs(file: UnsafePointer<gchar>, full_path: UnsafeMutablePointer<UnsafeMutablePointer<gchar>>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_load_from_data_dirs(cast(ptr), cast(file), cast(full_path), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return Bool(rv != 0)
    }

    /// Loads a desktop bookmark file into an empty #GBookmarkFile structure.
    /// If the file could not be loaded then @error is set to either a #GFileError
    /// or #GBookmarkFileError.
    public func load_from_file(filename: UnsafePointer<gchar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_load_from_file(cast(ptr), cast(filename), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return Bool(rv != 0)
    }

    /// Changes the URI of a bookmark item from @old_uri to @new_uri.  Any
    /// existing bookmark for @new_uri will be overwritten.  If @new_uri is
    /// %NULL, then the bookmark is removed.
    /// 
    /// In the event the URI cannot be found, %FALSE is returned and
    /// @error is set to #G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.
    public func move_item(old_uri: UnsafePointer<gchar>, new_uri: UnsafePointer<gchar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_move_item(cast(ptr), cast(old_uri), cast(new_uri), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return Bool(rv != 0)
    }

    /// Removes application registered with @name from the list of applications
    /// that have registered a bookmark for @uri inside @bookmark.
    /// 
    /// In the event the URI cannot be found, %FALSE is returned and
    /// @error is set to #G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.
    /// In the event that no application with name @app_name has registered
    /// a bookmark for @uri,  %FALSE is returned and error is set to
    /// #G_BOOKMARK_FILE_ERROR_APP_NOT_REGISTERED.
    public func remove_application(uri: UnsafePointer<gchar>, name: UnsafePointer<gchar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_remove_application(cast(ptr), cast(uri), cast(name), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return Bool(rv != 0)
    }

    /// Removes @group from the list of groups to which the bookmark
    /// for @uri belongs to.
    /// 
    /// In the event the URI cannot be found, %FALSE is returned and
    /// @error is set to #G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.
    /// In the event no group was defined, %FALSE is returned and
    /// @error is set to #G_BOOKMARK_FILE_ERROR_INVALID_VALUE.
    public func remove_group(uri: UnsafePointer<gchar>, group: UnsafePointer<gchar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_remove_group(cast(ptr), cast(uri), cast(group), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return Bool(rv != 0)
    }

    /// Removes the bookmark for @uri from the bookmark file @bookmark.
    public func remove_item(uri: UnsafePointer<gchar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_remove_item(cast(ptr), cast(uri), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return Bool(rv != 0)
    }

    /// Sets the time the bookmark for @uri was added into @bookmark.
    /// 
    /// If no bookmark for @uri is found then it is created.
    public func set_added(uri: UnsafePointer<gchar>, added: CLong) {
        g_bookmark_file_set_added(cast(ptr), cast(uri), added)
    }

    /// Sets the meta-data of application @name inside the list of
    /// applications that have registered a bookmark for @uri inside
    /// @bookmark.
    /// 
    /// You should rarely use this function; use g_bookmark_file_add_application()
    /// and g_bookmark_file_remove_application() instead.
    /// 
    /// @name can be any UTF-8 encoded string used to identify an
    /// application.
    /// @exec can have one of these two modifiers: "\%f", which will
    /// be expanded as the local file name retrieved from the bookmark's
    /// URI; "\%u", which will be expanded as the bookmark's URI.
    /// The expansion is done automatically when retrieving the stored
    /// command line using the g_bookmark_file_get_app_info() function.
    /// @count is the number of times the application has registered the
    /// bookmark; if is < 0, the current registration count will be increased
    /// by one, if is 0, the application with @name will be removed from
    /// the list of registered applications.
    /// @stamp is the Unix time of the last registration; if it is -1, the
    /// current time will be used.
    /// 
    /// If you try to remove an application by setting its registration count to
    /// zero, and no bookmark for @uri is found, %FALSE is returned and
    /// @error is set to #G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND; similarly,
    /// in the event that no application @name has registered a bookmark
    /// for @uri,  %FALSE is returned and error is set to
    /// #G_BOOKMARK_FILE_ERROR_APP_NOT_REGISTERED.  Otherwise, if no bookmark
    /// for @uri is found, one is created.
    public func set_app_info(uri: UnsafePointer<gchar>, name: UnsafePointer<gchar>, exec: UnsafePointer<gchar>, count: CInt, stamp: CLong) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_set_app_info(cast(ptr), cast(uri), cast(name), cast(exec), gint(count), stamp, &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return Bool(rv != 0)
    }

    /// Sets @description as the description of the bookmark for @uri.
    /// 
    /// If @uri is %NULL, the description of @bookmark is set.
    /// 
    /// If a bookmark for @uri cannot be found then it is created.
    public func set_description(uri: UnsafePointer<gchar>, description: UnsafePointer<gchar>) {
        g_bookmark_file_set_description(cast(ptr), cast(uri), cast(description))
    }

    /// Sets a list of group names for the item with URI @uri.  Each previously
    /// set group name list is removed.
    /// 
    /// If @uri cannot be found then an item for it is created.
    public func set_groups(uri: UnsafePointer<gchar>, groups: UnsafePointer<UnsafePointer<gchar>>, length: Int) {
        g_bookmark_file_set_groups(cast(ptr), cast(uri), cast(groups), gsize(length))
    }

    /// Sets the icon for the bookmark for @uri. If @href is %NULL, unsets
    /// the currently set icon. @href can either be a full URL for the icon
    /// file or the icon name following the Icon Naming specification.
    /// 
    /// If no bookmark for @uri is found one is created.
    public func set_icon(uri: UnsafePointer<gchar>, href: UnsafePointer<gchar>, mime_type: UnsafePointer<gchar>) {
        g_bookmark_file_set_icon(cast(ptr), cast(uri), cast(href), cast(mime_type))
    }

    /// Sets the private flag of the bookmark for @uri.
    /// 
    /// If a bookmark for @uri cannot be found then it is created.
    public func set_is_private(uri: UnsafePointer<gchar>, is_private: Bool) {
        g_bookmark_file_set_is_private(cast(ptr), cast(uri), gboolean(is_private ? 1 : 0))
    }

    /// Sets @mime_type as the MIME type of the bookmark for @uri.
    /// 
    /// If a bookmark for @uri cannot be found then it is created.
    public func set_mime_type(uri: UnsafePointer<gchar>, mime_type: UnsafePointer<gchar>) {
        g_bookmark_file_set_mime_type(cast(ptr), cast(uri), cast(mime_type))
    }

    /// Sets the last time the bookmark for @uri was last modified.
    /// 
    /// If no bookmark for @uri is found then it is created.
    /// 
    /// The "modified" time should only be set when the bookmark's meta-data
    /// was actually changed.  Every function of #GBookmarkFile that
    /// modifies a bookmark also changes the modification time, except for
    /// g_bookmark_file_set_visited().
    public func set_modified(uri: UnsafePointer<gchar>, modified: CLong) {
        g_bookmark_file_set_modified(cast(ptr), cast(uri), modified)
    }

    /// Sets @title as the title of the bookmark for @uri inside the
    /// bookmark file @bookmark.
    /// 
    /// If @uri is %NULL, the title of @bookmark is set.
    /// 
    /// If a bookmark for @uri cannot be found then it is created.
    public func set_title(uri: UnsafePointer<gchar>, title: UnsafePointer<gchar>) {
        g_bookmark_file_set_title(cast(ptr), cast(uri), cast(title))
    }

    /// Sets the time the bookmark for @uri was last visited.
    /// 
    /// If no bookmark for @uri is found then it is created.
    /// 
    /// The "visited" time should only be set if the bookmark was launched,
    /// either using the command line retrieved by g_bookmark_file_get_app_info()
    /// or by the default application for the bookmark's MIME type, retrieved
    /// using g_bookmark_file_get_mime_type().  Changing the "visited" time
    /// does not affect the "modified" time.
    public func set_visited(uri: UnsafePointer<gchar>, visited: CLong) {
        g_bookmark_file_set_visited(cast(ptr), cast(uri), visited)
    }

    /// This function outputs @bookmark as a string.
    public func to_data(length: UnsafeMutablePointer<gsize>) throws -> UnsafeMutablePointer<gchar>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_to_data(cast(ptr), cast(length), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return cast(rv)
    }

    /// This function outputs @bookmark into a file.  The write process is
    /// guaranteed to be atomic by using g_file_set_contents() internally.
    public func to_file(filename: UnsafePointer<gchar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_to_file(cast(ptr), cast(filename), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return Bool(rv != 0)
    }
}



public protocol ByteArrayProtocol {
    var ptr: UnsafeMutablePointer<GByteArray> { get }
}

public struct ByteArrayRef: ByteArrayProtocol {
    public let ptr: UnsafeMutablePointer<GByteArray>
}

public extension ByteArrayRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GByteArray>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GByteArray>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GByteArray>(opaquePointer)
    }

        /// Create byte array containing the data. The data will be owned by the array
    /// and will be freed with g_free(), i.e. it could be allocated using g_strdup().
    public static func new_take(data: UnsafeMutablePointer<guint8>, len: Int) -> ByteArrayRef! {
        let rv = g_byte_array_new_take(cast(data), gsize(len))
        return rv.map { ByteArrayRef(ptr: cast($0)) }
    }

    /// Creates a new #GByteArray with @reserved_size bytes preallocated.
    /// This avoids frequent reallocation, if you are going to add many
    /// bytes to the array. Note however that the size of the array is still
    /// 0.
    public static func sized_new(reserved_size: CUnsignedInt) -> ByteArrayRef! {
        let rv = g_byte_array_sized_new(guint(reserved_size))
        return rv.map { ByteArrayRef(ptr: cast($0)) }
    }
}

public class ByteArray: ByteArrayProtocol {
    public let ptr: UnsafeMutablePointer<GByteArray>

    public init(ptr: UnsafeMutablePointer<GByteArray>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension ByteArray {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GByteArray>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GByteArray>(opaquePointer))
    }

        /// Create byte array containing the data. The data will be owned by the array
    /// and will be freed with g_free(), i.e. it could be allocated using g_strdup().
    public static func new_take(data: UnsafeMutablePointer<guint8>, len: Int) -> ByteArray! {
        let rv = g_byte_array_new_take(cast(data), gsize(len))
        return rv.map { ByteArray(ptr: cast($0)) }
    }

    /// Creates a new #GByteArray with @reserved_size bytes preallocated.
    /// This avoids frequent reallocation, if you are going to add many
    /// bytes to the array. Note however that the size of the array is still
    /// 0.
    public static func sized_new(reserved_size: CUnsignedInt) -> ByteArray! {
        let rv = g_byte_array_sized_new(guint(reserved_size))
        return rv.map { ByteArray(ptr: cast($0)) }
    }
}

public extension ByteArrayProtocol {
    /// Adds the given bytes to the end of the #GByteArray.
    /// The array will grow in size automatically if necessary.
    public func append(data: UnsafePointer<guint8>, len: CUnsignedInt) -> UnsafeMutablePointer<GByteArray>! {
        let rv = g_byte_array_append(cast(ptr), cast(data), guint(len))
        return cast(rv)
    }

    /// Frees the memory allocated by the #GByteArray. If @free_segment is
    /// %TRUE it frees the actual byte data. If the reference count of
    /// @array is greater than one, the #GByteArray wrapper is preserved but
    /// the size of @array will be set to zero.
    public func free(free_segment: Bool) -> UnsafeMutablePointer<guint8>! {
        let rv = g_byte_array_free(cast(ptr), gboolean(free_segment ? 1 : 0))
        return cast(rv)
    }

    /// Transfers the data from the #GByteArray into a new immutable #GBytes.
    /// 
    /// The #GByteArray is freed unless the reference count of @array is greater
    /// than one, the #GByteArray wrapper is preserved but the size of @array
    /// will be set to zero.
    /// 
    /// This is identical to using g_bytes_new_take() and g_byte_array_free()
    /// together.
    public func free_to_bytes() -> UnsafeMutablePointer<GBytes>! {
        let rv = g_byte_array_free_to_bytes(cast(ptr))
        return cast(rv)
    }

    /// Adds the given data to the start of the #GByteArray.
    /// The array will grow in size automatically if necessary.
    public func prepend(data: UnsafePointer<guint8>, len: CUnsignedInt) -> UnsafeMutablePointer<GByteArray>! {
        let rv = g_byte_array_prepend(cast(ptr), cast(data), guint(len))
        return cast(rv)
    }

    /// Atomically increments the reference count of @array by one.
    /// This function is thread-safe and may be called from any thread.
    public func ref() -> UnsafeMutablePointer<GByteArray>! {
        let rv = g_byte_array_ref(cast(ptr))
        return cast(rv)
    }

    /// Removes the byte at the given index from a #GByteArray.
    /// The following bytes are moved down one place.
    public func remove_index(index_: CUnsignedInt) -> UnsafeMutablePointer<GByteArray>! {
        let rv = g_byte_array_remove_index(cast(ptr), guint(index_))
        return cast(rv)
    }

    /// Removes the byte at the given index from a #GByteArray. The last
    /// element in the array is used to fill in the space, so this function
    /// does not preserve the order of the #GByteArray. But it is faster
    /// than g_byte_array_remove_index().
    public func remove_index_fast(index_: CUnsignedInt) -> UnsafeMutablePointer<GByteArray>! {
        let rv = g_byte_array_remove_index_fast(cast(ptr), guint(index_))
        return cast(rv)
    }

    /// Removes the given number of bytes starting at the given index from a
    /// #GByteArray.  The following elements are moved to close the gap.
    public func remove_range(index_: CUnsignedInt, length: CUnsignedInt) -> UnsafeMutablePointer<GByteArray>! {
        let rv = g_byte_array_remove_range(cast(ptr), guint(index_), guint(length))
        return cast(rv)
    }

    /// Sets the size of the #GByteArray, expanding it if necessary.
    public func set_size(length: CUnsignedInt) -> UnsafeMutablePointer<GByteArray>! {
        let rv = g_byte_array_set_size(cast(ptr), guint(length))
        return cast(rv)
    }

    /// Sorts a byte array, using @compare_func which should be a
    /// qsort()-style comparison function (returns less than zero for first
    /// arg is less than second arg, zero for equal, greater than zero if
    /// first arg is greater than second arg).
    /// 
    /// If two array elements compare equal, their order in the sorted array
    /// is undefined. If you want equal elements to keep their order (i.e.
    /// you want a stable sort) you can write a comparison function that,
    /// if two elements would otherwise compare equal, compares them by
    /// their addresses.
    public func sort(compare_func: CompareFunc) {
        g_byte_array_sort(cast(ptr), compare_func)
    }

    /// Like g_byte_array_sort(), but the comparison function takes an extra
    /// user data argument.
    public func sort_with_data(compare_func: CompareDataFunc, user_data: OpaquePointer) {
        g_byte_array_sort_with_data(cast(ptr), compare_func, cast(user_data))
    }

    /// Atomically decrements the reference count of @array by one. If the
    /// reference count drops to 0, all memory allocated by the array is
    /// released. This function is thread-safe and may be called from any
    /// thread.
    public func unref() {
        g_byte_array_unref(cast(ptr))
    }
}



public protocol BytesProtocol {
    var ptr: UnsafeMutablePointer<GBytes> { get }
}

public struct BytesRef: BytesProtocol {
    public let ptr: UnsafeMutablePointer<GBytes>
}

public extension BytesRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GBytes>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GBytes>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GBytes>(opaquePointer)
    }

        /// Creates a new #GBytes from @data.
    /// 
    /// @data is copied. If @size is 0, @data may be %NULL.
    public init( data: gconstpointer, size: Int) {
        let rv = g_bytes_new(cast(data), gsize(size))
        self.ptr = cast(rv)
    }

    /// Creates a new #GBytes from static data.
    /// 
    /// @data must be static (ie: never modified or freed). It may be %NULL if @size
    /// is 0.
    public init(static_ data: gconstpointer, size: Int) {
        let rv = g_bytes_new_static(cast(data), gsize(size))
        self.ptr = cast(rv)
    }

    /// Creates a new #GBytes from @data.
    /// 
    /// After this call, @data belongs to the bytes and may no longer be
    /// modified by the caller.  g_free() will be called on @data when the
    /// bytes is no longer in use. Because of this @data must have been created by
    /// a call to g_malloc(), g_malloc0() or g_realloc() or by one of the many
    /// functions that wrap these calls (such as g_new(), g_strdup(), etc).
    /// 
    /// For creating #GBytes with memory from other allocators, see
    /// g_bytes_new_with_free_func().
    /// 
    /// @data may be %NULL if @size is 0.
    public init(take data: OpaquePointer, size: Int) {
        let rv = g_bytes_new_take(cast(data), gsize(size))
        self.ptr = cast(rv)
    }

    /// Creates a #GBytes from @data.
    /// 
    /// When the last reference is dropped, @free_func will be called with the
    /// @user_data argument.
    /// 
    /// @data must not be modified after this call is made until @free_func has
    /// been called to indicate that the bytes is no longer in use.
    /// 
    /// @data may be %NULL if @size is 0.
    public init(with_free_func data: gconstpointer, size: Int, free_func: DestroyNotify, user_data: OpaquePointer) {
        let rv = g_bytes_new_with_free_func(cast(data), gsize(size), free_func, cast(user_data))
        self.ptr = cast(rv)
    }
    /// Creates a new #GBytes from static data.
    /// 
    /// @data must be static (ie: never modified or freed). It may be %NULL if @size
    /// is 0.
    public static func new_static(data: gconstpointer, size: Int) -> BytesRef! {
        let rv = g_bytes_new_static(cast(data), gsize(size))
        return rv.map { BytesRef(ptr: cast($0)) }
    }

    /// Creates a new #GBytes from @data.
    /// 
    /// After this call, @data belongs to the bytes and may no longer be
    /// modified by the caller.  g_free() will be called on @data when the
    /// bytes is no longer in use. Because of this @data must have been created by
    /// a call to g_malloc(), g_malloc0() or g_realloc() or by one of the many
    /// functions that wrap these calls (such as g_new(), g_strdup(), etc).
    /// 
    /// For creating #GBytes with memory from other allocators, see
    /// g_bytes_new_with_free_func().
    /// 
    /// @data may be %NULL if @size is 0.
    public static func new_take(data: OpaquePointer, size: Int) -> BytesRef! {
        let rv = g_bytes_new_take(cast(data), gsize(size))
        return rv.map { BytesRef(ptr: cast($0)) }
    }

    /// Creates a #GBytes from @data.
    /// 
    /// When the last reference is dropped, @free_func will be called with the
    /// @user_data argument.
    /// 
    /// @data must not be modified after this call is made until @free_func has
    /// been called to indicate that the bytes is no longer in use.
    /// 
    /// @data may be %NULL if @size is 0.
    public static func new_with_free_func(data: gconstpointer, size: Int, free_func: DestroyNotify, user_data: OpaquePointer) -> BytesRef! {
        let rv = g_bytes_new_with_free_func(cast(data), gsize(size), free_func, cast(user_data))
        return rv.map { BytesRef(ptr: cast($0)) }
    }
}

public class Bytes: BytesProtocol {
    public let ptr: UnsafeMutablePointer<GBytes>

    public init(ptr: UnsafeMutablePointer<GBytes>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension Bytes {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GBytes>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GBytes>(opaquePointer))
    }

        /// Creates a new #GBytes from @data.
    /// 
    /// @data is copied. If @size is 0, @data may be %NULL.
    public convenience init( data: gconstpointer, size: Int) {
        let rv = g_bytes_new(cast(data), gsize(size))
        self.init(ptr: cast(rv))
    }

    /// Creates a new #GBytes from static data.
    /// 
    /// @data must be static (ie: never modified or freed). It may be %NULL if @size
    /// is 0.
    public convenience init(static_ data: gconstpointer, size: Int) {
        let rv = g_bytes_new_static(cast(data), gsize(size))
        self.init(ptr: cast(rv))
    }

    /// Creates a new #GBytes from @data.
    /// 
    /// After this call, @data belongs to the bytes and may no longer be
    /// modified by the caller.  g_free() will be called on @data when the
    /// bytes is no longer in use. Because of this @data must have been created by
    /// a call to g_malloc(), g_malloc0() or g_realloc() or by one of the many
    /// functions that wrap these calls (such as g_new(), g_strdup(), etc).
    /// 
    /// For creating #GBytes with memory from other allocators, see
    /// g_bytes_new_with_free_func().
    /// 
    /// @data may be %NULL if @size is 0.
    public convenience init(take data: OpaquePointer, size: Int) {
        let rv = g_bytes_new_take(cast(data), gsize(size))
        self.init(ptr: cast(rv))
    }

    /// Creates a #GBytes from @data.
    /// 
    /// When the last reference is dropped, @free_func will be called with the
    /// @user_data argument.
    /// 
    /// @data must not be modified after this call is made until @free_func has
    /// been called to indicate that the bytes is no longer in use.
    /// 
    /// @data may be %NULL if @size is 0.
    public convenience init(with_free_func data: gconstpointer, size: Int, free_func: DestroyNotify, user_data: OpaquePointer) {
        let rv = g_bytes_new_with_free_func(cast(data), gsize(size), free_func, cast(user_data))
        self.init(ptr: cast(rv))
    }
    /// Creates a new #GBytes from static data.
    /// 
    /// @data must be static (ie: never modified or freed). It may be %NULL if @size
    /// is 0.
    public static func new_static(data: gconstpointer, size: Int) -> Bytes! {
        let rv = g_bytes_new_static(cast(data), gsize(size))
        return rv.map { Bytes(ptr: cast($0)) }
    }

    /// Creates a new #GBytes from @data.
    /// 
    /// After this call, @data belongs to the bytes and may no longer be
    /// modified by the caller.  g_free() will be called on @data when the
    /// bytes is no longer in use. Because of this @data must have been created by
    /// a call to g_malloc(), g_malloc0() or g_realloc() or by one of the many
    /// functions that wrap these calls (such as g_new(), g_strdup(), etc).
    /// 
    /// For creating #GBytes with memory from other allocators, see
    /// g_bytes_new_with_free_func().
    /// 
    /// @data may be %NULL if @size is 0.
    public static func new_take(data: OpaquePointer, size: Int) -> Bytes! {
        let rv = g_bytes_new_take(cast(data), gsize(size))
        return rv.map { Bytes(ptr: cast($0)) }
    }

    /// Creates a #GBytes from @data.
    /// 
    /// When the last reference is dropped, @free_func will be called with the
    /// @user_data argument.
    /// 
    /// @data must not be modified after this call is made until @free_func has
    /// been called to indicate that the bytes is no longer in use.
    /// 
    /// @data may be %NULL if @size is 0.
    public static func new_with_free_func(data: gconstpointer, size: Int, free_func: DestroyNotify, user_data: OpaquePointer) -> Bytes! {
        let rv = g_bytes_new_with_free_func(cast(data), gsize(size), free_func, cast(user_data))
        return rv.map { Bytes(ptr: cast($0)) }
    }
}

public extension BytesProtocol {
    /// Compares the two #GBytes values.
    /// 
    /// This function can be used to sort GBytes instances in lexographical order.
    public func compare() -> CInt {
        let rv = g_bytes_compare(cast(ptr), cast(ptr))
        return CInt(rv)
    }

    /// Compares the two #GBytes values being pointed to and returns
    /// %TRUE if they are equal.
    /// 
    /// This function can be passed to g_hash_table_new() as the @key_equal_func
    /// parameter, when using non-%NULL #GBytes pointers as keys in a #GHashTable.
    public func equal() -> Bool {
        let rv = g_bytes_equal(cast(ptr), cast(ptr))
        return Bool(rv != 0)
    }

    /// Get the byte data in the #GBytes. This data should not be modified.
    /// 
    /// This function will always return the same pointer for a given #GBytes.
    /// 
    /// %NULL may be returned if @size is 0. This is not guaranteed, as the #GBytes
    /// may represent an empty string with @data non-%NULL and @size as 0. %NULL will
    /// not be returned if @size is non-zero.
    public func get_data(size: UnsafeMutablePointer<gsize>) -> gconstpointer! {
        let rv = g_bytes_get_data(cast(ptr), cast(size))
        return cast(rv)
    }

    /// Get the size of the byte data in the #GBytes.
    /// 
    /// This function will always return the same value for a given #GBytes.
    public func get_size() -> Int {
        let rv = g_bytes_get_size(cast(ptr))
        return Int(rv)
    }

    /// Creates an integer hash code for the byte data in the #GBytes.
    /// 
    /// This function can be passed to g_hash_table_new() as the @key_hash_func
    /// parameter, when using non-%NULL #GBytes pointers as keys in a #GHashTable.
    public func hash() -> CUnsignedInt {
        let rv = g_bytes_hash(cast(ptr))
        return CUnsignedInt(rv)
    }

    /// Creates a #GBytes which is a subsection of another #GBytes. The @offset +
    /// @length may not be longer than the size of @bytes.
    /// 
    /// A reference to @bytes will be held by the newly created #GBytes until
    /// the byte data is no longer needed.
    public func new_from_bytes(offset: Int, length: Int) -> UnsafeMutablePointer<GBytes>! {
        let rv = g_bytes_new_from_bytes(cast(ptr), gsize(offset), gsize(length))
        return cast(rv)
    }

    /// Increase the reference count on @bytes.
    public func ref() -> UnsafeMutablePointer<GBytes>! {
        let rv = g_bytes_ref(cast(ptr))
        return cast(rv)
    }

    /// Releases a reference on @bytes.  This may result in the bytes being
    /// freed.
    public func unref() {
        g_bytes_unref(cast(ptr))
    }

    /// Unreferences the bytes, and returns a new mutable #GByteArray containing
    /// the same byte data.
    /// 
    /// As an optimization, the byte data is transferred to the array without copying
    /// if this was the last reference to bytes and bytes was created with
    /// g_bytes_new(), g_bytes_new_take() or g_byte_array_free_to_bytes(). In all
    /// other cases the data is copied.
    public func unref_to_array() -> UnsafeMutablePointer<GByteArray>! {
        let rv = g_bytes_unref_to_array(cast(ptr))
        return cast(rv)
    }

    /// Unreferences the bytes, and returns a pointer the same byte data
    /// contents.
    /// 
    /// As an optimization, the byte data is returned without copying if this was
    /// the last reference to bytes and bytes was created with g_bytes_new(),
    /// g_bytes_new_take() or g_byte_array_free_to_bytes(). In all other cases the
    /// data is copied.
    public func unref_to_data(size: UnsafeMutablePointer<gsize>) -> OpaquePointer! {
        let rv = g_bytes_unref_to_data(cast(ptr), cast(size))
        return cast(rv)
    }
}



public protocol ChecksumProtocol {
    var ptr: UnsafeMutablePointer<GChecksum> { get }
}

public struct ChecksumRef: ChecksumProtocol {
    public let ptr: UnsafeMutablePointer<GChecksum>
}

public extension ChecksumRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GChecksum>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GChecksum>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GChecksum>(opaquePointer)
    }

        /// Creates a new #GChecksum, using the checksum algorithm @checksum_type.
    /// If the @checksum_type is not known, %NULL is returned.
    /// A #GChecksum can be used to compute the checksum, or digest, of an
    /// arbitrary binary blob, using different hashing algorithms.
    /// 
    /// A #GChecksum works by feeding a binary blob through g_checksum_update()
    /// until there is data to be checked; the digest can then be extracted
    /// using g_checksum_get_string(), which will return the checksum as a
    /// hexadecimal string; or g_checksum_get_digest(), which will return a
    /// vector of raw bytes. Once either g_checksum_get_string() or
    /// g_checksum_get_digest() have been called on a #GChecksum, the checksum
    /// will be closed and it won't be possible to call g_checksum_update()
    /// on it anymore.
    public init( checksum_type: ChecksumType) {
        let rv = g_checksum_new(checksum_type)
        self.ptr = cast(rv)
    }
}

public class Checksum: ChecksumProtocol {
    public let ptr: UnsafeMutablePointer<GChecksum>

    public init(ptr: UnsafeMutablePointer<GChecksum>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension Checksum {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GChecksum>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GChecksum>(opaquePointer))
    }

        /// Creates a new #GChecksum, using the checksum algorithm @checksum_type.
    /// If the @checksum_type is not known, %NULL is returned.
    /// A #GChecksum can be used to compute the checksum, or digest, of an
    /// arbitrary binary blob, using different hashing algorithms.
    /// 
    /// A #GChecksum works by feeding a binary blob through g_checksum_update()
    /// until there is data to be checked; the digest can then be extracted
    /// using g_checksum_get_string(), which will return the checksum as a
    /// hexadecimal string; or g_checksum_get_digest(), which will return a
    /// vector of raw bytes. Once either g_checksum_get_string() or
    /// g_checksum_get_digest() have been called on a #GChecksum, the checksum
    /// will be closed and it won't be possible to call g_checksum_update()
    /// on it anymore.
    public convenience init( checksum_type: ChecksumType) {
        let rv = g_checksum_new(checksum_type)
        self.init(ptr: cast(rv))
    }
}

public extension ChecksumProtocol {
    /// Copies a #GChecksum. If @checksum has been closed, by calling
    /// g_checksum_get_string() or g_checksum_get_digest(), the copied
    /// checksum will be closed as well.
    public func copy() -> UnsafeMutablePointer<GChecksum>! {
        let rv = g_checksum_copy(cast(ptr))
        return cast(rv)
    }

    /// Frees the memory allocated for @checksum.
    public func free() {
        g_checksum_free(cast(ptr))
    }

    /// Gets the digest from @checksum as a raw binary vector and places it
    /// into @buffer. The size of the digest depends on the type of checksum.
    /// 
    /// Once this function has been called, the #GChecksum is closed and can
    /// no longer be updated with g_checksum_update().
    public func get_digest(buffer: UnsafeMutablePointer<guint8>, digest_len: UnsafeMutablePointer<gsize>) {
        g_checksum_get_digest(cast(ptr), cast(buffer), cast(digest_len))
    }

    /// Gets the digest as an hexadecimal string.
    /// 
    /// Once this function has been called the #GChecksum can no longer be
    /// updated with g_checksum_update().
    /// 
    /// The hexadecimal characters will be lower case.
    public func get_string() -> UnsafePointer<gchar>! {
        let rv = g_checksum_get_string(cast(ptr))
        return cast(rv)
    }

    /// Resets the state of the @checksum back to its initial state.
    public func reset() {
        g_checksum_reset(cast(ptr))
    }

    /// Feeds @data into an existing #GChecksum. The checksum must still be
    /// open, that is g_checksum_get_string() or g_checksum_get_digest() must
    /// not have been called on @checksum.
    public func update(data: UnsafeMutablePointer<guchar>, length: gssize) {
        g_checksum_update(cast(ptr), cast(data), length)
    }
}



public protocol CondProtocol {
    var ptr: UnsafeMutablePointer<GCond> { get }
}

public struct CondRef: CondProtocol {
    public let ptr: UnsafeMutablePointer<GCond>
}

public extension CondRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GCond>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GCond>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GCond>(opaquePointer)
    }

    }

public class Cond: CondProtocol {
    public let ptr: UnsafeMutablePointer<GCond>

    public init(ptr: UnsafeMutablePointer<GCond>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension Cond {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GCond>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GCond>(opaquePointer))
    }

    }

public extension CondProtocol {
    /// If threads are waiting for @cond, all of them are unblocked.
    /// If no threads are waiting for @cond, this function has no effect.
    /// It is good practice to lock the same mutex as the waiting threads
    /// while calling this function, though not required.
    public func broadcast() {
        g_cond_broadcast(cast(ptr))
    }

    /// Frees the resources allocated to a #GCond with g_cond_init().
    /// 
    /// This function should not be used with a #GCond that has been
    /// statically allocated.
    /// 
    /// Calling g_cond_clear() for a #GCond on which threads are
    /// blocking leads to undefined behaviour.
    public func clear() {
        g_cond_clear(cast(ptr))
    }

    /// Initialises a #GCond so that it can be used.
    /// 
    /// This function is useful to initialise a #GCond that has been
    /// allocated as part of a larger structure.  It is not necessary to
    /// initialise a #GCond that has been statically allocated.
    /// 
    /// To undo the effect of g_cond_init() when a #GCond is no longer
    /// needed, use g_cond_clear().
    /// 
    /// Calling g_cond_init() on an already-initialised #GCond leads
    /// to undefined behaviour.
    public func init_() {
        g_cond_init(cast(ptr))
    }

    /// If threads are waiting for @cond, at least one of them is unblocked.
    /// If no threads are waiting for @cond, this function has no effect.
    /// It is good practice to hold the same lock as the waiting thread
    /// while calling this function, though not required.
    public func signal() {
        g_cond_signal(cast(ptr))
    }

    /// Atomically releases @mutex and waits until @cond is signalled.
    /// When this function returns, @mutex is locked again and owned by the
    /// calling thread.
    /// 
    /// When using condition variables, it is possible that a spurious wakeup
    /// may occur (ie: g_cond_wait() returns even though g_cond_signal() was
    /// not called).  It's also possible that a stolen wakeup may occur.
    /// This is when g_cond_signal() is called, but another thread acquires
    /// @mutex before this thread and modifies the state of the program in
    /// such a way that when g_cond_wait() is able to return, the expected
    /// condition is no longer met.
    /// 
    /// For this reason, g_cond_wait() must always be used in a loop.  See
    /// the documentation for #GCond for a complete example.
    public func wait(mutex: UnsafeMutablePointer<GMutex>) {
        g_cond_wait(cast(ptr), cast(mutex))
    }

    /// Waits until either @cond is signalled or @end_time has passed.
    /// 
    /// As with g_cond_wait() it is possible that a spurious or stolen wakeup
    /// could occur.  For that reason, waiting on a condition variable should
    /// always be in a loop, based on an explicitly-checked predicate.
    /// 
    /// %TRUE is returned if the condition variable was signalled (or in the
    /// case of a spurious wakeup).  %FALSE is returned if @end_time has
    /// passed.
    /// 
    /// The following code shows how to correctly perform a timed wait on a
    /// condition variable (extending the example presented in the
    /// documentation for #GCond):
    /// 
    /// |[<!-- language="C" -->
    /// gpointer
    /// pop_data_timed (void)
    /// {
    ///   gint64 end_time;
    ///   gpointer data;
    /// 
    ///   g_mutex_lock (&data_mutex);
    /// 
    ///   end_time = g_get_monotonic_time () + 5 * G_TIME_SPAN_SECOND;
    ///   while (!current_data)
    ///     if (!g_cond_wait_until (&data_cond, &data_mutex, end_time))
    ///       {
    ///         // timeout has passed.
    ///         g_mutex_unlock (&data_mutex);
    ///         return NULL;
    ///       }
    /// 
    ///   // there is data for us
    ///   data = current_data;
    ///   current_data = NULL;
    /// 
    ///   g_mutex_unlock (&data_mutex);
    /// 
    ///   return data;
    /// }
    /// ]|
    /// 
    /// Notice that the end time is calculated once, before entering the
    /// loop and reused.  This is the motivation behind the use of absolute
    /// time on this API -- if a relative time of 5 seconds were passed
    /// directly to the call and a spurious wakeup occurred, the program would
    /// have to start over waiting again (which would lead to a total wait
    /// time of more than 5 seconds).
    public func wait_until(mutex: UnsafeMutablePointer<GMutex>, end_time: Int64) -> Bool {
        let rv = g_cond_wait_until(cast(ptr), cast(mutex), gint64(end_time))
        return Bool(rv != 0)
    }
}



public protocol DataProtocol {
    var ptr: UnsafeMutablePointer<GData> { get }
}

public struct DataRef: DataProtocol {
    public let ptr: UnsafeMutablePointer<GData>
}

public extension DataRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GData>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GData>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GData>(opaquePointer)
    }

    }

public class Data: DataProtocol {
    public let ptr: UnsafeMutablePointer<GData>

    public init(ptr: UnsafeMutablePointer<GData>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension Data {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GData>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GData>(opaquePointer))
    }

    }

public extension DataProtocol {
}



public protocol DateProtocol {
    var ptr: UnsafeMutablePointer<GDate> { get }
}

public struct DateRef: DateProtocol {
    public let ptr: UnsafeMutablePointer<GDate>
}

public extension DateRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GDate>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GDate>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GDate>(opaquePointer)
    }

        /// Allocates a #GDate and initializes
    /// it to a sane state. The new date will
    /// be cleared (as if you'd called g_date_clear()) but invalid (it won't
    /// represent an existing day). Free the return value with g_date_free().
    public init( ) {
        let rv = g_date_new()
        self.ptr = cast(rv)
    }

    /// Like g_date_new(), but also sets the value of the date. Assuming the
    /// day-month-year triplet you pass in represents an existing day, the
    /// returned date will be valid.
    public init(dmy day: DateDay, month: DateMonth, year: DateYear) {
        let rv = g_date_new_dmy(day, month, year)
        self.ptr = cast(rv)
    }

    /// Like g_date_new(), but also sets the value of the date. Assuming the
    /// Julian day number you pass in is valid (greater than 0, less than an
    /// unreasonably large number), the returned date will be valid.
    public init(julian julian_day: UInt32) {
        let rv = g_date_new_julian(guint32(julian_day))
        self.ptr = cast(rv)
    }
    /// Like g_date_new(), but also sets the value of the date. Assuming the
    /// day-month-year triplet you pass in represents an existing day, the
    /// returned date will be valid.
    public static func new_dmy(day: DateDay, month: DateMonth, year: DateYear) -> DateRef! {
        let rv = g_date_new_dmy(day, month, year)
        return rv.map { DateRef(ptr: cast($0)) }
    }

    /// Like g_date_new(), but also sets the value of the date. Assuming the
    /// Julian day number you pass in is valid (greater than 0, less than an
    /// unreasonably large number), the returned date will be valid.
    public static func new_julian(julian_day: UInt32) -> DateRef! {
        let rv = g_date_new_julian(guint32(julian_day))
        return rv.map { DateRef(ptr: cast($0)) }
    }
}

public class Date: DateProtocol {
    public let ptr: UnsafeMutablePointer<GDate>

    public init(ptr: UnsafeMutablePointer<GDate>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension Date {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GDate>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GDate>(opaquePointer))
    }

        /// Allocates a #GDate and initializes
    /// it to a sane state. The new date will
    /// be cleared (as if you'd called g_date_clear()) but invalid (it won't
    /// represent an existing day). Free the return value with g_date_free().
    public convenience init( ) {
        let rv = g_date_new()
        self.init(ptr: cast(rv))
    }

    /// Like g_date_new(), but also sets the value of the date. Assuming the
    /// day-month-year triplet you pass in represents an existing day, the
    /// returned date will be valid.
    public convenience init(dmy day: DateDay, month: DateMonth, year: DateYear) {
        let rv = g_date_new_dmy(day, month, year)
        self.init(ptr: cast(rv))
    }

    /// Like g_date_new(), but also sets the value of the date. Assuming the
    /// Julian day number you pass in is valid (greater than 0, less than an
    /// unreasonably large number), the returned date will be valid.
    public convenience init(julian julian_day: UInt32) {
        let rv = g_date_new_julian(guint32(julian_day))
        self.init(ptr: cast(rv))
    }
    /// Like g_date_new(), but also sets the value of the date. Assuming the
    /// day-month-year triplet you pass in represents an existing day, the
    /// returned date will be valid.
    public static func new_dmy(day: DateDay, month: DateMonth, year: DateYear) -> Date! {
        let rv = g_date_new_dmy(day, month, year)
        return rv.map { Date(ptr: cast($0)) }
    }

    /// Like g_date_new(), but also sets the value of the date. Assuming the
    /// Julian day number you pass in is valid (greater than 0, less than an
    /// unreasonably large number), the returned date will be valid.
    public static func new_julian(julian_day: UInt32) -> Date! {
        let rv = g_date_new_julian(guint32(julian_day))
        return rv.map { Date(ptr: cast($0)) }
    }
}

public extension DateProtocol {
    /// Increments a date some number of days.
    /// To move forward by weeks, add weeks*7 days.
    /// The date must be valid.
    public func add_days(n_days: CUnsignedInt) {
        g_date_add_days(cast(ptr), guint(n_days))
    }

    /// Increments a date by some number of months.
    /// If the day of the month is greater than 28,
    /// this routine may change the day of the month
    /// (because the destination month may not have
    /// the current day in it). The date must be valid.
    public func add_months(n_months: CUnsignedInt) {
        g_date_add_months(cast(ptr), guint(n_months))
    }

    /// Increments a date by some number of years.
    /// If the date is February 29, and the destination
    /// year is not a leap year, the date will be changed
    /// to February 28. The date must be valid.
    public func add_years(n_years: CUnsignedInt) {
        g_date_add_years(cast(ptr), guint(n_years))
    }

    /// If @date is prior to @min_date, sets @date equal to @min_date.
    /// If @date falls after @max_date, sets @date equal to @max_date.
    /// Otherwise, @date is unchanged.
    /// Either of @min_date and @max_date may be %NULL.
    /// All non-%NULL dates must be valid.
    public func clamp() {
        g_date_clamp(cast(ptr), cast(ptr), cast(ptr))
    }

    /// Initializes one or more #GDate structs to a sane but invalid
    /// state. The cleared dates will not represent an existing date, but will
    /// not contain garbage. Useful to init a date declared on the stack.
    /// Validity can be tested with g_date_valid().
    public func clear(n_dates: CUnsignedInt) {
        g_date_clear(cast(ptr), guint(n_dates))
    }

    /// qsort()-style comparison function for dates.
    /// Both dates must be valid.
    public func compare() -> CInt {
        let rv = g_date_compare(cast(ptr), cast(ptr))
        return CInt(rv)
    }

    /// Computes the number of days between two dates.
    /// If @date2 is prior to @date1, the returned value is negative.
    /// Both dates must be valid.
    public func days_between() -> CInt {
        let rv = g_date_days_between(cast(ptr), cast(ptr))
        return CInt(rv)
    }

    /// Frees a #GDate returned from g_date_new().
    public func free() {
        g_date_free(cast(ptr))
    }

    /// Returns the day of the month. The date must be valid.
    public func get_day() -> GDateDay {
        let rv = g_date_get_day(cast(ptr))
        return rv
    }

    /// Returns the day of the year, where Jan 1 is the first day of the
    /// year. The date must be valid.
    public func get_day_of_year() -> CUnsignedInt {
        let rv = g_date_get_day_of_year(cast(ptr))
        return CUnsignedInt(rv)
    }

    /// Returns the week of the year, where weeks are interpreted according
    /// to ISO 8601.
    public func get_iso8601_week_of_year() -> CUnsignedInt {
        let rv = g_date_get_iso8601_week_of_year(cast(ptr))
        return CUnsignedInt(rv)
    }

    /// Returns the Julian day or "serial number" of the #GDate. The
    /// Julian day is simply the number of days since January 1, Year 1; i.e.,
    /// January 1, Year 1 is Julian day 1; January 2, Year 1 is Julian day 2,
    /// etc. The date must be valid.
    public func get_julian() -> UInt32 {
        let rv = g_date_get_julian(cast(ptr))
        return UInt32(rv)
    }

    /// Returns the week of the year, where weeks are understood to start on
    /// Monday. If the date is before the first Monday of the year, return 0.
    /// The date must be valid.
    public func get_monday_week_of_year() -> CUnsignedInt {
        let rv = g_date_get_monday_week_of_year(cast(ptr))
        return CUnsignedInt(rv)
    }

    /// Returns the month of the year. The date must be valid.
    public func get_month() -> GDateMonth {
        let rv = g_date_get_month(cast(ptr))
        return rv
    }

    /// Returns the week of the year during which this date falls, if
    /// weeks are understood to being on Sunday. The date must be valid.
    /// Can return 0 if the day is before the first Sunday of the year.
    public func get_sunday_week_of_year() -> CUnsignedInt {
        let rv = g_date_get_sunday_week_of_year(cast(ptr))
        return CUnsignedInt(rv)
    }

    /// Returns the day of the week for a #GDate. The date must be valid.
    public func get_weekday() -> GDateWeekday {
        let rv = g_date_get_weekday(cast(ptr))
        return rv
    }

    /// Returns the year of a #GDate. The date must be valid.
    public func get_year() -> GDateYear {
        let rv = g_date_get_year(cast(ptr))
        return rv
    }

    /// Returns %TRUE if the date is on the first of a month.
    /// The date must be valid.
    public func is_first_of_month() -> Bool {
        let rv = g_date_is_first_of_month(cast(ptr))
        return Bool(rv != 0)
    }

    /// Returns %TRUE if the date is the last day of the month.
    /// The date must be valid.
    public func is_last_of_month() -> Bool {
        let rv = g_date_is_last_of_month(cast(ptr))
        return Bool(rv != 0)
    }

    /// Checks if @date1 is less than or equal to @date2,
    /// and swap the values if this is not the case.
    public func order() {
        g_date_order(cast(ptr), cast(ptr))
    }

    /// Sets the day of the month for a #GDate. If the resulting
    /// day-month-year triplet is invalid, the date will be invalid.
    public func set_day(day: DateDay) {
        g_date_set_day(cast(ptr), day)
    }

    /// Sets the value of a #GDate from a day, month, and year.
    /// The day-month-year triplet must be valid; if you aren't
    /// sure it is, call g_date_valid_dmy() to check before you
    /// set it.
    public func set_dmy(day: DateDay, month: DateMonth, y: DateYear) {
        g_date_set_dmy(cast(ptr), day, month, y)
    }

    /// Sets the value of a #GDate from a Julian day number.
    public func set_julian(julian_date: UInt32) {
        g_date_set_julian(cast(ptr), guint32(julian_date))
    }

    /// Sets the month of the year for a #GDate.  If the resulting
    /// day-month-year triplet is invalid, the date will be invalid.
    public func set_month(month: DateMonth) {
        g_date_set_month(cast(ptr), month)
    }

    /// Parses a user-inputted string @str, and try to figure out what date it
    /// represents, taking the [current locale][setlocale] into account. If the
    /// string is successfully parsed, the date will be valid after the call.
    /// Otherwise, it will be invalid. You should check using g_date_valid()
    /// to see whether the parsing succeeded.
    /// 
    /// This function is not appropriate for file formats and the like; it
    /// isn't very precise, and its exact behavior varies with the locale.
    /// It's intended to be a heuristic routine that guesses what the user
    /// means by a given string (and it does work pretty well in that
    /// capacity).
    public func set_parse(str: UnsafePointer<gchar>) {
        g_date_set_parse(cast(ptr), cast(str))
    }

    /// Sets the value of a date from a #GTime value.
    /// The time to date conversion is done using the user's current timezone.
    ///
    /// **set_time is deprecated:**
    /// Use g_date_set_time_t() instead.
    @available(*, deprecated) public func set_time(time_: Time) {
        g_date_set_time(cast(ptr), time_)
    }

    /// Sets the value of a date to the date corresponding to a time
    /// specified as a time_t. The time to date conversion is done using
    /// the user's current timezone.
    /// 
    /// To set the value of a date to the current day, you could write:
    /// |[<!-- language="C" -->
    ///  g_date_set_time_t (date, time (NULL));
    /// ]|
    public func set_time_t(timet: CLong) {
        g_date_set_time_t(cast(ptr), timet)
    }

    /// Sets the value of a date from a #GTimeVal value.  Note that the
    /// @tv_usec member is ignored, because #GDate can't make use of the
    /// additional precision.
    /// 
    /// The time to date conversion is done using the user's current timezone.
    public func set_time_val(timeval: TimeValProtocol) {
        g_date_set_time_val(cast(ptr), cast(timeval.ptr))
    }

    /// Sets the year for a #GDate. If the resulting day-month-year
    /// triplet is invalid, the date will be invalid.
    public func set_year(year: DateYear) {
        g_date_set_year(cast(ptr), year)
    }

    /// Moves a date some number of days into the past.
    /// To move by weeks, just move by weeks*7 days.
    /// The date must be valid.
    public func subtract_days(n_days: CUnsignedInt) {
        g_date_subtract_days(cast(ptr), guint(n_days))
    }

    /// Moves a date some number of months into the past.
    /// If the current day of the month doesn't exist in
    /// the destination month, the day of the month
    /// may change. The date must be valid.
    public func subtract_months(n_months: CUnsignedInt) {
        g_date_subtract_months(cast(ptr), guint(n_months))
    }

    /// Moves a date some number of years into the past.
    /// If the current day doesn't exist in the destination
    /// year (i.e. it's February 29 and you move to a non-leap-year)
    /// then the day is changed to February 29. The date
    /// must be valid.
    public func subtract_years(n_years: CUnsignedInt) {
        g_date_subtract_years(cast(ptr), guint(n_years))
    }

    /// Fills in the date-related bits of a struct tm using the @date value.
    /// Initializes the non-date parts with something sane but meaningless.
    public func to_struct_tm(tm tm_: UnsafeMutablePointer<tm>) {
        g_date_to_struct_tm(cast(ptr), cast(tm_))
    }

    /// Returns %TRUE if the #GDate represents an existing day. The date must not
    /// contain garbage; it should have been initialized with g_date_clear()
    /// if it wasn't allocated by one of the g_date_new() variants.
    public func valid() -> Bool {
        let rv = g_date_valid(cast(ptr))
        return Bool(rv != 0)
    }

    /// Generates a printed representation of the date, in a
    /// [locale][setlocale]-specific way.
    /// Works just like the platform's C library strftime() function,
    /// but only accepts date-related formats; time-related formats
    /// give undefined results. Date must be valid. Unlike strftime()
    /// (which uses the locale encoding), works on a UTF-8 format
    /// string and stores a UTF-8 result.
    /// 
    /// This function does not provide any conversion specifiers in
    /// addition to those implemented by the platform's C library.
    /// For example, don't expect that using g_date_strftime() would
    /// make the \%F provided by the C99 strftime() work on Windows
    /// where the C library only complies to C89.
    public func strftime(s: UnsafeMutablePointer<gchar>, slen: Int, format: UnsafePointer<gchar>) -> Int {
        let rv = g_date_strftime(cast(s), gsize(slen), cast(format), cast(ptr))
        return Int(rv)
    }
}



public protocol DateTimeProtocol {
    var ptr: UnsafeMutablePointer<GDateTime> { get }
}

public struct DateTimeRef: DateTimeProtocol {
    public let ptr: UnsafeMutablePointer<GDateTime>
}

public extension DateTimeRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GDateTime>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GDateTime>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GDateTime>(opaquePointer)
    }

        /// Creates a new #GDateTime corresponding to the given date and time in
    /// the time zone @tz.
    /// 
    /// The @year must be between 1 and 9999, @month between 1 and 12 and @day
    /// between 1 and 28, 29, 30 or 31 depending on the month and the year.
    /// 
    /// @hour must be between 0 and 23 and @minute must be between 0 and 59.
    /// 
    /// @seconds must be at least 0.0 and must be strictly less than 60.0.
    /// It will be rounded down to the nearest microsecond.
    /// 
    /// If the given time is not representable in the given time zone (for
    /// example, 02:30 on March 14th 2010 in Toronto, due to daylight savings
    /// time) then the time will be rounded up to the nearest existing time
    /// (in this case, 03:00).  If this matters to you then you should verify
    /// the return value for containing the same as the numbers you gave.
    /// 
    /// In the case that the given time is ambiguous in the given time zone
    /// (for example, 01:30 on November 7th 2010 in Toronto, due to daylight
    /// savings time) then the time falling within standard (ie:
    /// non-daylight) time is taken.
    /// 
    /// It not considered a programmer error for the values to this function
    /// to be out of range, but in the case that they are, the function will
    /// return %NULL.
    /// 
    /// You should release the return value by calling g_date_time_unref()
    /// when you are done with it.
    public init( tz: TimeZoneProtocol, year: CInt, month: CInt, day: CInt, hour: CInt, minute: CInt, seconds: gdouble) {
        let rv = g_date_time_new(cast(tz.ptr), gint(year), gint(month), gint(day), gint(hour), gint(minute), seconds)
        self.ptr = cast(rv)
    }

    /// Creates a #GDateTime corresponding to the given #GTimeVal @tv in the
    /// local time zone.
    /// 
    /// The time contained in a #GTimeVal is always stored in the form of
    /// seconds elapsed since 1970-01-01 00:00:00 UTC, regardless of the
    /// local time offset.
    /// 
    /// This call can fail (returning %NULL) if @tv represents a time outside
    /// of the supported range of #GDateTime.
    /// 
    /// You should release the return value by calling g_date_time_unref()
    /// when you are done with it.
    public init(timeval_local tv: TimeValProtocol) {
        let rv = g_date_time_new_from_timeval_local(cast(tv.ptr))
        self.ptr = cast(rv)
    }

    /// Creates a #GDateTime corresponding to the given #GTimeVal @tv in UTC.
    /// 
    /// The time contained in a #GTimeVal is always stored in the form of
    /// seconds elapsed since 1970-01-01 00:00:00 UTC.
    /// 
    /// This call can fail (returning %NULL) if @tv represents a time outside
    /// of the supported range of #GDateTime.
    /// 
    /// You should release the return value by calling g_date_time_unref()
    /// when you are done with it.
    public init(timeval_utc tv: TimeValProtocol) {
        let rv = g_date_time_new_from_timeval_utc(cast(tv.ptr))
        self.ptr = cast(rv)
    }

    /// Creates a #GDateTime corresponding to the given Unix time @t in the
    /// local time zone.
    /// 
    /// Unix time is the number of seconds that have elapsed since 1970-01-01
    /// 00:00:00 UTC, regardless of the local time offset.
    /// 
    /// This call can fail (returning %NULL) if @t represents a time outside
    /// of the supported range of #GDateTime.
    /// 
    /// You should release the return value by calling g_date_time_unref()
    /// when you are done with it.
    public init(unix_local t: Int64) {
        let rv = g_date_time_new_from_unix_local(gint64(t))
        self.ptr = cast(rv)
    }

    /// Creates a #GDateTime corresponding to the given Unix time @t in UTC.
    /// 
    /// Unix time is the number of seconds that have elapsed since 1970-01-01
    /// 00:00:00 UTC.
    /// 
    /// This call can fail (returning %NULL) if @t represents a time outside
    /// of the supported range of #GDateTime.
    /// 
    /// You should release the return value by calling g_date_time_unref()
    /// when you are done with it.
    public init(unix_utc t: Int64) {
        let rv = g_date_time_new_from_unix_utc(gint64(t))
        self.ptr = cast(rv)
    }

    /// Creates a new #GDateTime corresponding to the given date and time in
    /// the local time zone.
    /// 
    /// This call is equivalent to calling g_date_time_new() with the time
    /// zone returned by g_time_zone_new_local().
    public init(local year: CInt, month: CInt, day: CInt, hour: CInt, minute: CInt, seconds: gdouble) {
        let rv = g_date_time_new_local(gint(year), gint(month), gint(day), gint(hour), gint(minute), seconds)
        self.ptr = cast(rv)
    }

    /// Creates a #GDateTime corresponding to this exact instant in the given
    /// time zone @tz.  The time is as accurate as the system allows, to a
    /// maximum accuracy of 1 microsecond.
    /// 
    /// This function will always succeed unless the system clock is set to
    /// truly insane values (or unless GLib is still being used after the
    /// year 9999).
    /// 
    /// You should release the return value by calling g_date_time_unref()
    /// when you are done with it.
    public init(now tz: TimeZoneProtocol) {
        let rv = g_date_time_new_now(cast(tz.ptr))
        self.ptr = cast(rv)
    }

    /// Creates a new #GDateTime corresponding to the given date and time in
    /// UTC.
    /// 
    /// This call is equivalent to calling g_date_time_new() with the time
    /// zone returned by g_time_zone_new_utc().
    public init(utc year: CInt, month: CInt, day: CInt, hour: CInt, minute: CInt, seconds: gdouble) {
        let rv = g_date_time_new_utc(gint(year), gint(month), gint(day), gint(hour), gint(minute), seconds)
        self.ptr = cast(rv)
    }
    /// Creates a #GDateTime corresponding to the given #GTimeVal @tv in the
    /// local time zone.
    /// 
    /// The time contained in a #GTimeVal is always stored in the form of
    /// seconds elapsed since 1970-01-01 00:00:00 UTC, regardless of the
    /// local time offset.
    /// 
    /// This call can fail (returning %NULL) if @tv represents a time outside
    /// of the supported range of #GDateTime.
    /// 
    /// You should release the return value by calling g_date_time_unref()
    /// when you are done with it.
    public static func new_from_timeval_local(tv: TimeValProtocol) -> DateTimeRef! {
        let rv = g_date_time_new_from_timeval_local(cast(tv.ptr))
        return rv.map { DateTimeRef(ptr: cast($0)) }
    }

    /// Creates a #GDateTime corresponding to the given #GTimeVal @tv in UTC.
    /// 
    /// The time contained in a #GTimeVal is always stored in the form of
    /// seconds elapsed since 1970-01-01 00:00:00 UTC.
    /// 
    /// This call can fail (returning %NULL) if @tv represents a time outside
    /// of the supported range of #GDateTime.
    /// 
    /// You should release the return value by calling g_date_time_unref()
    /// when you are done with it.
    public static func new_from_timeval_utc(tv: TimeValProtocol) -> DateTimeRef! {
        let rv = g_date_time_new_from_timeval_utc(cast(tv.ptr))
        return rv.map { DateTimeRef(ptr: cast($0)) }
    }

    /// Creates a #GDateTime corresponding to the given Unix time @t in the
    /// local time zone.
    /// 
    /// Unix time is the number of seconds that have elapsed since 1970-01-01
    /// 00:00:00 UTC, regardless of the local time offset.
    /// 
    /// This call can fail (returning %NULL) if @t represents a time outside
    /// of the supported range of #GDateTime.
    /// 
    /// You should release the return value by calling g_date_time_unref()
    /// when you are done with it.
    public static func new_from_unix_local(t: Int64) -> DateTimeRef! {
        let rv = g_date_time_new_from_unix_local(gint64(t))
        return rv.map { DateTimeRef(ptr: cast($0)) }
    }

    /// Creates a #GDateTime corresponding to the given Unix time @t in UTC.
    /// 
    /// Unix time is the number of seconds that have elapsed since 1970-01-01
    /// 00:00:00 UTC.
    /// 
    /// This call can fail (returning %NULL) if @t represents a time outside
    /// of the supported range of #GDateTime.
    /// 
    /// You should release the return value by calling g_date_time_unref()
    /// when you are done with it.
    public static func new_from_unix_utc(t: Int64) -> DateTimeRef! {
        let rv = g_date_time_new_from_unix_utc(gint64(t))
        return rv.map { DateTimeRef(ptr: cast($0)) }
    }

    /// Creates a new #GDateTime corresponding to the given date and time in
    /// the local time zone.
    /// 
    /// This call is equivalent to calling g_date_time_new() with the time
    /// zone returned by g_time_zone_new_local().
    public static func new_local(year: CInt, month: CInt, day: CInt, hour: CInt, minute: CInt, seconds: gdouble) -> DateTimeRef! {
        let rv = g_date_time_new_local(gint(year), gint(month), gint(day), gint(hour), gint(minute), seconds)
        return rv.map { DateTimeRef(ptr: cast($0)) }
    }

    /// Creates a #GDateTime corresponding to this exact instant in the given
    /// time zone @tz.  The time is as accurate as the system allows, to a
    /// maximum accuracy of 1 microsecond.
    /// 
    /// This function will always succeed unless the system clock is set to
    /// truly insane values (or unless GLib is still being used after the
    /// year 9999).
    /// 
    /// You should release the return value by calling g_date_time_unref()
    /// when you are done with it.
    public static func new_now(tz: TimeZoneProtocol) -> DateTimeRef! {
        let rv = g_date_time_new_now(cast(tz.ptr))
        return rv.map { DateTimeRef(ptr: cast($0)) }
    }

    /// Creates a #GDateTime corresponding to this exact instant in the local
    /// time zone.
    /// 
    /// This is equivalent to calling g_date_time_new_now() with the time
    /// zone returned by g_time_zone_new_local().
    public static func new_now_local() -> DateTimeRef! {
        let rv = g_date_time_new_now_local()
        return rv.map { DateTimeRef(ptr: cast($0)) }
    }

    /// Creates a #GDateTime corresponding to this exact instant in UTC.
    /// 
    /// This is equivalent to calling g_date_time_new_now() with the time
    /// zone returned by g_time_zone_new_utc().
    public static func new_now_utc() -> DateTimeRef! {
        let rv = g_date_time_new_now_utc()
        return rv.map { DateTimeRef(ptr: cast($0)) }
    }

    /// Creates a new #GDateTime corresponding to the given date and time in
    /// UTC.
    /// 
    /// This call is equivalent to calling g_date_time_new() with the time
    /// zone returned by g_time_zone_new_utc().
    public static func new_utc(year: CInt, month: CInt, day: CInt, hour: CInt, minute: CInt, seconds: gdouble) -> DateTimeRef! {
        let rv = g_date_time_new_utc(gint(year), gint(month), gint(day), gint(hour), gint(minute), seconds)
        return rv.map { DateTimeRef(ptr: cast($0)) }
    }
}

public class DateTime: DateTimeProtocol {
    public let ptr: UnsafeMutablePointer<GDateTime>

    public init(ptr: UnsafeMutablePointer<GDateTime>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension DateTime {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GDateTime>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GDateTime>(opaquePointer))
    }

        /// Creates a new #GDateTime corresponding to the given date and time in
    /// the time zone @tz.
    /// 
    /// The @year must be between 1 and 9999, @month between 1 and 12 and @day
    /// between 1 and 28, 29, 30 or 31 depending on the month and the year.
    /// 
    /// @hour must be between 0 and 23 and @minute must be between 0 and 59.
    /// 
    /// @seconds must be at least 0.0 and must be strictly less than 60.0.
    /// It will be rounded down to the nearest microsecond.
    /// 
    /// If the given time is not representable in the given time zone (for
    /// example, 02:30 on March 14th 2010 in Toronto, due to daylight savings
    /// time) then the time will be rounded up to the nearest existing time
    /// (in this case, 03:00).  If this matters to you then you should verify
    /// the return value for containing the same as the numbers you gave.
    /// 
    /// In the case that the given time is ambiguous in the given time zone
    /// (for example, 01:30 on November 7th 2010 in Toronto, due to daylight
    /// savings time) then the time falling within standard (ie:
    /// non-daylight) time is taken.
    /// 
    /// It not considered a programmer error for the values to this function
    /// to be out of range, but in the case that they are, the function will
    /// return %NULL.
    /// 
    /// You should release the return value by calling g_date_time_unref()
    /// when you are done with it.
    public convenience init( tz: TimeZoneProtocol, year: CInt, month: CInt, day: CInt, hour: CInt, minute: CInt, seconds: gdouble) {
        let rv = g_date_time_new(cast(tz.ptr), gint(year), gint(month), gint(day), gint(hour), gint(minute), seconds)
        self.init(ptr: cast(rv))
    }

    /// Creates a #GDateTime corresponding to the given #GTimeVal @tv in the
    /// local time zone.
    /// 
    /// The time contained in a #GTimeVal is always stored in the form of
    /// seconds elapsed since 1970-01-01 00:00:00 UTC, regardless of the
    /// local time offset.
    /// 
    /// This call can fail (returning %NULL) if @tv represents a time outside
    /// of the supported range of #GDateTime.
    /// 
    /// You should release the return value by calling g_date_time_unref()
    /// when you are done with it.
    public convenience init(timeval_local tv: TimeValProtocol) {
        let rv = g_date_time_new_from_timeval_local(cast(tv.ptr))
        self.init(ptr: cast(rv))
    }

    /// Creates a #GDateTime corresponding to the given #GTimeVal @tv in UTC.
    /// 
    /// The time contained in a #GTimeVal is always stored in the form of
    /// seconds elapsed since 1970-01-01 00:00:00 UTC.
    /// 
    /// This call can fail (returning %NULL) if @tv represents a time outside
    /// of the supported range of #GDateTime.
    /// 
    /// You should release the return value by calling g_date_time_unref()
    /// when you are done with it.
    public convenience init(timeval_utc tv: TimeValProtocol) {
        let rv = g_date_time_new_from_timeval_utc(cast(tv.ptr))
        self.init(ptr: cast(rv))
    }

    /// Creates a #GDateTime corresponding to the given Unix time @t in the
    /// local time zone.
    /// 
    /// Unix time is the number of seconds that have elapsed since 1970-01-01
    /// 00:00:00 UTC, regardless of the local time offset.
    /// 
    /// This call can fail (returning %NULL) if @t represents a time outside
    /// of the supported range of #GDateTime.
    /// 
    /// You should release the return value by calling g_date_time_unref()
    /// when you are done with it.
    public convenience init(unix_local t: Int64) {
        let rv = g_date_time_new_from_unix_local(gint64(t))
        self.init(ptr: cast(rv))
    }

    /// Creates a #GDateTime corresponding to the given Unix time @t in UTC.
    /// 
    /// Unix time is the number of seconds that have elapsed since 1970-01-01
    /// 00:00:00 UTC.
    /// 
    /// This call can fail (returning %NULL) if @t represents a time outside
    /// of the supported range of #GDateTime.
    /// 
    /// You should release the return value by calling g_date_time_unref()
    /// when you are done with it.
    public convenience init(unix_utc t: Int64) {
        let rv = g_date_time_new_from_unix_utc(gint64(t))
        self.init(ptr: cast(rv))
    }

    /// Creates a new #GDateTime corresponding to the given date and time in
    /// the local time zone.
    /// 
    /// This call is equivalent to calling g_date_time_new() with the time
    /// zone returned by g_time_zone_new_local().
    public convenience init(local year: CInt, month: CInt, day: CInt, hour: CInt, minute: CInt, seconds: gdouble) {
        let rv = g_date_time_new_local(gint(year), gint(month), gint(day), gint(hour), gint(minute), seconds)
        self.init(ptr: cast(rv))
    }

    /// Creates a #GDateTime corresponding to this exact instant in the given
    /// time zone @tz.  The time is as accurate as the system allows, to a
    /// maximum accuracy of 1 microsecond.
    /// 
    /// This function will always succeed unless the system clock is set to
    /// truly insane values (or unless GLib is still being used after the
    /// year 9999).
    /// 
    /// You should release the return value by calling g_date_time_unref()
    /// when you are done with it.
    public convenience init(now tz: TimeZoneProtocol) {
        let rv = g_date_time_new_now(cast(tz.ptr))
        self.init(ptr: cast(rv))
    }

    /// Creates a new #GDateTime corresponding to the given date and time in
    /// UTC.
    /// 
    /// This call is equivalent to calling g_date_time_new() with the time
    /// zone returned by g_time_zone_new_utc().
    public convenience init(utc year: CInt, month: CInt, day: CInt, hour: CInt, minute: CInt, seconds: gdouble) {
        let rv = g_date_time_new_utc(gint(year), gint(month), gint(day), gint(hour), gint(minute), seconds)
        self.init(ptr: cast(rv))
    }
    /// Creates a #GDateTime corresponding to the given #GTimeVal @tv in the
    /// local time zone.
    /// 
    /// The time contained in a #GTimeVal is always stored in the form of
    /// seconds elapsed since 1970-01-01 00:00:00 UTC, regardless of the
    /// local time offset.
    /// 
    /// This call can fail (returning %NULL) if @tv represents a time outside
    /// of the supported range of #GDateTime.
    /// 
    /// You should release the return value by calling g_date_time_unref()
    /// when you are done with it.
    public static func new_from_timeval_local(tv: TimeValProtocol) -> DateTime! {
        let rv = g_date_time_new_from_timeval_local(cast(tv.ptr))
        return rv.map { DateTime(ptr: cast($0)) }
    }

    /// Creates a #GDateTime corresponding to the given #GTimeVal @tv in UTC.
    /// 
    /// The time contained in a #GTimeVal is always stored in the form of
    /// seconds elapsed since 1970-01-01 00:00:00 UTC.
    /// 
    /// This call can fail (returning %NULL) if @tv represents a time outside
    /// of the supported range of #GDateTime.
    /// 
    /// You should release the return value by calling g_date_time_unref()
    /// when you are done with it.
    public static func new_from_timeval_utc(tv: TimeValProtocol) -> DateTime! {
        let rv = g_date_time_new_from_timeval_utc(cast(tv.ptr))
        return rv.map { DateTime(ptr: cast($0)) }
    }

    /// Creates a #GDateTime corresponding to the given Unix time @t in the
    /// local time zone.
    /// 
    /// Unix time is the number of seconds that have elapsed since 1970-01-01
    /// 00:00:00 UTC, regardless of the local time offset.
    /// 
    /// This call can fail (returning %NULL) if @t represents a time outside
    /// of the supported range of #GDateTime.
    /// 
    /// You should release the return value by calling g_date_time_unref()
    /// when you are done with it.
    public static func new_from_unix_local(t: Int64) -> DateTime! {
        let rv = g_date_time_new_from_unix_local(gint64(t))
        return rv.map { DateTime(ptr: cast($0)) }
    }

    /// Creates a #GDateTime corresponding to the given Unix time @t in UTC.
    /// 
    /// Unix time is the number of seconds that have elapsed since 1970-01-01
    /// 00:00:00 UTC.
    /// 
    /// This call can fail (returning %NULL) if @t represents a time outside
    /// of the supported range of #GDateTime.
    /// 
    /// You should release the return value by calling g_date_time_unref()
    /// when you are done with it.
    public static func new_from_unix_utc(t: Int64) -> DateTime! {
        let rv = g_date_time_new_from_unix_utc(gint64(t))
        return rv.map { DateTime(ptr: cast($0)) }
    }

    /// Creates a new #GDateTime corresponding to the given date and time in
    /// the local time zone.
    /// 
    /// This call is equivalent to calling g_date_time_new() with the time
    /// zone returned by g_time_zone_new_local().
    public static func new_local(year: CInt, month: CInt, day: CInt, hour: CInt, minute: CInt, seconds: gdouble) -> DateTime! {
        let rv = g_date_time_new_local(gint(year), gint(month), gint(day), gint(hour), gint(minute), seconds)
        return rv.map { DateTime(ptr: cast($0)) }
    }

    /// Creates a #GDateTime corresponding to this exact instant in the given
    /// time zone @tz.  The time is as accurate as the system allows, to a
    /// maximum accuracy of 1 microsecond.
    /// 
    /// This function will always succeed unless the system clock is set to
    /// truly insane values (or unless GLib is still being used after the
    /// year 9999).
    /// 
    /// You should release the return value by calling g_date_time_unref()
    /// when you are done with it.
    public static func new_now(tz: TimeZoneProtocol) -> DateTime! {
        let rv = g_date_time_new_now(cast(tz.ptr))
        return rv.map { DateTime(ptr: cast($0)) }
    }

    /// Creates a #GDateTime corresponding to this exact instant in the local
    /// time zone.
    /// 
    /// This is equivalent to calling g_date_time_new_now() with the time
    /// zone returned by g_time_zone_new_local().
    public static func new_now_local() -> DateTime! {
        let rv = g_date_time_new_now_local()
        return rv.map { DateTime(ptr: cast($0)) }
    }

    /// Creates a #GDateTime corresponding to this exact instant in UTC.
    /// 
    /// This is equivalent to calling g_date_time_new_now() with the time
    /// zone returned by g_time_zone_new_utc().
    public static func new_now_utc() -> DateTime! {
        let rv = g_date_time_new_now_utc()
        return rv.map { DateTime(ptr: cast($0)) }
    }

    /// Creates a new #GDateTime corresponding to the given date and time in
    /// UTC.
    /// 
    /// This call is equivalent to calling g_date_time_new() with the time
    /// zone returned by g_time_zone_new_utc().
    public static func new_utc(year: CInt, month: CInt, day: CInt, hour: CInt, minute: CInt, seconds: gdouble) -> DateTime! {
        let rv = g_date_time_new_utc(gint(year), gint(month), gint(day), gint(hour), gint(minute), seconds)
        return rv.map { DateTime(ptr: cast($0)) }
    }
}

public extension DateTimeProtocol {
    /// Creates a copy of @datetime and adds the specified timespan to the copy.
    public func add(timespan: TimeSpan) -> UnsafeMutablePointer<GDateTime>! {
        let rv = g_date_time_add(cast(ptr), timespan)
        return cast(rv)
    }

    /// Creates a copy of @datetime and adds the specified number of days to the
    /// copy. Add negative values to subtract days.
    public func add_days(days: CInt) -> UnsafeMutablePointer<GDateTime>! {
        let rv = g_date_time_add_days(cast(ptr), gint(days))
        return cast(rv)
    }

    /// Creates a new #GDateTime adding the specified values to the current date and
    /// time in @datetime. Add negative values to subtract.
    public func add_full(years: CInt, months: CInt, days: CInt, hours: CInt, minutes: CInt, seconds: gdouble) -> UnsafeMutablePointer<GDateTime>! {
        let rv = g_date_time_add_full(cast(ptr), gint(years), gint(months), gint(days), gint(hours), gint(minutes), seconds)
        return cast(rv)
    }

    /// Creates a copy of @datetime and adds the specified number of hours.
    /// Add negative values to subtract hours.
    public func add_hours(hours: CInt) -> UnsafeMutablePointer<GDateTime>! {
        let rv = g_date_time_add_hours(cast(ptr), gint(hours))
        return cast(rv)
    }

    /// Creates a copy of @datetime adding the specified number of minutes.
    /// Add negative values to subtract minutes.
    public func add_minutes(minutes: CInt) -> UnsafeMutablePointer<GDateTime>! {
        let rv = g_date_time_add_minutes(cast(ptr), gint(minutes))
        return cast(rv)
    }

    /// Creates a copy of @datetime and adds the specified number of months to the
    /// copy. Add negative values to subtract months.
    public func add_months(months: CInt) -> UnsafeMutablePointer<GDateTime>! {
        let rv = g_date_time_add_months(cast(ptr), gint(months))
        return cast(rv)
    }

    /// Creates a copy of @datetime and adds the specified number of seconds.
    /// Add negative values to subtract seconds.
    public func add_seconds(seconds: gdouble) -> UnsafeMutablePointer<GDateTime>! {
        let rv = g_date_time_add_seconds(cast(ptr), seconds)
        return cast(rv)
    }

    /// Creates a copy of @datetime and adds the specified number of weeks to the
    /// copy. Add negative values to subtract weeks.
    public func add_weeks(weeks: CInt) -> UnsafeMutablePointer<GDateTime>! {
        let rv = g_date_time_add_weeks(cast(ptr), gint(weeks))
        return cast(rv)
    }

    /// Creates a copy of @datetime and adds the specified number of years to the
    /// copy. Add negative values to subtract years.
    public func add_years(years: CInt) -> UnsafeMutablePointer<GDateTime>! {
        let rv = g_date_time_add_years(cast(ptr), gint(years))
        return cast(rv)
    }

    /// Calculates the difference in time between @end and @begin.  The
    /// #GTimeSpan that is returned is effectively @end - @begin (ie:
    /// positive if the first parameter is larger).
    public func difference() -> GTimeSpan {
        let rv = g_date_time_difference(cast(ptr), cast(ptr))
        return rv
    }

    /// Creates a newly allocated string representing the requested @format.
    /// 
    /// The format strings understood by this function are a subset of the
    /// strftime() format language as specified by C99.  The \%D, \%U and \%W
    /// conversions are not supported, nor is the 'E' modifier.  The GNU
    /// extensions \%k, \%l, \%s and \%P are supported, however, as are the
    /// '0', '_' and '-' modifiers.
    /// 
    /// In contrast to strftime(), this function always produces a UTF-8
    /// string, regardless of the current locale.  Note that the rendering of
    /// many formats is locale-dependent and may not match the strftime()
    /// output exactly.
    /// 
    /// The following format specifiers are supported:
    /// 
    /// - \%a: the abbreviated weekday name according to the current locale
    /// - \%A: the full weekday name according to the current locale
    /// - \%b: the abbreviated month name according to the current locale
    /// - \%B: the full month name according to the current locale
    /// - \%c: the preferred date and time representation for the current locale
    /// - \%C: the century number (year/100) as a 2-digit integer (00-99)
    /// - \%d: the day of the month as a decimal number (range 01 to 31)
    /// - \%e: the day of the month as a decimal number (range  1 to 31)
    /// - \%F: equivalent to `%Y-%m-%d` (the ISO 8601 date format)
    /// - \%g: the last two digits of the ISO 8601 week-based year as a
    ///   decimal number (00-99). This works well with \%V and \%u.
    /// - \%G: the ISO 8601 week-based year as a decimal number. This works
    ///   well with \%V and \%u.
    /// - \%h: equivalent to \%b
    /// - \%H: the hour as a decimal number using a 24-hour clock (range 00 to 23)
    /// - \%I: the hour as a decimal number using a 12-hour clock (range 01 to 12)
    /// - \%j: the day of the year as a decimal number (range 001 to 366)
    /// - \%k: the hour (24-hour clock) as a decimal number (range 0 to 23);
    ///   single digits are preceded by a blank
    /// - \%l: the hour (12-hour clock) as a decimal number (range 1 to 12);
    ///   single digits are preceded by a blank
    /// - \%m: the month as a decimal number (range 01 to 12)
    /// - \%M: the minute as a decimal number (range 00 to 59)
    /// - \%p: either "AM" or "PM" according to the given time value, or the
    ///   corresponding  strings for the current locale.  Noon is treated as
    ///   "PM" and midnight as "AM".
    /// - \%P: like \%p but lowercase: "am" or "pm" or a corresponding string for
    ///   the current locale
    /// - \%r: the time in a.m. or p.m. notation
    /// - \%R: the time in 24-hour notation (\%H:\%M)
    /// - \%s: the number of seconds since the Epoch, that is, since 1970-01-01
    ///   00:00:00 UTC
    /// - \%S: the second as a decimal number (range 00 to 60)
    /// - \%t: a tab character
    /// - \%T: the time in 24-hour notation with seconds (\%H:\%M:\%S)
    /// - \%u: the ISO 8601 standard day of the week as a decimal, range 1 to 7,
    ///    Monday being 1. This works well with \%G and \%V.
    /// - \%V: the ISO 8601 standard week number of the current year as a decimal
    ///   number, range 01 to 53, where week 1 is the first week that has at
    ///   least 4 days in the new year. See g_date_time_get_week_of_year().
    ///   This works well with \%G and \%u.
    /// - \%w: the day of the week as a decimal, range 0 to 6, Sunday being 0.
    ///   This is not the ISO 8601 standard format -- use \%u instead.
    /// - \%x: the preferred date representation for the current locale without
    ///   the time
    /// - \%X: the preferred time representation for the current locale without
    ///   the date
    /// - \%y: the year as a decimal number without the century
    /// - \%Y: the year as a decimal number including the century
    /// - \%z: the time zone as an offset from UTC (+hhmm)
    /// - \%:z: the time zone as an offset from UTC (+hh:mm).
    ///   This is a gnulib strftime() extension. Since: 2.38
    /// - \%::z: the time zone as an offset from UTC (+hh:mm:ss). This is a
    ///   gnulib strftime() extension. Since: 2.38
    /// - \%:::z: the time zone as an offset from UTC, with : to necessary
    ///   precision (e.g., -04, +05:30). This is a gnulib strftime() extension. Since: 2.38
    /// - \%Z: the time zone or name or abbreviation
    /// - \%\%: a literal \% character
    /// 
    /// Some conversion specifications can be modified by preceding the
    /// conversion specifier by one or more modifier characters. The
    /// following modifiers are supported for many of the numeric
    /// conversions:
    /// 
    /// - O: Use alternative numeric symbols, if the current locale supports those.
    /// - _: Pad a numeric result with spaces. This overrides the default padding
    ///   for the specifier.
    /// - -: Do not pad a numeric result. This overrides the default padding
    ///   for the specifier.
    /// - 0: Pad a numeric result with zeros. This overrides the default padding
    ///   for the specifier.
    public func format(format: UnsafePointer<gchar>) -> UnsafeMutablePointer<gchar>! {
        let rv = g_date_time_format(cast(ptr), cast(format))
        return cast(rv)
    }

    /// Retrieves the day of the month represented by @datetime in the gregorian
    /// calendar.
    public func get_day_of_month() -> CInt {
        let rv = g_date_time_get_day_of_month(cast(ptr))
        return CInt(rv)
    }

    /// Retrieves the ISO 8601 day of the week on which @datetime falls (1 is
    /// Monday, 2 is Tuesday... 7 is Sunday).
    public func get_day_of_week() -> CInt {
        let rv = g_date_time_get_day_of_week(cast(ptr))
        return CInt(rv)
    }

    /// Retrieves the day of the year represented by @datetime in the Gregorian
    /// calendar.
    public func get_day_of_year() -> CInt {
        let rv = g_date_time_get_day_of_year(cast(ptr))
        return CInt(rv)
    }

    /// Retrieves the hour of the day represented by @datetime
    public func get_hour() -> CInt {
        let rv = g_date_time_get_hour(cast(ptr))
        return CInt(rv)
    }

    /// Retrieves the microsecond of the date represented by @datetime
    public func get_microsecond() -> CInt {
        let rv = g_date_time_get_microsecond(cast(ptr))
        return CInt(rv)
    }

    /// Retrieves the minute of the hour represented by @datetime
    public func get_minute() -> CInt {
        let rv = g_date_time_get_minute(cast(ptr))
        return CInt(rv)
    }

    /// Retrieves the month of the year represented by @datetime in the Gregorian
    /// calendar.
    public func get_month() -> CInt {
        let rv = g_date_time_get_month(cast(ptr))
        return CInt(rv)
    }

    /// Retrieves the second of the minute represented by @datetime
    public func get_second() -> CInt {
        let rv = g_date_time_get_second(cast(ptr))
        return CInt(rv)
    }

    /// Retrieves the number of seconds since the start of the last minute,
    /// including the fractional part.
    public func get_seconds() -> gdouble {
        let rv = g_date_time_get_seconds(cast(ptr))
        return rv
    }

    /// Determines the time zone abbreviation to be used at the time and in
    /// the time zone of @datetime.
    /// 
    /// For example, in Toronto this is currently "EST" during the winter
    /// months and "EDT" during the summer months when daylight savings
    /// time is in effect.
    public func get_timezone_abbreviation() -> UnsafePointer<gchar>! {
        let rv = g_date_time_get_timezone_abbreviation(cast(ptr))
        return cast(rv)
    }

    /// Determines the offset to UTC in effect at the time and in the time
    /// zone of @datetime.
    /// 
    /// The offset is the number of microseconds that you add to UTC time to
    /// arrive at local time for the time zone (ie: negative numbers for time
    /// zones west of GMT, positive numbers for east).
    /// 
    /// If @datetime represents UTC time, then the offset is always zero.
    public func get_utc_offset() -> GTimeSpan {
        let rv = g_date_time_get_utc_offset(cast(ptr))
        return rv
    }

    /// Returns the ISO 8601 week-numbering year in which the week containing
    /// @datetime falls.
    /// 
    /// This function, taken together with g_date_time_get_week_of_year() and
    /// g_date_time_get_day_of_week() can be used to determine the full ISO
    /// week date on which @datetime falls.
    /// 
    /// This is usually equal to the normal Gregorian year (as returned by
    /// g_date_time_get_year()), except as detailed below:
    /// 
    /// For Thursday, the week-numbering year is always equal to the usual
    /// calendar year.  For other days, the number is such that every day
    /// within a complete week (Monday to Sunday) is contained within the
    /// same week-numbering year.
    /// 
    /// For Monday, Tuesday and Wednesday occurring near the end of the year,
    /// this may mean that the week-numbering year is one greater than the
    /// calendar year (so that these days have the same week-numbering year
    /// as the Thursday occurring early in the next year).
    /// 
    /// For Friday, Saturday and Sunday occurring near the start of the year,
    /// this may mean that the week-numbering year is one less than the
    /// calendar year (so that these days have the same week-numbering year
    /// as the Thursday occurring late in the previous year).
    /// 
    /// An equivalent description is that the week-numbering year is equal to
    /// the calendar year containing the majority of the days in the current
    /// week (Monday to Sunday).
    /// 
    /// Note that January 1 0001 in the proleptic Gregorian calendar is a
    /// Monday, so this function never returns 0.
    public func get_week_numbering_year() -> CInt {
        let rv = g_date_time_get_week_numbering_year(cast(ptr))
        return CInt(rv)
    }

    /// Returns the ISO 8601 week number for the week containing @datetime.
    /// The ISO 8601 week number is the same for every day of the week (from
    /// Moday through Sunday).  That can produce some unusual results
    /// (described below).
    /// 
    /// The first week of the year is week 1.  This is the week that contains
    /// the first Thursday of the year.  Equivalently, this is the first week
    /// that has more than 4 of its days falling within the calendar year.
    /// 
    /// The value 0 is never returned by this function.  Days contained
    /// within a year but occurring before the first ISO 8601 week of that
    /// year are considered as being contained in the last week of the
    /// previous year.  Similarly, the final days of a calendar year may be
    /// considered as being part of the first ISO 8601 week of the next year
    /// if 4 or more days of that week are contained within the new year.
    public func get_week_of_year() -> CInt {
        let rv = g_date_time_get_week_of_year(cast(ptr))
        return CInt(rv)
    }

    /// Retrieves the year represented by @datetime in the Gregorian calendar.
    public func get_year() -> CInt {
        let rv = g_date_time_get_year(cast(ptr))
        return CInt(rv)
    }

    /// Retrieves the Gregorian day, month, and year of a given #GDateTime.
    public func get_ymd(year: UnsafeMutablePointer<gint>, month: UnsafeMutablePointer<gint>, day: UnsafeMutablePointer<gint>) {
        g_date_time_get_ymd(cast(ptr), cast(year), cast(month), cast(day))
    }

    /// Determines if daylight savings time is in effect at the time and in
    /// the time zone of @datetime.
    public func is_daylight_savings() -> Bool {
        let rv = g_date_time_is_daylight_savings(cast(ptr))
        return Bool(rv != 0)
    }

    /// Atomically increments the reference count of @datetime by one.
    public func ref() -> UnsafeMutablePointer<GDateTime>! {
        let rv = g_date_time_ref(cast(ptr))
        return cast(rv)
    }

    /// Creates a new #GDateTime corresponding to the same instant in time as
    /// @datetime, but in the local time zone.
    /// 
    /// This call is equivalent to calling g_date_time_to_timezone() with the
    /// time zone returned by g_time_zone_new_local().
    public func to_local() -> UnsafeMutablePointer<GDateTime>! {
        let rv = g_date_time_to_local(cast(ptr))
        return cast(rv)
    }

    /// Stores the instant in time that @datetime represents into @tv.
    /// 
    /// The time contained in a #GTimeVal is always stored in the form of
    /// seconds elapsed since 1970-01-01 00:00:00 UTC, regardless of the time
    /// zone associated with @datetime.
    /// 
    /// On systems where 'long' is 32bit (ie: all 32bit systems and all
    /// Windows systems), a #GTimeVal is incapable of storing the entire
    /// range of values that #GDateTime is capable of expressing.  On those
    /// systems, this function returns %FALSE to indicate that the time is
    /// out of range.
    /// 
    /// On systems where 'long' is 64bit, this function never fails.
    public func to_timeval(tv: TimeValProtocol) -> Bool {
        let rv = g_date_time_to_timeval(cast(ptr), cast(tv.ptr))
        return Bool(rv != 0)
    }

    /// Create a new #GDateTime corresponding to the same instant in time as
    /// @datetime, but in the time zone @tz.
    /// 
    /// This call can fail in the case that the time goes out of bounds.  For
    /// example, converting 0001-01-01 00:00:00 UTC to a time zone west of
    /// Greenwich will fail (due to the year 0 being out of range).
    /// 
    /// You should release the return value by calling g_date_time_unref()
    /// when you are done with it.
    public func to_timezone(tz: TimeZoneProtocol) -> UnsafeMutablePointer<GDateTime>! {
        let rv = g_date_time_to_timezone(cast(ptr), cast(tz.ptr))
        return cast(rv)
    }

    /// Gives the Unix time corresponding to @datetime, rounding down to the
    /// nearest second.
    /// 
    /// Unix time is the number of seconds that have elapsed since 1970-01-01
    /// 00:00:00 UTC, regardless of the time zone associated with @datetime.
    public func to_unix() -> Int64 {
        let rv = g_date_time_to_unix(cast(ptr))
        return Int64(rv)
    }

    /// Creates a new #GDateTime corresponding to the same instant in time as
    /// @datetime, but in UTC.
    /// 
    /// This call is equivalent to calling g_date_time_to_timezone() with the
    /// time zone returned by g_time_zone_new_utc().
    public func to_utc() -> UnsafeMutablePointer<GDateTime>! {
        let rv = g_date_time_to_utc(cast(ptr))
        return cast(rv)
    }

    /// Atomically decrements the reference count of @datetime by one.
    /// 
    /// When the reference count reaches zero, the resources allocated by
    /// @datetime are freed
    public func unref() {
        g_date_time_unref(cast(ptr))
    }
}



public protocol DebugKeyProtocol {
    var ptr: UnsafeMutablePointer<GDebugKey> { get }
}

public struct DebugKeyRef: DebugKeyProtocol {
    public let ptr: UnsafeMutablePointer<GDebugKey>
}

public extension DebugKeyRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GDebugKey>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GDebugKey>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GDebugKey>(opaquePointer)
    }

    }

public class DebugKey: DebugKeyProtocol {
    public let ptr: UnsafeMutablePointer<GDebugKey>

    public init(ptr: UnsafeMutablePointer<GDebugKey>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension DebugKey {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GDebugKey>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GDebugKey>(opaquePointer))
    }

    }

public extension DebugKeyProtocol {
}



public protocol DirProtocol {
    var ptr: UnsafeMutablePointer<GDir> { get }
}

public struct DirRef: DirProtocol {
    public let ptr: UnsafeMutablePointer<GDir>
}

public extension DirRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GDir>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GDir>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GDir>(opaquePointer)
    }

        /// Opens a directory for reading. The names of the files in the
    /// directory can then be retrieved using g_dir_read_name().  Note
    /// that the ordering is not defined.
    public static func open(path: UnsafePointer<gchar>, flags: CUnsignedInt) throws -> DirRef! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dir_open(cast(path), guint(flags), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return rv.map { DirRef(ptr: cast($0)) }
    }
}

public class Dir: DirProtocol {
    public let ptr: UnsafeMutablePointer<GDir>

    public init(ptr: UnsafeMutablePointer<GDir>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension Dir {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GDir>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GDir>(opaquePointer))
    }

        /// Opens a directory for reading. The names of the files in the
    /// directory can then be retrieved using g_dir_read_name().  Note
    /// that the ordering is not defined.
    public static func open(path: UnsafePointer<gchar>, flags: CUnsignedInt) throws -> Dir! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dir_open(cast(path), guint(flags), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return rv.map { Dir(ptr: cast($0)) }
    }
}

public extension DirProtocol {
    /// Closes the directory and deallocates all related resources.
    public func close() {
        g_dir_close(cast(ptr))
    }

    /// Retrieves the name of another entry in the directory, or %NULL.
    /// The order of entries returned from this function is not defined,
    /// and may vary by file system or other operating-system dependent
    /// factors.
    /// 
    /// %NULL may also be returned in case of errors. On Unix, you can
    /// check `errno` to find out if %NULL was returned because of an error.
    /// 
    /// On Unix, the '.' and '..' entries are omitted, and the returned
    /// name is in the on-disk encoding.
    /// 
    /// On Windows, as is true of all GLib functions which operate on
    /// filenames, the returned name is in UTF-8.
    public func read_name() -> UnsafePointer<gchar>! {
        let rv = g_dir_read_name(cast(ptr))
        return cast(rv)
    }

    /// Resets the given directory. The next call to g_dir_read_name()
    /// will return the first entry again.
    public func rewind() {
        g_dir_rewind(cast(ptr))
    }
}



public protocol ErrorTypeProtocol: ErrorProtocol {
    var ptr: UnsafeMutablePointer<GError> { get }
}

public struct ErrorRef: ErrorTypeProtocol {
    public let ptr: UnsafeMutablePointer<GError>
}

public extension ErrorRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GError>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GError>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GError>(opaquePointer)
    }

    
    // *** new() is not available because it has a varargs (...) parameter!


    /// Creates a new #GError; unlike g_error_new(), @message is
    /// not a printf()-style format string. Use this function if
    /// @message contains text you don't have control over,
    /// that could include printf() escape sequences.
    public init(literal domain: Quark, code: CInt, message: UnsafePointer<gchar>) {
        let rv = g_error_new_literal(domain, gint(code), cast(message))
        self.ptr = cast(rv)
    }

    /// Creates a new #GError with the given @domain and @code,
    /// and a message formatted with @format.
    public init(valist domain: Quark, code: CInt, format: UnsafePointer<gchar>, args: CVaListPointer) {
        let rv = g_error_new_valist(domain, gint(code), cast(format), args)
        self.ptr = cast(rv)
    }
    /// Creates a new #GError; unlike g_error_new(), @message is
    /// not a printf()-style format string. Use this function if
    /// @message contains text you don't have control over,
    /// that could include printf() escape sequences.
    public static func new_literal(domain: Quark, code: CInt, message: UnsafePointer<gchar>) -> ErrorRef! {
        let rv = g_error_new_literal(domain, gint(code), cast(message))
        return rv.map { ErrorRef(ptr: cast($0)) }
    }

    /// Creates a new #GError with the given @domain and @code,
    /// and a message formatted with @format.
    public static func new_valist(domain: Quark, code: CInt, format: UnsafePointer<gchar>, args: CVaListPointer) -> ErrorRef! {
        let rv = g_error_new_valist(domain, gint(code), cast(format), args)
        return rv.map { ErrorRef(ptr: cast($0)) }
    }
}

public class ErrorType: ErrorTypeProtocol {
    public let ptr: UnsafeMutablePointer<GError>

    public init(ptr: UnsafeMutablePointer<GError>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension ErrorType {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GError>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GError>(opaquePointer))
    }

    
    // *** new() is not available because it has a varargs (...) parameter!


    /// Creates a new #GError; unlike g_error_new(), @message is
    /// not a printf()-style format string. Use this function if
    /// @message contains text you don't have control over,
    /// that could include printf() escape sequences.
    public convenience init(literal domain: Quark, code: CInt, message: UnsafePointer<gchar>) {
        let rv = g_error_new_literal(domain, gint(code), cast(message))
        self.init(ptr: cast(rv))
    }

    /// Creates a new #GError with the given @domain and @code,
    /// and a message formatted with @format.
    public convenience init(valist domain: Quark, code: CInt, format: UnsafePointer<gchar>, args: CVaListPointer) {
        let rv = g_error_new_valist(domain, gint(code), cast(format), args)
        self.init(ptr: cast(rv))
    }
    /// Creates a new #GError; unlike g_error_new(), @message is
    /// not a printf()-style format string. Use this function if
    /// @message contains text you don't have control over,
    /// that could include printf() escape sequences.
    public static func new_literal(domain: Quark, code: CInt, message: UnsafePointer<gchar>) -> ErrorType! {
        let rv = g_error_new_literal(domain, gint(code), cast(message))
        return rv.map { ErrorType(ptr: cast($0)) }
    }

    /// Creates a new #GError with the given @domain and @code,
    /// and a message formatted with @format.
    public static func new_valist(domain: Quark, code: CInt, format: UnsafePointer<gchar>, args: CVaListPointer) -> ErrorType! {
        let rv = g_error_new_valist(domain, gint(code), cast(format), args)
        return rv.map { ErrorType(ptr: cast($0)) }
    }
}

public extension ErrorTypeProtocol {
    /// Makes a copy of @error.
    public func copy() -> UnsafeMutablePointer<GError>! {
        let rv = g_error_copy(cast(ptr))
        return cast(rv)
    }

    /// Frees a #GError and associated resources.
    public func free() {
        g_error_free(cast(ptr))
    }

    /// Returns %TRUE if @error matches @domain and @code, %FALSE
    /// otherwise. In particular, when @error is %NULL, %FALSE will
    /// be returned.
    /// 
    /// If @domain contains a `FAILED` (or otherwise generic) error code,
    /// you should generally not check for it explicitly, but should
    /// instead treat any not-explicitly-recognized error code as being
    /// equivalent to the `FAILED` code. This way, if the domain is
    /// extended in the future to provide a more specific error code for
    /// a certain case, your code will still work.
    public func matches(domain: Quark, code: CInt) -> Bool {
        let rv = g_error_matches(cast(ptr), domain, gint(code))
        return Bool(rv != 0)
    }
}



public protocol HashTableProtocol {
    var ptr: UnsafeMutablePointer<GHashTable> { get }
}

public struct HashTableRef: HashTableProtocol {
    public let ptr: UnsafeMutablePointer<GHashTable>
}

public extension HashTableRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GHashTable>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GHashTable>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GHashTable>(opaquePointer)
    }

        /// Creates a new #GHashTable like g_hash_table_new() with a reference
    /// count of 1 and allows to specify functions to free the memory
    /// allocated for the key and value that get called when removing the
    /// entry from the #GHashTable.
    /// 
    /// Since version 2.42 it is permissible for destroy notify functions to
    /// recursively remove further items from the hash table. This is only
    /// permissible if the application still holds a reference to the hash table.
    /// This means that you may need to ensure that the hash table is empty by
    /// calling g_hash_table_remove_all before releasing the last reference using
    /// g_hash_table_unref().
    public static func new_full(hash_func: HashFunc, key_equal_func: EqualFunc, key_destroy_func: DestroyNotify, value_destroy_func: DestroyNotify) -> HashTableRef! {
        let rv = g_hash_table_new_full(hash_func, key_equal_func, key_destroy_func, value_destroy_func)
        return rv.map { HashTableRef(ptr: cast($0)) }
    }
}

public class HashTable: HashTableProtocol {
    public let ptr: UnsafeMutablePointer<GHashTable>

    public init(ptr: UnsafeMutablePointer<GHashTable>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension HashTable {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GHashTable>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GHashTable>(opaquePointer))
    }

        /// Creates a new #GHashTable like g_hash_table_new() with a reference
    /// count of 1 and allows to specify functions to free the memory
    /// allocated for the key and value that get called when removing the
    /// entry from the #GHashTable.
    /// 
    /// Since version 2.42 it is permissible for destroy notify functions to
    /// recursively remove further items from the hash table. This is only
    /// permissible if the application still holds a reference to the hash table.
    /// This means that you may need to ensure that the hash table is empty by
    /// calling g_hash_table_remove_all before releasing the last reference using
    /// g_hash_table_unref().
    public static func new_full(hash_func: HashFunc, key_equal_func: EqualFunc, key_destroy_func: DestroyNotify, value_destroy_func: DestroyNotify) -> HashTable! {
        let rv = g_hash_table_new_full(hash_func, key_equal_func, key_destroy_func, value_destroy_func)
        return rv.map { HashTable(ptr: cast($0)) }
    }
}

public extension HashTableProtocol {
    /// This is a convenience function for using a #GHashTable as a set.  It
    /// is equivalent to calling g_hash_table_replace() with @key as both the
    /// key and the value.
    /// 
    /// When a hash table only ever contains keys that have themselves as the
    /// corresponding value it is able to be stored more efficiently.  See
    /// the discussion in the section description.
    public func add(key: OpaquePointer) -> Bool {
        let rv = g_hash_table_add(cast(ptr), cast(key))
        return Bool(rv != 0)
    }

    /// Checks if @key is in @hash_table.
    public func contains(key: gconstpointer) -> Bool {
        let rv = g_hash_table_contains(cast(ptr), cast(key))
        return Bool(rv != 0)
    }

    /// Destroys all keys and values in the #GHashTable and decrements its
    /// reference count by 1. If keys and/or values are dynamically allocated,
    /// you should either free them first or create the #GHashTable with destroy
    /// notifiers using g_hash_table_new_full(). In the latter case the destroy
    /// functions you supplied will be called on all keys and values during the
    /// destruction phase.
    public func destroy() {
        g_hash_table_destroy(cast(ptr))
    }

    /// Calls the given function for key/value pairs in the #GHashTable
    /// until @predicate returns %TRUE. The function is passed the key
    /// and value of each pair, and the given @user_data parameter. The
    /// hash table may not be modified while iterating over it (you can't
    /// add/remove items).
    /// 
    /// Note, that hash tables are really only optimized for forward
    /// lookups, i.e. g_hash_table_lookup(). So code that frequently issues
    /// g_hash_table_find() or g_hash_table_foreach() (e.g. in the order of
    /// once per every entry in a hash table) should probably be reworked
    /// to use additional or different data structures for reverse lookups
    /// (keep in mind that an O(n) find/foreach operation issued for all n
    /// values in a hash table ends up needing O(n*n) operations).
    public func find(predicate: HRFunc, user_data: OpaquePointer) -> OpaquePointer! {
        let rv = g_hash_table_find(cast(ptr), predicate, cast(user_data))
        return cast(rv)
    }

    /// Calls the given function for each of the key/value pairs in the
    /// #GHashTable.  The function is passed the key and value of each
    /// pair, and the given @user_data parameter.  The hash table may not
    /// be modified while iterating over it (you can't add/remove
    /// items). To remove all items matching a predicate, use
    /// g_hash_table_foreach_remove().
    /// 
    /// See g_hash_table_find() for performance caveats for linear
    /// order searches in contrast to g_hash_table_lookup().
    public func foreach(func_: HFunc, user_data: OpaquePointer) {
        g_hash_table_foreach(cast(ptr), func_, cast(user_data))
    }

    /// Calls the given function for each key/value pair in the
    /// #GHashTable. If the function returns %TRUE, then the key/value
    /// pair is removed from the #GHashTable. If you supplied key or
    /// value destroy functions when creating the #GHashTable, they are
    /// used to free the memory allocated for the removed keys and values.
    /// 
    /// See #GHashTableIter for an alternative way to loop over the
    /// key/value pairs in the hash table.
    public func foreach_remove(func_: HRFunc, user_data: OpaquePointer) -> CUnsignedInt {
        let rv = g_hash_table_foreach_remove(cast(ptr), func_, cast(user_data))
        return CUnsignedInt(rv)
    }

    /// Calls the given function for each key/value pair in the
    /// #GHashTable. If the function returns %TRUE, then the key/value
    /// pair is removed from the #GHashTable, but no key or value
    /// destroy functions are called.
    /// 
    /// See #GHashTableIter for an alternative way to loop over the
    /// key/value pairs in the hash table.
    public func foreach_steal(func_: HRFunc, user_data: OpaquePointer) -> CUnsignedInt {
        let rv = g_hash_table_foreach_steal(cast(ptr), func_, cast(user_data))
        return CUnsignedInt(rv)
    }

    /// Retrieves every key inside @hash_table. The returned data is valid
    /// until changes to the hash release those keys.
    /// 
    /// This iterates over every entry in the hash table to build its return value.
    /// To iterate over the entries in a #GHashTable more efficiently, use a
    /// #GHashTableIter.
    public func get_keys() -> UnsafeMutablePointer<GList>! {
        let rv = g_hash_table_get_keys(cast(ptr))
        return cast(rv)
    }

    /// Retrieves every key inside @hash_table, as an array.
    /// 
    /// The returned array is %NULL-terminated but may contain %NULL as a
    /// key.  Use @length to determine the true length if it's possible that
    /// %NULL was used as the value for a key.
    /// 
    /// Note: in the common case of a string-keyed #GHashTable, the return
    /// value of this function can be conveniently cast to (const gchar **).
    /// 
    /// This iterates over every entry in the hash table to build its return value.
    /// To iterate over the entries in a #GHashTable more efficiently, use a
    /// #GHashTableIter.
    /// 
    /// You should always free the return result with g_free().  In the
    /// above-mentioned case of a string-keyed hash table, it may be
    /// appropriate to use g_strfreev() if you call g_hash_table_steal_all()
    /// first to transfer ownership of the keys.
    public func get_keys_as_array(length: UnsafeMutablePointer<guint>) -> UnsafeMutablePointer<gpointer>! {
        let rv = g_hash_table_get_keys_as_array(cast(ptr), cast(length))
        return cast(rv)
    }

    /// Retrieves every value inside @hash_table. The returned data
    /// is valid until @hash_table is modified.
    /// 
    /// This iterates over every entry in the hash table to build its return value.
    /// To iterate over the entries in a #GHashTable more efficiently, use a
    /// #GHashTableIter.
    public func get_values() -> UnsafeMutablePointer<GList>! {
        let rv = g_hash_table_get_values(cast(ptr))
        return cast(rv)
    }

    /// Inserts a new key and value into a #GHashTable.
    /// 
    /// If the key already exists in the #GHashTable its current
    /// value is replaced with the new value. If you supplied a
    /// @value_destroy_func when creating the #GHashTable, the old
    /// value is freed using that function. If you supplied a
    /// @key_destroy_func when creating the #GHashTable, the passed
    /// key is freed using that function.
    public func insert(key: OpaquePointer, value: OpaquePointer) -> Bool {
        let rv = g_hash_table_insert(cast(ptr), cast(key), cast(value))
        return Bool(rv != 0)
    }

    /// Looks up a key in a #GHashTable. Note that this function cannot
    /// distinguish between a key that is not present and one which is present
    /// and has the value %NULL. If you need this distinction, use
    /// g_hash_table_lookup_extended().
    public func lookup(key: gconstpointer) -> OpaquePointer! {
        let rv = g_hash_table_lookup(cast(ptr), cast(key))
        return cast(rv)
    }

    /// Looks up a key in the #GHashTable, returning the original key and the
    /// associated value and a #gboolean which is %TRUE if the key was found. This
    /// is useful if you need to free the memory allocated for the original key,
    /// for example before calling g_hash_table_remove().
    /// 
    /// You can actually pass %NULL for @lookup_key to test
    /// whether the %NULL key exists, provided the hash and equal functions
    /// of @hash_table are %NULL-safe.
    public func lookup_extended(lookup_key: gconstpointer, orig_key: UnsafeMutablePointer<gpointer>, value: UnsafeMutablePointer<gpointer>) -> Bool {
        let rv = g_hash_table_lookup_extended(cast(ptr), cast(lookup_key), cast(orig_key), cast(value))
        return Bool(rv != 0)
    }

    /// Atomically increments the reference count of @hash_table by one.
    /// This function is MT-safe and may be called from any thread.
    public func ref() -> UnsafeMutablePointer<GHashTable>! {
        let rv = g_hash_table_ref(cast(ptr))
        return cast(rv)
    }

    /// Removes a key and its associated value from a #GHashTable.
    /// 
    /// If the #GHashTable was created using g_hash_table_new_full(), the
    /// key and value are freed using the supplied destroy functions, otherwise
    /// you have to make sure that any dynamically allocated values are freed
    /// yourself.
    public func remove(key: gconstpointer) -> Bool {
        let rv = g_hash_table_remove(cast(ptr), cast(key))
        return Bool(rv != 0)
    }

    /// Removes all keys and their associated values from a #GHashTable.
    /// 
    /// If the #GHashTable was created using g_hash_table_new_full(),
    /// the keys and values are freed using the supplied destroy functions,
    /// otherwise you have to make sure that any dynamically allocated
    /// values are freed yourself.
    public func remove_all() {
        g_hash_table_remove_all(cast(ptr))
    }

    /// Inserts a new key and value into a #GHashTable similar to
    /// g_hash_table_insert(). The difference is that if the key
    /// already exists in the #GHashTable, it gets replaced by the
    /// new key. If you supplied a @value_destroy_func when creating
    /// the #GHashTable, the old value is freed using that function.
    /// If you supplied a @key_destroy_func when creating the
    /// #GHashTable, the old key is freed using that function.
    public func replace(key: OpaquePointer, value: OpaquePointer) -> Bool {
        let rv = g_hash_table_replace(cast(ptr), cast(key), cast(value))
        return Bool(rv != 0)
    }

    /// Returns the number of elements contained in the #GHashTable.
    public func size() -> CUnsignedInt {
        let rv = g_hash_table_size(cast(ptr))
        return CUnsignedInt(rv)
    }

    /// Removes a key and its associated value from a #GHashTable without
    /// calling the key and value destroy functions.
    public func steal(key: gconstpointer) -> Bool {
        let rv = g_hash_table_steal(cast(ptr), cast(key))
        return Bool(rv != 0)
    }

    /// Removes all keys and their associated values from a #GHashTable
    /// without calling the key and value destroy functions.
    public func steal_all() {
        g_hash_table_steal_all(cast(ptr))
    }

    /// Atomically decrements the reference count of @hash_table by one.
    /// If the reference count drops to 0, all keys and values will be
    /// destroyed, and all memory allocated by the hash table is released.
    /// This function is MT-safe and may be called from any thread.
    public func unref() {
        g_hash_table_unref(cast(ptr))
    }
}



public protocol HashTableIterProtocol {
    var ptr: UnsafeMutablePointer<GHashTableIter> { get }
}

public struct HashTableIterRef: HashTableIterProtocol {
    public let ptr: UnsafeMutablePointer<GHashTableIter>
}

public extension HashTableIterRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GHashTableIter>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GHashTableIter>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GHashTableIter>(opaquePointer)
    }

    }

public class HashTableIter: HashTableIterProtocol {
    public let ptr: UnsafeMutablePointer<GHashTableIter>

    public init(ptr: UnsafeMutablePointer<GHashTableIter>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension HashTableIter {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GHashTableIter>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GHashTableIter>(opaquePointer))
    }

    }

public extension HashTableIterProtocol {
    /// Returns the #GHashTable associated with @iter.
    public func get_hash_table() -> UnsafeMutablePointer<GHashTable>! {
        let rv = g_hash_table_iter_get_hash_table(cast(ptr))
        return cast(rv)
    }

    /// Initializes a key/value pair iterator and associates it with
    /// @hash_table. Modifying the hash table after calling this function
    /// invalidates the returned iterator.
    /// |[<!-- language="C" -->
    /// GHashTableIter iter;
    /// gpointer key, value;
    /// 
    /// g_hash_table_iter_init (&iter, hash_table);
    /// while (g_hash_table_iter_next (&iter, &key, &value))
    ///   {
    ///     // do something with key and value
    ///   }
    /// ]|
    public func init_(hash_table: UnsafeMutablePointer<GHashTable>) {
        g_hash_table_iter_init(cast(ptr), cast(hash_table))
    }

    /// Advances @iter and retrieves the key and/or value that are now
    /// pointed to as a result of this advancement. If %FALSE is returned,
    /// @key and @value are not set, and the iterator becomes invalid.
    public func next(key: UnsafeMutablePointer<gpointer>, value: UnsafeMutablePointer<gpointer>) -> Bool {
        let rv = g_hash_table_iter_next(cast(ptr), cast(key), cast(value))
        return Bool(rv != 0)
    }

    /// Removes the key/value pair currently pointed to by the iterator
    /// from its associated #GHashTable. Can only be called after
    /// g_hash_table_iter_next() returned %TRUE, and cannot be called
    /// more than once for the same key/value pair.
    /// 
    /// If the #GHashTable was created using g_hash_table_new_full(),
    /// the key and value are freed using the supplied destroy functions,
    /// otherwise you have to make sure that any dynamically allocated
    /// values are freed yourself.
    /// 
    /// It is safe to continue iterating the #GHashTable afterward:
    /// |[<!-- language="C" -->
    /// while (g_hash_table_iter_next (&iter, &key, &value))
    ///   {
    ///     if (condition)
    ///       g_hash_table_iter_remove (&iter);
    ///   }
    /// ]|
    public func remove() {
        g_hash_table_iter_remove(cast(ptr))
    }

    /// Replaces the value currently pointed to by the iterator
    /// from its associated #GHashTable. Can only be called after
    /// g_hash_table_iter_next() returned %TRUE.
    /// 
    /// If you supplied a @value_destroy_func when creating the
    /// #GHashTable, the old value is freed using that function.
    public func replace(value: OpaquePointer) {
        g_hash_table_iter_replace(cast(ptr), cast(value))
    }

    /// Removes the key/value pair currently pointed to by the
    /// iterator from its associated #GHashTable, without calling
    /// the key and value destroy functions. Can only be called
    /// after g_hash_table_iter_next() returned %TRUE, and cannot
    /// be called more than once for the same key/value pair.
    public func steal() {
        g_hash_table_iter_steal(cast(ptr))
    }
}



public protocol HmacProtocol {
    var ptr: UnsafeMutablePointer<GHmac> { get }
}

public struct HmacRef: HmacProtocol {
    public let ptr: UnsafeMutablePointer<GHmac>
}

public extension HmacRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GHmac>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GHmac>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GHmac>(opaquePointer)
    }

    }

public class Hmac: HmacProtocol {
    public let ptr: UnsafeMutablePointer<GHmac>

    public init(ptr: UnsafeMutablePointer<GHmac>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension Hmac {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GHmac>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GHmac>(opaquePointer))
    }

    }

public extension HmacProtocol {
    /// Copies a #GHmac. If @hmac has been closed, by calling
    /// g_hmac_get_string() or g_hmac_get_digest(), the copied
    /// HMAC will be closed as well.
    public func copy() -> UnsafeMutablePointer<GHmac>! {
        let rv = g_hmac_copy(cast(ptr))
        return cast(rv)
    }

    /// Gets the digest from @checksum as a raw binary array and places it
    /// into @buffer. The size of the digest depends on the type of checksum.
    /// 
    /// Once this function has been called, the #GHmac is closed and can
    /// no longer be updated with g_checksum_update().
    public func get_digest(buffer: UnsafeMutablePointer<guint8>, digest_len: UnsafeMutablePointer<gsize>) {
        g_hmac_get_digest(cast(ptr), cast(buffer), cast(digest_len))
    }

    /// Gets the HMAC as an hexadecimal string.
    /// 
    /// Once this function has been called the #GHmac can no longer be
    /// updated with g_hmac_update().
    /// 
    /// The hexadecimal characters will be lower case.
    public func get_string() -> UnsafePointer<gchar>! {
        let rv = g_hmac_get_string(cast(ptr))
        return cast(rv)
    }

    /// Atomically increments the reference count of @hmac by one.
    /// 
    /// This function is MT-safe and may be called from any thread.
    public func ref() -> UnsafeMutablePointer<GHmac>! {
        let rv = g_hmac_ref(cast(ptr))
        return cast(rv)
    }

    /// Atomically decrements the reference count of @hmac by one.
    /// 
    /// If the reference count drops to 0, all keys and values will be
    /// destroyed, and all memory allocated by the hash table is released.
    /// This function is MT-safe and may be called from any thread.
    /// Frees the memory allocated for @hmac.
    public func unref() {
        g_hmac_unref(cast(ptr))
    }

    /// Feeds @data into an existing #GHmac.
    /// 
    /// The HMAC must still be open, that is g_hmac_get_string() or
    /// g_hmac_get_digest() must not have been called on @hmac.
    public func update(data: UnsafeMutablePointer<guchar>, length: gssize) {
        g_hmac_update(cast(ptr), cast(data), length)
    }
}



public protocol HookProtocol {
    var ptr: UnsafeMutablePointer<GHook> { get }
}

public struct HookRef: HookProtocol {
    public let ptr: UnsafeMutablePointer<GHook>
}

public extension HookRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GHook>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GHook>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GHook>(opaquePointer)
    }

        /// Allocates space for a #GHook and initializes it.
    public static func alloc(hook_list: HookListProtocol) -> HookRef! {
        let rv = g_hook_alloc(cast(hook_list.ptr))
        return rv.map { HookRef(ptr: cast($0)) }
    }

    /// Finds a #GHook in a #GHookList using the given function to
    /// test for a match.
    public static func find(hook_list: HookListProtocol, need_valids: Bool, func_: HookFindFunc, data: OpaquePointer) -> HookRef! {
        let rv = g_hook_find(cast(hook_list.ptr), gboolean(need_valids ? 1 : 0), func_, cast(data))
        return rv.map { HookRef(ptr: cast($0)) }
    }

    /// Finds a #GHook in a #GHookList with the given data.
    public static func find_data(hook_list: HookListProtocol, need_valids: Bool, data: OpaquePointer) -> HookRef! {
        let rv = g_hook_find_data(cast(hook_list.ptr), gboolean(need_valids ? 1 : 0), cast(data))
        return rv.map { HookRef(ptr: cast($0)) }
    }

    /// Finds a #GHook in a #GHookList with the given function.
    public static func find_func(hook_list: HookListProtocol, need_valids: Bool, func_: OpaquePointer) -> HookRef! {
        let rv = g_hook_find_func(cast(hook_list.ptr), gboolean(need_valids ? 1 : 0), cast(func_))
        return rv.map { HookRef(ptr: cast($0)) }
    }

    /// Finds a #GHook in a #GHookList with the given function and data.
    public static func find_func_data(hook_list: HookListProtocol, need_valids: Bool, func_: OpaquePointer, data: OpaquePointer) -> HookRef! {
        let rv = g_hook_find_func_data(cast(hook_list.ptr), gboolean(need_valids ? 1 : 0), cast(func_), cast(data))
        return rv.map { HookRef(ptr: cast($0)) }
    }

    /// Returns the first #GHook in a #GHookList which has not been destroyed.
    /// The reference count for the #GHook is incremented, so you must call
    /// g_hook_unref() to restore it when no longer needed. (Or call
    /// g_hook_next_valid() if you are stepping through the #GHookList.)
    public static func first_valid(hook_list: HookListProtocol, may_be_in_call: Bool) -> HookRef! {
        let rv = g_hook_first_valid(cast(hook_list.ptr), gboolean(may_be_in_call ? 1 : 0))
        return rv.map { HookRef(ptr: cast($0)) }
    }

    /// Returns the #GHook with the given id, or %NULL if it is not found.
    public static func get_(hook_list: HookListProtocol, hook_id: CUnsignedLong) -> HookRef! {
        let rv = g_hook_get(cast(hook_list.ptr), gulong(hook_id))
        return rv.map { HookRef(ptr: cast($0)) }
    }

    /// Returns the next #GHook in a #GHookList which has not been destroyed.
    /// The reference count for the #GHook is incremented, so you must call
    /// g_hook_unref() to restore it when no longer needed. (Or continue to call
    /// g_hook_next_valid() until %NULL is returned.)
    public static func next_valid(hook_list: HookListProtocol, hook: HookProtocol, may_be_in_call: Bool) -> HookRef! {
        let rv = g_hook_next_valid(cast(hook_list.ptr), cast(hook.ptr), gboolean(may_be_in_call ? 1 : 0))
        return rv.map { HookRef(ptr: cast($0)) }
    }

    /// Increments the reference count for a #GHook.
    public static func ref(hook_list: HookListProtocol, hook: HookProtocol) -> HookRef! {
        let rv = g_hook_ref(cast(hook_list.ptr), cast(hook.ptr))
        return rv.map { HookRef(ptr: cast($0)) }
    }
}

public class Hook: HookProtocol {
    public let ptr: UnsafeMutablePointer<GHook>

    public init(ptr: UnsafeMutablePointer<GHook>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension Hook {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GHook>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GHook>(opaquePointer))
    }

        /// Allocates space for a #GHook and initializes it.
    public static func alloc(hook_list: HookListProtocol) -> Hook! {
        let rv = g_hook_alloc(cast(hook_list.ptr))
        return rv.map { Hook(ptr: cast($0)) }
    }

    /// Finds a #GHook in a #GHookList using the given function to
    /// test for a match.
    public static func find(hook_list: HookListProtocol, need_valids: Bool, func_: HookFindFunc, data: OpaquePointer) -> Hook! {
        let rv = g_hook_find(cast(hook_list.ptr), gboolean(need_valids ? 1 : 0), func_, cast(data))
        return rv.map { Hook(ptr: cast($0)) }
    }

    /// Finds a #GHook in a #GHookList with the given data.
    public static func find_data(hook_list: HookListProtocol, need_valids: Bool, data: OpaquePointer) -> Hook! {
        let rv = g_hook_find_data(cast(hook_list.ptr), gboolean(need_valids ? 1 : 0), cast(data))
        return rv.map { Hook(ptr: cast($0)) }
    }

    /// Finds a #GHook in a #GHookList with the given function.
    public static func find_func(hook_list: HookListProtocol, need_valids: Bool, func_: OpaquePointer) -> Hook! {
        let rv = g_hook_find_func(cast(hook_list.ptr), gboolean(need_valids ? 1 : 0), cast(func_))
        return rv.map { Hook(ptr: cast($0)) }
    }

    /// Finds a #GHook in a #GHookList with the given function and data.
    public static func find_func_data(hook_list: HookListProtocol, need_valids: Bool, func_: OpaquePointer, data: OpaquePointer) -> Hook! {
        let rv = g_hook_find_func_data(cast(hook_list.ptr), gboolean(need_valids ? 1 : 0), cast(func_), cast(data))
        return rv.map { Hook(ptr: cast($0)) }
    }

    /// Returns the first #GHook in a #GHookList which has not been destroyed.
    /// The reference count for the #GHook is incremented, so you must call
    /// g_hook_unref() to restore it when no longer needed. (Or call
    /// g_hook_next_valid() if you are stepping through the #GHookList.)
    public static func first_valid(hook_list: HookListProtocol, may_be_in_call: Bool) -> Hook! {
        let rv = g_hook_first_valid(cast(hook_list.ptr), gboolean(may_be_in_call ? 1 : 0))
        return rv.map { Hook(ptr: cast($0)) }
    }

    /// Returns the #GHook with the given id, or %NULL if it is not found.
    public static func get_(hook_list: HookListProtocol, hook_id: CUnsignedLong) -> Hook! {
        let rv = g_hook_get(cast(hook_list.ptr), gulong(hook_id))
        return rv.map { Hook(ptr: cast($0)) }
    }

    /// Returns the next #GHook in a #GHookList which has not been destroyed.
    /// The reference count for the #GHook is incremented, so you must call
    /// g_hook_unref() to restore it when no longer needed. (Or continue to call
    /// g_hook_next_valid() until %NULL is returned.)
    public static func next_valid(hook_list: HookListProtocol, hook: HookProtocol, may_be_in_call: Bool) -> Hook! {
        let rv = g_hook_next_valid(cast(hook_list.ptr), cast(hook.ptr), gboolean(may_be_in_call ? 1 : 0))
        return rv.map { Hook(ptr: cast($0)) }
    }

    /// Increments the reference count for a #GHook.
    public static func ref(hook_list: HookListProtocol, hook: HookProtocol) -> Hook! {
        let rv = g_hook_ref(cast(hook_list.ptr), cast(hook.ptr))
        return rv.map { Hook(ptr: cast($0)) }
    }
}

public extension HookProtocol {
    /// Compares the ids of two #GHook elements, returning a negative value
    /// if the second id is greater than the first.
    public func compare_ids() -> CInt {
        let rv = g_hook_compare_ids(cast(ptr), cast(ptr))
        return CInt(rv)
    }

    /// Removes one #GHook from a #GHookList, marking it
    /// inactive and calling g_hook_unref() on it.
    public func destroy_link(hook_list: HookListProtocol) {
        g_hook_destroy_link(cast(hook_list.ptr), cast(ptr))
    }

    /// Calls the #GHookList @finalize_hook function if it exists,
    /// and frees the memory allocated for the #GHook.
    public func free(hook_list: HookListProtocol) {
        g_hook_free(cast(hook_list.ptr), cast(ptr))
    }

    /// Inserts a #GHook into a #GHookList, before a given #GHook.
    public func insert_before(hook_list: HookListProtocol) {
        g_hook_insert_before(cast(hook_list.ptr), cast(ptr), cast(ptr))
    }

    /// Inserts a #GHook into a #GHookList, sorted by the given function.
    public func insert_sorted(hook_list: HookListProtocol, func_: HookCompareFunc) {
        g_hook_insert_sorted(cast(hook_list.ptr), cast(ptr), func_)
    }

    /// Returns the next #GHook in a #GHookList which has not been destroyed.
    /// The reference count for the #GHook is incremented, so you must call
    /// g_hook_unref() to restore it when no longer needed. (Or continue to call
    /// g_hook_next_valid() until %NULL is returned.)
    public func next_valid(hook_list: HookListProtocol, may_be_in_call: Bool) -> UnsafeMutablePointer<GHook>! {
        let rv = g_hook_next_valid(cast(hook_list.ptr), cast(ptr), gboolean(may_be_in_call ? 1 : 0))
        return cast(rv)
    }

    /// Prepends a #GHook on the start of a #GHookList.
    public func prepend(hook_list: HookListProtocol) {
        g_hook_prepend(cast(hook_list.ptr), cast(ptr))
    }

    /// Increments the reference count for a #GHook.
    public func ref(hook_list: HookListProtocol) -> UnsafeMutablePointer<GHook>! {
        let rv = g_hook_ref(cast(hook_list.ptr), cast(ptr))
        return cast(rv)
    }

    /// Decrements the reference count of a #GHook.
    /// If the reference count falls to 0, the #GHook is removed
    /// from the #GHookList and g_hook_free() is called to free it.
    public func unref(hook_list: HookListProtocol) {
        g_hook_unref(cast(hook_list.ptr), cast(ptr))
    }
}



public protocol HookListProtocol {
    var ptr: UnsafeMutablePointer<GHookList> { get }
}

public struct HookListRef: HookListProtocol {
    public let ptr: UnsafeMutablePointer<GHookList>
}

public extension HookListRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GHookList>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GHookList>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GHookList>(opaquePointer)
    }

    }

public class HookList: HookListProtocol {
    public let ptr: UnsafeMutablePointer<GHookList>

    public init(ptr: UnsafeMutablePointer<GHookList>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension HookList {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GHookList>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GHookList>(opaquePointer))
    }

    }

public extension HookListProtocol {
    /// Removes all the #GHook elements from a #GHookList.
    public func clear() {
        g_hook_list_clear(cast(ptr))
    }

    /// Initializes a #GHookList.
    /// This must be called before the #GHookList is used.
    public func init_(hook_size: CUnsignedInt) {
        g_hook_list_init(cast(ptr), guint(hook_size))
    }

    /// Calls all of the #GHook functions in a #GHookList.
    public func invoke(may_recurse: Bool) {
        g_hook_list_invoke(cast(ptr), gboolean(may_recurse ? 1 : 0))
    }

    /// Calls all of the #GHook functions in a #GHookList.
    /// Any function which returns %FALSE is removed from the #GHookList.
    public func invoke_check(may_recurse: Bool) {
        g_hook_list_invoke_check(cast(ptr), gboolean(may_recurse ? 1 : 0))
    }

    /// Calls a function on each valid #GHook.
    public func marshal(may_recurse: Bool, marshaller: HookMarshaller, marshal_data: OpaquePointer) {
        g_hook_list_marshal(cast(ptr), gboolean(may_recurse ? 1 : 0), marshaller, cast(marshal_data))
    }

    /// Calls a function on each valid #GHook and destroys it if the
    /// function returns %FALSE.
    public func marshal_check(may_recurse: Bool, marshaller: HookCheckMarshaller, marshal_data: OpaquePointer) {
        g_hook_list_marshal_check(cast(ptr), gboolean(may_recurse ? 1 : 0), marshaller, cast(marshal_data))
    }
}



public protocol IConvProtocol {
    var ptr: UnsafeMutablePointer<GIConv> { get }
}

public struct IConvRef: IConvProtocol {
    public let ptr: UnsafeMutablePointer<GIConv>
}

public extension IConvRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GIConv>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GIConv>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GIConv>(opaquePointer)
    }

        /// Same as the standard UNIX routine iconv_open(), but
    /// may be implemented via libiconv on UNIX flavors that lack
    /// a native implementation.
    /// 
    /// GLib provides g_convert() and g_locale_to_utf8() which are likely
    /// more convenient than the raw iconv wrappers.
    public static func open(to_codeset: UnsafePointer<gchar>, from_codeset: UnsafePointer<gchar>) -> IConvRef! {
        let rv = g_iconv_open(cast(to_codeset), cast(from_codeset))
        return rv.map { IConvRef(ptr: cast($0)) }
    }
}

public class IConv: IConvProtocol {
    public let ptr: UnsafeMutablePointer<GIConv>

    public init(ptr: UnsafeMutablePointer<GIConv>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension IConv {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GIConv>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GIConv>(opaquePointer))
    }

        /// Same as the standard UNIX routine iconv_open(), but
    /// may be implemented via libiconv on UNIX flavors that lack
    /// a native implementation.
    /// 
    /// GLib provides g_convert() and g_locale_to_utf8() which are likely
    /// more convenient than the raw iconv wrappers.
    public static func open(to_codeset: UnsafePointer<gchar>, from_codeset: UnsafePointer<gchar>) -> IConv! {
        let rv = g_iconv_open(cast(to_codeset), cast(from_codeset))
        return rv.map { IConv(ptr: cast($0)) }
    }
}

public extension IConvProtocol {

    // *** g_iconv() causes a syntax error and is therefore not available!


    /// Same as the standard UNIX routine iconv_close(), but
    /// may be implemented via libiconv on UNIX flavors that lack
    /// a native implementation. Should be called to clean up
    /// the conversion descriptor from g_iconv_open() when
    /// you are done converting things.
    /// 
    /// GLib provides g_convert() and g_locale_to_utf8() which are likely
    /// more convenient than the raw iconv wrappers.
    public func close() -> CInt {
        let rv = g_iconv_close(cast(ptr))
        return CInt(rv)
    }
}



public protocol IOChannelProtocol {
    var ptr: UnsafeMutablePointer<GIOChannel> { get }
}

public struct IOChannelRef: IOChannelProtocol {
    public let ptr: UnsafeMutablePointer<GIOChannel>
}

public extension IOChannelRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GIOChannel>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GIOChannel>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GIOChannel>(opaquePointer)
    }

        /// Open a file @filename as a #GIOChannel using mode @mode. This
    /// channel will be closed when the last reference to it is dropped,
    /// so there is no need to call g_io_channel_close() (though doing
    /// so will not cause problems, as long as no attempt is made to
    /// access the channel after it is closed).
    public init(file filename: UnsafePointer<gchar>, mode: UnsafePointer<gchar>) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_io_channel_new_file(cast(filename), cast(mode), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        self.ptr = cast(rv)
    }

    /// Creates a new #GIOChannel given a file descriptor. On UNIX systems
    /// this works for plain files, pipes, and sockets.
    /// 
    /// The returned #GIOChannel has a reference count of 1.
    /// 
    /// The default encoding for #GIOChannel is UTF-8. If your application
    /// is reading output from a command using via pipe, you may need to set
    /// the encoding to the encoding of the current locale (see
    /// g_get_charset()) with the g_io_channel_set_encoding() function.
    /// 
    /// If you want to read raw binary data without interpretation, then
    /// call the g_io_channel_set_encoding() function with %NULL for the
    /// encoding argument.
    /// 
    /// This function is available in GLib on Windows, too, but you should
    /// avoid using it on Windows. The domain of file descriptors and
    /// sockets overlap. There is no way for GLib to know which one you mean
    /// in case the argument you pass to this function happens to be both a
    /// valid file descriptor and socket. If that happens a warning is
    /// issued, and GLib assumes that it is the file descriptor you mean.
    public init(unix fd: CInt) {
        let rv = g_io_channel_unix_new(fd)
        self.ptr = cast(rv)
    }
    /// Open a file @filename as a #GIOChannel using mode @mode. This
    /// channel will be closed when the last reference to it is dropped,
    /// so there is no need to call g_io_channel_close() (though doing
    /// so will not cause problems, as long as no attempt is made to
    /// access the channel after it is closed).
    public static func new_file(filename: UnsafePointer<gchar>, mode: UnsafePointer<gchar>) throws -> IOChannelRef! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_io_channel_new_file(cast(filename), cast(mode), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return rv.map { IOChannelRef(ptr: cast($0)) }
    }

    /// Creates a new #GIOChannel given a file descriptor. On UNIX systems
    /// this works for plain files, pipes, and sockets.
    /// 
    /// The returned #GIOChannel has a reference count of 1.
    /// 
    /// The default encoding for #GIOChannel is UTF-8. If your application
    /// is reading output from a command using via pipe, you may need to set
    /// the encoding to the encoding of the current locale (see
    /// g_get_charset()) with the g_io_channel_set_encoding() function.
    /// 
    /// If you want to read raw binary data without interpretation, then
    /// call the g_io_channel_set_encoding() function with %NULL for the
    /// encoding argument.
    /// 
    /// This function is available in GLib on Windows, too, but you should
    /// avoid using it on Windows. The domain of file descriptors and
    /// sockets overlap. There is no way for GLib to know which one you mean
    /// in case the argument you pass to this function happens to be both a
    /// valid file descriptor and socket. If that happens a warning is
    /// issued, and GLib assumes that it is the file descriptor you mean.
    public static func unix_new(fd: CInt) -> IOChannelRef! {
        let rv = g_io_channel_unix_new(fd)
        return rv.map { IOChannelRef(ptr: cast($0)) }
    }
}

public class IOChannel: IOChannelProtocol {
    public let ptr: UnsafeMutablePointer<GIOChannel>

    public init(ptr: UnsafeMutablePointer<GIOChannel>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension IOChannel {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GIOChannel>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GIOChannel>(opaquePointer))
    }

        /// Open a file @filename as a #GIOChannel using mode @mode. This
    /// channel will be closed when the last reference to it is dropped,
    /// so there is no need to call g_io_channel_close() (though doing
    /// so will not cause problems, as long as no attempt is made to
    /// access the channel after it is closed).
    public convenience init(file filename: UnsafePointer<gchar>, mode: UnsafePointer<gchar>) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_io_channel_new_file(cast(filename), cast(mode), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        self.init(ptr: cast(rv))
    }

    /// Creates a new #GIOChannel given a file descriptor. On UNIX systems
    /// this works for plain files, pipes, and sockets.
    /// 
    /// The returned #GIOChannel has a reference count of 1.
    /// 
    /// The default encoding for #GIOChannel is UTF-8. If your application
    /// is reading output from a command using via pipe, you may need to set
    /// the encoding to the encoding of the current locale (see
    /// g_get_charset()) with the g_io_channel_set_encoding() function.
    /// 
    /// If you want to read raw binary data without interpretation, then
    /// call the g_io_channel_set_encoding() function with %NULL for the
    /// encoding argument.
    /// 
    /// This function is available in GLib on Windows, too, but you should
    /// avoid using it on Windows. The domain of file descriptors and
    /// sockets overlap. There is no way for GLib to know which one you mean
    /// in case the argument you pass to this function happens to be both a
    /// valid file descriptor and socket. If that happens a warning is
    /// issued, and GLib assumes that it is the file descriptor you mean.
    public convenience init(unix fd: CInt) {
        let rv = g_io_channel_unix_new(fd)
        self.init(ptr: cast(rv))
    }
    /// Open a file @filename as a #GIOChannel using mode @mode. This
    /// channel will be closed when the last reference to it is dropped,
    /// so there is no need to call g_io_channel_close() (though doing
    /// so will not cause problems, as long as no attempt is made to
    /// access the channel after it is closed).
    public static func new_file(filename: UnsafePointer<gchar>, mode: UnsafePointer<gchar>) throws -> IOChannel! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_io_channel_new_file(cast(filename), cast(mode), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return rv.map { IOChannel(ptr: cast($0)) }
    }

    /// Creates a new #GIOChannel given a file descriptor. On UNIX systems
    /// this works for plain files, pipes, and sockets.
    /// 
    /// The returned #GIOChannel has a reference count of 1.
    /// 
    /// The default encoding for #GIOChannel is UTF-8. If your application
    /// is reading output from a command using via pipe, you may need to set
    /// the encoding to the encoding of the current locale (see
    /// g_get_charset()) with the g_io_channel_set_encoding() function.
    /// 
    /// If you want to read raw binary data without interpretation, then
    /// call the g_io_channel_set_encoding() function with %NULL for the
    /// encoding argument.
    /// 
    /// This function is available in GLib on Windows, too, but you should
    /// avoid using it on Windows. The domain of file descriptors and
    /// sockets overlap. There is no way for GLib to know which one you mean
    /// in case the argument you pass to this function happens to be both a
    /// valid file descriptor and socket. If that happens a warning is
    /// issued, and GLib assumes that it is the file descriptor you mean.
    public static func unix_new(fd: CInt) -> IOChannel! {
        let rv = g_io_channel_unix_new(fd)
        return rv.map { IOChannel(ptr: cast($0)) }
    }
}

public extension IOChannelProtocol {
    /// Close an IO channel. Any pending data to be written will be
    /// flushed, ignoring errors. The channel will not be freed until the
    /// last reference is dropped using g_io_channel_unref().
    ///
    /// **close is deprecated:**
    /// Use g_io_channel_shutdown() instead.
    @available(*, deprecated) public func close() {
        g_io_channel_close(cast(ptr))
    }

    /// Flushes the write buffer for the GIOChannel.
    public func flush() throws -> GIOStatus {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_io_channel_flush(cast(ptr), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return rv
    }

    /// This function returns a #GIOCondition depending on whether there
    /// is data to be read/space to write data in the internal buffers in
    /// the #GIOChannel. Only the flags %G_IO_IN and %G_IO_OUT may be set.
    public func get_buffer_condition() -> GIOCondition {
        let rv = g_io_channel_get_buffer_condition(cast(ptr))
        return rv
    }

    /// Gets the buffer size.
    public func get_buffer_size() -> Int {
        let rv = g_io_channel_get_buffer_size(cast(ptr))
        return Int(rv)
    }

    /// Returns whether @channel is buffered.
    public func get_buffered() -> Bool {
        let rv = g_io_channel_get_buffered(cast(ptr))
        return Bool(rv != 0)
    }

    /// Returns whether the file/socket/whatever associated with @channel
    /// will be closed when @channel receives its final unref and is
    /// destroyed. The default value of this is %TRUE for channels created
    /// by g_io_channel_new_file (), and %FALSE for all other channels.
    public func get_close_on_unref() -> Bool {
        let rv = g_io_channel_get_close_on_unref(cast(ptr))
        return Bool(rv != 0)
    }

    /// Gets the encoding for the input/output of the channel.
    /// The internal encoding is always UTF-8. The encoding %NULL
    /// makes the channel safe for binary data.
    public func get_encoding() -> UnsafePointer<gchar>! {
        let rv = g_io_channel_get_encoding(cast(ptr))
        return cast(rv)
    }

    /// Gets the current flags for a #GIOChannel, including read-only
    /// flags such as %G_IO_FLAG_IS_READABLE.
    /// 
    /// The values of the flags %G_IO_FLAG_IS_READABLE and %G_IO_FLAG_IS_WRITABLE
    /// are cached for internal use by the channel when it is created.
    /// If they should change at some later point (e.g. partial shutdown
    /// of a socket with the UNIX shutdown() function), the user
    /// should immediately call g_io_channel_get_flags() to update
    /// the internal values of these flags.
    public func get_flags() -> GIOFlags {
        let rv = g_io_channel_get_flags(cast(ptr))
        return rv
    }

    /// This returns the string that #GIOChannel uses to determine
    /// where in the file a line break occurs. A value of %NULL
    /// indicates autodetection.
    public func get_line_term(length: UnsafeMutablePointer<gint>) -> UnsafePointer<gchar>! {
        let rv = g_io_channel_get_line_term(cast(ptr), cast(length))
        return cast(rv)
    }

    /// Initializes a #GIOChannel struct.
    /// 
    /// This is called by each of the above functions when creating a
    /// #GIOChannel, and so is not often needed by the application
    /// programmer (unless you are creating a new type of #GIOChannel).
    public func init_() {
        g_io_channel_init(cast(ptr))
    }

    /// Reads data from a #GIOChannel.
    ///
    /// **read is deprecated:**
    /// Use g_io_channel_read_chars() instead.
    @available(*, deprecated) public func read(buf: UnsafeMutablePointer<gchar>, count: Int, bytes_read: UnsafeMutablePointer<gsize>) -> GIOError {
        let rv = g_io_channel_read(cast(ptr), cast(buf), gsize(count), cast(bytes_read))
        return rv
    }

    /// Replacement for g_io_channel_read() with the new API.
    public func read_chars(buf: UnsafeMutablePointer<gchar>, count: Int, bytes_read: UnsafeMutablePointer<gsize>) throws -> GIOStatus {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_io_channel_read_chars(cast(ptr), cast(buf), gsize(count), cast(bytes_read), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return rv
    }

    /// Reads a line, including the terminating character(s),
    /// from a #GIOChannel into a newly-allocated string.
    /// @str_return will contain allocated memory if the return
    /// is %G_IO_STATUS_NORMAL.
    public func read_line(str_return: UnsafeMutablePointer<UnsafeMutablePointer<gchar>>, length: UnsafeMutablePointer<gsize>, terminator_pos: UnsafeMutablePointer<gsize>) throws -> GIOStatus {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_io_channel_read_line(cast(ptr), cast(str_return), cast(length), cast(terminator_pos), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return rv
    }

    /// Reads a line from a #GIOChannel, using a #GString as a buffer.
    public func read_line_string(buffer: UnsafeMutablePointer<GString>, terminator_pos: UnsafeMutablePointer<gsize>) throws -> GIOStatus {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_io_channel_read_line_string(cast(ptr), cast(buffer), cast(terminator_pos), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return rv
    }

    /// Reads all the remaining data from the file.
    public func read_to_end(str_return: UnsafeMutablePointer<UnsafeMutablePointer<gchar>>, length: UnsafeMutablePointer<gsize>) throws -> GIOStatus {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_io_channel_read_to_end(cast(ptr), cast(str_return), cast(length), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return rv
    }

    /// Reads a Unicode character from @channel.
    /// This function cannot be called on a channel with %NULL encoding.
    public func read_unichar(thechar: UnsafeMutablePointer<gunichar>) throws -> GIOStatus {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_io_channel_read_unichar(cast(ptr), cast(thechar), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return rv
    }

    /// Increments the reference count of a #GIOChannel.
    public func ref() -> UnsafeMutablePointer<GIOChannel>! {
        let rv = g_io_channel_ref(cast(ptr))
        return cast(rv)
    }

    /// Sets the current position in the #GIOChannel, similar to the standard
    /// library function fseek().
    ///
    /// **seek is deprecated:**
    /// Use g_io_channel_seek_position() instead.
    @available(*, deprecated) public func seek(offset: Int64, type: SeekType) -> GIOError {
        let rv = g_io_channel_seek(cast(ptr), gint64(offset), type)
        return rv
    }

    /// Replacement for g_io_channel_seek() with the new API.
    public func seek_position(offset: Int64, type: SeekType) throws -> GIOStatus {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_io_channel_seek_position(cast(ptr), gint64(offset), type, &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return rv
    }

    /// Sets the buffer size.
    public func set_buffer_size(size: Int) {
        g_io_channel_set_buffer_size(cast(ptr), gsize(size))
    }

    /// The buffering state can only be set if the channel's encoding
    /// is %NULL. For any other encoding, the channel must be buffered.
    /// 
    /// A buffered channel can only be set unbuffered if the channel's
    /// internal buffers have been flushed. Newly created channels or
    /// channels which have returned %G_IO_STATUS_EOF
    /// not require such a flush. For write-only channels, a call to
    /// g_io_channel_flush () is sufficient. For all other channels,
    /// the buffers may be flushed by a call to g_io_channel_seek_position ().
    /// This includes the possibility of seeking with seek type %G_SEEK_CUR
    /// and an offset of zero. Note that this means that socket-based
    /// channels cannot be set unbuffered once they have had data
    /// read from them.
    /// 
    /// On unbuffered channels, it is safe to mix read and write
    /// calls from the new and old APIs, if this is necessary for
    /// maintaining old code.
    /// 
    /// The default state of the channel is buffered.
    public func set_buffered(buffered: Bool) {
        g_io_channel_set_buffered(cast(ptr), gboolean(buffered ? 1 : 0))
    }

    /// Setting this flag to %TRUE for a channel you have already closed
    /// can cause problems.
    public func set_close_on_unref(do_close: Bool) {
        g_io_channel_set_close_on_unref(cast(ptr), gboolean(do_close ? 1 : 0))
    }

    /// Sets the encoding for the input/output of the channel.
    /// The internal encoding is always UTF-8. The default encoding
    /// for the external file is UTF-8.
    /// 
    /// The encoding %NULL is safe to use with binary data.
    /// 
    /// The encoding can only be set if one of the following conditions
    /// is true:
    /// 
    /// - The channel was just created, and has not been written to or read from yet.
    /// 
    /// - The channel is write-only.
    /// 
    /// - The channel is a file, and the file pointer was just repositioned
    ///   by a call to g_io_channel_seek_position(). (This flushes all the
    ///   internal buffers.)
    /// 
    /// - The current encoding is %NULL or UTF-8.
    /// 
    /// - One of the (new API) read functions has just returned %G_IO_STATUS_EOF
    ///   (or, in the case of g_io_channel_read_to_end(), %G_IO_STATUS_NORMAL).
    /// 
    /// -  One of the functions g_io_channel_read_chars() or
    ///    g_io_channel_read_unichar() has returned %G_IO_STATUS_AGAIN or
    ///    %G_IO_STATUS_ERROR. This may be useful in the case of
    ///    %G_CONVERT_ERROR_ILLEGAL_SEQUENCE.
    ///    Returning one of these statuses from g_io_channel_read_line(),
    ///    g_io_channel_read_line_string(), or g_io_channel_read_to_end()
    ///    does not guarantee that the encoding can be changed.
    /// 
    /// Channels which do not meet one of the above conditions cannot call
    /// g_io_channel_seek_position() with an offset of %G_SEEK_CUR, and, if
    /// they are "seekable", cannot call g_io_channel_write_chars() after
    /// calling one of the API "read" functions.
    public func set_encoding(encoding: UnsafePointer<gchar>) throws -> GIOStatus {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_io_channel_set_encoding(cast(ptr), cast(encoding), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return rv
    }

    /// Sets the (writeable) flags in @channel to (@flags & %G_IO_FLAG_SET_MASK).
    public func set_flags(flags: IOFlags) throws -> GIOStatus {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_io_channel_set_flags(cast(ptr), flags, &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return rv
    }

    /// This sets the string that #GIOChannel uses to determine
    /// where in the file a line break occurs.
    public func set_line_term(line_term: UnsafePointer<gchar>, length: CInt) {
        g_io_channel_set_line_term(cast(ptr), cast(line_term), gint(length))
    }

    /// Close an IO channel. Any pending data to be written will be
    /// flushed if @flush is %TRUE. The channel will not be freed until the
    /// last reference is dropped using g_io_channel_unref().
    public func shutdown(flush: Bool) throws -> GIOStatus {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_io_channel_shutdown(cast(ptr), gboolean(flush ? 1 : 0), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return rv
    }

    /// Returns the file descriptor of the #GIOChannel.
    /// 
    /// On Windows this function returns the file descriptor or socket of
    /// the #GIOChannel.
    public func unix_get_fd() -> CInt {
        let rv = g_io_channel_unix_get_fd(cast(ptr))
        return CInt(rv)
    }

    /// Decrements the reference count of a #GIOChannel.
    public func unref() {
        g_io_channel_unref(cast(ptr))
    }

    /// Writes data to a #GIOChannel.
    ///
    /// **write is deprecated:**
    /// Use g_io_channel_write_chars() instead.
    @available(*, deprecated) public func write(buf: UnsafePointer<gchar>, count: Int, bytes_written: UnsafeMutablePointer<gsize>) -> GIOError {
        let rv = g_io_channel_write(cast(ptr), cast(buf), gsize(count), cast(bytes_written))
        return rv
    }

    /// Replacement for g_io_channel_write() with the new API.
    /// 
    /// On seekable channels with encodings other than %NULL or UTF-8, generic
    /// mixing of reading and writing is not allowed. A call to g_io_channel_write_chars ()
    /// may only be made on a channel from which data has been read in the
    /// cases described in the documentation for g_io_channel_set_encoding ().
    public func write_chars(buf: UnsafeMutablePointer<gchar>, count: gssize, bytes_written: UnsafeMutablePointer<gsize>) throws -> GIOStatus {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_io_channel_write_chars(cast(ptr), cast(buf), count, cast(bytes_written), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return rv
    }

    /// Writes a Unicode character to @channel.
    /// This function cannot be called on a channel with %NULL encoding.
    public func write_unichar(thechar: gunichar) throws -> GIOStatus {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_io_channel_write_unichar(cast(ptr), thechar, &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return rv
    }
}



public protocol IOFuncsProtocol {
    var ptr: UnsafeMutablePointer<GIOFuncs> { get }
}

public struct IOFuncsRef: IOFuncsProtocol {
    public let ptr: UnsafeMutablePointer<GIOFuncs>
}

public extension IOFuncsRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GIOFuncs>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GIOFuncs>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GIOFuncs>(opaquePointer)
    }

    }

public class IOFuncs: IOFuncsProtocol {
    public let ptr: UnsafeMutablePointer<GIOFuncs>

    public init(ptr: UnsafeMutablePointer<GIOFuncs>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension IOFuncs {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GIOFuncs>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GIOFuncs>(opaquePointer))
    }

    }

public extension IOFuncsProtocol {
}



public protocol KeyFileProtocol {
    var ptr: UnsafeMutablePointer<GKeyFile> { get }
}

public struct KeyFileRef: KeyFileProtocol {
    public let ptr: UnsafeMutablePointer<GKeyFile>
}

public extension KeyFileRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GKeyFile>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GKeyFile>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GKeyFile>(opaquePointer)
    }

        /// Creates a new empty #GKeyFile object. Use
    /// g_key_file_load_from_file(), g_key_file_load_from_data(),
    /// g_key_file_load_from_dirs() or g_key_file_load_from_data_dirs() to
    /// read an existing key file.
    public init( ) {
        let rv = g_key_file_new()
        self.ptr = cast(rv)
    }
}

public class KeyFile: KeyFileProtocol {
    public let ptr: UnsafeMutablePointer<GKeyFile>

    public init(ptr: UnsafeMutablePointer<GKeyFile>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension KeyFile {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GKeyFile>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GKeyFile>(opaquePointer))
    }

        /// Creates a new empty #GKeyFile object. Use
    /// g_key_file_load_from_file(), g_key_file_load_from_data(),
    /// g_key_file_load_from_dirs() or g_key_file_load_from_data_dirs() to
    /// read an existing key file.
    public convenience init( ) {
        let rv = g_key_file_new()
        self.init(ptr: cast(rv))
    }
}

public extension KeyFileProtocol {
    /// Clears all keys and groups from @key_file, and decreases the
    /// reference count by 1. If the reference count reaches zero,
    /// frees the key file and all its allocated memory.
    public func free() {
        g_key_file_free(cast(ptr))
    }

    /// Returns the value associated with @key under @group_name as a
    /// boolean.
    /// 
    /// If @key cannot be found then %FALSE is returned and @error is set
    /// to #G_KEY_FILE_ERROR_KEY_NOT_FOUND. Likewise, if the value
    /// associated with @key cannot be interpreted as a boolean then %FALSE
    /// is returned and @error is set to #G_KEY_FILE_ERROR_INVALID_VALUE.
    public func get_boolean(group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_get_boolean(cast(ptr), cast(group_name), cast(key), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return Bool(rv != 0)
    }

    /// Returns the values associated with @key under @group_name as
    /// booleans.
    /// 
    /// If @key cannot be found then %NULL is returned and @error is set to
    /// #G_KEY_FILE_ERROR_KEY_NOT_FOUND. Likewise, if the values associated
    /// with @key cannot be interpreted as booleans then %NULL is returned
    /// and @error is set to #G_KEY_FILE_ERROR_INVALID_VALUE.
    public func get_boolean_list(group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>, length: UnsafeMutablePointer<gsize>) throws -> UnsafeMutablePointer<gboolean>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_get_boolean_list(cast(ptr), cast(group_name), cast(key), cast(length), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return cast(rv)
    }

    /// Retrieves a comment above @key from @group_name.
    /// If @key is %NULL then @comment will be read from above
    /// @group_name. If both @key and @group_name are %NULL, then
    /// @comment will be read from above the first group in the file.
    /// 
    /// Note that the returned string includes the '#' comment markers.
    public func get_comment(group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>) throws -> UnsafeMutablePointer<gchar>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_get_comment(cast(ptr), cast(group_name), cast(key), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return cast(rv)
    }

    /// Returns the value associated with @key under @group_name as a
    /// double. If @group_name is %NULL, the start_group is used.
    /// 
    /// If @key cannot be found then 0.0 is returned and @error is set to
    /// #G_KEY_FILE_ERROR_KEY_NOT_FOUND. Likewise, if the value associated
    /// with @key cannot be interpreted as a double then 0.0 is returned
    /// and @error is set to #G_KEY_FILE_ERROR_INVALID_VALUE.
    public func get_double(group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>) throws -> gdouble {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_get_double(cast(ptr), cast(group_name), cast(key), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return rv
    }

    /// Returns the values associated with @key under @group_name as
    /// doubles.
    /// 
    /// If @key cannot be found then %NULL is returned and @error is set to
    /// #G_KEY_FILE_ERROR_KEY_NOT_FOUND. Likewise, if the values associated
    /// with @key cannot be interpreted as doubles then %NULL is returned
    /// and @error is set to #G_KEY_FILE_ERROR_INVALID_VALUE.
    public func get_double_list(group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>, length: UnsafeMutablePointer<gsize>) throws -> UnsafeMutablePointer<gdouble>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_get_double_list(cast(ptr), cast(group_name), cast(key), cast(length), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return cast(rv)
    }

    /// Returns all groups in the key file loaded with @key_file.
    /// The array of returned groups will be %NULL-terminated, so
    /// @length may optionally be %NULL.
    public func get_groups(length: UnsafeMutablePointer<gsize>) -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        let rv = g_key_file_get_groups(cast(ptr), cast(length))
        return cast(rv)
    }

    /// Returns the value associated with @key under @group_name as a signed
    /// 64-bit integer. This is similar to g_key_file_get_integer() but can return
    /// 64-bit results without truncation.
    public func get_int64(group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>) throws -> Int64 {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_get_int64(cast(ptr), cast(group_name), cast(key), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return Int64(rv)
    }

    /// Returns the value associated with @key under @group_name as an
    /// integer.
    /// 
    /// If @key cannot be found then 0 is returned and @error is set to
    /// #G_KEY_FILE_ERROR_KEY_NOT_FOUND. Likewise, if the value associated
    /// with @key cannot be interpreted as an integer then 0 is returned
    /// and @error is set to #G_KEY_FILE_ERROR_INVALID_VALUE.
    public func get_integer(group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>) throws -> CInt {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_get_integer(cast(ptr), cast(group_name), cast(key), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return CInt(rv)
    }

    /// Returns the values associated with @key under @group_name as
    /// integers.
    /// 
    /// If @key cannot be found then %NULL is returned and @error is set to
    /// #G_KEY_FILE_ERROR_KEY_NOT_FOUND. Likewise, if the values associated
    /// with @key cannot be interpreted as integers then %NULL is returned
    /// and @error is set to #G_KEY_FILE_ERROR_INVALID_VALUE.
    public func get_integer_list(group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>, length: UnsafeMutablePointer<gsize>) throws -> UnsafeMutablePointer<gint>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_get_integer_list(cast(ptr), cast(group_name), cast(key), cast(length), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return cast(rv)
    }

    /// Returns all keys for the group name @group_name.  The array of
    /// returned keys will be %NULL-terminated, so @length may
    /// optionally be %NULL. In the event that the @group_name cannot
    /// be found, %NULL is returned and @error is set to
    /// #G_KEY_FILE_ERROR_GROUP_NOT_FOUND.
    public func get_keys(group_name: UnsafePointer<gchar>, length: UnsafeMutablePointer<gsize>) throws -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_get_keys(cast(ptr), cast(group_name), cast(length), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return cast(rv)
    }

    /// Returns the value associated with @key under @group_name
    /// translated in the given @locale if available.  If @locale is
    /// %NULL then the current locale is assumed.
    /// 
    /// If @key cannot be found then %NULL is returned and @error is set
    /// to #G_KEY_FILE_ERROR_KEY_NOT_FOUND. If the value associated
    /// with @key cannot be interpreted or no suitable translation can
    /// be found then the untranslated value is returned.
    public func get_locale_string(group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>, locale: UnsafePointer<gchar>) throws -> UnsafeMutablePointer<gchar>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_get_locale_string(cast(ptr), cast(group_name), cast(key), cast(locale), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return cast(rv)
    }

    /// Returns the values associated with @key under @group_name
    /// translated in the given @locale if available.  If @locale is
    /// %NULL then the current locale is assumed.
    /// 
    /// If @key cannot be found then %NULL is returned and @error is set
    /// to #G_KEY_FILE_ERROR_KEY_NOT_FOUND. If the values associated
    /// with @key cannot be interpreted or no suitable translations
    /// can be found then the untranslated values are returned. The
    /// returned array is %NULL-terminated, so @length may optionally
    /// be %NULL.
    public func get_locale_string_list(group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>, locale: UnsafePointer<gchar>, length: UnsafeMutablePointer<gsize>) throws -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_get_locale_string_list(cast(ptr), cast(group_name), cast(key), cast(locale), cast(length), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return cast(rv)
    }

    /// Returns the name of the start group of the file.
    public func get_start_group() -> UnsafeMutablePointer<gchar>! {
        let rv = g_key_file_get_start_group(cast(ptr))
        return cast(rv)
    }

    /// Returns the string value associated with @key under @group_name.
    /// Unlike g_key_file_get_value(), this function handles escape sequences
    /// like \s.
    /// 
    /// In the event the key cannot be found, %NULL is returned and
    /// @error is set to #G_KEY_FILE_ERROR_KEY_NOT_FOUND.  In the
    /// event that the @group_name cannot be found, %NULL is returned
    /// and @error is set to #G_KEY_FILE_ERROR_GROUP_NOT_FOUND.
    public func get_string(group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>) throws -> UnsafeMutablePointer<gchar>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_get_string(cast(ptr), cast(group_name), cast(key), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return cast(rv)
    }

    /// Returns the values associated with @key under @group_name.
    /// 
    /// In the event the key cannot be found, %NULL is returned and
    /// @error is set to #G_KEY_FILE_ERROR_KEY_NOT_FOUND.  In the
    /// event that the @group_name cannot be found, %NULL is returned
    /// and @error is set to #G_KEY_FILE_ERROR_GROUP_NOT_FOUND.
    public func get_string_list(group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>, length: UnsafeMutablePointer<gsize>) throws -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_get_string_list(cast(ptr), cast(group_name), cast(key), cast(length), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return cast(rv)
    }

    /// Returns the value associated with @key under @group_name as an unsigned
    /// 64-bit integer. This is similar to g_key_file_get_integer() but can return
    /// large positive results without truncation.
    public func get_uint64(group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>) throws -> UInt64 {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_get_uint64(cast(ptr), cast(group_name), cast(key), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return UInt64(rv)
    }

    /// Returns the raw value associated with @key under @group_name.
    /// Use g_key_file_get_string() to retrieve an unescaped UTF-8 string.
    /// 
    /// In the event the key cannot be found, %NULL is returned and
    /// @error is set to #G_KEY_FILE_ERROR_KEY_NOT_FOUND.  In the
    /// event that the @group_name cannot be found, %NULL is returned
    /// and @error is set to #G_KEY_FILE_ERROR_GROUP_NOT_FOUND.
    public func get_value(group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>) throws -> UnsafeMutablePointer<gchar>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_get_value(cast(ptr), cast(group_name), cast(key), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return cast(rv)
    }

    /// Looks whether the key file has the group @group_name.
    public func has_group(group_name: UnsafePointer<gchar>) -> Bool {
        let rv = g_key_file_has_group(cast(ptr), cast(group_name))
        return Bool(rv != 0)
    }

    /// Looks whether the key file has the key @key in the group
    /// @group_name.
    /// 
    /// Note that this function does not follow the rules for #GError strictly;
    /// the return value both carries meaning and signals an error.  To use
    /// this function, you must pass a #GError pointer in @error, and check
    /// whether it is not %NULL to see if an error occurred.
    /// 
    /// Language bindings should use g_key_file_get_value() to test whether
    /// or not a key exists.
    public func has_key(group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_has_key(cast(ptr), cast(group_name), cast(key), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return Bool(rv != 0)
    }

    /// Loads a key file from memory into an empty #GKeyFile structure.
    /// If the object cannot be created then %error is set to a #GKeyFileError.
    public func load_from_data(data: UnsafePointer<gchar>, length: Int, flags: KeyFileFlags) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_load_from_data(cast(ptr), cast(data), gsize(length), flags, &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return Bool(rv != 0)
    }

    /// This function looks for a key file named @file in the paths
    /// returned from g_get_user_data_dir() and g_get_system_data_dirs(),
    /// loads the file into @key_file and returns the file's full path in
    /// @full_path.  If the file could not be loaded then an %error is
    /// set to either a #GFileError or #GKeyFileError.
    public func load_from_data_dirs(file: UnsafeMutablePointer<gchar>, full_path: UnsafeMutablePointer<UnsafeMutablePointer<gchar>>, flags: KeyFileFlags) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_load_from_data_dirs(cast(ptr), cast(file), cast(full_path), flags, &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return Bool(rv != 0)
    }

    /// This function looks for a key file named @file in the paths
    /// specified in @search_dirs, loads the file into @key_file and
    /// returns the file's full path in @full_path.  If the file could not
    /// be loaded then an %error is set to either a #GFileError or
    /// #GKeyFileError.
    public func load_from_dirs(file: UnsafeMutablePointer<gchar>, search_dirs: UnsafeMutablePointer<UnsafeMutablePointer<gchar>>, full_path: UnsafeMutablePointer<UnsafeMutablePointer<gchar>>, flags: KeyFileFlags) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_load_from_dirs(cast(ptr), cast(file), cast(search_dirs), cast(full_path), flags, &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return Bool(rv != 0)
    }

    /// Loads a key file into an empty #GKeyFile structure.
    /// If the file could not be loaded then @error is set to
    /// either a #GFileError or #GKeyFileError.
    public func load_from_file(file: UnsafeMutablePointer<gchar>, flags: KeyFileFlags) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_load_from_file(cast(ptr), cast(file), flags, &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return Bool(rv != 0)
    }

    /// Increases the reference count of @key_file.
    public func ref() -> UnsafeMutablePointer<GKeyFile>! {
        let rv = g_key_file_ref(cast(ptr))
        return cast(rv)
    }

    /// Removes a comment above @key from @group_name.
    /// If @key is %NULL then @comment will be removed above @group_name.
    /// If both @key and @group_name are %NULL, then @comment will
    /// be removed above the first group in the file.
    public func remove_comment(group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_remove_comment(cast(ptr), cast(group_name), cast(key), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return Bool(rv != 0)
    }

    /// Removes the specified group, @group_name,
    /// from the key file.
    public func remove_group(group_name: UnsafePointer<gchar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_remove_group(cast(ptr), cast(group_name), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return Bool(rv != 0)
    }

    /// Removes @key in @group_name from the key file.
    public func remove_key(group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_remove_key(cast(ptr), cast(group_name), cast(key), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return Bool(rv != 0)
    }

    /// Writes the contents of @key_file to @filename using
    /// g_file_set_contents().
    /// 
    /// This function can fail for any of the reasons that
    /// g_file_set_contents() may fail.
    public func save_to_file(filename: UnsafePointer<gchar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_save_to_file(cast(ptr), cast(filename), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return Bool(rv != 0)
    }

    /// Associates a new boolean value with @key under @group_name.
    /// If @key cannot be found then it is created.
    public func set_boolean(group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>, value: Bool) {
        g_key_file_set_boolean(cast(ptr), cast(group_name), cast(key), gboolean(value ? 1 : 0))
    }

    /// Associates a list of boolean values with @key under @group_name.
    /// If @key cannot be found then it is created.
    /// If @group_name is %NULL, the start_group is used.
    public func set_boolean_list(group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>, list: inout [gboolean], length: Int) {
        g_key_file_set_boolean_list(cast(ptr), cast(group_name), cast(key), &list, gsize(length))
    }

    /// Places a comment above @key from @group_name.
    /// 
    /// If @key is %NULL then @comment will be written above @group_name.
    /// If both @key and @group_name  are %NULL, then @comment will be
    /// written above the first group in the file.
    /// 
    /// Note that this function prepends a '#' comment marker to
    /// each line of @comment.
    public func set_comment(group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>, comment: UnsafePointer<gchar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_set_comment(cast(ptr), cast(group_name), cast(key), cast(comment), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return Bool(rv != 0)
    }

    /// Associates a new double value with @key under @group_name.
    /// If @key cannot be found then it is created.
    public func set_double(group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>, value: gdouble) {
        g_key_file_set_double(cast(ptr), cast(group_name), cast(key), value)
    }

    /// Associates a list of double values with @key under
    /// @group_name.  If @key cannot be found then it is created.
    public func set_double_list(group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>, list: inout [gdouble], length: Int) {
        g_key_file_set_double_list(cast(ptr), cast(group_name), cast(key), &list, gsize(length))
    }

    /// Associates a new integer value with @key under @group_name.
    /// If @key cannot be found then it is created.
    public func set_int64(group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>, value: Int64) {
        g_key_file_set_int64(cast(ptr), cast(group_name), cast(key), gint64(value))
    }

    /// Associates a new integer value with @key under @group_name.
    /// If @key cannot be found then it is created.
    public func set_integer(group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>, value: CInt) {
        g_key_file_set_integer(cast(ptr), cast(group_name), cast(key), gint(value))
    }

    /// Associates a list of integer values with @key under @group_name.
    /// If @key cannot be found then it is created.
    public func set_integer_list(group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>, list: inout [gint], length: Int) {
        g_key_file_set_integer_list(cast(ptr), cast(group_name), cast(key), &list, gsize(length))
    }

    /// Sets the character which is used to separate
    /// values in lists. Typically ';' or ',' are used
    /// as separators. The default list separator is ';'.
    public func set_list_separator(separator: gchar) {
        g_key_file_set_list_separator(cast(ptr), separator)
    }

    /// Associates a string value for @key and @locale under @group_name.
    /// If the translation for @key cannot be found then it is created.
    public func set_locale_string(group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>, locale: UnsafePointer<gchar>, string: UnsafePointer<gchar>) {
        g_key_file_set_locale_string(cast(ptr), cast(group_name), cast(key), cast(locale), cast(string))
    }

    /// Associates a list of string values for @key and @locale under
    /// @group_name.  If the translation for @key cannot be found then
    /// it is created.
    public func set_locale_string_list(group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>, locale: UnsafePointer<gchar>, list: UnsafeMutablePointer<gchar>, length: Int) {
        g_key_file_set_locale_string_list(cast(ptr), cast(group_name), cast(key), cast(locale), cast(list), gsize(length))
    }

    /// Associates a new string value with @key under @group_name.
    /// If @key cannot be found then it is created.
    /// If @group_name cannot be found then it is created.
    /// Unlike g_key_file_set_value(), this function handles characters
    /// that need escaping, such as newlines.
    public func set_string(group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>, string: UnsafePointer<gchar>) {
        g_key_file_set_string(cast(ptr), cast(group_name), cast(key), cast(string))
    }

    /// Associates a list of string values for @key under @group_name.
    /// If @key cannot be found then it is created.
    /// If @group_name cannot be found then it is created.
    public func set_string_list(group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>, list: UnsafeMutablePointer<gchar>, length: Int) {
        g_key_file_set_string_list(cast(ptr), cast(group_name), cast(key), cast(list), gsize(length))
    }

    /// Associates a new integer value with @key under @group_name.
    /// If @key cannot be found then it is created.
    public func set_uint64(group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>, value: UInt64) {
        g_key_file_set_uint64(cast(ptr), cast(group_name), cast(key), guint64(value))
    }

    /// Associates a new value with @key under @group_name.
    /// 
    /// If @key cannot be found then it is created. If @group_name cannot
    /// be found then it is created. To set an UTF-8 string which may contain
    /// characters that need escaping (such as newlines or spaces), use
    /// g_key_file_set_string().
    public func set_value(group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>, value: UnsafePointer<gchar>) {
        g_key_file_set_value(cast(ptr), cast(group_name), cast(key), cast(value))
    }

    /// This function outputs @key_file as a string.
    /// 
    /// Note that this function never reports an error,
    /// so it is safe to pass %NULL as @error.
    public func to_data(length: UnsafeMutablePointer<gsize>) throws -> UnsafeMutablePointer<gchar>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_to_data(cast(ptr), cast(length), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return cast(rv)
    }

    /// Decreases the reference count of @key_file by 1. If the reference count
    /// reaches zero, frees the key file and all its allocated memory.
    public func unref() {
        g_key_file_unref(cast(ptr))
    }
}



public protocol ListProtocol {
    var ptr: UnsafeMutablePointer<GList> { get }
}

public struct ListRef: ListProtocol {
    public let ptr: UnsafeMutablePointer<GList>
}

public extension ListRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GList>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GList>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GList>(opaquePointer)
    }

        /// Allocates space for one #GList element. It is called by
    /// g_list_append(), g_list_prepend(), g_list_insert() and
    /// g_list_insert_sorted() and so is rarely used on its own.
    public static func alloc() -> ListRef! {
        let rv = g_list_alloc()
        return rv.map { ListRef(ptr: cast($0)) }
    }
}

public class List: ListProtocol {
    public let ptr: UnsafeMutablePointer<GList>

    public init(ptr: UnsafeMutablePointer<GList>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension List {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GList>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GList>(opaquePointer))
    }

        /// Allocates space for one #GList element. It is called by
    /// g_list_append(), g_list_prepend(), g_list_insert() and
    /// g_list_insert_sorted() and so is rarely used on its own.
    public static func alloc() -> List! {
        let rv = g_list_alloc()
        return rv.map { List(ptr: cast($0)) }
    }
}

public extension ListProtocol {
    /// Adds a new element on to the end of the list.
    /// 
    /// Note that the return value is the new start of the list,
    /// if @list was empty; make sure you store the new value.
    /// 
    /// g_list_append() has to traverse the entire list to find the end,
    /// which is inefficient when adding multiple elements. A common idiom
    /// to avoid the inefficiency is to use g_list_prepend() and reverse
    /// the list with g_list_reverse() when all elements have been added.
    /// 
    /// |[<!-- language="C" -->
    /// // Notice that these are initialized to the empty list.
    /// GList *string_list = NULL, *number_list = NULL;
    /// 
    /// // This is a list of strings.
    /// string_list = g_list_append (string_list, "first");
    /// string_list = g_list_append (string_list, "second");
    /// 
    /// // This is a list of integers.
    /// number_list = g_list_append (number_list, GINT_TO_POINTER (27));
    /// number_list = g_list_append (number_list, GINT_TO_POINTER (14));
    /// ]|
    public func append(data: OpaquePointer) -> UnsafeMutablePointer<GList>! {
        let rv = g_list_append(cast(ptr), cast(data))
        return cast(rv)
    }

    /// Adds the second #GList onto the end of the first #GList.
    /// Note that the elements of the second #GList are not copied.
    /// They are used directly.
    /// 
    /// This function is for example used to move an element in the list.
    /// The following example moves an element to the top of the list:
    /// |[<!-- language="C" -->
    /// list = g_list_remove_link (list, llink);
    /// list = g_list_concat (llink, list);
    /// ]|
    public func concat() -> UnsafeMutablePointer<GList>! {
        let rv = g_list_concat(cast(ptr), cast(ptr))
        return cast(rv)
    }

    /// Copies a #GList.
    /// 
    /// Note that this is a "shallow" copy. If the list elements
    /// consist of pointers to data, the pointers are copied but
    /// the actual data is not. See g_list_copy_deep() if you need
    /// to copy the data as well.
    public func copy() -> UnsafeMutablePointer<GList>! {
        let rv = g_list_copy(cast(ptr))
        return cast(rv)
    }

    /// Makes a full (deep) copy of a #GList.
    /// 
    /// In contrast with g_list_copy(), this function uses @func to make
    /// a copy of each list element, in addition to copying the list
    /// container itself.
    /// 
    /// @func, as a #GCopyFunc, takes two arguments, the data to be copied
    /// and a @user_data pointer. It's safe to pass %NULL as user_data,
    /// if the copy function takes only one argument.
    /// 
    /// For instance, if @list holds a list of GObjects, you can do:
    /// |[<!-- language="C" -->
    /// another_list = g_list_copy_deep (list, (GCopyFunc) g_object_ref, NULL);
    /// ]|
    /// 
    /// And, to entirely free the new list, you could do:
    /// |[<!-- language="C" -->
    /// g_list_free_full (another_list, g_object_unref);
    /// ]|
    public func copy_deep(func_: CopyFunc, user_data: OpaquePointer) -> UnsafeMutablePointer<GList>! {
        let rv = g_list_copy_deep(cast(ptr), func_, cast(user_data))
        return cast(rv)
    }

    /// Removes the node link_ from the list and frees it.
    /// Compare this to g_list_remove_link() which removes the node
    /// without freeing it.
    public func delete_link() -> UnsafeMutablePointer<GList>! {
        let rv = g_list_delete_link(cast(ptr), cast(ptr))
        return cast(rv)
    }

    /// Finds the element in a #GList which contains the given data.
    public func find(data: gconstpointer) -> UnsafeMutablePointer<GList>! {
        let rv = g_list_find(cast(ptr), cast(data))
        return cast(rv)
    }

    /// Finds an element in a #GList, using a supplied function to
    /// find the desired element. It iterates over the list, calling
    /// the given function which should return 0 when the desired
    /// element is found. The function takes two #gconstpointer arguments,
    /// the #GList element's data as the first argument and the
    /// given user data.
    public func find_custom(data: gconstpointer, func_: CompareFunc) -> UnsafeMutablePointer<GList>! {
        let rv = g_list_find_custom(cast(ptr), cast(data), func_)
        return cast(rv)
    }

    /// Gets the first element in a #GList.
    public func first() -> UnsafeMutablePointer<GList>! {
        let rv = g_list_first(cast(ptr))
        return cast(rv)
    }

    /// Calls a function for each element of a #GList.
    public func foreach(func_: Func, user_data: OpaquePointer) {
        g_list_foreach(cast(ptr), func_, cast(user_data))
    }

    /// Frees all of the memory used by a #GList.
    /// The freed elements are returned to the slice allocator.
    /// 
    /// If list elements contain dynamically-allocated memory, you should
    /// either use g_list_free_full() or free them manually first.
    public func free() {
        g_list_free(cast(ptr))
    }

    /// Frees one #GList element, but does not update links from the next and
    /// previous elements in the list, so you should not call this function on an
    /// element that is currently part of a list.
    /// 
    /// It is usually used after g_list_remove_link().
    public func free_1() {
        g_list_free_1(cast(ptr))
    }

    /// Convenience method, which frees all the memory used by a #GList,
    /// and calls @free_func on every element's data.
    public func free_full(free_func: DestroyNotify) {
        g_list_free_full(cast(ptr), free_func)
    }

    /// Gets the position of the element containing
    /// the given data (starting from 0).
    public func index(data: gconstpointer) -> CInt {
        let rv = g_list_index(cast(ptr), cast(data))
        return CInt(rv)
    }

    /// Inserts a new element into the list at the given position.
    public func insert(data: OpaquePointer, position: CInt) -> UnsafeMutablePointer<GList>! {
        let rv = g_list_insert(cast(ptr), cast(data), gint(position))
        return cast(rv)
    }

    /// Inserts a new element into the list before the given position.
    public func insert_before(data: OpaquePointer) -> UnsafeMutablePointer<GList>! {
        let rv = g_list_insert_before(cast(ptr), cast(ptr), cast(data))
        return cast(rv)
    }

    /// Inserts a new element into the list, using the given comparison
    /// function to determine its position.
    /// 
    /// If you are adding many new elements to a list, and the number of
    /// new elements is much larger than the length of the list, use
    /// g_list_prepend() to add the new items and sort the list afterwards
    /// with g_list_sort().
    public func insert_sorted(data: OpaquePointer, func_: CompareFunc) -> UnsafeMutablePointer<GList>! {
        let rv = g_list_insert_sorted(cast(ptr), cast(data), func_)
        return cast(rv)
    }

    /// Inserts a new element into the list, using the given comparison
    /// function to determine its position.
    /// 
    /// If you are adding many new elements to a list, and the number of
    /// new elements is much larger than the length of the list, use
    /// g_list_prepend() to add the new items and sort the list afterwards
    /// with g_list_sort().
    public func insert_sorted_with_data(data: OpaquePointer, func_: CompareDataFunc, user_data: OpaquePointer) -> UnsafeMutablePointer<GList>! {
        let rv = g_list_insert_sorted_with_data(cast(ptr), cast(data), func_, cast(user_data))
        return cast(rv)
    }

    /// Gets the last element in a #GList.
    public func last() -> UnsafeMutablePointer<GList>! {
        let rv = g_list_last(cast(ptr))
        return cast(rv)
    }

    /// Gets the number of elements in a #GList.
    /// 
    /// This function iterates over the whole list to count its elements.
    /// Use a #GQueue instead of a GList if you regularly need the number
    /// of items. To check whether the list is non-empty, it is faster to check
    /// @list against %NULL.
    public func length() -> CUnsignedInt {
        let rv = g_list_length(cast(ptr))
        return CUnsignedInt(rv)
    }

    /// Gets the element at the given position in a #GList.
    /// 
    /// This iterates over the list until it reaches the @n-th position. If you
    /// intend to iterate over every element, it is better to use a for-loop as
    /// described in the #GList introduction.
    public func nth(n: CUnsignedInt) -> UnsafeMutablePointer<GList>! {
        let rv = g_list_nth(cast(ptr), guint(n))
        return cast(rv)
    }

    /// Gets the data of the element at the given position.
    /// 
    /// This iterates over the list until it reaches the @n-th position. If you
    /// intend to iterate over every element, it is better to use a for-loop as
    /// described in the #GList introduction.
    public func nth_data(n: CUnsignedInt) -> OpaquePointer! {
        let rv = g_list_nth_data(cast(ptr), guint(n))
        return cast(rv)
    }

    /// Gets the element @n places before @list.
    public func nth_prev(n: CUnsignedInt) -> UnsafeMutablePointer<GList>! {
        let rv = g_list_nth_prev(cast(ptr), guint(n))
        return cast(rv)
    }

    /// Gets the position of the given element
    /// in the #GList (starting from 0).
    public func position() -> CInt {
        let rv = g_list_position(cast(ptr), cast(ptr))
        return CInt(rv)
    }

    /// Prepends a new element on to the start of the list.
    /// 
    /// Note that the return value is the new start of the list,
    /// which will have changed, so make sure you store the new value.
    /// 
    /// |[<!-- language="C" -->
    /// // Notice that it is initialized to the empty list.
    /// GList *list = NULL;
    /// 
    /// list = g_list_prepend (list, "last");
    /// list = g_list_prepend (list, "first");
    /// ]|
    /// 
    /// Do not use this function to prepend a new element to a different
    /// element than the start of the list. Use g_list_insert_before() instead.
    public func prepend(data: OpaquePointer) -> UnsafeMutablePointer<GList>! {
        let rv = g_list_prepend(cast(ptr), cast(data))
        return cast(rv)
    }

    /// Removes an element from a #GList.
    /// If two elements contain the same data, only the first is removed.
    /// If none of the elements contain the data, the #GList is unchanged.
    public func remove(data: gconstpointer) -> UnsafeMutablePointer<GList>! {
        let rv = g_list_remove(cast(ptr), cast(data))
        return cast(rv)
    }

    /// Removes all list nodes with data equal to @data.
    /// Returns the new head of the list. Contrast with
    /// g_list_remove() which removes only the first node
    /// matching the given data.
    public func remove_all(data: gconstpointer) -> UnsafeMutablePointer<GList>! {
        let rv = g_list_remove_all(cast(ptr), cast(data))
        return cast(rv)
    }

    /// Removes an element from a #GList, without freeing the element.
    /// The removed element's prev and next links are set to %NULL, so
    /// that it becomes a self-contained list with one element.
    /// 
    /// This function is for example used to move an element in the list
    /// (see the example for g_list_concat()) or to remove an element in
    /// the list before freeing its data:
    /// |[<!-- language="C" -->
    /// list = g_list_remove_link (list, llink);
    /// free_some_data_that_may_access_the_list_again (llink->data);
    /// g_list_free (llink);
    /// ]|
    public func remove_link() -> UnsafeMutablePointer<GList>! {
        let rv = g_list_remove_link(cast(ptr), cast(ptr))
        return cast(rv)
    }

    /// Reverses a #GList.
    /// It simply switches the next and prev pointers of each element.
    public func reverse() -> UnsafeMutablePointer<GList>! {
        let rv = g_list_reverse(cast(ptr))
        return cast(rv)
    }

    /// Sorts a #GList using the given comparison function. The algorithm
    /// used is a stable sort.
    public func sort(compare_func: CompareFunc) -> UnsafeMutablePointer<GList>! {
        let rv = g_list_sort(cast(ptr), compare_func)
        return cast(rv)
    }

    /// Like g_list_sort(), but the comparison function accepts
    /// a user data argument.
    public func sort_with_data(compare_func: CompareDataFunc, user_data: OpaquePointer) -> UnsafeMutablePointer<GList>! {
        let rv = g_list_sort_with_data(cast(ptr), compare_func, cast(user_data))
        return cast(rv)
    }
}



public protocol MainContextProtocol {
    var ptr: UnsafeMutablePointer<GMainContext> { get }
}

public struct MainContextRef: MainContextProtocol {
    public let ptr: UnsafeMutablePointer<GMainContext>
}

public extension MainContextRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GMainContext>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GMainContext>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GMainContext>(opaquePointer)
    }

        /// Creates a new #GMainContext structure.
    public init( ) {
        let rv = g_main_context_new()
        self.ptr = cast(rv)
    }
    /// Returns the global default main context. This is the main context
    /// used for main loop functions when a main loop is not explicitly
    /// specified, and corresponds to the "main" main loop. See also
    /// g_main_context_get_thread_default().
    public static func default_() -> MainContextRef! {
        let rv = g_main_context_default()
        return rv.map { MainContextRef(ptr: cast($0)) }
    }

    /// Gets the thread-default #GMainContext for this thread. Asynchronous
    /// operations that want to be able to be run in contexts other than
    /// the default one should call this method or
    /// g_main_context_ref_thread_default() to get a #GMainContext to add
    /// their #GSources to. (Note that even in single-threaded
    /// programs applications may sometimes want to temporarily push a
    /// non-default context, so it is not safe to assume that this will
    /// always return %NULL if you are running in the default thread.)
    /// 
    /// If you need to hold a reference on the context, use
    /// g_main_context_ref_thread_default() instead.
    public static func get_thread_default() -> MainContextRef! {
        let rv = g_main_context_get_thread_default()
        return rv.map { MainContextRef(ptr: cast($0)) }
    }

    /// Gets the thread-default #GMainContext for this thread, as with
    /// g_main_context_get_thread_default(), but also adds a reference to
    /// it with g_main_context_ref(). In addition, unlike
    /// g_main_context_get_thread_default(), if the thread-default context
    /// is the global default context, this will return that #GMainContext
    /// (with a ref added to it) rather than returning %NULL.
    public static func ref_thread_default() -> MainContextRef! {
        let rv = g_main_context_ref_thread_default()
        return rv.map { MainContextRef(ptr: cast($0)) }
    }
}

public class MainContext: MainContextProtocol {
    public let ptr: UnsafeMutablePointer<GMainContext>

    public init(ptr: UnsafeMutablePointer<GMainContext>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension MainContext {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GMainContext>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GMainContext>(opaquePointer))
    }

        /// Creates a new #GMainContext structure.
    public convenience init( ) {
        let rv = g_main_context_new()
        self.init(ptr: cast(rv))
    }
    /// Returns the global default main context. This is the main context
    /// used for main loop functions when a main loop is not explicitly
    /// specified, and corresponds to the "main" main loop. See also
    /// g_main_context_get_thread_default().
    public static func default_() -> MainContext! {
        let rv = g_main_context_default()
        return rv.map { MainContext(ptr: cast($0)) }
    }

    /// Gets the thread-default #GMainContext for this thread. Asynchronous
    /// operations that want to be able to be run in contexts other than
    /// the default one should call this method or
    /// g_main_context_ref_thread_default() to get a #GMainContext to add
    /// their #GSources to. (Note that even in single-threaded
    /// programs applications may sometimes want to temporarily push a
    /// non-default context, so it is not safe to assume that this will
    /// always return %NULL if you are running in the default thread.)
    /// 
    /// If you need to hold a reference on the context, use
    /// g_main_context_ref_thread_default() instead.
    public static func get_thread_default() -> MainContext! {
        let rv = g_main_context_get_thread_default()
        return rv.map { MainContext(ptr: cast($0)) }
    }

    /// Gets the thread-default #GMainContext for this thread, as with
    /// g_main_context_get_thread_default(), but also adds a reference to
    /// it with g_main_context_ref(). In addition, unlike
    /// g_main_context_get_thread_default(), if the thread-default context
    /// is the global default context, this will return that #GMainContext
    /// (with a ref added to it) rather than returning %NULL.
    public static func ref_thread_default() -> MainContext! {
        let rv = g_main_context_ref_thread_default()
        return rv.map { MainContext(ptr: cast($0)) }
    }
}

public extension MainContextProtocol {
    /// Tries to become the owner of the specified context.
    /// If some other thread is the owner of the context,
    /// returns %FALSE immediately. Ownership is properly
    /// recursive: the owner can require ownership again
    /// and will release ownership when g_main_context_release()
    /// is called as many times as g_main_context_acquire().
    /// 
    /// You must be the owner of a context before you
    /// can call g_main_context_prepare(), g_main_context_query(),
    /// g_main_context_check(), g_main_context_dispatch().
    public func acquire() -> Bool {
        let rv = g_main_context_acquire(cast(ptr))
        return Bool(rv != 0)
    }

    /// Adds a file descriptor to the set of file descriptors polled for
    /// this context. This will very seldom be used directly. Instead
    /// a typical event source will use g_source_add_unix_fd() instead.
    public func add_poll(fd: PollFDProtocol, priority: CInt) {
        g_main_context_add_poll(cast(ptr), cast(fd.ptr), gint(priority))
    }

    /// Passes the results of polling back to the main loop.
    /// 
    /// You must have successfully acquired the context with
    /// g_main_context_acquire() before you may call this function.
    public func check(max_priority: CInt, fds: UnsafeMutablePointer<GPollFD>, n_fds: CInt) -> CInt {
        let rv = g_main_context_check(cast(ptr), gint(max_priority), cast(fds), gint(n_fds))
        return CInt(rv)
    }

    /// Dispatches all pending sources.
    /// 
    /// You must have successfully acquired the context with
    /// g_main_context_acquire() before you may call this function.
    public func dispatch() {
        g_main_context_dispatch(cast(ptr))
    }

    /// Finds a source with the given source functions and user data.  If
    /// multiple sources exist with the same source function and user data,
    /// the first one found will be returned.
    public func find_source_by_funcs_user_data(funcs: SourceFuncsProtocol, user_data: OpaquePointer) -> UnsafeMutablePointer<GSource>! {
        let rv = g_main_context_find_source_by_funcs_user_data(cast(ptr), cast(funcs.ptr), cast(user_data))
        return cast(rv)
    }

    /// Finds a #GSource given a pair of context and ID.
    /// 
    /// It is a programmer error to attempt to lookup a non-existent source.
    /// 
    /// More specifically: source IDs can be reissued after a source has been
    /// destroyed and therefore it is never valid to use this function with a
    /// source ID which may have already been removed.  An example is when
    /// scheduling an idle to run in another thread with g_idle_add(): the
    /// idle may already have run and been removed by the time this function
    /// is called on its (now invalid) source ID.  This source ID may have
    /// been reissued, leading to the operation being performed against the
    /// wrong source.
    public func find_source_by_id(source_id: CUnsignedInt) -> UnsafeMutablePointer<GSource>! {
        let rv = g_main_context_find_source_by_id(cast(ptr), guint(source_id))
        return cast(rv)
    }

    /// Finds a source with the given user data for the callback.  If
    /// multiple sources exist with the same user data, the first
    /// one found will be returned.
    public func find_source_by_user_data(user_data: OpaquePointer) -> UnsafeMutablePointer<GSource>! {
        let rv = g_main_context_find_source_by_user_data(cast(ptr), cast(user_data))
        return cast(rv)
    }

    /// Gets the poll function set by g_main_context_set_poll_func().
    public func get_poll_func() -> GPollFunc! {
        let rv = g_main_context_get_poll_func(cast(ptr))
        return rv
    }

    /// Invokes a function in such a way that @context is owned during the
    /// invocation of @function.
    /// 
    /// If @context is %NULL then the global default main context — as
    /// returned by g_main_context_default() — is used.
    /// 
    /// If @context is owned by the current thread, @function is called
    /// directly.  Otherwise, if @context is the thread-default main context
    /// of the current thread and g_main_context_acquire() succeeds, then
    /// @function is called and g_main_context_release() is called
    /// afterwards.
    /// 
    /// In any other case, an idle source is created to call @function and
    /// that source is attached to @context (presumably to be run in another
    /// thread).  The idle source is attached with #G_PRIORITY_DEFAULT
    /// priority.  If you want a different priority, use
    /// g_main_context_invoke_full().
    /// 
    /// Note that, as with normal idle functions, @function should probably
    /// return %FALSE.  If it returns %TRUE, it will be continuously run in a
    /// loop (and may prevent this call from returning).
    public func invoke(function: SourceFunc, data: OpaquePointer) {
        g_main_context_invoke(cast(ptr), function, cast(data))
    }

    /// Invokes a function in such a way that @context is owned during the
    /// invocation of @function.
    /// 
    /// This function is the same as g_main_context_invoke() except that it
    /// lets you specify the priority incase @function ends up being
    /// scheduled as an idle and also lets you give a #GDestroyNotify for @data.
    /// 
    /// @notify should not assume that it is called from any particular
    /// thread or with any particular context acquired.
    public func invoke_full(priority: CInt, function: SourceFunc, data: OpaquePointer, notify: DestroyNotify) {
        g_main_context_invoke_full(cast(ptr), gint(priority), function, cast(data), notify)
    }

    /// Determines whether this thread holds the (recursive)
    /// ownership of this #GMainContext. This is useful to
    /// know before waiting on another thread that may be
    /// blocking to get ownership of @context.
    public func is_owner() -> Bool {
        let rv = g_main_context_is_owner(cast(ptr))
        return Bool(rv != 0)
    }

    /// Runs a single iteration for the given main loop. This involves
    /// checking to see if any event sources are ready to be processed,
    /// then if no events sources are ready and @may_block is %TRUE, waiting
    /// for a source to become ready, then dispatching the highest priority
    /// events sources that are ready. Otherwise, if @may_block is %FALSE
    /// sources are not waited to become ready, only those highest priority
    /// events sources will be dispatched (if any), that are ready at this
    /// given moment without further waiting.
    /// 
    /// Note that even when @may_block is %TRUE, it is still possible for
    /// g_main_context_iteration() to return %FALSE, since the wait may
    /// be interrupted for other reasons than an event source becoming ready.
    public func iteration(may_block: Bool) -> Bool {
        let rv = g_main_context_iteration(cast(ptr), gboolean(may_block ? 1 : 0))
        return Bool(rv != 0)
    }

    /// Checks if any sources have pending events for the given context.
    public func pending() -> Bool {
        let rv = g_main_context_pending(cast(ptr))
        return Bool(rv != 0)
    }

    /// Pops @context off the thread-default context stack (verifying that
    /// it was on the top of the stack).
    public func pop_thread_default() {
        g_main_context_pop_thread_default(cast(ptr))
    }

    /// Prepares to poll sources within a main loop. The resulting information
    /// for polling is determined by calling g_main_context_query ().
    /// 
    /// You must have successfully acquired the context with
    /// g_main_context_acquire() before you may call this function.
    public func prepare(priority: UnsafeMutablePointer<gint>) -> Bool {
        let rv = g_main_context_prepare(cast(ptr), cast(priority))
        return Bool(rv != 0)
    }

    /// Acquires @context and sets it as the thread-default context for the
    /// current thread. This will cause certain asynchronous operations
    /// (such as most [gio][gio]-based I/O) which are
    /// started in this thread to run under @context and deliver their
    /// results to its main loop, rather than running under the global
    /// default context in the main thread. Note that calling this function
    /// changes the context returned by g_main_context_get_thread_default(),
    /// not the one returned by g_main_context_default(), so it does not affect
    /// the context used by functions like g_idle_add().
    /// 
    /// Normally you would call this function shortly after creating a new
    /// thread, passing it a #GMainContext which will be run by a
    /// #GMainLoop in that thread, to set a new default context for all
    /// async operations in that thread. (In this case, you don't need to
    /// ever call g_main_context_pop_thread_default().) In some cases
    /// however, you may want to schedule a single operation in a
    /// non-default context, or temporarily use a non-default context in
    /// the main thread. In that case, you can wrap the call to the
    /// asynchronous operation inside a
    /// g_main_context_push_thread_default() /
    /// g_main_context_pop_thread_default() pair, but it is up to you to
    /// ensure that no other asynchronous operations accidentally get
    /// started while the non-default context is active.
    /// 
    /// Beware that libraries that predate this function may not correctly
    /// handle being used from a thread with a thread-default context. Eg,
    /// see g_file_supports_thread_contexts().
    public func push_thread_default() {
        g_main_context_push_thread_default(cast(ptr))
    }

    /// Determines information necessary to poll this main loop.
    /// 
    /// You must have successfully acquired the context with
    /// g_main_context_acquire() before you may call this function.
    public func query(max_priority: CInt, timeout_: UnsafeMutablePointer<gint>, fds: UnsafeMutablePointer<GPollFD>, n_fds: CInt) -> CInt {
        let rv = g_main_context_query(cast(ptr), gint(max_priority), cast(timeout_), cast(fds), gint(n_fds))
        return CInt(rv)
    }

    /// Increases the reference count on a #GMainContext object by one.
    public func ref() -> UnsafeMutablePointer<GMainContext>! {
        let rv = g_main_context_ref(cast(ptr))
        return cast(rv)
    }

    /// Releases ownership of a context previously acquired by this thread
    /// with g_main_context_acquire(). If the context was acquired multiple
    /// times, the ownership will be released only when g_main_context_release()
    /// is called as many times as it was acquired.
    public func release() {
        g_main_context_release(cast(ptr))
    }

    /// Removes file descriptor from the set of file descriptors to be
    /// polled for a particular context.
    public func remove_poll(fd: PollFDProtocol) {
        g_main_context_remove_poll(cast(ptr), cast(fd.ptr))
    }

    /// Sets the function to use to handle polling of file descriptors. It
    /// will be used instead of the poll() system call
    /// (or GLib's replacement function, which is used where
    /// poll() isn't available).
    /// 
    /// This function could possibly be used to integrate the GLib event
    /// loop with an external event loop.
    public func set_poll_func(func_: PollFunc) {
        g_main_context_set_poll_func(cast(ptr), func_)
    }

    /// Decreases the reference count on a #GMainContext object by one. If
    /// the result is zero, free the context and free all associated memory.
    public func unref() {
        g_main_context_unref(cast(ptr))
    }

    /// Tries to become the owner of the specified context,
    /// as with g_main_context_acquire(). But if another thread
    /// is the owner, atomically drop @mutex and wait on @cond until
    /// that owner releases ownership or until @cond is signaled, then
    /// try again (once) to become the owner.
    public func wait(cond: CondProtocol, mutex: UnsafeMutablePointer<GMutex>) -> Bool {
        let rv = g_main_context_wait(cast(ptr), cast(cond.ptr), cast(mutex))
        return Bool(rv != 0)
    }

    /// If @context is currently blocking in g_main_context_iteration()
    /// waiting for a source to become ready, cause it to stop blocking
    /// and return.  Otherwise, cause the next invocation of
    /// g_main_context_iteration() to return without blocking.
    /// 
    /// This API is useful for low-level control over #GMainContext; for
    /// example, integrating it with main loop implementations such as
    /// #GMainLoop.
    /// 
    /// Another related use for this function is when implementing a main
    /// loop with a termination condition, computed from multiple threads:
    /// 
    /// |[<!-- language="C" -->
    ///   #define NUM_TASKS 10
    ///   static volatile gint tasks_remaining = NUM_TASKS;
    ///   ...
    ///  
    ///   while (g_atomic_int_get (&tasks_remaining) != 0)
    ///     g_main_context_iteration (NULL, TRUE);
    /// ]|
    ///  
    /// Then in a thread:
    /// |[<!-- language="C" -->
    ///   perform_work();
    /// 
    ///   if (g_atomic_int_dec_and_test (&tasks_remaining))
    ///     g_main_context_wakeup (NULL);
    /// ]|
    public func wakeup() {
        g_main_context_wakeup(cast(ptr))
    }
}



public protocol MainLoopProtocol {
    var ptr: UnsafeMutablePointer<GMainLoop> { get }
}

public struct MainLoopRef: MainLoopProtocol {
    public let ptr: UnsafeMutablePointer<GMainLoop>
}

public extension MainLoopRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GMainLoop>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GMainLoop>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GMainLoop>(opaquePointer)
    }

        /// Creates a new #GMainLoop structure.
    public init( context: MainContextProtocol, is_running: Bool) {
        let rv = g_main_loop_new(cast(context.ptr), gboolean(is_running ? 1 : 0))
        self.ptr = cast(rv)
    }
}

public class MainLoop: MainLoopProtocol {
    public let ptr: UnsafeMutablePointer<GMainLoop>

    public init(ptr: UnsafeMutablePointer<GMainLoop>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension MainLoop {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GMainLoop>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GMainLoop>(opaquePointer))
    }

        /// Creates a new #GMainLoop structure.
    public convenience init( context: MainContextProtocol, is_running: Bool) {
        let rv = g_main_loop_new(cast(context.ptr), gboolean(is_running ? 1 : 0))
        self.init(ptr: cast(rv))
    }
}

public extension MainLoopProtocol {
    /// Returns the #GMainContext of @loop.
    public func get_context() -> UnsafeMutablePointer<GMainContext>! {
        let rv = g_main_loop_get_context(cast(ptr))
        return cast(rv)
    }

    /// Checks to see if the main loop is currently being run via g_main_loop_run().
    public func is_running() -> Bool {
        let rv = g_main_loop_is_running(cast(ptr))
        return Bool(rv != 0)
    }

    /// Stops a #GMainLoop from running. Any calls to g_main_loop_run()
    /// for the loop will return.
    /// 
    /// Note that sources that have already been dispatched when
    /// g_main_loop_quit() is called will still be executed.
    public func quit() {
        g_main_loop_quit(cast(ptr))
    }

    /// Increases the reference count on a #GMainLoop object by one.
    public func ref() -> UnsafeMutablePointer<GMainLoop>! {
        let rv = g_main_loop_ref(cast(ptr))
        return cast(rv)
    }

    /// Runs a main loop until g_main_loop_quit() is called on the loop.
    /// If this is called for the thread of the loop's #GMainContext,
    /// it will process events from the loop, otherwise it will
    /// simply wait.
    public func run() {
        g_main_loop_run(cast(ptr))
    }

    /// Decreases the reference count on a #GMainLoop object by one. If
    /// the result is zero, free the loop and free all associated memory.
    public func unref() {
        g_main_loop_unref(cast(ptr))
    }
}



public protocol MappedFileProtocol {
    var ptr: UnsafeMutablePointer<GMappedFile> { get }
}

public struct MappedFileRef: MappedFileProtocol {
    public let ptr: UnsafeMutablePointer<GMappedFile>
}

public extension MappedFileRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GMappedFile>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GMappedFile>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GMappedFile>(opaquePointer)
    }

        /// Maps a file into memory. On UNIX, this is using the mmap() function.
    /// 
    /// If @writable is %TRUE, the mapped buffer may be modified, otherwise
    /// it is an error to modify the mapped buffer. Modifications to the buffer
    /// are not visible to other processes mapping the same file, and are not
    /// written back to the file.
    /// 
    /// Note that modifications of the underlying file might affect the contents
    /// of the #GMappedFile. Therefore, mapping should only be used if the file
    /// will not be modified, or if all modifications of the file are done
    /// atomically (e.g. using g_file_set_contents()).
    /// 
    /// If @filename is the name of an empty, regular file, the function
    /// will successfully return an empty #GMappedFile. In other cases of
    /// size 0 (e.g. device files such as /dev/null), @error will be set
    /// to the #GFileError value #G_FILE_ERROR_INVAL.
    public init( filename: UnsafePointer<gchar>, writable: Bool) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_mapped_file_new(cast(filename), gboolean(writable ? 1 : 0), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        self.ptr = cast(rv)
    }

    /// Maps a file into memory. On UNIX, this is using the mmap() function.
    /// 
    /// If @writable is %TRUE, the mapped buffer may be modified, otherwise
    /// it is an error to modify the mapped buffer. Modifications to the buffer
    /// are not visible to other processes mapping the same file, and are not
    /// written back to the file.
    /// 
    /// Note that modifications of the underlying file might affect the contents
    /// of the #GMappedFile. Therefore, mapping should only be used if the file
    /// will not be modified, or if all modifications of the file are done
    /// atomically (e.g. using g_file_set_contents()).
    public init(fd: CInt, writable: Bool) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_mapped_file_new_from_fd(gint(fd), gboolean(writable ? 1 : 0), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        self.ptr = cast(rv)
    }
    /// Maps a file into memory. On UNIX, this is using the mmap() function.
    /// 
    /// If @writable is %TRUE, the mapped buffer may be modified, otherwise
    /// it is an error to modify the mapped buffer. Modifications to the buffer
    /// are not visible to other processes mapping the same file, and are not
    /// written back to the file.
    /// 
    /// Note that modifications of the underlying file might affect the contents
    /// of the #GMappedFile. Therefore, mapping should only be used if the file
    /// will not be modified, or if all modifications of the file are done
    /// atomically (e.g. using g_file_set_contents()).
    public static func new_from_fd(fd: CInt, writable: Bool) throws -> MappedFileRef! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_mapped_file_new_from_fd(gint(fd), gboolean(writable ? 1 : 0), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return rv.map { MappedFileRef(ptr: cast($0)) }
    }
}

public class MappedFile: MappedFileProtocol {
    public let ptr: UnsafeMutablePointer<GMappedFile>

    public init(ptr: UnsafeMutablePointer<GMappedFile>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension MappedFile {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GMappedFile>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GMappedFile>(opaquePointer))
    }

        /// Maps a file into memory. On UNIX, this is using the mmap() function.
    /// 
    /// If @writable is %TRUE, the mapped buffer may be modified, otherwise
    /// it is an error to modify the mapped buffer. Modifications to the buffer
    /// are not visible to other processes mapping the same file, and are not
    /// written back to the file.
    /// 
    /// Note that modifications of the underlying file might affect the contents
    /// of the #GMappedFile. Therefore, mapping should only be used if the file
    /// will not be modified, or if all modifications of the file are done
    /// atomically (e.g. using g_file_set_contents()).
    /// 
    /// If @filename is the name of an empty, regular file, the function
    /// will successfully return an empty #GMappedFile. In other cases of
    /// size 0 (e.g. device files such as /dev/null), @error will be set
    /// to the #GFileError value #G_FILE_ERROR_INVAL.
    public convenience init( filename: UnsafePointer<gchar>, writable: Bool) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_mapped_file_new(cast(filename), gboolean(writable ? 1 : 0), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        self.init(ptr: cast(rv))
    }

    /// Maps a file into memory. On UNIX, this is using the mmap() function.
    /// 
    /// If @writable is %TRUE, the mapped buffer may be modified, otherwise
    /// it is an error to modify the mapped buffer. Modifications to the buffer
    /// are not visible to other processes mapping the same file, and are not
    /// written back to the file.
    /// 
    /// Note that modifications of the underlying file might affect the contents
    /// of the #GMappedFile. Therefore, mapping should only be used if the file
    /// will not be modified, or if all modifications of the file are done
    /// atomically (e.g. using g_file_set_contents()).
    public convenience init(fd: CInt, writable: Bool) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_mapped_file_new_from_fd(gint(fd), gboolean(writable ? 1 : 0), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        self.init(ptr: cast(rv))
    }
    /// Maps a file into memory. On UNIX, this is using the mmap() function.
    /// 
    /// If @writable is %TRUE, the mapped buffer may be modified, otherwise
    /// it is an error to modify the mapped buffer. Modifications to the buffer
    /// are not visible to other processes mapping the same file, and are not
    /// written back to the file.
    /// 
    /// Note that modifications of the underlying file might affect the contents
    /// of the #GMappedFile. Therefore, mapping should only be used if the file
    /// will not be modified, or if all modifications of the file are done
    /// atomically (e.g. using g_file_set_contents()).
    public static func new_from_fd(fd: CInt, writable: Bool) throws -> MappedFile! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_mapped_file_new_from_fd(gint(fd), gboolean(writable ? 1 : 0), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return rv.map { MappedFile(ptr: cast($0)) }
    }
}

public extension MappedFileProtocol {
    /// This call existed before #GMappedFile had refcounting and is currently
    /// exactly the same as g_mapped_file_unref().
    ///
    /// **free is deprecated:**
    /// Use g_mapped_file_unref() instead.
    @available(*, deprecated) public func free() {
        g_mapped_file_free(cast(ptr))
    }

    /// Creates a new #GBytes which references the data mapped from @file.
    /// The mapped contents of the file must not be modified after creating this
    /// bytes object, because a #GBytes should be immutable.
    public func get_bytes() -> UnsafeMutablePointer<GBytes>! {
        let rv = g_mapped_file_get_bytes(cast(ptr))
        return cast(rv)
    }

    /// Returns the contents of a #GMappedFile.
    /// 
    /// Note that the contents may not be zero-terminated,
    /// even if the #GMappedFile is backed by a text file.
    /// 
    /// If the file is empty then %NULL is returned.
    public func get_contents() -> UnsafeMutablePointer<gchar>! {
        let rv = g_mapped_file_get_contents(cast(ptr))
        return cast(rv)
    }

    /// Returns the length of the contents of a #GMappedFile.
    public func get_length() -> Int {
        let rv = g_mapped_file_get_length(cast(ptr))
        return Int(rv)
    }

    /// Increments the reference count of @file by one.  It is safe to call
    /// this function from any thread.
    public func ref() -> UnsafeMutablePointer<GMappedFile>! {
        let rv = g_mapped_file_ref(cast(ptr))
        return cast(rv)
    }

    /// Decrements the reference count of @file by one.  If the reference count
    /// drops to 0, unmaps the buffer of @file and frees it.
    /// 
    /// It is safe to call this function from any thread.
    /// 
    /// Since 2.22
    public func unref() {
        g_mapped_file_unref(cast(ptr))
    }
}



public protocol MarkupParseContextProtocol {
    var ptr: UnsafeMutablePointer<GMarkupParseContext> { get }
}

public struct MarkupParseContextRef: MarkupParseContextProtocol {
    public let ptr: UnsafeMutablePointer<GMarkupParseContext>
}

public extension MarkupParseContextRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GMarkupParseContext>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GMarkupParseContext>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GMarkupParseContext>(opaquePointer)
    }

        /// Creates a new parse context. A parse context is used to parse
    /// marked-up documents. You can feed any number of documents into
    /// a context, as long as no errors occur; once an error occurs,
    /// the parse context can't continue to parse text (you have to
    /// free it and create a new parse context).
    public init( parser: MarkupParserProtocol, flags: MarkupParseFlags, user_data: OpaquePointer, user_data_dnotify: DestroyNotify) {
        let rv = g_markup_parse_context_new(cast(parser.ptr), flags, cast(user_data), user_data_dnotify)
        self.ptr = cast(rv)
    }
}

public class MarkupParseContext: MarkupParseContextProtocol {
    public let ptr: UnsafeMutablePointer<GMarkupParseContext>

    public init(ptr: UnsafeMutablePointer<GMarkupParseContext>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension MarkupParseContext {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GMarkupParseContext>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GMarkupParseContext>(opaquePointer))
    }

        /// Creates a new parse context. A parse context is used to parse
    /// marked-up documents. You can feed any number of documents into
    /// a context, as long as no errors occur; once an error occurs,
    /// the parse context can't continue to parse text (you have to
    /// free it and create a new parse context).
    public convenience init( parser: MarkupParserProtocol, flags: MarkupParseFlags, user_data: OpaquePointer, user_data_dnotify: DestroyNotify) {
        let rv = g_markup_parse_context_new(cast(parser.ptr), flags, cast(user_data), user_data_dnotify)
        self.init(ptr: cast(rv))
    }
}

public extension MarkupParseContextProtocol {
    /// Signals to the #GMarkupParseContext that all data has been
    /// fed into the parse context with g_markup_parse_context_parse().
    /// 
    /// This function reports an error if the document isn't complete,
    /// for example if elements are still open.
    public func end_parse() throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_markup_parse_context_end_parse(cast(ptr), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return Bool(rv != 0)
    }

    /// Frees a #GMarkupParseContext.
    /// 
    /// This function can't be called from inside one of the
    /// #GMarkupParser functions or while a subparser is pushed.
    public func free() {
        g_markup_parse_context_free(cast(ptr))
    }

    /// Retrieves the name of the currently open element.
    /// 
    /// If called from the start_element or end_element handlers this will
    /// give the element_name as passed to those functions. For the parent
    /// elements, see g_markup_parse_context_get_element_stack().
    public func get_element() -> UnsafePointer<gchar>! {
        let rv = g_markup_parse_context_get_element(cast(ptr))
        return cast(rv)
    }

    /// Retrieves the element stack from the internal state of the parser.
    /// 
    /// The returned #GSList is a list of strings where the first item is
    /// the currently open tag (as would be returned by
    /// g_markup_parse_context_get_element()) and the next item is its
    /// immediate parent.
    /// 
    /// This function is intended to be used in the start_element and
    /// end_element handlers where g_markup_parse_context_get_element()
    /// would merely return the name of the element that is being
    /// processed.
    public func get_element_stack() -> UnsafePointer<GSList>! {
        let rv = g_markup_parse_context_get_element_stack(cast(ptr))
        return cast(rv)
    }

    /// Retrieves the current line number and the number of the character on
    /// that line. Intended for use in error messages; there are no strict
    /// semantics for what constitutes the "current" line number other than
    /// "the best number we could come up with for error messages."
    public func get_position(line_number: UnsafeMutablePointer<gint>, char_number: UnsafeMutablePointer<gint>) {
        g_markup_parse_context_get_position(cast(ptr), cast(line_number), cast(char_number))
    }

    /// Returns the user_data associated with @context.
    /// 
    /// This will either be the user_data that was provided to
    /// g_markup_parse_context_new() or to the most recent call
    /// of g_markup_parse_context_push().
    public func get_user_data() -> OpaquePointer! {
        let rv = g_markup_parse_context_get_user_data(cast(ptr))
        return cast(rv)
    }

    /// Feed some data to the #GMarkupParseContext.
    /// 
    /// The data need not be valid UTF-8; an error will be signaled if
    /// it's invalid. The data need not be an entire document; you can
    /// feed a document into the parser incrementally, via multiple calls
    /// to this function. Typically, as you receive data from a network
    /// connection or file, you feed each received chunk of data into this
    /// function, aborting the process if an error occurs. Once an error
    /// is reported, no further data may be fed to the #GMarkupParseContext;
    /// all errors are fatal.
    public func parse(text: UnsafePointer<gchar>, text_len: gssize) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_markup_parse_context_parse(cast(ptr), cast(text), text_len, &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return Bool(rv != 0)
    }

    /// Completes the process of a temporary sub-parser redirection.
    /// 
    /// This function exists to collect the user_data allocated by a
    /// matching call to g_markup_parse_context_push(). It must be called
    /// in the end_element handler corresponding to the start_element
    /// handler during which g_markup_parse_context_push() was called.
    /// You must not call this function from the error callback -- the
    /// @user_data is provided directly to the callback in that case.
    /// 
    /// This function is not intended to be directly called by users
    /// interested in invoking subparsers. Instead, it is intended to
    /// be used by the subparsers themselves to implement a higher-level
    /// interface.
    public func pop() -> OpaquePointer! {
        let rv = g_markup_parse_context_pop(cast(ptr))
        return cast(rv)
    }

    /// Temporarily redirects markup data to a sub-parser.
    /// 
    /// This function may only be called from the start_element handler of
    /// a #GMarkupParser. It must be matched with a corresponding call to
    /// g_markup_parse_context_pop() in the matching end_element handler
    /// (except in the case that the parser aborts due to an error).
    /// 
    /// All tags, text and other data between the matching tags is
    /// redirected to the subparser given by @parser. @user_data is used
    /// as the user_data for that parser. @user_data is also passed to the
    /// error callback in the event that an error occurs. This includes
    /// errors that occur in subparsers of the subparser.
    /// 
    /// The end tag matching the start tag for which this call was made is
    /// handled by the previous parser (which is given its own user_data)
    /// which is why g_markup_parse_context_pop() is provided to allow "one
    /// last access" to the @user_data provided to this function. In the
    /// case of error, the @user_data provided here is passed directly to
    /// the error callback of the subparser and g_markup_parse_context_pop()
    /// should not be called. In either case, if @user_data was allocated
    /// then it ought to be freed from both of these locations.
    /// 
    /// This function is not intended to be directly called by users
    /// interested in invoking subparsers. Instead, it is intended to be
    /// used by the subparsers themselves to implement a higher-level
    /// interface.
    /// 
    /// As an example, see the following implementation of a simple
    /// parser that counts the number of tags encountered.
    /// 
    /// |[<!-- language="C" -->
    /// typedef struct
    /// {
    ///   gint tag_count;
    /// } CounterData;
    /// 
    /// static void
    /// counter_start_element (GMarkupParseContext  *context,
    ///                        const gchar          *element_name,
    ///                        const gchar         **attribute_names,
    ///                        const gchar         **attribute_values,
    ///                        gpointer              user_data,
    ///                        GError              **error)
    /// {
    ///   CounterData *data = user_data;
    /// 
    ///   data->tag_count++;
    /// }
    /// 
    /// static void
    /// counter_error (GMarkupParseContext *context,
    ///                GError              *error,
    ///                gpointer             user_data)
    /// {
    ///   CounterData *data = user_data;
    /// 
    ///   g_slice_free (CounterData, data);
    /// }
    /// 
    /// static GMarkupParser counter_subparser =
    /// {
    ///   counter_start_element,
    ///   NULL,
    ///   NULL,
    ///   NULL,
    ///   counter_error
    /// };
    /// ]|
    /// 
    /// In order to allow this parser to be easily used as a subparser, the
    /// following interface is provided:
    /// 
    /// |[<!-- language="C" -->
    /// void
    /// start_counting (GMarkupParseContext *context)
    /// {
    ///   CounterData *data = g_slice_new (CounterData);
    /// 
    ///   data->tag_count = 0;
    ///   g_markup_parse_context_push (context, &counter_subparser, data);
    /// }
    /// 
    /// gint
    /// end_counting (GMarkupParseContext *context)
    /// {
    ///   CounterData *data = g_markup_parse_context_pop (context);
    ///   int result;
    /// 
    ///   result = data->tag_count;
    ///   g_slice_free (CounterData, data);
    /// 
    ///   return result;
    /// }
    /// ]|
    /// 
    /// The subparser would then be used as follows:
    /// 
    /// |[<!-- language="C" -->
    /// static void start_element (context, element_name, ...)
    /// {
    ///   if (strcmp (element_name, "count-these") == 0)
    ///     start_counting (context);
    /// 
    ///   // else, handle other tags...
    /// }
    /// 
    /// static void end_element (context, element_name, ...)
    /// {
    ///   if (strcmp (element_name, "count-these") == 0)
    ///     g_print ("Counted %d tags\n", end_counting (context));
    /// 
    ///   // else, handle other tags...
    /// }
    /// ]|
    public func push(parser: MarkupParserProtocol, user_data: OpaquePointer) {
        g_markup_parse_context_push(cast(ptr), cast(parser.ptr), cast(user_data))
    }

    /// Increases the reference count of @context.
    public func ref() -> UnsafeMutablePointer<GMarkupParseContext>! {
        let rv = g_markup_parse_context_ref(cast(ptr))
        return cast(rv)
    }

    /// Decreases the reference count of @context.  When its reference count
    /// drops to 0, it is freed.
    public func unref() {
        g_markup_parse_context_unref(cast(ptr))
    }
}



public protocol MarkupParserProtocol {
    var ptr: UnsafeMutablePointer<GMarkupParser> { get }
}

public struct MarkupParserRef: MarkupParserProtocol {
    public let ptr: UnsafeMutablePointer<GMarkupParser>
}

public extension MarkupParserRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GMarkupParser>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GMarkupParser>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GMarkupParser>(opaquePointer)
    }

    }

public class MarkupParser: MarkupParserProtocol {
    public let ptr: UnsafeMutablePointer<GMarkupParser>

    public init(ptr: UnsafeMutablePointer<GMarkupParser>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension MarkupParser {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GMarkupParser>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GMarkupParser>(opaquePointer))
    }

    }

public extension MarkupParserProtocol {
}



public protocol MatchInfoProtocol {
    var ptr: UnsafeMutablePointer<GMatchInfo> { get }
}

public struct MatchInfoRef: MatchInfoProtocol {
    public let ptr: UnsafeMutablePointer<GMatchInfo>
}

public extension MatchInfoRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GMatchInfo>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GMatchInfo>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GMatchInfo>(opaquePointer)
    }

    }

public class MatchInfo: MatchInfoProtocol {
    public let ptr: UnsafeMutablePointer<GMatchInfo>

    public init(ptr: UnsafeMutablePointer<GMatchInfo>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension MatchInfo {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GMatchInfo>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GMatchInfo>(opaquePointer))
    }

    }

public extension MatchInfoProtocol {
    /// Returns a new string containing the text in @string_to_expand with
    /// references and escape sequences expanded. References refer to the last
    /// match done with @string against @regex and have the same syntax used by
    /// g_regex_replace().
    /// 
    /// The @string_to_expand must be UTF-8 encoded even if #G_REGEX_RAW was
    /// passed to g_regex_new().
    /// 
    /// The backreferences are extracted from the string passed to the match
    /// function, so you cannot call this function after freeing the string.
    /// 
    /// @match_info may be %NULL in which case @string_to_expand must not
    /// contain references. For instance "foo\n" does not refer to an actual
    /// pattern and '\n' merely will be replaced with \n character,
    /// while to expand "\0" (whole match) one needs the result of a match.
    /// Use g_regex_check_replacement() to find out whether @string_to_expand
    /// contains references.
    public func expand_references(string_to_expand: UnsafePointer<gchar>) throws -> UnsafeMutablePointer<gchar>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_match_info_expand_references(cast(ptr), cast(string_to_expand), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return cast(rv)
    }

    /// Retrieves the text matching the @match_num'th capturing
    /// parentheses. 0 is the full text of the match, 1 is the first paren
    /// set, 2 the second, and so on.
    /// 
    /// If @match_num is a valid sub pattern but it didn't match anything
    /// (e.g. sub pattern 1, matching "b" against "(a)?b") then an empty
    /// string is returned.
    /// 
    /// If the match was obtained using the DFA algorithm, that is using
    /// g_regex_match_all() or g_regex_match_all_full(), the retrieved
    /// string is not that of a set of parentheses but that of a matched
    /// substring. Substrings are matched in reverse order of length, so
    /// 0 is the longest match.
    /// 
    /// The string is fetched from the string passed to the match function,
    /// so you cannot call this function after freeing the string.
    public func fetch(match_num: CInt) -> UnsafeMutablePointer<gchar>! {
        let rv = g_match_info_fetch(cast(ptr), gint(match_num))
        return cast(rv)
    }

    /// Bundles up pointers to each of the matching substrings from a match
    /// and stores them in an array of gchar pointers. The first element in
    /// the returned array is the match number 0, i.e. the entire matched
    /// text.
    /// 
    /// If a sub pattern didn't match anything (e.g. sub pattern 1, matching
    /// "b" against "(a)?b") then an empty string is inserted.
    /// 
    /// If the last match was obtained using the DFA algorithm, that is using
    /// g_regex_match_all() or g_regex_match_all_full(), the retrieved
    /// strings are not that matched by sets of parentheses but that of the
    /// matched substring. Substrings are matched in reverse order of length,
    /// so the first one is the longest match.
    /// 
    /// The strings are fetched from the string passed to the match function,
    /// so you cannot call this function after freeing the string.
    public func fetch_all() -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        let rv = g_match_info_fetch_all(cast(ptr))
        return cast(rv)
    }

    /// Retrieves the text matching the capturing parentheses named @name.
    /// 
    /// If @name is a valid sub pattern name but it didn't match anything
    /// (e.g. sub pattern "X", matching "b" against "(?P<X>a)?b")
    /// then an empty string is returned.
    /// 
    /// The string is fetched from the string passed to the match function,
    /// so you cannot call this function after freeing the string.
    public func fetch_named(name: UnsafePointer<gchar>) -> UnsafeMutablePointer<gchar>! {
        let rv = g_match_info_fetch_named(cast(ptr), cast(name))
        return cast(rv)
    }

    /// Retrieves the position in bytes of the capturing parentheses named @name.
    /// 
    /// If @name is a valid sub pattern name but it didn't match anything
    /// (e.g. sub pattern "X", matching "b" against "(?P<X>a)?b")
    /// then @start_pos and @end_pos are set to -1 and %TRUE is returned.
    public func fetch_named_pos(name: UnsafePointer<gchar>, start_pos: UnsafeMutablePointer<gint>, end_pos: UnsafeMutablePointer<gint>) -> Bool {
        let rv = g_match_info_fetch_named_pos(cast(ptr), cast(name), cast(start_pos), cast(end_pos))
        return Bool(rv != 0)
    }

    /// Retrieves the position in bytes of the @match_num'th capturing
    /// parentheses. 0 is the full text of the match, 1 is the first
    /// paren set, 2 the second, and so on.
    /// 
    /// If @match_num is a valid sub pattern but it didn't match anything
    /// (e.g. sub pattern 1, matching "b" against "(a)?b") then @start_pos
    /// and @end_pos are set to -1 and %TRUE is returned.
    /// 
    /// If the match was obtained using the DFA algorithm, that is using
    /// g_regex_match_all() or g_regex_match_all_full(), the retrieved
    /// position is not that of a set of parentheses but that of a matched
    /// substring. Substrings are matched in reverse order of length, so
    /// 0 is the longest match.
    public func fetch_pos(match_num: CInt, start_pos: UnsafeMutablePointer<gint>, end_pos: UnsafeMutablePointer<gint>) -> Bool {
        let rv = g_match_info_fetch_pos(cast(ptr), gint(match_num), cast(start_pos), cast(end_pos))
        return Bool(rv != 0)
    }

    /// If @match_info is not %NULL, calls g_match_info_unref(); otherwise does
    /// nothing.
    public func free() {
        g_match_info_free(cast(ptr))
    }

    /// Retrieves the number of matched substrings (including substring 0,
    /// that is the whole matched text), so 1 is returned if the pattern
    /// has no substrings in it and 0 is returned if the match failed.
    /// 
    /// If the last match was obtained using the DFA algorithm, that is
    /// using g_regex_match_all() or g_regex_match_all_full(), the retrieved
    /// count is not that of the number of capturing parentheses but that of
    /// the number of matched substrings.
    public func get_match_count() -> CInt {
        let rv = g_match_info_get_match_count(cast(ptr))
        return CInt(rv)
    }

    /// Returns #GRegex object used in @match_info. It belongs to Glib
    /// and must not be freed. Use g_regex_ref() if you need to keep it
    /// after you free @match_info object.
    public func get_regex() -> UnsafeMutablePointer<GRegex>! {
        let rv = g_match_info_get_regex(cast(ptr))
        return cast(rv)
    }

    /// Returns the string searched with @match_info. This is the
    /// string passed to g_regex_match() or g_regex_replace() so
    /// you may not free it before calling this function.
    public func get_string() -> UnsafePointer<gchar>! {
        let rv = g_match_info_get_string(cast(ptr))
        return cast(rv)
    }

    /// Usually if the string passed to g_regex_match*() matches as far as
    /// it goes, but is too short to match the entire pattern, %FALSE is
    /// returned. There are circumstances where it might be helpful to
    /// distinguish this case from other cases in which there is no match.
    /// 
    /// Consider, for example, an application where a human is required to
    /// type in data for a field with specific formatting requirements. An
    /// example might be a date in the form ddmmmyy, defined by the pattern
    /// "^\d?\d(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec)\d\d$".
    /// If the application sees the user’s keystrokes one by one, and can
    /// check that what has been typed so far is potentially valid, it is
    /// able to raise an error as soon as a mistake is made.
    /// 
    /// GRegex supports the concept of partial matching by means of the
    /// #G_REGEX_MATCH_PARTIAL_SOFT and #G_REGEX_MATCH_PARTIAL_HARD flags.
    /// When they are used, the return code for
    /// g_regex_match() or g_regex_match_full() is, as usual, %TRUE
    /// for a complete match, %FALSE otherwise. But, when these functions
    /// return %FALSE, you can check if the match was partial calling
    /// g_match_info_is_partial_match().
    /// 
    /// The difference between #G_REGEX_MATCH_PARTIAL_SOFT and
    /// #G_REGEX_MATCH_PARTIAL_HARD is that when a partial match is encountered
    /// with #G_REGEX_MATCH_PARTIAL_SOFT, matching continues to search for a
    /// possible complete match, while with #G_REGEX_MATCH_PARTIAL_HARD matching
    /// stops at the partial match.
    /// When both #G_REGEX_MATCH_PARTIAL_SOFT and #G_REGEX_MATCH_PARTIAL_HARD
    /// are set, the latter takes precedence.
    /// 
    /// There were formerly some restrictions on the pattern for partial matching.
    /// The restrictions no longer apply.
    /// 
    /// See pcrepartial(3) for more information on partial matching.
    public func is_partial_match() -> Bool {
        let rv = g_match_info_is_partial_match(cast(ptr))
        return Bool(rv != 0)
    }

    /// Returns whether the previous match operation succeeded.
    public func matches() -> Bool {
        let rv = g_match_info_matches(cast(ptr))
        return Bool(rv != 0)
    }

    /// Scans for the next match using the same parameters of the previous
    /// call to g_regex_match_full() or g_regex_match() that returned
    /// @match_info.
    /// 
    /// The match is done on the string passed to the match function, so you
    /// cannot free it before calling this function.
    public func next() throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_match_info_next(cast(ptr), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return Bool(rv != 0)
    }

    /// Increases reference count of @match_info by 1.
    public func ref() -> UnsafeMutablePointer<GMatchInfo>! {
        let rv = g_match_info_ref(cast(ptr))
        return cast(rv)
    }

    /// Decreases reference count of @match_info by 1. When reference count drops
    /// to zero, it frees all the memory associated with the match_info structure.
    public func unref() {
        g_match_info_unref(cast(ptr))
    }
}



public protocol MemVTableProtocol {
    var ptr: UnsafeMutablePointer<GMemVTable> { get }
}

public struct MemVTableRef: MemVTableProtocol {
    public let ptr: UnsafeMutablePointer<GMemVTable>
}

public extension MemVTableRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GMemVTable>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GMemVTable>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GMemVTable>(opaquePointer)
    }

    }

public class MemVTable: MemVTableProtocol {
    public let ptr: UnsafeMutablePointer<GMemVTable>

    public init(ptr: UnsafeMutablePointer<GMemVTable>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension MemVTable {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GMemVTable>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GMemVTable>(opaquePointer))
    }

    }

public extension MemVTableProtocol {
}



public protocol NodeProtocol {
    var ptr: UnsafeMutablePointer<GNode> { get }
}

public struct NodeRef: NodeProtocol {
    public let ptr: UnsafeMutablePointer<GNode>
}

public extension NodeRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GNode>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GNode>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GNode>(opaquePointer)
    }

    }

public class Node: NodeProtocol {
    public let ptr: UnsafeMutablePointer<GNode>

    public init(ptr: UnsafeMutablePointer<GNode>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension Node {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GNode>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GNode>(opaquePointer))
    }

    }

public extension NodeProtocol {
    /// Gets the position of the first child of a #GNode
    /// which contains the given data.
    public func child_index(data: OpaquePointer) -> CInt {
        let rv = g_node_child_index(cast(ptr), cast(data))
        return CInt(rv)
    }

    /// Gets the position of a #GNode with respect to its siblings.
    /// @child must be a child of @node. The first child is numbered 0,
    /// the second 1, and so on.
    public func child_position() -> CInt {
        let rv = g_node_child_position(cast(ptr), cast(ptr))
        return CInt(rv)
    }

    /// Calls a function for each of the children of a #GNode.
    /// Note that it doesn't descend beneath the child nodes.
    public func children_foreach(flags: TraverseFlags, func_: NodeForeachFunc, data: OpaquePointer) {
        g_node_children_foreach(cast(ptr), flags, func_, cast(data))
    }

    /// Recursively copies a #GNode (but does not deep-copy the data inside the
    /// nodes, see g_node_copy_deep() if you need that).
    public func copy() -> UnsafeMutablePointer<GNode>! {
        let rv = g_node_copy(cast(ptr))
        return cast(rv)
    }

    /// Recursively copies a #GNode and its data.
    public func copy_deep(copy_func: CopyFunc, data: OpaquePointer) -> UnsafeMutablePointer<GNode>! {
        let rv = g_node_copy_deep(cast(ptr), copy_func, cast(data))
        return cast(rv)
    }

    /// Gets the depth of a #GNode.
    /// 
    /// If @node is %NULL the depth is 0. The root node has a depth of 1.
    /// For the children of the root node the depth is 2. And so on.
    public func depth() -> CUnsignedInt {
        let rv = g_node_depth(cast(ptr))
        return CUnsignedInt(rv)
    }

    /// Removes @root and its children from the tree, freeing any memory
    /// allocated.
    public func destroy() {
        g_node_destroy(cast(ptr))
    }

    /// Finds a #GNode in a tree.
    public func find(order: TraverseType, flags: TraverseFlags, data: OpaquePointer) -> UnsafeMutablePointer<GNode>! {
        let rv = g_node_find(cast(ptr), order, flags, cast(data))
        return cast(rv)
    }

    /// Finds the first child of a #GNode with the given data.
    public func find_child(flags: TraverseFlags, data: OpaquePointer) -> UnsafeMutablePointer<GNode>! {
        let rv = g_node_find_child(cast(ptr), flags, cast(data))
        return cast(rv)
    }

    /// Gets the first sibling of a #GNode.
    /// This could possibly be the node itself.
    public func first_sibling() -> UnsafeMutablePointer<GNode>! {
        let rv = g_node_first_sibling(cast(ptr))
        return cast(rv)
    }

    /// Gets the root of a tree.
    public func get_root() -> UnsafeMutablePointer<GNode>! {
        let rv = g_node_get_root(cast(ptr))
        return cast(rv)
    }

    /// Inserts a #GNode beneath the parent at the given position.
    public func insert(position: CInt) -> UnsafeMutablePointer<GNode>! {
        let rv = g_node_insert(cast(ptr), gint(position), cast(ptr))
        return cast(rv)
    }

    /// Inserts a #GNode beneath the parent after the given sibling.
    public func insert_after() -> UnsafeMutablePointer<GNode>! {
        let rv = g_node_insert_after(cast(ptr), cast(ptr), cast(ptr))
        return cast(rv)
    }

    /// Inserts a #GNode beneath the parent before the given sibling.
    public func insert_before() -> UnsafeMutablePointer<GNode>! {
        let rv = g_node_insert_before(cast(ptr), cast(ptr), cast(ptr))
        return cast(rv)
    }

    /// Returns %TRUE if @node is an ancestor of @descendant.
    /// This is true if node is the parent of @descendant,
    /// or if node is the grandparent of @descendant etc.
    public func is_ancestor() -> Bool {
        let rv = g_node_is_ancestor(cast(ptr), cast(ptr))
        return Bool(rv != 0)
    }

    /// Gets the last child of a #GNode.
    public func last_child() -> UnsafeMutablePointer<GNode>! {
        let rv = g_node_last_child(cast(ptr))
        return cast(rv)
    }

    /// Gets the last sibling of a #GNode.
    /// This could possibly be the node itself.
    public func last_sibling() -> UnsafeMutablePointer<GNode>! {
        let rv = g_node_last_sibling(cast(ptr))
        return cast(rv)
    }

    /// Gets the maximum height of all branches beneath a #GNode.
    /// This is the maximum distance from the #GNode to all leaf nodes.
    /// 
    /// If @root is %NULL, 0 is returned. If @root has no children,
    /// 1 is returned. If @root has children, 2 is returned. And so on.
    public func max_height() -> CUnsignedInt {
        let rv = g_node_max_height(cast(ptr))
        return CUnsignedInt(rv)
    }

    /// Gets the number of children of a #GNode.
    public func n_children() -> CUnsignedInt {
        let rv = g_node_n_children(cast(ptr))
        return CUnsignedInt(rv)
    }

    /// Gets the number of nodes in a tree.
    public func n_nodes(flags: TraverseFlags) -> CUnsignedInt {
        let rv = g_node_n_nodes(cast(ptr), flags)
        return CUnsignedInt(rv)
    }

    /// Gets a child of a #GNode, using the given index.
    /// The first child is at index 0. If the index is
    /// too big, %NULL is returned.
    public func nth_child(n: CUnsignedInt) -> UnsafeMutablePointer<GNode>! {
        let rv = g_node_nth_child(cast(ptr), guint(n))
        return cast(rv)
    }

    /// Inserts a #GNode as the first child of the given parent.
    public func prepend() -> UnsafeMutablePointer<GNode>! {
        let rv = g_node_prepend(cast(ptr), cast(ptr))
        return cast(rv)
    }

    /// Reverses the order of the children of a #GNode.
    /// (It doesn't change the order of the grandchildren.)
    public func reverse_children() {
        g_node_reverse_children(cast(ptr))
    }

    /// Traverses a tree starting at the given root #GNode.
    /// It calls the given function for each node visited.
    /// The traversal can be halted at any point by returning %TRUE from @func.
    public func traverse(order: TraverseType, flags: TraverseFlags, max_depth: CInt, func_: NodeTraverseFunc, data: OpaquePointer) {
        g_node_traverse(cast(ptr), order, flags, gint(max_depth), func_, cast(data))
    }

    /// Unlinks a #GNode from a tree, resulting in two separate trees.
    public func unlink() {
        g_node_unlink(cast(ptr))
    }
}



public protocol OnceProtocol {
    var ptr: UnsafeMutablePointer<GOnce> { get }
}

public struct OnceRef: OnceProtocol {
    public let ptr: UnsafeMutablePointer<GOnce>
}

public extension OnceRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GOnce>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GOnce>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GOnce>(opaquePointer)
    }

    }

public class Once: OnceProtocol {
    public let ptr: UnsafeMutablePointer<GOnce>

    public init(ptr: UnsafeMutablePointer<GOnce>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension Once {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GOnce>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GOnce>(opaquePointer))
    }

    }

public extension OnceProtocol {
    public func impl(func_: ThreadFunc, arg: OpaquePointer) -> OpaquePointer! {
        let rv = g_once_impl(cast(ptr), func_, cast(arg))
        return cast(rv)
    }
}



public protocol OptionContextProtocol {
    var ptr: UnsafeMutablePointer<GOptionContext> { get }
}

public struct OptionContextRef: OptionContextProtocol {
    public let ptr: UnsafeMutablePointer<GOptionContext>
}

public extension OptionContextRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GOptionContext>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GOptionContext>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GOptionContext>(opaquePointer)
    }

    }

public class OptionContext: OptionContextProtocol {
    public let ptr: UnsafeMutablePointer<GOptionContext>

    public init(ptr: UnsafeMutablePointer<GOptionContext>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension OptionContext {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GOptionContext>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GOptionContext>(opaquePointer))
    }

    }

public extension OptionContextProtocol {
    /// Adds a #GOptionGroup to the @context, so that parsing with @context
    /// will recognize the options in the group. Note that this will take
    /// ownership of the @group and thus the @group should not be freed.
    public func add_group(group: OptionGroupProtocol) {
        g_option_context_add_group(cast(ptr), cast(group.ptr))
    }

    /// A convenience function which creates a main group if it doesn't
    /// exist, adds the @entries to it and sets the translation domain.
    public func add_main_entries(entries: OptionEntryProtocol, translation_domain: UnsafePointer<gchar>) {
        g_option_context_add_main_entries(cast(ptr), cast(entries.ptr), cast(translation_domain))
    }

    /// Frees context and all the groups which have been
    /// added to it.
    /// 
    /// Please note that parsed arguments need to be freed separately (see
    /// #GOptionEntry).
    public func free() {
        g_option_context_free(cast(ptr))
    }

    /// Returns the description. See g_option_context_set_description().
    public func get_description() -> UnsafePointer<gchar>! {
        let rv = g_option_context_get_description(cast(ptr))
        return cast(rv)
    }

    /// Returns a formatted, translated help text for the given context.
    /// To obtain the text produced by `--help`, call
    /// `g_option_context_get_help (context, TRUE, NULL)`.
    /// To obtain the text produced by `--help-all`, call
    /// `g_option_context_get_help (context, FALSE, NULL)`.
    /// To obtain the help text for an option group, call
    /// `g_option_context_get_help (context, FALSE, group)`.
    public func get_help(main_help: Bool, group: OptionGroupProtocol) -> UnsafeMutablePointer<gchar>! {
        let rv = g_option_context_get_help(cast(ptr), gboolean(main_help ? 1 : 0), cast(group.ptr))
        return cast(rv)
    }

    /// Returns whether automatic `--help` generation
    /// is turned on for @context. See g_option_context_set_help_enabled().
    public func get_help_enabled() -> Bool {
        let rv = g_option_context_get_help_enabled(cast(ptr))
        return Bool(rv != 0)
    }

    /// Returns whether unknown options are ignored or not. See
    /// g_option_context_set_ignore_unknown_options().
    public func get_ignore_unknown_options() -> Bool {
        let rv = g_option_context_get_ignore_unknown_options(cast(ptr))
        return Bool(rv != 0)
    }

    /// Returns a pointer to the main group of @context.
    public func get_main_group() -> UnsafeMutablePointer<GOptionGroup>! {
        let rv = g_option_context_get_main_group(cast(ptr))
        return cast(rv)
    }

    /// Returns whether strict POSIX code is enabled.
    /// 
    /// See g_option_context_set_strict_posix() for more information.
    public func get_strict_posix() -> Bool {
        let rv = g_option_context_get_strict_posix(cast(ptr))
        return Bool(rv != 0)
    }

    /// Returns the summary. See g_option_context_set_summary().
    public func get_summary() -> UnsafePointer<gchar>! {
        let rv = g_option_context_get_summary(cast(ptr))
        return cast(rv)
    }

    /// Parses the command line arguments, recognizing options
    /// which have been added to @context. A side-effect of
    /// calling this function is that g_set_prgname() will be
    /// called.
    /// 
    /// If the parsing is successful, any parsed arguments are
    /// removed from the array and @argc and @argv are updated
    /// accordingly. A '--' option is stripped from @argv
    /// unless there are unparsed options before and after it,
    /// or some of the options after it start with '-'. In case
    /// of an error, @argc and @argv are left unmodified.
    /// 
    /// If automatic `--help` support is enabled
    /// (see g_option_context_set_help_enabled()), and the
    /// @argv array contains one of the recognized help options,
    /// this function will produce help output to stdout and
    /// call `exit (0)`.
    /// 
    /// Note that function depends on the [current locale][setlocale] for
    /// automatic character set conversion of string and filename
    /// arguments.
    public func parse(argc: UnsafeMutablePointer<gint>, argv: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<gchar>>>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_option_context_parse(cast(ptr), cast(argc), cast(argv), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return Bool(rv != 0)
    }

    /// Parses the command line arguments.
    /// 
    /// This function is similar to g_option_context_parse() except that it
    /// respects the normal memory rules when dealing with a strv instead of
    /// assuming that the passed-in array is the argv of the main function.
    /// 
    /// In particular, strings that are removed from the arguments list will
    /// be freed using g_free().
    /// 
    /// On Windows, the strings are expected to be in UTF-8.  This is in
    /// contrast to g_option_context_parse() which expects them to be in the
    /// system codepage, which is how they are passed as @argv to main().
    /// See g_win32_get_command_line() for a solution.
    /// 
    /// This function is useful if you are trying to use #GOptionContext with
    /// #GApplication.
    public func parse_strv(arguments: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<gchar>>>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_option_context_parse_strv(cast(ptr), cast(arguments), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return Bool(rv != 0)
    }

    /// Adds a string to be displayed in `--help` output after the list
    /// of options. This text often includes a bug reporting address.
    /// 
    /// Note that the summary is translated (see
    /// g_option_context_set_translate_func()).
    public func set_description(description: UnsafePointer<gchar>) {
        g_option_context_set_description(cast(ptr), cast(description))
    }

    /// Enables or disables automatic generation of `--help` output.
    /// By default, g_option_context_parse() recognizes `--help`, `-h`,
    /// `-?`, `--help-all` and `--help-groupname` and creates suitable
    /// output to stdout.
    public func set_help_enabled(help_enabled: Bool) {
        g_option_context_set_help_enabled(cast(ptr), gboolean(help_enabled ? 1 : 0))
    }

    /// Sets whether to ignore unknown options or not. If an argument is
    /// ignored, it is left in the @argv array after parsing. By default,
    /// g_option_context_parse() treats unknown options as error.
    /// 
    /// This setting does not affect non-option arguments (i.e. arguments
    /// which don't start with a dash). But note that GOption cannot reliably
    /// determine whether a non-option belongs to a preceding unknown option.
    public func set_ignore_unknown_options(ignore_unknown: Bool) {
        g_option_context_set_ignore_unknown_options(cast(ptr), gboolean(ignore_unknown ? 1 : 0))
    }

    /// Sets a #GOptionGroup as main group of the @context.
    /// This has the same effect as calling g_option_context_add_group(),
    /// the only difference is that the options in the main group are
    /// treated differently when generating `--help` output.
    public func set_main_group(group: OptionGroupProtocol) {
        g_option_context_set_main_group(cast(ptr), cast(group.ptr))
    }

    /// Sets strict POSIX mode.
    /// 
    /// By default, this mode is disabled.
    /// 
    /// In strict POSIX mode, the first non-argument parameter encountered
    /// (eg: filename) terminates argument processing.  Remaining arguments
    /// are treated as non-options and are not attempted to be parsed.
    /// 
    /// If strict POSIX mode is disabled then parsing is done in the GNU way
    /// where option arguments can be freely mixed with non-options.
    /// 
    /// As an example, consider "ls foo -l".  With GNU style parsing, this
    /// will list "foo" in long mode.  In strict POSIX style, this will list
    /// the files named "foo" and "-l".
    /// 
    /// It may be useful to force strict POSIX mode when creating "verb
    /// style" command line tools.  For example, the "gsettings" command line
    /// tool supports the global option "--schemadir" as well as many
    /// subcommands ("get", "set", etc.) which each have their own set of
    /// arguments.  Using strict POSIX mode will allow parsing the global
    /// options up to the verb name while leaving the remaining options to be
    /// parsed by the relevant subcommand (which can be determined by
    /// examining the verb name, which should be present in argv[1] after
    /// parsing).
    public func set_strict_posix(strict_posix: Bool) {
        g_option_context_set_strict_posix(cast(ptr), gboolean(strict_posix ? 1 : 0))
    }

    /// Adds a string to be displayed in `--help` output before the list
    /// of options. This is typically a summary of the program functionality.
    /// 
    /// Note that the summary is translated (see
    /// g_option_context_set_translate_func() and
    /// g_option_context_set_translation_domain()).
    public func set_summary(summary: UnsafePointer<gchar>) {
        g_option_context_set_summary(cast(ptr), cast(summary))
    }

    /// Sets the function which is used to translate the contexts
    /// user-visible strings, for `--help` output. If @func is %NULL,
    /// strings are not translated.
    /// 
    /// Note that option groups have their own translation functions,
    /// this function only affects the @parameter_string (see g_option_context_new()),
    /// the summary (see g_option_context_set_summary()) and the description
    /// (see g_option_context_set_description()).
    /// 
    /// If you are using gettext(), you only need to set the translation
    /// domain, see g_option_context_set_translation_domain().
    public func set_translate_func(func_: TranslateFunc, data: OpaquePointer, destroy_notify: DestroyNotify) {
        g_option_context_set_translate_func(cast(ptr), func_, cast(data), destroy_notify)
    }

    /// A convenience function to use gettext() for translating
    /// user-visible strings.
    public func set_translation_domain(domain: UnsafePointer<gchar>) {
        g_option_context_set_translation_domain(cast(ptr), cast(domain))
    }
}



public protocol OptionEntryProtocol {
    var ptr: UnsafeMutablePointer<GOptionEntry> { get }
}

public struct OptionEntryRef: OptionEntryProtocol {
    public let ptr: UnsafeMutablePointer<GOptionEntry>
}

public extension OptionEntryRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GOptionEntry>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GOptionEntry>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GOptionEntry>(opaquePointer)
    }

    }

public class OptionEntry: OptionEntryProtocol {
    public let ptr: UnsafeMutablePointer<GOptionEntry>

    public init(ptr: UnsafeMutablePointer<GOptionEntry>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension OptionEntry {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GOptionEntry>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GOptionEntry>(opaquePointer))
    }

    }

public extension OptionEntryProtocol {
}



public protocol OptionGroupProtocol {
    var ptr: UnsafeMutablePointer<GOptionGroup> { get }
}

public struct OptionGroupRef: OptionGroupProtocol {
    public let ptr: UnsafeMutablePointer<GOptionGroup>
}

public extension OptionGroupRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GOptionGroup>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GOptionGroup>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GOptionGroup>(opaquePointer)
    }

        /// Creates a new #GOptionGroup.
    public init( name: UnsafePointer<gchar>, description: UnsafePointer<gchar>, help_description: UnsafePointer<gchar>, user_data: OpaquePointer, destroy: DestroyNotify) {
        let rv = g_option_group_new(cast(name), cast(description), cast(help_description), cast(user_data), destroy)
        self.ptr = cast(rv)
    }
}

public class OptionGroup: OptionGroupProtocol {
    public let ptr: UnsafeMutablePointer<GOptionGroup>

    public init(ptr: UnsafeMutablePointer<GOptionGroup>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension OptionGroup {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GOptionGroup>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GOptionGroup>(opaquePointer))
    }

        /// Creates a new #GOptionGroup.
    public convenience init( name: UnsafePointer<gchar>, description: UnsafePointer<gchar>, help_description: UnsafePointer<gchar>, user_data: OpaquePointer, destroy: DestroyNotify) {
        let rv = g_option_group_new(cast(name), cast(description), cast(help_description), cast(user_data), destroy)
        self.init(ptr: cast(rv))
    }
}

public extension OptionGroupProtocol {
    /// Adds the options specified in @entries to @group.
    public func add_entries(entries: OptionEntryProtocol) {
        g_option_group_add_entries(cast(ptr), cast(entries.ptr))
    }

    /// Frees a #GOptionGroup. Note that you must not free groups
    /// which have been added to a #GOptionContext.
    ///
    /// **free is deprecated:**
    /// Use g_option_group_unref() instead.
    @available(*, deprecated) public func free() {
        g_option_group_free(cast(ptr))
    }

    /// Increments the reference count of @group by one.
    public func ref() -> UnsafeMutablePointer<GOptionGroup>! {
        let rv = g_option_group_ref(cast(ptr))
        return cast(rv)
    }

    /// Associates a function with @group which will be called
    /// from g_option_context_parse() when an error occurs.
    /// 
    /// Note that the user data to be passed to @error_func can be
    /// specified when constructing the group with g_option_group_new().
    public func set_error_hook(error_func: OptionErrorFunc) {
        g_option_group_set_error_hook(cast(ptr), error_func)
    }

    /// Associates two functions with @group which will be called
    /// from g_option_context_parse() before the first option is parsed
    /// and after the last option has been parsed, respectively.
    /// 
    /// Note that the user data to be passed to @pre_parse_func and
    /// @post_parse_func can be specified when constructing the group
    /// with g_option_group_new().
    public func set_parse_hooks(pre_parse_func: OptionParseFunc, post_parse_func: OptionParseFunc) {
        g_option_group_set_parse_hooks(cast(ptr), pre_parse_func, post_parse_func)
    }

    /// Sets the function which is used to translate user-visible strings,
    /// for `--help` output. Different groups can use different
    /// #GTranslateFuncs. If @func is %NULL, strings are not translated.
    /// 
    /// If you are using gettext(), you only need to set the translation
    /// domain, see g_option_group_set_translation_domain().
    public func set_translate_func(func_: TranslateFunc, data: OpaquePointer, destroy_notify: DestroyNotify) {
        g_option_group_set_translate_func(cast(ptr), func_, cast(data), destroy_notify)
    }

    /// A convenience function to use gettext() for translating
    /// user-visible strings.
    public func set_translation_domain(domain: UnsafePointer<gchar>) {
        g_option_group_set_translation_domain(cast(ptr), cast(domain))
    }

    /// Decrements the reference count of @group by one.
    /// If the reference count drops to 0, the @group will be freed.
    /// and all memory allocated by the @group is released.
    public func unref() {
        g_option_group_unref(cast(ptr))
    }
}



public protocol PatternSpecProtocol {
    var ptr: UnsafeMutablePointer<GPatternSpec> { get }
}

public struct PatternSpecRef: PatternSpecProtocol {
    public let ptr: UnsafeMutablePointer<GPatternSpec>
}

public extension PatternSpecRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GPatternSpec>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GPatternSpec>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GPatternSpec>(opaquePointer)
    }

    }

public class PatternSpec: PatternSpecProtocol {
    public let ptr: UnsafeMutablePointer<GPatternSpec>

    public init(ptr: UnsafeMutablePointer<GPatternSpec>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension PatternSpec {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GPatternSpec>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GPatternSpec>(opaquePointer))
    }

    }

public extension PatternSpecProtocol {
    /// Compares two compiled pattern specs and returns whether they will
    /// match the same set of strings.
    public func equal() -> Bool {
        let rv = g_pattern_spec_equal(cast(ptr), cast(ptr))
        return Bool(rv != 0)
    }

    /// Frees the memory allocated for the #GPatternSpec.
    public func free() {
        g_pattern_spec_free(cast(ptr))
    }
}



public protocol PollFDProtocol {
    var ptr: UnsafeMutablePointer<GPollFD> { get }
}

public struct PollFDRef: PollFDProtocol {
    public let ptr: UnsafeMutablePointer<GPollFD>
}

public extension PollFDRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GPollFD>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GPollFD>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GPollFD>(opaquePointer)
    }

    }

public class PollFD: PollFDProtocol {
    public let ptr: UnsafeMutablePointer<GPollFD>

    public init(ptr: UnsafeMutablePointer<GPollFD>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension PollFD {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GPollFD>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GPollFD>(opaquePointer))
    }

    }

public extension PollFDProtocol {
}



public protocol PrivateProtocol {
    var ptr: UnsafeMutablePointer<GPrivate> { get }
}

public struct PrivateRef: PrivateProtocol {
    public let ptr: UnsafeMutablePointer<GPrivate>
}

public extension PrivateRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GPrivate>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GPrivate>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GPrivate>(opaquePointer)
    }

    }

public class Private: PrivateProtocol {
    public let ptr: UnsafeMutablePointer<GPrivate>

    public init(ptr: UnsafeMutablePointer<GPrivate>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension Private {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GPrivate>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GPrivate>(opaquePointer))
    }

    }

public extension PrivateProtocol {
    /// Returns the current value of the thread local variable @key.
    /// 
    /// If the value has not yet been set in this thread, %NULL is returned.
    /// Values are never copied between threads (when a new thread is
    /// created, for example).
    public func get_() -> OpaquePointer! {
        let rv = g_private_get(cast(ptr))
        return cast(rv)
    }

    /// Sets the thread local variable @key to have the value @value in the
    /// current thread.
    /// 
    /// This function differs from g_private_set() in the following way: if
    /// the previous value was non-%NULL then the #GDestroyNotify handler for
    /// @key is run on it.
    public func replace(value: OpaquePointer) {
        g_private_replace(cast(ptr), cast(value))
    }

    /// Sets the thread local variable @key to have the value @value in the
    /// current thread.
    /// 
    /// This function differs from g_private_replace() in the following way:
    /// the #GDestroyNotify for @key is not called on the old value.
    public func set_(value: OpaquePointer) {
        g_private_set(cast(ptr), cast(value))
    }
}



public protocol PtrArrayProtocol {
    var ptr: UnsafeMutablePointer<GPtrArray> { get }
}

public struct PtrArrayRef: PtrArrayProtocol {
    public let ptr: UnsafeMutablePointer<GPtrArray>
}

public extension PtrArrayRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GPtrArray>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GPtrArray>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GPtrArray>(opaquePointer)
    }

        /// Creates a new #GPtrArray with @reserved_size pointers preallocated
    /// and a reference count of 1. This avoids frequent reallocation, if
    /// you are going to add many pointers to the array. Note however that
    /// the size of the array is still 0. It also set @element_free_func
    /// for freeing each element when the array is destroyed either via
    /// g_ptr_array_unref(), when g_ptr_array_free() is called with
    /// @free_segment set to %TRUE or when removing elements.
    public static func new_full(reserved_size: CUnsignedInt, element_free_func: DestroyNotify) -> PtrArrayRef! {
        let rv = g_ptr_array_new_full(guint(reserved_size), element_free_func)
        return rv.map { PtrArrayRef(ptr: cast($0)) }
    }

    /// Creates a new #GPtrArray with a reference count of 1 and use
    /// @element_free_func for freeing each element when the array is destroyed
    /// either via g_ptr_array_unref(), when g_ptr_array_free() is called with
    /// @free_segment set to %TRUE or when removing elements.
    public static func new_with_free_func(element_free_func: DestroyNotify) -> PtrArrayRef! {
        let rv = g_ptr_array_new_with_free_func(element_free_func)
        return rv.map { PtrArrayRef(ptr: cast($0)) }
    }

    /// Creates a new #GPtrArray with @reserved_size pointers preallocated
    /// and a reference count of 1. This avoids frequent reallocation, if
    /// you are going to add many pointers to the array. Note however that
    /// the size of the array is still 0.
    public static func sized_new(reserved_size: CUnsignedInt) -> PtrArrayRef! {
        let rv = g_ptr_array_sized_new(guint(reserved_size))
        return rv.map { PtrArrayRef(ptr: cast($0)) }
    }
}

public class PtrArray: PtrArrayProtocol {
    public let ptr: UnsafeMutablePointer<GPtrArray>

    public init(ptr: UnsafeMutablePointer<GPtrArray>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension PtrArray {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GPtrArray>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GPtrArray>(opaquePointer))
    }

        /// Creates a new #GPtrArray with @reserved_size pointers preallocated
    /// and a reference count of 1. This avoids frequent reallocation, if
    /// you are going to add many pointers to the array. Note however that
    /// the size of the array is still 0. It also set @element_free_func
    /// for freeing each element when the array is destroyed either via
    /// g_ptr_array_unref(), when g_ptr_array_free() is called with
    /// @free_segment set to %TRUE or when removing elements.
    public static func new_full(reserved_size: CUnsignedInt, element_free_func: DestroyNotify) -> PtrArray! {
        let rv = g_ptr_array_new_full(guint(reserved_size), element_free_func)
        return rv.map { PtrArray(ptr: cast($0)) }
    }

    /// Creates a new #GPtrArray with a reference count of 1 and use
    /// @element_free_func for freeing each element when the array is destroyed
    /// either via g_ptr_array_unref(), when g_ptr_array_free() is called with
    /// @free_segment set to %TRUE or when removing elements.
    public static func new_with_free_func(element_free_func: DestroyNotify) -> PtrArray! {
        let rv = g_ptr_array_new_with_free_func(element_free_func)
        return rv.map { PtrArray(ptr: cast($0)) }
    }

    /// Creates a new #GPtrArray with @reserved_size pointers preallocated
    /// and a reference count of 1. This avoids frequent reallocation, if
    /// you are going to add many pointers to the array. Note however that
    /// the size of the array is still 0.
    public static func sized_new(reserved_size: CUnsignedInt) -> PtrArray! {
        let rv = g_ptr_array_sized_new(guint(reserved_size))
        return rv.map { PtrArray(ptr: cast($0)) }
    }
}

public extension PtrArrayProtocol {
    /// Adds a pointer to the end of the pointer array. The array will grow
    /// in size automatically if necessary.
    public func add(data: OpaquePointer) {
        g_ptr_array_add(cast(ptr), cast(data))
    }

    /// Calls a function for each element of a #GPtrArray.
    public func foreach(func_: Func, user_data: OpaquePointer) {
        g_ptr_array_foreach(cast(ptr), func_, cast(user_data))
    }

    /// Frees the memory allocated for the #GPtrArray. If @free_seg is %TRUE
    /// it frees the memory block holding the elements as well. Pass %FALSE
    /// if you want to free the #GPtrArray wrapper but preserve the
    /// underlying array for use elsewhere. If the reference count of @array
    /// is greater than one, the #GPtrArray wrapper is preserved but the
    /// size of @array will be set to zero.
    /// 
    /// If array contents point to dynamically-allocated memory, they should
    /// be freed separately if @free_seg is %TRUE and no #GDestroyNotify
    /// function has been set for @array.
    public func free(free_seg: Bool) -> UnsafeMutablePointer<gpointer>! {
        let rv = g_ptr_array_free(cast(ptr), gboolean(free_seg ? 1 : 0))
        return cast(rv)
    }

    /// Inserts an element into the pointer array at the given index. The
    /// array will grow in size automatically if necessary.
    public func insert(index_: CInt, data: OpaquePointer) {
        g_ptr_array_insert(cast(ptr), gint(index_), cast(data))
    }

    /// Atomically increments the reference count of @array by one.
    /// This function is thread-safe and may be called from any thread.
    public func ref() -> UnsafeMutablePointer<GPtrArray>! {
        let rv = g_ptr_array_ref(cast(ptr))
        return cast(rv)
    }

    /// Removes the first occurrence of the given pointer from the pointer
    /// array. The following elements are moved down one place. If @array
    /// has a non-%NULL #GDestroyNotify function it is called for the
    /// removed element.
    /// 
    /// It returns %TRUE if the pointer was removed, or %FALSE if the
    /// pointer was not found.
    public func remove(data: OpaquePointer) -> Bool {
        let rv = g_ptr_array_remove(cast(ptr), cast(data))
        return Bool(rv != 0)
    }

    /// Removes the first occurrence of the given pointer from the pointer
    /// array. The last element in the array is used to fill in the space,
    /// so this function does not preserve the order of the array. But it
    /// is faster than g_ptr_array_remove(). If @array has a non-%NULL
    /// #GDestroyNotify function it is called for the removed element.
    /// 
    /// It returns %TRUE if the pointer was removed, or %FALSE if the
    /// pointer was not found.
    public func remove_fast(data: OpaquePointer) -> Bool {
        let rv = g_ptr_array_remove_fast(cast(ptr), cast(data))
        return Bool(rv != 0)
    }

    /// Removes the pointer at the given index from the pointer array.
    /// The following elements are moved down one place. If @array has
    /// a non-%NULL #GDestroyNotify function it is called for the removed
    /// element.
    public func remove_index(index_: CUnsignedInt) -> OpaquePointer! {
        let rv = g_ptr_array_remove_index(cast(ptr), guint(index_))
        return cast(rv)
    }

    /// Removes the pointer at the given index from the pointer array.
    /// The last element in the array is used to fill in the space, so
    /// this function does not preserve the order of the array. But it
    /// is faster than g_ptr_array_remove_index(). If @array has a non-%NULL
    /// #GDestroyNotify function it is called for the removed element.
    public func remove_index_fast(index_: CUnsignedInt) -> OpaquePointer! {
        let rv = g_ptr_array_remove_index_fast(cast(ptr), guint(index_))
        return cast(rv)
    }

    /// Removes the given number of pointers starting at the given index
    /// from a #GPtrArray. The following elements are moved to close the
    /// gap. If @array has a non-%NULL #GDestroyNotify function it is
    /// called for the removed elements.
    public func remove_range(index_: CUnsignedInt, length: CUnsignedInt) -> UnsafeMutablePointer<GPtrArray>! {
        let rv = g_ptr_array_remove_range(cast(ptr), guint(index_), guint(length))
        return cast(rv)
    }

    /// Sets a function for freeing each element when @array is destroyed
    /// either via g_ptr_array_unref(), when g_ptr_array_free() is called
    /// with @free_segment set to %TRUE or when removing elements.
    public func set_free_func(element_free_func: DestroyNotify) {
        g_ptr_array_set_free_func(cast(ptr), element_free_func)
    }

    /// Sets the size of the array. When making the array larger,
    /// newly-added elements will be set to %NULL. When making it smaller,
    /// if @array has a non-%NULL #GDestroyNotify function then it will be
    /// called for the removed elements.
    public func set_size(length: CInt) {
        g_ptr_array_set_size(cast(ptr), gint(length))
    }

    /// Sorts the array, using @compare_func which should be a qsort()-style
    /// comparison function (returns less than zero for first arg is less
    /// than second arg, zero for equal, greater than zero if irst arg is
    /// greater than second arg).
    /// 
    /// Note that the comparison function for g_ptr_array_sort() doesn't
    /// take the pointers from the array as arguments, it takes pointers to
    /// the pointers in the array.
    /// 
    /// This is guaranteed to be a stable sort since version 2.32.
    public func sort(compare_func: CompareFunc) {
        g_ptr_array_sort(cast(ptr), compare_func)
    }

    /// Like g_ptr_array_sort(), but the comparison function has an extra
    /// user data argument.
    /// 
    /// Note that the comparison function for g_ptr_array_sort_with_data()
    /// doesn't take the pointers from the array as arguments, it takes
    /// pointers to the pointers in the array.
    /// 
    /// This is guaranteed to be a stable sort since version 2.32.
    public func sort_with_data(compare_func: CompareDataFunc, user_data: OpaquePointer) {
        g_ptr_array_sort_with_data(cast(ptr), compare_func, cast(user_data))
    }

    /// Atomically decrements the reference count of @array by one. If the
    /// reference count drops to 0, the effect is the same as calling
    /// g_ptr_array_free() with @free_segment set to %TRUE. This function
    /// is MT-safe and may be called from any thread.
    public func unref() {
        g_ptr_array_unref(cast(ptr))
    }
}



public protocol QueueProtocol {
    var ptr: UnsafeMutablePointer<GQueue> { get }
}

public struct QueueRef: QueueProtocol {
    public let ptr: UnsafeMutablePointer<GQueue>
}

public extension QueueRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GQueue>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GQueue>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GQueue>(opaquePointer)
    }

    }

public class Queue: QueueProtocol {
    public let ptr: UnsafeMutablePointer<GQueue>

    public init(ptr: UnsafeMutablePointer<GQueue>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension Queue {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GQueue>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GQueue>(opaquePointer))
    }

    }

public extension QueueProtocol {
    /// Removes all the elements in @queue. If queue elements contain
    /// dynamically-allocated memory, they should be freed first.
    public func clear() {
        g_queue_clear(cast(ptr))
    }

    /// Copies a @queue. Note that is a shallow copy. If the elements in the
    /// queue consist of pointers to data, the pointers are copied, but the
    /// actual data is not.
    public func copy() -> UnsafeMutablePointer<GQueue>! {
        let rv = g_queue_copy(cast(ptr))
        return cast(rv)
    }

    /// Removes @link_ from @queue and frees it.
    /// 
    /// @link_ must be part of @queue.
    public func delete_link(link_: UnsafeMutablePointer<GList>) {
        g_queue_delete_link(cast(ptr), cast(link_))
    }

    /// Finds the first link in @queue which contains @data.
    public func find(data: gconstpointer) -> UnsafeMutablePointer<GList>! {
        let rv = g_queue_find(cast(ptr), cast(data))
        return cast(rv)
    }

    /// Finds an element in a #GQueue, using a supplied function to find the
    /// desired element. It iterates over the queue, calling the given function
    /// which should return 0 when the desired element is found. The function
    /// takes two gconstpointer arguments, the #GQueue element's data as the
    /// first argument and the given user data as the second argument.
    public func find_custom(data: gconstpointer, func_: CompareFunc) -> UnsafeMutablePointer<GList>! {
        let rv = g_queue_find_custom(cast(ptr), cast(data), func_)
        return cast(rv)
    }

    /// Calls @func for each element in the queue passing @user_data to the
    /// function.
    public func foreach(func_: Func, user_data: OpaquePointer) {
        g_queue_foreach(cast(ptr), func_, cast(user_data))
    }

    /// Frees the memory allocated for the #GQueue. Only call this function
    /// if @queue was created with g_queue_new(). If queue elements contain
    /// dynamically-allocated memory, they should be freed first.
    /// 
    /// If queue elements contain dynamically-allocated memory, you should
    /// either use g_queue_free_full() or free them manually first.
    public func free() {
        g_queue_free(cast(ptr))
    }

    /// Convenience method, which frees all the memory used by a #GQueue,
    /// and calls the specified destroy function on every element's data.
    public func free_full(free_func: DestroyNotify) {
        g_queue_free_full(cast(ptr), free_func)
    }

    /// Returns the number of items in @queue.
    public func get_length() -> CUnsignedInt {
        let rv = g_queue_get_length(cast(ptr))
        return CUnsignedInt(rv)
    }

    /// Returns the position of the first element in @queue which contains @data.
    public func index(data: gconstpointer) -> CInt {
        let rv = g_queue_index(cast(ptr), cast(data))
        return CInt(rv)
    }

    /// A statically-allocated #GQueue must be initialized with this function
    /// before it can be used. Alternatively you can initialize it with
    /// #G_QUEUE_INIT. It is not necessary to initialize queues created with
    /// g_queue_new().
    public func init_() {
        g_queue_init(cast(ptr))
    }

    /// Inserts @data into @queue after @sibling.
    /// 
    /// @sibling must be part of @queue. Since GLib 2.44 a %NULL sibling pushes the
    /// data at the head of the queue.
    public func insert_after(sibling: UnsafeMutablePointer<GList>, data: OpaquePointer) {
        g_queue_insert_after(cast(ptr), cast(sibling), cast(data))
    }

    /// Inserts @data into @queue before @sibling.
    /// 
    /// @sibling must be part of @queue. Since GLib 2.44 a %NULL sibling pushes the
    /// data at the tail of the queue.
    public func insert_before(sibling: UnsafeMutablePointer<GList>, data: OpaquePointer) {
        g_queue_insert_before(cast(ptr), cast(sibling), cast(data))
    }

    /// Inserts @data into @queue using @func to determine the new position.
    public func insert_sorted(data: OpaquePointer, func_: CompareDataFunc, user_data: OpaquePointer) {
        g_queue_insert_sorted(cast(ptr), cast(data), func_, cast(user_data))
    }

    /// Returns %TRUE if the queue is empty.
    public func is_empty() -> Bool {
        let rv = g_queue_is_empty(cast(ptr))
        return Bool(rv != 0)
    }

    /// Returns the position of @link_ in @queue.
    public func link_index(link_: UnsafeMutablePointer<GList>) -> CInt {
        let rv = g_queue_link_index(cast(ptr), cast(link_))
        return CInt(rv)
    }

    /// Returns the first element of the queue.
    public func peek_head() -> OpaquePointer! {
        let rv = g_queue_peek_head(cast(ptr))
        return cast(rv)
    }

    /// Returns the first link in @queue.
    public func peek_head_link() -> UnsafeMutablePointer<GList>! {
        let rv = g_queue_peek_head_link(cast(ptr))
        return cast(rv)
    }

    /// Returns the @n'th element of @queue.
    public func peek_nth(n: CUnsignedInt) -> OpaquePointer! {
        let rv = g_queue_peek_nth(cast(ptr), guint(n))
        return cast(rv)
    }

    /// Returns the link at the given position
    public func peek_nth_link(n: CUnsignedInt) -> UnsafeMutablePointer<GList>! {
        let rv = g_queue_peek_nth_link(cast(ptr), guint(n))
        return cast(rv)
    }

    /// Returns the last element of the queue.
    public func peek_tail() -> OpaquePointer! {
        let rv = g_queue_peek_tail(cast(ptr))
        return cast(rv)
    }

    /// Returns the last link in @queue.
    public func peek_tail_link() -> UnsafeMutablePointer<GList>! {
        let rv = g_queue_peek_tail_link(cast(ptr))
        return cast(rv)
    }

    /// Removes the first element of the queue and returns its data.
    public func pop_head() -> OpaquePointer! {
        let rv = g_queue_pop_head(cast(ptr))
        return cast(rv)
    }

    /// Removes and returns the first element of the queue.
    public func pop_head_link() -> UnsafeMutablePointer<GList>! {
        let rv = g_queue_pop_head_link(cast(ptr))
        return cast(rv)
    }

    /// Removes the @n'th element of @queue and returns its data.
    public func pop_nth(n: CUnsignedInt) -> OpaquePointer! {
        let rv = g_queue_pop_nth(cast(ptr), guint(n))
        return cast(rv)
    }

    /// Removes and returns the link at the given position.
    public func pop_nth_link(n: CUnsignedInt) -> UnsafeMutablePointer<GList>! {
        let rv = g_queue_pop_nth_link(cast(ptr), guint(n))
        return cast(rv)
    }

    /// Removes the last element of the queue and returns its data.
    public func pop_tail() -> OpaquePointer! {
        let rv = g_queue_pop_tail(cast(ptr))
        return cast(rv)
    }

    /// Removes and returns the last element of the queue.
    public func pop_tail_link() -> UnsafeMutablePointer<GList>! {
        let rv = g_queue_pop_tail_link(cast(ptr))
        return cast(rv)
    }

    /// Adds a new element at the head of the queue.
    public func push_head(data: OpaquePointer) {
        g_queue_push_head(cast(ptr), cast(data))
    }

    /// Adds a new element at the head of the queue.
    public func push_head_link(link_: UnsafeMutablePointer<GList>) {
        g_queue_push_head_link(cast(ptr), cast(link_))
    }

    /// Inserts a new element into @queue at the given position.
    public func push_nth(data: OpaquePointer, n: CInt) {
        g_queue_push_nth(cast(ptr), cast(data), gint(n))
    }

    /// Inserts @link into @queue at the given position.
    public func push_nth_link(n: CInt, link_: UnsafeMutablePointer<GList>) {
        g_queue_push_nth_link(cast(ptr), gint(n), cast(link_))
    }

    /// Adds a new element at the tail of the queue.
    public func push_tail(data: OpaquePointer) {
        g_queue_push_tail(cast(ptr), cast(data))
    }

    /// Adds a new element at the tail of the queue.
    public func push_tail_link(link_: UnsafeMutablePointer<GList>) {
        g_queue_push_tail_link(cast(ptr), cast(link_))
    }

    /// Removes the first element in @queue that contains @data.
    public func remove(data: gconstpointer) -> Bool {
        let rv = g_queue_remove(cast(ptr), cast(data))
        return Bool(rv != 0)
    }

    /// Remove all elements whose data equals @data from @queue.
    public func remove_all(data: gconstpointer) -> CUnsignedInt {
        let rv = g_queue_remove_all(cast(ptr), cast(data))
        return CUnsignedInt(rv)
    }

    /// Reverses the order of the items in @queue.
    public func reverse() {
        g_queue_reverse(cast(ptr))
    }

    /// Sorts @queue using @compare_func.
    public func sort(compare_func: CompareDataFunc, user_data: OpaquePointer) {
        g_queue_sort(cast(ptr), compare_func, cast(user_data))
    }

    /// Unlinks @link_ so that it will no longer be part of @queue.
    /// The link is not freed.
    /// 
    /// @link_ must be part of @queue.
    public func unlink(link_: UnsafeMutablePointer<GList>) {
        g_queue_unlink(cast(ptr), cast(link_))
    }
}



public protocol RWLockProtocol {
    var ptr: UnsafeMutablePointer<GRWLock> { get }
}

public struct RWLockRef: RWLockProtocol {
    public let ptr: UnsafeMutablePointer<GRWLock>
}

public extension RWLockRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GRWLock>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GRWLock>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GRWLock>(opaquePointer)
    }

    }

public class RWLock: RWLockProtocol {
    public let ptr: UnsafeMutablePointer<GRWLock>

    public init(ptr: UnsafeMutablePointer<GRWLock>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension RWLock {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GRWLock>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GRWLock>(opaquePointer))
    }

    }

public extension RWLockProtocol {
    /// Frees the resources allocated to a lock with g_rw_lock_init().
    /// 
    /// This function should not be used with a #GRWLock that has been
    /// statically allocated.
    /// 
    /// Calling g_rw_lock_clear() when any thread holds the lock
    /// leads to undefined behaviour.
    /// 
    /// Sine: 2.32
    public func clear() {
        g_rw_lock_clear(cast(ptr))
    }

    /// Initializes a #GRWLock so that it can be used.
    /// 
    /// This function is useful to initialize a lock that has been
    /// allocated on the stack, or as part of a larger structure.  It is not
    /// necessary to initialise a reader-writer lock that has been statically
    /// allocated.
    /// 
    /// |[<!-- language="C" -->
    ///   typedef struct {
    ///     GRWLock l;
    ///     ...
    ///   } Blob;
    /// 
    /// Blob *b;
    /// 
    /// b = g_new (Blob, 1);
    /// g_rw_lock_init (&b->l);
    /// ]|
    /// 
    /// To undo the effect of g_rw_lock_init() when a lock is no longer
    /// needed, use g_rw_lock_clear().
    /// 
    /// Calling g_rw_lock_init() on an already initialized #GRWLock leads
    /// to undefined behaviour.
    public func init_() {
        g_rw_lock_init(cast(ptr))
    }

    /// Obtain a read lock on @rw_lock. If another thread currently holds
    /// the write lock on @rw_lock or blocks waiting for it, the current
    /// thread will block. Read locks can be taken recursively.
    /// 
    /// It is implementation-defined how many threads are allowed to
    /// hold read locks on the same lock simultaneously.
    public func reader_lock() {
        g_rw_lock_reader_lock(cast(ptr))
    }

    /// Tries to obtain a read lock on @rw_lock and returns %TRUE if
    /// the read lock was successfully obtained. Otherwise it
    /// returns %FALSE.
    public func reader_trylock() -> Bool {
        let rv = g_rw_lock_reader_trylock(cast(ptr))
        return Bool(rv != 0)
    }

    /// Release a read lock on @rw_lock.
    /// 
    /// Calling g_rw_lock_reader_unlock() on a lock that is not held
    /// by the current thread leads to undefined behaviour.
    public func reader_unlock() {
        g_rw_lock_reader_unlock(cast(ptr))
    }

    /// Obtain a write lock on @rw_lock. If any thread already holds
    /// a read or write lock on @rw_lock, the current thread will block
    /// until all other threads have dropped their locks on @rw_lock.
    public func writer_lock() {
        g_rw_lock_writer_lock(cast(ptr))
    }

    /// Tries to obtain a write lock on @rw_lock. If any other thread holds
    /// a read or write lock on @rw_lock, it immediately returns %FALSE.
    /// Otherwise it locks @rw_lock and returns %TRUE.
    public func writer_trylock() -> Bool {
        let rv = g_rw_lock_writer_trylock(cast(ptr))
        return Bool(rv != 0)
    }

    /// Release a write lock on @rw_lock.
    /// 
    /// Calling g_rw_lock_writer_unlock() on a lock that is not held
    /// by the current thread leads to undefined behaviour.
    public func writer_unlock() {
        g_rw_lock_writer_unlock(cast(ptr))
    }
}



public protocol RandProtocol {
    var ptr: UnsafeMutablePointer<GRand> { get }
}

public struct RandRef: RandProtocol {
    public let ptr: UnsafeMutablePointer<GRand>
}

public extension RandRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GRand>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GRand>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GRand>(opaquePointer)
    }

        /// Creates a new random number generator initialized with @seed.
    public static func new_with_seed(seed: UInt32) -> RandRef! {
        let rv = g_rand_new_with_seed(guint32(seed))
        return rv.map { RandRef(ptr: cast($0)) }
    }

    /// Creates a new random number generator initialized with @seed.
    public static func new_with_seed_array(seed: UnsafePointer<guint32>, seed_length: CUnsignedInt) -> RandRef! {
        let rv = g_rand_new_with_seed_array(cast(seed), guint(seed_length))
        return rv.map { RandRef(ptr: cast($0)) }
    }
}

public class Rand: RandProtocol {
    public let ptr: UnsafeMutablePointer<GRand>

    public init(ptr: UnsafeMutablePointer<GRand>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension Rand {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GRand>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GRand>(opaquePointer))
    }

        /// Creates a new random number generator initialized with @seed.
    public static func new_with_seed(seed: UInt32) -> Rand! {
        let rv = g_rand_new_with_seed(guint32(seed))
        return rv.map { Rand(ptr: cast($0)) }
    }

    /// Creates a new random number generator initialized with @seed.
    public static func new_with_seed_array(seed: UnsafePointer<guint32>, seed_length: CUnsignedInt) -> Rand! {
        let rv = g_rand_new_with_seed_array(cast(seed), guint(seed_length))
        return rv.map { Rand(ptr: cast($0)) }
    }
}

public extension RandProtocol {
    /// Copies a #GRand into a new one with the same exact state as before.
    /// This way you can take a snapshot of the random number generator for
    /// replaying later.
    public func copy() -> UnsafeMutablePointer<GRand>! {
        let rv = g_rand_copy(cast(ptr))
        return cast(rv)
    }

    /// Returns the next random #gdouble from @rand_ equally distributed over
    /// the range [0..1).
    public func double() -> gdouble {
        let rv = g_rand_double(cast(ptr))
        return rv
    }

    /// Returns the next random #gdouble from @rand_ equally distributed over
    /// the range [@begin..@end).
    public func double_range(begin: gdouble, end: gdouble) -> gdouble {
        let rv = g_rand_double_range(cast(ptr), begin, end)
        return rv
    }

    /// Frees the memory allocated for the #GRand.
    public func free() {
        g_rand_free(cast(ptr))
    }

    /// Returns the next random #guint32 from @rand_ equally distributed over
    /// the range [0..2^32-1].
    public func CInt_() -> UInt32 {
        let rv = g_rand_int(cast(ptr))
        return UInt32(rv)
    }

    /// Returns the next random #gint32 from @rand_ equally distributed over
    /// the range [@begin..@end-1].
    public func int_range(begin: Int32, end: Int32) -> Int32 {
        let rv = g_rand_int_range(cast(ptr), gint32(begin), gint32(end))
        return Int32(rv)
    }

    /// Sets the seed for the random number generator #GRand to @seed.
    public func set_seed(seed: UInt32) {
        g_rand_set_seed(cast(ptr), guint32(seed))
    }

    /// Initializes the random number generator by an array of longs.
    /// Array can be of arbitrary size, though only the first 624 values
    /// are taken.  This function is useful if you have many low entropy
    /// seeds, or if you require more then 32 bits of actual entropy for
    /// your application.
    public func set_seed_array(seed: UnsafePointer<guint32>, seed_length: CUnsignedInt) {
        g_rand_set_seed_array(cast(ptr), cast(seed), guint(seed_length))
    }
}



public protocol RecMutexProtocol {
    var ptr: UnsafeMutablePointer<GRecMutex> { get }
}

public struct RecMutexRef: RecMutexProtocol {
    public let ptr: UnsafeMutablePointer<GRecMutex>
}

public extension RecMutexRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GRecMutex>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GRecMutex>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GRecMutex>(opaquePointer)
    }

    }

public class RecMutex: RecMutexProtocol {
    public let ptr: UnsafeMutablePointer<GRecMutex>

    public init(ptr: UnsafeMutablePointer<GRecMutex>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension RecMutex {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GRecMutex>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GRecMutex>(opaquePointer))
    }

    }

public extension RecMutexProtocol {
    /// Frees the resources allocated to a recursive mutex with
    /// g_rec_mutex_init().
    /// 
    /// This function should not be used with a #GRecMutex that has been
    /// statically allocated.
    /// 
    /// Calling g_rec_mutex_clear() on a locked recursive mutex leads
    /// to undefined behaviour.
    /// 
    /// Sine: 2.32
    public func clear() {
        g_rec_mutex_clear(cast(ptr))
    }

    /// Initializes a #GRecMutex so that it can be used.
    /// 
    /// This function is useful to initialize a recursive mutex
    /// that has been allocated on the stack, or as part of a larger
    /// structure.
    /// 
    /// It is not necessary to initialise a recursive mutex that has been
    /// statically allocated.
    /// 
    /// |[<!-- language="C" -->
    ///   typedef struct {
    ///     GRecMutex m;
    ///     ...
    ///   } Blob;
    /// 
    /// Blob *b;
    /// 
    /// b = g_new (Blob, 1);
    /// g_rec_mutex_init (&b->m);
    /// ]|
    /// 
    /// Calling g_rec_mutex_init() on an already initialized #GRecMutex
    /// leads to undefined behaviour.
    /// 
    /// To undo the effect of g_rec_mutex_init() when a recursive mutex
    /// is no longer needed, use g_rec_mutex_clear().
    public func init_() {
        g_rec_mutex_init(cast(ptr))
    }

    /// Locks @rec_mutex. If @rec_mutex is already locked by another
    /// thread, the current thread will block until @rec_mutex is
    /// unlocked by the other thread. If @rec_mutex is already locked
    /// by the current thread, the 'lock count' of @rec_mutex is increased.
    /// The mutex will only become available again when it is unlocked
    /// as many times as it has been locked.
    public func lock() {
        g_rec_mutex_lock(cast(ptr))
    }

    /// Tries to lock @rec_mutex. If @rec_mutex is already locked
    /// by another thread, it immediately returns %FALSE. Otherwise
    /// it locks @rec_mutex and returns %TRUE.
    public func trylock() -> Bool {
        let rv = g_rec_mutex_trylock(cast(ptr))
        return Bool(rv != 0)
    }

    /// Unlocks @rec_mutex. If another thread is blocked in a
    /// g_rec_mutex_lock() call for @rec_mutex, it will become unblocked
    /// and can lock @rec_mutex itself.
    /// 
    /// Calling g_rec_mutex_unlock() on a recursive mutex that is not
    /// locked by the current thread leads to undefined behaviour.
    public func unlock() {
        g_rec_mutex_unlock(cast(ptr))
    }
}



public protocol RegexProtocol {
    var ptr: UnsafeMutablePointer<GRegex> { get }
}

public struct RegexRef: RegexProtocol {
    public let ptr: UnsafeMutablePointer<GRegex>
}

public extension RegexRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GRegex>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GRegex>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GRegex>(opaquePointer)
    }

        /// Compiles the regular expression to an internal form, and does
    /// the initial setup of the #GRegex structure.
    public init( pattern: UnsafePointer<gchar>, compile_options: RegexCompileFlags, match_options: RegexMatchFlags) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_regex_new(cast(pattern), compile_options, match_options, &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        self.ptr = cast(rv)
    }
}

public class Regex: RegexProtocol {
    public let ptr: UnsafeMutablePointer<GRegex>

    public init(ptr: UnsafeMutablePointer<GRegex>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension Regex {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GRegex>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GRegex>(opaquePointer))
    }

        /// Compiles the regular expression to an internal form, and does
    /// the initial setup of the #GRegex structure.
    public convenience init( pattern: UnsafePointer<gchar>, compile_options: RegexCompileFlags, match_options: RegexMatchFlags) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_regex_new(cast(pattern), compile_options, match_options, &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        self.init(ptr: cast(rv))
    }
}

public extension RegexProtocol {
    /// Returns the number of capturing subpatterns in the pattern.
    public func get_capture_count() -> CInt {
        let rv = g_regex_get_capture_count(cast(ptr))
        return CInt(rv)
    }

    /// Returns the compile options that @regex was created with.
    public func get_compile_flags() -> GRegexCompileFlags {
        let rv = g_regex_get_compile_flags(cast(ptr))
        return rv
    }

    /// Checks whether the pattern contains explicit CR or LF references.
    public func get_has_cr_or_lf() -> Bool {
        let rv = g_regex_get_has_cr_or_lf(cast(ptr))
        return Bool(rv != 0)
    }

    /// Returns the match options that @regex was created with.
    public func get_match_flags() -> GRegexMatchFlags {
        let rv = g_regex_get_match_flags(cast(ptr))
        return rv
    }

    /// Returns the number of the highest back reference
    /// in the pattern, or 0 if the pattern does not contain
    /// back references.
    public func get_max_backref() -> CInt {
        let rv = g_regex_get_max_backref(cast(ptr))
        return CInt(rv)
    }

    /// Gets the number of characters in the longest lookbehind assertion in the
    /// pattern. This information is useful when doing multi-segment matching using
    /// the partial matching facilities.
    public func get_max_lookbehind() -> CInt {
        let rv = g_regex_get_max_lookbehind(cast(ptr))
        return CInt(rv)
    }

    /// Gets the pattern string associated with @regex, i.e. a copy of
    /// the string passed to g_regex_new().
    public func get_pattern() -> UnsafePointer<gchar>! {
        let rv = g_regex_get_pattern(cast(ptr))
        return cast(rv)
    }

    /// Retrieves the number of the subexpression named @name.
    public func get_string_number(name: UnsafePointer<gchar>) -> CInt {
        let rv = g_regex_get_string_number(cast(ptr), cast(name))
        return CInt(rv)
    }

    /// Scans for a match in string for the pattern in @regex.
    /// The @match_options are combined with the match options specified
    /// when the @regex structure was created, letting you have more
    /// flexibility in reusing #GRegex structures.
    /// 
    /// A #GMatchInfo structure, used to get information on the match,
    /// is stored in @match_info if not %NULL. Note that if @match_info
    /// is not %NULL then it is created even if the function returns %FALSE,
    /// i.e. you must free it regardless if regular expression actually matched.
    /// 
    /// To retrieve all the non-overlapping matches of the pattern in
    /// string you can use g_match_info_next().
    /// 
    /// |[<!-- language="C" -->
    /// static void
    /// print_uppercase_words (const gchar *string)
    /// {
    ///   // Print all uppercase-only words.
    ///   GRegex *regex;
    ///   GMatchInfo *match_info;
    ///  
    ///   regex = g_regex_new ("[A-Z]+", 0, 0, NULL);
    ///   g_regex_match (regex, string, 0, &match_info);
    ///   while (g_match_info_matches (match_info))
    ///     {
    ///       gchar *word = g_match_info_fetch (match_info, 0);
    ///       g_print ("Found: %s\n", word);
    ///       g_free (word);
    ///       g_match_info_next (match_info, NULL);
    ///     }
    ///   g_match_info_free (match_info);
    ///   g_regex_unref (regex);
    /// }
    /// ]|
    /// 
    /// @string is not copied and is used in #GMatchInfo internally. If
    /// you use any #GMatchInfo method (except g_match_info_free()) after
    /// freeing or modifying @string then the behaviour is undefined.
    public func match(string: UnsafePointer<gchar>, match_options: RegexMatchFlags, match_info: MatchInfoProtocol) -> Bool {
        let rv = g_regex_match(cast(ptr), cast(string), match_options, cast(match_info.ptr))
        return Bool(rv != 0)
    }

    /// Using the standard algorithm for regular expression matching only
    /// the longest match in the string is retrieved. This function uses
    /// a different algorithm so it can retrieve all the possible matches.
    /// For more documentation see g_regex_match_all_full().
    /// 
    /// A #GMatchInfo structure, used to get information on the match, is
    /// stored in @match_info if not %NULL. Note that if @match_info is
    /// not %NULL then it is created even if the function returns %FALSE,
    /// i.e. you must free it regardless if regular expression actually
    /// matched.
    /// 
    /// @string is not copied and is used in #GMatchInfo internally. If
    /// you use any #GMatchInfo method (except g_match_info_free()) after
    /// freeing or modifying @string then the behaviour is undefined.
    public func match_all(string: UnsafePointer<gchar>, match_options: RegexMatchFlags, match_info: MatchInfoProtocol) -> Bool {
        let rv = g_regex_match_all(cast(ptr), cast(string), match_options, cast(match_info.ptr))
        return Bool(rv != 0)
    }

    /// Using the standard algorithm for regular expression matching only
    /// the longest match in the string is retrieved, it is not possible
    /// to obtain all the available matches. For instance matching
    /// "<a> <b> <c>" against the pattern "<.*>"
    /// you get "<a> <b> <c>".
    /// 
    /// This function uses a different algorithm (called DFA, i.e. deterministic
    /// finite automaton), so it can retrieve all the possible matches, all
    /// starting at the same point in the string. For instance matching
    /// "<a> <b> <c>" against the pattern "<.*>;"
    /// you would obtain three matches: "<a> <b> <c>",
    /// "<a> <b>" and "<a>".
    /// 
    /// The number of matched strings is retrieved using
    /// g_match_info_get_match_count(). To obtain the matched strings and
    /// their position you can use, respectively, g_match_info_fetch() and
    /// g_match_info_fetch_pos(). Note that the strings are returned in
    /// reverse order of length; that is, the longest matching string is
    /// given first.
    /// 
    /// Note that the DFA algorithm is slower than the standard one and it
    /// is not able to capture substrings, so backreferences do not work.
    /// 
    /// Setting @start_position differs from just passing over a shortened
    /// string and setting #G_REGEX_MATCH_NOTBOL in the case of a pattern
    /// that begins with any kind of lookbehind assertion, such as "\b".
    /// 
    /// A #GMatchInfo structure, used to get information on the match, is
    /// stored in @match_info if not %NULL. Note that if @match_info is
    /// not %NULL then it is created even if the function returns %FALSE,
    /// i.e. you must free it regardless if regular expression actually
    /// matched.
    /// 
    /// @string is not copied and is used in #GMatchInfo internally. If
    /// you use any #GMatchInfo method (except g_match_info_free()) after
    /// freeing or modifying @string then the behaviour is undefined.
    public func match_all_full(string: UnsafeMutablePointer<gchar>, string_len: gssize, start_position: CInt, match_options: RegexMatchFlags, match_info: MatchInfoProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_regex_match_all_full(cast(ptr), cast(string), string_len, gint(start_position), match_options, cast(match_info.ptr), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return Bool(rv != 0)
    }

    /// Scans for a match in string for the pattern in @regex.
    /// The @match_options are combined with the match options specified
    /// when the @regex structure was created, letting you have more
    /// flexibility in reusing #GRegex structures.
    /// 
    /// Setting @start_position differs from just passing over a shortened
    /// string and setting #G_REGEX_MATCH_NOTBOL in the case of a pattern
    /// that begins with any kind of lookbehind assertion, such as "\b".
    /// 
    /// A #GMatchInfo structure, used to get information on the match, is
    /// stored in @match_info if not %NULL. Note that if @match_info is
    /// not %NULL then it is created even if the function returns %FALSE,
    /// i.e. you must free it regardless if regular expression actually
    /// matched.
    /// 
    /// @string is not copied and is used in #GMatchInfo internally. If
    /// you use any #GMatchInfo method (except g_match_info_free()) after
    /// freeing or modifying @string then the behaviour is undefined.
    /// 
    /// To retrieve all the non-overlapping matches of the pattern in
    /// string you can use g_match_info_next().
    /// 
    /// |[<!-- language="C" -->
    /// static void
    /// print_uppercase_words (const gchar *string)
    /// {
    ///   // Print all uppercase-only words.
    ///   GRegex *regex;
    ///   GMatchInfo *match_info;
    ///   GError *error = NULL;
    ///   
    ///   regex = g_regex_new ("[A-Z]+", 0, 0, NULL);
    ///   g_regex_match_full (regex, string, -1, 0, 0, &match_info, &error);
    ///   while (g_match_info_matches (match_info))
    ///     {
    ///       gchar *word = g_match_info_fetch (match_info, 0);
    ///       g_print ("Found: %s\n", word);
    ///       g_free (word);
    ///       g_match_info_next (match_info, &error);
    ///     }
    ///   g_match_info_free (match_info);
    ///   g_regex_unref (regex);
    ///   if (error != NULL)
    ///     {
    ///       g_printerr ("Error while matching: %s\n", error->message);
    ///       g_error_free (error);
    ///     }
    /// }
    /// ]|
    public func match_full(string: UnsafeMutablePointer<gchar>, string_len: gssize, start_position: CInt, match_options: RegexMatchFlags, match_info: MatchInfoProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_regex_match_full(cast(ptr), cast(string), string_len, gint(start_position), match_options, cast(match_info.ptr), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return Bool(rv != 0)
    }

    /// Increases reference count of @regex by 1.
    public func ref() -> UnsafeMutablePointer<GRegex>! {
        let rv = g_regex_ref(cast(ptr))
        return cast(rv)
    }

    /// Replaces all occurrences of the pattern in @regex with the
    /// replacement text. Backreferences of the form '\number' or
    /// '\g<number>' in the replacement text are interpolated by the
    /// number-th captured subexpression of the match, '\g<name>' refers
    /// to the captured subexpression with the given name. '\0' refers
    /// to the complete match, but '\0' followed by a number is the octal
    /// representation of a character. To include a literal '\' in the
    /// replacement, write '\\'.
    /// 
    /// There are also escapes that changes the case of the following text:
    /// 
    /// - \l: Convert to lower case the next character
    /// - \u: Convert to upper case the next character
    /// - \L: Convert to lower case till \E
    /// - \U: Convert to upper case till \E
    /// - \E: End case modification
    /// 
    /// If you do not need to use backreferences use g_regex_replace_literal().
    /// 
    /// The @replacement string must be UTF-8 encoded even if #G_REGEX_RAW was
    /// passed to g_regex_new(). If you want to use not UTF-8 encoded stings
    /// you can use g_regex_replace_literal().
    /// 
    /// Setting @start_position differs from just passing over a shortened
    /// string and setting #G_REGEX_MATCH_NOTBOL in the case of a pattern that
    /// begins with any kind of lookbehind assertion, such as "\b".
    public func replace(string: UnsafeMutablePointer<gchar>, string_len: gssize, start_position: CInt, replacement: UnsafePointer<gchar>, match_options: RegexMatchFlags) throws -> UnsafeMutablePointer<gchar>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_regex_replace(cast(ptr), cast(string), string_len, gint(start_position), cast(replacement), match_options, &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return cast(rv)
    }

    /// Replaces occurrences of the pattern in regex with the output of
    /// @eval for that occurrence.
    /// 
    /// Setting @start_position differs from just passing over a shortened
    /// string and setting #G_REGEX_MATCH_NOTBOL in the case of a pattern
    /// that begins with any kind of lookbehind assertion, such as "\b".
    /// 
    /// The following example uses g_regex_replace_eval() to replace multiple
    /// strings at once:
    /// |[<!-- language="C" -->
    /// static gboolean
    /// eval_cb (const GMatchInfo *info,
    ///          GString          *res,
    ///          gpointer          data)
    /// {
    ///   gchar *match;
    ///   gchar *r;
    /// 
    ///    match = g_match_info_fetch (info, 0);
    ///    r = g_hash_table_lookup ((GHashTable *)data, match);
    ///    g_string_append (res, r);
    ///    g_free (match);
    /// 
    ///    return FALSE;
    /// }
    /// 
    /// ...
    /// 
    /// GRegex *reg;
    /// GHashTable *h;
    /// gchar *res;
    /// 
    /// h = g_hash_table_new (g_str_hash, g_str_equal);
    /// 
    /// g_hash_table_insert (h, "1", "ONE");
    /// g_hash_table_insert (h, "2", "TWO");
    /// g_hash_table_insert (h, "3", "THREE");
    /// g_hash_table_insert (h, "4", "FOUR");
    /// 
    /// reg = g_regex_new ("1|2|3|4", 0, 0, NULL);
    /// res = g_regex_replace_eval (reg, text, -1, 0, 0, eval_cb, h, NULL);
    /// g_hash_table_destroy (h);
    /// 
    /// ...
    /// ]|
    public func replace_eval(string: UnsafeMutablePointer<gchar>, string_len: gssize, start_position: CInt, match_options: RegexMatchFlags, eval: RegexEvalCallback, user_data: OpaquePointer) throws -> UnsafeMutablePointer<gchar>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_regex_replace_eval(cast(ptr), cast(string), string_len, gint(start_position), match_options, eval, cast(user_data), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return cast(rv)
    }

    /// Replaces all occurrences of the pattern in @regex with the
    /// replacement text. @replacement is replaced literally, to
    /// include backreferences use g_regex_replace().
    /// 
    /// Setting @start_position differs from just passing over a
    /// shortened string and setting #G_REGEX_MATCH_NOTBOL in the
    /// case of a pattern that begins with any kind of lookbehind
    /// assertion, such as "\b".
    public func replace_literal(string: UnsafeMutablePointer<gchar>, string_len: gssize, start_position: CInt, replacement: UnsafePointer<gchar>, match_options: RegexMatchFlags) throws -> UnsafeMutablePointer<gchar>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_regex_replace_literal(cast(ptr), cast(string), string_len, gint(start_position), cast(replacement), match_options, &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return cast(rv)
    }

    /// Breaks the string on the pattern, and returns an array of the tokens.
    /// If the pattern contains capturing parentheses, then the text for each
    /// of the substrings will also be returned. If the pattern does not match
    /// anywhere in the string, then the whole string is returned as the first
    /// token.
    /// 
    /// As a special case, the result of splitting the empty string "" is an
    /// empty vector, not a vector containing a single string. The reason for
    /// this special case is that being able to represent a empty vector is
    /// typically more useful than consistent handling of empty elements. If
    /// you do need to represent empty elements, you'll need to check for the
    /// empty string before calling this function.
    /// 
    /// A pattern that can match empty strings splits @string into separate
    /// characters wherever it matches the empty string between characters.
    /// For example splitting "ab c" using as a separator "\s*", you will get
    /// "a", "b" and "c".
    public func split(string: UnsafePointer<gchar>, match_options: RegexMatchFlags) -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        let rv = g_regex_split(cast(ptr), cast(string), match_options)
        return cast(rv)
    }

    /// Breaks the string on the pattern, and returns an array of the tokens.
    /// If the pattern contains capturing parentheses, then the text for each
    /// of the substrings will also be returned. If the pattern does not match
    /// anywhere in the string, then the whole string is returned as the first
    /// token.
    /// 
    /// As a special case, the result of splitting the empty string "" is an
    /// empty vector, not a vector containing a single string. The reason for
    /// this special case is that being able to represent a empty vector is
    /// typically more useful than consistent handling of empty elements. If
    /// you do need to represent empty elements, you'll need to check for the
    /// empty string before calling this function.
    /// 
    /// A pattern that can match empty strings splits @string into separate
    /// characters wherever it matches the empty string between characters.
    /// For example splitting "ab c" using as a separator "\s*", you will get
    /// "a", "b" and "c".
    /// 
    /// Setting @start_position differs from just passing over a shortened
    /// string and setting #G_REGEX_MATCH_NOTBOL in the case of a pattern
    /// that begins with any kind of lookbehind assertion, such as "\b".
    public func split_full(string: UnsafeMutablePointer<gchar>, string_len: gssize, start_position: CInt, match_options: RegexMatchFlags, max_tokens: CInt) throws -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_regex_split_full(cast(ptr), cast(string), string_len, gint(start_position), match_options, gint(max_tokens), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return cast(rv)
    }

    /// Decreases reference count of @regex by 1. When reference count drops
    /// to zero, it frees all the memory associated with the regex structure.
    public func unref() {
        g_regex_unref(cast(ptr))
    }
}



public protocol SListProtocol {
    var ptr: UnsafeMutablePointer<GSList> { get }
}

public struct SListRef: SListProtocol {
    public let ptr: UnsafeMutablePointer<GSList>
}

public extension SListRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GSList>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GSList>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GSList>(opaquePointer)
    }

        /// Allocates space for one #GSList element. It is called by the
    /// g_slist_append(), g_slist_prepend(), g_slist_insert() and
    /// g_slist_insert_sorted() functions and so is rarely used on its own.
    public static func alloc() -> SListRef! {
        let rv = g_slist_alloc()
        return rv.map { SListRef(ptr: cast($0)) }
    }
}

public class SList: SListProtocol {
    public let ptr: UnsafeMutablePointer<GSList>

    public init(ptr: UnsafeMutablePointer<GSList>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension SList {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GSList>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GSList>(opaquePointer))
    }

        /// Allocates space for one #GSList element. It is called by the
    /// g_slist_append(), g_slist_prepend(), g_slist_insert() and
    /// g_slist_insert_sorted() functions and so is rarely used on its own.
    public static func alloc() -> SList! {
        let rv = g_slist_alloc()
        return rv.map { SList(ptr: cast($0)) }
    }
}

public extension SListProtocol {
    /// Adds a new element on to the end of the list.
    /// 
    /// The return value is the new start of the list, which may
    /// have changed, so make sure you store the new value.
    /// 
    /// Note that g_slist_append() has to traverse the entire list
    /// to find the end, which is inefficient when adding multiple
    /// elements. A common idiom to avoid the inefficiency is to prepend
    /// the elements and reverse the list when all elements have been added.
    /// 
    /// |[<!-- language="C" -->
    /// // Notice that these are initialized to the empty list.
    /// GSList *list = NULL, *number_list = NULL;
    /// 
    /// // This is a list of strings.
    /// list = g_slist_append (list, "first");
    /// list = g_slist_append (list, "second");
    /// 
    /// // This is a list of integers.
    /// number_list = g_slist_append (number_list, GINT_TO_POINTER (27));
    /// number_list = g_slist_append (number_list, GINT_TO_POINTER (14));
    /// ]|
    public func append(data: OpaquePointer) -> UnsafeMutablePointer<GSList>! {
        let rv = g_slist_append(cast(ptr), cast(data))
        return cast(rv)
    }

    /// Adds the second #GSList onto the end of the first #GSList.
    /// Note that the elements of the second #GSList are not copied.
    /// They are used directly.
    public func concat() -> UnsafeMutablePointer<GSList>! {
        let rv = g_slist_concat(cast(ptr), cast(ptr))
        return cast(rv)
    }

    /// Copies a #GSList.
    /// 
    /// Note that this is a "shallow" copy. If the list elements
    /// consist of pointers to data, the pointers are copied but
    /// the actual data isn't. See g_slist_copy_deep() if you need
    /// to copy the data as well.
    public func copy() -> UnsafeMutablePointer<GSList>! {
        let rv = g_slist_copy(cast(ptr))
        return cast(rv)
    }

    /// Makes a full (deep) copy of a #GSList.
    /// 
    /// In contrast with g_slist_copy(), this function uses @func to make a copy of
    /// each list element, in addition to copying the list container itself.
    /// 
    /// @func, as a #GCopyFunc, takes two arguments, the data to be copied and a user
    /// pointer. It's safe to pass #NULL as user_data, if the copy function takes only
    /// one argument.
    /// 
    /// For instance, if @list holds a list of GObjects, you can do:
    /// |[<!-- language="C" -->
    /// another_list = g_slist_copy_deep (list, (GCopyFunc) g_object_ref, NULL);
    /// ]|
    /// 
    /// And, to entirely free the new list, you could do:
    /// |[<!-- language="C" -->
    /// g_slist_free_full (another_list, g_object_unref);
    /// ]|
    public func copy_deep(func_: CopyFunc, user_data: OpaquePointer) -> UnsafeMutablePointer<GSList>! {
        let rv = g_slist_copy_deep(cast(ptr), func_, cast(user_data))
        return cast(rv)
    }

    /// Removes the node link_ from the list and frees it.
    /// Compare this to g_slist_remove_link() which removes the node
    /// without freeing it.
    /// 
    /// Removing arbitrary nodes from a singly-linked list requires time
    /// that is proportional to the length of the list (ie. O(n)). If you
    /// find yourself using g_slist_delete_link() frequently, you should
    /// consider a different data structure, such as the doubly-linked
    /// #GList.
    public func delete_link() -> UnsafeMutablePointer<GSList>! {
        let rv = g_slist_delete_link(cast(ptr), cast(ptr))
        return cast(rv)
    }

    /// Finds the element in a #GSList which
    /// contains the given data.
    public func find(data: gconstpointer) -> UnsafeMutablePointer<GSList>! {
        let rv = g_slist_find(cast(ptr), cast(data))
        return cast(rv)
    }

    /// Finds an element in a #GSList, using a supplied function to
    /// find the desired element. It iterates over the list, calling
    /// the given function which should return 0 when the desired
    /// element is found. The function takes two #gconstpointer arguments,
    /// the #GSList element's data as the first argument and the
    /// given user data.
    public func find_custom(data: gconstpointer, func_: CompareFunc) -> UnsafeMutablePointer<GSList>! {
        let rv = g_slist_find_custom(cast(ptr), cast(data), func_)
        return cast(rv)
    }

    /// Calls a function for each element of a #GSList.
    public func foreach(func_: Func, user_data: OpaquePointer) {
        g_slist_foreach(cast(ptr), func_, cast(user_data))
    }

    /// Frees all of the memory used by a #GSList.
    /// The freed elements are returned to the slice allocator.
    /// 
    /// If list elements contain dynamically-allocated memory,
    /// you should either use g_slist_free_full() or free them manually
    /// first.
    public func free() {
        g_slist_free(cast(ptr))
    }

    /// Frees one #GSList element.
    /// It is usually used after g_slist_remove_link().
    public func free_1() {
        g_slist_free_1(cast(ptr))
    }

    /// Convenience method, which frees all the memory used by a #GSList, and
    /// calls the specified destroy function on every element's data.
    public func free_full(free_func: DestroyNotify) {
        g_slist_free_full(cast(ptr), free_func)
    }

    /// Gets the position of the element containing
    /// the given data (starting from 0).
    public func index(data: gconstpointer) -> CInt {
        let rv = g_slist_index(cast(ptr), cast(data))
        return CInt(rv)
    }

    /// Inserts a new element into the list at the given position.
    public func insert(data: OpaquePointer, position: CInt) -> UnsafeMutablePointer<GSList>! {
        let rv = g_slist_insert(cast(ptr), cast(data), gint(position))
        return cast(rv)
    }

    /// Inserts a node before @sibling containing @data.
    public func insert_before(data: OpaquePointer) -> UnsafeMutablePointer<GSList>! {
        let rv = g_slist_insert_before(cast(ptr), cast(ptr), cast(data))
        return cast(rv)
    }

    /// Inserts a new element into the list, using the given
    /// comparison function to determine its position.
    public func insert_sorted(data: OpaquePointer, func_: CompareFunc) -> UnsafeMutablePointer<GSList>! {
        let rv = g_slist_insert_sorted(cast(ptr), cast(data), func_)
        return cast(rv)
    }

    /// Inserts a new element into the list, using the given
    /// comparison function to determine its position.
    public func insert_sorted_with_data(data: OpaquePointer, func_: CompareDataFunc, user_data: OpaquePointer) -> UnsafeMutablePointer<GSList>! {
        let rv = g_slist_insert_sorted_with_data(cast(ptr), cast(data), func_, cast(user_data))
        return cast(rv)
    }

    /// Gets the last element in a #GSList.
    /// 
    /// This function iterates over the whole list.
    public func last() -> UnsafeMutablePointer<GSList>! {
        let rv = g_slist_last(cast(ptr))
        return cast(rv)
    }

    /// Gets the number of elements in a #GSList.
    /// 
    /// This function iterates over the whole list to
    /// count its elements. To check whether the list is non-empty, it is faster to
    /// check @list against %NULL.
    public func length() -> CUnsignedInt {
        let rv = g_slist_length(cast(ptr))
        return CUnsignedInt(rv)
    }

    /// Gets the element at the given position in a #GSList.
    public func nth(n: CUnsignedInt) -> UnsafeMutablePointer<GSList>! {
        let rv = g_slist_nth(cast(ptr), guint(n))
        return cast(rv)
    }

    /// Gets the data of the element at the given position.
    public func nth_data(n: CUnsignedInt) -> OpaquePointer! {
        let rv = g_slist_nth_data(cast(ptr), guint(n))
        return cast(rv)
    }

    /// Gets the position of the given element
    /// in the #GSList (starting from 0).
    public func position() -> CInt {
        let rv = g_slist_position(cast(ptr), cast(ptr))
        return CInt(rv)
    }

    /// Adds a new element on to the start of the list.
    /// 
    /// The return value is the new start of the list, which
    /// may have changed, so make sure you store the new value.
    /// 
    /// |[<!-- language="C" -->
    /// // Notice that it is initialized to the empty list.
    /// GSList *list = NULL;
    /// list = g_slist_prepend (list, "last");
    /// list = g_slist_prepend (list, "first");
    /// ]|
    public func prepend(data: OpaquePointer) -> UnsafeMutablePointer<GSList>! {
        let rv = g_slist_prepend(cast(ptr), cast(data))
        return cast(rv)
    }

    /// Removes an element from a #GSList.
    /// If two elements contain the same data, only the first is removed.
    /// If none of the elements contain the data, the #GSList is unchanged.
    public func remove(data: gconstpointer) -> UnsafeMutablePointer<GSList>! {
        let rv = g_slist_remove(cast(ptr), cast(data))
        return cast(rv)
    }

    /// Removes all list nodes with data equal to @data.
    /// Returns the new head of the list. Contrast with
    /// g_slist_remove() which removes only the first node
    /// matching the given data.
    public func remove_all(data: gconstpointer) -> UnsafeMutablePointer<GSList>! {
        let rv = g_slist_remove_all(cast(ptr), cast(data))
        return cast(rv)
    }

    /// Removes an element from a #GSList, without
    /// freeing the element. The removed element's next
    /// link is set to %NULL, so that it becomes a
    /// self-contained list with one element.
    /// 
    /// Removing arbitrary nodes from a singly-linked list
    /// requires time that is proportional to the length of the list
    /// (ie. O(n)). If you find yourself using g_slist_remove_link()
    /// frequently, you should consider a different data structure,
    /// such as the doubly-linked #GList.
    public func remove_link() -> UnsafeMutablePointer<GSList>! {
        let rv = g_slist_remove_link(cast(ptr), cast(ptr))
        return cast(rv)
    }

    /// Reverses a #GSList.
    public func reverse() -> UnsafeMutablePointer<GSList>! {
        let rv = g_slist_reverse(cast(ptr))
        return cast(rv)
    }

    /// Sorts a #GSList using the given comparison function.
    public func sort(compare_func: CompareFunc) -> UnsafeMutablePointer<GSList>! {
        let rv = g_slist_sort(cast(ptr), compare_func)
        return cast(rv)
    }

    /// Like g_slist_sort(), but the sort function accepts a user data argument.
    public func sort_with_data(compare_func: CompareDataFunc, user_data: OpaquePointer) -> UnsafeMutablePointer<GSList>! {
        let rv = g_slist_sort_with_data(cast(ptr), compare_func, cast(user_data))
        return cast(rv)
    }
}



public protocol ScannerProtocol {
    var ptr: UnsafeMutablePointer<GScanner> { get }
}

public struct ScannerRef: ScannerProtocol {
    public let ptr: UnsafeMutablePointer<GScanner>
}

public extension ScannerRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GScanner>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GScanner>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GScanner>(opaquePointer)
    }

    }

public class Scanner: ScannerProtocol {
    public let ptr: UnsafeMutablePointer<GScanner>

    public init(ptr: UnsafeMutablePointer<GScanner>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension Scanner {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GScanner>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GScanner>(opaquePointer))
    }

    }

public extension ScannerProtocol {
    /// Returns the current line in the input stream (counting
    /// from 1). This is the line of the last token parsed via
    /// g_scanner_get_next_token().
    public func cur_line() -> CUnsignedInt {
        let rv = g_scanner_cur_line(cast(ptr))
        return CUnsignedInt(rv)
    }

    /// Returns the current position in the current line (counting
    /// from 0). This is the position of the last token parsed via
    /// g_scanner_get_next_token().
    public func cur_position() -> CUnsignedInt {
        let rv = g_scanner_cur_position(cast(ptr))
        return CUnsignedInt(rv)
    }

    /// Gets the current token type. This is simply the @token
    /// field in the #GScanner structure.
    public func cur_token() -> GTokenType {
        let rv = g_scanner_cur_token(cast(ptr))
        return rv
    }

    /// Gets the current token value. This is simply the @value
    /// field in the #GScanner structure.
    public func cur_value() -> GTokenValue {
        let rv = g_scanner_cur_value(cast(ptr))
        return rv
    }

    /// Frees all memory used by the #GScanner.
    public func destroy() {
        g_scanner_destroy(cast(ptr))
    }

    /// Returns %TRUE if the scanner has reached the end of
    /// the file or text buffer.
    public func eof() -> Bool {
        let rv = g_scanner_eof(cast(ptr))
        return Bool(rv != 0)
    }


    // *** error() is not available because it has a varargs (...) parameter!


    /// Parses the next token just like g_scanner_peek_next_token()
    /// and also removes it from the input stream. The token data is
    /// placed in the @token, @value, @line, and @position fields of
    /// the #GScanner structure.
    public func get_next_token() -> GTokenType {
        let rv = g_scanner_get_next_token(cast(ptr))
        return rv
    }

    /// Prepares to scan a file.
    public func input_file(input_fd: CInt) {
        g_scanner_input_file(cast(ptr), gint(input_fd))
    }

    /// Prepares to scan a text buffer.
    public func input_text(text: UnsafePointer<gchar>, text_len: CUnsignedInt) {
        g_scanner_input_text(cast(ptr), cast(text), guint(text_len))
    }

    /// Looks up a symbol in the current scope and return its value.
    /// If the symbol is not bound in the current scope, %NULL is
    /// returned.
    public func lookup_symbol(symbol: UnsafePointer<gchar>) -> OpaquePointer! {
        let rv = g_scanner_lookup_symbol(cast(ptr), cast(symbol))
        return cast(rv)
    }

    /// Parses the next token, without removing it from the input stream.
    /// The token data is placed in the @next_token, @next_value, @next_line,
    /// and @next_position fields of the #GScanner structure.
    /// 
    /// Note that, while the token is not removed from the input stream
    /// (i.e. the next call to g_scanner_get_next_token() will return the
    /// same token), it will not be reevaluated. This can lead to surprising
    /// results when changing scope or the scanner configuration after peeking
    /// the next token. Getting the next token after switching the scope or
    /// configuration will return whatever was peeked before, regardless of
    /// any symbols that may have been added or removed in the new scope.
    public func peek_next_token() -> GTokenType {
        let rv = g_scanner_peek_next_token(cast(ptr))
        return rv
    }

    /// Adds a symbol to the given scope.
    public func scope_add_symbol(scope_id: CUnsignedInt, symbol: UnsafePointer<gchar>, value: OpaquePointer) {
        g_scanner_scope_add_symbol(cast(ptr), guint(scope_id), cast(symbol), cast(value))
    }

    /// Calls the given function for each of the symbol/value pairs
    /// in the given scope of the #GScanner. The function is passed
    /// the symbol and value of each pair, and the given @user_data
    /// parameter.
    public func scope_foreach_symbol(scope_id: CUnsignedInt, func_: HFunc, user_data: OpaquePointer) {
        g_scanner_scope_foreach_symbol(cast(ptr), guint(scope_id), func_, cast(user_data))
    }

    /// Looks up a symbol in a scope and return its value. If the
    /// symbol is not bound in the scope, %NULL is returned.
    public func scope_lookup_symbol(scope_id: CUnsignedInt, symbol: UnsafePointer<gchar>) -> OpaquePointer! {
        let rv = g_scanner_scope_lookup_symbol(cast(ptr), guint(scope_id), cast(symbol))
        return cast(rv)
    }

    /// Removes a symbol from a scope.
    public func scope_remove_symbol(scope_id: CUnsignedInt, symbol: UnsafePointer<gchar>) {
        g_scanner_scope_remove_symbol(cast(ptr), guint(scope_id), cast(symbol))
    }

    /// Sets the current scope.
    public func set_scope(scope_id: CUnsignedInt) -> CUnsignedInt {
        let rv = g_scanner_set_scope(cast(ptr), guint(scope_id))
        return CUnsignedInt(rv)
    }

    /// Rewinds the filedescriptor to the current buffer position
    /// and blows the file read ahead buffer. This is useful for
    /// third party uses of the scanners filedescriptor, which hooks
    /// onto the current scanning position.
    public func sync_file_offset() {
        g_scanner_sync_file_offset(cast(ptr))
    }

    /// Outputs a message through the scanner's msg_handler,
    /// resulting from an unexpected token in the input stream.
    /// Note that you should not call g_scanner_peek_next_token()
    /// followed by g_scanner_unexp_token() without an intermediate
    /// call to g_scanner_get_next_token(), as g_scanner_unexp_token()
    /// evaluates the scanner's current token (not the peeked token)
    /// to construct part of the message.
    public func unexp_token(expected_token: TokenType, identifier_spec: UnsafePointer<gchar>, symbol_spec: UnsafePointer<gchar>, symbol_name: UnsafePointer<gchar>, message: UnsafePointer<gchar>, is_error: CInt) {
        g_scanner_unexp_token(cast(ptr), expected_token, cast(identifier_spec), cast(symbol_spec), cast(symbol_name), cast(message), gint(is_error))
    }


    // *** warn() is not available because it has a varargs (...) parameter!

}



public protocol ScannerConfigProtocol {
    var ptr: UnsafeMutablePointer<GScannerConfig> { get }
}

public struct ScannerConfigRef: ScannerConfigProtocol {
    public let ptr: UnsafeMutablePointer<GScannerConfig>
}

public extension ScannerConfigRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GScannerConfig>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GScannerConfig>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GScannerConfig>(opaquePointer)
    }

    }

public class ScannerConfig: ScannerConfigProtocol {
    public let ptr: UnsafeMutablePointer<GScannerConfig>

    public init(ptr: UnsafeMutablePointer<GScannerConfig>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension ScannerConfig {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GScannerConfig>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GScannerConfig>(opaquePointer))
    }

    }

public extension ScannerConfigProtocol {
}



public protocol SequenceProtocol {
    var ptr: UnsafeMutablePointer<GSequence> { get }
}

public struct SequenceRef: SequenceProtocol {
    public let ptr: UnsafeMutablePointer<GSequence>
}

public extension SequenceRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GSequence>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GSequence>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GSequence>(opaquePointer)
    }

    }

public class Sequence: SequenceProtocol {
    public let ptr: UnsafeMutablePointer<GSequence>

    public init(ptr: UnsafeMutablePointer<GSequence>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension Sequence {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GSequence>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GSequence>(opaquePointer))
    }

    }

public extension SequenceProtocol {
    /// Adds a new item to the end of @seq.
    public func append(data: OpaquePointer) -> UnsafeMutablePointer<GSequenceIter>! {
        let rv = g_sequence_append(cast(ptr), cast(data))
        return cast(rv)
    }

    /// Calls @func for each item in the sequence passing @user_data
    /// to the function.
    public func foreach(func_: Func, user_data: OpaquePointer) {
        g_sequence_foreach(cast(ptr), func_, cast(user_data))
    }

    /// Frees the memory allocated for @seq. If @seq has a data destroy
    /// function associated with it, that function is called on all items
    /// in @seq.
    public func free() {
        g_sequence_free(cast(ptr))
    }

    /// Returns the begin iterator for @seq.
    public func get_begin_iter() -> UnsafeMutablePointer<GSequenceIter>! {
        let rv = g_sequence_get_begin_iter(cast(ptr))
        return cast(rv)
    }

    /// Returns the end iterator for @seg
    public func get_end_iter() -> UnsafeMutablePointer<GSequenceIter>! {
        let rv = g_sequence_get_end_iter(cast(ptr))
        return cast(rv)
    }

    /// Returns the iterator at position @pos. If @pos is negative or larger
    /// than the number of items in @seq, the end iterator is returned.
    public func get_iter_at_pos(pos: CInt) -> UnsafeMutablePointer<GSequenceIter>! {
        let rv = g_sequence_get_iter_at_pos(cast(ptr), gint(pos))
        return cast(rv)
    }

    /// Returns the length of @seq
    public func get_length() -> CInt {
        let rv = g_sequence_get_length(cast(ptr))
        return CInt(rv)
    }

    /// Inserts @data into @sequence using @func to determine the new
    /// position. The sequence must already be sorted according to @cmp_func;
    /// otherwise the new position of @data is undefined.
    /// 
    /// @cmp_func is called with two items of the @seq and @user_data.
    /// It should return 0 if the items are equal, a negative value
    /// if the first item comes before the second, and a positive value
    /// if the second  item comes before the first.
    public func insert_sorted(data: OpaquePointer, cmp_func: CompareDataFunc, cmp_data: OpaquePointer) -> UnsafeMutablePointer<GSequenceIter>! {
        let rv = g_sequence_insert_sorted(cast(ptr), cast(data), cmp_func, cast(cmp_data))
        return cast(rv)
    }

    /// Like g_sequence_insert_sorted(), but uses
    /// a #GSequenceIterCompareFunc instead of a #GCompareDataFunc as
    /// the compare function.
    /// 
    /// @iter_cmp is called with two iterators pointing into @seq.
    /// It should return 0 if the iterators are equal, a negative
    /// value if the first iterator comes before the second, and a
    /// positive value if the second iterator comes before the first.
    /// 
    /// It is called with two iterators pointing into @seq. It should
    /// return 0 if the iterators are equal, a negative value if the
    /// first iterator comes before the second, and a positive value
    /// if the second iterator comes before the first.
    public func insert_sorted_iter(data: OpaquePointer, iter_cmp: SequenceIterCompareFunc, cmp_data: OpaquePointer) -> UnsafeMutablePointer<GSequenceIter>! {
        let rv = g_sequence_insert_sorted_iter(cast(ptr), cast(data), iter_cmp, cast(cmp_data))
        return cast(rv)
    }

    /// Returns an iterator pointing to the position of the first item found
    /// equal to @data according to @cmp_func and @cmp_data. If more than one
    /// item is equal, it is not guaranteed that it is the first which is
    /// returned. In that case, you can use g_sequence_iter_next() and
    /// g_sequence_iter_prev() to get others.
    /// 
    /// @cmp_func is called with two items of the @seq and @user_data.
    /// It should return 0 if the items are equal, a negative value if
    /// the first item comes before the second, and a positive value if
    /// the second item comes before the first.
    /// 
    /// This function will fail if the data contained in the sequence is
    /// unsorted.  Use g_sequence_insert_sorted() or
    /// g_sequence_insert_sorted_iter() to add data to your sequence or, if
    /// you want to add a large amount of data, call g_sequence_sort() after
    /// doing unsorted insertions.
    public func lookup(data: OpaquePointer, cmp_func: CompareDataFunc, cmp_data: OpaquePointer) -> UnsafeMutablePointer<GSequenceIter>! {
        let rv = g_sequence_lookup(cast(ptr), cast(data), cmp_func, cast(cmp_data))
        return cast(rv)
    }

    /// Like g_sequence_lookup(), but uses a #GSequenceIterCompareFunc
    /// instead of a #GCompareDataFunc as the compare function.
    /// 
    /// @iter_cmp is called with two iterators pointing into @seq.
    /// It should return 0 if the iterators are equal, a negative value
    /// if the first iterator comes before the second, and a positive
    /// value if the second iterator comes before the first.
    /// 
    /// This function will fail if the data contained in the sequence is
    /// unsorted.  Use g_sequence_insert_sorted() or
    /// g_sequence_insert_sorted_iter() to add data to your sequence or, if
    /// you want to add a large amount of data, call g_sequence_sort() after
    /// doing unsorted insertions.
    public func lookup_iter(data: OpaquePointer, iter_cmp: SequenceIterCompareFunc, cmp_data: OpaquePointer) -> UnsafeMutablePointer<GSequenceIter>! {
        let rv = g_sequence_lookup_iter(cast(ptr), cast(data), iter_cmp, cast(cmp_data))
        return cast(rv)
    }

    /// Adds a new item to the front of @seq
    public func prepend(data: OpaquePointer) -> UnsafeMutablePointer<GSequenceIter>! {
        let rv = g_sequence_prepend(cast(ptr), cast(data))
        return cast(rv)
    }

    /// Returns an iterator pointing to the position where @data would
    /// be inserted according to @cmp_func and @cmp_data.
    /// 
    /// @cmp_func is called with two items of the @seq and @user_data.
    /// It should return 0 if the items are equal, a negative value if
    /// the first item comes before the second, and a positive value if
    /// the second item comes before the first.
    /// 
    /// If you are simply searching for an existing element of the sequence,
    /// consider using g_sequence_lookup().
    /// 
    /// This function will fail if the data contained in the sequence is
    /// unsorted.  Use g_sequence_insert_sorted() or
    /// g_sequence_insert_sorted_iter() to add data to your sequence or, if
    /// you want to add a large amount of data, call g_sequence_sort() after
    /// doing unsorted insertions.
    public func search(data: OpaquePointer, cmp_func: CompareDataFunc, cmp_data: OpaquePointer) -> UnsafeMutablePointer<GSequenceIter>! {
        let rv = g_sequence_search(cast(ptr), cast(data), cmp_func, cast(cmp_data))
        return cast(rv)
    }

    /// Like g_sequence_search(), but uses a #GSequenceIterCompareFunc
    /// instead of a #GCompareDataFunc as the compare function.
    /// 
    /// @iter_cmp is called with two iterators pointing into @seq.
    /// It should return 0 if the iterators are equal, a negative value
    /// if the first iterator comes before the second, and a positive
    /// value if the second iterator comes before the first.
    /// 
    /// If you are simply searching for an existing element of the sequence,
    /// consider using g_sequence_lookup_iter().
    /// 
    /// This function will fail if the data contained in the sequence is
    /// unsorted.  Use g_sequence_insert_sorted() or
    /// g_sequence_insert_sorted_iter() to add data to your sequence or, if
    /// you want to add a large amount of data, call g_sequence_sort() after
    /// doing unsorted insertions.
    public func search_iter(data: OpaquePointer, iter_cmp: SequenceIterCompareFunc, cmp_data: OpaquePointer) -> UnsafeMutablePointer<GSequenceIter>! {
        let rv = g_sequence_search_iter(cast(ptr), cast(data), iter_cmp, cast(cmp_data))
        return cast(rv)
    }

    /// Sorts @seq using @cmp_func.
    /// 
    /// @cmp_func is passed two items of @seq and should
    /// return 0 if they are equal, a negative value if the
    /// first comes before the second, and a positive value
    /// if the second comes before the first.
    public func sort(cmp_func: CompareDataFunc, cmp_data: OpaquePointer) {
        g_sequence_sort(cast(ptr), cmp_func, cast(cmp_data))
    }

    /// Like g_sequence_sort(), but uses a #GSequenceIterCompareFunc instead
    /// of a GCompareDataFunc as the compare function
    /// 
    /// @cmp_func is called with two iterators pointing into @seq. It should
    /// return 0 if the iterators are equal, a negative value if the first
    /// iterator comes before the second, and a positive value if the second
    /// iterator comes before the first.
    public func sort_iter(cmp_func: SequenceIterCompareFunc, cmp_data: OpaquePointer) {
        g_sequence_sort_iter(cast(ptr), cmp_func, cast(cmp_data))
    }
}



public protocol SequenceIterProtocol {
    var ptr: UnsafeMutablePointer<GSequenceIter> { get }
}

public struct SequenceIterRef: SequenceIterProtocol {
    public let ptr: UnsafeMutablePointer<GSequenceIter>
}

public extension SequenceIterRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GSequenceIter>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GSequenceIter>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GSequenceIter>(opaquePointer)
    }

    }

public class SequenceIter: SequenceIterProtocol {
    public let ptr: UnsafeMutablePointer<GSequenceIter>

    public init(ptr: UnsafeMutablePointer<GSequenceIter>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension SequenceIter {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GSequenceIter>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GSequenceIter>(opaquePointer))
    }

    }

public extension SequenceIterProtocol {
    /// Returns a negative number if @a comes before @b, 0 if they are equal,
    /// and a positive number if @a comes after @b.
    /// 
    /// The @a and @b iterators must point into the same sequence.
    public func compare() -> CInt {
        let rv = g_sequence_iter_compare(cast(ptr), cast(ptr))
        return CInt(rv)
    }

    /// Returns the position of @iter
    public func get_position() -> CInt {
        let rv = g_sequence_iter_get_position(cast(ptr))
        return CInt(rv)
    }

    /// Returns the #GSequence that @iter points into.
    public func get_sequence() -> UnsafeMutablePointer<GSequence>! {
        let rv = g_sequence_iter_get_sequence(cast(ptr))
        return cast(rv)
    }

    /// Returns whether @iter is the begin iterator
    public func is_begin() -> Bool {
        let rv = g_sequence_iter_is_begin(cast(ptr))
        return Bool(rv != 0)
    }

    /// Returns whether @iter is the end iterator
    public func is_end() -> Bool {
        let rv = g_sequence_iter_is_end(cast(ptr))
        return Bool(rv != 0)
    }

    /// Returns the #GSequenceIter which is @delta positions away from @iter.
    /// If @iter is closer than -@delta positions to the beginning of the sequence,
    /// the begin iterator is returned. If @iter is closer than @delta positions
    /// to the end of the sequence, the end iterator is returned.
    public func move(delta: CInt) -> UnsafeMutablePointer<GSequenceIter>! {
        let rv = g_sequence_iter_move(cast(ptr), gint(delta))
        return cast(rv)
    }

    /// Returns an iterator pointing to the next position after @iter.
    /// If @iter is the end iterator, the end iterator is returned.
    public func next() -> UnsafeMutablePointer<GSequenceIter>! {
        let rv = g_sequence_iter_next(cast(ptr))
        return cast(rv)
    }

    /// Returns an iterator pointing to the previous position before @iter.
    /// If @iter is the begin iterator, the begin iterator is returned.
    public func prev() -> UnsafeMutablePointer<GSequenceIter>! {
        let rv = g_sequence_iter_prev(cast(ptr))
        return cast(rv)
    }
}



public protocol SourceProtocol {
    var ptr: UnsafeMutablePointer<GSource> { get }
}

public struct SourceRef: SourceProtocol {
    public let ptr: UnsafeMutablePointer<GSource>
}

public extension SourceRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GSource>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GSource>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GSource>(opaquePointer)
    }

        /// Creates a new #GSource structure. The size is specified to
    /// allow creating structures derived from #GSource that contain
    /// additional data. The size passed in must be at least
    /// `sizeof (GSource)`.
    /// 
    /// The source will not initially be associated with any #GMainContext
    /// and must be added to one with g_source_attach() before it will be
    /// executed.
    public init( source_funcs: SourceFuncsProtocol, struct_size: CUnsignedInt) {
        let rv = g_source_new(cast(source_funcs.ptr), guint(struct_size))
        self.ptr = cast(rv)
    }
}

public class Source: SourceProtocol {
    public let ptr: UnsafeMutablePointer<GSource>

    public init(ptr: UnsafeMutablePointer<GSource>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension Source {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GSource>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GSource>(opaquePointer))
    }

        /// Creates a new #GSource structure. The size is specified to
    /// allow creating structures derived from #GSource that contain
    /// additional data. The size passed in must be at least
    /// `sizeof (GSource)`.
    /// 
    /// The source will not initially be associated with any #GMainContext
    /// and must be added to one with g_source_attach() before it will be
    /// executed.
    public convenience init( source_funcs: SourceFuncsProtocol, struct_size: CUnsignedInt) {
        let rv = g_source_new(cast(source_funcs.ptr), guint(struct_size))
        self.init(ptr: cast(rv))
    }
}

public extension SourceProtocol {
    /// Adds @child_source to @source as a "polled" source; when @source is
    /// added to a #GMainContext, @child_source will be automatically added
    /// with the same priority, when @child_source is triggered, it will
    /// cause @source to dispatch (in addition to calling its own
    /// callback), and when @source is destroyed, it will destroy
    /// @child_source as well. (@source will also still be dispatched if
    /// its own prepare/check functions indicate that it is ready.)
    /// 
    /// If you don't need @child_source to do anything on its own when it
    /// triggers, you can call g_source_set_dummy_callback() on it to set a
    /// callback that does nothing (except return %TRUE if appropriate).
    /// 
    /// @source will hold a reference on @child_source while @child_source
    /// is attached to it.
    /// 
    /// This API is only intended to be used by implementations of #GSource.
    /// Do not call this API on a #GSource that you did not create.
    public func add_child_source() {
        g_source_add_child_source(cast(ptr), cast(ptr))
    }

    /// Adds a file descriptor to the set of file descriptors polled for
    /// this source. This is usually combined with g_source_new() to add an
    /// event source. The event source's check function will typically test
    /// the @revents field in the #GPollFD struct and return %TRUE if events need
    /// to be processed.
    /// 
    /// This API is only intended to be used by implementations of #GSource.
    /// Do not call this API on a #GSource that you did not create.
    /// 
    /// Using this API forces the linear scanning of event sources on each
    /// main loop iteration.  Newly-written event sources should try to use
    /// g_source_add_unix_fd() instead of this API.
    public func add_poll(fd: PollFDProtocol) {
        g_source_add_poll(cast(ptr), cast(fd.ptr))
    }

    /// Monitors @fd for the IO events in @events.
    /// 
    /// The tag returned by this function can be used to remove or modify the
    /// monitoring of the fd using g_source_remove_unix_fd() or
    /// g_source_modify_unix_fd().
    /// 
    /// It is not necessary to remove the fd before destroying the source; it
    /// will be cleaned up automatically.
    /// 
    /// This API is only intended to be used by implementations of #GSource.
    /// Do not call this API on a #GSource that you did not create.
    /// 
    /// As the name suggests, this function is not available on Windows.
    public func add_unix_fd(fd: CInt, events: IOCondition) -> OpaquePointer! {
        let rv = g_source_add_unix_fd(cast(ptr), gint(fd), events)
        return cast(rv)
    }

    /// Adds a #GSource to a @context so that it will be executed within
    /// that context. Remove it by calling g_source_destroy().
    public func attach(context: MainContextProtocol) -> CUnsignedInt {
        let rv = g_source_attach(cast(ptr), cast(context.ptr))
        return CUnsignedInt(rv)
    }

    /// Removes a source from its #GMainContext, if any, and mark it as
    /// destroyed.  The source cannot be subsequently added to another
    /// context. It is safe to call this on sources which have already been
    /// removed from their context.
    public func destroy() {
        g_source_destroy(cast(ptr))
    }

    /// Checks whether a source is allowed to be called recursively.
    /// see g_source_set_can_recurse().
    public func get_can_recurse() -> Bool {
        let rv = g_source_get_can_recurse(cast(ptr))
        return Bool(rv != 0)
    }

    /// Gets the #GMainContext with which the source is associated.
    /// 
    /// You can call this on a source that has been destroyed, provided
    /// that the #GMainContext it was attached to still exists (in which
    /// case it will return that #GMainContext). In particular, you can
    /// always call this function on the source returned from
    /// g_main_current_source(). But calling this function on a source
    /// whose #GMainContext has been destroyed is an error.
    public func get_context() -> UnsafeMutablePointer<GMainContext>! {
        let rv = g_source_get_context(cast(ptr))
        return cast(rv)
    }

    /// This function ignores @source and is otherwise the same as
    /// g_get_current_time().
    ///
    /// **get_current_time is deprecated:**
    /// use g_source_get_time() instead
    @available(*, deprecated) public func get_current_time(timeval: TimeValProtocol) {
        g_source_get_current_time(cast(ptr), cast(timeval.ptr))
    }

    /// Returns the numeric ID for a particular source. The ID of a source
    /// is a positive integer which is unique within a particular main loop
    /// context. The reverse
    /// mapping from ID to source is done by g_main_context_find_source_by_id().
    public func get_id() -> CUnsignedInt {
        let rv = g_source_get_id(cast(ptr))
        return CUnsignedInt(rv)
    }

    /// Gets a name for the source, used in debugging and profiling.  The
    /// name may be #NULL if it has never been set with g_source_set_name().
    public func get_name() -> UnsafePointer<CChar>! {
        let rv = g_source_get_name(cast(ptr))
        return cast(rv)
    }

    /// Gets the priority of a source.
    public func get_priority() -> CInt {
        let rv = g_source_get_priority(cast(ptr))
        return CInt(rv)
    }

    /// Gets the "ready time" of @source, as set by
    /// g_source_set_ready_time().
    /// 
    /// Any time before the current monotonic time (including 0) is an
    /// indication that the source will fire immediately.
    public func get_ready_time() -> Int64 {
        let rv = g_source_get_ready_time(cast(ptr))
        return Int64(rv)
    }

    /// Gets the time to be used when checking this source. The advantage of
    /// calling this function over calling g_get_monotonic_time() directly is
    /// that when checking multiple sources, GLib can cache a single value
    /// instead of having to repeatedly get the system monotonic time.
    /// 
    /// The time here is the system monotonic time, if available, or some
    /// other reasonable alternative otherwise.  See g_get_monotonic_time().
    public func get_time() -> Int64 {
        let rv = g_source_get_time(cast(ptr))
        return Int64(rv)
    }

    /// Returns whether @source has been destroyed.
    /// 
    /// This is important when you operate upon your objects
    /// from within idle handlers, but may have freed the object
    /// before the dispatch of your idle handler.
    /// 
    /// |[<!-- language="C" -->
    /// static gboolean
    /// idle_callback (gpointer data)
    /// {
    ///   SomeWidget *self = data;
    ///    
    ///   GDK_THREADS_ENTER ();
    ///   // do stuff with self
    ///   self->idle_id = 0;
    ///   GDK_THREADS_LEAVE ();
    ///    
    ///   return G_SOURCE_REMOVE;
    /// }
    ///  
    /// static void
    /// some_widget_do_stuff_later (SomeWidget *self)
    /// {
    ///   self->idle_id = g_idle_add (idle_callback, self);
    /// }
    ///  
    /// static void
    /// some_widget_finalize (GObject *object)
    /// {
    ///   SomeWidget *self = SOME_WIDGET (object);
    ///    
    ///   if (self->idle_id)
    ///     g_source_remove (self->idle_id);
    ///    
    ///   G_OBJECT_CLASS (parent_class)->finalize (object);
    /// }
    /// ]|
    /// 
    /// This will fail in a multi-threaded application if the
    /// widget is destroyed before the idle handler fires due
    /// to the use after free in the callback. A solution, to
    /// this particular problem, is to check to if the source
    /// has already been destroy within the callback.
    /// 
    /// |[<!-- language="C" -->
    /// static gboolean
    /// idle_callback (gpointer data)
    /// {
    ///   SomeWidget *self = data;
    ///   
    ///   GDK_THREADS_ENTER ();
    ///   if (!g_source_is_destroyed (g_main_current_source ()))
    ///     {
    ///       // do stuff with self
    ///     }
    ///   GDK_THREADS_LEAVE ();
    ///   
    ///   return FALSE;
    /// }
    /// ]|
    public func is_destroyed() -> Bool {
        let rv = g_source_is_destroyed(cast(ptr))
        return Bool(rv != 0)
    }

    /// Updates the event mask to watch for the fd identified by @tag.
    /// 
    /// @tag is the tag returned from g_source_add_unix_fd().
    /// 
    /// If you want to remove a fd, don't set its event mask to zero.
    /// Instead, call g_source_remove_unix_fd().
    /// 
    /// This API is only intended to be used by implementations of #GSource.
    /// Do not call this API on a #GSource that you did not create.
    /// 
    /// As the name suggests, this function is not available on Windows.
    public func modify_unix_fd(tag: OpaquePointer, new_events: IOCondition) {
        g_source_modify_unix_fd(cast(ptr), cast(tag), new_events)
    }

    /// Queries the events reported for the fd corresponding to @tag on
    /// @source during the last poll.
    /// 
    /// The return value of this function is only defined when the function
    /// is called from the check or dispatch functions for @source.
    /// 
    /// This API is only intended to be used by implementations of #GSource.
    /// Do not call this API on a #GSource that you did not create.
    /// 
    /// As the name suggests, this function is not available on Windows.
    public func query_unix_fd(tag: OpaquePointer) -> GIOCondition {
        let rv = g_source_query_unix_fd(cast(ptr), cast(tag))
        return rv
    }

    /// Increases the reference count on a source by one.
    public func ref() -> UnsafeMutablePointer<GSource>! {
        let rv = g_source_ref(cast(ptr))
        return cast(rv)
    }

    /// Detaches @child_source from @source and destroys it.
    /// 
    /// This API is only intended to be used by implementations of #GSource.
    /// Do not call this API on a #GSource that you did not create.
    public func remove_child_source() {
        g_source_remove_child_source(cast(ptr), cast(ptr))
    }

    /// Removes a file descriptor from the set of file descriptors polled for
    /// this source.
    /// 
    /// This API is only intended to be used by implementations of #GSource.
    /// Do not call this API on a #GSource that you did not create.
    public func remove_poll(fd: PollFDProtocol) {
        g_source_remove_poll(cast(ptr), cast(fd.ptr))
    }

    /// Reverses the effect of a previous call to g_source_add_unix_fd().
    /// 
    /// You only need to call this if you want to remove an fd from being
    /// watched while keeping the same source around.  In the normal case you
    /// will just want to destroy the source.
    /// 
    /// This API is only intended to be used by implementations of #GSource.
    /// Do not call this API on a #GSource that you did not create.
    /// 
    /// As the name suggests, this function is not available on Windows.
    public func remove_unix_fd(tag: OpaquePointer) {
        g_source_remove_unix_fd(cast(ptr), cast(tag))
    }

    /// Sets the callback function for a source. The callback for a source is
    /// called from the source's dispatch function.
    /// 
    /// The exact type of @func depends on the type of source; ie. you
    /// should not count on @func being called with @data as its first
    /// parameter.
    /// 
    /// See [memory management of sources][mainloop-memory-management] for details
    /// on how to handle memory management of @data.
    /// 
    /// Typically, you won't use this function. Instead use functions specific
    /// to the type of source you are using.
    public func set_callback(func_: SourceFunc, data: OpaquePointer, notify: DestroyNotify) {
        g_source_set_callback(cast(ptr), func_, cast(data), notify)
    }

    /// Sets the callback function storing the data as a refcounted callback
    /// "object". This is used internally. Note that calling
    /// g_source_set_callback_indirect() assumes
    /// an initial reference count on @callback_data, and thus
    /// @callback_funcs->unref will eventually be called once more
    /// than @callback_funcs->ref.
    public func set_callback_indirect(callback_data: OpaquePointer, callback_funcs: SourceCallbackFuncsProtocol) {
        g_source_set_callback_indirect(cast(ptr), cast(callback_data), cast(callback_funcs.ptr))
    }

    /// Sets whether a source can be called recursively. If @can_recurse is
    /// %TRUE, then while the source is being dispatched then this source
    /// will be processed normally. Otherwise, all processing of this
    /// source is blocked until the dispatch function returns.
    public func set_can_recurse(can_recurse: Bool) {
        g_source_set_can_recurse(cast(ptr), gboolean(can_recurse ? 1 : 0))
    }

    /// Sets the source functions (can be used to override
    /// default implementations) of an unattached source.
    public func set_funcs(funcs: SourceFuncsProtocol) {
        g_source_set_funcs(cast(ptr), cast(funcs.ptr))
    }

    /// Sets a name for the source, used in debugging and profiling.
    /// The name defaults to #NULL.
    /// 
    /// The source name should describe in a human-readable way
    /// what the source does. For example, "X11 event queue"
    /// or "GTK+ repaint idle handler" or whatever it is.
    /// 
    /// It is permitted to call this function multiple times, but is not
    /// recommended due to the potential performance impact.  For example,
    /// one could change the name in the "check" function of a #GSourceFuncs
    /// to include details like the event type in the source name.
    /// 
    /// Use caution if changing the name while another thread may be
    /// accessing it with g_source_get_name(); that function does not copy
    /// the value, and changing the value will free it while the other thread
    /// may be attempting to use it.
    public func set_name(name: UnsafePointer<CChar>) {
        g_source_set_name(cast(ptr), cast(name))
    }

    /// Sets the priority of a source. While the main loop is being run, a
    /// source will be dispatched if it is ready to be dispatched and no
    /// sources at a higher (numerically smaller) priority are ready to be
    /// dispatched.
    /// 
    /// A child source always has the same priority as its parent.  It is not
    /// permitted to change the priority of a source once it has been added
    /// as a child of another source.
    public func set_priority(priority: CInt) {
        g_source_set_priority(cast(ptr), gint(priority))
    }

    /// Sets a #GSource to be dispatched when the given monotonic time is
    /// reached (or passed).  If the monotonic time is in the past (as it
    /// always will be if @ready_time is 0) then the source will be
    /// dispatched immediately.
    /// 
    /// If @ready_time is -1 then the source is never woken up on the basis
    /// of the passage of time.
    /// 
    /// Dispatching the source does not reset the ready time.  You should do
    /// so yourself, from the source dispatch function.
    /// 
    /// Note that if you have a pair of sources where the ready time of one
    /// suggests that it will be delivered first but the priority for the
    /// other suggests that it would be delivered first, and the ready time
    /// for both sources is reached during the same main context iteration
    /// then the order of dispatch is undefined.
    /// 
    /// This API is only intended to be used by implementations of #GSource.
    /// Do not call this API on a #GSource that you did not create.
    public func set_ready_time(ready_time: Int64) {
        g_source_set_ready_time(cast(ptr), gint64(ready_time))
    }

    /// Decreases the reference count of a source by one. If the
    /// resulting reference count is zero the source and associated
    /// memory will be destroyed.
    public func unref() {
        g_source_unref(cast(ptr))
    }
}



public protocol SourceCallbackFuncsProtocol {
    var ptr: UnsafeMutablePointer<GSourceCallbackFuncs> { get }
}

public struct SourceCallbackFuncsRef: SourceCallbackFuncsProtocol {
    public let ptr: UnsafeMutablePointer<GSourceCallbackFuncs>
}

public extension SourceCallbackFuncsRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GSourceCallbackFuncs>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GSourceCallbackFuncs>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GSourceCallbackFuncs>(opaquePointer)
    }

    }

public class SourceCallbackFuncs: SourceCallbackFuncsProtocol {
    public let ptr: UnsafeMutablePointer<GSourceCallbackFuncs>

    public init(ptr: UnsafeMutablePointer<GSourceCallbackFuncs>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension SourceCallbackFuncs {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GSourceCallbackFuncs>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GSourceCallbackFuncs>(opaquePointer))
    }

    }

public extension SourceCallbackFuncsProtocol {
}



public protocol SourceFuncsProtocol {
    var ptr: UnsafeMutablePointer<GSourceFuncs> { get }
}

public struct SourceFuncsRef: SourceFuncsProtocol {
    public let ptr: UnsafeMutablePointer<GSourceFuncs>
}

public extension SourceFuncsRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GSourceFuncs>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GSourceFuncs>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GSourceFuncs>(opaquePointer)
    }

    }

public class SourceFuncs: SourceFuncsProtocol {
    public let ptr: UnsafeMutablePointer<GSourceFuncs>

    public init(ptr: UnsafeMutablePointer<GSourceFuncs>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension SourceFuncs {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GSourceFuncs>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GSourceFuncs>(opaquePointer))
    }

    }

public extension SourceFuncsProtocol {
}



public protocol SourcePrivateProtocol {
    var ptr: UnsafeMutablePointer<GSourcePrivate> { get }
}

public struct SourcePrivateRef: SourcePrivateProtocol {
    public let ptr: UnsafeMutablePointer<GSourcePrivate>
}

public extension SourcePrivateRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GSourcePrivate>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GSourcePrivate>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GSourcePrivate>(opaquePointer)
    }

    }

public class SourcePrivate: SourcePrivateProtocol {
    public let ptr: UnsafeMutablePointer<GSourcePrivate>

    public init(ptr: UnsafeMutablePointer<GSourcePrivate>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension SourcePrivate {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GSourcePrivate>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GSourcePrivate>(opaquePointer))
    }

    }

public extension SourcePrivateProtocol {
}



public protocol StatBufProtocol {
    var ptr: UnsafeMutablePointer<GStatBuf> { get }
}

public struct StatBufRef: StatBufProtocol {
    public let ptr: UnsafeMutablePointer<GStatBuf>
}

public extension StatBufRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GStatBuf>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GStatBuf>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GStatBuf>(opaquePointer)
    }

    }

public class StatBuf: StatBufProtocol {
    public let ptr: UnsafeMutablePointer<GStatBuf>

    public init(ptr: UnsafeMutablePointer<GStatBuf>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension StatBuf {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GStatBuf>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GStatBuf>(opaquePointer))
    }

    }

public extension StatBufProtocol {
}



public protocol StringTypeProtocol {
    var ptr: UnsafeMutablePointer<GString> { get }
}

public struct StringRef: StringTypeProtocol {
    public let ptr: UnsafeMutablePointer<GString>
}

public extension StringRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GString>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GString>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GString>(opaquePointer)
    }

    }

public class StringType: StringTypeProtocol {
    public let ptr: UnsafeMutablePointer<GString>

    public init(ptr: UnsafeMutablePointer<GString>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension StringType {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GString>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GString>(opaquePointer))
    }

    }

public extension StringTypeProtocol {
    /// Adds a string onto the end of a #GString, expanding
    /// it if necessary.
    public func append(val: UnsafePointer<gchar>) -> UnsafeMutablePointer<GString>! {
        let rv = g_string_append(cast(ptr), cast(val))
        return cast(rv)
    }

    /// Adds a byte onto the end of a #GString, expanding
    /// it if necessary.
    public func append_c(c: gchar) -> UnsafeMutablePointer<GString>! {
        let rv = g_string_append_c(cast(ptr), c)
        return cast(rv)
    }

    /// Appends @len bytes of @val to @string. Because @len is
    /// provided, @val may contain embedded nuls and need not
    /// be nul-terminated.
    /// 
    /// Since this function does not stop at nul bytes, it is
    /// the caller's responsibility to ensure that @val has at
    /// least @len addressable bytes.
    public func append_len(val: UnsafePointer<gchar>, len: gssize) -> UnsafeMutablePointer<GString>! {
        let rv = g_string_append_len(cast(ptr), cast(val), len)
        return cast(rv)
    }


    // *** append_printf() is not available because it has a varargs (...) parameter!


    /// Converts a Unicode character into UTF-8, and appends it
    /// to the string.
    public func append_unichar(wc: gunichar) -> UnsafeMutablePointer<GString>! {
        let rv = g_string_append_unichar(cast(ptr), wc)
        return cast(rv)
    }

    /// Appends @unescaped to @string, escaped any characters that
    /// are reserved in URIs using URI-style escape sequences.
    public func append_uri_escaped(unescaped: UnsafePointer<gchar>, reserved_chars_allowed: UnsafePointer<gchar>, allow_utf8: Bool) -> UnsafeMutablePointer<GString>! {
        let rv = g_string_append_uri_escaped(cast(ptr), cast(unescaped), cast(reserved_chars_allowed), gboolean(allow_utf8 ? 1 : 0))
        return cast(rv)
    }

    /// Appends a formatted string onto the end of a #GString.
    /// This function is similar to g_string_append_printf()
    /// except that the arguments to the format string are passed
    /// as a va_list.
    public func append_vprintf(format: UnsafePointer<gchar>, args: CVaListPointer) {
        g_string_append_vprintf(cast(ptr), cast(format), args)
    }

    /// Converts all uppercase ASCII letters to lowercase ASCII letters.
    public func ascii_down() -> UnsafeMutablePointer<GString>! {
        let rv = g_string_ascii_down(cast(ptr))
        return cast(rv)
    }

    /// Converts all lowercase ASCII letters to uppercase ASCII letters.
    public func ascii_up() -> UnsafeMutablePointer<GString>! {
        let rv = g_string_ascii_up(cast(ptr))
        return cast(rv)
    }

    /// Copies the bytes from a string into a #GString,
    /// destroying any previous contents. It is rather like
    /// the standard strcpy() function, except that you do not
    /// have to worry about having enough space to copy the string.
    public func assign(rval: UnsafePointer<gchar>) -> UnsafeMutablePointer<GString>! {
        let rv = g_string_assign(cast(ptr), cast(rval))
        return cast(rv)
    }

    /// Converts a #GString to lowercase.
    ///
    /// **down is deprecated:**
    /// This function uses the locale-specific
    ///     tolower() function, which is almost never the right thing.
    ///     Use g_string_ascii_down() or g_utf8_strdown() instead.
    @available(*, deprecated) public func down() -> UnsafeMutablePointer<GString>! {
        let rv = g_string_down(cast(ptr))
        return cast(rv)
    }

    /// Compares two strings for equality, returning %TRUE if they are equal.
    /// For use with #GHashTable.
    public func equal() -> Bool {
        let rv = g_string_equal(cast(ptr), cast(ptr))
        return Bool(rv != 0)
    }

    /// Removes @len bytes from a #GString, starting at position @pos.
    /// The rest of the #GString is shifted down to fill the gap.
    public func erase(pos: gssize, len: gssize) -> UnsafeMutablePointer<GString>! {
        let rv = g_string_erase(cast(ptr), pos, len)
        return cast(rv)
    }

    /// Frees the memory allocated for the #GString.
    /// If @free_segment is %TRUE it also frees the character data.  If
    /// it's %FALSE, the caller gains ownership of the buffer and must
    /// free it after use with g_free().
    public func free(free_segment: Bool) -> UnsafeMutablePointer<gchar>! {
        let rv = g_string_free(cast(ptr), gboolean(free_segment ? 1 : 0))
        return cast(rv)
    }

    /// Transfers ownership of the contents of @string to a newly allocated
    /// #GBytes.  The #GString structure itself is deallocated, and it is
    /// therefore invalid to use @string after invoking this function.
    /// 
    /// Note that while #GString ensures that its buffer always has a
    /// trailing nul character (not reflected in its "len"), the returned
    /// #GBytes does not include this extra nul; i.e. it has length exactly
    /// equal to the "len" member.
    public func free_to_bytes() -> UnsafeMutablePointer<GBytes>! {
        let rv = g_string_free_to_bytes(cast(ptr))
        return cast(rv)
    }

    /// Creates a hash code for @str; for use with #GHashTable.
    public func hash() -> CUnsignedInt {
        let rv = g_string_hash(cast(ptr))
        return CUnsignedInt(rv)
    }

    /// Inserts a copy of a string into a #GString,
    /// expanding it if necessary.
    public func insert(pos: gssize, val: UnsafePointer<gchar>) -> UnsafeMutablePointer<GString>! {
        let rv = g_string_insert(cast(ptr), pos, cast(val))
        return cast(rv)
    }

    /// Inserts a byte into a #GString, expanding it if necessary.
    public func insert_c(pos: gssize, c: gchar) -> UnsafeMutablePointer<GString>! {
        let rv = g_string_insert_c(cast(ptr), pos, c)
        return cast(rv)
    }

    /// Inserts @len bytes of @val into @string at @pos.
    /// Because @len is provided, @val may contain embedded
    /// nuls and need not be nul-terminated. If @pos is -1,
    /// bytes are inserted at the end of the string.
    /// 
    /// Since this function does not stop at nul bytes, it is
    /// the caller's responsibility to ensure that @val has at
    /// least @len addressable bytes.
    public func insert_len(pos: gssize, val: UnsafePointer<gchar>, len: gssize) -> UnsafeMutablePointer<GString>! {
        let rv = g_string_insert_len(cast(ptr), pos, cast(val), len)
        return cast(rv)
    }

    /// Converts a Unicode character into UTF-8, and insert it
    /// into the string at the given position.
    public func insert_unichar(pos: gssize, wc: gunichar) -> UnsafeMutablePointer<GString>! {
        let rv = g_string_insert_unichar(cast(ptr), pos, wc)
        return cast(rv)
    }

    /// Overwrites part of a string, lengthening it if necessary.
    public func overwrite(pos: Int, val: UnsafePointer<gchar>) -> UnsafeMutablePointer<GString>! {
        let rv = g_string_overwrite(cast(ptr), gsize(pos), cast(val))
        return cast(rv)
    }

    /// Overwrites part of a string, lengthening it if necessary.
    /// This function will work with embedded nuls.
    public func overwrite_len(pos: Int, val: UnsafePointer<gchar>, len: gssize) -> UnsafeMutablePointer<GString>! {
        let rv = g_string_overwrite_len(cast(ptr), gsize(pos), cast(val), len)
        return cast(rv)
    }

    /// Adds a string on to the start of a #GString,
    /// expanding it if necessary.
    public func prepend(val: UnsafePointer<gchar>) -> UnsafeMutablePointer<GString>! {
        let rv = g_string_prepend(cast(ptr), cast(val))
        return cast(rv)
    }

    /// Adds a byte onto the start of a #GString,
    /// expanding it if necessary.
    public func prepend_c(c: gchar) -> UnsafeMutablePointer<GString>! {
        let rv = g_string_prepend_c(cast(ptr), c)
        return cast(rv)
    }

    /// Prepends @len bytes of @val to @string.
    /// Because @len is provided, @val may contain
    /// embedded nuls and need not be nul-terminated.
    /// 
    /// Since this function does not stop at nul bytes,
    /// it is the caller's responsibility to ensure that
    /// @val has at least @len addressable bytes.
    public func prepend_len(val: UnsafePointer<gchar>, len: gssize) -> UnsafeMutablePointer<GString>! {
        let rv = g_string_prepend_len(cast(ptr), cast(val), len)
        return cast(rv)
    }

    /// Converts a Unicode character into UTF-8, and prepends it
    /// to the string.
    public func prepend_unichar(wc: gunichar) -> UnsafeMutablePointer<GString>! {
        let rv = g_string_prepend_unichar(cast(ptr), wc)
        return cast(rv)
    }


    // *** printf() is not available because it has a varargs (...) parameter!


    /// Sets the length of a #GString. If the length is less than
    /// the current length, the string will be truncated. If the
    /// length is greater than the current length, the contents
    /// of the newly added area are undefined. (However, as
    /// always, string->str[string->len] will be a nul byte.)
    public func set_size(len: Int) -> UnsafeMutablePointer<GString>! {
        let rv = g_string_set_size(cast(ptr), gsize(len))
        return cast(rv)
    }

    /// Cuts off the end of the GString, leaving the first @len bytes.
    public func truncate(len: Int) -> UnsafeMutablePointer<GString>! {
        let rv = g_string_truncate(cast(ptr), gsize(len))
        return cast(rv)
    }

    /// Converts a #GString to uppercase.
    ///
    /// **up is deprecated:**
    /// This function uses the locale-specific
    ///     toupper() function, which is almost never the right thing.
    ///     Use g_string_ascii_up() or g_utf8_strup() instead.
    @available(*, deprecated) public func up() -> UnsafeMutablePointer<GString>! {
        let rv = g_string_up(cast(ptr))
        return cast(rv)
    }

    /// Writes a formatted string into a #GString.
    /// This function is similar to g_string_printf() except that
    /// the arguments to the format string are passed as a va_list.
    public func vprintf(format: UnsafePointer<gchar>, args: CVaListPointer) {
        g_string_vprintf(cast(ptr), cast(format), args)
    }
}



public protocol StringChunkProtocol {
    var ptr: UnsafeMutablePointer<GStringChunk> { get }
}

public struct StringChunkRef: StringChunkProtocol {
    public let ptr: UnsafeMutablePointer<GStringChunk>
}

public extension StringChunkRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GStringChunk>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GStringChunk>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GStringChunk>(opaquePointer)
    }

    }

public class StringChunk: StringChunkProtocol {
    public let ptr: UnsafeMutablePointer<GStringChunk>

    public init(ptr: UnsafeMutablePointer<GStringChunk>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension StringChunk {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GStringChunk>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GStringChunk>(opaquePointer))
    }

    }

public extension StringChunkProtocol {
    /// Frees all strings contained within the #GStringChunk.
    /// After calling g_string_chunk_clear() it is not safe to
    /// access any of the strings which were contained within it.
    public func clear() {
        g_string_chunk_clear(cast(ptr))
    }

    /// Frees all memory allocated by the #GStringChunk.
    /// After calling g_string_chunk_free() it is not safe to
    /// access any of the strings which were contained within it.
    public func free() {
        g_string_chunk_free(cast(ptr))
    }

    /// Adds a copy of @string to the #GStringChunk.
    /// It returns a pointer to the new copy of the string
    /// in the #GStringChunk. The characters in the string
    /// can be changed, if necessary, though you should not
    /// change anything after the end of the string.
    /// 
    /// Unlike g_string_chunk_insert_const(), this function
    /// does not check for duplicates. Also strings added
    /// with g_string_chunk_insert() will not be searched
    /// by g_string_chunk_insert_const() when looking for
    /// duplicates.
    public func insert(string: UnsafePointer<gchar>) -> UnsafeMutablePointer<gchar>! {
        let rv = g_string_chunk_insert(cast(ptr), cast(string))
        return cast(rv)
    }

    /// Adds a copy of @string to the #GStringChunk, unless the same
    /// string has already been added to the #GStringChunk with
    /// g_string_chunk_insert_const().
    /// 
    /// This function is useful if you need to copy a large number
    /// of strings but do not want to waste space storing duplicates.
    /// But you must remember that there may be several pointers to
    /// the same string, and so any changes made to the strings
    /// should be done very carefully.
    /// 
    /// Note that g_string_chunk_insert_const() will not return a
    /// pointer to a string added with g_string_chunk_insert(), even
    /// if they do match.
    public func insert_const(string: UnsafePointer<gchar>) -> UnsafeMutablePointer<gchar>! {
        let rv = g_string_chunk_insert_const(cast(ptr), cast(string))
        return cast(rv)
    }

    /// Adds a copy of the first @len bytes of @string to the #GStringChunk.
    /// The copy is nul-terminated.
    /// 
    /// Since this function does not stop at nul bytes, it is the caller's
    /// responsibility to ensure that @string has at least @len addressable
    /// bytes.
    /// 
    /// The characters in the returned string can be changed, if necessary,
    /// though you should not change anything after the end of the string.
    public func insert_len(string: UnsafePointer<gchar>, len: gssize) -> UnsafeMutablePointer<gchar>! {
        let rv = g_string_chunk_insert_len(cast(ptr), cast(string), len)
        return cast(rv)
    }
}



public protocol TestCaseProtocol {
    var ptr: UnsafeMutablePointer<GTestCase> { get }
}

public struct TestCaseRef: TestCaseProtocol {
    public let ptr: UnsafeMutablePointer<GTestCase>
}

public extension TestCaseRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GTestCase>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GTestCase>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GTestCase>(opaquePointer)
    }

    }

public class TestCase: TestCaseProtocol {
    public let ptr: UnsafeMutablePointer<GTestCase>

    public init(ptr: UnsafeMutablePointer<GTestCase>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension TestCase {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GTestCase>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GTestCase>(opaquePointer))
    }

    }

public extension TestCaseProtocol {
}



public protocol TestConfigProtocol {
    var ptr: UnsafeMutablePointer<GTestConfig> { get }
}

public struct TestConfigRef: TestConfigProtocol {
    public let ptr: UnsafeMutablePointer<GTestConfig>
}

public extension TestConfigRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GTestConfig>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GTestConfig>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GTestConfig>(opaquePointer)
    }

    }

public class TestConfig: TestConfigProtocol {
    public let ptr: UnsafeMutablePointer<GTestConfig>

    public init(ptr: UnsafeMutablePointer<GTestConfig>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension TestConfig {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GTestConfig>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GTestConfig>(opaquePointer))
    }

    }

public extension TestConfigProtocol {
}



public protocol TestLogBufferProtocol {
    var ptr: UnsafeMutablePointer<GTestLogBuffer> { get }
}

public struct TestLogBufferRef: TestLogBufferProtocol {
    public let ptr: UnsafeMutablePointer<GTestLogBuffer>
}

public extension TestLogBufferRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GTestLogBuffer>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GTestLogBuffer>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GTestLogBuffer>(opaquePointer)
    }

    }

public class TestLogBuffer: TestLogBufferProtocol {
    public let ptr: UnsafeMutablePointer<GTestLogBuffer>

    public init(ptr: UnsafeMutablePointer<GTestLogBuffer>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension TestLogBuffer {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GTestLogBuffer>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GTestLogBuffer>(opaquePointer))
    }

    }

public extension TestLogBufferProtocol {
    /// Internal function for gtester to free test log messages, no ABI guarantees provided.
    public func free() {
        g_test_log_buffer_free(cast(ptr))
    }

    /// Internal function for gtester to retrieve test log messages, no ABI guarantees provided.
    public func pop() -> UnsafeMutablePointer<GTestLogMsg>! {
        let rv = g_test_log_buffer_pop(cast(ptr))
        return cast(rv)
    }

    /// Internal function for gtester to decode test log messages, no ABI guarantees provided.
    public func push(n_bytes: CUnsignedInt, bytes: UnsafePointer<guint8>) {
        g_test_log_buffer_push(cast(ptr), guint(n_bytes), cast(bytes))
    }
}



public protocol TestLogMsgProtocol {
    var ptr: UnsafeMutablePointer<GTestLogMsg> { get }
}

public struct TestLogMsgRef: TestLogMsgProtocol {
    public let ptr: UnsafeMutablePointer<GTestLogMsg>
}

public extension TestLogMsgRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GTestLogMsg>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GTestLogMsg>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GTestLogMsg>(opaquePointer)
    }

    }

public class TestLogMsg: TestLogMsgProtocol {
    public let ptr: UnsafeMutablePointer<GTestLogMsg>

    public init(ptr: UnsafeMutablePointer<GTestLogMsg>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension TestLogMsg {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GTestLogMsg>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GTestLogMsg>(opaquePointer))
    }

    }

public extension TestLogMsgProtocol {
    /// Internal function for gtester to free test log messages, no ABI guarantees provided.
    public func free() {
        g_test_log_msg_free(cast(ptr))
    }
}



public protocol TestSuiteProtocol {
    var ptr: UnsafeMutablePointer<GTestSuite> { get }
}

public struct TestSuiteRef: TestSuiteProtocol {
    public let ptr: UnsafeMutablePointer<GTestSuite>
}

public extension TestSuiteRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GTestSuite>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GTestSuite>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GTestSuite>(opaquePointer)
    }

    }

public class TestSuite: TestSuiteProtocol {
    public let ptr: UnsafeMutablePointer<GTestSuite>

    public init(ptr: UnsafeMutablePointer<GTestSuite>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension TestSuite {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GTestSuite>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GTestSuite>(opaquePointer))
    }

    }

public extension TestSuiteProtocol {
    /// Adds @test_case to @suite.
    public func add(test_case: TestCaseProtocol) {
        g_test_suite_add(cast(ptr), cast(test_case.ptr))
    }

    /// Adds @nestedsuite to @suite.
    public func add_suite() {
        g_test_suite_add_suite(cast(ptr), cast(ptr))
    }
}



public protocol ThreadProtocol {
    var ptr: UnsafeMutablePointer<GThread> { get }
}

public struct ThreadRef: ThreadProtocol {
    public let ptr: UnsafeMutablePointer<GThread>
}

public extension ThreadRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GThread>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GThread>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GThread>(opaquePointer)
    }

        /// This function creates a new thread. The new thread starts by invoking
    /// @func with the argument data. The thread will run until @func returns
    /// or until g_thread_exit() is called from the new thread. The return value
    /// of @func becomes the return value of the thread, which can be obtained
    /// with g_thread_join().
    /// 
    /// The @name can be useful for discriminating threads in a debugger.
    /// It is not used for other purposes and does not have to be unique.
    /// Some systems restrict the length of @name to 16 bytes.
    /// 
    /// If the thread can not be created the program aborts. See
    /// g_thread_try_new() if you want to attempt to deal with failures.
    /// 
    /// If you are using threads to offload (potentially many) short-lived tasks,
    /// #GThreadPool may be more appropriate than manually spawning and tracking
    /// multiple #GThreads.
    /// 
    /// To free the struct returned by this function, use g_thread_unref().
    /// Note that g_thread_join() implicitly unrefs the #GThread as well.
    public init( name: UnsafePointer<gchar>, func_: ThreadFunc, data: OpaquePointer) {
        let rv = g_thread_new(cast(name), func_, cast(data))
        self.ptr = cast(rv)
    }

    /// This function is the same as g_thread_new() except that
    /// it allows for the possibility of failure.
    /// 
    /// If a thread can not be created (due to resource limits),
    /// @error is set and %NULL is returned.
    public init(try_ name: UnsafePointer<gchar>, func_: ThreadFunc, data: OpaquePointer) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_thread_try_new(cast(name), func_, cast(data), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        self.ptr = cast(rv)
    }
    /// This function is the same as g_thread_new() except that
    /// it allows for the possibility of failure.
    /// 
    /// If a thread can not be created (due to resource limits),
    /// @error is set and %NULL is returned.
    public static func try_new(name: UnsafePointer<gchar>, func_: ThreadFunc, data: OpaquePointer) throws -> ThreadRef! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_thread_try_new(cast(name), func_, cast(data), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return rv.map { ThreadRef(ptr: cast($0)) }
    }

    /// This function returns the #GThread corresponding to the
    /// current thread. Note that this function does not increase
    /// the reference count of the returned struct.
    /// 
    /// This function will return a #GThread even for threads that
    /// were not created by GLib (i.e. those created by other threading
    /// APIs). This may be useful for thread identification purposes
    /// (i.e. comparisons) but you must not use GLib functions (such
    /// as g_thread_join()) on these threads.
    public static func self_() -> ThreadRef! {
        let rv = g_thread_self()
        return rv.map { ThreadRef(ptr: cast($0)) }
    }
}

public class Thread: ThreadProtocol {
    public let ptr: UnsafeMutablePointer<GThread>

    public init(ptr: UnsafeMutablePointer<GThread>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension Thread {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GThread>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GThread>(opaquePointer))
    }

        /// This function creates a new thread. The new thread starts by invoking
    /// @func with the argument data. The thread will run until @func returns
    /// or until g_thread_exit() is called from the new thread. The return value
    /// of @func becomes the return value of the thread, which can be obtained
    /// with g_thread_join().
    /// 
    /// The @name can be useful for discriminating threads in a debugger.
    /// It is not used for other purposes and does not have to be unique.
    /// Some systems restrict the length of @name to 16 bytes.
    /// 
    /// If the thread can not be created the program aborts. See
    /// g_thread_try_new() if you want to attempt to deal with failures.
    /// 
    /// If you are using threads to offload (potentially many) short-lived tasks,
    /// #GThreadPool may be more appropriate than manually spawning and tracking
    /// multiple #GThreads.
    /// 
    /// To free the struct returned by this function, use g_thread_unref().
    /// Note that g_thread_join() implicitly unrefs the #GThread as well.
    public convenience init( name: UnsafePointer<gchar>, func_: ThreadFunc, data: OpaquePointer) {
        let rv = g_thread_new(cast(name), func_, cast(data))
        self.init(ptr: cast(rv))
    }

    /// This function is the same as g_thread_new() except that
    /// it allows for the possibility of failure.
    /// 
    /// If a thread can not be created (due to resource limits),
    /// @error is set and %NULL is returned.
    public convenience init(try_ name: UnsafePointer<gchar>, func_: ThreadFunc, data: OpaquePointer) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_thread_try_new(cast(name), func_, cast(data), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        self.init(ptr: cast(rv))
    }
    /// This function is the same as g_thread_new() except that
    /// it allows for the possibility of failure.
    /// 
    /// If a thread can not be created (due to resource limits),
    /// @error is set and %NULL is returned.
    public static func try_new(name: UnsafePointer<gchar>, func_: ThreadFunc, data: OpaquePointer) throws -> Thread! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_thread_try_new(cast(name), func_, cast(data), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return rv.map { Thread(ptr: cast($0)) }
    }

    /// This function returns the #GThread corresponding to the
    /// current thread. Note that this function does not increase
    /// the reference count of the returned struct.
    /// 
    /// This function will return a #GThread even for threads that
    /// were not created by GLib (i.e. those created by other threading
    /// APIs). This may be useful for thread identification purposes
    /// (i.e. comparisons) but you must not use GLib functions (such
    /// as g_thread_join()) on these threads.
    public static func self_() -> Thread! {
        let rv = g_thread_self()
        return rv.map { Thread(ptr: cast($0)) }
    }
}

public extension ThreadProtocol {
    /// Waits until @thread finishes, i.e. the function @func, as
    /// given to g_thread_new(), returns or g_thread_exit() is called.
    /// If @thread has already terminated, then g_thread_join()
    /// returns immediately.
    /// 
    /// Any thread can wait for any other thread by calling g_thread_join(),
    /// not just its 'creator'. Calling g_thread_join() from multiple threads
    /// for the same @thread leads to undefined behaviour.
    /// 
    /// The value returned by @func or given to g_thread_exit() is
    /// returned by this function.
    /// 
    /// g_thread_join() consumes the reference to the passed-in @thread.
    /// This will usually cause the #GThread struct and associated resources
    /// to be freed. Use g_thread_ref() to obtain an extra reference if you
    /// want to keep the GThread alive beyond the g_thread_join() call.
    public func join() -> OpaquePointer! {
        let rv = g_thread_join(cast(ptr))
        return cast(rv)
    }

    /// Increase the reference count on @thread.
    public func ref() -> UnsafeMutablePointer<GThread>! {
        let rv = g_thread_ref(cast(ptr))
        return cast(rv)
    }

    /// Decrease the reference count on @thread, possibly freeing all
    /// resources associated with it.
    /// 
    /// Note that each thread holds a reference to its #GThread while
    /// it is running, so it is safe to drop your own reference to it
    /// if you don't need it anymore.
    public func unref() {
        g_thread_unref(cast(ptr))
    }
}



public protocol ThreadPoolProtocol {
    var ptr: UnsafeMutablePointer<GThreadPool> { get }
}

public struct ThreadPoolRef: ThreadPoolProtocol {
    public let ptr: UnsafeMutablePointer<GThreadPool>
}

public extension ThreadPoolRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GThreadPool>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GThreadPool>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GThreadPool>(opaquePointer)
    }

    }

public class ThreadPool: ThreadPoolProtocol {
    public let ptr: UnsafeMutablePointer<GThreadPool>

    public init(ptr: UnsafeMutablePointer<GThreadPool>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension ThreadPool {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GThreadPool>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GThreadPool>(opaquePointer))
    }

    }

public extension ThreadPoolProtocol {
    /// Frees all resources allocated for @pool.
    /// 
    /// If @immediate is %TRUE, no new task is processed for @pool.
    /// Otherwise @pool is not freed before the last task is processed.
    /// Note however, that no thread of this pool is interrupted while
    /// processing a task. Instead at least all still running threads
    /// can finish their tasks before the @pool is freed.
    /// 
    /// If @wait_ is %TRUE, the functions does not return before all
    /// tasks to be processed (dependent on @immediate, whether all
    /// or only the currently running) are ready.
    /// Otherwise the function returns immediately.
    /// 
    /// After calling this function @pool must not be used anymore.
    public func free(immediate: Bool, wait_: Bool) {
        g_thread_pool_free(cast(ptr), gboolean(immediate ? 1 : 0), gboolean(wait_ ? 1 : 0))
    }

    /// Returns the maximal number of threads for @pool.
    public func get_max_threads() -> CInt {
        let rv = g_thread_pool_get_max_threads(cast(ptr))
        return CInt(rv)
    }

    /// Returns the number of threads currently running in @pool.
    public func get_num_threads() -> CUnsignedInt {
        let rv = g_thread_pool_get_num_threads(cast(ptr))
        return CUnsignedInt(rv)
    }

    /// Moves the item to the front of the queue of unprocessed
    /// items, so that it will be processed next.
    public func move_to_front(data: OpaquePointer) -> Bool {
        let rv = g_thread_pool_move_to_front(cast(ptr), cast(data))
        return Bool(rv != 0)
    }

    /// Inserts @data into the list of tasks to be executed by @pool.
    /// 
    /// When the number of currently running threads is lower than the
    /// maximal allowed number of threads, a new thread is started (or
    /// reused) with the properties given to g_thread_pool_new().
    /// Otherwise, @data stays in the queue until a thread in this pool
    /// finishes its previous task and processes @data.
    /// 
    /// @error can be %NULL to ignore errors, or non-%NULL to report
    /// errors. An error can only occur when a new thread couldn't be
    /// created. In that case @data is simply appended to the queue of
    /// work to do.
    /// 
    /// Before version 2.32, this function did not return a success status.
    public func push(data: OpaquePointer) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_thread_pool_push(cast(ptr), cast(data), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return Bool(rv != 0)
    }

    /// Sets the maximal allowed number of threads for @pool.
    /// A value of -1 means that the maximal number of threads
    /// is unlimited. If @pool is an exclusive thread pool, setting
    /// the maximal number of threads to -1 is not allowed.
    /// 
    /// Setting @max_threads to 0 means stopping all work for @pool.
    /// It is effectively frozen until @max_threads is set to a non-zero
    /// value again.
    /// 
    /// A thread is never terminated while calling @func, as supplied by
    /// g_thread_pool_new(). Instead the maximal number of threads only
    /// has effect for the allocation of new threads in g_thread_pool_push().
    /// A new thread is allocated, whenever the number of currently
    /// running threads in @pool is smaller than the maximal number.
    /// 
    /// @error can be %NULL to ignore errors, or non-%NULL to report
    /// errors. An error can only occur when a new thread couldn't be
    /// created.
    /// 
    /// Before version 2.32, this function did not return a success status.
    public func set_max_threads(max_threads: CInt) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_thread_pool_set_max_threads(cast(ptr), gint(max_threads), &error)
        if let error = error {
                throw ErrorType(ptr: error)
        }
        return Bool(rv != 0)
    }

    /// Sets the function used to sort the list of tasks. This allows the
    /// tasks to be processed by a priority determined by @func, and not
    /// just in the order in which they were added to the pool.
    /// 
    /// Note, if the maximum number of threads is more than 1, the order
    /// that threads are executed cannot be guaranteed 100%. Threads are
    /// scheduled by the operating system and are executed at random. It
    /// cannot be assumed that threads are executed in the order they are
    /// created.
    public func set_sort_function(func_: CompareDataFunc, user_data: OpaquePointer) {
        g_thread_pool_set_sort_function(cast(ptr), func_, cast(user_data))
    }

    /// Returns the number of tasks still unprocessed in @pool.
    public func unprocessed() -> CUnsignedInt {
        let rv = g_thread_pool_unprocessed(cast(ptr))
        return CUnsignedInt(rv)
    }
}



public protocol TimeValProtocol {
    var ptr: UnsafeMutablePointer<GTimeVal> { get }
}

public struct TimeValRef: TimeValProtocol {
    public let ptr: UnsafeMutablePointer<GTimeVal>
}

public extension TimeValRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GTimeVal>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GTimeVal>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GTimeVal>(opaquePointer)
    }

    }

public class TimeVal: TimeValProtocol {
    public let ptr: UnsafeMutablePointer<GTimeVal>

    public init(ptr: UnsafeMutablePointer<GTimeVal>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension TimeVal {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GTimeVal>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GTimeVal>(opaquePointer))
    }

    }

public extension TimeValProtocol {
    /// Adds the given number of microseconds to @time_. @microseconds can
    /// also be negative to decrease the value of @time_.
    public func add(microseconds: CLong) {
        g_time_val_add(cast(ptr), glong(microseconds))
    }

    /// Converts @time_ into an RFC 3339 encoded string, relative to the
    /// Coordinated Universal Time (UTC). This is one of the many formats
    /// allowed by ISO 8601.
    /// 
    /// ISO 8601 allows a large number of date/time formats, with or without
    /// punctuation and optional elements. The format returned by this function
    /// is a complete date and time, with optional punctuation included, the
    /// UTC time zone represented as "Z", and the @tv_usec part included if
    /// and only if it is nonzero, i.e. either
    /// "YYYY-MM-DDTHH:MM:SSZ" or "YYYY-MM-DDTHH:MM:SS.fffffZ".
    /// 
    /// This corresponds to the Internet date/time format defined by
    /// [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt),
    /// and to either of the two most-precise formats defined by
    /// the W3C Note
    /// [Date and Time Formats](http://www.w3.org/TR/NOTE-datetime-19980827).
    /// Both of these documents are profiles of ISO 8601.
    /// 
    /// Use g_date_time_format() or g_strdup_printf() if a different
    /// variation of ISO 8601 format is required.
    public func to_iso8601() -> UnsafeMutablePointer<gchar>! {
        let rv = g_time_val_to_iso8601(cast(ptr))
        return cast(rv)
    }

    /// Converts a string containing an ISO 8601 encoded date and time
    /// to a #GTimeVal and puts it into @time_.
    /// 
    /// @iso_date must include year, month, day, hours, minutes, and
    /// seconds. It can optionally include fractions of a second and a time
    /// zone indicator. (In the absence of any time zone indication, the
    /// timestamp is assumed to be in local time.)
    public func from_iso8601(iso_date: UnsafePointer<gchar>) -> Bool {
        let rv = g_time_val_from_iso8601(cast(iso_date), cast(ptr))
        return Bool(rv != 0)
    }
}



public protocol TimeZoneProtocol {
    var ptr: UnsafeMutablePointer<GTimeZone> { get }
}

public struct TimeZoneRef: TimeZoneProtocol {
    public let ptr: UnsafeMutablePointer<GTimeZone>
}

public extension TimeZoneRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GTimeZone>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GTimeZone>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GTimeZone>(opaquePointer)
    }

        /// Creates a #GTimeZone corresponding to @identifier.
    /// 
    /// @identifier can either be an RFC3339/ISO 8601 time offset or
    /// something that would pass as a valid value for the `TZ` environment
    /// variable (including %NULL).
    /// 
    /// In Windows, @identifier can also be the unlocalized name of a time
    /// zone for standard time, for example "Pacific Standard Time".
    /// 
    /// Valid RFC3339 time offsets are `"Z"` (for UTC) or
    /// `"±hh:mm"`.  ISO 8601 additionally specifies
    /// `"±hhmm"` and `"±hh"`.  Offsets are
    /// time values to be added to Coordinated Universal Time (UTC) to get
    /// the local time.
    /// 
    /// In UNIX, the `TZ` environment variable typically corresponds
    /// to the name of a file in the zoneinfo database, or string in
    /// "std offset [dst [offset],start[/time],end[/time]]" (POSIX) format.
    /// There  are  no spaces in the specification. The name of standard
    /// and daylight savings time zone must be three or more alphabetic
    /// characters. Offsets are time values to be added to local time to
    /// get Coordinated Universal Time (UTC) and should be
    /// `"[±]hh[[:]mm[:ss]]"`.  Dates are either
    /// `"Jn"` (Julian day with n between 1 and 365, leap
    /// years not counted), `"n"` (zero-based Julian day
    /// with n between 0 and 365) or `"Mm.w.d"` (day d
    /// (0 <= d <= 6) of week w (1 <= w <= 5) of month m (1 <= m <= 12), day
    /// 0 is a Sunday).  Times are in local wall clock time, the default is
    /// 02:00:00.
    /// 
    /// In Windows, the "tzn[+|–]hh[:mm[:ss]][dzn]" format is used, but also
    /// accepts POSIX format.  The Windows format uses US rules for all time
    /// zones; daylight savings time is 60 minutes behind the standard time
    /// with date and time of change taken from Pacific Standard Time.
    /// Offsets are time values to be added to the local time to get
    /// Coordinated Universal Time (UTC).
    /// 
    /// g_time_zone_new_local() calls this function with the value of the
    /// `TZ` environment variable. This function itself is independent of
    /// the value of `TZ`, but if @identifier is %NULL then `/etc/localtime`
    /// will be consulted to discover the correct time zone on UNIX and the
    /// registry will be consulted or GetTimeZoneInformation() will be used
    /// to get the local time zone on Windows.
    /// 
    /// If intervals are not available, only time zone rules from `TZ`
    /// environment variable or other means, then they will be computed
    /// from year 1900 to 2037.  If the maximum year for the rules is
    /// available and it is greater than 2037, then it will followed
    /// instead.
    /// 
    /// See
    /// [RFC3339 §5.6](http://tools.ietf.org/html/rfc3339#section-5.6)
    /// for a precise definition of valid RFC3339 time offsets
    /// (the `time-offset` expansion) and ISO 8601 for the
    /// full list of valid time offsets.  See
    /// [The GNU C Library manual](http://www.gnu.org/s/libc/manual/html_node/TZ-Variable.html)
    /// for an explanation of the possible
    /// values of the `TZ` environment variable. See
    /// [Microsoft Time Zone Index Values](http://msdn.microsoft.com/en-us/library/ms912391%28v=winembedded.11%29.aspx)
    /// for the list of time zones on Windows.
    /// 
    /// You should release the return value by calling g_time_zone_unref()
    /// when you are done with it.
    public init( identifier: UnsafePointer<gchar>) {
        let rv = g_time_zone_new(cast(identifier))
        self.ptr = cast(rv)
    }
    /// Creates a #GTimeZone corresponding to local time.  The local time
    /// zone may change between invocations to this function; for example,
    /// if the system administrator changes it.
    /// 
    /// This is equivalent to calling g_time_zone_new() with the value of
    /// the `TZ` environment variable (including the possibility of %NULL).
    /// 
    /// You should release the return value by calling g_time_zone_unref()
    /// when you are done with it.
    public static func new_local() -> TimeZoneRef! {
        let rv = g_time_zone_new_local()
        return rv.map { TimeZoneRef(ptr: cast($0)) }
    }

    /// Creates a #GTimeZone corresponding to UTC.
    /// 
    /// This is equivalent to calling g_time_zone_new() with a value like
    /// "Z", "UTC", "+00", etc.
    /// 
    /// You should release the return value by calling g_time_zone_unref()
    /// when you are done with it.
    public static func new_utc() -> TimeZoneRef! {
        let rv = g_time_zone_new_utc()
        return rv.map { TimeZoneRef(ptr: cast($0)) }
    }
}

public class TimeZone: TimeZoneProtocol {
    public let ptr: UnsafeMutablePointer<GTimeZone>

    public init(ptr: UnsafeMutablePointer<GTimeZone>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension TimeZone {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GTimeZone>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GTimeZone>(opaquePointer))
    }

        /// Creates a #GTimeZone corresponding to @identifier.
    /// 
    /// @identifier can either be an RFC3339/ISO 8601 time offset or
    /// something that would pass as a valid value for the `TZ` environment
    /// variable (including %NULL).
    /// 
    /// In Windows, @identifier can also be the unlocalized name of a time
    /// zone for standard time, for example "Pacific Standard Time".
    /// 
    /// Valid RFC3339 time offsets are `"Z"` (for UTC) or
    /// `"±hh:mm"`.  ISO 8601 additionally specifies
    /// `"±hhmm"` and `"±hh"`.  Offsets are
    /// time values to be added to Coordinated Universal Time (UTC) to get
    /// the local time.
    /// 
    /// In UNIX, the `TZ` environment variable typically corresponds
    /// to the name of a file in the zoneinfo database, or string in
    /// "std offset [dst [offset],start[/time],end[/time]]" (POSIX) format.
    /// There  are  no spaces in the specification. The name of standard
    /// and daylight savings time zone must be three or more alphabetic
    /// characters. Offsets are time values to be added to local time to
    /// get Coordinated Universal Time (UTC) and should be
    /// `"[±]hh[[:]mm[:ss]]"`.  Dates are either
    /// `"Jn"` (Julian day with n between 1 and 365, leap
    /// years not counted), `"n"` (zero-based Julian day
    /// with n between 0 and 365) or `"Mm.w.d"` (day d
    /// (0 <= d <= 6) of week w (1 <= w <= 5) of month m (1 <= m <= 12), day
    /// 0 is a Sunday).  Times are in local wall clock time, the default is
    /// 02:00:00.
    /// 
    /// In Windows, the "tzn[+|–]hh[:mm[:ss]][dzn]" format is used, but also
    /// accepts POSIX format.  The Windows format uses US rules for all time
    /// zones; daylight savings time is 60 minutes behind the standard time
    /// with date and time of change taken from Pacific Standard Time.
    /// Offsets are time values to be added to the local time to get
    /// Coordinated Universal Time (UTC).
    /// 
    /// g_time_zone_new_local() calls this function with the value of the
    /// `TZ` environment variable. This function itself is independent of
    /// the value of `TZ`, but if @identifier is %NULL then `/etc/localtime`
    /// will be consulted to discover the correct time zone on UNIX and the
    /// registry will be consulted or GetTimeZoneInformation() will be used
    /// to get the local time zone on Windows.
    /// 
    /// If intervals are not available, only time zone rules from `TZ`
    /// environment variable or other means, then they will be computed
    /// from year 1900 to 2037.  If the maximum year for the rules is
    /// available and it is greater than 2037, then it will followed
    /// instead.
    /// 
    /// See
    /// [RFC3339 §5.6](http://tools.ietf.org/html/rfc3339#section-5.6)
    /// for a precise definition of valid RFC3339 time offsets
    /// (the `time-offset` expansion) and ISO 8601 for the
    /// full list of valid time offsets.  See
    /// [The GNU C Library manual](http://www.gnu.org/s/libc/manual/html_node/TZ-Variable.html)
    /// for an explanation of the possible
    /// values of the `TZ` environment variable. See
    /// [Microsoft Time Zone Index Values](http://msdn.microsoft.com/en-us/library/ms912391%28v=winembedded.11%29.aspx)
    /// for the list of time zones on Windows.
    /// 
    /// You should release the return value by calling g_time_zone_unref()
    /// when you are done with it.
    public convenience init( identifier: UnsafePointer<gchar>) {
        let rv = g_time_zone_new(cast(identifier))
        self.init(ptr: cast(rv))
    }
    /// Creates a #GTimeZone corresponding to local time.  The local time
    /// zone may change between invocations to this function; for example,
    /// if the system administrator changes it.
    /// 
    /// This is equivalent to calling g_time_zone_new() with the value of
    /// the `TZ` environment variable (including the possibility of %NULL).
    /// 
    /// You should release the return value by calling g_time_zone_unref()
    /// when you are done with it.
    public static func new_local() -> TimeZone! {
        let rv = g_time_zone_new_local()
        return rv.map { TimeZone(ptr: cast($0)) }
    }

    /// Creates a #GTimeZone corresponding to UTC.
    /// 
    /// This is equivalent to calling g_time_zone_new() with a value like
    /// "Z", "UTC", "+00", etc.
    /// 
    /// You should release the return value by calling g_time_zone_unref()
    /// when you are done with it.
    public static func new_utc() -> TimeZone! {
        let rv = g_time_zone_new_utc()
        return rv.map { TimeZone(ptr: cast($0)) }
    }
}

public extension TimeZoneProtocol {
    /// Finds an interval within @tz that corresponds to the given @time_,
    /// possibly adjusting @time_ if required to fit into an interval.
    /// The meaning of @time_ depends on @type.
    /// 
    /// This function is similar to g_time_zone_find_interval(), with the
    /// difference that it always succeeds (by making the adjustments
    /// described below).
    /// 
    /// In any of the cases where g_time_zone_find_interval() succeeds then
    /// this function returns the same value, without modifying @time_.
    /// 
    /// This function may, however, modify @time_ in order to deal with
    /// non-existent times.  If the non-existent local @time_ of 02:30 were
    /// requested on March 14th 2010 in Toronto then this function would
    /// adjust @time_ to be 03:00 and return the interval containing the
    /// adjusted time.
    public func adjust_time(type: TimeType, time_: UnsafeMutablePointer<gint64>) -> CInt {
        let rv = g_time_zone_adjust_time(cast(ptr), type, cast(time_))
        return CInt(rv)
    }

    /// Finds an the interval within @tz that corresponds to the given @time_.
    /// The meaning of @time_ depends on @type.
    /// 
    /// If @type is %G_TIME_TYPE_UNIVERSAL then this function will always
    /// succeed (since universal time is monotonic and continuous).
    /// 
    /// Otherwise @time_ is treated as local time.  The distinction between
    /// %G_TIME_TYPE_STANDARD and %G_TIME_TYPE_DAYLIGHT is ignored except in
    /// the case that the given @time_ is ambiguous.  In Toronto, for example,
    /// 01:30 on November 7th 2010 occurred twice (once inside of daylight
    /// savings time and the next, an hour later, outside of daylight savings
    /// time).  In this case, the different value of @type would result in a
    /// different interval being returned.
    /// 
    /// It is still possible for this function to fail.  In Toronto, for
    /// example, 02:00 on March 14th 2010 does not exist (due to the leap
    /// forward to begin daylight savings time).  -1 is returned in that
    /// case.
    public func find_interval(type: TimeType, time_: Int64) -> CInt {
        let rv = g_time_zone_find_interval(cast(ptr), type, gint64(time_))
        return CInt(rv)
    }

    /// Determines the time zone abbreviation to be used during a particular
    /// @interval of time in the time zone @tz.
    /// 
    /// For example, in Toronto this is currently "EST" during the winter
    /// months and "EDT" during the summer months when daylight savings time
    /// is in effect.
    public func get_abbreviation(interval: CInt) -> UnsafePointer<gchar>! {
        let rv = g_time_zone_get_abbreviation(cast(ptr), gint(interval))
        return cast(rv)
    }

    /// Determines the offset to UTC in effect during a particular @interval
    /// of time in the time zone @tz.
    /// 
    /// The offset is the number of seconds that you add to UTC time to
    /// arrive at local time for @tz (ie: negative numbers for time zones
    /// west of GMT, positive numbers for east).
    public func get_offset(interval: CInt) -> Int32 {
        let rv = g_time_zone_get_offset(cast(ptr), gint(interval))
        return Int32(rv)
    }

    /// Determines if daylight savings time is in effect during a particular
    /// @interval of time in the time zone @tz.
    public func is_dst(interval: CInt) -> Bool {
        let rv = g_time_zone_is_dst(cast(ptr), gint(interval))
        return Bool(rv != 0)
    }

    /// Increases the reference count on @tz.
    public func ref() -> UnsafeMutablePointer<GTimeZone>! {
        let rv = g_time_zone_ref(cast(ptr))
        return cast(rv)
    }

    /// Decreases the reference count on @tz.
    public func unref() {
        g_time_zone_unref(cast(ptr))
    }
}



public protocol TimerProtocol {
    var ptr: UnsafeMutablePointer<GTimer> { get }
}

public struct TimerRef: TimerProtocol {
    public let ptr: UnsafeMutablePointer<GTimer>
}

public extension TimerRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GTimer>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GTimer>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GTimer>(opaquePointer)
    }

    }

public class Timer: TimerProtocol {
    public let ptr: UnsafeMutablePointer<GTimer>

    public init(ptr: UnsafeMutablePointer<GTimer>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension Timer {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GTimer>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GTimer>(opaquePointer))
    }

    }

public extension TimerProtocol {
    /// Resumes a timer that has previously been stopped with
    /// g_timer_stop(). g_timer_stop() must be called before using this
    /// function.
    public func continue_() {
        g_timer_continue(cast(ptr))
    }

    /// Destroys a timer, freeing associated resources.
    public func destroy() {
        g_timer_destroy(cast(ptr))
    }

    /// If @timer has been started but not stopped, obtains the time since
    /// the timer was started. If @timer has been stopped, obtains the
    /// elapsed time between the time it was started and the time it was
    /// stopped. The return value is the number of seconds elapsed,
    /// including any fractional part. The @microseconds out parameter is
    /// essentially useless.
    public func elapsed(microseconds: UnsafeMutablePointer<gulong>) -> gdouble {
        let rv = g_timer_elapsed(cast(ptr), cast(microseconds))
        return rv
    }

    /// This function is useless; it's fine to call g_timer_start() on an
    /// already-started timer to reset the start time, so g_timer_reset()
    /// serves no purpose.
    public func reset() {
        g_timer_reset(cast(ptr))
    }

    /// Marks a start time, so that future calls to g_timer_elapsed() will
    /// report the time since g_timer_start() was called. g_timer_new()
    /// automatically marks the start time, so no need to call
    /// g_timer_start() immediately after creating the timer.
    public func start() {
        g_timer_start(cast(ptr))
    }

    /// Marks an end time, so calls to g_timer_elapsed() will return the
    /// difference between this end time and the start time.
    public func stop() {
        g_timer_stop(cast(ptr))
    }
}



public protocol TrashStackProtocol {
    var ptr: UnsafeMutablePointer<GTrashStack> { get }
}

public struct TrashStackRef: TrashStackProtocol {
    public let ptr: UnsafeMutablePointer<GTrashStack>
}

public extension TrashStackRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GTrashStack>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GTrashStack>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GTrashStack>(opaquePointer)
    }

    }

public class TrashStack: TrashStackProtocol {
    public let ptr: UnsafeMutablePointer<GTrashStack>

    public init(ptr: UnsafeMutablePointer<GTrashStack>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension TrashStack {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GTrashStack>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GTrashStack>(opaquePointer))
    }

    }

public extension TrashStackProtocol {
    /// Returns the height of a #GTrashStack.
    /// 
    /// Note that execution of this function is of O(N) complexity
    /// where N denotes the number of items on the stack.
    public func height() -> CUnsignedInt {
        let rv = g_trash_stack_height(cast(ptr))
        return CUnsignedInt(rv)
    }

    /// Returns the element at the top of a #GTrashStack
    /// which may be %NULL.
    public func peek() -> OpaquePointer! {
        let rv = g_trash_stack_peek(cast(ptr))
        return cast(rv)
    }

    /// Pops a piece of memory off a #GTrashStack.
    public func pop() -> OpaquePointer! {
        let rv = g_trash_stack_pop(cast(ptr))
        return cast(rv)
    }

    /// Pushes a piece of memory onto a #GTrashStack.
    public func push(data_p: OpaquePointer) {
        g_trash_stack_push(cast(ptr), cast(data_p))
    }
}



public protocol TreeProtocol {
    var ptr: UnsafeMutablePointer<GTree> { get }
}

public struct TreeRef: TreeProtocol {
    public let ptr: UnsafeMutablePointer<GTree>
}

public extension TreeRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GTree>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GTree>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GTree>(opaquePointer)
    }

        /// Creates a new #GTree like g_tree_new() and allows to specify functions
    /// to free the memory allocated for the key and value that get called when
    /// removing the entry from the #GTree.
    public static func new_full(key_compare_func: CompareDataFunc, key_compare_data: OpaquePointer, key_destroy_func: DestroyNotify, value_destroy_func: DestroyNotify) -> TreeRef! {
        let rv = g_tree_new_full(key_compare_func, cast(key_compare_data), key_destroy_func, value_destroy_func)
        return rv.map { TreeRef(ptr: cast($0)) }
    }

    /// Creates a new #GTree with a comparison function that accepts user data.
    /// See g_tree_new() for more details.
    public static func new_with_data(key_compare_func: CompareDataFunc, key_compare_data: OpaquePointer) -> TreeRef! {
        let rv = g_tree_new_with_data(key_compare_func, cast(key_compare_data))
        return rv.map { TreeRef(ptr: cast($0)) }
    }
}

public class Tree: TreeProtocol {
    public let ptr: UnsafeMutablePointer<GTree>

    public init(ptr: UnsafeMutablePointer<GTree>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension Tree {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GTree>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GTree>(opaquePointer))
    }

        /// Creates a new #GTree like g_tree_new() and allows to specify functions
    /// to free the memory allocated for the key and value that get called when
    /// removing the entry from the #GTree.
    public static func new_full(key_compare_func: CompareDataFunc, key_compare_data: OpaquePointer, key_destroy_func: DestroyNotify, value_destroy_func: DestroyNotify) -> Tree! {
        let rv = g_tree_new_full(key_compare_func, cast(key_compare_data), key_destroy_func, value_destroy_func)
        return rv.map { Tree(ptr: cast($0)) }
    }

    /// Creates a new #GTree with a comparison function that accepts user data.
    /// See g_tree_new() for more details.
    public static func new_with_data(key_compare_func: CompareDataFunc, key_compare_data: OpaquePointer) -> Tree! {
        let rv = g_tree_new_with_data(key_compare_func, cast(key_compare_data))
        return rv.map { Tree(ptr: cast($0)) }
    }
}

public extension TreeProtocol {
    /// Removes all keys and values from the #GTree and decreases its
    /// reference count by one. If keys and/or values are dynamically
    /// allocated, you should either free them first or create the #GTree
    /// using g_tree_new_full(). In the latter case the destroy functions
    /// you supplied will be called on all keys and values before destroying
    /// the #GTree.
    public func destroy() {
        g_tree_destroy(cast(ptr))
    }

    /// Calls the given function for each of the key/value pairs in the #GTree.
    /// The function is passed the key and value of each pair, and the given
    /// @data parameter. The tree is traversed in sorted order.
    /// 
    /// The tree may not be modified while iterating over it (you can't
    /// add/remove items). To remove all items matching a predicate, you need
    /// to add each item to a list in your #GTraverseFunc as you walk over
    /// the tree, then walk the list and remove each item.
    public func foreach(func_: TraverseFunc, user_data: OpaquePointer) {
        g_tree_foreach(cast(ptr), func_, cast(user_data))
    }

    /// Gets the height of a #GTree.
    /// 
    /// If the #GTree contains no nodes, the height is 0.
    /// If the #GTree contains only one root node the height is 1.
    /// If the root node has children the height is 2, etc.
    public func height() -> CInt {
        let rv = g_tree_height(cast(ptr))
        return CInt(rv)
    }

    /// Inserts a key/value pair into a #GTree.
    /// 
    /// If the given key already exists in the #GTree its corresponding value
    /// is set to the new value. If you supplied a @value_destroy_func when
    /// creating the #GTree, the old value is freed using that function. If
    /// you supplied a @key_destroy_func when creating the #GTree, the passed
    /// key is freed using that function.
    /// 
    /// The tree is automatically 'balanced' as new key/value pairs are added,
    /// so that the distance from the root to every leaf is as small as possible.
    public func insert(key: OpaquePointer, value: OpaquePointer) {
        g_tree_insert(cast(ptr), cast(key), cast(value))
    }

    /// Gets the value corresponding to the given key. Since a #GTree is
    /// automatically balanced as key/value pairs are added, key lookup
    /// is O(log n) (where n is the number of key/value pairs in the tree).
    public func lookup(key: gconstpointer) -> OpaquePointer! {
        let rv = g_tree_lookup(cast(ptr), cast(key))
        return cast(rv)
    }

    /// Looks up a key in the #GTree, returning the original key and the
    /// associated value. This is useful if you need to free the memory
    /// allocated for the original key, for example before calling
    /// g_tree_remove().
    public func lookup_extended(lookup_key: gconstpointer, orig_key: UnsafeMutablePointer<gpointer>, value: UnsafeMutablePointer<gpointer>) -> Bool {
        let rv = g_tree_lookup_extended(cast(ptr), cast(lookup_key), cast(orig_key), cast(value))
        return Bool(rv != 0)
    }

    /// Gets the number of nodes in a #GTree.
    public func nnodes() -> CInt {
        let rv = g_tree_nnodes(cast(ptr))
        return CInt(rv)
    }

    /// Increments the reference count of @tree by one.
    /// 
    /// It is safe to call this function from any thread.
    public func ref() -> UnsafeMutablePointer<GTree>! {
        let rv = g_tree_ref(cast(ptr))
        return cast(rv)
    }

    /// Removes a key/value pair from a #GTree.
    /// 
    /// If the #GTree was created using g_tree_new_full(), the key and value
    /// are freed using the supplied destroy functions, otherwise you have to
    /// make sure that any dynamically allocated values are freed yourself.
    /// If the key does not exist in the #GTree, the function does nothing.
    public func remove(key: gconstpointer) -> Bool {
        let rv = g_tree_remove(cast(ptr), cast(key))
        return Bool(rv != 0)
    }

    /// Inserts a new key and value into a #GTree similar to g_tree_insert().
    /// The difference is that if the key already exists in the #GTree, it gets
    /// replaced by the new key. If you supplied a @value_destroy_func when
    /// creating the #GTree, the old value is freed using that function. If you
    /// supplied a @key_destroy_func when creating the #GTree, the old key is
    /// freed using that function.
    /// 
    /// The tree is automatically 'balanced' as new key/value pairs are added,
    /// so that the distance from the root to every leaf is as small as possible.
    public func replace(key: OpaquePointer, value: OpaquePointer) {
        g_tree_replace(cast(ptr), cast(key), cast(value))
    }

    /// Searches a #GTree using @search_func.
    /// 
    /// The @search_func is called with a pointer to the key of a key/value
    /// pair in the tree, and the passed in @user_data. If @search_func returns
    /// 0 for a key/value pair, then the corresponding value is returned as
    /// the result of g_tree_search(). If @search_func returns -1, searching
    /// will proceed among the key/value pairs that have a smaller key; if
    /// @search_func returns 1, searching will proceed among the key/value
    /// pairs that have a larger key.
    public func search(search_func: CompareFunc, user_data: gconstpointer) -> OpaquePointer! {
        let rv = g_tree_search(cast(ptr), search_func, cast(user_data))
        return cast(rv)
    }

    /// Removes a key and its associated value from a #GTree without calling
    /// the key and value destroy functions.
    /// 
    /// If the key does not exist in the #GTree, the function does nothing.
    public func steal(key: gconstpointer) -> Bool {
        let rv = g_tree_steal(cast(ptr), cast(key))
        return Bool(rv != 0)
    }

    /// Calls the given function for each node in the #GTree.
    ///
    /// **traverse is deprecated:**
    /// The order of a balanced tree is somewhat arbitrary.
    ///     If you just want to visit all nodes in sorted order, use
    ///     g_tree_foreach() instead. If you really need to visit nodes in
    ///     a different order, consider using an [n-ary tree][glib-N-ary-Trees].
    @available(*, deprecated) public func traverse(traverse_func: TraverseFunc, traverse_type: TraverseType, user_data: OpaquePointer) {
        g_tree_traverse(cast(ptr), traverse_func, traverse_type, cast(user_data))
    }

    /// Decrements the reference count of @tree by one.
    /// If the reference count drops to 0, all keys and values will
    /// be destroyed (if destroy functions were specified) and all
    /// memory allocated by @tree will be released.
    /// 
    /// It is safe to call this function from any thread.
    public func unref() {
        g_tree_unref(cast(ptr))
    }
}



public protocol VariantBuilderProtocol {
    var ptr: UnsafeMutablePointer<GVariantBuilder> { get }
}

public struct VariantBuilderRef: VariantBuilderProtocol {
    public let ptr: UnsafeMutablePointer<GVariantBuilder>
}

public extension VariantBuilderRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GVariantBuilder>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GVariantBuilder>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GVariantBuilder>(opaquePointer)
    }

        /// Allocates and initialises a new #GVariantBuilder.
    /// 
    /// You should call g_variant_builder_unref() on the return value when it
    /// is no longer needed.  The memory will not be automatically freed by
    /// any other call.
    /// 
    /// In most cases it is easier to place a #GVariantBuilder directly on
    /// the stack of the calling function and initialise it with
    /// g_variant_builder_init().
    public init( type: VariantTypeProtocol) {
        let rv = g_variant_builder_new(cast(type.ptr))
        self.ptr = cast(rv)
    }
}

public class VariantBuilder: VariantBuilderProtocol {
    public let ptr: UnsafeMutablePointer<GVariantBuilder>

    public init(ptr: UnsafeMutablePointer<GVariantBuilder>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension VariantBuilder {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GVariantBuilder>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GVariantBuilder>(opaquePointer))
    }

        /// Allocates and initialises a new #GVariantBuilder.
    /// 
    /// You should call g_variant_builder_unref() on the return value when it
    /// is no longer needed.  The memory will not be automatically freed by
    /// any other call.
    /// 
    /// In most cases it is easier to place a #GVariantBuilder directly on
    /// the stack of the calling function and initialise it with
    /// g_variant_builder_init().
    public convenience init( type: VariantTypeProtocol) {
        let rv = g_variant_builder_new(cast(type.ptr))
        self.init(ptr: cast(rv))
    }
}

public extension VariantBuilderProtocol {

    // *** add() is not available because it has a varargs (...) parameter!



    // *** add_parsed() is not available because it has a varargs (...) parameter!


    /// Adds @value to @builder.
    /// 
    /// It is an error to call this function in any way that would create an
    /// inconsistent value to be constructed.  Some examples of this are
    /// putting different types of items into an array, putting the wrong
    /// types or number of items in a tuple, putting more than one value into
    /// a variant, etc.
    /// 
    /// If @value is a floating reference (see g_variant_ref_sink()),
    /// the @builder instance takes ownership of @value.
    public func add_value(value: UnsafeMutablePointer<GVariant>) {
        g_variant_builder_add_value(cast(ptr), cast(value))
    }

    /// Releases all memory associated with a #GVariantBuilder without
    /// freeing the #GVariantBuilder structure itself.
    /// 
    /// It typically only makes sense to do this on a stack-allocated
    /// #GVariantBuilder if you want to abort building the value part-way
    /// through.  This function need not be called if you call
    /// g_variant_builder_end() and it also doesn't need to be called on
    /// builders allocated with g_variant_builder_new (see
    /// g_variant_builder_unref() for that).
    /// 
    /// This function leaves the #GVariantBuilder structure set to all-zeros.
    /// It is valid to call this function on either an initialised
    /// #GVariantBuilder or one that is set to all-zeros but it is not valid
    /// to call this function on uninitialised memory.
    public func clear() {
        g_variant_builder_clear(cast(ptr))
    }

    /// Closes the subcontainer inside the given @builder that was opened by
    /// the most recent call to g_variant_builder_open().
    /// 
    /// It is an error to call this function in any way that would create an
    /// inconsistent value to be constructed (ie: too few values added to the
    /// subcontainer).
    public func close() {
        g_variant_builder_close(cast(ptr))
    }

    /// Ends the builder process and returns the constructed value.
    /// 
    /// It is not permissible to use @builder in any way after this call
    /// except for reference counting operations (in the case of a
    /// heap-allocated #GVariantBuilder) or by reinitialising it with
    /// g_variant_builder_init() (in the case of stack-allocated).
    /// 
    /// It is an error to call this function in any way that would create an
    /// inconsistent value to be constructed (ie: insufficient number of
    /// items added to a container with a specific number of children
    /// required).  It is also an error to call this function if the builder
    /// was created with an indefinite array or maybe type and no children
    /// have been added; in this case it is impossible to infer the type of
    /// the empty array.
    public func end() -> UnsafeMutablePointer<GVariant>! {
        let rv = g_variant_builder_end(cast(ptr))
        return cast(rv)
    }

    /// Initialises a #GVariantBuilder structure.
    /// 
    /// @type must be non-%NULL.  It specifies the type of container to
    /// construct.  It can be an indefinite type such as
    /// %G_VARIANT_TYPE_ARRAY or a definite type such as "as" or "(ii)".
    /// Maybe, array, tuple, dictionary entry and variant-typed values may be
    /// constructed.
    /// 
    /// After the builder is initialised, values are added using
    /// g_variant_builder_add_value() or g_variant_builder_add().
    /// 
    /// After all the child values are added, g_variant_builder_end() frees
    /// the memory associated with the builder and returns the #GVariant that
    /// was created.
    /// 
    /// This function completely ignores the previous contents of @builder.
    /// On one hand this means that it is valid to pass in completely
    /// uninitialised memory.  On the other hand, this means that if you are
    /// initialising over top of an existing #GVariantBuilder you need to
    /// first call g_variant_builder_clear() in order to avoid leaking
    /// memory.
    /// 
    /// You must not call g_variant_builder_ref() or
    /// g_variant_builder_unref() on a #GVariantBuilder that was initialised
    /// with this function.  If you ever pass a reference to a
    /// #GVariantBuilder outside of the control of your own code then you
    /// should assume that the person receiving that reference may try to use
    /// reference counting; you should use g_variant_builder_new() instead of
    /// this function.
    public func init_(type: VariantTypeProtocol) {
        g_variant_builder_init(cast(ptr), cast(type.ptr))
    }

    /// Opens a subcontainer inside the given @builder.  When done adding
    /// items to the subcontainer, g_variant_builder_close() must be called.
    /// 
    /// It is an error to call this function in any way that would cause an
    /// inconsistent value to be constructed (ie: adding too many values or
    /// a value of an incorrect type).
    public func open(type: VariantTypeProtocol) {
        g_variant_builder_open(cast(ptr), cast(type.ptr))
    }

    /// Increases the reference count on @builder.
    /// 
    /// Don't call this on stack-allocated #GVariantBuilder instances or bad
    /// things will happen.
    public func ref() -> UnsafeMutablePointer<GVariantBuilder>! {
        let rv = g_variant_builder_ref(cast(ptr))
        return cast(rv)
    }

    /// Decreases the reference count on @builder.
    /// 
    /// In the event that there are no more references, releases all memory
    /// associated with the #GVariantBuilder.
    /// 
    /// Don't call this on stack-allocated #GVariantBuilder instances or bad
    /// things will happen.
    public func unref() {
        g_variant_builder_unref(cast(ptr))
    }
}



public protocol VariantDictProtocol {
    var ptr: UnsafeMutablePointer<GVariantDict> { get }
}

public struct VariantDictRef: VariantDictProtocol {
    public let ptr: UnsafeMutablePointer<GVariantDict>
}

public extension VariantDictRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GVariantDict>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GVariantDict>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GVariantDict>(opaquePointer)
    }

        /// Allocates and initialises a new #GVariantDict.
    /// 
    /// You should call g_variant_dict_unref() on the return value when it
    /// is no longer needed.  The memory will not be automatically freed by
    /// any other call.
    /// 
    /// In some cases it may be easier to place a #GVariantDict directly on
    /// the stack of the calling function and initialise it with
    /// g_variant_dict_init().  This is particularly useful when you are
    /// using #GVariantDict to construct a #GVariant.
    public init( from_asv: UnsafeMutablePointer<GVariant>) {
        let rv = g_variant_dict_new(cast(from_asv))
        self.ptr = cast(rv)
    }
}

public class VariantDict: VariantDictProtocol {
    public let ptr: UnsafeMutablePointer<GVariantDict>

    public init(ptr: UnsafeMutablePointer<GVariantDict>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension VariantDict {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GVariantDict>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GVariantDict>(opaquePointer))
    }

        /// Allocates and initialises a new #GVariantDict.
    /// 
    /// You should call g_variant_dict_unref() on the return value when it
    /// is no longer needed.  The memory will not be automatically freed by
    /// any other call.
    /// 
    /// In some cases it may be easier to place a #GVariantDict directly on
    /// the stack of the calling function and initialise it with
    /// g_variant_dict_init().  This is particularly useful when you are
    /// using #GVariantDict to construct a #GVariant.
    public convenience init( from_asv: UnsafeMutablePointer<GVariant>) {
        let rv = g_variant_dict_new(cast(from_asv))
        self.init(ptr: cast(rv))
    }
}

public extension VariantDictProtocol {
    /// Releases all memory associated with a #GVariantDict without freeing
    /// the #GVariantDict structure itself.
    /// 
    /// It typically only makes sense to do this on a stack-allocated
    /// #GVariantDict if you want to abort building the value part-way
    /// through.  This function need not be called if you call
    /// g_variant_dict_end() and it also doesn't need to be called on dicts
    /// allocated with g_variant_dict_new (see g_variant_dict_unref() for
    /// that).
    /// 
    /// It is valid to call this function on either an initialised
    /// #GVariantDict or one that was previously cleared by an earlier call
    /// to g_variant_dict_clear() but it is not valid to call this function
    /// on uninitialised memory.
    public func clear() {
        g_variant_dict_clear(cast(ptr))
    }

    /// Checks if @key exists in @dict.
    public func contains(key: UnsafePointer<gchar>) -> Bool {
        let rv = g_variant_dict_contains(cast(ptr), cast(key))
        return Bool(rv != 0)
    }

    /// Returns the current value of @dict as a #GVariant of type
    /// %G_VARIANT_TYPE_VARDICT, clearing it in the process.
    /// 
    /// It is not permissible to use @dict in any way after this call except
    /// for reference counting operations (in the case of a heap-allocated
    /// #GVariantDict) or by reinitialising it with g_variant_dict_init() (in
    /// the case of stack-allocated).
    public func end() -> UnsafeMutablePointer<GVariant>! {
        let rv = g_variant_dict_end(cast(ptr))
        return cast(rv)
    }

    /// Initialises a #GVariantDict structure.
    /// 
    /// If @from_asv is given, it is used to initialise the dictionary.
    /// 
    /// This function completely ignores the previous contents of @dict.  On
    /// one hand this means that it is valid to pass in completely
    /// uninitialised memory.  On the other hand, this means that if you are
    /// initialising over top of an existing #GVariantDict you need to first
    /// call g_variant_dict_clear() in order to avoid leaking memory.
    /// 
    /// You must not call g_variant_dict_ref() or g_variant_dict_unref() on a
    /// #GVariantDict that was initialised with this function.  If you ever
    /// pass a reference to a #GVariantDict outside of the control of your
    /// own code then you should assume that the person receiving that
    /// reference may try to use reference counting; you should use
    /// g_variant_dict_new() instead of this function.
    public func init_(from_asv: UnsafeMutablePointer<GVariant>) {
        g_variant_dict_init(cast(ptr), cast(from_asv))
    }


    // *** insert() is not available because it has a varargs (...) parameter!


    /// Inserts (or replaces) a key in a #GVariantDict.
    /// 
    /// @value is consumed if it is floating.
    public func insert_value(key: UnsafePointer<gchar>, value: UnsafeMutablePointer<GVariant>) {
        g_variant_dict_insert_value(cast(ptr), cast(key), cast(value))
    }


    // *** lookup() is not available because it has a varargs (...) parameter!


    /// Looks up a value in a #GVariantDict.
    /// 
    /// If @key is not found in @dictionary, %NULL is returned.
    /// 
    /// The @expected_type string specifies what type of value is expected.
    /// If the value associated with @key has a different type then %NULL is
    /// returned.
    /// 
    /// If the key is found and the value has the correct type, it is
    /// returned.  If @expected_type was specified then any non-%NULL return
    /// value will have this type.
    public func lookup_value(key: UnsafePointer<gchar>, expected_type: VariantTypeProtocol) -> UnsafeMutablePointer<GVariant>! {
        let rv = g_variant_dict_lookup_value(cast(ptr), cast(key), cast(expected_type.ptr))
        return cast(rv)
    }

    /// Increases the reference count on @dict.
    /// 
    /// Don't call this on stack-allocated #GVariantDict instances or bad
    /// things will happen.
    public func ref() -> UnsafeMutablePointer<GVariantDict>! {
        let rv = g_variant_dict_ref(cast(ptr))
        return cast(rv)
    }

    /// Removes a key and its associated value from a #GVariantDict.
    public func remove(key: UnsafePointer<gchar>) -> Bool {
        let rv = g_variant_dict_remove(cast(ptr), cast(key))
        return Bool(rv != 0)
    }

    /// Decreases the reference count on @dict.
    /// 
    /// In the event that there are no more references, releases all memory
    /// associated with the #GVariantDict.
    /// 
    /// Don't call this on stack-allocated #GVariantDict instances or bad
    /// things will happen.
    public func unref() {
        g_variant_dict_unref(cast(ptr))
    }
}



public protocol VariantIterProtocol {
    var ptr: UnsafeMutablePointer<GVariantIter> { get }
}

public struct VariantIterRef: VariantIterProtocol {
    public let ptr: UnsafeMutablePointer<GVariantIter>
}

public extension VariantIterRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GVariantIter>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GVariantIter>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GVariantIter>(opaquePointer)
    }

    }

public class VariantIter: VariantIterProtocol {
    public let ptr: UnsafeMutablePointer<GVariantIter>

    public init(ptr: UnsafeMutablePointer<GVariantIter>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension VariantIter {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GVariantIter>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GVariantIter>(opaquePointer))
    }

    }

public extension VariantIterProtocol {
    /// Creates a new heap-allocated #GVariantIter to iterate over the
    /// container that was being iterated over by @iter.  Iteration begins on
    /// the new iterator from the current position of the old iterator but
    /// the two copies are independent past that point.
    /// 
    /// Use g_variant_iter_free() to free the return value when you no longer
    /// need it.
    /// 
    /// A reference is taken to the container that @iter is iterating over
    /// and will be releated only when g_variant_iter_free() is called.
    public func copy() -> UnsafeMutablePointer<GVariantIter>! {
        let rv = g_variant_iter_copy(cast(ptr))
        return cast(rv)
    }

    /// Frees a heap-allocated #GVariantIter.  Only call this function on
    /// iterators that were returned by g_variant_iter_new() or
    /// g_variant_iter_copy().
    public func free() {
        g_variant_iter_free(cast(ptr))
    }

    /// Initialises (without allocating) a #GVariantIter.  @iter may be
    /// completely uninitialised prior to this call; its old value is
    /// ignored.
    /// 
    /// The iterator remains valid for as long as @value exists, and need not
    /// be freed in any way.
    public func init_(value: UnsafeMutablePointer<GVariant>) -> Int {
        let rv = g_variant_iter_init(cast(ptr), cast(value))
        return Int(rv)
    }


    // *** loop() is not available because it has a varargs (...) parameter!


    /// Queries the number of child items in the container that we are
    /// iterating over.  This is the total number of items -- not the number
    /// of items remaining.
    /// 
    /// This function might be useful for preallocation of arrays.
    public func n_children() -> Int {
        let rv = g_variant_iter_n_children(cast(ptr))
        return Int(rv)
    }


    // *** next() is not available because it has a varargs (...) parameter!


    /// Gets the next item in the container.  If no more items remain then
    /// %NULL is returned.
    /// 
    /// Use g_variant_unref() to drop your reference on the return value when
    /// you no longer need it.
    /// 
    /// Here is an example for iterating with g_variant_iter_next_value():
    /// |[<!-- language="C" -->
    ///   // recursively iterate a container
    ///   void
    ///   iterate_container_recursive (GVariant *container)
    ///   {
    ///     GVariantIter iter;
    ///     GVariant *child;
    /// 
    ///     g_variant_iter_init (&iter, container);
    ///     while ((child = g_variant_iter_next_value (&iter)))
    ///       {
    ///         g_print ("type '%s'\n", g_variant_get_type_string (child));
    /// 
    ///         if (g_variant_is_container (child))
    ///           iterate_container_recursive (child);
    /// 
    ///         g_variant_unref (child);
    ///       }
    ///   }
    /// ]|
    public func next_value() -> UnsafeMutablePointer<GVariant>! {
        let rv = g_variant_iter_next_value(cast(ptr))
        return cast(rv)
    }
}



public protocol VariantTypeProtocol {
    var ptr: UnsafeMutablePointer<GVariantType> { get }
}

public struct VariantTypeRef: VariantTypeProtocol {
    public let ptr: UnsafeMutablePointer<GVariantType>
}

public extension VariantTypeRef {
    public init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutablePointer<GVariantType>(cPointer)
    }

    public init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutablePointer<GVariantType>(constPointer)
    }

    public init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutablePointer<GVariantType>(opaquePointer)
    }

        /// Creates a new #GVariantType corresponding to the type string given
    /// by @type_string.  It is appropriate to call g_variant_type_free() on
    /// the return value.
    /// 
    /// It is a programmer error to call this function with an invalid type
    /// string.  Use g_variant_type_string_is_valid() if you are unsure.
    public init( type_string: UnsafePointer<gchar>) {
        let rv = g_variant_type_new(cast(type_string))
        self.ptr = cast(rv)
    }

    /// Constructs a new tuple type, from @items.
    /// 
    /// @length is the number of items in @items, or -1 to indicate that
    /// @items is %NULL-terminated.
    /// 
    /// It is appropriate to call g_variant_type_free() on the return value.
    public init(tuple items: UnsafeMutablePointer<UnsafeMutablePointer<GVariantType>>, length: CInt) {
        let rv = g_variant_type_new_tuple(cast(items), gint(length))
        self.ptr = cast(rv)
    }
    /// Constructs a new tuple type, from @items.
    /// 
    /// @length is the number of items in @items, or -1 to indicate that
    /// @items is %NULL-terminated.
    /// 
    /// It is appropriate to call g_variant_type_free() on the return value.
    public static func new_tuple(items: UnsafeMutablePointer<UnsafeMutablePointer<GVariantType>>, length: CInt) -> VariantTypeRef! {
        let rv = g_variant_type_new_tuple(cast(items), gint(length))
        return rv.map { VariantTypeRef(ptr: cast($0)) }
    }

    public static func checked_(arg0: UnsafePointer<gchar>) -> VariantTypeRef! {
        let rv = g_variant_type_checked_(cast(arg0))
        return rv.map { VariantTypeRef(ptr: cast($0)) }
    }
}

public class VariantType: VariantTypeProtocol {
    public let ptr: UnsafeMutablePointer<GVariantType>

    public init(ptr: UnsafeMutablePointer<GVariantType>) {
        self.ptr = ptr
    }

    deinit {
        g_free(UnsafeMutablePointer(ptr))
    }

}

public extension VariantType {
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(ptr: UnsafeMutablePointer<GVariantType>(cPointer))
    }

    public convenience init(opaquePointer: OpaquePointer) {
        self.init(ptr: UnsafeMutablePointer<GVariantType>(opaquePointer))
    }

        /// Creates a new #GVariantType corresponding to the type string given
    /// by @type_string.  It is appropriate to call g_variant_type_free() on
    /// the return value.
    /// 
    /// It is a programmer error to call this function with an invalid type
    /// string.  Use g_variant_type_string_is_valid() if you are unsure.
    public convenience init( type_string: UnsafePointer<gchar>) {
        let rv = g_variant_type_new(cast(type_string))
        self.init(ptr: cast(rv))
    }

    /// Constructs a new tuple type, from @items.
    /// 
    /// @length is the number of items in @items, or -1 to indicate that
    /// @items is %NULL-terminated.
    /// 
    /// It is appropriate to call g_variant_type_free() on the return value.
    public convenience init(tuple items: UnsafeMutablePointer<UnsafeMutablePointer<GVariantType>>, length: CInt) {
        let rv = g_variant_type_new_tuple(cast(items), gint(length))
        self.init(ptr: cast(rv))
    }
    /// Constructs a new tuple type, from @items.
    /// 
    /// @length is the number of items in @items, or -1 to indicate that
    /// @items is %NULL-terminated.
    /// 
    /// It is appropriate to call g_variant_type_free() on the return value.
    public static func new_tuple(items: UnsafeMutablePointer<UnsafeMutablePointer<GVariantType>>, length: CInt) -> VariantType! {
        let rv = g_variant_type_new_tuple(cast(items), gint(length))
        return rv.map { VariantType(ptr: cast($0)) }
    }

    public static func checked_(arg0: UnsafePointer<gchar>) -> VariantType! {
        let rv = g_variant_type_checked_(cast(arg0))
        return rv.map { VariantType(ptr: cast($0)) }
    }
}

public extension VariantTypeProtocol {
    /// Makes a copy of a #GVariantType.  It is appropriate to call
    /// g_variant_type_free() on the return value.  @type may not be %NULL.
    public func copy() -> UnsafeMutablePointer<GVariantType>! {
        let rv = g_variant_type_copy(cast(ptr))
        return cast(rv)
    }

    /// Returns a newly-allocated copy of the type string corresponding to
    /// @type.  The returned string is nul-terminated.  It is appropriate to
    /// call g_free() on the return value.
    public func dup_string() -> UnsafeMutablePointer<gchar>! {
        let rv = g_variant_type_dup_string(cast(ptr))
        return cast(rv)
    }

    /// Determines the element type of an array or maybe type.
    /// 
    /// This function may only be used with array or maybe types.
    public func element() -> UnsafePointer<GVariantType>! {
        let rv = g_variant_type_element(cast(ptr))
        return cast(rv)
    }

    /// Compares @type1 and @type2 for equality.
    /// 
    /// Only returns %TRUE if the types are exactly equal.  Even if one type
    /// is an indefinite type and the other is a subtype of it, %FALSE will
    /// be returned if they are not exactly equal.  If you want to check for
    /// subtypes, use g_variant_type_is_subtype_of().
    /// 
    /// The argument types of @type1 and @type2 are only #gconstpointer to
    /// allow use with #GHashTable without function pointer casting.  For
    /// both arguments, a valid #GVariantType must be provided.
    public func equal() -> Bool {
        let rv = g_variant_type_equal(cast(ptr), cast(ptr))
        return Bool(rv != 0)
    }

    /// Determines the first item type of a tuple or dictionary entry
    /// type.
    /// 
    /// This function may only be used with tuple or dictionary entry types,
    /// but must not be used with the generic tuple type
    /// %G_VARIANT_TYPE_TUPLE.
    /// 
    /// In the case of a dictionary entry type, this returns the type of
    /// the key.
    /// 
    /// %NULL is returned in case of @type being %G_VARIANT_TYPE_UNIT.
    /// 
    /// This call, together with g_variant_type_next() provides an iterator
    /// interface over tuple and dictionary entry types.
    public func first() -> UnsafePointer<GVariantType>! {
        let rv = g_variant_type_first(cast(ptr))
        return cast(rv)
    }

    /// Frees a #GVariantType that was allocated with
    /// g_variant_type_copy(), g_variant_type_new() or one of the container
    /// type constructor functions.
    /// 
    /// In the case that @type is %NULL, this function does nothing.
    /// 
    /// Since 2.24
    public func free() {
        g_variant_type_free(cast(ptr))
    }

    /// Returns the length of the type string corresponding to the given
    /// @type.  This function must be used to determine the valid extent of
    /// the memory region returned by g_variant_type_peek_string().
    public func get_string_length() -> Int {
        let rv = g_variant_type_get_string_length(cast(ptr))
        return Int(rv)
    }

    /// Hashes @type.
    /// 
    /// The argument type of @type is only #gconstpointer to allow use with
    /// #GHashTable without function pointer casting.  A valid
    /// #GVariantType must be provided.
    public func hash() -> CUnsignedInt {
        let rv = g_variant_type_hash(cast(ptr))
        return CUnsignedInt(rv)
    }

    /// Determines if the given @type is an array type.  This is true if the
    /// type string for @type starts with an 'a'.
    /// 
    /// This function returns %TRUE for any indefinite type for which every
    /// definite subtype is an array type -- %G_VARIANT_TYPE_ARRAY, for
    /// example.
    public func is_array() -> Bool {
        let rv = g_variant_type_is_array(cast(ptr))
        return Bool(rv != 0)
    }

    /// Determines if the given @type is a basic type.
    /// 
    /// Basic types are booleans, bytes, integers, doubles, strings, object
    /// paths and signatures.
    /// 
    /// Only a basic type may be used as the key of a dictionary entry.
    /// 
    /// This function returns %FALSE for all indefinite types except
    /// %G_VARIANT_TYPE_BASIC.
    public func is_basic() -> Bool {
        let rv = g_variant_type_is_basic(cast(ptr))
        return Bool(rv != 0)
    }

    /// Determines if the given @type is a container type.
    /// 
    /// Container types are any array, maybe, tuple, or dictionary
    /// entry types plus the variant type.
    /// 
    /// This function returns %TRUE for any indefinite type for which every
    /// definite subtype is a container -- %G_VARIANT_TYPE_ARRAY, for
    /// example.
    public func is_container() -> Bool {
        let rv = g_variant_type_is_container(cast(ptr))
        return Bool(rv != 0)
    }

    /// Determines if the given @type is definite (ie: not indefinite).
    /// 
    /// A type is definite if its type string does not contain any indefinite
    /// type characters ('*', '?', or 'r').
    /// 
    /// A #GVariant instance may not have an indefinite type, so calling
    /// this function on the result of g_variant_get_type() will always
    /// result in %TRUE being returned.  Calling this function on an
    /// indefinite type like %G_VARIANT_TYPE_ARRAY, however, will result in
    /// %FALSE being returned.
    public func is_definite() -> Bool {
        let rv = g_variant_type_is_definite(cast(ptr))
        return Bool(rv != 0)
    }

    /// Determines if the given @type is a dictionary entry type.  This is
    /// true if the type string for @type starts with a '{'.
    /// 
    /// This function returns %TRUE for any indefinite type for which every
    /// definite subtype is a dictionary entry type --
    /// %G_VARIANT_TYPE_DICT_ENTRY, for example.
    public func is_dict_entry() -> Bool {
        let rv = g_variant_type_is_dict_entry(cast(ptr))
        return Bool(rv != 0)
    }

    /// Determines if the given @type is a maybe type.  This is true if the
    /// type string for @type starts with an 'm'.
    /// 
    /// This function returns %TRUE for any indefinite type for which every
    /// definite subtype is a maybe type -- %G_VARIANT_TYPE_MAYBE, for
    /// example.
    public func is_maybe() -> Bool {
        let rv = g_variant_type_is_maybe(cast(ptr))
        return Bool(rv != 0)
    }

    /// Checks if @type is a subtype of @supertype.
    /// 
    /// This function returns %TRUE if @type is a subtype of @supertype.  All
    /// types are considered to be subtypes of themselves.  Aside from that,
    /// only indefinite types can have subtypes.
    public func is_subtype_of() -> Bool {
        let rv = g_variant_type_is_subtype_of(cast(ptr), cast(ptr))
        return Bool(rv != 0)
    }

    /// Determines if the given @type is a tuple type.  This is true if the
    /// type string for @type starts with a '(' or if @type is
    /// %G_VARIANT_TYPE_TUPLE.
    /// 
    /// This function returns %TRUE for any indefinite type for which every
    /// definite subtype is a tuple type -- %G_VARIANT_TYPE_TUPLE, for
    /// example.
    public func is_tuple() -> Bool {
        let rv = g_variant_type_is_tuple(cast(ptr))
        return Bool(rv != 0)
    }

    /// Determines if the given @type is the variant type.
    public func is_variant() -> Bool {
        let rv = g_variant_type_is_variant(cast(ptr))
        return Bool(rv != 0)
    }

    /// Determines the key type of a dictionary entry type.
    /// 
    /// This function may only be used with a dictionary entry type.  Other
    /// than the additional restriction, this call is equivalent to
    /// g_variant_type_first().
    public func key() -> UnsafePointer<GVariantType>! {
        let rv = g_variant_type_key(cast(ptr))
        return cast(rv)
    }

    /// Determines the number of items contained in a tuple or
    /// dictionary entry type.
    /// 
    /// This function may only be used with tuple or dictionary entry types,
    /// but must not be used with the generic tuple type
    /// %G_VARIANT_TYPE_TUPLE.
    /// 
    /// In the case of a dictionary entry type, this function will always
    /// return 2.
    public func n_items() -> Int {
        let rv = g_variant_type_n_items(cast(ptr))
        return Int(rv)
    }

    /// Determines the next item type of a tuple or dictionary entry
    /// type.
    /// 
    /// @type must be the result of a previous call to
    /// g_variant_type_first() or g_variant_type_next().
    /// 
    /// If called on the key type of a dictionary entry then this call
    /// returns the value type.  If called on the value type of a dictionary
    /// entry then this call returns %NULL.
    /// 
    /// For tuples, %NULL is returned when @type is the last item in a tuple.
    public func next() -> UnsafePointer<GVariantType>! {
        let rv = g_variant_type_next(cast(ptr))
        return cast(rv)
    }

    /// Returns the type string corresponding to the given @type.  The
    /// result is not nul-terminated; in order to determine its length you
    /// must call g_variant_type_get_string_length().
    /// 
    /// To get a nul-terminated string, see g_variant_type_dup_string().
    public func peek_string() -> UnsafePointer<gchar>! {
        let rv = g_variant_type_peek_string(cast(ptr))
        return cast(rv)
    }

    /// Determines the value type of a dictionary entry type.
    /// 
    /// This function may only be used with a dictionary entry type.
    public func value() -> UnsafePointer<GVariantType>! {
        let rv = g_variant_type_value(cast(ptr))
        return cast(rv)
    }
}



