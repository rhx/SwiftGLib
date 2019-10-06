import CGLib

/// Error codes returned by bookmark file parsing.
public typealias BookmarkFileError = GBookmarkFileError

public extension BookmarkFileError {
    /// URI was ill-formed
    static let invalid_uri = G_BOOKMARK_FILE_ERROR_INVALID_URI /* 0 */
    /// a requested field was not found
    static let invalid_value = G_BOOKMARK_FILE_ERROR_INVALID_VALUE /* 1 */
    /// a requested application did
    ///     not register a bookmark
    static let app_not_registered = G_BOOKMARK_FILE_ERROR_APP_NOT_REGISTERED /* 2 */
    /// a requested URI was not found
    static let uri_not_found = G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND /* 3 */
    /// document was ill formed
    static let read = G_BOOKMARK_FILE_ERROR_READ /* 4 */
    /// the text being parsed was
    ///     in an unknown encoding
    static let unknown_encoding = G_BOOKMARK_FILE_ERROR_UNKNOWN_ENCODING /* 5 */
    /// an error occurred while writing
    static let write = G_BOOKMARK_FILE_ERROR_WRITE /* 6 */
    /// requested file was not found
    static let file_not_found = G_BOOKMARK_FILE_ERROR_FILE_NOT_FOUND /* 7 */
}

/// The hashing algorithm to be used by `GChecksum` when performing the
/// digest of some data.
/// 
/// Note that the `GChecksumType` enumeration may be extended at a later
/// date to include new hashing algorithm types.
public typealias ChecksumType = GChecksumType

public extension ChecksumType {
    /// Use the MD5 hashing algorithm
    static let md5 = G_CHECKSUM_MD5 /* 0 */
    /// Use the SHA-1 hashing algorithm
    static let sha1 = G_CHECKSUM_SHA1 /* 1 */
    /// Use the SHA-256 hashing algorithm
    static let sha256 = G_CHECKSUM_SHA256 /* 2 */
    /// Use the SHA-512 hashing algorithm (Since: 2.36)
    static let sha512 = G_CHECKSUM_SHA512 /* 3 */
    /// Use the SHA-384 hashing algorithm (Since: 2.51)
    static let sha384 = G_CHECKSUM_SHA384 /* 4 */
}

/// Error codes returned by character set conversion routines.
public typealias ConvertError = GConvertError

public extension ConvertError {
    /// Conversion between the requested character
    ///     sets is not supported.
    static let no_conversion = G_CONVERT_ERROR_NO_CONVERSION /* 0 */
    /// Invalid byte sequence in conversion input;
    ///    or the character sequence could not be represented in the target
    ///    character set.
    static let illegal_sequence = G_CONVERT_ERROR_ILLEGAL_SEQUENCE /* 1 */
    /// Conversion failed for some reason.
    static let failed = G_CONVERT_ERROR_FAILED /* 2 */
    /// Partial character sequence at end of input.
    static let partial_input = G_CONVERT_ERROR_PARTIAL_INPUT /* 3 */
    /// URI is invalid.
    static let bad_uri = G_CONVERT_ERROR_BAD_URI /* 4 */
    /// Pathname is not an absolute path.
    static let not_absolute_path = G_CONVERT_ERROR_NOT_ABSOLUTE_PATH /* 5 */
    /// No memory available. Since: 2.40
    static let no_memory = G_CONVERT_ERROR_NO_MEMORY /* 6 */
    /// An embedded NUL character is present in
    ///     conversion output where a NUL-terminated string is expected.
    ///     Since: 2.56
    static let embedded_nul = G_CONVERT_ERROR_EMBEDDED_NUL /* 7 */
}

/// This enumeration isn't used in the API, but may be useful if you need
/// to mark a number as a day, month, or year.
public typealias DateDMY = GDateDMY

public extension DateDMY {
    /// a day
    static let day = G_DATE_DAY /* 0 */
    /// a month
    static let month = G_DATE_MONTH /* 1 */
    /// a year
    static let year = G_DATE_YEAR /* 2 */
}

/// Enumeration representing a month; values are `G_DATE_JANUARY`,
/// `G_DATE_FEBRUARY`, etc. `G_DATE_BAD_MONTH` is the invalid value.
public typealias DateMonth = GDateMonth

public extension DateMonth {
    /// invalid value
    static let bad_month = G_DATE_BAD_MONTH /* 0 */
    /// January
    static let january = G_DATE_JANUARY /* 1 */
    /// February
    static let february = G_DATE_FEBRUARY /* 2 */
    /// March
    static let march = G_DATE_MARCH /* 3 */
    /// April
    static let april = G_DATE_APRIL /* 4 */
    /// May
    static let may = G_DATE_MAY /* 5 */
    /// June
    static let june = G_DATE_JUNE /* 6 */
    /// July
    static let july = G_DATE_JULY /* 7 */
    /// August
    static let august = G_DATE_AUGUST /* 8 */
    /// September
    static let september = G_DATE_SEPTEMBER /* 9 */
    /// October
    static let october = G_DATE_OCTOBER /* 10 */
    /// November
    static let november = G_DATE_NOVEMBER /* 11 */
    /// December
    static let december = G_DATE_DECEMBER /* 12 */
}

/// Enumeration representing a day of the week; `G_DATE_MONDAY`,
/// `G_DATE_TUESDAY`, etc. `G_DATE_BAD_WEEKDAY` is an invalid weekday.
public typealias DateWeekday = GDateWeekday

public extension DateWeekday {
    /// invalid value
    static let bad_weekday = G_DATE_BAD_WEEKDAY /* 0 */
    /// Monday
    static let monday = G_DATE_MONDAY /* 1 */
    /// Tuesday
    static let tuesday = G_DATE_TUESDAY /* 2 */
    /// Wednesday
    static let wednesday = G_DATE_WEDNESDAY /* 3 */
    /// Thursday
    static let thursday = G_DATE_THURSDAY /* 4 */
    /// Friday
    static let friday = G_DATE_FRIDAY /* 5 */
    /// Saturday
    static let saturday = G_DATE_SATURDAY /* 6 */
    /// Sunday
    static let sunday = G_DATE_SUNDAY /* 7 */
}

/// The possible errors, used in the `v_error` field
/// of `GTokenValue`, when the token is a `G_TOKEN_ERROR`.
public typealias ErrorEnum = GErrorType

extension ErrorType: Error {
    /// unknown error
    static let unknown = G_ERR_UNKNOWN /* 0 */
    /// unexpected end of file
    static let unexp_eof = G_ERR_UNEXP_EOF /* 1 */
    /// unterminated string constant
    static let unexp_eof_in_string = G_ERR_UNEXP_EOF_IN_STRING /* 2 */
    /// unterminated comment
    static let unexp_eof_in_comment = G_ERR_UNEXP_EOF_IN_COMMENT /* 3 */
    /// non-digit character in a number
    static let non_digit_in_const = G_ERR_NON_DIGIT_IN_CONST /* 4 */
    /// digit beyond radix in a number
    static let digit_radix = G_ERR_DIGIT_RADIX /* 5 */
    /// non-decimal floating point number
    static let float_radix = G_ERR_FLOAT_RADIX /* 6 */
    /// malformed floating point number
    static let float_malformed = G_ERR_FLOAT_MALFORMED /* 7 */
}

/// Values corresponding to `errno` codes returned from file operations
/// on UNIX. Unlike `errno` codes, GFileError values are available on
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
    static let exist = G_FILE_ERROR_EXIST /* 0 */
    /// File is a directory; you cannot open a directory
    ///     for writing, or create or remove hard links to it.
    static let isdir = G_FILE_ERROR_ISDIR /* 1 */
    /// Permission denied; the file permissions do not
    ///     allow the attempted operation.
    static let acces = G_FILE_ERROR_ACCES /* 2 */
    /// Filename too long.
    static let nametoolong = G_FILE_ERROR_NAMETOOLONG /* 3 */
    /// No such file or directory. This is a "file
    ///     doesn't exist" error for ordinary files that are referenced in
    ///     contexts where they are expected to already exist.
    static let noent = G_FILE_ERROR_NOENT /* 4 */
    /// A file that isn't a directory was specified when
    ///     a directory is required.
    static let notdir = G_FILE_ERROR_NOTDIR /* 5 */
    /// No such device or address. The system tried to
    ///     use the device represented by a file you specified, and it
    ///     couldn't find the device. This can mean that the device file was
    ///     installed incorrectly, or that the physical device is missing or
    ///     not correctly attached to the computer.
    static let nxio = G_FILE_ERROR_NXIO /* 6 */
    /// The underlying file system of the specified file
    ///     does not support memory mapping.
    static let nodev = G_FILE_ERROR_NODEV /* 7 */
    /// The directory containing the new link can't be
    ///     modified because it's on a read-only file system.
    static let rofs = G_FILE_ERROR_ROFS /* 8 */
    /// Text file busy.
    static let txtbsy = G_FILE_ERROR_TXTBSY /* 9 */
    /// You passed in a pointer to bad memory.
    ///     (GLib won't reliably return this, don't pass in pointers to bad
    ///     memory.)
    static let fault = G_FILE_ERROR_FAULT /* 10 */
    /// Too many levels of symbolic links were encountered
    ///     in looking up a file name. This often indicates a cycle of symbolic
    ///     links.
    static let loop = G_FILE_ERROR_LOOP /* 11 */
    /// No space left on device; write operation on a
    ///     file failed because the disk is full.
    static let nospc = G_FILE_ERROR_NOSPC /* 12 */
    /// No memory available. The system cannot allocate
    ///     more virtual memory because its capacity is full.
    static let nomem = G_FILE_ERROR_NOMEM /* 13 */
    /// The current process has too many files open and
    ///     can't open any more. Duplicate descriptors do count toward this
    ///     limit.
    static let mfile = G_FILE_ERROR_MFILE /* 14 */
    /// There are too many distinct file openings in the
    ///     entire system.
    static let nfile = G_FILE_ERROR_NFILE /* 15 */
    /// Bad file descriptor; for example, I/O on a
    ///     descriptor that has been closed or reading from a descriptor open
    ///     only for writing (or vice versa).
    static let badf = G_FILE_ERROR_BADF /* 16 */
    /// Invalid argument. This is used to indicate
    ///     various kinds of problems with passing the wrong argument to a
    ///     library function.
    static let inval = G_FILE_ERROR_INVAL /* 17 */
    /// Broken pipe; there is no process reading from the
    ///     other end of a pipe. Every library function that returns this
    ///     error code also generates a 'SIGPIPE' signal; this signal
    ///     terminates the program if not handled or blocked. Thus, your
    ///     program will never actually see this code unless it has handled
    ///     or blocked 'SIGPIPE'.
    static let pipe = G_FILE_ERROR_PIPE /* 18 */
    /// Resource temporarily unavailable; the call might
    ///     work if you try again later.
    static let again = G_FILE_ERROR_AGAIN /* 19 */
    /// Interrupted function call; an asynchronous signal
    ///     occurred and prevented completion of the call. When this
    ///     happens, you should try the call again.
    static let intr = G_FILE_ERROR_INTR /* 20 */
    /// Input/output error; usually used for physical read
    ///    or write errors. i.e. the disk or other physical device hardware
    ///    is returning errors.
    static let io = G_FILE_ERROR_IO /* 21 */
    /// Operation not permitted; only the owner of the
    ///    file (or other resource) or processes with special privileges can
    ///    perform the operation.
    static let perm = G_FILE_ERROR_PERM /* 22 */
    /// Function not implemented; this indicates that
    ///    the system is missing some functionality.
    static let nosys = G_FILE_ERROR_NOSYS /* 23 */
    /// Does not correspond to a UNIX error code; this
    ///    is the standard "failed for unspecified reason" error code present
    ///    in all `GError` error code enumerations. Returned if no specific
    ///    code applies.
    static let failed = G_FILE_ERROR_FAILED /* 24 */
}

