import CGLib

// MARK: - Regex Record

/// The `RegexProtocol` protocol exposes the methods and properties of an underlying `GRegex` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Regex`.
/// Alternatively, use `RegexRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The g_regex_*() functions implement regular
/// expression pattern matching using syntax and semantics similar to
/// Perl regular expression.
/// 
/// Some functions accept a `start_position` argument, setting it differs
/// from just passing over a shortened string and setting `G_REGEX_MATCH_NOTBOL`
/// in the case of a pattern that begins with any kind of lookbehind assertion.
/// For example, consider the pattern "\Biss\B" which finds occurrences of "iss"
/// in the middle of words. ("\B" matches only if the current position in the
/// subject is not a word boundary.) When applied to the string "Mississipi"
/// from the fourth byte, namely "issipi", it does not match, because "\B" is
/// always false at the start of the subject, which is deemed to be a word
/// boundary. However, if the entire string is passed , but with
/// `start_position` set to 4, it finds the second occurrence of "iss" because
/// it is able to look behind the starting point to discover that it is
/// preceded by a letter.
/// 
/// Note that, unless you set the `G_REGEX_RAW` flag, all the strings passed
/// to these functions must be encoded in UTF-8. The lengths and the positions
/// inside the strings are in bytes and not in characters, so, for instance,
/// "\xc3\xa0" (i.e. "à") is two bytes long but it is treated as a
/// single character. If you set `G_REGEX_RAW` the strings can be non-valid
/// UTF-8 strings and a byte is treated as a character, so "\xc3\xa0" is two
/// bytes and two characters long.
/// 
/// When matching a pattern, "\n" matches only against a "\n" character in
/// the string, and "\r" matches only a "\r" character. To match any newline
/// sequence use "\R". This particular group matches either the two-character
/// sequence CR + LF ("\r\n"), or one of the single characters LF (linefeed,
/// U+000A, "\n"), VT vertical tab, U+000B, "\v"), FF (formfeed, U+000C, "\f"),
/// CR (carriage return, U+000D, "\r"), NEL (next line, U+0085), LS (line
/// separator, U+2028), or PS (paragraph separator, U+2029).
/// 
/// The behaviour of the dot, circumflex, and dollar metacharacters are
/// affected by newline characters, the default is to recognize any newline
/// character (the same characters recognized by "\R"). This can be changed
/// with `G_REGEX_NEWLINE_CR`, `G_REGEX_NEWLINE_LF` and `G_REGEX_NEWLINE_CRLF`
/// compile options, and with `G_REGEX_MATCH_NEWLINE_ANY`,
/// `G_REGEX_MATCH_NEWLINE_CR`, `G_REGEX_MATCH_NEWLINE_LF` and
/// `G_REGEX_MATCH_NEWLINE_CRLF` match options. These settings are also
/// relevant when compiling a pattern if `G_REGEX_EXTENDED` is set, and an
/// unescaped "#" outside a character class is encountered. This indicates
/// a comment that lasts until after the next newline.
/// 
/// When setting the `G_REGEX_JAVASCRIPT_COMPAT` flag, pattern syntax and pattern
/// matching is changed to be compatible with the way that regular expressions
/// work in JavaScript. More precisely, a lonely ']' character in the pattern
/// is a syntax error; the '\x' escape only allows 0 to 2 hexadecimal digits, and
/// you must use the '\u' escape sequence with 4 hex digits to specify a unicode
/// codepoint instead of '\x' or 'x{....}'. If '\x' or '\u' are not followed by
/// the specified number of hex digits, they match 'x' and 'u' literally; also
/// '\U' always matches 'U' instead of being an error in the pattern. Finally,
/// pattern matching is modified so that back references to an unset subpattern
/// group produces a match with the empty string instead of an error. See
/// `pcreapi(3)` for more information.
/// 
/// Creating and manipulating the same `GRegex` structure from different
/// threads is not a problem as `GRegex` does not modify its internal
/// state between creation and destruction, on the other hand `GMatchInfo`
/// is not threadsafe.
/// 
/// The regular expressions low-level functionalities are obtained through
/// the excellent
/// [PCRE](http://www.pcre.org/)
/// library written by Philip Hazel.
public protocol RegexProtocol {
    /// Untyped pointer to the underlying `GRegex` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GRegex` instance.
    var regex_ptr: UnsafeMutablePointer<GRegex> { get }
}

