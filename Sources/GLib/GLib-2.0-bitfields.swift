import CGLib

public typealias AsciiType = GAsciiType

public extension AsciiType {
    static let alnum = G_ASCII_ALNUM /* 1 */
    static let alpha = G_ASCII_ALPHA /* 2 */
    static let cntrl = G_ASCII_CNTRL /* 4 */
    static let digit = G_ASCII_DIGIT /* 8 */
    static let graph = G_ASCII_GRAPH /* 16 */
    static let lower = G_ASCII_LOWER /* 32 */
    static let print = G_ASCII_PRINT /* 64 */
    static let punct = G_ASCII_PUNCT /* 128 */
    static let space = G_ASCII_SPACE /* 256 */
    static let upper = G_ASCII_UPPER /* 512 */
    static let xdigit = G_ASCII_XDIGIT /* 1024 */
}

/// A test to perform on a file using g_file_test().
public typealias FileTest = GFileTest

public extension FileTest {
    /// `true` if the file is a regular file
    ///     (not a directory). Note that this test will also return `true`
    ///     if the tested file is a symlink to a regular file.
    static let is_regular = G_FILE_TEST_IS_REGULAR /* 1 */
    /// `true` if the file is a symlink.
    static let is_symlink = G_FILE_TEST_IS_SYMLINK /* 2 */
    /// `true` if the file is a directory.
    static let is_dir = G_FILE_TEST_IS_DIR /* 4 */
    /// `true` if the file is executable.
    static let is_executable = G_FILE_TEST_IS_EXECUTABLE /* 8 */
    /// `true` if the file exists. It may or may not
    ///     be a regular file.
    static let exists = G_FILE_TEST_EXISTS /* 16 */
}

/// Flags to modify the format of the string returned by g_format_size_full().
public typealias FormatSizeFlags = GFormatSizeFlags

public extension FormatSizeFlags {
    /// behave the same as g_format_size()
    static let default_ = G_FORMAT_SIZE_DEFAULT /* 0 */
    /// include the exact number of bytes as part
    ///     of the returned string.  For example, "45.6 kB (45,612 bytes)".
    static let long_format = G_FORMAT_SIZE_LONG_FORMAT /* 1 */
    /// use IEC (base 1024) units with "KiB"-style
    ///     suffixes. IEC units should only be used for reporting things with
    ///     a strong "power of 2" basis, like RAM sizes or RAID stripe sizes.
    ///     Network and storage sizes should be reported in the normal SI units.
    static let iec_units = G_FORMAT_SIZE_IEC_UNITS /* 2 */
    /// set the size as a quantity in bits, rather than
    ///     bytes, and return units in bits. For example, ‘Mb’ rather than ‘MB’.
    static let bits = G_FORMAT_SIZE_BITS /* 4 */
}

/// Flags used internally in the `GHook` implementation.
public typealias HookFlagMask = GHookFlagMask

public extension HookFlagMask {
    /// set if the hook has not been destroyed
    static let active = G_HOOK_FLAG_ACTIVE /* 1 */
    /// set if the hook is currently being run
    static let in_call = G_HOOK_FLAG_IN_CALL /* 2 */
    /// A mask covering all bits reserved for
    ///   hook flags; see `G_HOOK_FLAG_USER_SHIFT`
    static let mask = G_HOOK_FLAG_MASK /* 15 */
}

/// A bitwise combination representing a condition to watch for on an
/// event source.
public typealias IOCondition = GIOCondition

public extension IOCondition {
    /// There is data to read.
    static let in_ = G_IO_IN /* 1 */
    /// Data can be written (without blocking).
    static let out = G_IO_OUT /* 4 */
    /// There is urgent data to read.
    static let pri = G_IO_PRI /* 2 */
    /// Error condition.
    static let err = G_IO_ERR /* 8 */
    /// Hung up (the connection has been broken, usually for
    ///            pipes and sockets).
    static let hup = G_IO_HUP /* 16 */
    /// Invalid request. The file descriptor is not open.
    static let nval = G_IO_NVAL /* 32 */
}

/// Specifies properties of a `GIOChannel`. Some of the flags can only be
/// read with g_io_channel_get_flags(), but not changed with
/// g_io_channel_set_flags().
public typealias IOFlags = GIOFlags