/// Error codes returned by `GIOChannel` operations.
public typealias IOChannelError = GIOChannelError

public extension IOChannelError {
    /// File too large.
    static let fbig = G_IO_CHANNEL_ERROR_FBIG /* 0 */
    /// Invalid argument.
    static let inval = G_IO_CHANNEL_ERROR_INVAL /* 1 */
    /// IO error.
    static let io = G_IO_CHANNEL_ERROR_IO /* 2 */
    /// File is a directory.
    static let isdir = G_IO_CHANNEL_ERROR_ISDIR /* 3 */
    /// No space left on device.
    static let nospc = G_IO_CHANNEL_ERROR_NOSPC /* 4 */
    /// No such device or address.
    static let nxio = G_IO_CHANNEL_ERROR_NXIO /* 5 */
    /// Value too large for defined datatype.
    static let overflow = G_IO_CHANNEL_ERROR_OVERFLOW /* 6 */
    /// Broken pipe.
    static let pipe = G_IO_CHANNEL_ERROR_PIPE /* 7 */
    /// Some other error.
    static let failed = G_IO_CHANNEL_ERROR_FAILED /* 8 */
}

/// `GIOError` is only used by the deprecated functions
/// `g_io_channel_read()`, `g_io_channel_write()`, and `g_io_channel_seek()`.
public typealias IOError = GIOError

public extension IOError {
    /// no error
    static let none_ = G_IO_ERROR_NONE /* 0 */
    /// an EAGAIN error occurred
    static let again = G_IO_ERROR_AGAIN /* 1 */
    /// an EINVAL error occurred
    static let inval = G_IO_ERROR_INVAL /* 2 */
    /// another error occurred
    static let unknown = G_IO_ERROR_UNKNOWN /* 3 */
}

/// Stati returned by most of the `GIOFuncs` functions.
public typealias IOStatus = GIOStatus

public extension IOStatus {
    /// An error occurred.
    static let error = G_IO_STATUS_ERROR /* 0 */
    /// Success.
    static let normal = G_IO_STATUS_NORMAL /* 1 */
    /// End of file.
    static let eof = G_IO_STATUS_EOF /* 2 */
    /// Resource temporarily unavailable.
    static let again = G_IO_STATUS_AGAIN /* 3 */
}

/// Error codes returned by key file parsing.
public typealias KeyFileError = GKeyFileError

public extension KeyFileError {
    /// the text being parsed was in
    ///     an unknown encoding
    static let unknown_encoding = G_KEY_FILE_ERROR_UNKNOWN_ENCODING /* 0 */
    /// document was ill-formed
    static let parse = G_KEY_FILE_ERROR_PARSE /* 1 */
    /// the file was not found
    static let not_found = G_KEY_FILE_ERROR_NOT_FOUND /* 2 */
    /// a requested key was not found
    static let key_not_found = G_KEY_FILE_ERROR_KEY_NOT_FOUND /* 3 */
    /// a requested group was not found
    static let group_not_found = G_KEY_FILE_ERROR_GROUP_NOT_FOUND /* 4 */
    /// a value could not be parsed
    static let invalid_value = G_KEY_FILE_ERROR_INVALID_VALUE /* 5 */
}

/// Return values from `GLogWriterFuncs` to indicate whether the given log entry
/// was successfully handled by the writer, or whether there was an error in
/// handling it (and hence a fallback writer should be used).
/// 
/// If a `GLogWriterFunc` ignores a log entry, it should return
/// `G_LOG_WRITER_HANDLED`.
public typealias LogWriterOutput = GLogWriterOutput

public extension LogWriterOutput {
    /// Log writer has handled the log entry.
    static let handled = G_LOG_WRITER_HANDLED /* 1 */
    /// Log writer could not handle the log entry.
    static let unhandled = G_LOG_WRITER_UNHANDLED /* 0 */
}

/// Error codes returned by markup parsing.
public typealias MarkupError = GMarkupError

public extension MarkupError {
    /// text being parsed was not valid UTF-8
    static let bad_utf8 = G_MARKUP_ERROR_BAD_UTF8 /* 0 */
    /// document contained nothing, or only whitespace
    static let empty = G_MARKUP_ERROR_EMPTY /* 1 */
    /// document was ill-formed
    static let parse = G_MARKUP_ERROR_PARSE /* 2 */
    /// error should be set by `GMarkupParser`
    ///     functions; element wasn't known
    static let unknown_element = G_MARKUP_ERROR_UNKNOWN_ELEMENT /* 3 */
    /// error should be set by `GMarkupParser`
    ///     functions; attribute wasn't known
    static let unknown_attribute = G_MARKUP_ERROR_UNKNOWN_ATTRIBUTE /* 4 */
    /// error should be set by `GMarkupParser`
    ///     functions; content was invalid
    static let invalid_content = G_MARKUP_ERROR_INVALID_CONTENT /* 5 */
    /// error should be set by `GMarkupParser`
    ///     functions; a required attribute was missing
    static let missing_attribute = G_MARKUP_ERROR_MISSING_ATTRIBUTE /* 6 */
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
    static let default_ = G_NORMALIZE_DEFAULT /* 0 */
    /// another name for `G_NORMALIZE_DEFAULT`
    static let nfd = G_NORMALIZE_NFD /* 0 */
    /// like `G_NORMALIZE_DEFAULT`, but with
    ///     composed forms rather than a maximally decomposed form
    static let default_compose = G_NORMALIZE_DEFAULT_COMPOSE /* 1 */
    /// another name for `G_NORMALIZE_DEFAULT_COMPOSE`
    static let nfc = G_NORMALIZE_NFC /* 1 */
    /// beyond `G_NORMALIZE_DEFAULT` also standardize the
    ///     "compatibility" characters in Unicode, such as SUPERSCRIPT THREE
    ///     to the standard forms (in this case DIGIT THREE). Formatting
    ///     information may be lost but for most text operations such
    ///     characters should be considered the same
    static let all = G_NORMALIZE_ALL /* 2 */
    /// another name for `G_NORMALIZE_ALL`
    static let nfkd = G_NORMALIZE_NFKD /* 2 */
    /// like `G_NORMALIZE_ALL`, but with composed
    ///     forms rather than a maximally decomposed form
    static let all_compose = G_NORMALIZE_ALL_COMPOSE /* 3 */
    /// another name for `G_NORMALIZE_ALL_COMPOSE`
    static let nfkc = G_NORMALIZE_NFKC /* 3 */
}

/// Error codes returned by functions converting a string to a number.
public typealias NumberParserError = GNumberParserError

public extension NumberParserError {
    /// String was not a valid number.
    static let invalid = G_NUMBER_PARSER_ERROR_INVALID /* 0 */
    /// String was a number, but out of bounds.
    static let out_of_bounds = G_NUMBER_PARSER_ERROR_OUT_OF_BOUNDS /* 1 */
}

/// The possible statuses of a one-time initialization function
/// controlled by a `GOnce` struct.
public typealias OnceStatus = GOnceStatus

public extension OnceStatus {
    /// the function has not been called yet.
    static let notcalled = G_ONCE_STATUS_NOTCALLED /* 0 */
    /// the function call is currently in progress.
    static let progress = G_ONCE_STATUS_PROGRESS /* 1 */
    /// the function has been called.
    static let ready = G_ONCE_STATUS_READY /* 2 */
}

/// The `GOptionArg` enum values determine which type of extra argument the
/// options expect to find. If an option expects an extra argument, it can
/// be specified in several ways; with a short option: `-x arg`, with a long
/// option: `--name arg` or combined in a single argument: `--name=arg`.
public typealias OptionArg = GOptionArg

