import CGLib

// MARK: - Scanner Record

/// The `ScannerProtocol` protocol exposes the methods and properties of an underlying `GScanner` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Scanner`.
/// Alternatively, use `ScannerRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The data structure representing a lexical scanner.
/// 
/// You should set `input_name` after creating the scanner, since
/// it is used by the default message handler when displaying
/// warnings and errors. If you are scanning a file, the filename
/// would be a good choice.
/// 
/// The `user_data` and `max_parse_errors` fields are not used.
/// If you need to associate extra data with the scanner you
/// can place them here.
/// 
/// If you want to use your own message handler you can set the
/// `msg_handler` field. The type of the message handler function
/// is declared by `GScannerMsgFunc`.
public protocol ScannerProtocol {
    /// Untyped pointer to the underlying `GScanner` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GScanner` instance.
    var _ptr: UnsafeMutablePointer<GScanner> { get }
}

/// The `ScannerRef` type acts as a lightweight Swift reference to an underlying `GScanner` instance.
/// It exposes methods that can operate on this data type through `ScannerProtocol` conformance.
/// Use `ScannerRef` only as an `unowned` reference to an existing `GScanner` instance.
///
/// The data structure representing a lexical scanner.
/// 
/// You should set `input_name` after creating the scanner, since
/// it is used by the default message handler when displaying
/// warnings and errors. If you are scanning a file, the filename
/// would be a good choice.
/// 
/// The `user_data` and `max_parse_errors` fields are not used.
/// If you need to associate extra data with the scanner you
/// can place them here.
/// 
/// If you want to use your own message handler you can set the
/// `msg_handler` field. The type of the message handler function
/// is declared by `GScannerMsgFunc`.
public struct ScannerRef: ScannerProtocol {
    /// Untyped pointer to the underlying `GScanner` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ScannerRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GScanner>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ScannerProtocol`
    init<T: ScannerProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Scanner` type acts as an owner of an underlying `GScanner` instance.
/// It provides the methods that can operate on this data type through `ScannerProtocol` conformance.
/// Use `Scanner` as a strong reference or owner of a `GScanner` instance.
///
/// The data structure representing a lexical scanner.
/// 
/// You should set `input_name` after creating the scanner, since
/// it is used by the default message handler when displaying
/// warnings and errors. If you are scanning a file, the filename
/// would be a good choice.
/// 
/// The `user_data` and `max_parse_errors` fields are not used.
/// If you need to associate extra data with the scanner you
/// can place them here.
/// 
/// If you want to use your own message handler you can set the
/// `msg_handler` field. The type of the message handler function
/// is declared by `GScannerMsgFunc`.
open class Scanner: ScannerProtocol {
    /// Untyped pointer to the underlying `GScanner` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Scanner` instance.
    public init(_ op: UnsafeMutablePointer<GScanner>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ScannerProtocol`
    /// `GScanner` does not allow reference counting.
    public convenience init<T: ScannerProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GScanner, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GScanner`.
    deinit {
        // no reference counting for GScanner, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GScanner.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GScanner.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GScanner.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GScanner>(opaquePointer))
    }



}

// MARK: - no Scanner properties

// MARK: - no signals


public extension ScannerProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GScanner` instance.
    var _ptr: UnsafeMutablePointer<GScanner> { return ptr.assumingMemoryBound(to: GScanner.self) }

    /// Returns the current line in the input stream (counting
    /// from 1). This is the line of the last token parsed via
    /// `g_scanner_get_next_token()`.
    func curLine() -> CUnsignedInt {
        let rv = g_scanner_cur_line(cast(_ptr))
        return CUnsignedInt(rv)
    }

    /// Returns the current position in the current line (counting
    /// from 0). This is the position of the last token parsed via
    /// `g_scanner_get_next_token()`.
    func curPosition() -> CUnsignedInt {
        let rv = g_scanner_cur_position(cast(_ptr))
        return CUnsignedInt(rv)
    }

    /// Gets the current token type. This is simply the `token`
    /// field in the `GScanner` structure.
    func curToken() -> GTokenType {
        let rv = g_scanner_cur_token(cast(_ptr))
        return rv
    }

    /// Gets the current token value. This is simply the `value`
    /// field in the `GScanner` structure.
    func curValue() -> GTokenValue {
        let rv = g_scanner_cur_value(cast(_ptr))
        return rv
    }

    /// Frees all memory used by the `GScanner`.
    func destroy() {
        g_scanner_destroy(cast(_ptr))
    
    }

    /// Returns `true` if the scanner has reached the end of
    /// the file or text buffer.
    func eof() -> Bool {
        let rv = g_scanner_eof(cast(_ptr))
        return Bool(rv != 0)
    }


    // *** error() is not available because it has a varargs (...) parameter!


    /// Parses the next token just like `g_scanner_peek_next_token()`
    /// and also removes it from the input stream. The token data is
    /// placed in the `token`, `value`, `line`, and `position` fields of
    /// the `GScanner` structure.
    func getNextToken() -> GTokenType {
        let rv = g_scanner_get_next_token(cast(_ptr))
        return rv
    }

    /// Prepares to scan a file.
    func inputFile(inputFd input_fd: CInt) {
        g_scanner_input_file(cast(_ptr), gint(input_fd))
    
    }

    /// Prepares to scan a text buffer.
    func input(text: UnsafePointer<gchar>, textLen text_len: CUnsignedInt) {
        g_scanner_input_text(cast(_ptr), text, guint(text_len))
    
    }

    /// Looks up a symbol in the current scope and return its value.
    /// If the symbol is not bound in the current scope, `nil` is
    /// returned.
    func lookup(symbol: UnsafePointer<gchar>) -> UnsafeMutableRawPointer! {
        let rv = g_scanner_lookup_symbol(cast(_ptr), symbol)
        return cast(rv)
    }

    /// Parses the next token, without removing it from the input stream.
    /// The token data is placed in the `next_token`, `next_value`, `next_line`,
    /// and `next_position` fields of the `GScanner` structure.
    /// 
    /// Note that, while the token is not removed from the input stream
    /// (i.e. the next call to `g_scanner_get_next_token()` will return the
    /// same token), it will not be reevaluated. This can lead to surprising
    /// results when changing scope or the scanner configuration after peeking
    /// the next token. Getting the next token after switching the scope or
    /// configuration will return whatever was peeked before, regardless of
    /// any symbols that may have been added or removed in the new scope.
    func peekNextToken() -> GTokenType {
        let rv = g_scanner_peek_next_token(cast(_ptr))
        return rv
    }

    /// Adds a symbol to the given scope.
    func scopeAddSymbol(scopeID scope_id: CUnsignedInt, symbol: UnsafePointer<gchar>, value: UnsafeMutableRawPointer) {
        g_scanner_scope_add_symbol(cast(_ptr), guint(scope_id), symbol, cast(value))
    
    }

    /// Calls the given function for each of the symbol/value pairs
    /// in the given scope of the `GScanner`. The function is passed
    /// the symbol and value of each pair, and the given `user_data`
    /// parameter.
    func scopeForeachSymbol(scopeID scope_id: CUnsignedInt, func_: @escaping HFunc, userData user_data: UnsafeMutableRawPointer) {
        g_scanner_scope_foreach_symbol(cast(_ptr), guint(scope_id), func_, cast(user_data))
    
    }

    /// Looks up a symbol in a scope and return its value. If the
    /// symbol is not bound in the scope, `nil` is returned.
    func scopeLookupSymbol(scopeID scope_id: CUnsignedInt, symbol: UnsafePointer<gchar>) -> UnsafeMutableRawPointer! {
        let rv = g_scanner_scope_lookup_symbol(cast(_ptr), guint(scope_id), symbol)
        return cast(rv)
    }

    /// Removes a symbol from a scope.
    func scopeRemoveSymbol(scopeID scope_id: CUnsignedInt, symbol: UnsafePointer<gchar>) {
        g_scanner_scope_remove_symbol(cast(_ptr), guint(scope_id), symbol)
    
    }

    /// Sets the current scope.
    func setScope(scopeID scope_id: CUnsignedInt) -> CUnsignedInt {
        let rv = g_scanner_set_scope(cast(_ptr), guint(scope_id))
        return CUnsignedInt(rv)
    }

    /// Rewinds the filedescriptor to the current buffer position
    /// and blows the file read ahead buffer. This is useful for
    /// third party uses of the scanners filedescriptor, which hooks
    /// onto the current scanning position.
    func syncFileOffset() {
        g_scanner_sync_file_offset(cast(_ptr))
    
    }

    /// Outputs a message through the scanner's msg_handler,
    /// resulting from an unexpected token in the input stream.
    /// Note that you should not call `g_scanner_peek_next_token()`
    /// followed by `g_scanner_unexp_token()` without an intermediate
    /// call to `g_scanner_get_next_token()`, as `g_scanner_unexp_token()`
    /// evaluates the scanner's current token (not the peeked token)
    /// to construct part of the message.
    func unexpToken(expectedToken expected_token: TokenType, identifierSpec identifier_spec: UnsafePointer<gchar>, symbolSpec symbol_spec: UnsafePointer<gchar>, symbolName symbol_name: UnsafePointer<gchar>, message: UnsafePointer<gchar>, isError is_error: CInt) {
        g_scanner_unexp_token(cast(_ptr), expected_token, identifier_spec, symbol_spec, symbol_name, message, gint(is_error))
    
    }


    // *** warn() is not available because it has a varargs (...) parameter!

    /// Parses the next token just like `g_scanner_peek_next_token()`
    /// and also removes it from the input stream. The token data is
    /// placed in the `token`, `value`, `line`, and `position` fields of
    /// the `GScanner` structure.
    var nextToken: GTokenType {
        /// Parses the next token just like `g_scanner_peek_next_token()`
        /// and also removes it from the input stream. The token data is
        /// placed in the `token`, `value`, `line`, and `position` fields of
        /// the `GScanner` structure.
        get {
            let rv = g_scanner_get_next_token(cast(_ptr))
            return rv
        }
    }
}