public extension IOFlags {
    /// turns on append mode, corresponds to `O_APPEND`
    ///     (see the documentation of the UNIX open() syscall)
    static let append = G_IO_FLAG_APPEND /* 1 */
    /// turns on nonblocking mode, corresponds to
    ///     `O_NONBLOCK`/`O_NDELAY` (see the documentation of the UNIX open()
    ///     syscall)
    static let nonblock = G_IO_FLAG_NONBLOCK /* 2 */
    /// indicates that the io channel is readable.
    ///     This flag cannot be changed.
    static let is_readable = G_IO_FLAG_IS_READABLE /* 4 */
    /// indicates that the io channel is writable.
    ///     This flag cannot be changed.
    static let is_writable = G_IO_FLAG_IS_WRITABLE /* 8 */
    /// a misspelled version of `G_IO_FLAG_IS_WRITABLE`
    ///     that existed before the spelling was fixed in GLib 2.30. It is kept
    ///     here for compatibility reasons. Deprecated since 2.30
    static let is_writeable = G_IO_FLAG_IS_WRITEABLE /* 8 */
    /// indicates that the io channel is seekable,
    ///     i.e. that g_io_channel_seek_position() can be used on it.
    ///     This flag cannot be changed.
    static let is_seekable = G_IO_FLAG_IS_SEEKABLE /* 16 */
    /// the mask that specifies all the valid flags.
    static let mask = G_IO_FLAG_MASK /* 31 */
    /// the mask of the flags that are returned from
    ///     g_io_channel_get_flags()
    static let get_mask = G_IO_FLAG_GET_MASK /* 31 */
    /// the mask of the flags that the user can modify
    ///     with g_io_channel_set_flags()
    static let set_mask = G_IO_FLAG_SET_MASK /* 3 */
}

/// Flags which influence the parsing.
public typealias KeyFileFlags = GKeyFileFlags

public extension KeyFileFlags {
    /// No flags, default behaviour
    static let none_ = G_KEY_FILE_NONE /* 0 */
    /// Use this flag if you plan to write the
    ///     (possibly modified) contents of the key file back to a file;
    ///     otherwise all comments will be lost when the key file is
    ///     written back.
    static let keep_comments = G_KEY_FILE_KEEP_COMMENTS /* 1 */
    /// Use this flag if you plan to write the
    ///     (possibly modified) contents of the key file back to a file;
    ///     otherwise only the translations for the current language will be
    ///     written back.
    static let keep_translations = G_KEY_FILE_KEEP_TRANSLATIONS /* 2 */
}

/// Flags specifying the level of log messages.
/// 
/// It is possible to change how GLib treats messages of the various
/// levels using g_log_set_handler() and g_log_set_fatal_mask().
public typealias LogLevelFlags = GLogLevelFlags

public extension LogLevelFlags {
    /// internal flag
    static let flag_recursion = G_LOG_FLAG_RECURSION /* 1 */
    /// internal flag
    static let flag_fatal = G_LOG_FLAG_FATAL /* 2 */
    /// log level for errors, see g_error().
    ///     This level is also used for messages produced by g_assert().
    static let level_error = G_LOG_LEVEL_ERROR /* 4 */
    /// log level for critical warning messages, see
    ///     g_critical().
    ///     This level is also used for messages produced by g_return_if_fail()
    ///     and g_return_val_if_fail().
    static let level_critical = G_LOG_LEVEL_CRITICAL /* 8 */
    /// log level for warnings, see g_warning()
    static let level_warning = G_LOG_LEVEL_WARNING /* 16 */
    /// log level for messages, see g_message()
    static let level_message = G_LOG_LEVEL_MESSAGE /* 32 */
    /// log level for informational messages, see g_info()
    static let level_info = G_LOG_LEVEL_INFO /* 64 */
    /// log level for debug messages, see g_debug()
    static let level_debug = G_LOG_LEVEL_DEBUG /* 128 */
    /// a mask including all log levels
    static let level_mask = G_LOG_LEVEL_MASK /* -4 */
}

/// A mixed enumerated type and flags field. You must specify one type
/// (string, strdup, boolean, tristate).  Additionally, you may  optionally
/// bitwise OR the type with the flag `G_MARKUP_COLLECT_OPTIONAL`.
/// 
/// It is likely that this enum will be extended in the future to
/// support other types.
public typealias MarkupCollectType = GMarkupCollectType