public extension OptionArg {
    /// No extra argument. This is useful for simple flags.
    static let none_ = G_OPTION_ARG_NONE /* 0 */
    /// The option takes a UTF-8 string argument.
    static let string = G_OPTION_ARG_STRING /* 1 */
    /// The option takes an integer argument.
    static let int = G_OPTION_ARG_INT /* 2 */
    /// The option provides a callback (of type
    ///     `GOptionArgFunc`) to parse the extra argument.
    static let callback = G_OPTION_ARG_CALLBACK /* 3 */
    /// The option takes a filename as argument, which will
    ///        be in the GLib filename encoding rather than UTF-8.
    static let filename = G_OPTION_ARG_FILENAME /* 4 */
    /// The option takes a string argument, multiple
    ///     uses of the option are collected into an array of strings.
    static let string_array = G_OPTION_ARG_STRING_ARRAY /* 5 */
    /// The option takes a filename as argument,
    ///     multiple uses of the option are collected into an array of strings.
    static let filename_array = G_OPTION_ARG_FILENAME_ARRAY /* 6 */
    /// The option takes a double argument. The argument
    ///     can be formatted either for the user's locale or for the "C" locale.
    ///     Since 2.12
    static let double = G_OPTION_ARG_DOUBLE /* 7 */
    /// The option takes a 64-bit integer. Like
    ///     `G_OPTION_ARG_INT` but for larger numbers. The number can be in
    ///     decimal base, or in hexadecimal (when prefixed with `0x`, for
    ///     example, `0xffffffff`). Since 2.12
    static let int64 = G_OPTION_ARG_INT64 /* 8 */
}

/// Error codes returned by option parsing.
public typealias OptionError = GOptionError

public extension OptionError {
    /// An option was not known to the parser.
    ///  This error will only be reported, if the parser hasn't been instructed
    ///  to ignore unknown options, see `g_option_context_set_ignore_unknown_options()`.
    static let unknown_option = G_OPTION_ERROR_UNKNOWN_OPTION /* 0 */
    /// A value couldn't be parsed.
    static let bad_value = G_OPTION_ERROR_BAD_VALUE /* 1 */
    /// A `GOptionArgFunc` callback failed.
    static let failed = G_OPTION_ERROR_FAILED /* 2 */
}

/// Error codes returned by regular expressions functions.
public typealias RegexError = GRegexError

public extension RegexError {
    /// Compilation of the regular expression failed.
    static let compile = G_REGEX_ERROR_COMPILE /* 0 */
    /// Optimization of the regular expression failed.
    static let optimize = G_REGEX_ERROR_OPTIMIZE /* 1 */
    /// Replacement failed due to an ill-formed replacement
    ///     string.
    static let replace = G_REGEX_ERROR_REPLACE /* 2 */
    /// The match process failed.
    static let match = G_REGEX_ERROR_MATCH /* 3 */
    /// Internal error of the regular expression engine.
    ///     Since 2.16
    static let internal_ = G_REGEX_ERROR_INTERNAL /* 4 */
    /// "\\" at end of pattern. Since 2.16
    static let stray_backslash = G_REGEX_ERROR_STRAY_BACKSLASH /* 101 */
    /// "\\c" at end of pattern. Since 2.16
    static let missing_control_char = G_REGEX_ERROR_MISSING_CONTROL_CHAR /* 102 */
    /// Unrecognized character follows "\\".
    ///     Since 2.16
    static let unrecognized_escape = G_REGEX_ERROR_UNRECOGNIZED_ESCAPE /* 103 */
    /// Numbers out of order in "{}"
    ///     quantifier. Since 2.16
    static let quantifiers_out_of_order = G_REGEX_ERROR_QUANTIFIERS_OUT_OF_ORDER /* 104 */
    /// Number too big in "{}" quantifier.
    ///     Since 2.16
    static let quantifier_too_big = G_REGEX_ERROR_QUANTIFIER_TOO_BIG /* 105 */
    /// Missing terminating "]" for
    ///     character class. Since 2.16
    static let unterminated_character_class = G_REGEX_ERROR_UNTERMINATED_CHARACTER_CLASS /* 106 */
    /// Invalid escape sequence
    ///     in character class. Since 2.16
    static let invalid_escape_in_character_class = G_REGEX_ERROR_INVALID_ESCAPE_IN_CHARACTER_CLASS /* 107 */
    /// Range out of order in character class.
    ///     Since 2.16
    static let range_out_of_order = G_REGEX_ERROR_RANGE_OUT_OF_ORDER /* 108 */
    /// Nothing to repeat. Since 2.16
    static let nothing_to_repeat = G_REGEX_ERROR_NOTHING_TO_REPEAT /* 109 */
    /// Unrecognized character after "(?",
    ///     "(?<" or "(?P". Since 2.16
    static let unrecognized_character = G_REGEX_ERROR_UNRECOGNIZED_CHARACTER /* 112 */
    /// POSIX named classes are
    ///     supported only within a class. Since 2.16
    static let posix_named_class_outside_class = G_REGEX_ERROR_POSIX_NAMED_CLASS_OUTSIDE_CLASS /* 113 */
    /// Missing terminating ")" or ")"
    ///     without opening "(". Since 2.16
    static let unmatched_parenthesis = G_REGEX_ERROR_UNMATCHED_PARENTHESIS /* 114 */
    /// Reference to non-existent
    ///     subpattern. Since 2.16
    static let inexistent_subpattern_reference = G_REGEX_ERROR_INEXISTENT_SUBPATTERN_REFERENCE /* 115 */
    /// Missing terminating ")" after comment.
    ///     Since 2.16
    static let unterminated_comment = G_REGEX_ERROR_UNTERMINATED_COMMENT /* 118 */
    /// Regular expression too large.
    ///     Since 2.16
    static let expression_too_large = G_REGEX_ERROR_EXPRESSION_TOO_LARGE /* 120 */
    /// Failed to get memory. Since 2.16
    static let memory_error = G_REGEX_ERROR_MEMORY_ERROR /* 121 */
    /// Lookbehind assertion is not
    ///     fixed length. Since 2.16
    static let variable_length_lookbehind = G_REGEX_ERROR_VARIABLE_LENGTH_LOOKBEHIND /* 125 */
    /// Malformed number or name after "(?(".
    ///     Since 2.16
    static let malformed_condition = G_REGEX_ERROR_MALFORMED_CONDITION /* 126 */
    /// Conditional group contains
    ///     more than two branches. Since 2.16
    static let too_many_conditional_branches = G_REGEX_ERROR_TOO_MANY_CONDITIONAL_BRANCHES /* 127 */
    /// Assertion expected after "(?(".
    ///     Since 2.16
    static let assertion_expected = G_REGEX_ERROR_ASSERTION_EXPECTED /* 128 */
    /// Unknown POSIX class name.
    ///     Since 2.16
    static let unknown_posix_class_name = G_REGEX_ERROR_UNKNOWN_POSIX_CLASS_NAME /* 130 */
    /// POSIX collating
    ///     elements are not supported. Since 2.16
    static let posix_collating_elements_not_supported = G_REGEX_ERROR_POSIX_COLLATING_ELEMENTS_NOT_SUPPORTED /* 131 */
    /// Character value in "\\x{...}" sequence
    ///     is too large. Since 2.16
    static let hex_code_too_large = G_REGEX_ERROR_HEX_CODE_TOO_LARGE /* 134 */
    /// Invalid condition "(?(0)". Since 2.16
    static let invalid_condition = G_REGEX_ERROR_INVALID_CONDITION /* 135 */
    /// \\C not allowed in
    ///     lookbehind assertion. Since 2.16
    static let single_byte_match_in_lookbehind = G_REGEX_ERROR_SINGLE_BYTE_MATCH_IN_LOOKBEHIND /* 136 */
    /// Recursive call could loop indefinitely.
    ///     Since 2.16
    static let infinite_loop = G_REGEX_ERROR_INFINITE_LOOP /* 140 */
    /// Missing terminator
    ///     in subpattern name. Since 2.16
    static let missing_subpattern_name_terminator = G_REGEX_ERROR_MISSING_SUBPATTERN_NAME_TERMINATOR /* 142 */
    /// Two named subpatterns have
    ///     the same name. Since 2.16
    static let duplicate_subpattern_name = G_REGEX_ERROR_DUPLICATE_SUBPATTERN_NAME /* 143 */
    /// Malformed "\\P" or "\\p" sequence.
    ///     Since 2.16
    static let malformed_property = G_REGEX_ERROR_MALFORMED_PROPERTY /* 146 */
    /// Unknown property name after "\\P" or
    ///     "\\p". Since 2.16
    static let unknown_property = G_REGEX_ERROR_UNKNOWN_PROPERTY /* 147 */
    /// Subpattern name is too long
    ///     (maximum 32 characters). Since 2.16
    static let subpattern_name_too_long = G_REGEX_ERROR_SUBPATTERN_NAME_TOO_LONG /* 148 */
    /// Too many named subpatterns (maximum
    ///     10,000). Since 2.16
    static let too_many_subpatterns = G_REGEX_ERROR_TOO_MANY_SUBPATTERNS /* 149 */
    /// Octal value is greater than "\\377".
    ///     Since 2.16
    static let invalid_octal_value = G_REGEX_ERROR_INVALID_OCTAL_VALUE /* 151 */
    /// "DEFINE" group contains more
    ///     than one branch. Since 2.16
    static let too_many_branches_in_define = G_REGEX_ERROR_TOO_MANY_BRANCHES_IN_DEFINE /* 154 */
    /// Repeating a "DEFINE" group is not allowed.
    ///     This error is never raised. Since: 2.16 Deprecated: 2.34
    static let define_repetion = G_REGEX_ERROR_DEFINE_REPETION /* 155 */
    /// Inconsistent newline options.
    ///     Since 2.16
    static let inconsistent_newline_options = G_REGEX_ERROR_INCONSISTENT_NEWLINE_OPTIONS /* 156 */
    /// "\\g" is not followed by a braced,
    ///      angle-bracketed, or quoted name or number, or by a plain number. Since: 2.16
    static let missing_back_reference = G_REGEX_ERROR_MISSING_BACK_REFERENCE /* 157 */
    /// relative reference must not be zero. Since: 2.34
    static let invalid_relative_reference = G_REGEX_ERROR_INVALID_RELATIVE_REFERENCE /* 158 */
    /// the backtracing
    ///     control verb used does not allow an argument. Since: 2.34
    static let backtracking_control_verb_argument_forbidden = G_REGEX_ERROR_BACKTRACKING_CONTROL_VERB_ARGUMENT_FORBIDDEN /* 159 */
    /// unknown backtracing
    ///     control verb. Since: 2.34
    static let unknown_backtracking_control_verb = G_REGEX_ERROR_UNKNOWN_BACKTRACKING_CONTROL_VERB /* 160 */
    /// number is too big in escape sequence. Since: 2.34
    static let number_too_big = G_REGEX_ERROR_NUMBER_TOO_BIG /* 161 */
    /// Missing subpattern name. Since: 2.34
    static let missing_subpattern_name = G_REGEX_ERROR_MISSING_SUBPATTERN_NAME /* 162 */
    /// Missing digit. Since 2.34
    static let missing_digit = G_REGEX_ERROR_MISSING_DIGIT /* 163 */
    /// In JavaScript compatibility mode,
    ///     "[" is an invalid data character. Since: 2.34
    static let invalid_data_character = G_REGEX_ERROR_INVALID_DATA_CHARACTER /* 164 */
    /// different names for subpatterns of the
    ///     same number are not allowed. Since: 2.34
    static let extra_subpattern_name = G_REGEX_ERROR_EXTRA_SUBPATTERN_NAME /* 165 */
    /// the backtracing control
    ///     verb requires an argument. Since: 2.34
    static let backtracking_control_verb_argument_required = G_REGEX_ERROR_BACKTRACKING_CONTROL_VERB_ARGUMENT_REQUIRED /* 166 */
    /// "\\c" must be followed by an ASCII
    ///     character. Since: 2.34
    static let invalid_control_char = G_REGEX_ERROR_INVALID_CONTROL_CHAR /* 168 */
    /// "\\k" is not followed by a braced, angle-bracketed, or
    ///     quoted name. Since: 2.34
    static let missing_name = G_REGEX_ERROR_MISSING_NAME /* 169 */
    /// "\\N" is not supported in a class. Since: 2.34
    static let not_supported_in_class = G_REGEX_ERROR_NOT_SUPPORTED_IN_CLASS /* 171 */
    /// too many forward references. Since: 2.34
    static let too_many_forward_references = G_REGEX_ERROR_TOO_MANY_FORWARD_REFERENCES /* 172 */
    /// the name is too long in "(*MARK)", "(*PRUNE)",
    ///     "(*SKIP)", or "(*THEN)". Since: 2.34
    static let name_too_long = G_REGEX_ERROR_NAME_TOO_LONG /* 175 */
    /// the character value in the \\u sequence is
    ///     too large. Since: 2.34
    static let character_value_too_large = G_REGEX_ERROR_CHARACTER_VALUE_TOO_LARGE /* 176 */
}

