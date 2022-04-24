import CGLib

// MARK: - RWLock Record

/// The GRWLock struct is an opaque data structure to represent a
/// reader-writer lock. It is similar to a `GMutex` in that it allows
/// multiple threads to coordinate access to a shared resource.
/// 
/// The difference to a mutex is that a reader-writer lock discriminates
/// between read-only ('reader') and full ('writer') access. While only
/// one thread at a time is allowed write access (by holding the 'writer'
/// lock via `g_rw_lock_writer_lock()`), multiple threads can gain
/// simultaneous read-only access (by holding the 'reader' lock via
/// `g_rw_lock_reader_lock()`).
/// 
/// It is unspecified whether readers or writers have priority in acquiring the
/// lock when a reader already holds the lock and a writer is queued to acquire
/// it.
/// 
/// Here is an example for an array with access functions:
/// (C Language Example):
/// ```C
///   GRWLock lock;
///   GPtrArray *array;
/// 
///   gpointer
///   my_array_get (guint index)
///   {
///     gpointer retval = NULL;
/// 
///     if (!array)
///       return NULL;
/// 
///     g_rw_lock_reader_lock (&lock);
///     if (index < array->len)
///       retval = g_ptr_array_index (array, index);
///     g_rw_lock_reader_unlock (&lock);
/// 
///     return retval;
///   }
/// 
///   void
///   my_array_set (guint index, gpointer data)
///   {
///     g_rw_lock_writer_lock (&lock);
/// 
///     if (!array)
///       array = g_ptr_array_new ();
/// 
///     if (index >= array->len)
///       g_ptr_array_set_size (array, index+1);
///     g_ptr_array_index (array, index) = data;
/// 
///     g_rw_lock_writer_unlock (&lock);
///   }
///  
/// ```
/// This example shows an array which can be accessed by many readers
/// (the `my_array_get()` function) simultaneously, whereas the writers
/// (the `my_array_set()` function) will only be allowed one at a time
/// and only if no readers currently access the array. This is because
/// of the potentially dangerous resizing of the array. Using these
/// functions is fully multi-thread safe now.
/// 
/// If a `GRWLock` is allocated in static storage then it can be used
/// without initialisation.  Otherwise, you should call
/// `g_rw_lock_init()` on it and `g_rw_lock_clear()` when done.
/// 
/// A GRWLock should only be accessed with the g_rw_lock_ functions.
///
/// The `RWLockProtocol` protocol exposes the methods and properties of an underlying `GRWLock` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RWLock`.
/// Alternatively, use `RWLockRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol RWLockProtocol {
        /// Untyped pointer to the underlying `GRWLock` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GRWLock` instance.
    var _ptr: UnsafeMutablePointer<GRWLock>! { get }

    /// Required Initialiser for types conforming to `RWLockProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The GRWLock struct is an opaque data structure to represent a
/// reader-writer lock. It is similar to a `GMutex` in that it allows
/// multiple threads to coordinate access to a shared resource.
/// 
/// The difference to a mutex is that a reader-writer lock discriminates
/// between read-only ('reader') and full ('writer') access. While only
/// one thread at a time is allowed write access (by holding the 'writer'
/// lock via `g_rw_lock_writer_lock()`), multiple threads can gain
/// simultaneous read-only access (by holding the 'reader' lock via
/// `g_rw_lock_reader_lock()`).
/// 
/// It is unspecified whether readers or writers have priority in acquiring the
/// lock when a reader already holds the lock and a writer is queued to acquire
/// it.
/// 
/// Here is an example for an array with access functions:
/// (C Language Example):
/// ```C
///   GRWLock lock;
///   GPtrArray *array;
/// 
///   gpointer
///   my_array_get (guint index)
///   {
///     gpointer retval = NULL;
/// 
///     if (!array)
///       return NULL;
/// 
///     g_rw_lock_reader_lock (&lock);
///     if (index < array->len)
///       retval = g_ptr_array_index (array, index);
///     g_rw_lock_reader_unlock (&lock);
/// 
///     return retval;
///   }
/// 
///   void
///   my_array_set (guint index, gpointer data)
///   {
///     g_rw_lock_writer_lock (&lock);
/// 
///     if (!array)
///       array = g_ptr_array_new ();
/// 
///     if (index >= array->len)
///       g_ptr_array_set_size (array, index+1);
///     g_ptr_array_index (array, index) = data;
/// 
///     g_rw_lock_writer_unlock (&lock);
///   }
///  
/// ```
/// This example shows an array which can be accessed by many readers
/// (the `my_array_get()` function) simultaneously, whereas the writers
/// (the `my_array_set()` function) will only be allowed one at a time
/// and only if no readers currently access the array. This is because
/// of the potentially dangerous resizing of the array. Using these
/// functions is fully multi-thread safe now.
/// 
/// If a `GRWLock` is allocated in static storage then it can be used
/// without initialisation.  Otherwise, you should call
/// `g_rw_lock_init()` on it and `g_rw_lock_clear()` when done.
/// 
/// A GRWLock should only be accessed with the g_rw_lock_ functions.
///
/// The `RWLockRef` type acts as a lightweight Swift reference to an underlying `GRWLock` instance.
/// It exposes methods that can operate on this data type through `RWLockProtocol` conformance.
/// Use `RWLockRef` only as an `unowned` reference to an existing `GRWLock` instance.
///
public struct RWLockRef: RWLockProtocol {
        /// Untyped pointer to the underlying `GRWLock` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RWLockRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GRWLock>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GRWLock>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GRWLock>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GRWLock>?) {
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