/// The `RegexRef` type acts as a lightweight Swift reference to an underlying `GRegex` instance.
/// It exposes methods that can operate on this data type through `RegexProtocol` conformance.
/// Use `RegexRef` only as an `unowned` reference to an existing `GRegex` instance.
///
/// The g_regex_*() functions implement regular
/// expression pattern matching using syntax and semantics similar to
/// Perl regular expression.
/// 
/// Some functions accept a `start_position` argument, setting it differs
/// from just passing over a shortened string and setting `G_REGEX_MATCH_NOTBOL`
/// in the case of a pattern that begins with any kind of lookbehind assertion.
/// For example, consider the pattern "\Biss\B" which finds occurrences of "iss"
/// in the middle of words. ("\B" matches only if the current position in the
/// subject is not a word boundary.) When applied to the string "Mississipi"
/// from the fourth byte, namely "issipi", it does not match, because "\B" is
/// always false at the start of the subject, which is deemed to be a word
/// boundary. However, if the entire string is passed , but with
/// `start_position` set to 4, it finds the second occurrence of "iss" because
/// it is able to look behind the starting point to discover that it is
/// preceded by a letter.
/// 
/// Note that, unless you set the `G_REGEX_RAW` flag, all the strings passed
/// to these functions must be encoded in UTF-8. The lengths and the positions
/// inside the strings are in bytes and not in characters, so, for instance,
/// "\xc3\xa0" (i.e. "à") is two bytes long but it is treated as a
/// single character. If you set `G_REGEX_RAW` the strings can be non-valid
/// UTF-8 strings and a byte is treated as a character, so "\xc3\xa0" is two
/// bytes and two characters long.
/// 
/// When matching a pattern, "\n" matches only against a "\n" character in
/// the string, and "\r" matches only a "\r" character. To match any newline
/// sequence use "\R". This particular group matches either the two-character
/// sequence CR + LF ("\r\n"), or one of the single characters LF (linefeed,
/// U+000A, "\n"), VT vertical tab, U+000B, "\v"), FF (formfeed, U+000C, "\f"),
/// CR (carriage return, U+000D, "\r"), NEL (next line, U+0085), LS (line
/// separator, U+2028), or PS (paragraph separator, U+2029).
/// 
/// The behaviour of the dot, circumflex, and dollar metacharacters are
/// affected by newline characters, the default is to recognize any newline
/// character (the same characters recognized by "\R"). This can be changed
/// with `G_REGEX_NEWLINE_CR`, `G_REGEX_NEWLINE_LF` and `G_REGEX_NEWLINE_CRLF`
/// compile options, and with `G_REGEX_MATCH_NEWLINE_ANY`,
/// `G_REGEX_MATCH_NEWLINE_CR`, `G_REGEX_MATCH_NEWLINE_LF` and
/// `G_REGEX_MATCH_NEWLINE_CRLF` match options. These settings are also
/// relevant when compiling a pattern if `G_REGEX_EXTENDED` is set, and an
/// unescaped "#" outside a character class is encountered. This indicates
/// a comment that lasts until after the next newline.
/// 
/// When setting the `G_REGEX_JAVASCRIPT_COMPAT` flag, pattern syntax and pattern
/// matching is changed to be compatible with the way that regular expressions
/// work in JavaScript. More precisely, a lonely ']' character in the pattern
/// is a syntax error; the '\x' escape only allows 0 to 2 hexadecimal digits, and
/// you must use the '\u' escape sequence with 4 hex digits to specify a unicode
/// codepoint instead of '\x' or 'x{....}'. If '\x' or '\u' are not followed by
/// the specified number of hex digits, they match 'x' and 'u' literally; also
/// '\U' always matches 'U' instead of being an error in the pattern. Finally,
/// pattern matching is modified so that back references to an unset subpattern
/// group produces a match with the empty string instead of an error. See
/// `pcreapi(3)` for more information.
/// 
/// Creating and manipulating the same `GRegex` structure from different
/// threads is not a problem as `GRegex` does not modify its internal
/// state between creation and destruction, on the other hand `GMatchInfo`
/// is not threadsafe.
/// 
/// The regular expressions low-level functionalities are obtained through
/// the excellent
/// [PCRE](http://www.pcre.org/)
/// library written by Philip Hazel.
public struct RegexRef: RegexProtocol {
    /// Untyped pointer to the underlying `GRegex` instance.
    /// For type-safe access, use the generated, typed pointer `regex_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RegexRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GRegex>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RegexProtocol`
    init<T: RegexProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RegexProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RegexProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RegexProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RegexProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RegexProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Compiles the regular expression to an internal form, and does
    /// the initial setup of the `GRegex` structure.
    init( pattern: UnsafePointer<gchar>, compileOptions compile_options: RegexCompileFlags, matchOptions match_options: RegexMatchFlags) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_regex_new(pattern, compile_options, match_options, &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }
}

