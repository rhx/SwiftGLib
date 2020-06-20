import CGLib

// MARK: - MainContext Record

/// The `MainContextProtocol` protocol exposes the methods and properties of an underlying `GMainContext` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MainContext`.
/// Alternatively, use `MainContextRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GMainContext` struct is an opaque data
/// type representing a set of sources to be handled in a main loop.
public protocol MainContextProtocol {
        /// Untyped pointer to the underlying `GMainContext` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GMainContext` instance.
    var main_context_ptr: UnsafeMutablePointer<GMainContext> { get }
}

/// The `MainContextRef` type acts as a lightweight Swift reference to an underlying `GMainContext` instance.
/// It exposes methods that can operate on this data type through `MainContextProtocol` conformance.
/// Use `MainContextRef` only as an `unowned` reference to an existing `GMainContext` instance.
///
/// The `GMainContext` struct is an opaque data
/// type representing a set of sources to be handled in a main loop.
public struct MainContextRef: MainContextProtocol {
        /// Untyped pointer to the underlying `GMainContext` instance.
    /// For type-safe access, use the generated, typed pointer `main_context_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MainContextRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GMainContext>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MainContextProtocol`
    init<T: MainContextProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainContextProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainContextProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainContextProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainContextProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainContextProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GMainContext` structure.
    init() {
        let rv: UnsafeMutablePointer<GMainContext>! = cast(g_main_context_new())
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
    /// Returns the global default main context. This is the main context
    /// used for main loop functions when a main loop is not explicitly
    /// specified, and corresponds to the "main" main loop. See also
    /// `g_main_context_get_thread_default()`.
    static func default_() -> MainContextRef! {
        let rv: UnsafeMutablePointer<GMainContext>! = cast(g_main_context_default())
        return rv.map { MainContextRef(cast($0)) }
    }

    /// Gets the thread-default `GMainContext` for this thread. Asynchronous
    /// operations that want to be able to be run in contexts other than
    /// the default one should call this method or
    /// `g_main_context_ref_thread_default()` to get a `GMainContext` to add
    /// their `GSources` to. (Note that even in single-threaded
    /// programs applications may sometimes want to temporarily push a
    /// non-default context, so it is not safe to assume that this will
    /// always return `nil` if you are running in the default thread.)
    /// 
    /// If you need to hold a reference on the context, use
    /// `g_main_context_ref_thread_default()` instead.
    static func getThreadDefault() -> MainContextRef! {
        let rv: UnsafeMutablePointer<GMainContext>! = cast(g_main_context_get_thread_default())
        return rv.map { MainContextRef(cast($0)) }
    }

    /// Gets the thread-default `GMainContext` for this thread, as with
    /// `g_main_context_get_thread_default()`, but also adds a reference to
    /// it with `g_main_context_ref()`. In addition, unlike
    /// `g_main_context_get_thread_default()`, if the thread-default context
    /// is the global default context, this will return that `GMainContext`
    /// (with a ref added to it) rather than returning `nil`.
    static func refThreadDefault() -> MainContextRef! {
        let rv: UnsafeMutablePointer<GMainContext>! = cast(g_main_context_ref_thread_default())
        return rv.map { MainContextRef(cast($0)) }
    }
}

/// The `MainContext` type acts as a reference-counted owner of an underlying `GMainContext` instance.
/// It provides the methods that can operate on this data type through `MainContextProtocol` conformance.
/// Use `MainContext` as a strong reference or owner of a `GMainContext` instance.
///
/// The `GMainContext` struct is an opaque data
/// type representing a set of sources to be handled in a main loop.
open class MainContext: MainContextProtocol {
        /// Untyped pointer to the underlying `GMainContext` instance.
    /// For type-safe access, use the generated, typed pointer `main_context_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MainContext` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GMainContext>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GMainContext`.
    /// i.e., ownership is transferred to the `MainContext` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GMainContext>) {
        ptr = UnsafeMutableRawPointer(op)
        g_main_context_ref(cast(main_context_ptr))
    }

    /// Reference intialiser for a related type that implements `MainContextProtocol`
    /// Will retain `GMainContext`.
    /// - Parameter other: an instance of a related type that implements `MainContextProtocol`
    public init<T: MainContextProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.main_context_ptr)
        g_main_context_ref(cast(main_context_ptr))
    }

    /// Releases the underlying `GMainContext` instance using `g_main_context_unref`.
    deinit {
        g_main_context_unref(cast(main_context_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_main_context_ref(cast(main_context_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainContextProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainContextProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_main_context_ref(cast(main_context_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainContextProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainContextProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_main_context_ref(cast(main_context_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_main_context_ref(cast(main_context_ptr))
    }

    /// Creates a new `GMainContext` structure.
    public init() {
        let rv: UnsafeMutablePointer<GMainContext>! = cast(g_main_context_new())
        ptr = UnsafeMutableRawPointer(cast(rv))
    }

    /// Returns the global default main context. This is the main context
    /// used for main loop functions when a main loop is not explicitly
    /// specified, and corresponds to the "main" main loop. See also
    /// `g_main_context_get_thread_default()`.
    public static func default_() -> MainContext! {
        let rv: UnsafeMutablePointer<GMainContext>! = cast(g_main_context_default())
        return rv.map { MainContext(cast($0)) }
    }

    /// Gets the thread-default `GMainContext` for this thread. Asynchronous
    /// operations that want to be able to be run in contexts other than
    /// the default one should call this method or
    /// `g_main_context_ref_thread_default()` to get a `GMainContext` to add
    /// their `GSources` to. (Note that even in single-threaded
    /// programs applications may sometimes want to temporarily push a
    /// non-default context, so it is not safe to assume that this will
    /// always return `nil` if you are running in the default thread.)
    /// 
    /// If you need to hold a reference on the context, use
    /// `g_main_context_ref_thread_default()` instead.
    public static func getThreadDefault() -> MainContext! {
        let rv: UnsafeMutablePointer<GMainContext>! = cast(g_main_context_get_thread_default())
        return rv.map { MainContext(cast($0)) }
    }

    /// Gets the thread-default `GMainContext` for this thread, as with
    /// `g_main_context_get_thread_default()`, but also adds a reference to
    /// it with `g_main_context_ref()`. In addition, unlike
    /// `g_main_context_get_thread_default()`, if the thread-default context
    /// is the global default context, this will return that `GMainContext`
    /// (with a ref added to it) rather than returning `nil`.
    public static func refThreadDefault() -> MainContext! {
        let rv: UnsafeMutablePointer<GMainContext>! = cast(g_main_context_ref_thread_default())
        return rv.map { MainContext(cast($0)) }
    }

}

// MARK: no MainContext properties

// MARK: no MainContext signals


// MARK: MainContext Record: MainContextProtocol extension (methods and fields)
public extension MainContextProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMainContext` instance.
    var main_context_ptr: UnsafeMutablePointer<GMainContext> { return ptr.assumingMemoryBound(to: GMainContext.self) }

    /// Tries to become the owner of the specified context.
    /// If some other thread is the owner of the context,
    /// returns `false` immediately. Ownership is properly
    /// recursive: the owner can require ownership again
    /// and will release ownership when `g_main_context_release()`
    /// is called as many times as `g_main_context_acquire()`.
    /// 
    /// You must be the owner of a context before you
    /// can call `g_main_context_prepare()`, `g_main_context_query()`,
    /// `g_main_context_check()`, `g_main_context_dispatch()`.
    func acquire() -> Bool {
        let rv = g_main_context_acquire(cast(main_context_ptr))
        return Bool(rv != 0)
    }

    /// Adds a file descriptor to the set of file descriptors polled for
    /// this context. This will very seldom be used directly. Instead
    /// a typical event source will use `g_source_add_unix_fd()` instead.
    func addPoll(fd: PollFDProtocol, priority: CInt) {
        g_main_context_add_poll(cast(main_context_ptr), cast(fd.ptr), gint(priority))
    
    }

    /// Passes the results of polling back to the main loop.
    /// 
    /// You must have successfully acquired the context with
    /// `g_main_context_acquire()` before you may call this function.
    func check(maxPriority max_priority: CInt, fds: UnsafeMutablePointer<GPollFD>, nFds n_fds: CInt) -> Bool {
        let rv = g_main_context_check(cast(main_context_ptr), gint(max_priority), cast(fds), gint(n_fds))
        return Bool(rv != 0)
    }

    /// Dispatches all pending sources.
    /// 
    /// You must have successfully acquired the context with
    /// `g_main_context_acquire()` before you may call this function.
    func dispatch() {
        g_main_context_dispatch(cast(main_context_ptr))
    
    }

    /// Finds a source with the given source functions and user data.  If
    /// multiple sources exist with the same source function and user data,
    /// the first one found will be returned.
    func findSourceByFuncsUserData(funcs: SourceFuncsProtocol, userData user_data: UnsafeMutableRawPointer) -> UnsafeMutablePointer<GSource>! {
        let rv: UnsafeMutablePointer<GSource>! = cast(g_main_context_find_source_by_funcs_user_data(cast(main_context_ptr), cast(funcs.ptr), cast(user_data)))
        return cast(rv)
    }

    /// Finds a `GSource` given a pair of context and ID.
    /// 
    /// It is a programmer error to attempt to look up a non-existent source.
    /// 
    /// More specifically: source IDs can be reissued after a source has been
    /// destroyed and therefore it is never valid to use this function with a
    /// source ID which may have already been removed.  An example is when
    /// scheduling an idle to run in another thread with `g_idle_add()`: the
    /// idle may already have run and been removed by the time this function
    /// is called on its (now invalid) source ID.  This source ID may have
    /// been reissued, leading to the operation being performed against the
    /// wrong source.
    func findSourceByID(sourceID source_id: CUnsignedInt) -> UnsafeMutablePointer<GSource>! {
        let rv: UnsafeMutablePointer<GSource>! = cast(g_main_context_find_source_by_id(cast(main_context_ptr), guint(source_id)))
        return cast(rv)
    }

    /// Finds a source with the given user data for the callback.  If
    /// multiple sources exist with the same user data, the first
    /// one found will be returned.
    func findSourceBy(userData user_data: UnsafeMutableRawPointer) -> UnsafeMutablePointer<GSource>! {
        let rv: UnsafeMutablePointer<GSource>! = cast(g_main_context_find_source_by_user_data(cast(main_context_ptr), cast(user_data)))
        return cast(rv)
    }

    /// Gets the poll function set by `g_main_context_set_poll_func()`.
    func getPollFunc() -> GPollFunc! {
        let rv: GPollFunc! = cast(g_main_context_get_poll_func(cast(main_context_ptr)))
        return cast(rv)
    }

    /// Invokes a function in such a way that `context` is owned during the
    /// invocation of `function`.
    /// 
    /// If `context` is `nil` then the global default main context — as
    /// returned by `g_main_context_default()` — is used.
    /// 
    /// If `context` is owned by the current thread, `function` is called
    /// directly.  Otherwise, if `context` is the thread-default main context
    /// of the current thread and `g_main_context_acquire()` succeeds, then
    /// `function` is called and `g_main_context_release()` is called
    /// afterwards.
    /// 
    /// In any other case, an idle source is created to call `function` and
    /// that source is attached to `context` (presumably to be run in another
    /// thread).  The idle source is attached with `G_PRIORITY_DEFAULT`
    /// priority.  If you want a different priority, use
    /// `g_main_context_invoke_full()`.
    /// 
    /// Note that, as with normal idle functions, `function` should probably
    /// return `false`.  If it returns `true`, it will be continuously run in a
    /// loop (and may prevent this call from returning).
    func invoke(function: @escaping SourceFunc, data: UnsafeMutableRawPointer) {
        g_main_context_invoke(cast(main_context_ptr), function, cast(data))
    
    }

    /// Invokes a function in such a way that `context` is owned during the
    /// invocation of `function`.
    /// 
    /// This function is the same as `g_main_context_invoke()` except that it
    /// lets you specify the priority in case `function` ends up being
    /// scheduled as an idle and also lets you give a `GDestroyNotify` for `data`.
    /// 
    /// `notify` should not assume that it is called from any particular
    /// thread or with any particular context acquired.
    func invokeFull(priority: CInt, function: @escaping SourceFunc, data: UnsafeMutableRawPointer, notify: @escaping DestroyNotify) {
        g_main_context_invoke_full(cast(main_context_ptr), gint(priority), function, cast(data), notify)
    
    }

    /// Runs a single iteration for the given main loop. This involves
    /// checking to see if any event sources are ready to be processed,
    /// then if no events sources are ready and `may_block` is `true`, waiting
    /// for a source to become ready, then dispatching the highest priority
    /// events sources that are ready. Otherwise, if `may_block` is `false`
    /// sources are not waited to become ready, only those highest priority
    /// events sources will be dispatched (if any), that are ready at this
    /// given moment without further waiting.
    /// 
    /// Note that even when `may_block` is `true`, it is still possible for
    /// `g_main_context_iteration()` to return `false`, since the wait may
    /// be interrupted for other reasons than an event source becoming ready.
    func iteration(mayBlock may_block: Bool) -> Bool {
        let rv = g_main_context_iteration(cast(main_context_ptr), gboolean(may_block ? 1 : 0))
        return Bool(rv != 0)
    }

    /// Checks if any sources have pending events for the given context.
    func pending() -> Bool {
        let rv = g_main_context_pending(cast(main_context_ptr))
        return Bool(rv != 0)
    }

    /// Pops `context` off the thread-default context stack (verifying that
    /// it was on the top of the stack).
    func popThreadDefault() {
        g_main_context_pop_thread_default(cast(main_context_ptr))
    
    }

    /// Prepares to poll sources within a main loop. The resulting information
    /// for polling is determined by calling g_main_context_query ().
    /// 
    /// You must have successfully acquired the context with
    /// `g_main_context_acquire()` before you may call this function.
    func prepare(priority: UnsafeMutablePointer<CInt>) -> Bool {
        let rv = g_main_context_prepare(cast(main_context_ptr), cast(priority))
        return Bool(rv != 0)
    }

    /// Acquires `context` and sets it as the thread-default context for the
    /// current thread. This will cause certain asynchronous operations
    /// (such as most [gio](#gio)-based I/O) which are
    /// started in this thread to run under `context` and deliver their
    /// results to its main loop, rather than running under the global
    /// default context in the main thread. Note that calling this function
    /// changes the context returned by `g_main_context_get_thread_default()`,
    /// not the one returned by `g_main_context_default()`, so it does not affect
    /// the context used by functions like `g_idle_add()`.
    /// 
    /// Normally you would call this function shortly after creating a new
    /// thread, passing it a `GMainContext` which will be run by a
    /// `GMainLoop` in that thread, to set a new default context for all
    /// async operations in that thread. In this case you may not need to
    /// ever call `g_main_context_pop_thread_default()`, assuming you want the
    /// new `GMainContext` to be the default for the whole lifecycle of the
    /// thread.
    /// 
    /// If you don't have control over how the new thread was created (e.g.
    /// in the new thread isn't newly created, or if the thread life
    /// cycle is managed by a `GThreadPool`), it is always suggested to wrap
    /// the logic that needs to use the new `GMainContext` inside a
    /// `g_main_context_push_thread_default()` / `g_main_context_pop_thread_default()`
    /// pair, otherwise threads that are re-used will end up never explicitly
    /// releasing the `GMainContext` reference they hold.
    /// 
    /// In some cases you may want to schedule a single operation in a
    /// non-default context, or temporarily use a non-default context in
    /// the main thread. In that case, you can wrap the call to the
    /// asynchronous operation inside a
    /// `g_main_context_push_thread_default()` /
    /// `g_main_context_pop_thread_default()` pair, but it is up to you to
    /// ensure that no other asynchronous operations accidentally get
    /// started while the non-default context is active.
    /// 
    /// Beware that libraries that predate this function may not correctly
    /// handle being used from a thread with a thread-default context. Eg,
    /// see `g_file_supports_thread_contexts()`.
    func pushThreadDefault() {
        g_main_context_push_thread_default(cast(main_context_ptr))
    
    }

    /// Determines information necessary to poll this main loop.
    /// 
    /// You must have successfully acquired the context with
    /// `g_main_context_acquire()` before you may call this function.
    func query(maxPriority max_priority: CInt, timeout_: UnsafeMutablePointer<CInt>, fds: UnsafeMutablePointer<GPollFD>, nFds n_fds: CInt) -> Int {
        let rv: Int = cast(g_main_context_query(cast(main_context_ptr), gint(max_priority), cast(timeout_), cast(fds), gint(n_fds)))
        return Int(rv)
    }

    /// Increases the reference count on a `GMainContext` object by one.
    @discardableResult func ref() -> UnsafeMutablePointer<GMainContext>! {
        let rv: UnsafeMutablePointer<GMainContext>! = cast(g_main_context_ref(cast(main_context_ptr)))
        return cast(rv)
    }

    /// Releases ownership of a context previously acquired by this thread
    /// with `g_main_context_acquire()`. If the context was acquired multiple
    /// times, the ownership will be released only when `g_main_context_release()`
    /// is called as many times as it was acquired.
    func release() {
        g_main_context_release(cast(main_context_ptr))
    
    }

    /// Removes file descriptor from the set of file descriptors to be
    /// polled for a particular context.
    func removePoll(fd: PollFDProtocol) {
        g_main_context_remove_poll(cast(main_context_ptr), cast(fd.ptr))
    
    }

    /// Sets the function to use to handle polling of file descriptors. It
    /// will be used instead of the `poll()` system call
    /// (or GLib's replacement function, which is used where
    /// `poll()` isn't available).
    /// 
    /// This function could possibly be used to integrate the GLib event
    /// loop with an external event loop.
    func setPollFunc(func_: @escaping PollFunc) {
        g_main_context_set_poll_func(cast(main_context_ptr), func_)
    
    }

    /// Decreases the reference count on a `GMainContext` object by one. If
    /// the result is zero, free the context and free all associated memory.
    func unref() {
        g_main_context_unref(cast(main_context_ptr))
    
    }

    /// Tries to become the owner of the specified context,
    /// as with `g_main_context_acquire()`. But if another thread
    /// is the owner, atomically drop `mutex` and wait on `cond` until
    /// that owner releases ownership or until `cond` is signaled, then
    /// try again (once) to become the owner.
    ///
    /// **wait is deprecated:**
    /// Use g_main_context_is_owner() and separate locking instead.
    @available(*, deprecated) func wait(cond: CondProtocol, mutex: MutexProtocol) -> Bool {
        let rv = g_main_context_wait(cast(main_context_ptr), cast(cond.ptr), cast(mutex.ptr))
        return Bool(rv != 0)
    }

    /// If `context` is currently blocking in `g_main_context_iteration()`
    /// waiting for a source to become ready, cause it to stop blocking
    /// and return.  Otherwise, cause the next invocation of
    /// `g_main_context_iteration()` to return without blocking.
    /// 
    /// This API is useful for low-level control over `GMainContext`; for
    /// example, integrating it with main loop implementations such as
    /// `GMainLoop`.
    /// 
    /// Another related use for this function is when implementing a main
    /// loop with a termination condition, computed from multiple threads:
    /// 
    /// (C Language Example):
    /// ```C
    ///   #define NUM_TASKS 10
    ///   static volatile gint tasks_remaining = NUM_TASKS;
    ///   ...
    ///  
    ///   while (g_atomic_int_get (&tasks_remaining) != 0)
    ///     g_main_context_iteration (NULL, TRUE);
    /// ```
    ///  
    /// Then in a thread:
    /// (C Language Example):
    /// ```C
    ///   perform_work();
    /// 
    ///   if (g_atomic_int_dec_and_test (&tasks_remaining))
    ///     g_main_context_wakeup (NULL);
    /// ```
    /// 
    func wakeup() {
        g_main_context_wakeup(cast(main_context_ptr))
    
    }
    /// Determines whether this thread holds the (recursive)
    /// ownership of this `GMainContext`. This is useful to
    /// know before waiting on another thread that may be
    /// blocking to get ownership of `context`.
    var isOwner: Bool {
        /// Determines whether this thread holds the (recursive)
        /// ownership of this `GMainContext`. This is useful to
        /// know before waiting on another thread that may be
        /// blocking to get ownership of `context`.
        get {
            let rv = g_main_context_is_owner(cast(main_context_ptr))
            return Bool(rv != 0)
        }
    }

    /// Gets the poll function set by `g_main_context_set_poll_func()`.
    var pollFunc: GPollFunc! {
        /// Gets the poll function set by `g_main_context_set_poll_func()`.
        get {
            let rv: GPollFunc! = cast(g_main_context_get_poll_func(cast(main_context_ptr)))
            return cast(rv)
        }
        /// Sets the function to use to handle polling of file descriptors. It
        /// will be used instead of the `poll()` system call
        /// (or GLib's replacement function, which is used where
        /// `poll()` isn't available).
        /// 
        /// This function could possibly be used to integrate the GLib event
        /// loop with an external event loop.
        nonmutating set {
            g_main_context_set_poll_func(cast(main_context_ptr), cast(newValue))
        }
    }


}