/// An enumeration specifying the base position for a
/// `g_io_channel_seek_position()` operation.
public typealias SeekType = GSeekType

public extension SeekType {
    /// the current position in the file.
    static let cur = G_SEEK_CUR /* 0 */
    /// the start of the file.
    static let set = G_SEEK_SET /* 1 */
    /// the end of the file.
    static let end = G_SEEK_END /* 2 */
}

/// Error codes returned by shell functions.
public typealias ShellError = GShellError

public extension ShellError {
    /// Mismatched or otherwise mangled quoting.
    static let bad_quoting = G_SHELL_ERROR_BAD_QUOTING /* 0 */
    /// String to be parsed was empty.
    static let empty_string = G_SHELL_ERROR_EMPTY_STRING /* 1 */
    /// Some other error.
    static let failed = G_SHELL_ERROR_FAILED /* 2 */
}

public typealias SliceConfig = GSliceConfig

public extension SliceConfig {
    static let always_malloc = G_SLICE_CONFIG_ALWAYS_MALLOC /* 1 */
    static let bypass_magazines = G_SLICE_CONFIG_BYPASS_MAGAZINES /* 2 */
    static let working_set_msecs = G_SLICE_CONFIG_WORKING_SET_MSECS /* 3 */
    static let color_increment = G_SLICE_CONFIG_COLOR_INCREMENT /* 4 */
    static let chunk_sizes = G_SLICE_CONFIG_CHUNK_SIZES /* 5 */
    static let contention_counter = G_SLICE_CONFIG_CONTENTION_COUNTER /* 6 */
}

/// Error codes returned by spawning processes.
public typealias SpawnError = GSpawnError

public extension SpawnError {
    /// Fork failed due to lack of memory.
    static let fork = G_SPAWN_ERROR_FORK /* 0 */
    /// Read or select on pipes failed.
    static let read = G_SPAWN_ERROR_READ /* 1 */
    /// Changing to working directory failed.
    static let chdir = G_SPAWN_ERROR_CHDIR /* 2 */
    /// `execv()` returned `EACCES`
    static let acces = G_SPAWN_ERROR_ACCES /* 3 */
    /// `execv()` returned `EPERM`
    static let perm = G_SPAWN_ERROR_PERM /* 4 */
    /// `execv()` returned `E2BIG`
    static let too_big = G_SPAWN_ERROR_TOO_BIG /* 5 */
    /// deprecated alias for `G_SPAWN_ERROR_TOO_BIG` (deprecated since GLib 2.32)
    static let _2big = G_SPAWN_ERROR_2BIG /* 5 */
    /// `execv()` returned `ENOEXEC`
    static let noexec = G_SPAWN_ERROR_NOEXEC /* 6 */
    /// `execv()` returned `ENAMETOOLONG`
    static let nametoolong = G_SPAWN_ERROR_NAMETOOLONG /* 7 */
    /// `execv()` returned `ENOENT`
    static let noent = G_SPAWN_ERROR_NOENT /* 8 */
    /// `execv()` returned `ENOMEM`
    static let nomem = G_SPAWN_ERROR_NOMEM /* 9 */
    /// `execv()` returned `ENOTDIR`
    static let notdir = G_SPAWN_ERROR_NOTDIR /* 10 */
    /// `execv()` returned `ELOOP`
    static let loop = G_SPAWN_ERROR_LOOP /* 11 */
    /// `execv()` returned `ETXTBUSY`
    static let txtbusy = G_SPAWN_ERROR_TXTBUSY /* 12 */
    /// `execv()` returned `EIO`
    static let io = G_SPAWN_ERROR_IO /* 13 */
    /// `execv()` returned `ENFILE`
    static let nfile = G_SPAWN_ERROR_NFILE /* 14 */
    /// `execv()` returned `EMFILE`
    static let mfile = G_SPAWN_ERROR_MFILE /* 15 */
    /// `execv()` returned `EINVAL`
    static let inval = G_SPAWN_ERROR_INVAL /* 16 */
    /// `execv()` returned `EISDIR`
    static let isdir = G_SPAWN_ERROR_ISDIR /* 17 */
    /// `execv()` returned `ELIBBAD`
    static let libbad = G_SPAWN_ERROR_LIBBAD /* 18 */
    /// Some other fatal failure,
    ///   `error->message` should explain.
    static let failed = G_SPAWN_ERROR_FAILED /* 19 */
}

/// The type of file to return the filename for, when used with
/// `g_test_build_filename()`.
/// 
/// These two options correspond rather directly to the 'dist' and
/// 'built' terminology that automake uses and are explicitly used to
/// distinguish between the 'srcdir' and 'builddir' being separate.  All
/// files in your project should either be dist (in the
/// `EXTRA_DIST` or `dist_schema_DATA`
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
    static let dist = G_TEST_DIST /* 0 */
    /// a file that was built on the compiling machine
    static let built = G_TEST_BUILT /* 1 */
}

public typealias TestLogType = GTestLogType

public extension TestLogType {
    static let none_ = G_TEST_LOG_NONE /* 0 */
    static let error = G_TEST_LOG_ERROR /* 1 */
    static let start_binary = G_TEST_LOG_START_BINARY /* 2 */
    static let list_case = G_TEST_LOG_LIST_CASE /* 3 */
    static let skip_case = G_TEST_LOG_SKIP_CASE /* 4 */
    static let start_case = G_TEST_LOG_START_CASE /* 5 */
    static let stop_case = G_TEST_LOG_STOP_CASE /* 6 */
    static let min_result = G_TEST_LOG_MIN_RESULT /* 7 */
    static let max_result = G_TEST_LOG_MAX_RESULT /* 8 */
    static let message = G_TEST_LOG_MESSAGE /* 9 */
    static let start_suite = G_TEST_LOG_START_SUITE /* 10 */
    static let stop_suite = G_TEST_LOG_STOP_SUITE /* 11 */
}

public typealias TestResult = GTestResult

public extension TestResult {
    static let success = G_TEST_RUN_SUCCESS /* 0 */
    static let skipped = G_TEST_RUN_SKIPPED /* 1 */
    static let failure = G_TEST_RUN_FAILURE /* 2 */
    static let incomplete = G_TEST_RUN_INCOMPLETE /* 3 */
}

/// Possible errors of thread related functions.
public typealias ThreadError = GThreadError

public extension ThreadError {
    /// a thread couldn't be created due to resource
    ///                        shortage. Try again later.
    static let thread_error_again = G_THREAD_ERROR_AGAIN /* 0 */
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
    static let standard = G_TIME_TYPE_STANDARD /* 0 */
    /// the time is in local daylight time
    static let daylight = G_TIME_TYPE_DAYLIGHT /* 1 */
    /// the time is in UTC
    static let universal = G_TIME_TYPE_UNIVERSAL /* 2 */
}

/// The possible types of token returned from each
/// `g_scanner_get_next_token()` call.
public typealias TokenType = GTokenType