public extension MarkupCollectType {
    /// used to terminate the list of attributes
    ///     to collect
    static let invalid = G_MARKUP_COLLECT_INVALID /* 0 */
    /// collect the string pointer directly from
    ///     the attribute_values[] array. Expects a parameter of type (const
    ///     char **). If `G_MARKUP_COLLECT_OPTIONAL` is specified and the
    ///     attribute isn't present then the pointer will be set to `nil`
    static let string = G_MARKUP_COLLECT_STRING /* 1 */
    /// as with `G_MARKUP_COLLECT_STRING`, but
    ///     expects a parameter of type (char **) and g_strdup()s the
    ///     returned pointer. The pointer must be freed with g_free()
    static let strdup = G_MARKUP_COLLECT_STRDUP /* 2 */
    /// expects a parameter of type (gboolean *)
    ///     and parses the attribute value as a boolean. Sets `false` if the
    ///     attribute isn't present. Valid boolean values consist of
    ///     (case-insensitive) "false", "f", "no", "n", "0" and "true", "t",
    ///     "yes", "y", "1"
    static let boolean = G_MARKUP_COLLECT_BOOLEAN /* 3 */
    /// as with `G_MARKUP_COLLECT_BOOLEAN`, but
    ///     in the case of a missing attribute a value is set that compares
    ///     equal to neither `false` nor `true` G_MARKUP_COLLECT_OPTIONAL is
    ///     implied
    static let tristate = G_MARKUP_COLLECT_TRISTATE /* 4 */
    /// can be bitwise ORed with the other fields.
    ///     If present, allows the attribute not to appear. A default value
    ///     is set depending on what value type is used
    static let optional_ = G_MARKUP_COLLECT_OPTIONAL /* 65536 */
}

/// Flags that affect the behaviour of the parser.
public typealias MarkupParseFlags = GMarkupParseFlags

public extension MarkupParseFlags {
    /// flag you should not use
    static let do_not_use_this_unsupported_flag = G_MARKUP_DO_NOT_USE_THIS_UNSUPPORTED_FLAG /* 1 */
    /// When this flag is set, CDATA marked
    ///     sections are not passed literally to the `passthrough` function of
    ///     the parser. Instead, the content of the section (without the
    ///     `<![CDATA[` and `]]>`) is
    ///     passed to the `text` function. This flag was added in GLib 2.12
    static let treat_cdata_as_text = G_MARKUP_TREAT_CDATA_AS_TEXT /* 2 */
    /// Normally errors caught by GMarkup
    ///     itself have line/column information prefixed to them to let the
    ///     caller know the location of the error. When this flag is set the
    ///     location information is also prefixed to errors generated by the
    ///     `GMarkupParser` implementation functions
    static let prefix_error_position = G_MARKUP_PREFIX_ERROR_POSITION /* 4 */
    /// Ignore (don't report) qualified
    ///     attributes and tags, along with their contents.  A qualified
    ///     attribute or tag is one that contains ':' in its name (ie: is in
    ///     another namespace).  Since: 2.40.
    static let ignore_qualified = G_MARKUP_IGNORE_QUALIFIED /* 8 */
}

/// Flags which modify individual options.
public typealias OptionFlags = GOptionFlags

public extension OptionFlags {
    /// No flags. Since: 2.42.
    static let none_ = G_OPTION_FLAG_NONE /* 0 */
    /// The option doesn't appear in `--help` output.
    static let hidden = G_OPTION_FLAG_HIDDEN /* 1 */
    /// The option appears in the main section of the
    ///     `--help` output, even if it is defined in a group.
    static let in_main = G_OPTION_FLAG_IN_MAIN /* 2 */
    /// For options of the `G_OPTION_ARG_NONE` kind, this
    ///     flag indicates that the sense of the option is reversed.
    static let reverse = G_OPTION_FLAG_REVERSE /* 4 */
    /// For options of the `G_OPTION_ARG_CALLBACK` kind,
    ///     this flag indicates that the callback does not take any argument
    ///     (like a `G_OPTION_ARG_NONE` option). Since 2.8
    static let no_arg = G_OPTION_FLAG_NO_ARG /* 8 */
    /// For options of the `G_OPTION_ARG_CALLBACK`
    ///     kind, this flag indicates that the argument should be passed to the
    ///     callback in the GLib filename encoding rather than UTF-8. Since 2.8
    static let filename = G_OPTION_FLAG_FILENAME /* 16 */
    /// For options of the `G_OPTION_ARG_CALLBACK`
    ///     kind, this flag indicates that the argument supply is optional.
    ///     If no argument is given then data of `GOptionParseFunc` will be
    ///     set to NULL. Since 2.8
    static let optional_arg = G_OPTION_FLAG_OPTIONAL_ARG /* 32 */
    /// This flag turns off the automatic conflict
    ///     resolution which prefixes long option names with `groupname-` if
    ///     there is a conflict. This option should only be used in situations
    ///     where aliasing is necessary to model some legacy commandline interface.
    ///     It is not safe to use this option, unless all option groups are under
    ///     your direct control. Since 2.8.
    static let noalias = G_OPTION_FLAG_NOALIAS /* 64 */
}

