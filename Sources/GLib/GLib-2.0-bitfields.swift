import CGLib

public struct AsciiType: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GAsciiType` enum value
    public var value: GAsciiType { get { GAsciiType(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GAsciiType` enum value
    public init(_ enumValue: GAsciiType) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    public static let alnum = AsciiType(1) /* G_ASCII_ALNUM */
    public static let alpha = AsciiType(2) /* G_ASCII_ALPHA */
    public static let cntrl = AsciiType(4) /* G_ASCII_CNTRL */
    public static let digit = AsciiType(8) /* G_ASCII_DIGIT */
    public static let graph = AsciiType(16) /* G_ASCII_GRAPH */
    public static let lower = AsciiType(32) /* G_ASCII_LOWER */
    public static let print = AsciiType(64) /* G_ASCII_PRINT */
    public static let punct = AsciiType(128) /* G_ASCII_PUNCT */
    public static let space = AsciiType(256) /* G_ASCII_SPACE */
    public static let upper = AsciiType(512) /* G_ASCII_UPPER */
    public static let xdigit = AsciiType(1024) /* G_ASCII_XDIGIT */


}
func cast<I: BinaryInteger>(_ param: I) -> AsciiType { AsciiType(rawValue: cast(param)) }
func cast(_ param: AsciiType) -> UInt32 { cast(param.rawValue) }


/// A test to perform on a file using `g_file_test()`.
public struct FileTest: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GFileTest` enum value
    public var value: GFileTest { get { GFileTest(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GFileTest` enum value
    public init(_ enumValue: GFileTest) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// `true` if the file is a regular file
    ///     (not a directory). Note that this test will also return `true`
    ///     if the tested file is a symlink to a regular file.
    public static let isRegular = FileTest(1) /* G_FILE_TEST_IS_REGULAR */
    /// `true` if the file is a symlink.
    public static let isSymlink = FileTest(2) /* G_FILE_TEST_IS_SYMLINK */
    /// `true` if the file is a directory.
    public static let isDir = FileTest(4) /* G_FILE_TEST_IS_DIR */
    /// `true` if the file is executable.
    public static let isExecutable = FileTest(8) /* G_FILE_TEST_IS_EXECUTABLE */
    /// `true` if the file exists. It may or may not
    ///     be a regular file.
    public static let exists = FileTest(16) /* G_FILE_TEST_EXISTS */

    /// `true` if the file is a regular file
    ///     (not a directory). Note that this test will also return `true`
    ///     if the tested file is a symlink to a regular file.
    @available(*, deprecated) public static let is_regular = FileTest(1) /* G_FILE_TEST_IS_REGULAR */
    /// `true` if the file is a symlink.
    @available(*, deprecated) public static let is_symlink = FileTest(2) /* G_FILE_TEST_IS_SYMLINK */
    /// `true` if the file is a directory.
    @available(*, deprecated) public static let is_dir = FileTest(4) /* G_FILE_TEST_IS_DIR */
    /// `true` if the file is executable.
    @available(*, deprecated) public static let is_executable = FileTest(8) /* G_FILE_TEST_IS_EXECUTABLE */
}
func cast<I: BinaryInteger>(_ param: I) -> FileTest { FileTest(rawValue: cast(param)) }
func cast(_ param: FileTest) -> UInt32 { cast(param.rawValue) }


/// Flags to modify the format of the string returned by `g_format_size_full()`.
public struct FormatSizeFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GFormatSizeFlags` enum value
    public var value: GFormatSizeFlags { get { GFormatSizeFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GFormatSizeFlags` enum value
    public init(_ enumValue: GFormatSizeFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// behave the same as `g_format_size()`
    public static let `default` = FormatSizeFlags(0) /* G_FORMAT_SIZE_DEFAULT */
    /// include the exact number of bytes as part
    ///     of the returned string.  For example, "45.6 kB (45,612 bytes)".
    public static let longFormat = FormatSizeFlags(1) /* G_FORMAT_SIZE_LONG_FORMAT */
    /// use IEC (base 1024) units with "KiB"-style
    ///     suffixes. IEC units should only be used for reporting things with
    ///     a strong "power of 2" basis, like RAM sizes or RAID stripe sizes.
    ///     Network and storage sizes should be reported in the normal SI units.
    public static let iecUnits = FormatSizeFlags(2) /* G_FORMAT_SIZE_IEC_UNITS */
    /// set the size as a quantity in bits, rather than
    ///     bytes, and return units in bits. For example, ‘Mb’ rather than ‘MB’.
    public static let bits = FormatSizeFlags(4) /* G_FORMAT_SIZE_BITS */

    /// behave the same as `g_format_size()`
    @available(*, deprecated) public static let default_ = FormatSizeFlags(0) /* G_FORMAT_SIZE_DEFAULT */
    /// include the exact number of bytes as part
    ///     of the returned string.  For example, "45.6 kB (45,612 bytes)".
    @available(*, deprecated) public static let long_format = FormatSizeFlags(1) /* G_FORMAT_SIZE_LONG_FORMAT */
    /// use IEC (base 1024) units with "KiB"-style
    ///     suffixes. IEC units should only be used for reporting things with
    ///     a strong "power of 2" basis, like RAM sizes or RAID stripe sizes.
    ///     Network and storage sizes should be reported in the normal SI units.
    @available(*, deprecated) public static let iec_units = FormatSizeFlags(2) /* G_FORMAT_SIZE_IEC_UNITS */
}
func cast<I: BinaryInteger>(_ param: I) -> FormatSizeFlags { FormatSizeFlags(rawValue: cast(param)) }
func cast(_ param: FormatSizeFlags) -> UInt32 { cast(param.rawValue) }


/// Flags used internally in the `GHook` implementation.
public struct HookFlagMask: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GHookFlagMask` enum value
    public var value: GHookFlagMask { get { GHookFlagMask(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GHookFlagMask` enum value
    public init(_ enumValue: GHookFlagMask) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// set if the hook has not been destroyed
    public static let active = HookFlagMask(1) /* G_HOOK_FLAG_ACTIVE */
    /// set if the hook is currently being run
    public static let inCall = HookFlagMask(2) /* G_HOOK_FLAG_IN_CALL */
    /// A mask covering all bits reserved for
    ///   hook flags; see `G_HOOK_FLAG_USER_SHIFT`
    public static let mask = HookFlagMask(15) /* G_HOOK_FLAG_MASK */

    /// set if the hook is currently being run
    @available(*, deprecated) public static let in_call = HookFlagMask(2) /* G_HOOK_FLAG_IN_CALL */
}
func cast<I: BinaryInteger>(_ param: I) -> HookFlagMask { HookFlagMask(rawValue: cast(param)) }
func cast(_ param: HookFlagMask) -> UInt32 { cast(param.rawValue) }