public extension TokenType {
    /// the end of the file
    static let eof = G_TOKEN_EOF /* 0 */
    /// a '(' character
    static let left_paren = G_TOKEN_LEFT_PAREN /* 40 */
    /// a ')' character
    static let right_paren = G_TOKEN_RIGHT_PAREN /* 41 */
    /// a '{' character
    static let left_curly = G_TOKEN_LEFT_CURLY /* 123 */
    /// a '}' character
    static let right_curly = G_TOKEN_RIGHT_CURLY /* 125 */
    /// a '[' character
    static let left_brace = G_TOKEN_LEFT_BRACE /* 91 */
    /// a ']' character
    static let right_brace = G_TOKEN_RIGHT_BRACE /* 93 */
    /// a '=' character
    static let equal_sign = G_TOKEN_EQUAL_SIGN /* 61 */
    /// a ',' character
    static let comma = G_TOKEN_COMMA /* 44 */
    /// not a token
    static let none_ = G_TOKEN_NONE /* 256 */
    /// an error occurred
    static let error = G_TOKEN_ERROR /* 257 */
    /// a character
    static let char = G_TOKEN_CHAR /* 258 */
    /// a binary integer
    static let binary = G_TOKEN_BINARY /* 259 */
    /// an octal integer
    static let octal = G_TOKEN_OCTAL /* 260 */
    /// an integer
    static let int = G_TOKEN_INT /* 261 */
    /// a hex integer
    static let hex = G_TOKEN_HEX /* 262 */
    /// a floating point number
    static let float = G_TOKEN_FLOAT /* 263 */
    /// a string
    static let string = G_TOKEN_STRING /* 264 */
    /// a symbol
    static let symbol = G_TOKEN_SYMBOL /* 265 */
    /// an identifier
    static let identifier = G_TOKEN_IDENTIFIER /* 266 */
    /// a null identifier
    static let identifier_null = G_TOKEN_IDENTIFIER_NULL /* 267 */
    /// one line comment
    static let comment_single = G_TOKEN_COMMENT_SINGLE /* 268 */
    /// multi line comment
    static let comment_multi = G_TOKEN_COMMENT_MULTI /* 269 */
}

/// Specifies the type of traveral performed by `g_tree_traverse()`,
/// `g_node_traverse()` and `g_node_find()`. The different orders are
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
    static let in_order = G_IN_ORDER /* 0 */
    /// visits a node, then its children.
    static let pre_order = G_PRE_ORDER /* 1 */
    /// visits the node's children, then the node itself.
    static let post_order = G_POST_ORDER /* 2 */
    /// is not implemented for
    ///              [balanced binary trees][glib-Balanced-Binary-Trees].
    ///              For [n-ary trees][glib-N-ary-Trees], it
    ///              vists the root node first, then its children, then
    ///              its grandchildren, and so on. Note that this is less
    ///              efficient than the other orders.
    static let level_order = G_LEVEL_ORDER /* 3 */
}

/// These are the possible line break classifications.
/// 
/// Since new unicode versions may add new types here, applications should be ready
/// to handle unknown values. They may be regarded as `G_UNICODE_BREAK_UNKNOWN`.
/// 
/// See [Unicode Line Breaking Algorithm](http://www.unicode.org/unicode/reports/tr14/).
public typealias UnicodeBreakType = GUnicodeBreakType

public extension UnicodeBreakType {
    /// Mandatory Break (BK)
    static let mandatory = G_UNICODE_BREAK_MANDATORY /* 0 */
    /// Carriage Return (CR)
    static let carriage_return = G_UNICODE_BREAK_CARRIAGE_RETURN /* 1 */
    /// Line Feed (LF)
    static let line_feed = G_UNICODE_BREAK_LINE_FEED /* 2 */
    /// Attached Characters and Combining Marks (CM)
    static let combining_mark = G_UNICODE_BREAK_COMBINING_MARK /* 3 */
    /// Surrogates (SG)
    static let surrogate = G_UNICODE_BREAK_SURROGATE /* 4 */
    /// Zero Width Space (ZW)
    static let zero_width_space = G_UNICODE_BREAK_ZERO_WIDTH_SPACE /* 5 */
    /// Inseparable (IN)
    static let inseparable = G_UNICODE_BREAK_INSEPARABLE /* 6 */
    /// Non-breaking ("Glue") (GL)
    static let non_breaking_glue = G_UNICODE_BREAK_NON_BREAKING_GLUE /* 7 */
    /// Contingent Break Opportunity (CB)
    static let contingent = G_UNICODE_BREAK_CONTINGENT /* 8 */
    /// Space (SP)
    static let space = G_UNICODE_BREAK_SPACE /* 9 */
    /// Break Opportunity After (BA)
    static let after = G_UNICODE_BREAK_AFTER /* 10 */
    /// Break Opportunity Before (BB)
    static let before = G_UNICODE_BREAK_BEFORE /* 11 */
    /// Break Opportunity Before and After (B2)
    static let before_and_after = G_UNICODE_BREAK_BEFORE_AND_AFTER /* 12 */
    /// Hyphen (HY)
    static let hyphen = G_UNICODE_BREAK_HYPHEN /* 13 */
    /// Nonstarter (NS)
    static let non_starter = G_UNICODE_BREAK_NON_STARTER /* 14 */
    /// Opening Punctuation (OP)
    static let open_punctuation = G_UNICODE_BREAK_OPEN_PUNCTUATION /* 15 */
    /// Closing Punctuation (CL)
    static let close_punctuation = G_UNICODE_BREAK_CLOSE_PUNCTUATION /* 16 */
    /// Ambiguous Quotation (QU)
    static let quotation = G_UNICODE_BREAK_QUOTATION /* 17 */
    /// Exclamation/Interrogation (EX)
    static let exclamation = G_UNICODE_BREAK_EXCLAMATION /* 18 */
    /// IDeographic (ID)
    static let ideographic = G_UNICODE_BREAK_IDEOGRAPHIC /* 19 */
    /// Numeric (NU)
    static let numeric = G_UNICODE_BREAK_NUMERIC /* 20 */
    /// Infix Separator (Numeric) (IS)
    static let infix_separator = G_UNICODE_BREAK_INFIX_SEPARATOR /* 21 */
    /// Symbols Allowing Break After (SY)
    static let symbol = G_UNICODE_BREAK_SYMBOL /* 22 */
    /// Ordinary Alphabetic and Symbol Characters (AL)
    static let alphabetic = G_UNICODE_BREAK_ALPHABETIC /* 23 */
    /// Prefix (Numeric) (PR)
    static let prefix_ = G_UNICODE_BREAK_PREFIX /* 24 */
    /// Postfix (Numeric) (PO)
    static let postfix_ = G_UNICODE_BREAK_POSTFIX /* 25 */
    /// Complex Content Dependent (South East Asian) (SA)
    static let complex_context = G_UNICODE_BREAK_COMPLEX_CONTEXT /* 26 */
    /// Ambiguous (Alphabetic or IDeographic) (AI)
    static let ambiguous = G_UNICODE_BREAK_AMBIGUOUS /* 27 */
    /// Unknown (XX)
    static let unknown = G_UNICODE_BREAK_UNKNOWN /* 28 */
    /// Next Line (NL)
    static let next_line = G_UNICODE_BREAK_NEXT_LINE /* 29 */
    /// Word Joiner (WJ)
    static let word_joiner = G_UNICODE_BREAK_WORD_JOINER /* 30 */
    /// Hangul L Jamo (JL)
    static let hangul_l_jamo = G_UNICODE_BREAK_HANGUL_L_JAMO /* 31 */
    /// Hangul V Jamo (JV)
    static let hangul_v_jamo = G_UNICODE_BREAK_HANGUL_V_JAMO /* 32 */
    /// Hangul T Jamo (JT)
    static let hangul_t_jamo = G_UNICODE_BREAK_HANGUL_T_JAMO /* 33 */
    /// Hangul LV Syllable (H2)
    static let hangul_lv_syllable = G_UNICODE_BREAK_HANGUL_LV_SYLLABLE /* 34 */
    /// Hangul LVT Syllable (H3)
    static let hangul_lvt_syllable = G_UNICODE_BREAK_HANGUL_LVT_SYLLABLE /* 35 */
    /// Closing Parenthesis (CP). Since 2.28
    static let close_paranthesis = G_UNICODE_BREAK_CLOSE_PARANTHESIS /* 36 */
    /// Conditional Japanese Starter (CJ). Since: 2.32
    static let conditional_japanese_starter = G_UNICODE_BREAK_CONDITIONAL_JAPANESE_STARTER /* 37 */
    /// Hebrew Letter (HL). Since: 2.32
    static let hebrew_letter = G_UNICODE_BREAK_HEBREW_LETTER /* 38 */
    /// Regional Indicator (RI). Since: 2.36
    static let regional_indicator = G_UNICODE_BREAK_REGIONAL_INDICATOR /* 39 */
    /// Emoji Base (EB). Since: 2.50
    static let emoji_base = G_UNICODE_BREAK_EMOJI_BASE /* 40 */
    /// Emoji Modifier (EM). Since: 2.50
    static let emoji_modifier = G_UNICODE_BREAK_EMOJI_MODIFIER /* 41 */
    /// Zero Width Joiner (ZWJ). Since: 2.50
    static let zero_width_joiner = G_UNICODE_BREAK_ZERO_WIDTH_JOINER /* 42 */
}

/// The `GUnicodeScript` enumeration identifies different writing
/// systems. The values correspond to the names as defined in the
/// Unicode standard. The enumeration has been added in GLib 2.14,
/// and is interchangeable with `PangoScript`.
/// 
/// Note that new types may be added in the future. Applications
/// should be ready to handle unknown values.
/// See [Unicode Standard Annex `24:` Script names](http://www.unicode.org/reports/tr24/).
public typealias UnicodeScript = GUnicodeScript

