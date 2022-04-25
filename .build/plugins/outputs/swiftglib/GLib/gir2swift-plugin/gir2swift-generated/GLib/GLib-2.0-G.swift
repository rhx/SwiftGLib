import CGLib

// MARK: - Error Record

/// The `GError` structure contains information about
/// an error that has occurred.
///
/// The `ErrorProtocol` protocol exposes the methods and properties of an underlying `GError` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GLibError`.
/// Alternatively, use `ErrorRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ErrorProtocol: Error {
        /// Untyped pointer to the underlying `GError` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GError` instance.
    var error_ptr: UnsafeMutablePointer<GError>! { get }

    /// Required Initialiser for types conforming to `ErrorProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `GError` structure contains information about
/// an error that has occurred.
///
/// The `ErrorRef` type acts as a lightweight Swift reference to an underlying `GError` instance.
/// It exposes methods that can operate on this data type through `ErrorProtocol` conformance.
/// Use `ErrorRef` only as an `unowned` reference to an existing `GError` instance.
///
public struct ErrorRef: ErrorProtocol {
        /// Untyped pointer to the underlying `GError` instance.
    /// For type-safe access, use the generated, typed pointer `error_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ErrorRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GError>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GError>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GError>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GError>?) {
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

    /// Reference intialiser for a related type that implements `ErrorProtocol`
    @inlinable init<T: ErrorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ErrorProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ErrorProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ErrorProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ErrorProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ErrorProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    
    // *** new() is not available because it has a varargs (...) parameter!