/// A bitwise combination representing a condition to watch for on an
/// event source.
public struct IOCondition: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GIOCondition` enum value
    public var value: GIOCondition { get { GIOCondition(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GIOCondition` enum value
    public init(_ enumValue: GIOCondition) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// There is data to read.
    public static let `in` = IOCondition(1) /* G_IO_IN */
    /// Data can be written (without blocking).
    public static let out = IOCondition(4) /* G_IO_OUT */
    /// There is urgent data to read.
    public static let pri = IOCondition(2) /* G_IO_PRI */
    /// Error condition.
    public static let err = IOCondition(8) /* G_IO_ERR */
    /// Hung up (the connection has been broken, usually for
    ///            pipes and sockets).
    public static let hup = IOCondition(16) /* G_IO_HUP */
    /// Invalid request. The file descriptor is not open.
    public static let nval = IOCondition(32) /* G_IO_NVAL */

    /// There is data to read.
    @available(*, deprecated) public static let in_ = IOCondition(1) /* G_IO_IN */
}
func cast<I: BinaryInteger>(_ param: I) -> IOCondition { IOCondition(rawValue: cast(param)) }
func cast(_ param: IOCondition) -> UInt32 { cast(param.rawValue) }


/// Specifies properties of a `GIOChannel`. Some of the flags can only be
/// read with `g_io_channel_get_flags()`, but not changed with
/// `g_io_channel_set_flags()`.
public struct IOFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GIOFlags` enum value
    public var value: GIOFlags { get { GIOFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GIOFlags` enum value
    public init(_ enumValue: GIOFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// turns on append mode, corresponds to `O_APPEND`
    ///     (see the documentation of the UNIX `open()` syscall)
    public static let append = IOFlags(1) /* G_IO_FLAG_APPEND */
    /// turns on nonblocking mode, corresponds to
    ///     `O_NONBLOCK`/`O_NDELAY` (see the documentation of the UNIX `open()`
    ///     syscall)
    public static let nonblock = IOFlags(2) /* G_IO_FLAG_NONBLOCK */
    /// indicates that the io channel is readable.
    ///     This flag cannot be changed.
    public static let isReadable = IOFlags(4) /* G_IO_FLAG_IS_READABLE */
    /// indicates that the io channel is writable.
    ///     This flag cannot be changed.
    public static let isWritable = IOFlags(8) /* G_IO_FLAG_IS_WRITABLE */
    /// a misspelled version of `G_IO_FLAG_IS_WRITABLE`
    ///     that existed before the spelling was fixed in GLib 2.30. It is kept
    ///     here for compatibility reasons. Deprecated since 2.30
    public static let isWriteable = IOFlags(8) /* G_IO_FLAG_IS_WRITEABLE */
    /// indicates that the io channel is seekable,
    ///     i.e. that `g_io_channel_seek_position()` can be used on it.
    ///     This flag cannot be changed.
    public static let isSeekable = IOFlags(16) /* G_IO_FLAG_IS_SEEKABLE */
    /// the mask that specifies all the valid flags.
    public static let mask = IOFlags(31) /* G_IO_FLAG_MASK */
    /// the mask of the flags that are returned from
    ///     `g_io_channel_get_flags()`
    public static let getMask = IOFlags(31) /* G_IO_FLAG_GET_MASK */
    /// the mask of the flags that the user can modify
    ///     with `g_io_channel_set_flags()`
    public static let setMask = IOFlags(3) /* G_IO_FLAG_SET_MASK */

    /// indicates that the io channel is readable.
    ///     This flag cannot be changed.
    @available(*, deprecated) public static let is_readable = IOFlags(4) /* G_IO_FLAG_IS_READABLE */
    /// indicates that the io channel is writable.
    ///     This flag cannot be changed.
    @available(*, deprecated) public static let is_writable = IOFlags(8) /* G_IO_FLAG_IS_WRITABLE */
    /// a misspelled version of `G_IO_FLAG_IS_WRITABLE`
    ///     that existed before the spelling was fixed in GLib 2.30. It is kept
    ///     here for compatibility reasons. Deprecated since 2.30
    @available(*, deprecated) public static let is_writeable = IOFlags(8) /* G_IO_FLAG_IS_WRITEABLE */
    /// indicates that the io channel is seekable,
    ///     i.e. that `g_io_channel_seek_position()` can be used on it.
    ///     This flag cannot be changed.
    @available(*, deprecated) public static let is_seekable = IOFlags(16) /* G_IO_FLAG_IS_SEEKABLE */
    /// the mask of the flags that are returned from
    ///     `g_io_channel_get_flags()`
    @available(*, deprecated) public static let get_mask = IOFlags(31) /* G_IO_FLAG_GET_MASK */
    /// the mask of the flags that the user can modify
    ///     with `g_io_channel_set_flags()`
    @available(*, deprecated) public static let set_mask = IOFlags(3) /* G_IO_FLAG_SET_MASK */
}
func cast<I: BinaryInteger>(_ param: I) -> IOFlags { IOFlags(rawValue: cast(param)) }
func cast(_ param: IOFlags) -> UInt32 { cast(param.rawValue) }


/// Flags which influence the parsing.
public struct KeyFileFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GKeyFileFlags` enum value
    public var value: GKeyFileFlags { get { GKeyFileFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GKeyFileFlags` enum value
    public init(_ enumValue: GKeyFileFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// No flags, default behaviour
    public static let `none` = KeyFileFlags(0) /* G_KEY_FILE_NONE */
    /// Use this flag if you plan to write the
    ///     (possibly modified) contents of the key file back to a file;
    ///     otherwise all comments will be lost when the key file is
    ///     written back.
    public static let keepComments = KeyFileFlags(1) /* G_KEY_FILE_KEEP_COMMENTS */
    /// Use this flag if you plan to write the
    ///     (possibly modified) contents of the key file back to a file;
    ///     otherwise only the translations for the current language will be
    ///     written back.
    public static let keepTranslations = KeyFileFlags(2) /* G_KEY_FILE_KEEP_TRANSLATIONS */

    /// No flags, default behaviour
    @available(*, deprecated) public static let none_ = KeyFileFlags(0) /* G_KEY_FILE_NONE */
    /// Use this flag if you plan to write the
    ///     (possibly modified) contents of the key file back to a file;
    ///     otherwise all comments will be lost when the key file is
    ///     written back.
    @available(*, deprecated) public static let keep_comments = KeyFileFlags(1) /* G_KEY_FILE_KEEP_COMMENTS */
    /// Use this flag if you plan to write the
    ///     (possibly modified) contents of the key file back to a file;
    ///     otherwise only the translations for the current language will be
    ///     written back.
    @available(*, deprecated) public static let keep_translations = KeyFileFlags(2) /* G_KEY_FILE_KEEP_TRANSLATIONS */
}
func cast<I: BinaryInteger>(_ param: I) -> KeyFileFlags { KeyFileFlags(rawValue: cast(param)) }
func cast(_ param: KeyFileFlags) -> UInt32 { cast(param.rawValue) }