    /// Reference intialiser for a related type that implements `RWLockProtocol`
    @inlinable init<T: RWLockProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RWLockProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RWLockProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RWLockProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RWLockProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RWLockProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The GRWLock struct is an opaque data structure to represent a
/// reader-writer lock. It is similar to a `GMutex` in that it allows
/// multiple threads to coordinate access to a shared resource.
/// 
/// The difference to a mutex is that a reader-writer lock discriminates
/// between read-only ('reader') and full ('writer') access. While only
/// one thread at a time is allowed write access (by holding the 'writer'
/// lock via `g_rw_lock_writer_lock()`), multiple threads can gain
/// simultaneous read-only access (by holding the 'reader' lock via
/// `g_rw_lock_reader_lock()`).
/// 
/// It is unspecified whether readers or writers have priority in acquiring the
/// lock when a reader already holds the lock and a writer is queued to acquire
/// it.
/// 
/// Here is an example for an array with access functions:
/// (C Language Example):
/// ```C
///   GRWLock lock;
///   GPtrArray *array;
/// 
///   gpointer
///   my_array_get (guint index)
///   {
///     gpointer retval = NULL;
/// 
///     if (!array)
///       return NULL;
/// 
///     g_rw_lock_reader_lock (&lock);
///     if (index < array->len)
///       retval = g_ptr_array_index (array, index);
///     g_rw_lock_reader_unlock (&lock);
/// 
///     return retval;
///   }
/// 
///   void
///   my_array_set (guint index, gpointer data)
///   {
///     g_rw_lock_writer_lock (&lock);
/// 
///     if (!array)
///       array = g_ptr_array_new ();
/// 
///     if (index >= array->len)
///       g_ptr_array_set_size (array, index+1);
///     g_ptr_array_index (array, index) = data;
/// 
///     g_rw_lock_writer_unlock (&lock);
///   }
///  
/// ```
/// This example shows an array which can be accessed by many readers
/// (the `my_array_get()` function) simultaneously, whereas the writers
/// (the `my_array_set()` function) will only be allowed one at a time
/// and only if no readers currently access the array. This is because
/// of the potentially dangerous resizing of the array. Using these
/// functions is fully multi-thread safe now.
/// 
/// If a `GRWLock` is allocated in static storage then it can be used
/// without initialisation.  Otherwise, you should call
/// `g_rw_lock_init()` on it and `g_rw_lock_clear()` when done.
/// 
/// A GRWLock should only be accessed with the g_rw_lock_ functions.
///
/// The `RWLock` type acts as an owner of an underlying `GRWLock` instance.
/// It provides the methods that can operate on this data type through `RWLockProtocol` conformance.
/// Use `RWLock` as a strong reference or owner of a `GRWLock` instance.
///
open class RWLock: RWLockProtocol {
        /// Untyped pointer to the underlying `GRWLock` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RWLock` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GRWLock>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RWLock` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GRWLock>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RWLock` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RWLock` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RWLock` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GRWLock>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RWLock` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GRWLock>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GRWLock` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `RWLock` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GRWLock>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GRWLock, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `RWLockProtocol`
    /// `GRWLock` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `RWLockProtocol`
    @inlinable public init<T: RWLockProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GRWLock, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GRWLock`.
    deinit {
        // no reference counting for GRWLock, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RWLockProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RWLockProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GRWLock, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RWLockProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RWLockProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GRWLock, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RWLockProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RWLockProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GRWLock, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RWLockProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RWLockProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GRWLock, cannot ref(_ptr)
    }



}

// MARK: no RWLock properties

// MARK: no RWLock signals

// MARK: RWLock has no signals
// MARK: RWLock Record: RWLockProtocol extension (methods and fields)
public extension RWLockProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GRWLock` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GRWLock>! { return ptr?.assumingMemoryBound(to: GRWLock.self) }