/// Flags specifying compile-time options.
public typealias RegexCompileFlags = GRegexCompileFlags

public extension RegexCompileFlags {
    /// Letters in the pattern match both upper- and
    ///     lowercase letters. This option can be changed within a pattern
    ///     by a "(?i)" option setting.
    static let caseless = G_REGEX_CASELESS /* 1 */
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
    static let multiline = G_REGEX_MULTILINE /* 2 */
    /// A dot metacharacter (".") in the pattern matches all
    ///     characters, including newlines. Without it, newlines are excluded.
    ///     This option can be changed within a pattern by a ("?s") option setting.
    static let dotall = G_REGEX_DOTALL /* 4 */
    /// Whitespace data characters in the pattern are
    ///     totally ignored except when escaped or inside a character class.
    ///     Whitespace does not include the VT character (code 11). In addition,
    ///     characters between an unescaped "``" outside a character class and
    ///     the next newline character, inclusive, are also ignored. This can
    ///     be changed within a pattern by a "(?x)" option setting.
    static let extended = G_REGEX_EXTENDED /* 8 */
    /// The pattern is forced to be "anchored", that is,
    ///     it is constrained to match only at the first matching point in the
    ///     string that is being searched. This effect can also be achieved by
    ///     appropriate constructs in the pattern itself such as the "^"
    ///     metacharacter.
    static let anchored = G_REGEX_ANCHORED /* 16 */
    /// A dollar metacharacter ("$") in the pattern
    ///     matches only at the end of the string. Without this option, a
    ///     dollar also matches immediately before the final character if
    ///     it is a newline (but not before any other newlines). This option
    ///     is ignored if `G_REGEX_MULTILINE` is set.
    static let dollar_endonly = G_REGEX_DOLLAR_ENDONLY /* 32 */
    /// Inverts the "greediness" of the quantifiers so that
    ///     they are not greedy by default, but become greedy if followed by "?".
    ///     It can also be set by a "(?U)" option setting within the pattern.
    static let ungreedy = G_REGEX_UNGREEDY /* 512 */
    /// Usually strings must be valid UTF-8 strings, using this
    ///     flag they are considered as a raw sequence of bytes.
    static let raw = G_REGEX_RAW /* 2048 */
    /// Disables the use of numbered capturing
    ///     parentheses in the pattern. Any opening parenthesis that is not
    ///     followed by "?" behaves as if it were followed by "?:" but named
    ///     parentheses can still be used for capturing (and they acquire numbers
    ///     in the usual way).
    static let no_auto_capture = G_REGEX_NO_AUTO_CAPTURE /* 4096 */
    /// Optimize the regular expression. If the pattern will
    ///     be used many times, then it may be worth the effort to optimize it
    ///     to improve the speed of matches.
    static let optimize = G_REGEX_OPTIMIZE /* 8192 */
    /// Limits an unanchored pattern to match before (or at) the
    ///     first newline. Since: 2.34
    static let firstline = G_REGEX_FIRSTLINE /* 262144 */
    /// Names used to identify capturing subpatterns need not
    ///     be unique. This can be helpful for certain types of pattern when it
    ///     is known that only one instance of the named subpattern can ever be
    ///     matched.
    static let dupnames = G_REGEX_DUPNAMES /* 524288 */
    /// Usually any newline character or character sequence is
    ///     recognized. If this option is set, the only recognized newline character
    ///     is '\r'.
    static let newline_cr = G_REGEX_NEWLINE_CR /* 1048576 */
    /// Usually any newline character or character sequence is
    ///     recognized. If this option is set, the only recognized newline character
    ///     is '\n'.
    static let newline_lf = G_REGEX_NEWLINE_LF /* 2097152 */
    /// Usually any newline character or character sequence is
    ///     recognized. If this option is set, the only recognized newline character
    ///     sequence is '\r\n'.
    static let newline_crlf = G_REGEX_NEWLINE_CRLF /* 3145728 */
    /// Usually any newline character or character sequence
    ///     is recognized. If this option is set, the only recognized newline character
    ///     sequences are '\r', '\n', and '\r\n'. Since: 2.34
    static let newline_anycrlf = G_REGEX_NEWLINE_ANYCRLF /* 5242880 */
    /// Usually any newline character or character sequence
    ///     is recognised. If this option is set, then "\R" only recognizes the newline
    ///    characters '\r', '\n' and '\r\n'. Since: 2.34
    static let bsr_anycrlf = G_REGEX_BSR_ANYCRLF /* 8388608 */
    /// Changes behaviour so that it is compatible with
    ///     JavaScript rather than PCRE. Since: 2.34
    static let javascript_compat = G_REGEX_JAVASCRIPT_COMPAT /* 33554432 */
}