/// Flags specifying the level of log messages.
/// 
/// It is possible to change how GLib treats messages of the various
/// levels using `g_log_set_handler()` and `g_log_set_fatal_mask()`.
public struct LogLevelFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GLogLevelFlags` enum value
    public var value: GLogLevelFlags { get { GLogLevelFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GLogLevelFlags` enum value
    public init(_ enumValue: GLogLevelFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// internal flag
    public static let flagRecursion = LogLevelFlags(1) /* G_LOG_FLAG_RECURSION */
    /// internal flag
    public static let flagFatal = LogLevelFlags(2) /* G_LOG_FLAG_FATAL */
    /// log level for errors, see `g_error()`.
    ///     This level is also used for messages produced by `g_assert()`.
    public static let levelError = LogLevelFlags(4) /* G_LOG_LEVEL_ERROR */
    /// log level for critical warning messages, see
    ///     `g_critical()`.
    ///     This level is also used for messages produced by `g_return_if_fail()`
    ///     and `g_return_val_if_fail()`.
    public static let levelCritical = LogLevelFlags(8) /* G_LOG_LEVEL_CRITICAL */
    /// log level for warnings, see `g_warning()`
    public static let levelWarning = LogLevelFlags(16) /* G_LOG_LEVEL_WARNING */
    /// log level for messages, see `g_message()`
    public static let levelMessage = LogLevelFlags(32) /* G_LOG_LEVEL_MESSAGE */
    /// log level for informational messages, see `g_info()`
    public static let levelInfo = LogLevelFlags(64) /* G_LOG_LEVEL_INFO */
    /// log level for debug messages, see `g_debug()`
    public static let levelDebug = LogLevelFlags(128) /* G_LOG_LEVEL_DEBUG */
    /// a mask including all log levels
    public static let levelMask = LogLevelFlags(-4) /* G_LOG_LEVEL_MASK */

    /// internal flag
    @available(*, deprecated) public static let flag_recursion = LogLevelFlags(1) /* G_LOG_FLAG_RECURSION */
    /// internal flag
    @available(*, deprecated) public static let flag_fatal = LogLevelFlags(2) /* G_LOG_FLAG_FATAL */
    /// log level for errors, see `g_error()`.
    ///     This level is also used for messages produced by `g_assert()`.
    @available(*, deprecated) public static let level_error = LogLevelFlags(4) /* G_LOG_LEVEL_ERROR */
    /// log level for critical warning messages, see
    ///     `g_critical()`.
    ///     This level is also used for messages produced by `g_return_if_fail()`
    ///     and `g_return_val_if_fail()`.
    @available(*, deprecated) public static let level_critical = LogLevelFlags(8) /* G_LOG_LEVEL_CRITICAL */
    /// log level for warnings, see `g_warning()`
    @available(*, deprecated) public static let level_warning = LogLevelFlags(16) /* G_LOG_LEVEL_WARNING */
    /// log level for messages, see `g_message()`
    @available(*, deprecated) public static let level_message = LogLevelFlags(32) /* G_LOG_LEVEL_MESSAGE */
    /// log level for informational messages, see `g_info()`
    @available(*, deprecated) public static let level_info = LogLevelFlags(64) /* G_LOG_LEVEL_INFO */
    /// log level for debug messages, see `g_debug()`
    @available(*, deprecated) public static let level_debug = LogLevelFlags(128) /* G_LOG_LEVEL_DEBUG */
    /// a mask including all log levels
    @available(*, deprecated) public static let level_mask = LogLevelFlags(-4) /* G_LOG_LEVEL_MASK */
}
func cast<I: BinaryInteger>(_ param: I) -> LogLevelFlags { LogLevelFlags(rawValue: cast(param)) }
func cast(_ param: LogLevelFlags) -> UInt32 { cast(param.rawValue) }


/// A mixed enumerated type and flags field. You must specify one type
/// (string, strdup, boolean, tristate).  Additionally, you may  optionally
/// bitwise OR the type with the flag `G_MARKUP_COLLECT_OPTIONAL`.
/// 
/// It is likely that this enum will be extended in the future to
/// support other types.
public struct MarkupCollectType: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GMarkupCollectType` enum value
    public var value: GMarkupCollectType { get { GMarkupCollectType(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GMarkupCollectType` enum value
    public init(_ enumValue: GMarkupCollectType) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// used to terminate the list of attributes
    ///     to collect
    public static let invalid = MarkupCollectType(0) /* G_MARKUP_COLLECT_INVALID */
    /// collect the string pointer directly from
    ///     the attribute_values[] array. Expects a parameter of type (const
    ///     char **). If `G_MARKUP_COLLECT_OPTIONAL` is specified and the
    ///     attribute isn't present then the pointer will be set to `nil`
    public static let string = MarkupCollectType(1) /* G_MARKUP_COLLECT_STRING */
    /// as with `G_MARKUP_COLLECT_STRING`, but
    ///     expects a parameter of type (char **) and `g_strdup()`s the
    ///     returned pointer. The pointer must be freed with `g_free()`
    public static let strdup = MarkupCollectType(2) /* G_MARKUP_COLLECT_STRDUP */
    /// expects a parameter of type (gboolean *)
    ///     and parses the attribute value as a boolean. Sets `false` if the
    ///     attribute isn't present. Valid boolean values consist of
    ///     (case-insensitive) "false", "f", "no", "n", "0" and "true", "t",
    ///     "yes", "y", "1"
    public static let boolean = MarkupCollectType(3) /* G_MARKUP_COLLECT_BOOLEAN */
    /// as with `G_MARKUP_COLLECT_BOOLEAN`, but
    ///     in the case of a missing attribute a value is set that compares
    ///     equal to neither `false` nor `true` G_MARKUP_COLLECT_OPTIONAL is
    ///     implied
    public static let tristate = MarkupCollectType(4) /* G_MARKUP_COLLECT_TRISTATE */
    /// can be bitwise ORed with the other fields.
    ///     If present, allows the attribute not to appear. A default value
    ///     is set depending on what value type is used
    public static let `optional` = MarkupCollectType(65536) /* G_MARKUP_COLLECT_OPTIONAL */

    /// can be bitwise ORed with the other fields.
    ///     If present, allows the attribute not to appear. A default value
    ///     is set depending on what value type is used
    @available(*, deprecated) public static let optional_ = MarkupCollectType(65536) /* G_MARKUP_COLLECT_OPTIONAL */
}
func cast<I: BinaryInteger>(_ param: I) -> MarkupCollectType { MarkupCollectType(rawValue: cast(param)) }
func cast(_ param: MarkupCollectType) -> UInt32 { cast(param.rawValue) }


