import CGLib

// MARK: - ScannerConfig Record

/// The `ScannerConfigProtocol` protocol exposes the methods and properties of an underlying `GScannerConfig` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ScannerConfig`.
/// Alternatively, use `ScannerConfigRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Specifies the `GScanner` parser configuration. Most settings can
/// be changed during the parsing phase and will affect the lexical
/// parsing of the next unpeeked token.
public protocol ScannerConfigProtocol {
        /// Untyped pointer to the underlying `GScannerConfig` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GScannerConfig` instance.
    var _ptr: UnsafeMutablePointer<GScannerConfig>! { get }

}

/// The `ScannerConfigRef` type acts as a lightweight Swift reference to an underlying `GScannerConfig` instance.
/// It exposes methods that can operate on this data type through `ScannerConfigProtocol` conformance.
/// Use `ScannerConfigRef` only as an `unowned` reference to an existing `GScannerConfig` instance.
///
/// Specifies the `GScanner` parser configuration. Most settings can
/// be changed during the parsing phase and will affect the lexical
/// parsing of the next unpeeked token.
public struct ScannerConfigRef: ScannerConfigProtocol {
        /// Untyped pointer to the underlying `GScannerConfig` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ScannerConfigRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GScannerConfig>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GScannerConfig>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GScannerConfig>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GScannerConfig>?) {
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

    /// Reference intialiser for a related type that implements `ScannerConfigProtocol`
    @inlinable init<T: ScannerConfigProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerConfigProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerConfigProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerConfigProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerConfigProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerConfigProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ScannerConfig` type acts as an owner of an underlying `GScannerConfig` instance.
/// It provides the methods that can operate on this data type through `ScannerConfigProtocol` conformance.
/// Use `ScannerConfig` as a strong reference or owner of a `GScannerConfig` instance.
///
/// Specifies the `GScanner` parser configuration. Most settings can
/// be changed during the parsing phase and will affect the lexical
/// parsing of the next unpeeked token.
open class ScannerConfig: ScannerConfigProtocol {
        /// Untyped pointer to the underlying `GScannerConfig` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ScannerConfig` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GScannerConfig>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ScannerConfig` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GScannerConfig>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ScannerConfig` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ScannerConfig` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ScannerConfig` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GScannerConfig>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ScannerConfig` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GScannerConfig>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GScannerConfig` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ScannerConfig` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GScannerConfig>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GScannerConfig, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `ScannerConfigProtocol`
    /// `GScannerConfig` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ScannerConfigProtocol`
    @inlinable public init<T: ScannerConfigProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GScannerConfig, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GScannerConfig`.
    deinit {
        // no reference counting for GScannerConfig, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerConfigProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerConfigProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GScannerConfig, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerConfigProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerConfigProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GScannerConfig, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerConfigProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerConfigProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GScannerConfig, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerConfigProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerConfigProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GScannerConfig, cannot ref(_ptr)
    }



}

// MARK: no ScannerConfig properties

// MARK: no ScannerConfig signals


// MARK: ScannerConfig Record: ScannerConfigProtocol extension (methods and fields)
public extension ScannerConfigProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GScannerConfig` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GScannerConfig>! { return ptr?.assumingMemoryBound(to: GScannerConfig.self) }


    /// specifies which characters should be skipped
    ///     by the scanner (the default is the whitespace characters: space,
    ///     tab, carriage-return and line-feed).
    @inlinable var csetSkipCharacters: UnsafeMutablePointer<gchar>! {
        /// specifies which characters should be skipped
        ///     by the scanner (the default is the whitespace characters: space,
        ///     tab, carriage-return and line-feed).
        get {
            let rv = _ptr.pointee.cset_skip_characters
            return rv
        }
        /// specifies which characters should be skipped
        ///     by the scanner (the default is the whitespace characters: space,
        ///     tab, carriage-return and line-feed).
         set {
            _ptr.pointee.cset_skip_characters = newValue
        }
    }

    /// specifies the characters which can start
    ///     identifiers (the default is `G_CSET_a_2_z`, "_", and `G_CSET_A_2_Z`).
    @inlinable var csetIDentifierFirst: UnsafeMutablePointer<gchar>! {
        /// specifies the characters which can start
        ///     identifiers (the default is `G_CSET_a_2_z`, "_", and `G_CSET_A_2_Z`).
        get {
            let rv = _ptr.pointee.cset_identifier_first
            return rv
        }
        /// specifies the characters which can start
        ///     identifiers (the default is `G_CSET_a_2_z`, "_", and `G_CSET_A_2_Z`).
         set {
            _ptr.pointee.cset_identifier_first = newValue
        }
    }

