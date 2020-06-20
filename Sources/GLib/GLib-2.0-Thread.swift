import CGLib

// MARK: - Thread Record

/// The `ThreadProtocol` protocol exposes the methods and properties of an underlying `GThread` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Thread`.
/// Alternatively, use `ThreadRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GThread` struct represents a running thread. This struct
/// is returned by `g_thread_new()` or `g_thread_try_new()`. You can
/// obtain the `GThread` struct representing the current thread by
/// calling `g_thread_self()`.
/// 
/// GThread is refcounted, see `g_thread_ref()` and `g_thread_unref()`.
/// The thread represented by it holds a reference while it is running,
/// and `g_thread_join()` consumes the reference that it is given, so
/// it is normally not necessary to manage GThread references
/// explicitly.
/// 
/// The structure is opaque -- none of its fields may be directly
/// accessed.
public protocol ThreadProtocol {
        /// Untyped pointer to the underlying `GThread` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GThread` instance.
    var thread_ptr: UnsafeMutablePointer<GThread> { get }
}

/// The `ThreadRef` type acts as a lightweight Swift reference to an underlying `GThread` instance.
/// It exposes methods that can operate on this data type through `ThreadProtocol` conformance.
/// Use `ThreadRef` only as an `unowned` reference to an existing `GThread` instance.
///
/// The `GThread` struct represents a running thread. This struct
/// is returned by `g_thread_new()` or `g_thread_try_new()`. You can
/// obtain the `GThread` struct representing the current thread by
/// calling `g_thread_self()`.
/// 
/// GThread is refcounted, see `g_thread_ref()` and `g_thread_unref()`.
/// The thread represented by it holds a reference while it is running,
/// and `g_thread_join()` consumes the reference that it is given, so
/// it is normally not necessary to manage GThread references
/// explicitly.
/// 
/// The structure is opaque -- none of its fields may be directly
/// accessed.
public struct ThreadRef: ThreadProtocol {
        /// Untyped pointer to the underlying `GThread` instance.
    /// For type-safe access, use the generated, typed pointer `thread_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ThreadRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GThread>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ThreadProtocol`
    init<T: ThreadProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// This function creates a new thread. The new thread starts by invoking
    /// `func` with the argument data. The thread will run until `func` returns
    /// or until `g_thread_exit()` is called from the new thread. The return value
    /// of `func` becomes the return value of the thread, which can be obtained
    /// with `g_thread_join()`.
    /// 
    /// The `name` can be useful for discriminating threads in a debugger.
    /// It is not used for other purposes and does not have to be unique.
    /// Some systems restrict the length of `name` to 16 bytes.
    /// 
    /// If the thread can not be created the program aborts. See
    /// `g_thread_try_new()` if you want to attempt to deal with failures.
    /// 
    /// If you are using threads to offload (potentially many) short-lived tasks,
    /// `GThreadPool` may be more appropriate than manually spawning and tracking
    /// multiple `GThreads`.
    /// 
    /// To free the struct returned by this function, use `g_thread_unref()`.
    /// Note that `g_thread_join()` implicitly unrefs the `GThread` as well.
    /// 
    /// New threads by default inherit their scheduler policy (POSIX) or thread
    /// priority (Windows) of the thread creating the new thread.
    /// 
    /// This behaviour changed in GLib 2.64: before threads on Windows were not
    /// inheriting the thread priority but were spawned with the default priority.
    /// Starting with GLib 2.64 the behaviour is now consistent between Windows and
    /// POSIX and all threads inherit their parent thread's priority.
    init( name: UnsafePointer<gchar>, func_: @escaping ThreadFunc, data: UnsafeMutableRawPointer) {
        let rv: UnsafeMutablePointer<GThread>! = cast(g_thread_new(name, func_, cast(data)))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }

    /// This function is the same as `g_thread_new()` except that
    /// it allows for the possibility of failure.
    /// 
    /// If a thread can not be created (due to resource limits),
    /// `error` is set and `nil` is returned.
    init(try_ name: UnsafePointer<gchar>, func_: @escaping ThreadFunc, data: UnsafeMutableRawPointer) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GThread>! = cast(g_thread_try_new(name, func_, cast(data), &error))
        if let error = error { throw ErrorType(error) }
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
    /// This function is the same as `g_thread_new()` except that
    /// it allows for the possibility of failure.
    /// 
    /// If a thread can not be created (due to resource limits),
    /// `error` is set and `nil` is returned.
    static func tryNew(try_ name: UnsafePointer<gchar>, func_: @escaping ThreadFunc, data: UnsafeMutableRawPointer) throws -> ThreadRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GThread>! = cast(g_thread_try_new(name, func_, cast(data), &error))
        if let error = error { throw ErrorType(error) }
        return rv.map { ThreadRef(cast($0)) }
    }

    /// This function returns the `GThread` corresponding to the
    /// current thread. Note that this function does not increase
    /// the reference count of the returned struct.
    /// 
    /// This function will return a `GThread` even for threads that
    /// were not created by GLib (i.e. those created by other threading
    /// APIs). This may be useful for thread identification purposes
    /// (i.e. comparisons) but you must not use GLib functions (such
    /// as `g_thread_join()`) on these threads.
    static func self_() -> ThreadRef! {
        let rv: UnsafeMutablePointer<GThread>! = cast(g_thread_self())
        return rv.map { ThreadRef(cast($0)) }
    }
}