/// Flags that affect the behaviour of the parser.
public struct MarkupParseFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GMarkupParseFlags` enum value
    public var value: GMarkupParseFlags { get { GMarkupParseFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GMarkupParseFlags` enum value
    public init(_ enumValue: GMarkupParseFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// flag you should not use
    public static let doNotUseThisUnsupportedFlag = MarkupParseFlags(1) /* G_MARKUP_DO_NOT_USE_THIS_UNSUPPORTED_FLAG */
    /// When this flag is set, CDATA marked
    ///     sections are not passed literally to the `passthrough` function of
    ///     the parser. Instead, the content of the section (without the
    ///     `<![CDATA[` and `]]>`) is
    ///     passed to the `text` function. This flag was added in GLib 2.12
    public static let treatCdataAsText = MarkupParseFlags(2) /* G_MARKUP_TREAT_CDATA_AS_TEXT */
    /// Normally errors caught by GMarkup
    ///     itself have line/column information prefixed to them to let the
    ///     caller know the location of the error. When this flag is set the
    ///     location information is also prefixed to errors generated by the
    ///     `GMarkupParser` implementation functions
    public static let prefixErrorPosition = MarkupParseFlags(4) /* G_MARKUP_PREFIX_ERROR_POSITION */
    /// Ignore (don't report) qualified
    ///     attributes and tags, along with their contents.  A qualified
    ///     attribute or tag is one that contains ':' in its name (ie: is in
    ///     another namespace).  Since: 2.40.
    public static let ignoreQualified = MarkupParseFlags(8) /* G_MARKUP_IGNORE_QUALIFIED */

    /// flag you should not use
    @available(*, deprecated) public static let do_not_use_this_unsupported_flag = MarkupParseFlags(1) /* G_MARKUP_DO_NOT_USE_THIS_UNSUPPORTED_FLAG */
    /// When this flag is set, CDATA marked
    ///     sections are not passed literally to the `passthrough` function of
    ///     the parser. Instead, the content of the section (without the
    ///     `<![CDATA[` and `]]>`) is
    ///     passed to the `text` function. This flag was added in GLib 2.12
    @available(*, deprecated) public static let treat_cdata_as_text = MarkupParseFlags(2) /* G_MARKUP_TREAT_CDATA_AS_TEXT */
    /// Normally errors caught by GMarkup
    ///     itself have line/column information prefixed to them to let the
    ///     caller know the location of the error. When this flag is set the
    ///     location information is also prefixed to errors generated by the
    ///     `GMarkupParser` implementation functions
    @available(*, deprecated) public static let prefix_error_position = MarkupParseFlags(4) /* G_MARKUP_PREFIX_ERROR_POSITION */
    /// Ignore (don't report) qualified
    ///     attributes and tags, along with their contents.  A qualified
    ///     attribute or tag is one that contains ':' in its name (ie: is in
    ///     another namespace).  Since: 2.40.
    @available(*, deprecated) public static let ignore_qualified = MarkupParseFlags(8) /* G_MARKUP_IGNORE_QUALIFIED */
}
func cast<I: BinaryInteger>(_ param: I) -> MarkupParseFlags { MarkupParseFlags(rawValue: cast(param)) }
func cast(_ param: MarkupParseFlags) -> UInt32 { cast(param.rawValue) }


/// Flags which modify individual options.
public struct OptionFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GOptionFlags` enum value
    public var value: GOptionFlags { get { GOptionFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GOptionFlags` enum value
    public init(_ enumValue: GOptionFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// No flags. Since: 2.42.
    public static let `none` = OptionFlags(0) /* G_OPTION_FLAG_NONE */
    /// The option doesn't appear in `--help` output.
    public static let hidden = OptionFlags(1) /* G_OPTION_FLAG_HIDDEN */
    /// The option appears in the main section of the
    ///     `--help` output, even if it is defined in a group.
    public static let inMain = OptionFlags(2) /* G_OPTION_FLAG_IN_MAIN */
    /// For options of the `G_OPTION_ARG_NONE` kind, this
    ///     flag indicates that the sense of the option is reversed.
    public static let reverse = OptionFlags(4) /* G_OPTION_FLAG_REVERSE */
    /// For options of the `G_OPTION_ARG_CALLBACK` kind,
    ///     this flag indicates that the callback does not take any argument
    ///     (like a `G_OPTION_ARG_NONE` option). Since 2.8
    public static let noArg = OptionFlags(8) /* G_OPTION_FLAG_NO_ARG */
    /// For options of the `G_OPTION_ARG_CALLBACK`
    ///     kind, this flag indicates that the argument should be passed to the
    ///     callback in the GLib filename encoding rather than UTF-8. Since 2.8
    public static let filename = OptionFlags(16) /* G_OPTION_FLAG_FILENAME */
    /// For options of the `G_OPTION_ARG_CALLBACK`
    ///     kind, this flag indicates that the argument supply is optional.
    ///     If no argument is given then data of `GOptionParseFunc` will be
    ///     set to NULL. Since 2.8
    public static let optionalArg = OptionFlags(32) /* G_OPTION_FLAG_OPTIONAL_ARG */
    /// This flag turns off the automatic conflict
    ///     resolution which prefixes long option names with `groupname-` if
    ///     there is a conflict. This option should only be used in situations
    ///     where aliasing is necessary to model some legacy commandline interface.
    ///     It is not safe to use this option, unless all option groups are under
    ///     your direct control. Since 2.8.
    public static let noalias = OptionFlags(64) /* G_OPTION_FLAG_NOALIAS */

    /// No flags. Since: 2.42.
    @available(*, deprecated) public static let none_ = OptionFlags(0) /* G_OPTION_FLAG_NONE */
    /// The option appears in the main section of the
    ///     `--help` output, even if it is defined in a group.
    @available(*, deprecated) public static let in_main = OptionFlags(2) /* G_OPTION_FLAG_IN_MAIN */
    /// For options of the `G_OPTION_ARG_CALLBACK` kind,
    ///     this flag indicates that the callback does not take any argument
    ///     (like a `G_OPTION_ARG_NONE` option). Since 2.8
    @available(*, deprecated) public static let no_arg = OptionFlags(8) /* G_OPTION_FLAG_NO_ARG */
    /// For options of the `G_OPTION_ARG_CALLBACK`
    ///     kind, this flag indicates that the argument supply is optional.
    ///     If no argument is given then data of `GOptionParseFunc` will be
    ///     set to NULL. Since 2.8
    @available(*, deprecated) public static let optional_arg = OptionFlags(32) /* G_OPTION_FLAG_OPTIONAL_ARG */
}
func cast<I: BinaryInteger>(_ param: I) -> OptionFlags { OptionFlags(rawValue: cast(param)) }
func cast(_ param: OptionFlags) -> UInt32 { cast(param.rawValue) }