    /// Frees the resources allocated to a lock with `g_rw_lock_init()`.
    /// 
    /// This function should not be used with a `GRWLock` that has been
    /// statically allocated.
    /// 
    /// Calling `g_rw_lock_clear()` when any thread holds the lock
    /// leads to undefined behaviour.
    /// 
    /// Sine: 2.32
    @inlinable func clear() {
        
        g_rw_lock_clear(_ptr)
        
    }

    /// Initializes a `GRWLock` so that it can be used.
    /// 
    /// This function is useful to initialize a lock that has been
    /// allocated on the stack, or as part of a larger structure.  It is not
    /// necessary to initialise a reader-writer lock that has been statically
    /// allocated.
    /// 
    /// (C Language Example):
    /// ```C
    ///   typedef struct {
    ///     GRWLock l;
    ///     ...
    ///   } Blob;
    /// 
    /// Blob *b;
    /// 
    /// b = g_new (Blob, 1);
    /// g_rw_lock_init (&b->l);
    /// ```
    /// 
    /// To undo the effect of `g_rw_lock_init()` when a lock is no longer
    /// needed, use `g_rw_lock_clear()`.
    /// 
    /// Calling `g_rw_lock_init()` on an already initialized `GRWLock` leads
    /// to undefined behaviour.
    @inlinable func init_() {
        
        g_rw_lock_init(_ptr)
        
    }

    /// Obtain a read lock on `rw_lock`. If another thread currently holds
    /// the write lock on `rw_lock`, the current thread will block until the
    /// write lock was (held and) released. If another thread does not hold
    /// the write lock, but is waiting for it, it is implementation defined
    /// whether the reader or writer will block. Read locks can be taken
    /// recursively.
    /// 
    /// Calling `g_rw_lock_reader_lock()` while the current thread already
    /// owns a write lock leads to undefined behaviour. Read locks however
    /// can be taken recursively, in which case you need to make sure to
    /// call `g_rw_lock_reader_unlock()` the same amount of times.
    /// 
    /// It is implementation-defined how many read locks are allowed to be
    /// held on the same lock simultaneously. If the limit is hit,
    /// or if a deadlock is detected, a critical warning will be emitted.
    @inlinable func readerLock() {
        
        g_rw_lock_reader_lock(_ptr)
        
    }

    /// Tries to obtain a read lock on `rw_lock` and returns `true` if
    /// the read lock was successfully obtained. Otherwise it
    /// returns `false`.
    @inlinable func readerTrylock() -> Bool {
        let result = g_rw_lock_reader_trylock(_ptr)
        let rv = ((result) != 0)
        return rv
    }

    /// Release a read lock on `rw_lock`.
    /// 
    /// Calling `g_rw_lock_reader_unlock()` on a lock that is not held
    /// by the current thread leads to undefined behaviour.
    @inlinable func readerUnlock() {
        
        g_rw_lock_reader_unlock(_ptr)
        
    }

    /// Obtain a write lock on `rw_lock`. If another thread currently holds
    /// a read or write lock on `rw_lock`, the current thread will block
    /// until all other threads have dropped their locks on `rw_lock`.
    /// 
    /// Calling `g_rw_lock_writer_lock()` while the current thread already
    /// owns a read or write lock on `rw_lock` leads to undefined behaviour.
    @inlinable func writerLock() {
        
        g_rw_lock_writer_lock(_ptr)
        
    }

