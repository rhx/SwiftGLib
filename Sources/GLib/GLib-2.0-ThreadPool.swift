import CGLib

// MARK: - ThreadPool Record

/// The `ThreadPoolProtocol` protocol exposes the methods and properties of an underlying `GThreadPool` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ThreadPool`.
/// Alternatively, use `ThreadPoolRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GThreadPool` struct represents a thread pool. It has three
/// public read-only members, but the underlying struct is bigger,
/// so you must not copy this struct.
public protocol ThreadPoolProtocol {
    /// Untyped pointer to the underlying `GThreadPool` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GThreadPool` instance.
    var _ptr: UnsafeMutablePointer<GThreadPool> { get }
}

/// The `ThreadPoolRef` type acts as a lightweight Swift reference to an underlying `GThreadPool` instance.
/// It exposes methods that can operate on this data type through `ThreadPoolProtocol` conformance.
/// Use `ThreadPoolRef` only as an `unowned` reference to an existing `GThreadPool` instance.
///
/// The `GThreadPool` struct represents a thread pool. It has three
/// public read-only members, but the underlying struct is bigger,
/// so you must not copy this struct.
public struct ThreadPoolRef: ThreadPoolProtocol {
    /// Untyped pointer to the underlying `GThreadPool` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ThreadPoolRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GThreadPool>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ThreadPoolProtocol`
    init<T: ThreadPoolProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadPoolProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadPoolProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadPoolProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadPoolProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadPoolProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ThreadPool` type acts as an owner of an underlying `GThreadPool` instance.
/// It provides the methods that can operate on this data type through `ThreadPoolProtocol` conformance.
/// Use `ThreadPool` as a strong reference or owner of a `GThreadPool` instance.
///
/// The `GThreadPool` struct represents a thread pool. It has three
/// public read-only members, but the underlying struct is bigger,
/// so you must not copy this struct.
open class ThreadPool: ThreadPoolProtocol {
    /// Untyped pointer to the underlying `GThreadPool` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThreadPool` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GThreadPool>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GThreadPool` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ThreadPool` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GThreadPool>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GThreadPool, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `ThreadPoolProtocol`
    /// `GThreadPool` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ThreadPoolProtocol`
    public init<T: ThreadPoolProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GThreadPool, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GThreadPool`.
    deinit {
        // no reference counting for GThreadPool, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadPoolProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadPoolProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GThreadPool, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadPoolProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadPoolProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GThreadPool, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadPoolProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadPoolProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GThreadPool, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadPoolProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadPoolProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GThreadPool, cannot ref(cast(_ptr))
    }



}

// MARK: - no ThreadPool properties

// MARK: - no signals


public extension ThreadPoolProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GThreadPool` instance.
    var _ptr: UnsafeMutablePointer<GThreadPool> { return ptr.assumingMemoryBound(to: GThreadPool.self) }

    /// Frees all resources allocated for `pool`.
    /// 
    /// If `immediate` is `true`, no new task is processed for `pool`.
    /// Otherwise `pool` is not freed before the last task is processed.
    /// Note however, that no thread of this pool is interrupted while
    /// processing a task. Instead at least all still running threads
    /// can finish their tasks before the `pool` is freed.
    /// 
    /// If `wait_` is `true`, the functions does not return before all
    /// tasks to be processed (dependent on `immediate`, whether all
    /// or only the currently running) are ready.
    /// Otherwise the function returns immediately.
    /// 
    /// After calling this function `pool` must not be used anymore.
    func free(immediate: Bool, wait_: Bool) {
        g_thread_pool_free(cast(_ptr), gboolean(immediate ? 1 : 0), gboolean(wait_ ? 1 : 0))
    
    }

    /// Returns the maximal number of threads for `pool`.
    func getMaxThreads() -> CInt {
        let rv = g_thread_pool_get_max_threads(cast(_ptr))
        return CInt(rv)
    }

    /// Returns the number of threads currently running in `pool`.
    func getNumThreads() -> CUnsignedInt {
        let rv = g_thread_pool_get_num_threads(cast(_ptr))
        return CUnsignedInt(rv)
    }

    /// Moves the item to the front of the queue of unprocessed
    /// items, so that it will be processed next.
    func moveToFront(data: UnsafeMutableRawPointer) -> Bool {
        let rv = g_thread_pool_move_to_front(cast(_ptr), cast(data))
        return Bool(rv != 0)
    }

    /// Inserts `data` into the list of tasks to be executed by `pool`.
    /// 
    /// When the number of currently running threads is lower than the
    /// maximal allowed number of threads, a new thread is started (or
    /// reused) with the properties given to `g_thread_pool_new()`.
    /// Otherwise, `data` stays in the queue until a thread in this pool
    /// finishes its previous task and processes `data`.
    /// 
    /// `error` can be `nil` to ignore errors, or non-`nil` to report
    /// errors. An error can only occur when a new thread couldn't be
    /// created. In that case `data` is simply appended to the queue of
    /// work to do.
    /// 
    /// Before version 2.32, this function did not return a success status.
    func push(data: UnsafeMutableRawPointer) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_thread_pool_push(cast(_ptr), cast(data), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Sets the maximal allowed number of threads for `pool`.
    /// A value of -1 means that the maximal number of threads
    /// is unlimited. If `pool` is an exclusive thread pool, setting
    /// the maximal number of threads to -1 is not allowed.
    /// 
    /// Setting `max_threads` to 0 means stopping all work for `pool`.
    /// It is effectively frozen until `max_threads` is set to a non-zero
    /// value again.
    /// 
    /// A thread is never terminated while calling `func`, as supplied by
    /// `g_thread_pool_new()`. Instead the maximal number of threads only
    /// has effect for the allocation of new threads in `g_thread_pool_push()`.
    /// A new thread is allocated, whenever the number of currently
    /// running threads in `pool` is smaller than the maximal number.
    /// 
    /// `error` can be `nil` to ignore errors, or non-`nil` to report
    /// errors. An error can only occur when a new thread couldn't be
    /// created.
    /// 
    /// Before version 2.32, this function did not return a success status.
    func set(maxThreads max_threads: CInt) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_thread_pool_set_max_threads(cast(_ptr), gint(max_threads), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Sets the function used to sort the list of tasks. This allows the
    /// tasks to be processed by a priority determined by `func`, and not
    /// just in the order in which they were added to the pool.
    /// 
    /// Note, if the maximum number of threads is more than 1, the order
    /// that threads are executed cannot be guaranteed 100%. Threads are
    /// scheduled by the operating system and are executed at random. It
    /// cannot be assumed that threads are executed in the order they are
    /// created.
    func setSortFunction(func_: @escaping CompareDataFunc, userData user_data: UnsafeMutableRawPointer) {
        g_thread_pool_set_sort_function(cast(_ptr), func_, cast(user_data))
    
    }

    /// Returns the number of tasks still unprocessed in `pool`.
    func unprocessed() -> CUnsignedInt {
        let rv = g_thread_pool_unprocessed(cast(_ptr))
        return CUnsignedInt(rv)
    }
    /// Returns the maximal number of threads for `pool`.
    var maxThreads: CInt {
        /// Returns the maximal number of threads for `pool`.
        get {
            let rv = g_thread_pool_get_max_threads(cast(_ptr))
            return CInt(rv)
        }
    }

    /// Returns the number of threads currently running in `pool`.
    var numThreads: CUnsignedInt {
        /// Returns the number of threads currently running in `pool`.
        get {
            let rv = g_thread_pool_get_num_threads(cast(_ptr))
            return CUnsignedInt(rv)
        }
    }
}



