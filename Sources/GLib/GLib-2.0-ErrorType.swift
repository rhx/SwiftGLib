import CGLib

// MARK: - Error Record

/// The `ErrorTypeProtocol` protocol exposes the methods and properties of an underlying `GError` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ErrorType`.
/// Alternatively, use `ErrorTypeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GError` structure contains information about
/// an error that has occurred.
public protocol ErrorTypeProtocol: Error {
    /// Untyped pointer to the underlying `GError` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GError` instance.
    var error_ptr: UnsafeMutablePointer<GError> { get }
}

/// The `ErrorRef` type acts as a lightweight Swift reference to an underlying `GError` instance.
/// It exposes methods that can operate on this data type through `ErrorTypeProtocol` conformance.
/// Use `ErrorRef` only as an `unowned` reference to an existing `GError` instance.
///
/// The `GError` structure contains information about
/// an error that has occurred.
public struct ErrorRef: ErrorTypeProtocol {
    /// Untyped pointer to the underlying `GError` instance.
    /// For type-safe access, use the generated, typed pointer `error_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ErrorRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GError>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ErrorTypeProtocol`
    init<T: ErrorTypeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ErrorTypeProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ErrorTypeProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ErrorTypeProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ErrorTypeProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ErrorTypeProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    
    // *** new() is not available because it has a varargs (...) parameter!


    /// Creates a new `GError`; unlike `g_error_new()`, `message` is
    /// not a `printf()`-style format string. Use this function if
    /// `message` contains text you don't have control over,
    /// that could include `printf()` escape sequences.
    init(literal domain: Quark, code: CInt, message: UnsafePointer<gchar>) {
        let rv = g_error_new_literal(domain, gint(code), message)
        self.init(cast(rv))
    }

    /// Creates a new `GError` with the given `domain` and `code`,
    /// and a message formatted with `format`.
    init(valist domain: Quark, code: CInt, format: UnsafePointer<gchar>, args: CVaListPointer) {
        let rv = g_error_new_valist(domain, gint(code), format, args)
        self.init(cast(rv))
    }
    /// Creates a new `GError`; unlike `g_error_new()`, `message` is
    /// not a `printf()`-style format string. Use this function if
    /// `message` contains text you don't have control over,
    /// that could include `printf()` escape sequences.
    static func new(literal domain: Quark, code: CInt, message: UnsafePointer<gchar>) -> ErrorRef! {
        let rv = g_error_new_literal(domain, gint(code), message)
        return rv.map { ErrorRef(cast($0)) }
    }

    /// Creates a new `GError` with the given `domain` and `code`,
    /// and a message formatted with `format`.
    static func new(valist domain: Quark, code: CInt, format: UnsafePointer<gchar>, args: CVaListPointer) -> ErrorRef! {
        let rv = g_error_new_valist(domain, gint(code), format, args)
        return rv.map { ErrorRef(cast($0)) }
    }
}