    /// Tries to obtain a write lock on `rw_lock`. If another thread
    /// currently holds a read or write lock on `rw_lock`, it immediately
    /// returns `false`.
    /// Otherwise it locks `rw_lock` and returns `true`.
    @inlinable func writerTrylock() -> Bool {
        let result = g_rw_lock_writer_trylock(_ptr)
        let rv = ((result) != 0)
        return rv
    }

    /// Release a write lock on `rw_lock`.
    /// 
    /// Calling `g_rw_lock_writer_unlock()` on a lock that is not held
    /// by the current thread leads to undefined behaviour.
    @inlinable func writerUnlock() {
        
        g_rw_lock_writer_unlock(_ptr)
        
    }

    // var p is unavailable because p is private

    // var i is unavailable because i is private

}



// MARK: - Rand Record

/// The GRand struct is an opaque data structure. It should only be
/// accessed through the g_rand_* functions.
///
/// The `RandProtocol` protocol exposes the methods and properties of an underlying `GRand` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Rand`.
/// Alternatively, use `RandRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol RandProtocol {
        /// Untyped pointer to the underlying `GRand` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GRand` instance.
    var _ptr: UnsafeMutablePointer<GRand>! { get }

    /// Required Initialiser for types conforming to `RandProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The GRand struct is an opaque data structure. It should only be
/// accessed through the g_rand_* functions.
///
/// The `RandRef` type acts as a lightweight Swift reference to an underlying `GRand` instance.
/// It exposes methods that can operate on this data type through `RandProtocol` conformance.
/// Use `RandRef` only as an `unowned` reference to an existing `GRand` instance.
///
public struct RandRef: RandProtocol {
        /// Untyped pointer to the underlying `GRand` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RandRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GRand>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GRand>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GRand>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GRand>?) {
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

    /// Reference intialiser for a related type that implements `RandProtocol`
    @inlinable init<T: RandProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RandProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RandProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RandProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RandProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RandProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new random number generator initialized with `seed`.
    @inlinable static func newWith(seed: guint32) -> RandRef! {
            let result = g_rand_new_with_seed(seed)
        guard let rv = RandRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new random number generator initialized with `seed`.
    @inlinable static func newWith(seedArray seed: UnsafePointer<guint32>!, seedLength: Int) -> RandRef! {
            let result = g_rand_new_with_seed_array(seed, guint(seedLength))
        guard let rv = RandRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }
}

/// The GRand struct is an opaque data structure. It should only be
/// accessed through the g_rand_* functions.
///
/// The `Rand` type acts as an owner of an underlying `GRand` instance.
/// It provides the methods that can operate on this data type through `RandProtocol` conformance.
/// Use `Rand` as a strong reference or owner of a `GRand` instance.
///
open class Rand: RandProtocol {
        /// Untyped pointer to the underlying `GRand` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Rand` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GRand>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Rand` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GRand>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Rand` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Rand` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Rand` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GRand>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Rand` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GRand>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GRand` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Rand` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GRand>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GRand, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `RandProtocol`
    /// `GRand` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `RandProtocol`
    @inlinable public init<T: RandProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GRand, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GRand`.
    deinit {
        // no reference counting for GRand, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RandProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RandProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GRand, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RandProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RandProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GRand, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RandProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RandProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GRand, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RandProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RandProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GRand, cannot ref(_ptr)
    }


    /// Creates a new random number generator initialized with `seed`.
    @inlinable public static func newWith(seed: guint32) -> Rand! {
            let result = g_rand_new_with_seed(seed)
        guard let rv = Rand(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new random number generator initialized with `seed`.
    @inlinable public static func newWith(seedArray seed: UnsafePointer<guint32>!, seedLength: Int) -> Rand! {
            let result = g_rand_new_with_seed_array(seed, guint(seedLength))
        guard let rv = Rand(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

}

// MARK: no Rand properties

// MARK: no Rand signals

// MARK: Rand has no signals
// MARK: Rand Record: RandProtocol extension (methods and fields)
public extension RandProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GRand` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GRand>! { return ptr?.assumingMemoryBound(to: GRand.self) }