    /// specifies the characters which can be used
    ///     in identifiers, after the first character (the default is
    ///     `G_CSET_a_2_z`, "_0123456789", `G_CSET_A_2_Z`, `G_CSET_LATINS`,
    ///     `G_CSET_LATINC`).
    @inlinable var csetIDentifierNth: UnsafeMutablePointer<gchar>! {
        /// specifies the characters which can be used
        ///     in identifiers, after the first character (the default is
        ///     `G_CSET_a_2_z`, "_0123456789", `G_CSET_A_2_Z`, `G_CSET_LATINS`,
        ///     `G_CSET_LATINC`).
        get {
            let rv = _ptr.pointee.cset_identifier_nth
            return rv
        }
        /// specifies the characters which can be used
        ///     in identifiers, after the first character (the default is
        ///     `G_CSET_a_2_z`, "_0123456789", `G_CSET_A_2_Z`, `G_CSET_LATINS`,
        ///     `G_CSET_LATINC`).
         set {
            _ptr.pointee.cset_identifier_nth = newValue
        }
    }

    /// specifies the characters at the start and
    ///     end of single-line comments. The default is "#\n" which means
    ///     that single-line comments start with a '#' and continue until
    ///     a '\n' (end of line).
    @inlinable var cpairCommentSingle: UnsafeMutablePointer<gchar>! {
        /// specifies the characters at the start and
        ///     end of single-line comments. The default is "#\n" which means
        ///     that single-line comments start with a '#' and continue until
        ///     a '\n' (end of line).
        get {
            let rv = _ptr.pointee.cpair_comment_single
            return rv
        }
        /// specifies the characters at the start and
        ///     end of single-line comments. The default is "#\n" which means
        ///     that single-line comments start with a '#' and continue until
        ///     a '\n' (end of line).
         set {
            _ptr.pointee.cpair_comment_single = newValue
        }
    }

    /// specifies if symbols are case sensitive (the
    ///     default is `false`).
    @inlinable var caseSensitive: guint {
        /// specifies if symbols are case sensitive (the
        ///     default is `false`).
        get {
            let rv = _ptr.pointee.case_sensitive
            return rv
        }
        /// specifies if symbols are case sensitive (the
        ///     default is `false`).
         set {
            _ptr.pointee.case_sensitive = newValue
        }
    }

    /// specifies if multi-line comments are skipped
    ///     and not returned as tokens (the default is `true`).
    @inlinable var skipCommentMulti: guint {
        /// specifies if multi-line comments are skipped
        ///     and not returned as tokens (the default is `true`).
        get {
            let rv = _ptr.pointee.skip_comment_multi
            return rv
        }
        /// specifies if multi-line comments are skipped
        ///     and not returned as tokens (the default is `true`).
         set {
            _ptr.pointee.skip_comment_multi = newValue
        }
    }

    /// specifies if single-line comments are skipped
    ///     and not returned as tokens (the default is `true`).
    @inlinable var skipCommentSingle: guint {
        /// specifies if single-line comments are skipped
        ///     and not returned as tokens (the default is `true`).
        get {
            let rv = _ptr.pointee.skip_comment_single
            return rv
        }
        /// specifies if single-line comments are skipped
        ///     and not returned as tokens (the default is `true`).
         set {
            _ptr.pointee.skip_comment_single = newValue
        }
    }

    /// specifies if multi-line comments are recognized
    ///     (the default is `true`).
    @inlinable var scanCommentMulti: guint {
        /// specifies if multi-line comments are recognized
        ///     (the default is `true`).
        get {
            let rv = _ptr.pointee.scan_comment_multi
            return rv
        }
        /// specifies if multi-line comments are recognized
        ///     (the default is `true`).
         set {
            _ptr.pointee.scan_comment_multi = newValue
        }
    }