/// Flags specifying match-time options.
public typealias RegexMatchFlags = GRegexMatchFlags

public extension RegexMatchFlags {
    /// The pattern is forced to be "anchored", that is,
    ///     it is constrained to match only at the first matching point in the
    ///     string that is being searched. This effect can also be achieved by
    ///     appropriate constructs in the pattern itself such as the "^"
    ///     metacharacter.
    static let anchored = G_REGEX_MATCH_ANCHORED /* 16 */
    /// Specifies that first character of the string is
    ///     not the beginning of a line, so the circumflex metacharacter should
    ///     not match before it. Setting this without `G_REGEX_MULTILINE` (at
    ///     compile time) causes circumflex never to match. This option affects
    ///     only the behaviour of the circumflex metacharacter, it does not
    ///     affect "\A".
    static let notbol = G_REGEX_MATCH_NOTBOL /* 128 */
    /// Specifies that the end of the subject string is
    ///     not the end of a line, so the dollar metacharacter should not match
    ///     it nor (except in multiline mode) a newline immediately before it.
    ///     Setting this without `G_REGEX_MULTILINE` (at compile time) causes
    ///     dollar never to match. This option affects only the behaviour of
    ///     the dollar metacharacter, it does not affect "\Z" or "\z".
    static let noteol = G_REGEX_MATCH_NOTEOL /* 256 */
    /// An empty string is not considered to be a valid
    ///     match if this option is set. If there are alternatives in the pattern,
    ///     they are tried. If all the alternatives match the empty string, the
    ///     entire match fails. For example, if the pattern "a?b?" is applied to
    ///     a string not beginning with "a" or "b", it matches the empty string
    ///     at the start of the string. With this flag set, this match is not
    ///     valid, so GRegex searches further into the string for occurrences
    ///     of "a" or "b".
    static let notempty = G_REGEX_MATCH_NOTEMPTY /* 1024 */
    /// Turns on the partial matching feature, for more
    ///     documentation on partial matching see g_match_info_is_partial_match().
    static let partial = G_REGEX_MATCH_PARTIAL /* 32768 */
    /// Overrides the newline definition set when
    ///     creating a new `GRegex`, setting the '\r' character as line terminator.
    static let newline_cr = G_REGEX_MATCH_NEWLINE_CR /* 1048576 */
    /// Overrides the newline definition set when
    ///     creating a new `GRegex`, setting the '\n' character as line terminator.
    static let newline_lf = G_REGEX_MATCH_NEWLINE_LF /* 2097152 */
    /// Overrides the newline definition set when
    ///     creating a new `GRegex`, setting the '\r\n' characters sequence as line terminator.
    static let newline_crlf = G_REGEX_MATCH_NEWLINE_CRLF /* 3145728 */
    /// Overrides the newline definition set when
    ///     creating a new `GRegex`, any Unicode newline sequence
    ///     is recognised as a newline. These are '\r', '\n' and '\rn', and the
    ///     single characters U+000B LINE TABULATION, U+000C FORM FEED (FF),
    ///     U+0085 NEXT LINE (NEL), U+2028 LINE SEPARATOR and
    ///     U+2029 PARAGRAPH SEPARATOR.
    static let newline_any = G_REGEX_MATCH_NEWLINE_ANY /* 4194304 */
    /// Overrides the newline definition set when
    ///     creating a new `GRegex`; any '\r', '\n', or '\r\n' character sequence
    ///     is recognized as a newline. Since: 2.34
    static let newline_anycrlf = G_REGEX_MATCH_NEWLINE_ANYCRLF /* 5242880 */
    /// Overrides the newline definition for "\R" set when
    ///     creating a new `GRegex`; only '\r', '\n', or '\r\n' character sequences
    ///     are recognized as a newline by "\R". Since: 2.34
    static let bsr_anycrlf = G_REGEX_MATCH_BSR_ANYCRLF /* 8388608 */
    /// Overrides the newline definition for "\R" set when
    ///     creating a new `GRegex`; any Unicode newline character or character sequence
    ///     are recognized as a newline by "\R". These are '\r', '\n' and '\rn', and the
    ///     single characters U+000B LINE TABULATION, U+000C FORM FEED (FF),
    ///     U+0085 NEXT LINE (NEL), U+2028 LINE SEPARATOR and
    ///     U+2029 PARAGRAPH SEPARATOR. Since: 2.34
    static let bsr_any = G_REGEX_MATCH_BSR_ANY /* 16777216 */
    /// An alias for `G_REGEX_MATCH_PARTIAL`. Since: 2.34
    static let partial_soft = G_REGEX_MATCH_PARTIAL_SOFT /* 32768 */
    /// Turns on the partial matching feature. In contrast to
    ///     to `G_REGEX_MATCH_PARTIAL_SOFT`, this stops matching as soon as a partial match
    ///     is found, without continuing to search for a possible complete match. See
    ///     g_match_info_is_partial_match() for more information. Since: 2.34
    static let partial_hard = G_REGEX_MATCH_PARTIAL_HARD /* 134217728 */
    /// Like `G_REGEX_MATCH_NOTEMPTY`, but only applied to
    ///     the start of the matched string. For anchored
    ///     patterns this can only happen for pattern containing "\K". Since: 2.34
    static let notempty_atstart = G_REGEX_MATCH_NOTEMPTY_ATSTART /* 268435456 */
}