/// The `Thread` type acts as a reference-counted owner of an underlying `GThread` instance.
/// It provides the methods that can operate on this data type through `ThreadProtocol` conformance.
/// Use `Thread` as a strong reference or owner of a `GThread` instance.
///
/// The `GThread` struct represents a running thread. This struct
/// is returned by `g_thread_new()` or `g_thread_try_new()`. You can
/// obtain the `GThread` struct representing the current thread by
/// calling `g_thread_self()`.
/// 
/// GThread is refcounted, see `g_thread_ref()` and `g_thread_unref()`.
/// The thread represented by it holds a reference while it is running,
/// and `g_thread_join()` consumes the reference that it is given, so
/// it is normally not necessary to manage GThread references
/// explicitly.
/// 
/// The structure is opaque -- none of its fields may be directly
/// accessed.
open class Thread: ThreadProtocol {
        /// Untyped pointer to the underlying `GThread` instance.
    /// For type-safe access, use the generated, typed pointer `thread_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Thread` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GThread>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GThread`.
    /// i.e., ownership is transferred to the `Thread` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GThread>) {
        ptr = UnsafeMutableRawPointer(op)
        g_thread_ref(cast(thread_ptr))
    }

    /// Reference intialiser for a related type that implements `ThreadProtocol`
    /// Will retain `GThread`.
    /// - Parameter other: an instance of a related type that implements `ThreadProtocol`
    public init<T: ThreadProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.thread_ptr)
        g_thread_ref(cast(thread_ptr))
    }

    /// Releases the underlying `GThread` instance using `g_thread_unref`.
    deinit {
        g_thread_unref(cast(thread_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_thread_ref(cast(thread_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_thread_ref(cast(thread_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_thread_ref(cast(thread_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_thread_ref(cast(thread_ptr))
    }

    /// This function creates a new thread. The new thread starts by invoking
    /// `func` with the argument data. The thread will run until `func` returns
    /// or until `g_thread_exit()` is called from the new thread. The return value
    /// of `func` becomes the return value of the thread, which can be obtained
    /// with `g_thread_join()`.
    /// 
    /// The `name` can be useful for discriminating threads in a debugger.
    /// It is not used for other purposes and does not have to be unique.
    /// Some systems restrict the length of `name` to 16 bytes.
    /// 
    /// If the thread can not be created the program aborts. See
    /// `g_thread_try_new()` if you want to attempt to deal with failures.
    /// 
    /// If you are using threads to offload (potentially many) short-lived tasks,
    /// `GThreadPool` may be more appropriate than manually spawning and tracking
    /// multiple `GThreads`.
    /// 
    /// To free the struct returned by this function, use `g_thread_unref()`.
    /// Note that `g_thread_join()` implicitly unrefs the `GThread` as well.
    /// 
    /// New threads by default inherit their scheduler policy (POSIX) or thread
    /// priority (Windows) of the thread creating the new thread.
    /// 
    /// This behaviour changed in GLib 2.64: before threads on Windows were not
    /// inheriting the thread priority but were spawned with the default priority.
    /// Starting with GLib 2.64 the behaviour is now consistent between Windows and
    /// POSIX and all threads inherit their parent thread's priority.
    public init( name: UnsafePointer<gchar>, func_: @escaping ThreadFunc, data: UnsafeMutableRawPointer) {
        let rv: UnsafeMutablePointer<GThread>! = cast(g_thread_new(name, func_, cast(data)))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }

    /// This function is the same as `g_thread_new()` except that
    /// it allows for the possibility of failure.
    /// 
    /// If a thread can not be created (due to resource limits),
    /// `error` is set and `nil` is returned.
    public init(try_ name: UnsafePointer<gchar>, func_: @escaping ThreadFunc, data: UnsafeMutableRawPointer) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GThread>! = cast(g_thread_try_new(name, func_, cast(data), &error))
        if let error = error { throw ErrorType(error) }
        ptr = UnsafeMutableRawPointer(cast(rv))
    }

    /// This function is the same as `g_thread_new()` except that
    /// it allows for the possibility of failure.
    /// 
    /// If a thread can not be created (due to resource limits),
    /// `error` is set and `nil` is returned.
    public static func tryNew(try_ name: UnsafePointer<gchar>, func_: @escaping ThreadFunc, data: UnsafeMutableRawPointer) throws -> Thread! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GThread>! = cast(g_thread_try_new(name, func_, cast(data), &error))
        if let error = error { throw ErrorType(error) }
        return rv.map { Thread(cast($0)) }
    }

    /// This function returns the `GThread` corresponding to the
    /// current thread. Note that this function does not increase
    /// the reference count of the returned struct.
    /// 
    /// This function will return a `GThread` even for threads that
    /// were not created by GLib (i.e. those created by other threading
    /// APIs). This may be useful for thread identification purposes
    /// (i.e. comparisons) but you must not use GLib functions (such
    /// as `g_thread_join()`) on these threads.
    public static func self_() -> Thread! {
        let rv: UnsafeMutablePointer<GThread>! = cast(g_thread_self())
        return rv.map { Thread(cast($0)) }
    }

}

// MARK: no Thread properties

// MARK: no Thread signals


// MARK: Thread Record: ThreadProtocol extension (methods and fields)
public extension ThreadProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GThread` instance.
    var thread_ptr: UnsafeMutablePointer<GThread> { return ptr.assumingMemoryBound(to: GThread.self) }

    /// Waits until `thread` finishes, i.e. the function `func`, as
    /// given to `g_thread_new()`, returns or `g_thread_exit()` is called.
    /// If `thread` has already terminated, then `g_thread_join()`
    /// returns immediately.
    /// 
    /// Any thread can wait for any other thread by calling `g_thread_join()`,
    /// not just its 'creator'. Calling `g_thread_join()` from multiple threads
    /// for the same `thread` leads to undefined behaviour.
    /// 
    /// The value returned by `func` or given to `g_thread_exit()` is
    /// returned by this function.
    /// 
    /// `g_thread_join()` consumes the reference to the passed-in `thread`.
    /// This will usually cause the `GThread` struct and associated resources
    /// to be freed. Use `g_thread_ref()` to obtain an extra reference if you
    /// want to keep the GThread alive beyond the `g_thread_join()` call.
    func join() -> UnsafeMutableRawPointer! {
        let rv: UnsafeMutableRawPointer! = cast(g_thread_join(cast(thread_ptr)))
        return cast(rv)
    }

    /// Increase the reference count on `thread`.
    @discardableResult func ref() -> UnsafeMutablePointer<GThread>! {
        let rv: UnsafeMutablePointer<GThread>! = cast(g_thread_ref(cast(thread_ptr)))
        return cast(rv)
    }

    /// Decrease the reference count on `thread`, possibly freeing all
    /// resources associated with it.
    /// 
    /// Note that each thread holds a reference to its `GThread` while
    /// it is running, so it is safe to drop your own reference to it
    /// if you don't need it anymore.
    func unref() {
        g_thread_unref(cast(thread_ptr))
    
    }


}



