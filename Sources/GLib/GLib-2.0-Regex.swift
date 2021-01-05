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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GRegex` instance.
    var regex_ptr: UnsafeMutablePointer<GRegex>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension RegexRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GRegex>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GRegex>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GRegex>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GRegex>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `RegexProtocol`
    @inlinable init<T: RegexProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RegexProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RegexProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RegexProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RegexProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RegexProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Compiles the regular expression to an internal form, and does
    /// the initial setup of the `GRegex` structure.
    @inlinable init( pattern: UnsafePointer<gchar>!, compileOptions: RegexCompileFlags, matchOptions: RegexMatchFlags) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_regex_new(pattern, compileOptions.value, matchOptions.value, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
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
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Regex` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GRegex>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Regex` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GRegex>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Regex` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Regex` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Regex` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GRegex>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Regex` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GRegex>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GRegex`.
    /// i.e., ownership is transferred to the `Regex` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GRegex>) {
        ptr = UnsafeMutableRawPointer(op)
        g_regex_ref(ptr.assumingMemoryBound(to: GRegex.self))
    }

    /// Reference intialiser for a related type that implements `RegexProtocol`
    /// Will retain `GRegex`.
    /// - Parameter other: an instance of a related type that implements `RegexProtocol`
    @inlinable public init<T: RegexProtocol>(_ other: T) {
        ptr = other.ptr
        g_regex_ref(ptr.assumingMemoryBound(to: GRegex.self))
    }

    /// Releases the underlying `GRegex` instance using `g_regex_unref`.
    deinit {
        g_regex_unref(ptr.assumingMemoryBound(to: GRegex.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RegexProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RegexProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_regex_ref(ptr.assumingMemoryBound(to: GRegex.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RegexProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RegexProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_regex_ref(ptr.assumingMemoryBound(to: GRegex.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RegexProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RegexProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_regex_ref(ptr.assumingMemoryBound(to: GRegex.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RegexProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RegexProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_regex_ref(ptr.assumingMemoryBound(to: GRegex.self))
    }

    /// Compiles the regular expression to an internal form, and does
    /// the initial setup of the `GRegex` structure.
    @inlinable public init( pattern: UnsafePointer<gchar>!, compileOptions: RegexCompileFlags, matchOptions: RegexMatchFlags) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_regex_new(pattern, compileOptions.value, matchOptions.value, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no Regex properties

// MARK: no Regex signals


// MARK: Regex Record: RegexProtocol extension (methods and fields)
public extension RegexProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GRegex` instance.
    @inlinable var regex_ptr: UnsafeMutablePointer<GRegex>! { return ptr?.assumingMemoryBound(to: GRegex.self) }

    /// Returns the number of capturing subpatterns in the pattern.
    @inlinable func getCaptureCount() -> Int {
        let rv = Int(g_regex_get_capture_count(regex_ptr))
        return rv
    }

    /// Returns the compile options that `regex` was created with.
    /// 
    /// Depending on the version of PCRE that is used, this may or may not
    /// include flags set by option expressions such as `(?i)` found at the
    /// top-level within the compiled pattern.
    @inlinable func getCompileFlags() -> RegexCompileFlags {
        let rv = RegexCompileFlags(g_regex_get_compile_flags(regex_ptr))
        return rv
    }

    /// Checks whether the pattern contains explicit CR or LF references.
    @inlinable func getHasCrOrLf() -> Bool {
        let rv = ((g_regex_get_has_cr_or_lf(regex_ptr)) != 0)
        return rv
    }

    /// Returns the match options that `regex` was created with.
    @inlinable func getMatchFlags() -> RegexMatchFlags {
        let rv = RegexMatchFlags(g_regex_get_match_flags(regex_ptr))
        return rv
    }

    /// Returns the number of the highest back reference
    /// in the pattern, or 0 if the pattern does not contain
    /// back references.
    @inlinable func getMaxBackref() -> Int {
        let rv = Int(g_regex_get_max_backref(regex_ptr))
        return rv
    }

    /// Gets the number of characters in the longest lookbehind assertion in the
    /// pattern. This information is useful when doing multi-segment matching using
    /// the partial matching facilities.
    @inlinable func getMaxLookbehind() -> Int {
        let rv = Int(g_regex_get_max_lookbehind(regex_ptr))
        return rv
    }

    /// Gets the pattern string associated with `regex`, i.e. a copy of
    /// the string passed to `g_regex_new()`.
    @inlinable func getPattern() -> String! {
        let rv = g_regex_get_pattern(regex_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Retrieves the number of the subexpression named `name`.
    @inlinable func getStringNumber(name: UnsafePointer<gchar>!) -> Int {
        let rv = Int(g_regex_get_string_number(regex_ptr, name))
        return rv
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
    @inlinable func match(string: UnsafePointer<gchar>!, matchOptions: RegexMatchFlags, matchInfo: UnsafeMutablePointer<UnsafeMutablePointer<GMatchInfo>?>! = nil) -> Bool {
        let rv = ((g_regex_match(regex_ptr, string, matchOptions.value, matchInfo)) != 0)
        return rv
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
    @inlinable func matchAll(string: UnsafePointer<gchar>!, matchOptions: RegexMatchFlags, matchInfo: UnsafeMutablePointer<UnsafeMutablePointer<GMatchInfo>?>! = nil) -> Bool {
        let rv = ((g_regex_match_all(regex_ptr, string, matchOptions.value, matchInfo)) != 0)
        return rv
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
    @inlinable func matchAllFull(string: UnsafePointer<gchar>!, stringLen: gssize, startPosition: Int, matchOptions: RegexMatchFlags, matchInfo: UnsafeMutablePointer<UnsafeMutablePointer<GMatchInfo>?>! = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_regex_match_all_full(regex_ptr, string, stringLen, gint(startPosition), matchOptions.value, matchInfo, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func matchFull(string: UnsafePointer<gchar>!, stringLen: gssize, startPosition: Int, matchOptions: RegexMatchFlags, matchInfo: UnsafeMutablePointer<UnsafeMutablePointer<GMatchInfo>?>! = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_regex_match_full(regex_ptr, string, stringLen, gint(startPosition), matchOptions.value, matchInfo, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Increases reference count of `regex` by 1.
    @discardableResult @inlinable func ref() -> RegexRef! {
        guard let rv = RegexRef(gconstpointer: gconstpointer(g_regex_ref(regex_ptr))) else { return nil }
        return rv
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
    /// passed to `g_regex_new()`. If you want to use not UTF-8 encoded strings
    /// you can use `g_regex_replace_literal()`.
    /// 
    /// Setting `start_position` differs from just passing over a shortened
    /// string and setting `G_REGEX_MATCH_NOTBOL` in the case of a pattern that
    /// begins with any kind of lookbehind assertion, such as "\b".
    @inlinable func replace(string: UnsafePointer<gchar>!, stringLen: gssize, startPosition: Int, replacement: UnsafePointer<gchar>!, matchOptions: RegexMatchFlags) throws -> String! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_regex_replace(regex_ptr, string, stringLen, gint(startPosition), replacement, matchOptions.value, &error).map({ String(cString: $0) })
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func replaceEval(string: UnsafePointer<gchar>!, stringLen: gssize, startPosition: Int, matchOptions: RegexMatchFlags, eval: GRegexEvalCallback?, userData: gpointer! = nil) throws -> String! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_regex_replace_eval(regex_ptr, string, stringLen, gint(startPosition), matchOptions.value, eval, userData, &error).map({ String(cString: $0) })
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Replaces all occurrences of the pattern in `regex` with the
    /// replacement text. `replacement` is replaced literally, to
    /// include backreferences use `g_regex_replace()`.
    /// 
    /// Setting `start_position` differs from just passing over a
    /// shortened string and setting `G_REGEX_MATCH_NOTBOL` in the
    /// case of a pattern that begins with any kind of lookbehind
    /// assertion, such as "\b".
    @inlinable func replaceLiteral(string: UnsafePointer<gchar>!, stringLen: gssize, startPosition: Int, replacement: UnsafePointer<gchar>!, matchOptions: RegexMatchFlags) throws -> String! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_regex_replace_literal(regex_ptr, string, stringLen, gint(startPosition), replacement, matchOptions.value, &error).map({ String(cString: $0) })
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Breaks the string on the pattern, and returns an array of the tokens.
    /// If the pattern contains capturing parentheses, then the text for each
    /// of the substrings will also be returned. If the pattern does not match
    /// anywhere in the string, then the whole string is returned as the first
    /// token.
    /// 
    /// As a special case, the result of splitting the empty string "" is an
    /// empty vector, not a vector containing a single string. The reason for
    /// this special case is that being able to represent an empty vector is
    /// typically more useful than consistent handling of empty elements. If
    /// you do need to represent empty elements, you'll need to check for the
    /// empty string before calling this function.
    /// 
    /// A pattern that can match empty strings splits `string` into separate
    /// characters wherever it matches the empty string between characters.
    /// For example splitting "ab c" using as a separator "\s*", you will get
    /// "a", "b" and "c".
    @inlinable func split(string: UnsafePointer<gchar>!, matchOptions: RegexMatchFlags) -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        let rv = g_regex_split(regex_ptr, string, matchOptions.value)
        return rv
    }

    /// Breaks the string on the pattern, and returns an array of the tokens.
    /// If the pattern contains capturing parentheses, then the text for each
    /// of the substrings will also be returned. If the pattern does not match
    /// anywhere in the string, then the whole string is returned as the first
    /// token.
    /// 
    /// As a special case, the result of splitting the empty string "" is an
    /// empty vector, not a vector containing a single string. The reason for
    /// this special case is that being able to represent an empty vector is
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
    @inlinable func splitFull(string: UnsafePointer<gchar>!, stringLen: gssize, startPosition: Int, matchOptions: RegexMatchFlags, maxTokens: Int) throws -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_regex_split_full(regex_ptr, string, stringLen, gint(startPosition), matchOptions.value, gint(maxTokens), &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Decreases reference count of `regex` by 1. When reference count drops
    /// to zero, it frees all the memory associated with the regex structure.
    @inlinable func unref() {
        g_regex_unref(regex_ptr)
    
    }
    /// Returns the number of capturing subpatterns in the pattern.
    @inlinable var captureCount: Int {
        /// Returns the number of capturing subpatterns in the pattern.
        get {
            let rv = Int(g_regex_get_capture_count(regex_ptr))
            return rv
        }
    }

    /// Returns the compile options that `regex` was created with.
    /// 
    /// Depending on the version of PCRE that is used, this may or may not
    /// include flags set by option expressions such as `(?i)` found at the
    /// top-level within the compiled pattern.
    @inlinable var compileFlags: RegexCompileFlags {
        /// Returns the compile options that `regex` was created with.
        /// 
        /// Depending on the version of PCRE that is used, this may or may not
        /// include flags set by option expressions such as `(?i)` found at the
        /// top-level within the compiled pattern.
        get {
            let rv = RegexCompileFlags(g_regex_get_compile_flags(regex_ptr))
            return rv
        }
    }

    /// Checks whether the pattern contains explicit CR or LF references.
    @inlinable var hasCrOrLf: Bool {
        /// Checks whether the pattern contains explicit CR or LF references.
        get {
            let rv = ((g_regex_get_has_cr_or_lf(regex_ptr)) != 0)
            return rv
        }
    }

    /// Returns the match options that `regex` was created with.
    @inlinable var matchFlags: RegexMatchFlags {
        /// Returns the match options that `regex` was created with.
        get {
            let rv = RegexMatchFlags(g_regex_get_match_flags(regex_ptr))
            return rv
        }
    }

    /// Returns the number of the highest back reference
    /// in the pattern, or 0 if the pattern does not contain
    /// back references.
    @inlinable var maxBackref: Int {
        /// Returns the number of the highest back reference
        /// in the pattern, or 0 if the pattern does not contain
        /// back references.
        get {
            let rv = Int(g_regex_get_max_backref(regex_ptr))
            return rv
        }
    }

    /// Gets the number of characters in the longest lookbehind assertion in the
    /// pattern. This information is useful when doing multi-segment matching using
    /// the partial matching facilities.
    @inlinable var maxLookbehind: Int {
        /// Gets the number of characters in the longest lookbehind assertion in the
        /// pattern. This information is useful when doing multi-segment matching using
        /// the partial matching facilities.
        get {
            let rv = Int(g_regex_get_max_lookbehind(regex_ptr))
            return rv
        }
    }

    /// Gets the pattern string associated with `regex`, i.e. a copy of
    /// the string passed to `g_regex_new()`.
    @inlinable var pattern: String! {
        /// Gets the pattern string associated with `regex`, i.e. a copy of
        /// the string passed to `g_regex_new()`.
        get {
            let rv = g_regex_get_pattern(regex_ptr).map({ String(cString: $0) })
            return rv
        }
    }


}