/// The `Regex` type acts as a reference-counted owner of an underlying `GRegex` instance.
/// It provides the methods that can operate on this data type through `RegexProtocol` conformance.
/// Use `Regex` as a strong reference or owner of a `GRegex` instance.
///
/// The g_regex_*() functions implement regular
/// expression pattern matching using syntax and semantics similar to
/// Perl regular expression.
/// 
/// Some functions accept a `start_position` argument, setting it differs
/// from just passing over a shortened string and setting `G_REGEX_MATCH_NOTBOL`
/// in the case of a pattern that begins with any kind of lookbehind assertion.
/// For example, consider the pattern "\Biss\B" which finds occurrences of "iss"
/// in the middle of words. ("\B" matches only if the current position in the
/// subject is not a word boundary.) When applied to the string "Mississipi"
/// from the fourth byte, namely "issipi", it does not match, because "\B" is
/// always false at the start of the subject, which is deemed to be a word
/// boundary. However, if the entire string is passed , but with
/// `start_position` set to 4, it finds the second occurrence of "iss" because
/// it is able to look behind the starting point to discover that it is
/// preceded by a letter.
/// 
/// Note that, unless you set the `G_REGEX_RAW` flag, all the strings passed
/// to these functions must be encoded in UTF-8. The lengths and the positions
/// inside the strings are in bytes and not in characters, so, for instance,
/// "\xc3\xa0" (i.e. "à") is two bytes long but it is treated as a
/// single character. If you set `G_REGEX_RAW` the strings can be non-valid
/// UTF-8 strings and a byte is treated as a character, so "\xc3\xa0" is two
/// bytes and two characters long.
/// 
/// When matching a pattern, "\n" matches only against a "\n" character in
/// the string, and "\r" matches only a "\r" character. To match any newline
/// sequence use "\R". This particular group matches either the two-character
/// sequence CR + LF ("\r\n"), or one of the single characters LF (linefeed,
/// U+000A, "\n"), VT vertical tab, U+000B, "\v"), FF (formfeed, U+000C, "\f"),
/// CR (carriage return, U+000D, "\r"), NEL (next line, U+0085), LS (line
/// separator, U+2028), or PS (paragraph separator, U+2029).
/// 
/// The behaviour of the dot, circumflex, and dollar metacharacters are
/// affected by newline characters, the default is to recognize any newline
/// character (the same characters recognized by "\R"). This can be changed
/// with `G_REGEX_NEWLINE_CR`, `G_REGEX_NEWLINE_LF` and `G_REGEX_NEWLINE_CRLF`
/// compile options, and with `G_REGEX_MATCH_NEWLINE_ANY`,
/// `G_REGEX_MATCH_NEWLINE_CR`, `G_REGEX_MATCH_NEWLINE_LF` and
/// `G_REGEX_MATCH_NEWLINE_CRLF` match options. These settings are also
/// relevant when compiling a pattern if `G_REGEX_EXTENDED` is set, and an
/// unescaped "#" outside a character class is encountered. This indicates
/// a comment that lasts until after the next newline.
/// 
/// When setting the `G_REGEX_JAVASCRIPT_COMPAT` flag, pattern syntax and pattern
/// matching is changed to be compatible with the way that regular expressions
/// work in JavaScript. More precisely, a lonely ']' character in the pattern
/// is a syntax error; the '\x' escape only allows 0 to 2 hexadecimal digits, and
/// you must use the '\u' escape sequence with 4 hex digits to specify a unicode
/// codepoint instead of '\x' or 'x{....}'. If '\x' or '\u' are not followed by
/// the specified number of hex digits, they match 'x' and 'u' literally; also
/// '\U' always matches 'U' instead of being an error in the pattern. Finally,
/// pattern matching is modified so that back references to an unset subpattern
/// group produces a match with the empty string instead of an error. See
/// `pcreapi(3)` for more information.
/// 
/// Creating and manipulating the same `GRegex` structure from different
/// threads is not a problem as `GRegex` does not modify its internal
/// state between creation and destruction, on the other hand `GMatchInfo`
/// is not threadsafe.
/// 
/// The regular expressions low-level functionalities are obtained through
/// the excellent
/// [PCRE](http://www.pcre.org/)
/// library written by Philip Hazel.
open class Regex: RegexProtocol {
    /// Untyped pointer to the underlying `GRegex` instance.
    /// For type-safe access, use the generated, typed pointer `regex_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Regex` instance.
    public init(_ op: UnsafeMutablePointer<GRegex>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RegexProtocol`
    /// Will retain `GRegex`.
    public convenience init<T: RegexProtocol>(_ other: T) {
        self.init(cast(other.regex_ptr))
        g_regex_ref(cast(regex_ptr))
    }

    /// Releases the underlying `GRegex` instance using `g_regex_unref`.
    deinit {
        g_regex_unref(cast(regex_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RegexProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GRegex.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RegexProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GRegex.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RegexProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GRegex.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RegexProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GRegex>(opaquePointer))
    }

    /// Compiles the regular expression to an internal form, and does
    /// the initial setup of the `GRegex` structure.
    public convenience init( pattern: UnsafePointer<gchar>, compileOptions compile_options: RegexCompileFlags, matchOptions match_options: RegexMatchFlags) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_regex_new(pattern, compile_options, match_options, &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }


}

// MARK: - no Regex properties

// MARK: - no signals


public extension RegexProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GRegex` instance.
    var regex_ptr: UnsafeMutablePointer<GRegex> { return ptr.assumingMemoryBound(to: GRegex.self) }

    /// Returns the number of capturing subpatterns in the pattern.
    func getCaptureCount() -> CInt {
        let rv = g_regex_get_capture_count(cast(regex_ptr))
        return CInt(rv)
    }

    /// Returns the compile options that `regex` was created with.
    /// 
    /// Depending on the version of PCRE that is used, this may or may not
    /// include flags set by option expressions such as `(?i)` found at the
    /// top-level within the compiled pattern.
    func getCompileFlags() -> GRegexCompileFlags {
        let rv = g_regex_get_compile_flags(cast(regex_ptr))
        return rv
    }

    /// Checks whether the pattern contains explicit CR or LF references.
    func getHasCrOrLf() -> Bool {
        let rv = g_regex_get_has_cr_or_lf(cast(regex_ptr))
        return Bool(rv != 0)
    }

    /// Returns the match options that `regex` was created with.
    func getMatchFlags() -> GRegexMatchFlags {
        let rv = g_regex_get_match_flags(cast(regex_ptr))
        return rv
    }

    /// Returns the number of the highest back reference
    /// in the pattern, or 0 if the pattern does not contain
    /// back references.
    func getMaxBackref() -> CInt {
        let rv = g_regex_get_max_backref(cast(regex_ptr))
        return CInt(rv)
    }

    /// Gets the number of characters in the longest lookbehind assertion in the
    /// pattern. This information is useful when doing multi-segment matching using
    /// the partial matching facilities.
    func getMaxLookbehind() -> CInt {
        let rv = g_regex_get_max_lookbehind(cast(regex_ptr))
        return CInt(rv)
    }

    /// Gets the pattern string associated with `regex`, i.e. a copy of
    /// the string passed to `g_regex_new()`.
    func getPattern() -> String! {
        let rv = g_regex_get_pattern(cast(regex_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Retrieves the number of the subexpression named `name`.
    func getStringNumber(name: UnsafePointer<gchar>) -> CInt {
        let rv = g_regex_get_string_number(cast(regex_ptr), name)
        return CInt(rv)
    }

    /// Scans for a match in `string` for the pattern in `regex`.
    /// The `match_options` are combined with the match options specified
    /// when the `regex` structure was created, letting you have more
    /// flexibility in reusing `GRegex` structures.
    /// 
    /// Unless `G_REGEX_RAW` is specified in the options, `string` must be valid UTF-8.
    /// 
    /// A `GMatchInfo` structure, used to get information on the match,
    /// is stored in `match_info` if not `nil`. Note that if `match_info`
    /// is not `nil` then it is created even if the function returns `false`,
    /// i.e. you must free it regardless if regular expression actually matched.
    /// 
    /// To retrieve all the non-overlapping matches of the pattern in
    /// string you can use `g_match_info_next()`.
    /// 
    /// (C Language Example):
    /// ```C
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
    /// ```
    /// 
    /// `string` is not copied and is used in `GMatchInfo` internally. If
    /// you use any `GMatchInfo` method (except `g_match_info_free()`) after
    /// freeing or modifying `string` then the behaviour is undefined.
    func match(string: UnsafePointer<gchar>, matchOptions match_options: RegexMatchFlags, matchInfo match_info: MatchInfoProtocol) -> Bool {
        let rv = g_regex_match(cast(regex_ptr), string, match_options, cast(match_info.ptr))
        return Bool(rv != 0)
    }

    /// Using the standard algorithm for regular expression matching only
    /// the longest match in the string is retrieved. This function uses
    /// a different algorithm so it can retrieve all the possible matches.
    /// For more documentation see `g_regex_match_all_full()`.
    /// 
    /// A `GMatchInfo` structure, used to get information on the match, is
    /// stored in `match_info` if not `nil`. Note that if `match_info` is
    /// not `nil` then it is created even if the function returns `false`,
    /// i.e. you must free it regardless if regular expression actually
    /// matched.
    /// 
    /// `string` is not copied and is used in `GMatchInfo` internally. If
    /// you use any `GMatchInfo` method (except `g_match_info_free()`) after
    /// freeing or modifying `string` then the behaviour is undefined.
    func matchAll(string: UnsafePointer<gchar>, matchOptions match_options: RegexMatchFlags, matchInfo match_info: MatchInfoProtocol) -> Bool {
        let rv = g_regex_match_all(cast(regex_ptr), string, match_options, cast(match_info.ptr))
        return Bool(rv != 0)
    }

    /// Using the standard algorithm for regular expression matching only
    /// the longest match in the `string` is retrieved, it is not possible
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
    /// `g_match_info_get_match_count()`. To obtain the matched strings and
    /// their position you can use, respectively, `g_match_info_fetch()` and
    /// `g_match_info_fetch_pos()`. Note that the strings are returned in
    /// reverse order of length; that is, the longest matching string is
    /// given first.
    /// 
    /// Note that the DFA algorithm is slower than the standard one and it
    /// is not able to capture substrings, so backreferences do not work.
    /// 
    /// Setting `start_position` differs from just passing over a shortened
    /// string and setting `G_REGEX_MATCH_NOTBOL` in the case of a pattern
    /// that begins with any kind of lookbehind assertion, such as "\b".
    /// 
    /// Unless `G_REGEX_RAW` is specified in the options, `string` must be valid UTF-8.
    /// 
    /// A `GMatchInfo` structure, used to get information on the match, is
    /// stored in `match_info` if not `nil`. Note that if `match_info` is
    /// not `nil` then it is created even if the function returns `false`,
    /// i.e. you must free it regardless if regular expression actually
    /// matched.
    /// 
    /// `string` is not copied and is used in `GMatchInfo` internally. If
    /// you use any `GMatchInfo` method (except `g_match_info_free()`) after
    /// freeing or modifying `string` then the behaviour is undefined.
    func matchAllFull(string: UnsafePointer<gchar>, stringLen string_len: gssize, startPosition start_position: CInt, matchOptions match_options: RegexMatchFlags, matchInfo match_info: MatchInfoProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_regex_match_all_full(cast(regex_ptr), cast(string), string_len, gint(start_position), match_options, cast(match_info.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Scans for a match in `string` for the pattern in `regex`.
    /// The `match_options` are combined with the match options specified
    /// when the `regex` structure was created, letting you have more
    /// flexibility in reusing `GRegex` structures.
    /// 
    /// Setting `start_position` differs from just passing over a shortened
    /// string and setting `G_REGEX_MATCH_NOTBOL` in the case of a pattern
    /// that begins with any kind of lookbehind assertion, such as "\b".
    /// 
    /// Unless `G_REGEX_RAW` is specified in the options, `string` must be valid UTF-8.
    /// 
    /// A `GMatchInfo` structure, used to get information on the match, is
    /// stored in `match_info` if not `nil`. Note that if `match_info` is
    /// not `nil` then it is created even if the function returns `false`,
    /// i.e. you must free it regardless if regular expression actually
    /// matched.
    /// 
    /// `string` is not copied and is used in `GMatchInfo` internally. If
    /// you use any `GMatchInfo` method (except `g_match_info_free()`) after
    /// freeing or modifying `string` then the behaviour is undefined.
    /// 
    /// To retrieve all the non-overlapping matches of the pattern in
    /// string you can use `g_match_info_next()`.
    /// 
    /// (C Language Example):
    /// ```C
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
    /// ```
    /// 
    func matchFull(string: UnsafePointer<gchar>, stringLen string_len: gssize, startPosition start_position: CInt, matchOptions match_options: RegexMatchFlags, matchInfo match_info: MatchInfoProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_regex_match_full(cast(regex_ptr), cast(string), string_len, gint(start_position), match_options, cast(match_info.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Increases reference count of `regex` by 1.
    func ref() -> UnsafeMutablePointer<GRegex>! {
        let rv = g_regex_ref(cast(regex_ptr))
        return cast(rv)
    }

    /// Replaces all occurrences of the pattern in `regex` with the
    /// replacement text. Backreferences of the form '\number' or
    /// '\g<number>' in the replacement text are interpolated by the
    /// number-th captured subexpression of the match, '\g<name>' refers
    /// to the captured subexpression with the given name. '\0' refers
    /// to the complete match, but '\0' followed by a number is the octal
    /// representation of a character. To include a literal '\' in the
    /// replacement, write '\\\\'.
    /// 
    /// There are also escapes that changes the case of the following text:
    /// 
    /// - \l: Convert to lower case the next character
    /// - \u: Convert to upper case the next character
    /// - \L: Convert to lower case till \E
    /// - \U: Convert to upper case till \E
    /// - \E: End case modification
    /// 
    /// If you do not need to use backreferences use `g_regex_replace_literal()`.
    /// 
    /// The `replacement` string must be UTF-8 encoded even if `G_REGEX_RAW` was
    /// passed to `g_regex_new()`. If you want to use not UTF-8 encoded stings
    /// you can use `g_regex_replace_literal()`.
    /// 
    /// Setting `start_position` differs from just passing over a shortened
    /// string and setting `G_REGEX_MATCH_NOTBOL` in the case of a pattern that
    /// begins with any kind of lookbehind assertion, such as "\b".
    func replace(string: UnsafePointer<gchar>, stringLen string_len: gssize, startPosition start_position: CInt, replacement: UnsafePointer<gchar>, matchOptions match_options: RegexMatchFlags) throws -> String! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_regex_replace(cast(regex_ptr), cast(string), string_len, gint(start_position), replacement, match_options, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Replaces occurrences of the pattern in regex with the output of
    /// `eval` for that occurrence.
    /// 
    /// Setting `start_position` differs from just passing over a shortened
    /// string and setting `G_REGEX_MATCH_NOTBOL` in the case of a pattern
    /// that begins with any kind of lookbehind assertion, such as "\b".
    /// 
    /// The following example uses `g_regex_replace_eval()` to replace multiple
    /// strings at once:
    /// (C Language Example):
    /// ```C
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
    /// ```
    /// 
    func replaceEval(string: UnsafePointer<gchar>, stringLen string_len: gssize, startPosition start_position: CInt, matchOptions match_options: RegexMatchFlags, eval: @escaping RegexEvalCallback, userData user_data: UnsafeMutableRawPointer) throws -> String! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_regex_replace_eval(cast(regex_ptr), cast(string), string_len, gint(start_position), match_options, eval, cast(user_data), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Replaces all occurrences of the pattern in `regex` with the
    /// replacement text. `replacement` is replaced literally, to
    /// include backreferences use `g_regex_replace()`.
    /// 
    /// Setting `start_position` differs from just passing over a
    /// shortened string and setting `G_REGEX_MATCH_NOTBOL` in the
    /// case of a pattern that begins with any kind of lookbehind
    /// assertion, such as "\b".
    func replaceLiteral(string: UnsafePointer<gchar>, stringLen string_len: gssize, startPosition start_position: CInt, replacement: UnsafePointer<gchar>, matchOptions match_options: RegexMatchFlags) throws -> String! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_regex_replace_literal(cast(regex_ptr), cast(string), string_len, gint(start_position), replacement, match_options, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
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
    /// A pattern that can match empty strings splits `string` into separate
    /// characters wherever it matches the empty string between characters.
    /// For example splitting "ab c" using as a separator "\s*", you will get
    /// "a", "b" and "c".
    func split(string: UnsafePointer<gchar>, matchOptions match_options: RegexMatchFlags) -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        let rv = g_regex_split(cast(regex_ptr), string, match_options)
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
    /// A pattern that can match empty strings splits `string` into separate
    /// characters wherever it matches the empty string between characters.
    /// For example splitting "ab c" using as a separator "\s*", you will get
    /// "a", "b" and "c".
    /// 
    /// Setting `start_position` differs from just passing over a shortened
    /// string and setting `G_REGEX_MATCH_NOTBOL` in the case of a pattern
    /// that begins with any kind of lookbehind assertion, such as "\b".
    func splitFull(string: UnsafePointer<gchar>, stringLen string_len: gssize, startPosition start_position: CInt, matchOptions match_options: RegexMatchFlags, maxTokens max_tokens: CInt) throws -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_regex_split_full(cast(regex_ptr), cast(string), string_len, gint(start_position), match_options, gint(max_tokens), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Decreases reference count of `regex` by 1. When reference count drops
    /// to zero, it frees all the memory associated with the regex structure.
    func unref() {
        g_regex_unref(cast(regex_ptr))
    
    }
    /// Returns the number of capturing subpatterns in the pattern.
    var captureCount: CInt {
        /// Returns the number of capturing subpatterns in the pattern.
        get {
            let rv = g_regex_get_capture_count(cast(regex_ptr))
            return CInt(rv)
        }
    }

    /// Returns the compile options that `regex` was created with.
    /// 
    /// Depending on the version of PCRE that is used, this may or may not
    /// include flags set by option expressions such as `(?i)` found at the
    /// top-level within the compiled pattern.
    var compileFlags: GRegexCompileFlags {
        /// Returns the compile options that `regex` was created with.
        /// 
        /// Depending on the version of PCRE that is used, this may or may not
        /// include flags set by option expressions such as `(?i)` found at the
        /// top-level within the compiled pattern.
        get {
            let rv = g_regex_get_compile_flags(cast(regex_ptr))
            return rv
        }
    }

    /// Checks whether the pattern contains explicit CR or LF references.
    var hasCrOrLf: Bool {
        /// Checks whether the pattern contains explicit CR or LF references.
        get {
            let rv = g_regex_get_has_cr_or_lf(cast(regex_ptr))
            return Bool(rv != 0)
        }
    }

    /// Returns the match options that `regex` was created with.
    var matchFlags: GRegexMatchFlags {
        /// Returns the match options that `regex` was created with.
        get {
            let rv = g_regex_get_match_flags(cast(regex_ptr))
            return rv
        }
    }

    /// Returns the number of the highest back reference
    /// in the pattern, or 0 if the pattern does not contain
    /// back references.
    var maxBackref: CInt {
        /// Returns the number of the highest back reference
        /// in the pattern, or 0 if the pattern does not contain
        /// back references.
        get {
            let rv = g_regex_get_max_backref(cast(regex_ptr))
            return CInt(rv)
        }
    }

    /// Gets the number of characters in the longest lookbehind assertion in the
    /// pattern. This information is useful when doing multi-segment matching using
    /// the partial matching facilities.
    var maxLookbehind: CInt {
        /// Gets the number of characters in the longest lookbehind assertion in the
        /// pattern. This information is useful when doing multi-segment matching using
        /// the partial matching facilities.
        get {
            let rv = g_regex_get_max_lookbehind(cast(regex_ptr))
            return CInt(rv)
        }
    }

    /// Gets the pattern string associated with `regex`, i.e. a copy of
    /// the string passed to `g_regex_new()`.
    var pattern: String! {
        /// Gets the pattern string associated with `regex`, i.e. a copy of
        /// the string passed to `g_regex_new()`.
        get {
            let rv = g_regex_get_pattern(cast(regex_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }
}