    /// Copies a `GRand` into a new one with the same exact state as before.
    /// This way you can take a snapshot of the random number generator for
    /// replaying later.
    @inlinable func copy() -> RandRef! {
        let result = g_rand_copy(_ptr)
        guard let rv = RandRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Returns the next random `gdouble` from `rand_` equally distributed over
    /// the range [0..1).
    @inlinable func CDouble() -> Double {
        let result = g_rand_double(_ptr)
        let rv = Double(result)
        return rv
    }

    /// Returns the next random `gdouble` from `rand_` equally distributed over
    /// the range [`begin.`.`end`).
    @inlinable func doubleRange(begin: Double, end: Double) -> Double {
        let result = g_rand_double_range(_ptr, gdouble(begin), gdouble(end))
        let rv = Double(result)
        return rv
    }

    /// Frees the memory allocated for the `GRand`.
    @inlinable func free() {
        
        g_rand_free(_ptr)
        
    }

    /// Returns the next random `guint32` from `rand_` equally distributed over
    /// the range [0..2^32-1].
    @inlinable func CInt() -> guint32 {
        let result = g_rand_int(_ptr)
        let rv = result
        return rv
    }

    /// Returns the next random `gint32` from `rand_` equally distributed over
    /// the range [`begin.`.`end-1`].
    @inlinable func intRange(begin: gint32, end: gint32) -> gint32 {
        let result = g_rand_int_range(_ptr, begin, end)
        let rv = result
        return rv
    }

    /// Sets the seed for the random number generator `GRand` to `seed`.
    @inlinable func set(seed: guint32) {
        
        g_rand_set_seed(_ptr, seed)
        
    }

    /// Initializes the random number generator by an array of longs.
    /// Array can be of arbitrary size, though only the first 624 values
    /// are taken.  This function is useful if you have many low entropy
    /// seeds, or if you require more then 32 bits of actual entropy for
    /// your application.
    @inlinable func setSeedArray(seed: UnsafePointer<guint32>!, seedLength: Int) {
        
        g_rand_set_seed_array(_ptr, seed, guint(seedLength))
        
    }


}



// MARK: - RecMutex Record

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
///
/// The `RecMutexProtocol` protocol exposes the methods and properties of an underlying `GRecMutex` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RecMutex`.
/// Alternatively, use `RecMutexRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol RecMutexProtocol {
        /// Untyped pointer to the underlying `GRecMutex` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GRecMutex` instance.
    var _ptr: UnsafeMutablePointer<GRecMutex>! { get }

    /// Required Initialiser for types conforming to `RecMutexProtocol`
    init(raw: UnsafeMutableRawPointer)
}

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
///
/// The `RecMutexRef` type acts as a lightweight Swift reference to an underlying `GRecMutex` instance.
/// It exposes methods that can operate on this data type through `RecMutexProtocol` conformance.
/// Use `RecMutexRef` only as an `unowned` reference to an existing `GRecMutex` instance.
///
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
///
/// The `RecMutex` type acts as an owner of an underlying `GRecMutex` instance.
/// It provides the methods that can operate on this data type through `RecMutexProtocol` conformance.
/// Use `RecMutex` as a strong reference or owner of a `GRecMutex` instance.
///
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
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

// MARK: RecMutex has no signals
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
        let result = g_rec_mutex_trylock(_ptr)
        let rv = ((result) != 0)
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



// MARK: - Regex Record

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
///
/// The `RegexProtocol` protocol exposes the methods and properties of an underlying `GRegex` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Regex`.
/// Alternatively, use `RegexRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol RegexProtocol {
        /// Untyped pointer to the underlying `GRegex` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GRegex` instance.
    var regex_ptr: UnsafeMutablePointer<GRegex>! { get }