public extension UnicodeScript {
    /// a value never returned from `g_unichar_get_script()`
    static let invalid_code = G_UNICODE_SCRIPT_INVALID_CODE /* -1 */
    /// a character used by multiple different scripts
    static let common = G_UNICODE_SCRIPT_COMMON /* 0 */
    /// a mark glyph that takes its script from the
    ///                               base glyph to which it is attached
    static let inherited = G_UNICODE_SCRIPT_INHERITED /* 1 */
    /// Arabic
    static let arabic = G_UNICODE_SCRIPT_ARABIC /* 2 */
    /// Armenian
    static let armenian = G_UNICODE_SCRIPT_ARMENIAN /* 3 */
    /// Bengali
    static let bengali = G_UNICODE_SCRIPT_BENGALI /* 4 */
    /// Bopomofo
    static let bopomofo = G_UNICODE_SCRIPT_BOPOMOFO /* 5 */
    /// Cherokee
    static let cherokee = G_UNICODE_SCRIPT_CHEROKEE /* 6 */
    /// Coptic
    static let coptic = G_UNICODE_SCRIPT_COPTIC /* 7 */
    /// Cyrillic
    static let cyrillic = G_UNICODE_SCRIPT_CYRILLIC /* 8 */
    /// Deseret
    static let deseret = G_UNICODE_SCRIPT_DESERET /* 9 */
    /// Devanagari
    static let devanagari = G_UNICODE_SCRIPT_DEVANAGARI /* 10 */
    /// Ethiopic
    static let ethiopic = G_UNICODE_SCRIPT_ETHIOPIC /* 11 */
    /// Georgian
    static let georgian = G_UNICODE_SCRIPT_GEORGIAN /* 12 */
    /// Gothic
    static let gothic = G_UNICODE_SCRIPT_GOTHIC /* 13 */
    /// Greek
    static let greek = G_UNICODE_SCRIPT_GREEK /* 14 */
    /// Gujarati
    static let gujarati = G_UNICODE_SCRIPT_GUJARATI /* 15 */
    /// Gurmukhi
    static let gurmukhi = G_UNICODE_SCRIPT_GURMUKHI /* 16 */
    /// Han
    static let han = G_UNICODE_SCRIPT_HAN /* 17 */
    /// Hangul
    static let hangul = G_UNICODE_SCRIPT_HANGUL /* 18 */
    /// Hebrew
    static let hebrew = G_UNICODE_SCRIPT_HEBREW /* 19 */
    /// Hiragana
    static let hiragana = G_UNICODE_SCRIPT_HIRAGANA /* 20 */
    /// Kannada
    static let kannada = G_UNICODE_SCRIPT_KANNADA /* 21 */
    /// Katakana
    static let katakana = G_UNICODE_SCRIPT_KATAKANA /* 22 */
    /// Khmer
    static let khmer = G_UNICODE_SCRIPT_KHMER /* 23 */
    /// Lao
    static let lao = G_UNICODE_SCRIPT_LAO /* 24 */
    /// Latin
    static let latin = G_UNICODE_SCRIPT_LATIN /* 25 */
    /// Malayalam
    static let malayalam = G_UNICODE_SCRIPT_MALAYALAM /* 26 */
    /// Mongolian
    static let mongolian = G_UNICODE_SCRIPT_MONGOLIAN /* 27 */
    /// Myanmar
    static let myanmar = G_UNICODE_SCRIPT_MYANMAR /* 28 */
    /// Ogham
    static let ogham = G_UNICODE_SCRIPT_OGHAM /* 29 */
    /// Old Italic
    static let old_italic = G_UNICODE_SCRIPT_OLD_ITALIC /* 30 */
    /// Oriya
    static let oriya = G_UNICODE_SCRIPT_ORIYA /* 31 */
    /// Runic
    static let runic = G_UNICODE_SCRIPT_RUNIC /* 32 */
    /// Sinhala
    static let sinhala = G_UNICODE_SCRIPT_SINHALA /* 33 */
    /// Syriac
    static let syriac = G_UNICODE_SCRIPT_SYRIAC /* 34 */
    /// Tamil
    static let tamil = G_UNICODE_SCRIPT_TAMIL /* 35 */
    /// Telugu
    static let telugu = G_UNICODE_SCRIPT_TELUGU /* 36 */
    /// Thaana
    static let thaana = G_UNICODE_SCRIPT_THAANA /* 37 */
    /// Thai
    static let thai = G_UNICODE_SCRIPT_THAI /* 38 */
    /// Tibetan
    static let tibetan = G_UNICODE_SCRIPT_TIBETAN /* 39 */
    /// Canadian Aboriginal
    static let canadian_aboriginal = G_UNICODE_SCRIPT_CANADIAN_ABORIGINAL /* 40 */
    /// Yi
    static let yi = G_UNICODE_SCRIPT_YI /* 41 */
    /// Tagalog
    static let tagalog = G_UNICODE_SCRIPT_TAGALOG /* 42 */
    /// Hanunoo
    static let hanunoo = G_UNICODE_SCRIPT_HANUNOO /* 43 */
    /// Buhid
    static let buhid = G_UNICODE_SCRIPT_BUHID /* 44 */
    /// Tagbanwa
    static let tagbanwa = G_UNICODE_SCRIPT_TAGBANWA /* 45 */
    /// Braille
    static let braille = G_UNICODE_SCRIPT_BRAILLE /* 46 */
    /// Cypriot
    static let cypriot = G_UNICODE_SCRIPT_CYPRIOT /* 47 */
    /// Limbu
    static let limbu = G_UNICODE_SCRIPT_LIMBU /* 48 */
    /// Osmanya
    static let osmanya = G_UNICODE_SCRIPT_OSMANYA /* 49 */
    /// Shavian
    static let shavian = G_UNICODE_SCRIPT_SHAVIAN /* 50 */
    /// Linear B
    static let linear_b = G_UNICODE_SCRIPT_LINEAR_B /* 51 */
    /// Tai Le
    static let tai_le = G_UNICODE_SCRIPT_TAI_LE /* 52 */
    /// Ugaritic
    static let ugaritic = G_UNICODE_SCRIPT_UGARITIC /* 53 */
    /// New Tai Lue
    static let new_tai_lue = G_UNICODE_SCRIPT_NEW_TAI_LUE /* 54 */
    /// Buginese
    static let buginese = G_UNICODE_SCRIPT_BUGINESE /* 55 */
    /// Glagolitic
    static let glagolitic = G_UNICODE_SCRIPT_GLAGOLITIC /* 56 */
    /// Tifinagh
    static let tifinagh = G_UNICODE_SCRIPT_TIFINAGH /* 57 */
    /// Syloti Nagri
    static let syloti_nagri = G_UNICODE_SCRIPT_SYLOTI_NAGRI /* 58 */
    /// Old Persian
    static let old_persian = G_UNICODE_SCRIPT_OLD_PERSIAN /* 59 */
    /// Kharoshthi
    static let kharoshthi = G_UNICODE_SCRIPT_KHAROSHTHI /* 60 */
    /// an unassigned code point
    static let unknown = G_UNICODE_SCRIPT_UNKNOWN /* 61 */
    /// Balinese
    static let balinese = G_UNICODE_SCRIPT_BALINESE /* 62 */
    /// Cuneiform
    static let cuneiform = G_UNICODE_SCRIPT_CUNEIFORM /* 63 */
    /// Phoenician
    static let phoenician = G_UNICODE_SCRIPT_PHOENICIAN /* 64 */
    /// Phags-pa
    static let phags_pa = G_UNICODE_SCRIPT_PHAGS_PA /* 65 */
    /// N'Ko
    static let nko = G_UNICODE_SCRIPT_NKO /* 66 */
    /// Kayah Li. Since 2.16.3
    static let kayah_li = G_UNICODE_SCRIPT_KAYAH_LI /* 67 */
    /// Lepcha. Since 2.16.3
    static let lepcha = G_UNICODE_SCRIPT_LEPCHA /* 68 */
    /// Rejang. Since 2.16.3
    static let rejang = G_UNICODE_SCRIPT_REJANG /* 69 */
    /// Sundanese. Since 2.16.3
    static let sundanese = G_UNICODE_SCRIPT_SUNDANESE /* 70 */
    /// Saurashtra. Since 2.16.3
    static let saurashtra = G_UNICODE_SCRIPT_SAURASHTRA /* 71 */
    /// Cham. Since 2.16.3
    static let cham = G_UNICODE_SCRIPT_CHAM /* 72 */
    /// Ol Chiki. Since 2.16.3
    static let ol_chiki = G_UNICODE_SCRIPT_OL_CHIKI /* 73 */
    /// Vai. Since 2.16.3
    static let vai = G_UNICODE_SCRIPT_VAI /* 74 */
    /// Carian. Since 2.16.3
    static let carian = G_UNICODE_SCRIPT_CARIAN /* 75 */
    /// Lycian. Since 2.16.3
    static let lycian = G_UNICODE_SCRIPT_LYCIAN /* 76 */
    /// Lydian. Since 2.16.3
    static let lydian = G_UNICODE_SCRIPT_LYDIAN /* 77 */
    /// Avestan. Since 2.26
    static let avestan = G_UNICODE_SCRIPT_AVESTAN /* 78 */
    /// Bamum. Since 2.26
    static let bamum = G_UNICODE_SCRIPT_BAMUM /* 79 */
    /// Egyptian Hieroglpyhs. Since 2.26
    static let egyptian_hieroglyphs = G_UNICODE_SCRIPT_EGYPTIAN_HIEROGLYPHS /* 80 */
    /// Imperial Aramaic. Since 2.26
    static let imperial_aramaic = G_UNICODE_SCRIPT_IMPERIAL_ARAMAIC /* 81 */
    /// Inscriptional Pahlavi. Since 2.26
    static let inscriptional_pahlavi = G_UNICODE_SCRIPT_INSCRIPTIONAL_PAHLAVI /* 82 */
    /// Inscriptional Parthian. Since 2.26
    static let inscriptional_parthian = G_UNICODE_SCRIPT_INSCRIPTIONAL_PARTHIAN /* 83 */
    /// Javanese. Since 2.26
    static let javanese = G_UNICODE_SCRIPT_JAVANESE /* 84 */
    /// Kaithi. Since 2.26
    static let kaithi = G_UNICODE_SCRIPT_KAITHI /* 85 */
    /// Lisu. Since 2.26
    static let lisu = G_UNICODE_SCRIPT_LISU /* 86 */
    /// Meetei Mayek. Since 2.26
    static let meetei_mayek = G_UNICODE_SCRIPT_MEETEI_MAYEK /* 87 */
    /// Old South Arabian. Since 2.26
    static let old_south_arabian = G_UNICODE_SCRIPT_OLD_SOUTH_ARABIAN /* 88 */
    /// Old Turkic. Since 2.28
    static let old_turkic = G_UNICODE_SCRIPT_OLD_TURKIC /* 89 */
    /// Samaritan. Since 2.26
    static let samaritan = G_UNICODE_SCRIPT_SAMARITAN /* 90 */
    /// Tai Tham. Since 2.26
    static let tai_tham = G_UNICODE_SCRIPT_TAI_THAM /* 91 */
    /// Tai Viet. Since 2.26
    static let tai_viet = G_UNICODE_SCRIPT_TAI_VIET /* 92 */
    /// Batak. Since 2.28
    static let batak = G_UNICODE_SCRIPT_BATAK /* 93 */
    /// Brahmi. Since 2.28
    static let brahmi = G_UNICODE_SCRIPT_BRAHMI /* 94 */
    /// Mandaic. Since 2.28
    static let mandaic = G_UNICODE_SCRIPT_MANDAIC /* 95 */
    /// Chakma. Since: 2.32
    static let chakma = G_UNICODE_SCRIPT_CHAKMA /* 96 */
    /// Meroitic Cursive. Since: 2.32
    static let meroitic_cursive = G_UNICODE_SCRIPT_MEROITIC_CURSIVE /* 97 */
    /// Meroitic Hieroglyphs. Since: 2.32
    static let meroitic_hieroglyphs = G_UNICODE_SCRIPT_MEROITIC_HIEROGLYPHS /* 98 */
    /// Miao. Since: 2.32
    static let miao = G_UNICODE_SCRIPT_MIAO /* 99 */
    /// Sharada. Since: 2.32
    static let sharada = G_UNICODE_SCRIPT_SHARADA /* 100 */
    /// Sora Sompeng. Since: 2.32
    static let sora_sompeng = G_UNICODE_SCRIPT_SORA_SOMPENG /* 101 */
    /// Takri. Since: 2.32
    static let takri = G_UNICODE_SCRIPT_TAKRI /* 102 */
    /// Bassa. Since: 2.42
    static let bassa_vah = G_UNICODE_SCRIPT_BASSA_VAH /* 103 */
    /// Caucasian Albanian. Since: 2.42
    static let caucasian_albanian = G_UNICODE_SCRIPT_CAUCASIAN_ALBANIAN /* 104 */
    /// Duployan. Since: 2.42
    static let duployan = G_UNICODE_SCRIPT_DUPLOYAN /* 105 */
    /// Elbasan. Since: 2.42
    static let elbasan = G_UNICODE_SCRIPT_ELBASAN /* 106 */
    /// Grantha. Since: 2.42
    static let grantha = G_UNICODE_SCRIPT_GRANTHA /* 107 */
    /// Kjohki. Since: 2.42
    static let khojki = G_UNICODE_SCRIPT_KHOJKI /* 108 */
    /// Khudawadi, Sindhi. Since: 2.42
    static let khudawadi = G_UNICODE_SCRIPT_KHUDAWADI /* 109 */
    /// Linear A. Since: 2.42
    static let linear_a = G_UNICODE_SCRIPT_LINEAR_A /* 110 */
    /// Mahajani. Since: 2.42
    static let mahajani = G_UNICODE_SCRIPT_MAHAJANI /* 111 */
    /// Manichaean. Since: 2.42
    static let manichaean = G_UNICODE_SCRIPT_MANICHAEAN /* 112 */
    /// Mende Kikakui. Since: 2.42
    static let mende_kikakui = G_UNICODE_SCRIPT_MENDE_KIKAKUI /* 113 */
    /// Modi. Since: 2.42
    static let modi = G_UNICODE_SCRIPT_MODI /* 114 */
    /// Mro. Since: 2.42
    static let mro = G_UNICODE_SCRIPT_MRO /* 115 */
    /// Nabataean. Since: 2.42
    static let nabataean = G_UNICODE_SCRIPT_NABATAEAN /* 116 */
    /// Old North Arabian. Since: 2.42
    static let old_north_arabian = G_UNICODE_SCRIPT_OLD_NORTH_ARABIAN /* 117 */
    /// Old Permic. Since: 2.42
    static let old_permic = G_UNICODE_SCRIPT_OLD_PERMIC /* 118 */
    /// Pahawh Hmong. Since: 2.42
    static let pahawh_hmong = G_UNICODE_SCRIPT_PAHAWH_HMONG /* 119 */
    /// Palmyrene. Since: 2.42
    static let palmyrene = G_UNICODE_SCRIPT_PALMYRENE /* 120 */
    /// Pau Cin Hau. Since: 2.42
    static let pau_cin_hau = G_UNICODE_SCRIPT_PAU_CIN_HAU /* 121 */
    /// Psalter Pahlavi. Since: 2.42
    static let psalter_pahlavi = G_UNICODE_SCRIPT_PSALTER_PAHLAVI /* 122 */
    /// Siddham. Since: 2.42
    static let siddham = G_UNICODE_SCRIPT_SIDDHAM /* 123 */
    /// Tirhuta. Since: 2.42
    static let tirhuta = G_UNICODE_SCRIPT_TIRHUTA /* 124 */
    /// Warang Citi. Since: 2.42
    static let warang_citi = G_UNICODE_SCRIPT_WARANG_CITI /* 125 */
    /// Ahom. Since: 2.48
    static let ahom = G_UNICODE_SCRIPT_AHOM /* 126 */
    /// Anatolian Hieroglyphs. Since: 2.48
    static let anatolian_hieroglyphs = G_UNICODE_SCRIPT_ANATOLIAN_HIEROGLYPHS /* 127 */
    /// Hatran. Since: 2.48
    static let hatran = G_UNICODE_SCRIPT_HATRAN /* 128 */
    /// Multani. Since: 2.48
    static let multani = G_UNICODE_SCRIPT_MULTANI /* 129 */
    /// Old Hungarian. Since: 2.48
    static let old_hungarian = G_UNICODE_SCRIPT_OLD_HUNGARIAN /* 130 */
    /// Signwriting. Since: 2.48
    static let signwriting = G_UNICODE_SCRIPT_SIGNWRITING /* 131 */
    /// Adlam. Since: 2.50
    static let adlam = G_UNICODE_SCRIPT_ADLAM /* 132 */
    /// Bhaiksuki. Since: 2.50
    static let bhaiksuki = G_UNICODE_SCRIPT_BHAIKSUKI /* 133 */
    /// Marchen. Since: 2.50
    static let marchen = G_UNICODE_SCRIPT_MARCHEN /* 134 */
    /// Newa. Since: 2.50
    static let newa = G_UNICODE_SCRIPT_NEWA /* 135 */
    /// Osage. Since: 2.50
    static let osage = G_UNICODE_SCRIPT_OSAGE /* 136 */
    /// Tangut. Since: 2.50
    static let tangut = G_UNICODE_SCRIPT_TANGUT /* 137 */
    /// Masaram Gondi. Since: 2.54
    static let masaram_gondi = G_UNICODE_SCRIPT_MASARAM_GONDI /* 138 */
    /// Nushu. Since: 2.54
    static let nushu = G_UNICODE_SCRIPT_NUSHU /* 139 */
    /// Soyombo. Since: 2.54
    static let soyombo = G_UNICODE_SCRIPT_SOYOMBO /* 140 */
    /// Zanabazar Square. Since: 2.54
    static let zanabazar_square = G_UNICODE_SCRIPT_ZANABAZAR_SQUARE /* 141 */
    /// Dogra. Since: 2.58
    static let dogra = G_UNICODE_SCRIPT_DOGRA /* 142 */
    /// Gunjala Gondi. Since: 2.58
    static let gunjala_gondi = G_UNICODE_SCRIPT_GUNJALA_GONDI /* 143 */
    /// Hanifi Rohingya. Since: 2.58
    static let hanifi_rohingya = G_UNICODE_SCRIPT_HANIFI_ROHINGYA /* 144 */
    /// Makasar. Since: 2.58
    static let makasar = G_UNICODE_SCRIPT_MAKASAR /* 145 */
    /// Medefaidrin. Since: 2.58
    static let medefaidrin = G_UNICODE_SCRIPT_MEDEFAIDRIN /* 146 */
    /// Old Sogdian. Since: 2.58
    static let old_sogdian = G_UNICODE_SCRIPT_OLD_SOGDIAN /* 147 */
    /// Sogdian. Since: 2.58
    static let sogdian = G_UNICODE_SCRIPT_SOGDIAN /* 148 */
    /// Elym. Since: 2.62
    static let elymaic = G_UNICODE_SCRIPT_ELYMAIC /* 149 */
    /// Nand. Since: 2.62
    static let nandinagari = G_UNICODE_SCRIPT_NANDINAGARI /* 150 */
    /// Rohg. Since: 2.62
    static let nyiakeng_puachue_hmong = G_UNICODE_SCRIPT_NYIAKENG_PUACHUE_HMONG /* 151 */
    /// Wcho. Since: 2.62
    static let wancho = G_UNICODE_SCRIPT_WANCHO /* 152 */
}

