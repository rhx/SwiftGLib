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
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Scanner` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GScanner>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GScanner` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Scanner` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GScanner>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GScanner, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `ScannerProtocol`
    /// `GScanner` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ScannerProtocol`
    public init<T: ScannerProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GScanner, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GScanner`.
    deinit {
        // no reference counting for GScanner, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GScanner, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GScanner, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GScanner, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GScanner, cannot ref(cast(_ptr))
    }



}

// MARK: no Scanner properties

// MARK: no Scanner signals


// MARK: Scanner Record: ScannerProtocol extension (methods and fields)
public extension ScannerProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GScanner` instance.
    var _ptr: UnsafeMutablePointer<GScanner> { return ptr.assumingMemoryBound(to: GScanner.self) }

    /// Returns the current line in the input stream (counting
    /// from 1). This is the line of the last token parsed via
    /// `g_scanner_get_next_token()`.
    func curLine() -> Int {
        let rv: Int = cast(g_scanner_cur_line(cast(_ptr)))
        return Int(rv)
    }

    /// Returns the current position in the current line (counting
    /// from 0). This is the position of the last token parsed via
    /// `g_scanner_get_next_token()`.
    func curPosition() -> Int {
        let rv: Int = cast(g_scanner_cur_position(cast(_ptr)))
        return Int(rv)
    }

    /// Gets the current token type. This is simply the `token`
    /// field in the `GScanner` structure.
    func curToken() -> GTokenType {
        let rv = g_scanner_cur_token(cast(_ptr))
        return cast(rv)
    }

    /// Gets the current token value. This is simply the `value`
    /// field in the `GScanner` structure.
    func curValue() -> GTokenValue {
        let rv = g_scanner_cur_value(cast(_ptr))
        return cast(rv)
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
        return cast(rv)
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
        let rv: UnsafeMutableRawPointer! = cast(g_scanner_lookup_symbol(cast(_ptr), symbol))
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
        return cast(rv)
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
        let rv: UnsafeMutableRawPointer! = cast(g_scanner_scope_lookup_symbol(cast(_ptr), guint(scope_id), symbol))
        return cast(rv)
    }

    /// Removes a symbol from a scope.
    func scopeRemoveSymbol(scopeID scope_id: CUnsignedInt, symbol: UnsafePointer<gchar>) {
        g_scanner_scope_remove_symbol(cast(_ptr), guint(scope_id), symbol)
    
    }

    /// Sets the current scope.
    func setScope(scopeID scope_id: CUnsignedInt) -> Int {
        let rv: Int = cast(g_scanner_set_scope(cast(_ptr), guint(scope_id)))
        return Int(rv)
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
            return cast(rv)
        }
    }

    /// unused
    var userData: UnsafeMutableRawPointer {
        /// unused
        get {
            let rv: UnsafeMutableRawPointer = cast(_ptr.pointee.user_data)
            return rv
        }
        /// unused
         set {
            _ptr.pointee.user_data = cast(newValue)
        }
    }

    /// unused
    var maxParseErrors: Int {
        /// unused
        get {
            let rv: Int = cast(_ptr.pointee.max_parse_errors)
            return rv
        }
        /// unused
         set {
            _ptr.pointee.max_parse_errors = guint(newValue)
        }
    }

    /// `g_scanner_error()` increments this field
    var parseErrors: Int {
        /// `g_scanner_error()` increments this field
        get {
            let rv: Int = cast(_ptr.pointee.parse_errors)
            return rv
        }
        /// `g_scanner_error()` increments this field
         set {
            _ptr.pointee.parse_errors = guint(newValue)
        }
    }

    /// name of input stream, featured by the default message handler
    var inputName: UnsafePointer<CChar> {
        /// name of input stream, featured by the default message handler
        get {
            let rv: UnsafePointer<CChar> = cast(_ptr.pointee.input_name)
            return rv
        }
        /// name of input stream, featured by the default message handler
         set {
            _ptr.pointee.input_name = cast(newValue)
        }
    }

    /// quarked data
    var qdata: UnsafeMutablePointer<GData> {
        /// quarked data
        get {
            let rv: UnsafeMutablePointer<GData> = cast(_ptr.pointee.qdata)
            return rv
        }
        /// quarked data
         set {
            _ptr.pointee.qdata = cast(newValue)
        }
    }

    /// link into the scanner configuration
    var config: UnsafeMutablePointer<GScannerConfig> {
        /// link into the scanner configuration
        get {
            let rv: UnsafeMutablePointer<GScannerConfig> = cast(_ptr.pointee.config)
            return rv
        }
        /// link into the scanner configuration
         set {
            _ptr.pointee.config = cast(newValue)
        }
    }

    /// token parsed by the last `g_scanner_get_next_token()`
    var token: GTokenType {
        /// token parsed by the last `g_scanner_get_next_token()`
        get {
            let rv: GTokenType = cast(_ptr.pointee.token)
            return rv
        }
        /// token parsed by the last `g_scanner_get_next_token()`
         set {
            _ptr.pointee.token = cast(newValue)
        }
    }

    /// value of the last token from `g_scanner_get_next_token()`
    var value: GTokenValue {
        /// value of the last token from `g_scanner_get_next_token()`
        get {
            let rv: GTokenValue = cast(_ptr.pointee.value)
            return rv
        }
        /// value of the last token from `g_scanner_get_next_token()`
         set {
            _ptr.pointee.value = cast(newValue)
        }
    }

    /// line number of the last token from `g_scanner_get_next_token()`
    var line: Int {
        /// line number of the last token from `g_scanner_get_next_token()`
        get {
            let rv: Int = cast(_ptr.pointee.line)
            return rv
        }
        /// line number of the last token from `g_scanner_get_next_token()`
         set {
            _ptr.pointee.line = guint(newValue)
        }
    }

    /// char number of the last token from `g_scanner_get_next_token()`
    var position: Int {
        /// char number of the last token from `g_scanner_get_next_token()`
        get {
            let rv: Int = cast(_ptr.pointee.position)
            return rv
        }
        /// char number of the last token from `g_scanner_get_next_token()`
         set {
            _ptr.pointee.position = guint(newValue)
        }
    }

    /// token parsed by the last `g_scanner_peek_next_token()`
    var _nextToken: GTokenType {
        /// token parsed by the last `g_scanner_peek_next_token()`
        get {
            let rv: GTokenType = cast(_ptr.pointee.next_token)
            return rv
        }
        /// token parsed by the last `g_scanner_peek_next_token()`
         set {
            _ptr.pointee.next_token = cast(newValue)
        }
    }

    /// value of the last token from `g_scanner_peek_next_token()`
    var nextValue: GTokenValue {
        /// value of the last token from `g_scanner_peek_next_token()`
        get {
            let rv: GTokenValue = cast(_ptr.pointee.next_value)
            return rv
        }
        /// value of the last token from `g_scanner_peek_next_token()`
         set {
            _ptr.pointee.next_value = cast(newValue)
        }
    }

    /// line number of the last token from `g_scanner_peek_next_token()`
    var nextLine: Int {
        /// line number of the last token from `g_scanner_peek_next_token()`
        get {
            let rv: Int = cast(_ptr.pointee.next_line)
            return rv
        }
        /// line number of the last token from `g_scanner_peek_next_token()`
         set {
            _ptr.pointee.next_line = guint(newValue)
        }
    }

    /// char number of the last token from `g_scanner_peek_next_token()`
    var nextPosition: Int {
        /// char number of the last token from `g_scanner_peek_next_token()`
        get {
            let rv: Int = cast(_ptr.pointee.next_position)
            return rv
        }
        /// char number of the last token from `g_scanner_peek_next_token()`
         set {
            _ptr.pointee.next_position = guint(newValue)
        }
    }

    // var symbolTable is unavailable because symbol_table is private

    // var inputFd is unavailable because input_fd is private

    // var text is unavailable because text is private

    // var textEnd is unavailable because text_end is private

    // var buffer is unavailable because buffer is private

    // var scopeID is unavailable because scope_id is private

    /// handler function for _warn and _error
    var msgHandler: GScannerMsgFunc {
        /// handler function for _warn and _error
        get {
            let rv: GScannerMsgFunc = cast(_ptr.pointee.msg_handler)
            return rv
        }
        /// handler function for _warn and _error
         set {
            _ptr.pointee.msg_handler = cast(newValue)
        }
    }

}