    /// specifies if identifiers are recognized (the
    ///     default is `true`).
    @inlinable var scanIDentifier: guint {
        /// specifies if identifiers are recognized (the
        ///     default is `true`).
        get {
            let rv = _ptr.pointee.scan_identifier
            return rv
        }
        /// specifies if identifiers are recognized (the
        ///     default is `true`).
         set {
            _ptr.pointee.scan_identifier = newValue
        }
    }

    /// specifies if single-character
    ///     identifiers are recognized (the default is `false`).
    @inlinable var scanIDentifier1char: guint {
        /// specifies if single-character
        ///     identifiers are recognized (the default is `false`).
        get {
            let rv = _ptr.pointee.scan_identifier_1char
            return rv
        }
        /// specifies if single-character
        ///     identifiers are recognized (the default is `false`).
         set {
            _ptr.pointee.scan_identifier_1char = newValue
        }
    }

    /// specifies if `nil` is reported as
    ///     `G_TOKEN_IDENTIFIER_NULL` (the default is `false`).
    @inlinable var scanIDentifierNULL: guint {
        /// specifies if `nil` is reported as
        ///     `G_TOKEN_IDENTIFIER_NULL` (the default is `false`).
        get {
            let rv = _ptr.pointee.scan_identifier_NULL
            return rv
        }
        /// specifies if `nil` is reported as
        ///     `G_TOKEN_IDENTIFIER_NULL` (the default is `false`).
         set {
            _ptr.pointee.scan_identifier_NULL = newValue
        }
    }

    /// specifies if symbols are recognized (the default
    ///     is `true`).
    @inlinable var scanSymbols: guint {
        /// specifies if symbols are recognized (the default
        ///     is `true`).
        get {
            let rv = _ptr.pointee.scan_symbols
            return rv
        }
        /// specifies if symbols are recognized (the default
        ///     is `true`).
         set {
            _ptr.pointee.scan_symbols = newValue
        }
    }

    /// specifies if binary numbers are recognized (the
    ///     default is `false`).
    @inlinable var scanBinary: guint {
        /// specifies if binary numbers are recognized (the
        ///     default is `false`).
        get {
            let rv = _ptr.pointee.scan_binary
            return rv
        }
        /// specifies if binary numbers are recognized (the
        ///     default is `false`).
         set {
            _ptr.pointee.scan_binary = newValue
        }
    }

    /// specifies if octal numbers are recognized (the
    ///     default is `true`).
    @inlinable var scanOctal: guint {
        /// specifies if octal numbers are recognized (the
        ///     default is `true`).
        get {
            let rv = _ptr.pointee.scan_octal
            return rv
        }
        /// specifies if octal numbers are recognized (the
        ///     default is `true`).
         set {
            _ptr.pointee.scan_octal = newValue
        }
    }

    /// specifies if floating point numbers are recognized
    ///     (the default is `true`).
    @inlinable var scanFloat: guint {
        /// specifies if floating point numbers are recognized
        ///     (the default is `true`).
        get {
            let rv = _ptr.pointee.scan_float
            return rv
        }
        /// specifies if floating point numbers are recognized
        ///     (the default is `true`).
         set {
            _ptr.pointee.scan_float = newValue
        }
    }

    /// specifies if hexadecimal numbers are recognized (the
    ///     default is `true`).
    @inlinable var scanHex: guint {
        /// specifies if hexadecimal numbers are recognized (the
        ///     default is `true`).
        get {
            let rv = _ptr.pointee.scan_hex
            return rv
        }
        /// specifies if hexadecimal numbers are recognized (the
        ///     default is `true`).
         set {
            _ptr.pointee.scan_hex = newValue
        }
    }

    /// specifies if '$' is recognized as a prefix for
    ///     hexadecimal numbers (the default is `false`).
    @inlinable var scanHexDollar: guint {
        /// specifies if '$' is recognized as a prefix for
        ///     hexadecimal numbers (the default is `false`).
        get {
            let rv = _ptr.pointee.scan_hex_dollar
            return rv
        }
        /// specifies if '$' is recognized as a prefix for
        ///     hexadecimal numbers (the default is `false`).
         set {
            _ptr.pointee.scan_hex_dollar = newValue
        }
    }

    /// specifies if strings can be enclosed in single
    ///     quotes (the default is `true`).
    @inlinable var scanStringSq: guint {
        /// specifies if strings can be enclosed in single
        ///     quotes (the default is `true`).
        get {
            let rv = _ptr.pointee.scan_string_sq
            return rv
        }
        /// specifies if strings can be enclosed in single
        ///     quotes (the default is `true`).
         set {
            _ptr.pointee.scan_string_sq = newValue
        }
    }