    /// Required Initialiser for types conforming to `RegexProtocol`
    init(raw: UnsafeMutableRawPointer)
}

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
///
/// The `RegexRef` type acts as a lightweight Swift reference to an underlying `GRegex` instance.
/// It exposes methods that can operate on this data type through `RegexProtocol` conformance.
/// Use `RegexRef` only as an `unowned` reference to an existing `GRegex` instance.
///
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
        let result = g_regex_new(pattern, compileOptions.value, matchOptions.value, &error)
        if let error = error { throw GLibError(error) }
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }
}

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
///
/// The `Regex` type acts as a reference-counted owner of an underlying `GRegex` instance.
/// It provides the methods that can operate on this data type through `RegexProtocol` conformance.
/// Use `Regex` as a strong reference or owner of a `GRegex` instance.
///
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
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
        let result = g_regex_new(pattern, compileOptions.value, matchOptions.value, &error)
        if let error = error { throw GLibError(error) }
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no Regex properties

// MARK: no Regex signals

// MARK: Regex has no signals
// MARK: Regex Record: RegexProtocol extension (methods and fields)
public extension RegexProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GRegex` instance.
    @inlinable var regex_ptr: UnsafeMutablePointer<GRegex>! { return ptr?.assumingMemoryBound(to: GRegex.self) }

    /// Returns the number of capturing subpatterns in the pattern.
    @inlinable func getCaptureCount() -> Int {
        let result = g_regex_get_capture_count(regex_ptr)
        let rv = Int(result)
        return rv
    }

    /// Returns the compile options that `regex` was created with.
    /// 
    /// Depending on the version of PCRE that is used, this may or may not
    /// include flags set by option expressions such as `(?i)` found at the
    /// top-level within the compiled pattern.
    @inlinable func getCompileFlags() -> GLib.RegexCompileFlags {
        let result = g_regex_get_compile_flags(regex_ptr)
        let rv = RegexCompileFlags(result)
        return rv
    }

    /// Checks whether the pattern contains explicit CR or LF references.
    @inlinable func getHasCrOrLf() -> Bool {
        let result = g_regex_get_has_cr_or_lf(regex_ptr)
        let rv = ((result) != 0)
        return rv
    }

    /// Returns the match options that `regex` was created with.
    @inlinable func getMatchFlags() -> GLib.RegexMatchFlags {
        let result = g_regex_get_match_flags(regex_ptr)
        let rv = RegexMatchFlags(result)
        return rv
    }

    /// Returns the number of the highest back reference
    /// in the pattern, or 0 if the pattern does not contain
    /// back references.
    @inlinable func getMaxBackref() -> Int {
        let result = g_regex_get_max_backref(regex_ptr)
        let rv = Int(result)
        return rv
    }

    /// Gets the number of characters in the longest lookbehind assertion in the
    /// pattern. This information is useful when doing multi-segment matching using
    /// the partial matching facilities.
    @inlinable func getMaxLookbehind() -> Int {
        let result = g_regex_get_max_lookbehind(regex_ptr)
        let rv = Int(result)
        return rv
    }

    /// Gets the pattern string associated with `regex`, i.e. a copy of
    /// the string passed to `g_regex_new()`.
    @inlinable func getPattern() -> String! {
        let result = g_regex_get_pattern(regex_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Retrieves the number of the subexpression named `name`.
    @inlinable func getStringNumber(name: UnsafePointer<gchar>!) -> Int {
        let result = g_regex_get_string_number(regex_ptr, name)
        let rv = Int(result)
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
        let result = g_regex_match(regex_ptr, string, matchOptions.value, matchInfo)
        let rv = ((result) != 0)
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
        let result = g_regex_match_all(regex_ptr, string, matchOptions.value, matchInfo)
        let rv = ((result) != 0)
        return rv
    }

    /// Using the standard algorithm for regular expression matching only
    /// the longest match in the `string` is retrieved, it is not possible
    /// to obtain all the available matches. For instance matching
    /// "&lt;a&gt; &lt;b&gt; &lt;c&gt;" against the pattern "&lt;.*&gt;"
    /// you get "&lt;a&gt; &lt;b&gt; &lt;c&gt;".
    /// 
    /// This function uses a different algorithm (called DFA, i.e. deterministic
    /// finite automaton), so it can retrieve all the possible matches, all
    /// starting at the same point in the string. For instance matching
    /// "&lt;a&gt; &lt;b&gt; &lt;c&gt;" against the pattern "&lt;.*&gt;;"
    /// you would obtain three matches: "&lt;a&gt; &lt;b&gt; &lt;c&gt;",
    /// "&lt;a&gt; &lt;b&gt;" and "&lt;a&gt;".
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
        let result = g_regex_match_all_full(regex_ptr, string, stringLen, gint(startPosition), matchOptions.value, matchInfo, &error)
        if let error = error { throw GLibError(error) }
        let rv = ((result) != 0)
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
        let result = g_regex_match_full(regex_ptr, string, stringLen, gint(startPosition), matchOptions.value, matchInfo, &error)
        if let error = error { throw GLibError(error) }
        let rv = ((result) != 0)
        return rv
    }

    /// Increases reference count of `regex` by 1.
    @discardableResult @inlinable func ref() -> RegexRef! {
        let result = g_regex_ref(regex_ptr)
        guard let rv = RegexRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Replaces all occurrences of the pattern in `regex` with the
    /// replacement text. Backreferences of the form '\number' or
    /// '\g&lt;number&gt;' in the replacement text are interpolated by the
    /// number-th captured subexpression of the match, '\g&lt;name&gt;' refers
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
        let result = g_regex_replace(regex_ptr, string, stringLen, gint(startPosition), replacement, matchOptions.value, &error)
        if let error = error { throw GLibError(error) }
        let rv = result.map({ String(cString: $0) })
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
    @inlinable func replaceEval(string: UnsafePointer<gchar>!, stringLen: gssize, startPosition: Int, matchOptions: RegexMatchFlags, eval: GRegexEvalCallback?, userData: gpointer? = nil) throws -> String! {
        var error: UnsafeMutablePointer<GError>?
        let result = g_regex_replace_eval(regex_ptr, string, stringLen, gint(startPosition), matchOptions.value, eval, userData, &error)
        if let error = error { throw GLibError(error) }
        let rv = result.map({ String(cString: $0) })
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
        let result = g_regex_replace_literal(regex_ptr, string, stringLen, gint(startPosition), replacement, matchOptions.value, &error)
        if let error = error { throw GLibError(error) }
        let rv = result.map({ String(cString: $0) })
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
        let result = g_regex_split(regex_ptr, string, matchOptions.value)
        let rv = result
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
        let result = g_regex_split_full(regex_ptr, string, stringLen, gint(startPosition), matchOptions.value, gint(maxTokens), &error)
        if let error = error { throw GLibError(error) }
        let rv = result
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
            let result = g_regex_get_capture_count(regex_ptr)
        let rv = Int(result)
            return rv
        }
    }

    /// Returns the compile options that `regex` was created with.
    /// 
    /// Depending on the version of PCRE that is used, this may or may not
    /// include flags set by option expressions such as `(?i)` found at the
    /// top-level within the compiled pattern.
    @inlinable var compileFlags: GLib.RegexCompileFlags {
        /// Returns the compile options that `regex` was created with.
        /// 
        /// Depending on the version of PCRE that is used, this may or may not
        /// include flags set by option expressions such as `(?i)` found at the
        /// top-level within the compiled pattern.
        get {
            let result = g_regex_get_compile_flags(regex_ptr)
        let rv = RegexCompileFlags(result)
            return rv
        }
    }

    /// Checks whether the pattern contains explicit CR or LF references.
    @inlinable var hasCrOrLf: Bool {
        /// Checks whether the pattern contains explicit CR or LF references.
        get {
            let result = g_regex_get_has_cr_or_lf(regex_ptr)
        let rv = ((result) != 0)
            return rv
        }
    }

    /// Returns the match options that `regex` was created with.
    @inlinable var matchFlags: GLib.RegexMatchFlags {
        /// Returns the match options that `regex` was created with.
        get {
            let result = g_regex_get_match_flags(regex_ptr)
        let rv = RegexMatchFlags(result)
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
            let result = g_regex_get_max_backref(regex_ptr)
        let rv = Int(result)
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
            let result = g_regex_get_max_lookbehind(regex_ptr)
        let rv = Int(result)
            return rv
        }
    }

    /// Gets the pattern string associated with `regex`, i.e. a copy of
    /// the string passed to `g_regex_new()`.
    @inlinable var pattern: String! {
        /// Gets the pattern string associated with `regex`, i.e. a copy of
        /// the string passed to `g_regex_new()`.
        get {
            let result = g_regex_get_pattern(regex_ptr)
        let rv = result.map({ String(cString: $0) })
            return rv
        }
    }


}