/// Flags passed to g_spawn_sync(), g_spawn_async() and g_spawn_async_with_pipes().
public typealias SpawnFlags = GSpawnFlags

public extension SpawnFlags {
    /// no flags, default behaviour
    static let default_ = G_SPAWN_DEFAULT /* 0 */
    /// the parent's open file descriptors will
    ///     be inherited by the child; otherwise all descriptors except stdin,
    ///     stdout and stderr will be closed before calling exec() in the child.
    static let leave_descriptors_open = G_SPAWN_LEAVE_DESCRIPTORS_OPEN /* 1 */
    /// the child will not be automatically reaped;
    ///     you must use g_child_watch_add() yourself (or call waitpid() or handle
    ///     `SIGCHLD` yourself), or the child will become a zombie.
    static let do_not_reap_child = G_SPAWN_DO_NOT_REAP_CHILD /* 2 */
    /// `argv[0]` need not be an absolute path, it will be
    ///     looked for in the user's `PATH`.
    static let search_path = G_SPAWN_SEARCH_PATH /* 4 */
    /// the child's standard output will be discarded,
    ///     instead of going to the same location as the parent's standard output.
    static let stdout_to_dev_null = G_SPAWN_STDOUT_TO_DEV_NULL /* 8 */
    /// the child's standard error will be discarded.
    static let stderr_to_dev_null = G_SPAWN_STDERR_TO_DEV_NULL /* 16 */
    /// the child will inherit the parent's standard
    ///     input (by default, the child's standard input is attached to `/dev/null`).
    static let child_inherits_stdin = G_SPAWN_CHILD_INHERITS_STDIN /* 32 */
    /// the first element of `argv` is the file to
    ///     execute, while the remaining elements are the actual argument vector
    ///     to pass to the file. Normally g_spawn_async_with_pipes() uses `argv[0]`
    ///     as the file to execute, and passes all of `argv` to the child.
    static let file_and_argv_zero = G_SPAWN_FILE_AND_ARGV_ZERO /* 64 */
    /// if `argv[0]` is not an abolute path,
    ///     it will be looked for in the `PATH` from the passed child environment.
    ///     Since: 2.34
    static let search_path_from_envp = G_SPAWN_SEARCH_PATH_FROM_ENVP /* 128 */
    /// create all pipes with the `O_CLOEXEC` flag set.
    ///     Since: 2.40
    static let cloexec_pipes = G_SPAWN_CLOEXEC_PIPES /* 256 */
}