    /// specifies if strings can be enclosed in double
    ///     quotes (the default is `true`).
    @inlinable var scanStringDq: guint {
        /// specifies if strings can be enclosed in double
        ///     quotes (the default is `true`).
        get {
            let rv = _ptr.pointee.scan_string_dq
            return rv
        }
        /// specifies if strings can be enclosed in double
        ///     quotes (the default is `true`).
         set {
            _ptr.pointee.scan_string_dq = newValue
        }
    }

    /// specifies if binary, octal and hexadecimal numbers
    ///     are reported as `G_TOKEN_INT` (the default is `true`).
    @inlinable var numbers2Int: guint {
        /// specifies if binary, octal and hexadecimal numbers
        ///     are reported as `G_TOKEN_INT` (the default is `true`).
        get {
            let rv = _ptr.pointee.numbers_2_int
            return rv
        }
        /// specifies if binary, octal and hexadecimal numbers
        ///     are reported as `G_TOKEN_INT` (the default is `true`).
         set {
            _ptr.pointee.numbers_2_int = newValue
        }
    }

    /// specifies if all numbers are reported as `G_TOKEN_FLOAT`
    ///     (the default is `false`).
    @inlinable var int2Float: guint {
        /// specifies if all numbers are reported as `G_TOKEN_FLOAT`
        ///     (the default is `false`).
        get {
            let rv = _ptr.pointee.int_2_float
            return rv
        }
        /// specifies if all numbers are reported as `G_TOKEN_FLOAT`
        ///     (the default is `false`).
         set {
            _ptr.pointee.int_2_float = newValue
        }
    }

    /// specifies if identifiers are reported as strings
    ///     (the default is `false`).
    @inlinable var identifier2String: guint {
        /// specifies if identifiers are reported as strings
        ///     (the default is `false`).
        get {
            let rv = _ptr.pointee.identifier_2_string
            return rv
        }
        /// specifies if identifiers are reported as strings
        ///     (the default is `false`).
         set {
            _ptr.pointee.identifier_2_string = newValue
        }
    }

    /// specifies if characters are reported by setting
    ///     `token = ch` or as `G_TOKEN_CHAR` (the default is `true`).
    @inlinable var char2Token: guint {
        /// specifies if characters are reported by setting
        ///     `token = ch` or as `G_TOKEN_CHAR` (the default is `true`).
        get {
            let rv = _ptr.pointee.char_2_token
            return rv
        }
        /// specifies if characters are reported by setting
        ///     `token = ch` or as `G_TOKEN_CHAR` (the default is `true`).
         set {
            _ptr.pointee.char_2_token = newValue
        }
    }

    /// specifies if symbols are reported by setting
    ///     `token = v_symbol` or as `G_TOKEN_SYMBOL` (the default is `false`).
    @inlinable var symbol2Token: guint {
        /// specifies if symbols are reported by setting
        ///     `token = v_symbol` or as `G_TOKEN_SYMBOL` (the default is `false`).
        get {
            let rv = _ptr.pointee.symbol_2_token
            return rv
        }
        /// specifies if symbols are reported by setting
        ///     `token = v_symbol` or as `G_TOKEN_SYMBOL` (the default is `false`).
         set {
            _ptr.pointee.symbol_2_token = newValue
        }
    }

    /// specifies if a symbol is searched for in the
    ///     default scope in addition to the current scope (the default is `false`).
    @inlinable var scope0Fallback: guint {
        /// specifies if a symbol is searched for in the
        ///     default scope in addition to the current scope (the default is `false`).
        get {
            let rv = _ptr.pointee.scope_0_fallback
            return rv
        }
        /// specifies if a symbol is searched for in the
        ///     default scope in addition to the current scope (the default is `false`).
         set {
            _ptr.pointee.scope_0_fallback = newValue
        }
    }

    /// use value.v_int64 rather than v_int
    @inlinable var storeInt64: guint {
        /// use value.v_int64 rather than v_int
        get {
            let rv = _ptr.pointee.store_int64
            return rv
        }
        /// use value.v_int64 rather than v_int
         set {
            _ptr.pointee.store_int64 = newValue
        }
    }

    // var paddingDummy is unavailable because padding_dummy is private

}