/// These are the possible character classifications from the
/// Unicode specification.
/// See [Unicode Character Database](http://www.unicode.org/reports/tr44/`General_Category_Values`).
public typealias UnicodeType = GUnicodeType

public extension UnicodeType {
    /// General category "Other, Control" (Cc)
    static let control = G_UNICODE_CONTROL /* 0 */
    /// General category "Other, Format" (Cf)
    static let format = G_UNICODE_FORMAT /* 1 */
    /// General category "Other, Not Assigned" (Cn)
    static let unassigned = G_UNICODE_UNASSIGNED /* 2 */
    /// General category "Other, Private Use" (Co)
    static let private_use = G_UNICODE_PRIVATE_USE /* 3 */
    /// General category "Other, Surrogate" (Cs)
    static let surrogate = G_UNICODE_SURROGATE /* 4 */
    /// General category "Letter, Lowercase" (Ll)
    static let lowercase_letter = G_UNICODE_LOWERCASE_LETTER /* 5 */
    /// General category "Letter, Modifier" (Lm)
    static let modifier_letter = G_UNICODE_MODIFIER_LETTER /* 6 */
    /// General category "Letter, Other" (Lo)
    static let other_letter = G_UNICODE_OTHER_LETTER /* 7 */
    /// General category "Letter, Titlecase" (Lt)
    static let titlecase_letter = G_UNICODE_TITLECASE_LETTER /* 8 */
    /// General category "Letter, Uppercase" (Lu)
    static let uppercase_letter = G_UNICODE_UPPERCASE_LETTER /* 9 */
    /// General category "Mark, Spacing" (Mc)
    static let spacing_mark = G_UNICODE_SPACING_MARK /* 10 */
    /// General category "Mark, Enclosing" (Me)
    static let enclosing_mark = G_UNICODE_ENCLOSING_MARK /* 11 */
    /// General category "Mark, Nonspacing" (Mn)
    static let non_spacing_mark = G_UNICODE_NON_SPACING_MARK /* 12 */
    /// General category "Number, Decimal Digit" (Nd)
    static let decimal_number = G_UNICODE_DECIMAL_NUMBER /* 13 */
    /// General category "Number, Letter" (Nl)
    static let letter_number = G_UNICODE_LETTER_NUMBER /* 14 */
    /// General category "Number, Other" (No)
    static let other_number = G_UNICODE_OTHER_NUMBER /* 15 */
    /// General category "Punctuation, Connector" (Pc)
    static let connect_punctuation = G_UNICODE_CONNECT_PUNCTUATION /* 16 */
    /// General category "Punctuation, Dash" (Pd)
    static let dash_punctuation = G_UNICODE_DASH_PUNCTUATION /* 17 */
    /// General category "Punctuation, Close" (Pe)
    static let close_punctuation = G_UNICODE_CLOSE_PUNCTUATION /* 18 */
    /// General category "Punctuation, Final quote" (Pf)
    static let final_punctuation = G_UNICODE_FINAL_PUNCTUATION /* 19 */
    /// General category "Punctuation, Initial quote" (Pi)
    static let initial_punctuation = G_UNICODE_INITIAL_PUNCTUATION /* 20 */
    /// General category "Punctuation, Other" (Po)
    static let other_punctuation = G_UNICODE_OTHER_PUNCTUATION /* 21 */
    /// General category "Punctuation, Open" (Ps)
    static let open_punctuation = G_UNICODE_OPEN_PUNCTUATION /* 22 */
    /// General category "Symbol, Currency" (Sc)
    static let currency_symbol = G_UNICODE_CURRENCY_SYMBOL /* 23 */
    /// General category "Symbol, Modifier" (Sk)
    static let modifier_symbol = G_UNICODE_MODIFIER_SYMBOL /* 24 */
    /// General category "Symbol, Math" (Sm)
    static let math_symbol = G_UNICODE_MATH_SYMBOL /* 25 */
    /// General category "Symbol, Other" (So)
    static let other_symbol = G_UNICODE_OTHER_SYMBOL /* 26 */
    /// General category "Separator, Line" (Zl)
    static let line_separator = G_UNICODE_LINE_SEPARATOR /* 27 */
    /// General category "Separator, Paragraph" (Zp)
    static let paragraph_separator = G_UNICODE_PARAGRAPH_SEPARATOR /* 28 */
    /// General category "Separator, Space" (Zs)
    static let space_separator = G_UNICODE_SPACE_SEPARATOR /* 29 */
}

