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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GThread` instance.
    var thread_ptr: UnsafeMutablePointer<GThread>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension ThreadRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GThread>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GThread>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GThread>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GThread>?) {
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

    /// Reference intialiser for a related type that implements `ThreadProtocol`
    @inlinable init<T: ThreadProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
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
    @inlinable init( name: UnsafePointer<gchar>? = nil, `func`: GThreadFunc?, data: gpointer! = nil) {
        let rv = g_thread_new(name, `func`, data)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// This function is the same as `g_thread_new()` except that
    /// it allows for the possibility of failure.
    /// 
    /// If a thread can not be created (due to resource limits),
    /// `error` is set and `nil` is returned.
    @inlinable init(try_ name: UnsafePointer<gchar>? = nil, `func`: GThreadFunc?, data: gpointer! = nil) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_thread_try_new(name, `func`, data, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// This function is the same as `g_thread_new()` except that
    /// it allows for the possibility of failure.
    /// 
    /// If a thread can not be created (due to resource limits),
    /// `error` is set and `nil` is returned.
    @inlinable static func tryNew(try_ name: UnsafePointer<gchar>? = nil, `func`: GThreadFunc?, data: gpointer! = nil) throws -> ThreadRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = ThreadRef(gconstpointer: gconstpointer(g_thread_try_new(name, `func`, data, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
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
    @inlinable static func self_() -> ThreadRef! {
        guard let rv = ThreadRef(gconstpointer: gconstpointer(g_thread_self())) else { return nil }
        return rv
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
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Thread` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GThread>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Thread` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GThread>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Thread` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Thread` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Thread` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GThread>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Thread` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GThread>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GThread`.
    /// i.e., ownership is transferred to the `Thread` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GThread>) {
        ptr = UnsafeMutableRawPointer(op)
        g_thread_ref(ptr.assumingMemoryBound(to: GThread.self))
    }

    /// Reference intialiser for a related type that implements `ThreadProtocol`
    /// Will retain `GThread`.
    /// - Parameter other: an instance of a related type that implements `ThreadProtocol`
    @inlinable public init<T: ThreadProtocol>(_ other: T) {
        ptr = other.ptr
        g_thread_ref(ptr.assumingMemoryBound(to: GThread.self))
    }

    /// Releases the underlying `GThread` instance using `g_thread_unref`.
    deinit {
        g_thread_unref(ptr.assumingMemoryBound(to: GThread.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_thread_ref(ptr.assumingMemoryBound(to: GThread.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_thread_ref(ptr.assumingMemoryBound(to: GThread.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_thread_ref(ptr.assumingMemoryBound(to: GThread.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_thread_ref(ptr.assumingMemoryBound(to: GThread.self))
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
    @inlinable public init( name: UnsafePointer<gchar>? = nil, `func`: GThreadFunc?, data: gpointer! = nil) {
        let rv = g_thread_new(name, `func`, data)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// This function is the same as `g_thread_new()` except that
    /// it allows for the possibility of failure.
    /// 
    /// If a thread can not be created (due to resource limits),
    /// `error` is set and `nil` is returned.
    @inlinable public init(try_ name: UnsafePointer<gchar>? = nil, `func`: GThreadFunc?, data: gpointer! = nil) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_thread_try_new(name, `func`, data, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// This function is the same as `g_thread_new()` except that
    /// it allows for the possibility of failure.
    /// 
    /// If a thread can not be created (due to resource limits),
    /// `error` is set and `nil` is returned.
    @inlinable public static func tryNew(try_ name: UnsafePointer<gchar>? = nil, `func`: GThreadFunc?, data: gpointer! = nil) throws -> Thread! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = Thread(gconstpointer: gconstpointer(g_thread_try_new(name, `func`, data, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
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
    @inlinable public static func self_() -> Thread! {
        guard let rv = Thread(gconstpointer: gconstpointer(g_thread_self())) else { return nil }
        return rv
    }

}

// MARK: no Thread properties

// MARK: no Thread signals


// MARK: Thread Record: ThreadProtocol extension (methods and fields)
public extension ThreadProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GThread` instance.
    @inlinable var thread_ptr: UnsafeMutablePointer<GThread>! { return ptr?.assumingMemoryBound(to: GThread.self) }

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
    @inlinable func join() -> gpointer! {
        let rv = g_thread_join(thread_ptr)
        return rv
    }

    /// Increase the reference count on `thread`.
    @discardableResult @inlinable func ref() -> ThreadRef! {
        guard let rv = ThreadRef(gconstpointer: gconstpointer(g_thread_ref(thread_ptr))) else { return nil }
        return rv
    }

    /// Decrease the reference count on `thread`, possibly freeing all
    /// resources associated with it.
    /// 
    /// Note that each thread holds a reference to its `GThread` while
    /// it is running, so it is safe to drop your own reference to it
    /// if you don't need it anymore.
    @inlinable func unref() {
        g_thread_unref(thread_ptr)
    
    }


}