/// Flags specifying compile-time options.
public struct RegexCompileFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GRegexCompileFlags` enum value
    public var value: GRegexCompileFlags { get { GRegexCompileFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GRegexCompileFlags` enum value
    public init(_ enumValue: GRegexCompileFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// Letters in the pattern match both upper- and
    ///     lowercase letters. This option can be changed within a pattern
    ///     by a "(?i)" option setting.
    public static let caseless = RegexCompileFlags(1) /* G_REGEX_CASELESS */
    /// By default, GRegex treats the strings as consisting
    ///     of a single line of characters (even if it actually contains
    ///     newlines). The "start of line" metacharacter ("^") matches only
    ///     at the start of the string, while the "end of line" metacharacter
    ///     ("$") matches only at the end of the string, or before a terminating
    ///     newline (unless `G_REGEX_DOLLAR_ENDONLY` is set). When
    ///     `G_REGEX_MULTILINE` is set, the "start of line" and "end of line"
    ///     constructs match immediately following or immediately before any
    ///     newline in the string, respectively, as well as at the very start
    ///     and end. This can be changed within a pattern by a "(?m)" option
    ///     setting.
    public static let multiline = RegexCompileFlags(2) /* G_REGEX_MULTILINE */
    /// A dot metacharacter (".") in the pattern matches all
    ///     characters, including newlines. Without it, newlines are excluded.
    ///     This option can be changed within a pattern by a ("?s") option setting.
    public static let dotall = RegexCompileFlags(4) /* G_REGEX_DOTALL */
    /// Whitespace data characters in the pattern are
    ///     totally ignored except when escaped or inside a character class.
    ///     Whitespace does not include the VT character (code 11). In addition,
    ///     characters between an unescaped "#" outside a character class and
    ///     the next newline character, inclusive, are also ignored. This can
    ///     be changed within a pattern by a "(?x)" option setting.
    public static let extended = RegexCompileFlags(8) /* G_REGEX_EXTENDED */
    /// The pattern is forced to be "anchored", that is,
    ///     it is constrained to match only at the first matching point in the
    ///     string that is being searched. This effect can also be achieved by
    ///     appropriate constructs in the pattern itself such as the "^"
    ///     metacharacter.
    public static let anchored = RegexCompileFlags(16) /* G_REGEX_ANCHORED */
    /// A dollar metacharacter ("$") in the pattern
    ///     matches only at the end of the string. Without this option, a
    ///     dollar also matches immediately before the final character if
    ///     it is a newline (but not before any other newlines). This option
    ///     is ignored if `G_REGEX_MULTILINE` is set.
    public static let dollarEndonly = RegexCompileFlags(32) /* G_REGEX_DOLLAR_ENDONLY */
    /// Inverts the "greediness" of the quantifiers so that
    ///     they are not greedy by default, but become greedy if followed by "?".
    ///     It can also be set by a "(?U)" option setting within the pattern.
    public static let ungreedy = RegexCompileFlags(512) /* G_REGEX_UNGREEDY */
    /// Usually strings must be valid UTF-8 strings, using this
    ///     flag they are considered as a raw sequence of bytes.
    public static let raw = RegexCompileFlags(2048) /* G_REGEX_RAW */
    /// Disables the use of numbered capturing
    ///     parentheses in the pattern. Any opening parenthesis that is not
    ///     followed by "?" behaves as if it were followed by "?:" but named
    ///     parentheses can still be used for capturing (and they acquire numbers
    ///     in the usual way).
    public static let noAutoCapture = RegexCompileFlags(4096) /* G_REGEX_NO_AUTO_CAPTURE */
    /// Optimize the regular expression. If the pattern will
    ///     be used many times, then it may be worth the effort to optimize it
    ///     to improve the speed of matches.
    public static let optimize = RegexCompileFlags(8192) /* G_REGEX_OPTIMIZE */
    /// Limits an unanchored pattern to match before (or at) the
    ///     first newline. Since: 2.34
    public static let firstline = RegexCompileFlags(262144) /* G_REGEX_FIRSTLINE */
    /// Names used to identify capturing subpatterns need not
    ///     be unique. This can be helpful for certain types of pattern when it
    ///     is known that only one instance of the named subpattern can ever be
    ///     matched.
    public static let dupnames = RegexCompileFlags(524288) /* G_REGEX_DUPNAMES */
    /// Usually any newline character or character sequence is
    ///     recognized. If this option is set, the only recognized newline character
    ///     is '\r'.
    public static let newlineCr = RegexCompileFlags(1048576) /* G_REGEX_NEWLINE_CR */
    /// Usually any newline character or character sequence is
    ///     recognized. If this option is set, the only recognized newline character
    ///     is '\n'.
    public static let newlineLf = RegexCompileFlags(2097152) /* G_REGEX_NEWLINE_LF */
    /// Usually any newline character or character sequence is
    ///     recognized. If this option is set, the only recognized newline character
    ///     sequence is '\r\n'.
    public static let newlineCrlf = RegexCompileFlags(3145728) /* G_REGEX_NEWLINE_CRLF */
    /// Usually any newline character or character sequence
    ///     is recognized. If this option is set, the only recognized newline character
    ///     sequences are '\r', '\n', and '\r\n'. Since: 2.34
    public static let newlineAnycrlf = RegexCompileFlags(5242880) /* G_REGEX_NEWLINE_ANYCRLF */
    /// Usually any newline character or character sequence
    ///     is recognised. If this option is set, then "\R" only recognizes the newline
    ///    characters '\r', '\n' and '\r\n'. Since: 2.34
    public static let bsrAnycrlf = RegexCompileFlags(8388608) /* G_REGEX_BSR_ANYCRLF */
    /// Changes behaviour so that it is compatible with
    ///     JavaScript rather than PCRE. Since: 2.34
    public static let javascriptCompat = RegexCompileFlags(33554432) /* G_REGEX_JAVASCRIPT_COMPAT */

    /// A dollar metacharacter ("$") in the pattern
    ///     matches only at the end of the string. Without this option, a
    ///     dollar also matches immediately before the final character if
    ///     it is a newline (but not before any other newlines). This option
    ///     is ignored if `G_REGEX_MULTILINE` is set.
    @available(*, deprecated) public static let dollar_endonly = RegexCompileFlags(32) /* G_REGEX_DOLLAR_ENDONLY */
    /// Disables the use of numbered capturing
    ///     parentheses in the pattern. Any opening parenthesis that is not
    ///     followed by "?" behaves as if it were followed by "?:" but named
    ///     parentheses can still be used for capturing (and they acquire numbers
    ///     in the usual way).
    @available(*, deprecated) public static let no_auto_capture = RegexCompileFlags(4096) /* G_REGEX_NO_AUTO_CAPTURE */
    /// Usually any newline character or character sequence is
    ///     recognized. If this option is set, the only recognized newline character
    ///     is '\r'.
    @available(*, deprecated) public static let newline_cr = RegexCompileFlags(1048576) /* G_REGEX_NEWLINE_CR */
    /// Usually any newline character or character sequence is
    ///     recognized. If this option is set, the only recognized newline character
    ///     is '\n'.
    @available(*, deprecated) public static let newline_lf = RegexCompileFlags(2097152) /* G_REGEX_NEWLINE_LF */
    /// Usually any newline character or character sequence is
    ///     recognized. If this option is set, the only recognized newline character
    ///     sequence is '\r\n'.
    @available(*, deprecated) public static let newline_crlf = RegexCompileFlags(3145728) /* G_REGEX_NEWLINE_CRLF */
    /// Usually any newline character or character sequence
    ///     is recognized. If this option is set, the only recognized newline character
    ///     sequences are '\r', '\n', and '\r\n'. Since: 2.34
    @available(*, deprecated) public static let newline_anycrlf = RegexCompileFlags(5242880) /* G_REGEX_NEWLINE_ANYCRLF */
    /// Usually any newline character or character sequence
    ///     is recognised. If this option is set, then "\R" only recognizes the newline
    ///    characters '\r', '\n' and '\r\n'. Since: 2.34
    @available(*, deprecated) public static let bsr_anycrlf = RegexCompileFlags(8388608) /* G_REGEX_BSR_ANYCRLF */
    /// Changes behaviour so that it is compatible with
    ///     JavaScript rather than PCRE. Since: 2.34
    @available(*, deprecated) public static let javascript_compat = RegexCompileFlags(33554432) /* G_REGEX_JAVASCRIPT_COMPAT */
}
func cast<I: BinaryInteger>(_ param: I) -> RegexCompileFlags { RegexCompileFlags(rawValue: cast(param)) }
func cast(_ param: RegexCompileFlags) -> UInt32 { cast(param.rawValue) }