/// These are logical ids for special directories which are defined
/// depending on the platform used. You should use `g_get_user_special_dir()`
/// to retrieve the full path associated to the logical id.
/// 
/// The `GUserDirectory` enumeration can be extended at later date. Not
/// every platform has a directory for every logical id in this
/// enumeration.
public typealias UserDirectory = GUserDirectory

public extension UserDirectory {
    /// the user's Desktop directory
    static let directory_desktop = G_USER_DIRECTORY_DESKTOP /* 0 */
    /// the user's Documents directory
    static let directory_documents = G_USER_DIRECTORY_DOCUMENTS /* 1 */
    /// the user's Downloads directory
    static let directory_download = G_USER_DIRECTORY_DOWNLOAD /* 2 */
    /// the user's Music directory
    static let directory_music = G_USER_DIRECTORY_MUSIC /* 3 */
    /// the user's Pictures directory
    static let directory_pictures = G_USER_DIRECTORY_PICTURES /* 4 */
    /// the user's shared directory
    static let directory_public_share = G_USER_DIRECTORY_PUBLIC_SHARE /* 5 */
    /// the user's Templates directory
    static let directory_templates = G_USER_DIRECTORY_TEMPLATES /* 6 */
    /// the user's Movies directory
    static let directory_videos = G_USER_DIRECTORY_VIDEOS /* 7 */
    /// the number of enum values
    static let n_directories = G_USER_N_DIRECTORIES /* 8 */
}

/// The range of possible top-level types of `GVariant` instances.
public typealias VariantClass = GVariantClass

public extension VariantClass {
    /// The `GVariant` is a boolean.
    static let boolean = G_VARIANT_CLASS_BOOLEAN /* 98 */
    /// The `GVariant` is a byte.
    static let byte = G_VARIANT_CLASS_BYTE /* 121 */
    /// The `GVariant` is a signed 16 bit integer.
    static let int16 = G_VARIANT_CLASS_INT16 /* 110 */
    /// The `GVariant` is an unsigned 16 bit integer.
    static let uint16 = G_VARIANT_CLASS_UINT16 /* 113 */
    /// The `GVariant` is a signed 32 bit integer.
    static let int32 = G_VARIANT_CLASS_INT32 /* 105 */
    /// The `GVariant` is an unsigned 32 bit integer.
    static let uint32 = G_VARIANT_CLASS_UINT32 /* 117 */
    /// The `GVariant` is a signed 64 bit integer.
    static let int64 = G_VARIANT_CLASS_INT64 /* 120 */
    /// The `GVariant` is an unsigned 64 bit integer.
    static let uint64 = G_VARIANT_CLASS_UINT64 /* 116 */
    /// The `GVariant` is a file handle index.
    static let handle = G_VARIANT_CLASS_HANDLE /* 104 */
    /// The `GVariant` is a double precision floating
    ///                          point value.
    static let double = G_VARIANT_CLASS_DOUBLE /* 100 */
    /// The `GVariant` is a normal string.
    static let string = G_VARIANT_CLASS_STRING /* 115 */
    /// The `GVariant` is a D-Bus object path
    ///                               string.
    static let object_path = G_VARIANT_CLASS_OBJECT_PATH /* 111 */
    /// The `GVariant` is a D-Bus signature string.
    static let signature = G_VARIANT_CLASS_SIGNATURE /* 103 */
    /// The `GVariant` is a variant.
    static let variant = G_VARIANT_CLASS_VARIANT /* 118 */
    /// The `GVariant` is a maybe-typed value.
    static let maybe = G_VARIANT_CLASS_MAYBE /* 109 */
    /// The `GVariant` is an array.
    static let array = G_VARIANT_CLASS_ARRAY /* 97 */
    /// The `GVariant` is a tuple.
    static let tuple = G_VARIANT_CLASS_TUPLE /* 40 */
    /// The `GVariant` is a dictionary entry.
    static let dict_entry = G_VARIANT_CLASS_DICT_ENTRY /* 123 */
}

/// Error codes returned by parsing text-format GVariants.
public typealias VariantParseError = GVariantParseError

public extension VariantParseError {
    /// generic error (unused)
    static let failed = G_VARIANT_PARSE_ERROR_FAILED /* 0 */
    /// a non-basic `GVariantType` was given where a basic type was expected
    static let basic_type_expected = G_VARIANT_PARSE_ERROR_BASIC_TYPE_EXPECTED /* 1 */
    /// cannot infer the `GVariantType`
    static let cannot_infer_type = G_VARIANT_PARSE_ERROR_CANNOT_INFER_TYPE /* 2 */
    /// an indefinite `GVariantType` was given where a definite type was expected
    static let definite_type_expected = G_VARIANT_PARSE_ERROR_DEFINITE_TYPE_EXPECTED /* 3 */
    /// extra data after parsing finished
    static let input_not_at_end = G_VARIANT_PARSE_ERROR_INPUT_NOT_AT_END /* 4 */
    /// invalid character in number or unicode escape
    static let invalid_character = G_VARIANT_PARSE_ERROR_INVALID_CHARACTER /* 5 */
    /// not a valid `GVariant` format string
    static let invalid_format_string = G_VARIANT_PARSE_ERROR_INVALID_FORMAT_STRING /* 6 */
    /// not a valid object path
    static let invalid_object_path = G_VARIANT_PARSE_ERROR_INVALID_OBJECT_PATH /* 7 */
    /// not a valid type signature
    static let invalid_signature = G_VARIANT_PARSE_ERROR_INVALID_SIGNATURE /* 8 */
    /// not a valid `GVariant` type string
    static let invalid_type_string = G_VARIANT_PARSE_ERROR_INVALID_TYPE_STRING /* 9 */
    /// could not find a common type for array entries
    static let no_common_type = G_VARIANT_PARSE_ERROR_NO_COMMON_TYPE /* 10 */
    /// the numerical value is out of range of the given type
    static let number_out_of_range = G_VARIANT_PARSE_ERROR_NUMBER_OUT_OF_RANGE /* 11 */
    /// the numerical value is out of range for any type
    static let number_too_big = G_VARIANT_PARSE_ERROR_NUMBER_TOO_BIG /* 12 */
    /// cannot parse as variant of the specified type
    static let type_error = G_VARIANT_PARSE_ERROR_TYPE_ERROR /* 13 */
    /// an unexpected token was encountered
    static let unexpected_token = G_VARIANT_PARSE_ERROR_UNEXPECTED_TOKEN /* 14 */
    /// an unknown keyword was encountered
    static let unknown_keyword = G_VARIANT_PARSE_ERROR_UNKNOWN_KEYWORD /* 15 */
    /// unterminated string constant
    static let unterminated_string_constant = G_VARIANT_PARSE_ERROR_UNTERMINATED_STRING_CONSTANT /* 16 */
    /// no value given
    static let value_expected = G_VARIANT_PARSE_ERROR_VALUE_EXPECTED /* 17 */
}
