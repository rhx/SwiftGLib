import CGLib

// MARK: - RecMutex Record

/// The `RecMutexProtocol` protocol exposes the methods and properties of an underlying `GRecMutex` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RecMutex`.
/// Alternatively, use `RecMutexRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The GRecMutex struct is an opaque data structure to represent a
/// recursive mutex. It is similar to a `GMutex` with the difference
/// that it is possible to lock a GRecMutex multiple times in the same
/// thread without deadlock. When doing so, care has to be taken to
/// unlock the recursive mutex as often as it has been locked.
/// 
/// If a `GRecMutex` is allocated in static storage then it can be used
/// without initialisation.  Otherwise, you should call
/// `g_rec_mutex_init()` on it and `g_rec_mutex_clear()` when done.
/// 
/// A GRecMutex should only be accessed with the
/// g_rec_mutex_ functions.
public protocol RecMutexProtocol {
        /// Untyped pointer to the underlying `GRecMutex` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GRecMutex` instance.
    var _ptr: UnsafeMutablePointer<GRecMutex>! { get }

}

/// The `RecMutexRef` type acts as a lightweight Swift reference to an underlying `GRecMutex` instance.
/// It exposes methods that can operate on this data type through `RecMutexProtocol` conformance.
/// Use `RecMutexRef` only as an `unowned` reference to an existing `GRecMutex` instance.
///
/// The GRecMutex struct is an opaque data structure to represent a
/// recursive mutex. It is similar to a `GMutex` with the difference
/// that it is possible to lock a GRecMutex multiple times in the same
/// thread without deadlock. When doing so, care has to be taken to
/// unlock the recursive mutex as often as it has been locked.
/// 
/// If a `GRecMutex` is allocated in static storage then it can be used
/// without initialisation.  Otherwise, you should call
/// `g_rec_mutex_init()` on it and `g_rec_mutex_clear()` when done.
/// 
/// A GRecMutex should only be accessed with the
/// g_rec_mutex_ functions.
public struct RecMutexRef: RecMutexProtocol {
        /// Untyped pointer to the underlying `GRecMutex` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RecMutexRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GRecMutex>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GRecMutex>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GRecMutex>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GRecMutex>?) {
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

    /// Reference intialiser for a related type that implements `RecMutexProtocol`
    @inlinable init<T: RecMutexProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecMutexProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecMutexProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecMutexProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecMutexProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecMutexProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RecMutex` type acts as an owner of an underlying `GRecMutex` instance.
/// It provides the methods that can operate on this data type through `RecMutexProtocol` conformance.
/// Use `RecMutex` as a strong reference or owner of a `GRecMutex` instance.
///
/// The GRecMutex struct is an opaque data structure to represent a
/// recursive mutex. It is similar to a `GMutex` with the difference
/// that it is possible to lock a GRecMutex multiple times in the same
/// thread without deadlock. When doing so, care has to be taken to
/// unlock the recursive mutex as often as it has been locked.
/// 
/// If a `GRecMutex` is allocated in static storage then it can be used
/// without initialisation.  Otherwise, you should call
/// `g_rec_mutex_init()` on it and `g_rec_mutex_clear()` when done.
/// 
/// A GRecMutex should only be accessed with the
/// g_rec_mutex_ functions.
open class RecMutex: RecMutexProtocol {
        /// Untyped pointer to the underlying `GRecMutex` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecMutex` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GRecMutex>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecMutex` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GRecMutex>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecMutex` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecMutex` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecMutex` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GRecMutex>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecMutex` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GRecMutex>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GRecMutex` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `RecMutex` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GRecMutex>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GRecMutex, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `RecMutexProtocol`
    /// `GRecMutex` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `RecMutexProtocol`
    @inlinable public init<T: RecMutexProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GRecMutex, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GRecMutex`.
    deinit {
        // no reference counting for GRecMutex, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecMutexProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecMutexProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GRecMutex, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecMutexProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecMutexProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GRecMutex, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecMutexProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecMutexProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GRecMutex, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecMutexProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecMutexProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GRecMutex, cannot ref(_ptr)
    }



}

// MARK: no RecMutex properties

// MARK: no RecMutex signals


// MARK: RecMutex Record: RecMutexProtocol extension (methods and fields)
public extension RecMutexProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GRecMutex` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GRecMutex>! { return ptr?.assumingMemoryBound(to: GRecMutex.self) }

    /// Frees the resources allocated to a recursive mutex with
    /// `g_rec_mutex_init()`.
    /// 
    /// This function should not be used with a `GRecMutex` that has been
    /// statically allocated.
    /// 
    /// Calling `g_rec_mutex_clear()` on a locked recursive mutex leads
    /// to undefined behaviour.
    /// 
    /// Sine: 2.32
    @inlinable func clear() {
        g_rec_mutex_clear(_ptr)
    
    }

    /// Initializes a `GRecMutex` so that it can be used.
    /// 
    /// This function is useful to initialize a recursive mutex
    /// that has been allocated on the stack, or as part of a larger
    /// structure.
    /// 
    /// It is not necessary to initialise a recursive mutex that has been
    /// statically allocated.
    /// 
    /// (C Language Example):
    /// ```C
    ///   typedef struct {
    ///     GRecMutex m;
    ///     ...
    ///   } Blob;
    /// 
    /// Blob *b;
    /// 
    /// b = g_new (Blob, 1);
    /// g_rec_mutex_init (&b->m);
    /// ```
    /// 
    /// Calling `g_rec_mutex_init()` on an already initialized `GRecMutex`
    /// leads to undefined behaviour.
    /// 
    /// To undo the effect of `g_rec_mutex_init()` when a recursive mutex
    /// is no longer needed, use `g_rec_mutex_clear()`.
    @inlinable func init_() {
        g_rec_mutex_init(_ptr)
    
    }

    /// Locks `rec_mutex`. If `rec_mutex` is already locked by another
    /// thread, the current thread will block until `rec_mutex` is
    /// unlocked by the other thread. If `rec_mutex` is already locked
    /// by the current thread, the 'lock count' of `rec_mutex` is increased.
    /// The mutex will only become available again when it is unlocked
    /// as many times as it has been locked.
    @inlinable func lock() {
        g_rec_mutex_lock(_ptr)
    
    }

    /// Tries to lock `rec_mutex`. If `rec_mutex` is already locked
    /// by another thread, it immediately returns `false`. Otherwise
    /// it locks `rec_mutex` and returns `true`.
    @inlinable func trylock() -> Bool {
        let rv = ((g_rec_mutex_trylock(_ptr)) != 0)
        return rv
    }

    /// Unlocks `rec_mutex`. If another thread is blocked in a
    /// `g_rec_mutex_lock()` call for `rec_mutex`, it will become unblocked
    /// and can lock `rec_mutex` itself.
    /// 
    /// Calling `g_rec_mutex_unlock()` on a recursive mutex that is not
    /// locked by the current thread leads to undefined behaviour.
    @inlinable func unlock() {
        g_rec_mutex_unlock(_ptr)
    
    }

    // var p is unavailable because p is private

    // var i is unavailable because i is private

}



