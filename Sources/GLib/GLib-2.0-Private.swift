import CGLib

// MARK: - Private Record

/// The `PrivateProtocol` protocol exposes the methods and properties of an underlying `GPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Private`.
/// Alternatively, use `PrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GPrivate` struct is an opaque data structure to represent a
/// thread-local data key. It is approximately equivalent to the
/// pthread_setspecific()/pthread_getspecific() APIs on POSIX and to
/// TlsSetValue()/TlsGetValue() on Windows.
/// 
/// If you don't already know why you might want this functionality,
/// then you probably don't need it.
/// 
/// `GPrivate` is a very limited resource (as far as 128 per program,
/// shared between all libraries). It is also not possible to destroy a
/// `GPrivate` after it has been used. As such, it is only ever acceptable
/// to use `GPrivate` in static scope, and even then sparingly so.
/// 
/// See G_PRIVATE_INIT() for a couple of examples.
/// 
/// The `GPrivate` structure should be considered opaque.  It should only
/// be accessed via the g_private_ functions.
public protocol PrivateProtocol {
    /// Untyped pointer to the underlying `GPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GPrivate` instance.
    var _ptr: UnsafeMutablePointer<GPrivate> { get }
}

/// The `PrivateRef` type acts as a lightweight Swift reference to an underlying `GPrivate` instance.
/// It exposes methods that can operate on this data type through `PrivateProtocol` conformance.
/// Use `PrivateRef` only as an `unowned` reference to an existing `GPrivate` instance.
///
/// The `GPrivate` struct is an opaque data structure to represent a
/// thread-local data key. It is approximately equivalent to the
/// pthread_setspecific()/pthread_getspecific() APIs on POSIX and to
/// TlsSetValue()/TlsGetValue() on Windows.
/// 
/// If you don't already know why you might want this functionality,
/// then you probably don't need it.
/// 
/// `GPrivate` is a very limited resource (as far as 128 per program,
/// shared between all libraries). It is also not possible to destroy a
/// `GPrivate` after it has been used. As such, it is only ever acceptable
/// to use `GPrivate` in static scope, and even then sparingly so.
/// 
/// See G_PRIVATE_INIT() for a couple of examples.
/// 
/// The `GPrivate` structure should be considered opaque.  It should only
/// be accessed via the g_private_ functions.
public struct PrivateRef: PrivateProtocol {
    /// Untyped pointer to the underlying `GPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PrivateProtocol`
    init<T: PrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Private` type acts as an owner of an underlying `GPrivate` instance.
/// It provides the methods that can operate on this data type through `PrivateProtocol` conformance.
/// Use `Private` as a strong reference or owner of a `GPrivate` instance.
///
/// The `GPrivate` struct is an opaque data structure to represent a
/// thread-local data key. It is approximately equivalent to the
/// pthread_setspecific()/pthread_getspecific() APIs on POSIX and to
/// TlsSetValue()/TlsGetValue() on Windows.
/// 
/// If you don't already know why you might want this functionality,
/// then you probably don't need it.
/// 
/// `GPrivate` is a very limited resource (as far as 128 per program,
/// shared between all libraries). It is also not possible to destroy a
/// `GPrivate` after it has been used. As such, it is only ever acceptable
/// to use `GPrivate` in static scope, and even then sparingly so.
/// 
/// See G_PRIVATE_INIT() for a couple of examples.
/// 
/// The `GPrivate` structure should be considered opaque.  It should only
/// be accessed via the g_private_ functions.
open class Private: PrivateProtocol {
    /// Untyped pointer to the underlying `GPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Private` instance.
    public init(_ op: UnsafeMutablePointer<GPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `PrivateProtocol`
    /// `GPrivate` does not allow reference counting.
    public convenience init<T: PrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GPrivate`.
    deinit {
        // no reference counting for GPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GPrivate>(opaquePointer))
    }



}

// MARK: - no Private properties

// MARK: - no signals


public extension PrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GPrivate` instance.
    var _ptr: UnsafeMutablePointer<GPrivate> { return ptr.assumingMemoryBound(to: GPrivate.self) }

    /// Returns the current value of the thread local variable `key`.
    /// 
    /// If the value has not yet been set in this thread, `nil` is returned.
    /// Values are never copied between threads (when a new thread is
    /// created, for example).
    func get() -> UnsafeMutableRawPointer! {
        let rv = g_private_get(cast(_ptr))
        return cast(rv)
    }

    /// Sets the thread local variable `key` to have the value `value` in the
    /// current thread.
    /// 
    /// This function differs from g_private_set() in the following way: if
    /// the previous value was non-`nil` then the `GDestroyNotify` handler for
    /// `key` is run on it.
    func replace(value: UnsafeMutableRawPointer) {
        g_private_replace(cast(_ptr), cast(value))
    
    }

    /// Sets the thread local variable `key` to have the value `value` in the
    /// current thread.
    /// 
    /// This function differs from g_private_replace() in the following way:
    /// the `GDestroyNotify` for `key` is not called on the old value.
    func set(value: UnsafeMutableRawPointer) {
        g_private_set(cast(_ptr), cast(value))
    
    }
}



