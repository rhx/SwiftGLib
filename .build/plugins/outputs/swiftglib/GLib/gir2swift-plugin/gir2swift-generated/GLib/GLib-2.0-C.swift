import CGLib

// MARK: - Checksum Record

/// An opaque structure representing a checksumming operation.
/// 
/// To create a new GChecksum, use `g_checksum_new()`. To free
/// a GChecksum, use `g_checksum_free()`.
///
/// The `ChecksumProtocol` protocol exposes the methods and properties of an underlying `GChecksum` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Checksum`.
/// Alternatively, use `ChecksumRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ChecksumProtocol {
        /// Untyped pointer to the underlying `GChecksum` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GChecksum` instance.
    var checksum_ptr: UnsafeMutablePointer<GChecksum>! { get }

    /// Required Initialiser for types conforming to `ChecksumProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// An opaque structure representing a checksumming operation.
/// 
/// To create a new GChecksum, use `g_checksum_new()`. To free
/// a GChecksum, use `g_checksum_free()`.
///
/// The `ChecksumRef` type acts as a lightweight Swift reference to an underlying `GChecksum` instance.
/// It exposes methods that can operate on this data type through `ChecksumProtocol` conformance.
/// Use `ChecksumRef` only as an `unowned` reference to an existing `GChecksum` instance.
///
public struct ChecksumRef: ChecksumProtocol {
        /// Untyped pointer to the underlying `GChecksum` instance.
    /// For type-safe access, use the generated, typed pointer `checksum_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ChecksumRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GChecksum>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GChecksum>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GChecksum>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GChecksum>?) {
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