/// Flags specifying match-time options.
public struct RegexMatchFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GRegexMatchFlags` enum value
    public var value: GRegexMatchFlags { get { GRegexMatchFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GRegexMatchFlags` enum value
    public init(_ enumValue: GRegexMatchFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// The pattern is forced to be "anchored", that is,
    ///     it is constrained to match only at the first matching point in the
    ///     string that is being searched. This effect can also be achieved by
    ///     appropriate constructs in the pattern itself such as the "^"
    ///     metacharacter.
    public static let anchored = RegexMatchFlags(16) /* G_REGEX_MATCH_ANCHORED */
    /// Specifies that first character of the string is
    ///     not the beginning of a line, so the circumflex metacharacter should
    ///     not match before it. Setting this without `G_REGEX_MULTILINE` (at
    ///     compile time) causes circumflex never to match. This option affects
    ///     only the behaviour of the circumflex metacharacter, it does not
    ///     affect "\A".
    public static let notbol = RegexMatchFlags(128) /* G_REGEX_MATCH_NOTBOL */
    /// Specifies that the end of the subject string is
    ///     not the end of a line, so the dollar metacharacter should not match
    ///     it nor (except in multiline mode) a newline immediately before it.
    ///     Setting this without `G_REGEX_MULTILINE` (at compile time) causes
    ///     dollar never to match. This option affects only the behaviour of
    ///     the dollar metacharacter, it does not affect "\Z" or "\z".
    public static let noteol = RegexMatchFlags(256) /* G_REGEX_MATCH_NOTEOL */
    /// An empty string is not considered to be a valid
    ///     match if this option is set. If there are alternatives in the pattern,
    ///     they are tried. If all the alternatives match the empty string, the
    ///     entire match fails. For example, if the pattern "a?b?" is applied to
    ///     a string not beginning with "a" or "b", it matches the empty string
    ///     at the start of the string. With this flag set, this match is not
    ///     valid, so GRegex searches further into the string for occurrences
    ///     of "a" or "b".
    public static let notempty = RegexMatchFlags(1024) /* G_REGEX_MATCH_NOTEMPTY */
    /// Turns on the partial matching feature, for more
    ///     documentation on partial matching see `g_match_info_is_partial_match()`.
    public static let partial = RegexMatchFlags(32768) /* G_REGEX_MATCH_PARTIAL */
    /// Overrides the newline definition set when
    ///     creating a new `GRegex`, setting the '\r' character as line terminator.
    public static let newlineCr = RegexMatchFlags(1048576) /* G_REGEX_MATCH_NEWLINE_CR */
    /// Overrides the newline definition set when
    ///     creating a new `GRegex`, setting the '\n' character as line terminator.
    public static let newlineLf = RegexMatchFlags(2097152) /* G_REGEX_MATCH_NEWLINE_LF */
    /// Overrides the newline definition set when
    ///     creating a new `GRegex`, setting the '\r\n' characters sequence as line terminator.
    public static let newlineCrlf = RegexMatchFlags(3145728) /* G_REGEX_MATCH_NEWLINE_CRLF */
    /// Overrides the newline definition set when
    ///     creating a new `GRegex`, any Unicode newline sequence
    ///     is recognised as a newline. These are '\r', '\n' and '\rn', and the
    ///     single characters U+000B LINE TABULATION, U+000C FORM FEED (FF),
    ///     U+0085 NEXT LINE (NEL), U+2028 LINE SEPARATOR and
    ///     U+2029 PARAGRAPH SEPARATOR.
    public static let newlineAny = RegexMatchFlags(4194304) /* G_REGEX_MATCH_NEWLINE_ANY */
    /// Overrides the newline definition set when
    ///     creating a new `GRegex`; any '\r', '\n', or '\r\n' character sequence
    ///     is recognized as a newline. Since: 2.34
    public static let newlineAnycrlf = RegexMatchFlags(5242880) /* G_REGEX_MATCH_NEWLINE_ANYCRLF */
    /// Overrides the newline definition for "\R" set when
    ///     creating a new `GRegex`; only '\r', '\n', or '\r\n' character sequences
    ///     are recognized as a newline by "\R". Since: 2.34
    public static let bsrAnycrlf = RegexMatchFlags(8388608) /* G_REGEX_MATCH_BSR_ANYCRLF */
    /// Overrides the newline definition for "\R" set when
    ///     creating a new `GRegex`; any Unicode newline character or character sequence
    ///     are recognized as a newline by "\R". These are '\r', '\n' and '\rn', and the
    ///     single characters U+000B LINE TABULATION, U+000C FORM FEED (FF),
    ///     U+0085 NEXT LINE (NEL), U+2028 LINE SEPARATOR and
    ///     U+2029 PARAGRAPH SEPARATOR. Since: 2.34
    public static let bsrAny = RegexMatchFlags(16777216) /* G_REGEX_MATCH_BSR_ANY */
    /// An alias for `G_REGEX_MATCH_PARTIAL`. Since: 2.34
    public static let partialSoft = RegexMatchFlags(32768) /* G_REGEX_MATCH_PARTIAL_SOFT */
    /// Turns on the partial matching feature. In contrast to
    ///     to `G_REGEX_MATCH_PARTIAL_SOFT`, this stops matching as soon as a partial match
    ///     is found, without continuing to search for a possible complete match. See
    ///     `g_match_info_is_partial_match()` for more information. Since: 2.34
    public static let partialHard = RegexMatchFlags(134217728) /* G_REGEX_MATCH_PARTIAL_HARD */
    /// Like `G_REGEX_MATCH_NOTEMPTY`, but only applied to
    ///     the start of the matched string. For anchored
    ///     patterns this can only happen for pattern containing "\K". Since: 2.34
    public static let notemptyAtstart = RegexMatchFlags(268435456) /* G_REGEX_MATCH_NOTEMPTY_ATSTART */

    /// Overrides the newline definition set when
    ///     creating a new `GRegex`, setting the '\r' character as line terminator.
    @available(*, deprecated) public static let newline_cr = RegexMatchFlags(1048576) /* G_REGEX_MATCH_NEWLINE_CR */
    /// Overrides the newline definition set when
    ///     creating a new `GRegex`, setting the '\n' character as line terminator.
    @available(*, deprecated) public static let newline_lf = RegexMatchFlags(2097152) /* G_REGEX_MATCH_NEWLINE_LF */
    /// Overrides the newline definition set when
    ///     creating a new `GRegex`, setting the '\r\n' characters sequence as line terminator.
    @available(*, deprecated) public static let newline_crlf = RegexMatchFlags(3145728) /* G_REGEX_MATCH_NEWLINE_CRLF */
    /// Overrides the newline definition set when
    ///     creating a new `GRegex`, any Unicode newline sequence
    ///     is recognised as a newline. These are '\r', '\n' and '\rn', and the
    ///     single characters U+000B LINE TABULATION, U+000C FORM FEED (FF),
    ///     U+0085 NEXT LINE (NEL), U+2028 LINE SEPARATOR and
    ///     U+2029 PARAGRAPH SEPARATOR.
    @available(*, deprecated) public static let newline_any = RegexMatchFlags(4194304) /* G_REGEX_MATCH_NEWLINE_ANY */
    /// Overrides the newline definition set when
    ///     creating a new `GRegex`; any '\r', '\n', or '\r\n' character sequence
    ///     is recognized as a newline. Since: 2.34
    @available(*, deprecated) public static let newline_anycrlf = RegexMatchFlags(5242880) /* G_REGEX_MATCH_NEWLINE_ANYCRLF */
    /// Overrides the newline definition for "\R" set when
    ///     creating a new `GRegex`; only '\r', '\n', or '\r\n' character sequences
    ///     are recognized as a newline by "\R". Since: 2.34
    @available(*, deprecated) public static let bsr_anycrlf = RegexMatchFlags(8388608) /* G_REGEX_MATCH_BSR_ANYCRLF */
    /// Overrides the newline definition for "\R" set when
    ///     creating a new `GRegex`; any Unicode newline character or character sequence
    ///     are recognized as a newline by "\R". These are '\r', '\n' and '\rn', and the
    ///     single characters U+000B LINE TABULATION, U+000C FORM FEED (FF),
    ///     U+0085 NEXT LINE (NEL), U+2028 LINE SEPARATOR and
    ///     U+2029 PARAGRAPH SEPARATOR. Since: 2.34
    @available(*, deprecated) public static let bsr_any = RegexMatchFlags(16777216) /* G_REGEX_MATCH_BSR_ANY */
    /// An alias for `G_REGEX_MATCH_PARTIAL`. Since: 2.34
    @available(*, deprecated) public static let partial_soft = RegexMatchFlags(32768) /* G_REGEX_MATCH_PARTIAL_SOFT */
    /// Turns on the partial matching feature. In contrast to
    ///     to `G_REGEX_MATCH_PARTIAL_SOFT`, this stops matching as soon as a partial match
    ///     is found, without continuing to search for a possible complete match. See
    ///     `g_match_info_is_partial_match()` for more information. Since: 2.34
    @available(*, deprecated) public static let partial_hard = RegexMatchFlags(134217728) /* G_REGEX_MATCH_PARTIAL_HARD */
    /// Like `G_REGEX_MATCH_NOTEMPTY`, but only applied to
    ///     the start of the matched string. For anchored
    ///     patterns this can only happen for pattern containing "\K". Since: 2.34
    @available(*, deprecated) public static let notempty_atstart = RegexMatchFlags(268435456) /* G_REGEX_MATCH_NOTEMPTY_ATSTART */
}
func cast<I: BinaryInteger>(_ param: I) -> RegexMatchFlags { RegexMatchFlags(rawValue: cast(param)) }
func cast(_ param: RegexMatchFlags) -> UInt32 { cast(param.rawValue) }