/// Flags to pass to g_test_trap_subprocess() to control input and output.
/// 
/// Note that in contrast with g_test_trap_fork(), the default is to
/// not show stdout and stderr.
public typealias TestSubprocessFlags = GTestSubprocessFlags

public extension TestSubprocessFlags {
    /// If this flag is given, the child
    ///     process will inherit the parent's stdin. Otherwise, the child's
    ///     stdin is redirected to `/dev/null`.
    static let stdin = G_TEST_SUBPROCESS_INHERIT_STDIN /* 1 */
    /// If this flag is given, the child
    ///     process will inherit the parent's stdout. Otherwise, the child's
    ///     stdout will not be visible, but it will be captured to allow
    ///     later tests with g_test_trap_assert_stdout().
    static let stdout = G_TEST_SUBPROCESS_INHERIT_STDOUT /* 2 */
    /// If this flag is given, the child
    ///     process will inherit the parent's stderr. Otherwise, the child's
    ///     stderr will not be visible, but it will be captured to allow
    ///     later tests with g_test_trap_assert_stderr().
    static let stderr = G_TEST_SUBPROCESS_INHERIT_STDERR /* 4 */
}

/// Test traps are guards around forked tests.
/// These flags determine what traps to set.
///
/// **TestTrapFlags is deprecated:**
/// #GTestTrapFlags is used only with g_test_trap_fork(),
/// which is deprecated. g_test_trap_subprocess() uses
/// #GTestSubprocessFlags.
public typealias TestTrapFlags = GTestTrapFlags

public extension TestTrapFlags {
    /// Redirect stdout of the test child to
    ///     `/dev/null` so it cannot be observed on the console during test
    ///     runs. The actual output is still captured though to allow later
    ///     tests with g_test_trap_assert_stdout().
    static let silence_stdout = G_TEST_TRAP_SILENCE_STDOUT /* 128 */
    /// Redirect stderr of the test child to
    ///     `/dev/null` so it cannot be observed on the console during test
    ///     runs. The actual output is still captured though to allow later
    ///     tests with g_test_trap_assert_stderr().
    static let silence_stderr = G_TEST_TRAP_SILENCE_STDERR /* 256 */
    /// If this flag is given, stdin of the
    ///     child process is shared with stdin of its parent process.
    ///     It is redirected to `/dev/null` otherwise.
    static let inherit_stdin = G_TEST_TRAP_INHERIT_STDIN /* 512 */
}

/// Specifies which nodes are visited during several of the tree
/// functions, including g_node_traverse() and g_node_find().
public typealias TraverseFlags = GTraverseFlags

public extension TraverseFlags {
    /// only leaf nodes should be visited. This name has
    ///                     been introduced in 2.6, for older version use
    ///                     `G_TRAVERSE_LEAFS`.
    static let leaves = G_TRAVERSE_LEAVES /* 1 */
    /// only non-leaf nodes should be visited. This
    ///                         name has been introduced in 2.6, for older
    ///                         version use `G_TRAVERSE_NON_LEAFS`.
    static let non_leaves = G_TRAVERSE_NON_LEAVES /* 2 */
    /// all nodes should be visited.
    static let all = G_TRAVERSE_ALL /* 3 */
    /// a mask of all traverse flags.
    static let mask = G_TRAVERSE_MASK /* 3 */
    /// identical to `G_TRAVERSE_LEAVES`.
    static let leafs = G_TRAVERSE_LEAFS /* 1 */
    /// identical to `G_TRAVERSE_NON_LEAVES`.
    static let non_leafs = G_TRAVERSE_NON_LEAFS /* 2 */
}