    /// Reference intialiser for a related type that implements `ChecksumProtocol`
    @inlinable init<T: ChecksumProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ChecksumProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ChecksumProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ChecksumProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ChecksumProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ChecksumProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GChecksum`, using the checksum algorithm `checksum_type`.
    /// If the `checksum_type` is not known, `nil` is returned.
    /// A `GChecksum` can be used to compute the checksum, or digest, of an
    /// arbitrary binary blob, using different hashing algorithms.
    /// 
    /// A `GChecksum` works by feeding a binary blob through `g_checksum_update()`
    /// until there is data to be checked; the digest can then be extracted
    /// using `g_checksum_get_string()`, which will return the checksum as a
    /// hexadecimal string; or `g_checksum_get_digest()`, which will return a
    /// vector of raw bytes. Once either `g_checksum_get_string()` or
    /// `g_checksum_get_digest()` have been called on a `GChecksum`, the checksum
    /// will be closed and it won't be possible to call `g_checksum_update()`
    /// on it anymore.
    @inlinable init( checksumType: GChecksumType) {
            let result = g_checksum_new(checksumType)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }
}

/// An opaque structure representing a checksumming operation.
/// 
/// To create a new GChecksum, use `g_checksum_new()`. To free
/// a GChecksum, use `g_checksum_free()`.
///
/// The `Checksum` type acts as an owner of an underlying `GChecksum` instance.
/// It provides the methods that can operate on this data type through `ChecksumProtocol` conformance.
/// Use `Checksum` as a strong reference or owner of a `GChecksum` instance.
///
open class Checksum: ChecksumProtocol {
        /// Untyped pointer to the underlying `GChecksum` instance.
    /// For type-safe access, use the generated, typed pointer `checksum_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Checksum` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GChecksum>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Checksum` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GChecksum>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Checksum` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Checksum` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Checksum` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GChecksum>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Checksum` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GChecksum>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GChecksum` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Checksum` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GChecksum>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GChecksum, cannot ref(checksum_ptr)
    }

    /// Reference intialiser for a related type that implements `ChecksumProtocol`
    /// `GChecksum` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ChecksumProtocol`
    @inlinable public init<T: ChecksumProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GChecksum, cannot ref(checksum_ptr)
    }

    /// Do-nothing destructor for `GChecksum`.
    deinit {
        // no reference counting for GChecksum, cannot unref(checksum_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ChecksumProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ChecksumProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GChecksum, cannot ref(checksum_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ChecksumProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ChecksumProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GChecksum, cannot ref(checksum_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ChecksumProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ChecksumProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GChecksum, cannot ref(checksum_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ChecksumProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ChecksumProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GChecksum, cannot ref(checksum_ptr)
    }

    /// Creates a new `GChecksum`, using the checksum algorithm `checksum_type`.
    /// If the `checksum_type` is not known, `nil` is returned.
    /// A `GChecksum` can be used to compute the checksum, or digest, of an
    /// arbitrary binary blob, using different hashing algorithms.
    /// 
    /// A `GChecksum` works by feeding a binary blob through `g_checksum_update()`
    /// until there is data to be checked; the digest can then be extracted
    /// using `g_checksum_get_string()`, which will return the checksum as a
    /// hexadecimal string; or `g_checksum_get_digest()`, which will return a
    /// vector of raw bytes. Once either `g_checksum_get_string()` or
    /// `g_checksum_get_digest()` have been called on a `GChecksum`, the checksum
    /// will be closed and it won't be possible to call `g_checksum_update()`
    /// on it anymore.
    @inlinable public init( checksumType: GChecksumType) {
            let result = g_checksum_new(checksumType)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no Checksum properties

// MARK: no Checksum signals

// MARK: Checksum has no signals
// MARK: Checksum Record: ChecksumProtocol extension (methods and fields)
public extension ChecksumProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GChecksum` instance.
    @inlinable var checksum_ptr: UnsafeMutablePointer<GChecksum>! { return ptr?.assumingMemoryBound(to: GChecksum.self) }

    /// Copies a `GChecksum`. If `checksum` has been closed, by calling
    /// `g_checksum_get_string()` or `g_checksum_get_digest()`, the copied
    /// checksum will be closed as well.
    @inlinable func copy() -> ChecksumRef! {
        let result = g_checksum_copy(checksum_ptr)
        guard let rv = ChecksumRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Frees the memory allocated for `checksum`.
    @inlinable func free() {
        
        g_checksum_free(checksum_ptr)
        
    }

    /// Gets the digest from `checksum` as a raw binary vector and places it
    /// into `buffer`. The size of the digest depends on the type of checksum.
    /// 
    /// Once this function has been called, the `GChecksum` is closed and can
    /// no longer be updated with `g_checksum_update()`.
    @inlinable func getDigest(buffer: UnsafeMutablePointer<guint8>!, digestLen: UnsafeMutablePointer<gsize>!) {
        
        g_checksum_get_digest(checksum_ptr, buffer, digestLen)
        
    }

    /// Gets the digest as a hexadecimal string.
    /// 
    /// Once this function has been called the `GChecksum` can no longer be
    /// updated with `g_checksum_update()`.
    /// 
    /// The hexadecimal characters will be lower case.
    @inlinable func getString() -> String! {
        let result = g_checksum_get_string(checksum_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Resets the state of the `checksum` back to its initial state.
    @inlinable func reset() {
        
        g_checksum_reset(checksum_ptr)
        
    }

    /// Feeds `data` into an existing `GChecksum`. The checksum must still be
    /// open, that is `g_checksum_get_string()` or `g_checksum_get_digest()` must
    /// not have been called on `checksum`.
    @inlinable func update(data: UnsafePointer<guchar>!, length: gssize) {
        
        g_checksum_update(checksum_ptr, data, length)
        
    }
    /// Gets the digest as a hexadecimal string.
    /// 
    /// Once this function has been called the `GChecksum` can no longer be
    /// updated with `g_checksum_update()`.
    /// 
    /// The hexadecimal characters will be lower case.
    @inlinable var string: String! {
        /// Gets the digest as a hexadecimal string.
        /// 
        /// Once this function has been called the `GChecksum` can no longer be
        /// updated with `g_checksum_update()`.
        /// 
        /// The hexadecimal characters will be lower case.
        get {
            let result = g_checksum_get_string(checksum_ptr)
        let rv = result.map({ String(cString: $0) })
            return rv
        }
    }


}



// MARK: - Cond Record

/// The `GCond` struct is an opaque data structure that represents a
/// condition. Threads can block on a `GCond` if they find a certain
/// condition to be false. If other threads change the state of this
/// condition they signal the `GCond`, and that causes the waiting
/// threads to be woken up.
/// 
/// Consider the following example of a shared variable.  One or more
/// threads can wait for data to be published to the variable and when
/// another thread publishes the data, it can signal one of the waiting
/// threads to wake up to collect the data.
/// 
/// Here is an example for using GCond to block a thread until a condition
/// is satisfied:
/// (C Language Example):
/// ```C
///   gpointer current_data = NULL;
///   GMutex data_mutex;
///   GCond data_cond;
/// 
///   void
///   push_data (gpointer data)
///   {
///     g_mutex_lock (&data_mutex);
///     current_data = data;
///     g_cond_signal (&data_cond);
///     g_mutex_unlock (&data_mutex);
///   }
/// 
///   gpointer
///   pop_data (void)
///   {
///     gpointer data;
/// 
///     g_mutex_lock (&data_mutex);
///     while (!current_data)
///       g_cond_wait (&data_cond, &data_mutex);
///     data = current_data;
///     current_data = NULL;
///     g_mutex_unlock (&data_mutex);
/// 
///     return data;
///   }
/// ```
/// Whenever a thread calls `pop_data()` now, it will wait until
/// current_data is non-`nil`, i.e. until some other thread
/// has called `push_data()`.
/// 
/// The example shows that use of a condition variable must always be
/// paired with a mutex.  Without the use of a mutex, there would be a
/// race between the check of `current_data` by the while loop in
/// `pop_data()` and waiting. Specifically, another thread could set
/// `current_data` after the check, and signal the cond (with nobody
/// waiting on it) before the first thread goes to sleep. `GCond` is
/// specifically useful for its ability to release the mutex and go
/// to sleep atomically.
/// 
/// It is also important to use the `g_cond_wait()` and `g_cond_wait_until()`
/// functions only inside a loop which checks for the condition to be
/// true.  See `g_cond_wait()` for an explanation of why the condition may
/// not be true even after it returns.
/// 
/// If a `GCond` is allocated in static storage then it can be used
/// without initialisation.  Otherwise, you should call `g_cond_init()`
/// on it and `g_cond_clear()` when done.
/// 
/// A `GCond` should only be accessed via the g_cond_ functions.
///
/// The `CondProtocol` protocol exposes the methods and properties of an underlying `GCond` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Cond`.
/// Alternatively, use `CondRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol CondProtocol {
        /// Untyped pointer to the underlying `GCond` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GCond` instance.
    var _ptr: UnsafeMutablePointer<GCond>! { get }

    /// Required Initialiser for types conforming to `CondProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `GCond` struct is an opaque data structure that represents a
/// condition. Threads can block on a `GCond` if they find a certain
/// condition to be false. If other threads change the state of this
/// condition they signal the `GCond`, and that causes the waiting
/// threads to be woken up.
/// 
/// Consider the following example of a shared variable.  One or more
/// threads can wait for data to be published to the variable and when
/// another thread publishes the data, it can signal one of the waiting
/// threads to wake up to collect the data.
/// 
/// Here is an example for using GCond to block a thread until a condition
/// is satisfied:
/// (C Language Example):
/// ```C
///   gpointer current_data = NULL;
///   GMutex data_mutex;
///   GCond data_cond;
/// 
///   void
///   push_data (gpointer data)
///   {
///     g_mutex_lock (&data_mutex);
///     current_data = data;
///     g_cond_signal (&data_cond);
///     g_mutex_unlock (&data_mutex);
///   }
/// 
///   gpointer
///   pop_data (void)
///   {
///     gpointer data;
/// 
///     g_mutex_lock (&data_mutex);
///     while (!current_data)
///       g_cond_wait (&data_cond, &data_mutex);
///     data = current_data;
///     current_data = NULL;
///     g_mutex_unlock (&data_mutex);
/// 
///     return data;
///   }
/// ```
/// Whenever a thread calls `pop_data()` now, it will wait until
/// current_data is non-`nil`, i.e. until some other thread
/// has called `push_data()`.
/// 
/// The example shows that use of a condition variable must always be
/// paired with a mutex.  Without the use of a mutex, there would be a
/// race between the check of `current_data` by the while loop in
/// `pop_data()` and waiting. Specifically, another thread could set
/// `current_data` after the check, and signal the cond (with nobody
/// waiting on it) before the first thread goes to sleep. `GCond` is
/// specifically useful for its ability to release the mutex and go
/// to sleep atomically.
/// 
/// It is also important to use the `g_cond_wait()` and `g_cond_wait_until()`
/// functions only inside a loop which checks for the condition to be
/// true.  See `g_cond_wait()` for an explanation of why the condition may
/// not be true even after it returns.
/// 
/// If a `GCond` is allocated in static storage then it can be used
/// without initialisation.  Otherwise, you should call `g_cond_init()`
/// on it and `g_cond_clear()` when done.
/// 
/// A `GCond` should only be accessed via the g_cond_ functions.
///
/// The `CondRef` type acts as a lightweight Swift reference to an underlying `GCond` instance.
/// It exposes methods that can operate on this data type through `CondProtocol` conformance.
/// Use `CondRef` only as an `unowned` reference to an existing `GCond` instance.
///
public struct CondRef: CondProtocol {
        /// Untyped pointer to the underlying `GCond` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CondRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GCond>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GCond>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GCond>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GCond>?) {
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

    /// Reference intialiser for a related type that implements `CondProtocol`
    @inlinable init<T: CondProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CondProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CondProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CondProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CondProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CondProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `GCond` struct is an opaque data structure that represents a
/// condition. Threads can block on a `GCond` if they find a certain
/// condition to be false. If other threads change the state of this
/// condition they signal the `GCond`, and that causes the waiting
/// threads to be woken up.
/// 
/// Consider the following example of a shared variable.  One or more
/// threads can wait for data to be published to the variable and when
/// another thread publishes the data, it can signal one of the waiting
/// threads to wake up to collect the data.
/// 
/// Here is an example for using GCond to block a thread until a condition
/// is satisfied:
/// (C Language Example):
/// ```C
///   gpointer current_data = NULL;
///   GMutex data_mutex;
///   GCond data_cond;
/// 
///   void
///   push_data (gpointer data)
///   {
///     g_mutex_lock (&data_mutex);
///     current_data = data;
///     g_cond_signal (&data_cond);
///     g_mutex_unlock (&data_mutex);
///   }
/// 
///   gpointer
///   pop_data (void)
///   {
///     gpointer data;
/// 
///     g_mutex_lock (&data_mutex);
///     while (!current_data)
///       g_cond_wait (&data_cond, &data_mutex);
///     data = current_data;
///     current_data = NULL;
///     g_mutex_unlock (&data_mutex);
/// 
///     return data;
///   }
/// ```
/// Whenever a thread calls `pop_data()` now, it will wait until
/// current_data is non-`nil`, i.e. until some other thread
/// has called `push_data()`.
/// 
/// The example shows that use of a condition variable must always be
/// paired with a mutex.  Without the use of a mutex, there would be a
/// race between the check of `current_data` by the while loop in
/// `pop_data()` and waiting. Specifically, another thread could set
/// `current_data` after the check, and signal the cond (with nobody
/// waiting on it) before the first thread goes to sleep. `GCond` is
/// specifically useful for its ability to release the mutex and go
/// to sleep atomically.
/// 
/// It is also important to use the `g_cond_wait()` and `g_cond_wait_until()`
/// functions only inside a loop which checks for the condition to be
/// true.  See `g_cond_wait()` for an explanation of why the condition may
/// not be true even after it returns.
/// 
/// If a `GCond` is allocated in static storage then it can be used
/// without initialisation.  Otherwise, you should call `g_cond_init()`
/// on it and `g_cond_clear()` when done.
/// 
/// A `GCond` should only be accessed via the g_cond_ functions.
///
/// The `Cond` type acts as an owner of an underlying `GCond` instance.
/// It provides the methods that can operate on this data type through `CondProtocol` conformance.
/// Use `Cond` as a strong reference or owner of a `GCond` instance.
///
open class Cond: CondProtocol {
        /// Untyped pointer to the underlying `GCond` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Cond` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GCond>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Cond` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GCond>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Cond` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Cond` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Cond` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GCond>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Cond` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GCond>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GCond` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Cond` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GCond>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GCond, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `CondProtocol`
    /// `GCond` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `CondProtocol`
    @inlinable public init<T: CondProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GCond, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GCond`.
    deinit {
        // no reference counting for GCond, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CondProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CondProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GCond, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CondProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CondProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GCond, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CondProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CondProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GCond, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CondProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CondProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GCond, cannot ref(_ptr)
    }



}

// MARK: no Cond properties

// MARK: no Cond signals

// MARK: Cond has no signals
// MARK: Cond Record: CondProtocol extension (methods and fields)
public extension CondProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GCond` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GCond>! { return ptr?.assumingMemoryBound(to: GCond.self) }

    /// If threads are waiting for `cond`, all of them are unblocked.
    /// If no threads are waiting for `cond`, this function has no effect.
    /// It is good practice to lock the same mutex as the waiting threads
    /// while calling this function, though not required.
    @inlinable func broadcast() {
        
        g_cond_broadcast(_ptr)
        
    }

    /// Frees the resources allocated to a `GCond` with `g_cond_init()`.
    /// 
    /// This function should not be used with a `GCond` that has been
    /// statically allocated.
    /// 
    /// Calling `g_cond_clear()` for a `GCond` on which threads are
    /// blocking leads to undefined behaviour.
    @inlinable func clear() {
        
        g_cond_clear(_ptr)
        
    }

    /// Initialises a `GCond` so that it can be used.
    /// 
    /// This function is useful to initialise a `GCond` that has been
    /// allocated as part of a larger structure.  It is not necessary to
    /// initialise a `GCond` that has been statically allocated.
    /// 
    /// To undo the effect of `g_cond_init()` when a `GCond` is no longer
    /// needed, use `g_cond_clear()`.
    /// 
    /// Calling `g_cond_init()` on an already-initialised `GCond` leads
    /// to undefined behaviour.
    @inlinable func init_() {
        
        g_cond_init(_ptr)
        
    }

    /// If threads are waiting for `cond`, at least one of them is unblocked.
    /// If no threads are waiting for `cond`, this function has no effect.
    /// It is good practice to hold the same lock as the waiting thread
    /// while calling this function, though not required.
    @inlinable func signal() {
        
        g_cond_signal(_ptr)
        
    }

    /// Atomically releases `mutex` and waits until `cond` is signalled.
    /// When this function returns, `mutex` is locked again and owned by the
    /// calling thread.
    /// 
    /// When using condition variables, it is possible that a spurious wakeup
    /// may occur (ie: `g_cond_wait()` returns even though `g_cond_signal()` was
    /// not called).  It's also possible that a stolen wakeup may occur.
    /// This is when `g_cond_signal()` is called, but another thread acquires
    /// `mutex` before this thread and modifies the state of the program in
    /// such a way that when `g_cond_wait()` is able to return, the expected
    /// condition is no longer met.
    /// 
    /// For this reason, `g_cond_wait()` must always be used in a loop.  See
    /// the documentation for `GCond` for a complete example.
    @inlinable func wait<MutexT: MutexProtocol>(mutex: MutexT) {
        
        g_cond_wait(_ptr, mutex._ptr)
        
    }

    /// Waits until either `cond` is signalled or `end_time` has passed.
    /// 
    /// As with `g_cond_wait()` it is possible that a spurious or stolen wakeup
    /// could occur.  For that reason, waiting on a condition variable should
    /// always be in a loop, based on an explicitly-checked predicate.
    /// 
    /// `true` is returned if the condition variable was signalled (or in the
    /// case of a spurious wakeup).  `false` is returned if `end_time` has
    /// passed.
    /// 
    /// The following code shows how to correctly perform a timed wait on a
    /// condition variable (extending the example presented in the
    /// documentation for `GCond`):
    /// 
    /// (C Language Example):
    /// ```C
    /// gpointer
    /// pop_data_timed (void)
    /// {
    ///   gint64 end_time;
    ///   gpointer data;
    /// 
    ///   g_mutex_lock (&data_mutex);
    /// 
    ///   end_time = g_get_monotonic_time () + 5 * G_TIME_SPAN_SECOND;
    ///   while (!current_data)
    ///     if (!g_cond_wait_until (&data_cond, &data_mutex, end_time))
    ///       {
    ///         // timeout has passed.
    ///         g_mutex_unlock (&data_mutex);
    ///         return NULL;
    ///       }
    /// 
    ///   // there is data for us
    ///   data = current_data;
    ///   current_data = NULL;
    /// 
    ///   g_mutex_unlock (&data_mutex);
    /// 
    ///   return data;
    /// }
    /// ```
    /// 
    /// Notice that the end time is calculated once, before entering the
    /// loop and reused.  This is the motivation behind the use of absolute
    /// time on this API -- if a relative time of 5 seconds were passed
    /// directly to the call and a spurious wakeup occurred, the program would
    /// have to start over waiting again (which would lead to a total wait
    /// time of more than 5 seconds).
    @inlinable func waitUntil<MutexT: MutexProtocol>(mutex: MutexT, endTime: gint64) -> Bool {
        let result = g_cond_wait_until(_ptr, mutex._ptr, endTime)
        let rv = ((result) != 0)
        return rv
    }

    // var p is unavailable because p is private

    // var i is unavailable because i is private

}