/// Flags passed to `g_spawn_sync()`, `g_spawn_async()` and `g_spawn_async_with_pipes()`.
public struct SpawnFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GSpawnFlags` enum value
    public var value: GSpawnFlags { get { GSpawnFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GSpawnFlags` enum value
    public init(_ enumValue: GSpawnFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// no flags, default behaviour
    public static let `default` = SpawnFlags(0) /* G_SPAWN_DEFAULT */
    /// the parent's open file descriptors will
    ///     be inherited by the child; otherwise all descriptors except stdin,
    ///     stdout and stderr will be closed before calling `exec()` in the child.
    public static let leaveDescriptorsOpen = SpawnFlags(1) /* G_SPAWN_LEAVE_DESCRIPTORS_OPEN */
    /// the child will not be automatically reaped;
    ///     you must use `g_child_watch_add()` yourself (or call `waitpid()` or handle
    ///     `SIGCHLD` yourself), or the child will become a zombie.
    public static let doNotReapChild = SpawnFlags(2) /* G_SPAWN_DO_NOT_REAP_CHILD */
    /// `argv[0]` need not be an absolute path, it will be
    ///     looked for in the user's `PATH`.
    public static let searchPath = SpawnFlags(4) /* G_SPAWN_SEARCH_PATH */
    /// the child's standard output will be discarded,
    ///     instead of going to the same location as the parent's standard output.
    public static let stdoutToDevNull = SpawnFlags(8) /* G_SPAWN_STDOUT_TO_DEV_NULL */
    /// the child's standard error will be discarded.
    public static let stderrToDevNull = SpawnFlags(16) /* G_SPAWN_STDERR_TO_DEV_NULL */
    /// the child will inherit the parent's standard
    ///     input (by default, the child's standard input is attached to `/dev/null`).
    public static let childInheritsStdin = SpawnFlags(32) /* G_SPAWN_CHILD_INHERITS_STDIN */
    /// the first element of `argv` is the file to
    ///     execute, while the remaining elements are the actual argument vector
    ///     to pass to the file. Normally `g_spawn_async_with_pipes()` uses `argv[0]`
    ///     as the file to execute, and passes all of `argv` to the child.
    public static let fileAndArgvZero = SpawnFlags(64) /* G_SPAWN_FILE_AND_ARGV_ZERO */
    /// if `argv[0]` is not an abolute path,
    ///     it will be looked for in the `PATH` from the passed child environment.
    ///     Since: 2.34
    public static let searchPathFromEnvp = SpawnFlags(128) /* G_SPAWN_SEARCH_PATH_FROM_ENVP */
    /// create all pipes with the `O_CLOEXEC` flag set.
    ///     Since: 2.40
    public static let cloexecPipes = SpawnFlags(256) /* G_SPAWN_CLOEXEC_PIPES */

    /// no flags, default behaviour
    @available(*, deprecated) public static let default_ = SpawnFlags(0) /* G_SPAWN_DEFAULT */
    /// the parent's open file descriptors will
    ///     be inherited by the child; otherwise all descriptors except stdin,
    ///     stdout and stderr will be closed before calling `exec()` in the child.
    @available(*, deprecated) public static let leave_descriptors_open = SpawnFlags(1) /* G_SPAWN_LEAVE_DESCRIPTORS_OPEN */
    /// the child will not be automatically reaped;
    ///     you must use `g_child_watch_add()` yourself (or call `waitpid()` or handle
    ///     `SIGCHLD` yourself), or the child will become a zombie.
    @available(*, deprecated) public static let do_not_reap_child = SpawnFlags(2) /* G_SPAWN_DO_NOT_REAP_CHILD */
    /// `argv[0]` need not be an absolute path, it will be
    ///     looked for in the user's `PATH`.
    @available(*, deprecated) public static let search_path = SpawnFlags(4) /* G_SPAWN_SEARCH_PATH */
    /// the child's standard output will be discarded,
    ///     instead of going to the same location as the parent's standard output.
    @available(*, deprecated) public static let stdout_to_dev_null = SpawnFlags(8) /* G_SPAWN_STDOUT_TO_DEV_NULL */
    /// the child's standard error will be discarded.
    @available(*, deprecated) public static let stderr_to_dev_null = SpawnFlags(16) /* G_SPAWN_STDERR_TO_DEV_NULL */
    /// the child will inherit the parent's standard
    ///     input (by default, the child's standard input is attached to `/dev/null`).
    @available(*, deprecated) public static let child_inherits_stdin = SpawnFlags(32) /* G_SPAWN_CHILD_INHERITS_STDIN */
    /// the first element of `argv` is the file to
    ///     execute, while the remaining elements are the actual argument vector
    ///     to pass to the file. Normally `g_spawn_async_with_pipes()` uses `argv[0]`
    ///     as the file to execute, and passes all of `argv` to the child.
    @available(*, deprecated) public static let file_and_argv_zero = SpawnFlags(64) /* G_SPAWN_FILE_AND_ARGV_ZERO */
    /// if `argv[0]` is not an abolute path,
    ///     it will be looked for in the `PATH` from the passed child environment.
    ///     Since: 2.34
    @available(*, deprecated) public static let search_path_from_envp = SpawnFlags(128) /* G_SPAWN_SEARCH_PATH_FROM_ENVP */
    /// create all pipes with the `O_CLOEXEC` flag set.
    ///     Since: 2.40
    @available(*, deprecated) public static let cloexec_pipes = SpawnFlags(256) /* G_SPAWN_CLOEXEC_PIPES */
}
func cast<I: BinaryInteger>(_ param: I) -> SpawnFlags { SpawnFlags(rawValue: cast(param)) }
func cast(_ param: SpawnFlags) -> UInt32 { cast(param.rawValue) }