/// The `ErrorType` type acts as an owner of an underlying `GError` instance.
/// It provides the methods that can operate on this data type through `ErrorTypeProtocol` conformance.
/// Use `ErrorType` as a strong reference or owner of a `GError` instance.
///
/// The `GError` structure contains information about
/// an error that has occurred.
open class ErrorType: ErrorTypeProtocol {
    /// Untyped pointer to the underlying `GError` instance.
    /// For type-safe access, use the generated, typed pointer `error_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ErrorType` instance.
    public init(_ op: UnsafeMutablePointer<GError>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ErrorTypeProtocol`
    /// `GError` does not allow reference counting.
    /// Convenience copy constructor, creating a unique copy
    /// of the passed in Error.  Needs to be freed using free()
    /// (automatically done in deinit if you use ErrorType).
    public convenience init<T: ErrorTypeProtocol>(_ other: T) {
        self.init(cast(other.error_ptr))
    }

    /// Do-nothing destructor for`GError`.
    deinit {
	    g_error_free(error_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ErrorTypeProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GError.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ErrorTypeProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GError.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ErrorTypeProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GError.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ErrorTypeProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GError>(opaquePointer))
    }


    // *** new() is not available because it has a varargs (...) parameter!


    /// Creates a new `GError`; unlike `g_error_new()`, `message` is
    /// not a `printf()`-style format string. Use this function if
    /// `message` contains text you don't have control over,
    /// that could include `printf()` escape sequences.
    public convenience init(literal domain: Quark, code: CInt, message: UnsafePointer<gchar>) {
        let rv = g_error_new_literal(domain, gint(code), message)
        self.init(cast(rv))
    }

    /// Creates a new `GError` with the given `domain` and `code`,
    /// and a message formatted with `format`.
    public convenience init(valist domain: Quark, code: CInt, format: UnsafePointer<gchar>, args: CVaListPointer) {
        let rv = g_error_new_valist(domain, gint(code), format, args)
        self.init(cast(rv))
    }

    /// Creates a new `GError`; unlike `g_error_new()`, `message` is
    /// not a `printf()`-style format string. Use this function if
    /// `message` contains text you don't have control over,
    /// that could include `printf()` escape sequences.
    public static func new(literal domain: Quark, code: CInt, message: UnsafePointer<gchar>) -> ErrorType! {
        let rv = g_error_new_literal(domain, gint(code), message)
        return rv.map { ErrorType(cast($0)) }
    }

    /// Creates a new `GError` with the given `domain` and `code`,
    /// and a message formatted with `format`.
    public static func new(valist domain: Quark, code: CInt, format: UnsafePointer<gchar>, args: CVaListPointer) -> ErrorType! {
        let rv = g_error_new_valist(domain, gint(code), format, args)
        return rv.map { ErrorType(cast($0)) }
    }

}

// MARK: - no ErrorType properties

// MARK: - no signals


public extension ErrorTypeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GError` instance.
    var error_ptr: UnsafeMutablePointer<GError> { return ptr.assumingMemoryBound(to: GError.self) }

    /// Makes a copy of `error`.
    func copy() -> UnsafeMutablePointer<GError>! {
        let rv = g_error_copy(cast(error_ptr))
        return cast(rv)
    }

    /// Frees a `GError` and associated resources.
    func free() {
        g_error_free(cast(error_ptr))
    
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
    func matches(domain: Quark, code: CInt) -> Bool {
        let rv = g_error_matches(cast(error_ptr), domain, gint(code))
        return Bool(rv != 0)
    }

    func assertionMessageError(domain: UnsafePointer<CChar>, file: UnsafePointer<CChar>, line: CInt, func_: UnsafePointer<CChar>, expr: UnsafePointer<CChar>, errorDomain error_domain: Quark, errorCode error_code: CInt) {
        g_assertion_message_error(domain, file, line, func_, expr, cast(error_ptr), error_domain, error_code)
    
    }


    // *** markupCollectAttributes() is not available because it has a varargs (...) parameter!



    // *** prefixError() is not available because it has a varargs (...) parameter!


    /// If `dest` is `nil`, free `src`; otherwise, moves `src` into *`dest`.
    /// The error variable `dest` points to must be `nil`.
    /// 
    /// `src` must be non-`nil`.
    /// 
    /// Note that `src` is no longer valid after this call. If you want
    /// to keep using the same GError*, you need to set it to `nil`
    /// after calling this function on it.
    func propagateError(src: ErrorTypeProtocol) {
        g_propagate_error(cast(error_ptr), cast(src.ptr))
    
    }


    // *** propagatePrefixedError() is not available because it has a varargs (...) parameter!



    // *** setError() is not available because it has a varargs (...) parameter!


    /// Does nothing if `err` is `nil`; if `err` is non-`nil`, then *`err`
    /// must be `nil`. A new `GError` is created and assigned to *`err`.
    /// Unlike `g_set_error()`, `message` is not a `printf()`-style format string.
    /// Use this function if `message` contains text you don't have control over,
    /// that could include `printf()` escape sequences.
    func setErrorLiteral(domain: Quark, code: CInt, message: UnsafePointer<gchar>) {
        g_set_error_literal(cast(error_ptr), domain, gint(code), message)
    
    }

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
    func variantParseErrorPrintContext(sourceStr source_str: UnsafePointer<gchar>) -> String! {
        let rv = g_variant_parse_error_print_context(cast(error_ptr), source_str)
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }
}



