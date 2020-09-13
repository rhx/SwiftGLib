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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GScanner` instance.
    var _ptr: UnsafeMutablePointer<GScanner>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension ScannerRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GScanner>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GScanner>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GScanner>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GScanner>?) {
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

    /// Reference intialiser for a related type that implements `ScannerProtocol`
    @inlinable init<T: ScannerProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Scanner` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GScanner>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Scanner` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GScanner>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Scanner` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Scanner` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Scanner` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GScanner>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Scanner` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GScanner>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GScanner` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Scanner` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GScanner>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GScanner, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `ScannerProtocol`
    /// `GScanner` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ScannerProtocol`
    @inlinable public init<T: ScannerProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GScanner, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GScanner`.
    deinit {
        // no reference counting for GScanner, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GScanner, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GScanner, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GScanner, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GScanner, cannot ref(_ptr)
    }



}

// MARK: no Scanner properties

// MARK: no Scanner signals


// MARK: Scanner Record: ScannerProtocol extension (methods and fields)
public extension ScannerProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GScanner` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GScanner>! { return ptr?.assumingMemoryBound(to: GScanner.self) }

    /// Returns the current line in the input stream (counting
    /// from 1). This is the line of the last token parsed via
    /// `g_scanner_get_next_token()`.
    @inlinable func curLine() -> Int {
        let rv = Int(g_scanner_cur_line(_ptr))
        return rv
    }

    /// Returns the current position in the current line (counting
    /// from 0). This is the position of the last token parsed via
    /// `g_scanner_get_next_token()`.
    @inlinable func curPosition() -> Int {
        let rv = Int(g_scanner_cur_position(_ptr))
        return rv
    }

    /// Gets the current token type. This is simply the `token`
    /// field in the `GScanner` structure.
    @inlinable func curToken() -> GTokenType {
        let rv = g_scanner_cur_token(_ptr)
        return rv
    }

    /// Gets the current token value. This is simply the `value`
    /// field in the `GScanner` structure.
    @inlinable func curValue() -> GTokenValue {
        let rv = g_scanner_cur_value(_ptr)
        return rv
    }

    /// Frees all memory used by the `GScanner`.
    @inlinable func destroy() {
        g_scanner_destroy(_ptr)
    
    }

    /// Returns `true` if the scanner has reached the end of
    /// the file or text buffer.
    @inlinable func eof() -> Bool {
        let rv = ((g_scanner_eof(_ptr)) != 0)
        return rv
    }


    // *** error() is not available because it has a varargs (...) parameter!


    /// Parses the next token just like `g_scanner_peek_next_token()`
    /// and also removes it from the input stream. The token data is
    /// placed in the `token`, `value`, `line`, and `position` fields of
    /// the `GScanner` structure.
    @inlinable func getNextToken() -> GTokenType {
        let rv = g_scanner_get_next_token(_ptr)
        return rv
    }

    /// Prepares to scan a file.
    @inlinable func inputFile(inputFd: Int) {
        g_scanner_input_file(_ptr, gint(inputFd))
    
    }

    /// Prepares to scan a text buffer.
    @inlinable func input(text: UnsafePointer<gchar>!, textLen: Int) {
        g_scanner_input_text(_ptr, text, guint(textLen))
    
    }

    /// Looks up a symbol in the current scope and return its value.
    /// If the symbol is not bound in the current scope, `nil` is
    /// returned.
    @inlinable func lookup(symbol: UnsafePointer<gchar>!) -> gpointer! {
        let rv = g_scanner_lookup_symbol(_ptr, symbol)
        return rv
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
    @inlinable func peekNextToken() -> GTokenType {
        let rv = g_scanner_peek_next_token(_ptr)
        return rv
    }

    /// Adds a symbol to the given scope.
    @inlinable func scopeAddSymbol(scopeID: Int, symbol: UnsafePointer<gchar>!, value: gpointer! = nil) {
        g_scanner_scope_add_symbol(_ptr, guint(scopeID), symbol, value)
    
    }

    /// Calls the given function for each of the symbol/value pairs
    /// in the given scope of the `GScanner`. The function is passed
    /// the symbol and value of each pair, and the given `user_data`
    /// parameter.
    @inlinable func scopeForeachSymbol(scopeID: Int, `func`: GHFunc?, userData: gpointer! = nil) {
        g_scanner_scope_foreach_symbol(_ptr, guint(scopeID), `func`, userData)
    
    }

    /// Looks up a symbol in a scope and return its value. If the
    /// symbol is not bound in the scope, `nil` is returned.
    @inlinable func scopeLookupSymbol(scopeID: Int, symbol: UnsafePointer<gchar>!) -> gpointer! {
        let rv = g_scanner_scope_lookup_symbol(_ptr, guint(scopeID), symbol)
        return rv
    }

    /// Removes a symbol from a scope.
    @inlinable func scopeRemoveSymbol(scopeID: Int, symbol: UnsafePointer<gchar>!) {
        g_scanner_scope_remove_symbol(_ptr, guint(scopeID), symbol)
    
    }

    /// Sets the current scope.
    @inlinable func setScope(scopeID: Int) -> Int {
        let rv = Int(g_scanner_set_scope(_ptr, guint(scopeID)))
        return rv
    }

    /// Rewinds the filedescriptor to the current buffer position
    /// and blows the file read ahead buffer. This is useful for
    /// third party uses of the scanners filedescriptor, which hooks
    /// onto the current scanning position.
    @inlinable func syncFileOffset() {
        g_scanner_sync_file_offset(_ptr)
    
    }

    /// Outputs a message through the scanner's msg_handler,
    /// resulting from an unexpected token in the input stream.
    /// Note that you should not call `g_scanner_peek_next_token()`
    /// followed by `g_scanner_unexp_token()` without an intermediate
    /// call to `g_scanner_get_next_token()`, as `g_scanner_unexp_token()`
    /// evaluates the scanner's current token (not the peeked token)
    /// to construct part of the message.
    @inlinable func unexpToken(expectedToken: GTokenType, identifierSpec: UnsafePointer<gchar>!, symbolSpec: UnsafePointer<gchar>!, symbolName: UnsafePointer<gchar>!, message: UnsafePointer<gchar>!, isError: Int) {
        g_scanner_unexp_token(_ptr, expectedToken, identifierSpec, symbolSpec, symbolName, message, gint(isError))
    
    }


    // *** warn() is not available because it has a varargs (...) parameter!

    /// Parses the next token just like `g_scanner_peek_next_token()`
    /// and also removes it from the input stream. The token data is
    /// placed in the `token`, `value`, `line`, and `position` fields of
    /// the `GScanner` structure.
    @inlinable var nextToken: GTokenType {
        /// Parses the next token just like `g_scanner_peek_next_token()`
        /// and also removes it from the input stream. The token data is
        /// placed in the `token`, `value`, `line`, and `position` fields of
        /// the `GScanner` structure.
        get {
            let rv = g_scanner_get_next_token(_ptr)
            return rv
        }
    }

    /// unused
    @inlinable var userData: gpointer! {
        /// unused
        get {
            let rv = _ptr.pointee.user_data
            return rv
        }
        /// unused
         set {
            _ptr.pointee.user_data = newValue
        }
    }

    /// unused
    @inlinable var maxParseErrors: guint {
        /// unused
        get {
            let rv = _ptr.pointee.max_parse_errors
            return rv
        }
        /// unused
         set {
            _ptr.pointee.max_parse_errors = newValue
        }
    }

    /// `g_scanner_error()` increments this field
    @inlinable var parseErrors: guint {
        /// `g_scanner_error()` increments this field
        get {
            let rv = _ptr.pointee.parse_errors
            return rv
        }
        /// `g_scanner_error()` increments this field
         set {
            _ptr.pointee.parse_errors = newValue
        }
    }

    /// name of input stream, featured by the default message handler
    @inlinable var inputName: UnsafePointer<gchar>! {
        /// name of input stream, featured by the default message handler
        get {
            let rv = _ptr.pointee.input_name
            return rv
        }
        /// name of input stream, featured by the default message handler
         set {
            _ptr.pointee.input_name = newValue
        }
    }

    /// quarked data
    @inlinable var qdata: DataRef! {
        /// quarked data
        get {
            let rv = DataRef(gconstpointer: gconstpointer(_ptr.pointee.qdata))
            return rv
        }
        /// quarked data
         set {
            _ptr.pointee.qdata = UnsafeMutablePointer<GData>(newValue._ptr)
        }
    }

    /// link into the scanner configuration
    @inlinable var config: ScannerConfigRef! {
        /// link into the scanner configuration
        get {
            let rv = ScannerConfigRef(gconstpointer: gconstpointer(_ptr.pointee.config))
            return rv
        }
        /// link into the scanner configuration
         set {
            _ptr.pointee.config = UnsafeMutablePointer<GScannerConfig>(newValue._ptr)
        }
    }

    /// token parsed by the last `g_scanner_get_next_token()`
    @inlinable var token: GTokenType {
        /// token parsed by the last `g_scanner_get_next_token()`
        get {
            let rv = _ptr.pointee.token
            return rv
        }
        /// token parsed by the last `g_scanner_get_next_token()`
         set {
            _ptr.pointee.token = newValue
        }
    }

    /// value of the last token from `g_scanner_get_next_token()`
    @inlinable var value: GTokenValue {
        /// value of the last token from `g_scanner_get_next_token()`
        get {
            let rv = _ptr.pointee.value
            return rv
        }
        /// value of the last token from `g_scanner_get_next_token()`
         set {
            _ptr.pointee.value = newValue
        }
    }

    /// line number of the last token from `g_scanner_get_next_token()`
    @inlinable var line: guint {
        /// line number of the last token from `g_scanner_get_next_token()`
        get {
            let rv = _ptr.pointee.line
            return rv
        }
        /// line number of the last token from `g_scanner_get_next_token()`
         set {
            _ptr.pointee.line = newValue
        }
    }

    /// char number of the last token from `g_scanner_get_next_token()`
    @inlinable var position: guint {
        /// char number of the last token from `g_scanner_get_next_token()`
        get {
            let rv = _ptr.pointee.position
            return rv
        }
        /// char number of the last token from `g_scanner_get_next_token()`
         set {
            _ptr.pointee.position = newValue
        }
    }

    /// token parsed by the last `g_scanner_peek_next_token()`
    @inlinable var _nextToken: GTokenType {
        /// token parsed by the last `g_scanner_peek_next_token()`
        get {
            let rv = _ptr.pointee.next_token
            return rv
        }
        /// token parsed by the last `g_scanner_peek_next_token()`
         set {
            _ptr.pointee.next_token = newValue
        }
    }

    /// value of the last token from `g_scanner_peek_next_token()`
    @inlinable var nextValue: GTokenValue {
        /// value of the last token from `g_scanner_peek_next_token()`
        get {
            let rv = _ptr.pointee.next_value
            return rv
        }
        /// value of the last token from `g_scanner_peek_next_token()`
         set {
            _ptr.pointee.next_value = newValue
        }
    }

    /// line number of the last token from `g_scanner_peek_next_token()`
    @inlinable var nextLine: guint {
        /// line number of the last token from `g_scanner_peek_next_token()`
        get {
            let rv = _ptr.pointee.next_line
            return rv
        }
        /// line number of the last token from `g_scanner_peek_next_token()`
         set {
            _ptr.pointee.next_line = newValue
        }
    }

    /// char number of the last token from `g_scanner_peek_next_token()`
    @inlinable var nextPosition: guint {
        /// char number of the last token from `g_scanner_peek_next_token()`
        get {
            let rv = _ptr.pointee.next_position
            return rv
        }
        /// char number of the last token from `g_scanner_peek_next_token()`
         set {
            _ptr.pointee.next_position = newValue
        }
    }

    // var symbolTable is unavailable because symbol_table is private

    // var inputFd is unavailable because input_fd is private

    // var text is unavailable because text is private

    // var textEnd is unavailable because text_end is private

    // var buffer is unavailable because buffer is private

    // var scopeID is unavailable because scope_id is private

    /// handler function for _warn and _error
    @inlinable var msgHandler: GScannerMsgFunc! {
        /// handler function for _warn and _error
        get {
            let rv = _ptr.pointee.msg_handler
            return rv
        }
        /// handler function for _warn and _error
         set {
            _ptr.pointee.msg_handler = newValue
        }
    }

}