/// Flags to pass to `g_test_trap_subprocess()` to control input and output.
/// 
/// Note that in contrast with `g_test_trap_fork()`, the default is to
/// not show stdout and stderr.
public struct TestSubprocessFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GTestSubprocessFlags` enum value
    public var value: GTestSubprocessFlags { get { GTestSubprocessFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GTestSubprocessFlags` enum value
    public init(_ enumValue: GTestSubprocessFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// If this flag is given, the child
    ///     process will inherit the parent's stdin. Otherwise, the child's
    ///     stdin is redirected to `/dev/null`.
    public static let stdin = TestSubprocessFlags(1) /* G_TEST_SUBPROCESS_INHERIT_STDIN */
    /// If this flag is given, the child
    ///     process will inherit the parent's stdout. Otherwise, the child's
    ///     stdout will not be visible, but it will be captured to allow
    ///     later tests with `g_test_trap_assert_stdout()`.
    public static let stdout = TestSubprocessFlags(2) /* G_TEST_SUBPROCESS_INHERIT_STDOUT */
    /// If this flag is given, the child
    ///     process will inherit the parent's stderr. Otherwise, the child's
    ///     stderr will not be visible, but it will be captured to allow
    ///     later tests with `g_test_trap_assert_stderr()`.
    public static let stderr = TestSubprocessFlags(4) /* G_TEST_SUBPROCESS_INHERIT_STDERR */


}
func cast<I: BinaryInteger>(_ param: I) -> TestSubprocessFlags { TestSubprocessFlags(rawValue: cast(param)) }
func cast(_ param: TestSubprocessFlags) -> UInt32 { cast(param.rawValue) }


/// Test traps are guards around forked tests.
/// These flags determine what traps to set.
///
/// **TestTrapFlags is deprecated:**
/// #GTestTrapFlags is used only with g_test_trap_fork(),
/// which is deprecated. g_test_trap_subprocess() uses
/// #GTestSubprocessFlags.
public struct TestTrapFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GTestTrapFlags` enum value
    public var value: GTestTrapFlags { get { GTestTrapFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GTestTrapFlags` enum value
    public init(_ enumValue: GTestTrapFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// Redirect stdout of the test child to
    ///     `/dev/null` so it cannot be observed on the console during test
    ///     runs. The actual output is still captured though to allow later
    ///     tests with `g_test_trap_assert_stdout()`.
    public static let silenceStdout = TestTrapFlags(128) /* G_TEST_TRAP_SILENCE_STDOUT */
    /// Redirect stderr of the test child to
    ///     `/dev/null` so it cannot be observed on the console during test
    ///     runs. The actual output is still captured though to allow later
    ///     tests with `g_test_trap_assert_stderr()`.
    public static let silenceStderr = TestTrapFlags(256) /* G_TEST_TRAP_SILENCE_STDERR */
    /// If this flag is given, stdin of the
    ///     child process is shared with stdin of its parent process.
    ///     It is redirected to `/dev/null` otherwise.
    public static let inheritStdin = TestTrapFlags(512) /* G_TEST_TRAP_INHERIT_STDIN */

    /// Redirect stdout of the test child to
    ///     `/dev/null` so it cannot be observed on the console during test
    ///     runs. The actual output is still captured though to allow later
    ///     tests with `g_test_trap_assert_stdout()`.
    @available(*, deprecated) public static let silence_stdout = TestTrapFlags(128) /* G_TEST_TRAP_SILENCE_STDOUT */
    /// Redirect stderr of the test child to
    ///     `/dev/null` so it cannot be observed on the console during test
    ///     runs. The actual output is still captured though to allow later
    ///     tests with `g_test_trap_assert_stderr()`.
    @available(*, deprecated) public static let silence_stderr = TestTrapFlags(256) /* G_TEST_TRAP_SILENCE_STDERR */
    /// If this flag is given, stdin of the
    ///     child process is shared with stdin of its parent process.
    ///     It is redirected to `/dev/null` otherwise.
    @available(*, deprecated) public static let inherit_stdin = TestTrapFlags(512) /* G_TEST_TRAP_INHERIT_STDIN */
}
func cast<I: BinaryInteger>(_ param: I) -> TestTrapFlags { TestTrapFlags(rawValue: cast(param)) }
func cast(_ param: TestTrapFlags) -> UInt32 { cast(param.rawValue) }


/// Specifies which nodes are visited during several of the tree
/// functions, including `g_node_traverse()` and `g_node_find()`.
public struct TraverseFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GTraverseFlags` enum value
    public var value: GTraverseFlags { get { GTraverseFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GTraverseFlags` enum value
    public init(_ enumValue: GTraverseFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// only leaf nodes should be visited. This name has
    ///                     been introduced in 2.6, for older version use
    ///                     `G_TRAVERSE_LEAFS`.
    public static let leaves = TraverseFlags(1) /* G_TRAVERSE_LEAVES */
    /// only non-leaf nodes should be visited. This
    ///                         name has been introduced in 2.6, for older
    ///                         version use `G_TRAVERSE_NON_LEAFS`.
    public static let nonLeaves = TraverseFlags(2) /* G_TRAVERSE_NON_LEAVES */
    /// all nodes should be visited.
    public static let all = TraverseFlags(3) /* G_TRAVERSE_ALL */
    /// a mask of all traverse flags.
    public static let mask = TraverseFlags(3) /* G_TRAVERSE_MASK */
    /// identical to `G_TRAVERSE_LEAVES`.
    public static let leafs = TraverseFlags(1) /* G_TRAVERSE_LEAFS */
    /// identical to `G_TRAVERSE_NON_LEAVES`.
    public static let nonLeafs = TraverseFlags(2) /* G_TRAVERSE_NON_LEAFS */

    /// only non-leaf nodes should be visited. This
    ///                         name has been introduced in 2.6, for older
    ///                         version use `G_TRAVERSE_NON_LEAFS`.
    @available(*, deprecated) public static let non_leaves = TraverseFlags(2) /* G_TRAVERSE_NON_LEAVES */
    /// identical to `G_TRAVERSE_NON_LEAVES`.
    @available(*, deprecated) public static let non_leafs = TraverseFlags(2) /* G_TRAVERSE_NON_LEAFS */
}
func cast<I: BinaryInteger>(_ param: I) -> TraverseFlags { TraverseFlags(rawValue: cast(param)) }
func cast(_ param: TraverseFlags) -> UInt32 { cast(param.rawValue) }