    /// Creates a new `GError`; unlike `g_error_new()`, `message` is
    /// not a `printf()`-style format string. Use this function if
    /// `message` contains text you don't have control over,
    /// that could include `printf()` escape sequences.
    @inlinable init(literal domain: GQuark, code: Int, message: UnsafePointer<gchar>!) {
            let result = g_error_new_literal(domain, gint(code), message)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GError` with the given `domain` and `code`,
    /// and a message formatted with `format`.
    @inlinable init(valist domain: GQuark, code: Int, format: UnsafePointer<gchar>!, args: CVaListPointer) {
            let result = g_error_new_valist(domain, gint(code), format, args)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GError`; unlike `g_error_new()`, `message` is
    /// not a `printf()`-style format string. Use this function if
    /// `message` contains text you don't have control over,
    /// that could include `printf()` escape sequences.
    @inlinable static func new(literal domain: GQuark, code: Int, message: UnsafePointer<gchar>!) -> ErrorRef! {
            let result = g_error_new_literal(domain, gint(code), message)
        guard let rv = ErrorRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new `GError` with the given `domain` and `code`,
    /// and a message formatted with `format`.
    @inlinable static func new(valist domain: GQuark, code: Int, format: UnsafePointer<gchar>!, args: CVaListPointer) -> ErrorRef! {
            let result = g_error_new_valist(domain, gint(code), format, args)
        guard let rv = ErrorRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }
}

/// The `GError` structure contains information about
/// an error that has occurred.
///
/// The `GLibError` type acts as an owner of an underlying `GError` instance.
/// It provides the methods that can operate on this data type through `ErrorProtocol` conformance.
/// Use `GLibError` as a strong reference or owner of a `GError` instance.
///
open class GLibError: ErrorProtocol {
        /// Untyped pointer to the underlying `GError` instance.
    /// For type-safe access, use the generated, typed pointer `error_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GLibError` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GError>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GLibError` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GError>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GLibError` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GLibError` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GLibError` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GError>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GLibError` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GError>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GError` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `GLibError` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GError>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference intialiser for a related type that implements `ErrorProtocol`
    /// `GError` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ErrorProtocol`
    @inlinable public init<T: ErrorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Do-nothing destructor for `GError`.
    deinit {
	    g_error_free(error_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ErrorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ErrorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ErrorProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ErrorProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ErrorProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ErrorProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ErrorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ErrorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }


    // *** new() is not available because it has a varargs (...) parameter!


    /// Creates a new `GError`; unlike `g_error_new()`, `message` is
    /// not a `printf()`-style format string. Use this function if
    /// `message` contains text you don't have control over,
    /// that could include `printf()` escape sequences.
    @inlinable public init(literal domain: GQuark, code: Int, message: UnsafePointer<gchar>!) {
            let result = g_error_new_literal(domain, gint(code), message)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }


    // *** newValist() is currently not available because g_error_new_valist takes a va_list pointer!


    /// Creates a new `GError`; unlike `g_error_new()`, `message` is
    /// not a `printf()`-style format string. Use this function if
    /// `message` contains text you don't have control over,
    /// that could include `printf()` escape sequences.
    @inlinable public static func new(literal domain: GQuark, code: Int, message: UnsafePointer<gchar>!) -> GLibError! {
            let result = g_error_new_literal(domain, gint(code), message)
        guard let rv = GLibError(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }


    // *** newValist() is currently not available because g_error_new_valist takes a va_list pointer!


}

// MARK: no GLibError properties

// MARK: no GLibError signals

// MARK: GLibError has no signals
// MARK: Error Record: ErrorProtocol extension (methods and fields)
public extension ErrorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GError` instance.
    @inlinable var error_ptr: UnsafeMutablePointer<GError>! { return ptr?.assumingMemoryBound(to: GError.self) }

    /// Makes a copy of `error`.
    @inlinable func copy() -> ErrorRef! {
        let result = g_error_copy(error_ptr)
        guard let rv = ErrorRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Frees a `GError` and associated resources.
    @inlinable func free() {
        
        g_error_free(error_ptr)
        
    }

    /// Returns `true` if `error` matches `domain` and `code`, `false`
    /// otherwise. In particular, when `error` is `nil`, `false` will
    /// be returned.
    /// 
    /// If `domain` contains a `FAILED` (or otherwise generic) error code,
    /// you should generally not check for it explicitly, but should
    /// instead treat any not-explicitly-recognized error code as being
    /// equivalent to the `FAILED` code. This way, if the domain is
    /// extended in the future to provide a more specific error code for
    /// a certain case, your code will still work.
    @inlinable func matches(domain: GQuark, code: Int) -> Bool {
        let result = g_error_matches(error_ptr, domain, gint(code))
        let rv = ((result) != 0)
        return rv
    }

    @inlinable func assertionMessageError(domain: UnsafePointer<CChar>!, file: UnsafePointer<CChar>!, line: Int, `func`: UnsafePointer<CChar>!, expr: UnsafePointer<CChar>!, errorDomain: GQuark, errorCode: Int) {
        
        g_assertion_message_error(domain, file, gint(line), `func`, expr, error_ptr, errorDomain, gint(errorCode))
        
    }

    /// If `dest` is `nil`, free `src`; otherwise, moves `src` into *`dest`.
    /// The error variable `dest` points to must be `nil`.
    /// 
    /// `src` must be non-`nil`.
    /// 
    /// Note that `src` is no longer valid after this call. If you want
    /// to keep using the same GError*, you need to set it to `nil`
    /// after calling this function on it.
    @inlinable func propagateError(dest: UnsafeMutablePointer<UnsafeMutablePointer<GError>?>? = nil) {
        
        g_propagate_error(dest, error_ptr)
        
    }


    // *** propagatePrefixedError() is not available because it has a varargs (...) parameter!


    /// Pretty-prints a message showing the context of a `GVariant` parse
    /// error within the string for which parsing was attempted.
    /// 
    /// The resulting string is suitable for output to the console or other
    /// monospace media where newlines are treated in the usual way.
    /// 
    /// The message will typically look something like one of the following:
    /// 
    /// ```
    /// unterminated string constant:
    ///   (1, 2, 3, 'abc
    ///             ^^^^
    /// ```
    /// 
    /// or
    /// 
    /// ```
    /// unable to find a common type:
    ///   [1, 2, 3, 'str']
    ///    ^        ^^^^^
    /// ```
    /// 
    /// The format of the message may change in a future version.
    /// 
    /// `error` must have come from a failed attempt to `g_variant_parse()` and
    /// `source_str` must be exactly the same string that caused the error.
    /// If `source_str` was not nul-terminated when you passed it to
    /// `g_variant_parse()` then you must add nul termination before using this
    /// function.
    @inlinable func variantParseErrorPrintContext(sourceStr: UnsafePointer<gchar>!) -> String! {
        let result = g_variant_parse_error_print_context(error_ptr, sourceStr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// error domain, e.g. `G_FILE_ERROR`
    @inlinable var domain: GQuark {
        /// error domain, e.g. `G_FILE_ERROR`
        get {
            let rv = error_ptr.pointee.domain
    return rv
        }
        /// error domain, e.g. `G_FILE_ERROR`
         set {
            error_ptr.pointee.domain = newValue
        }
    }

    /// error code, e.g. `G_FILE_ERROR_NOENT`
    @inlinable var code: gint {
        /// error code, e.g. `G_FILE_ERROR_NOENT`
        get {
            let rv = error_ptr.pointee.code
    return rv
        }
        /// error code, e.g. `G_FILE_ERROR_NOENT`
         set {
            error_ptr.pointee.code = newValue
        }
    }

    /// human-readable informative error message
    @inlinable var message: UnsafeMutablePointer<gchar>! {
        /// human-readable informative error message
        get {
            let rv = error_ptr.pointee.message
    return rv
        }
        /// human-readable informative error message
         set {
            error_ptr.pointee.message = newValue
        }
    }

}



