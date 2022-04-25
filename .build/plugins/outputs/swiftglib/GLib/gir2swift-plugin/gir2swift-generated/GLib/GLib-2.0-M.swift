import CGLib

// MARK: - MainContext Record

/// The `GMainContext` struct is an opaque data
/// type representing a set of sources to be handled in a main loop.
///
/// The `MainContextProtocol` protocol exposes the methods and properties of an underlying `GMainContext` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MainContext`.
/// Alternatively, use `MainContextRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol MainContextProtocol {
        /// Untyped pointer to the underlying `GMainContext` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GMainContext` instance.
    var main_context_ptr: UnsafeMutablePointer<GMainContext>! { get }

    /// Required Initialiser for types conforming to `MainContextProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `GMainContext` struct is an opaque data
/// type representing a set of sources to be handled in a main loop.
///
/// The `MainContextRef` type acts as a lightweight Swift reference to an underlying `GMainContext` instance.
/// It exposes methods that can operate on this data type through `MainContextProtocol` conformance.
/// Use `MainContextRef` only as an `unowned` reference to an existing `GMainContext` instance.
///
public struct MainContextRef: MainContextProtocol {
        /// Untyped pointer to the underlying `GMainContext` instance.
    /// For type-safe access, use the generated, typed pointer `main_context_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MainContextRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GMainContext>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GMainContext>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GMainContext>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GMainContext>?) {
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

    /// Reference intialiser for a related type that implements `MainContextProtocol`
    @inlinable init<T: MainContextProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainContextProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainContextProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainContextProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainContextProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainContextProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GMainContext` structure.
    @inlinable init() {
            let result = g_main_context_new()
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }
    /// Returns the global default main context. This is the main context
    /// used for main loop functions when a main loop is not explicitly
    /// specified, and corresponds to the "main" main loop. See also
    /// `g_main_context_get_thread_default()`.
    @inlinable static func default_() -> MainContextRef! {
            let result = g_main_context_default()
        guard let rv = MainContextRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
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
    @inlinable static func getThreadDefault() -> MainContextRef! {
            let result = g_main_context_get_thread_default()
        guard let rv = MainContextRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Gets the thread-default `GMainContext` for this thread, as with
    /// `g_main_context_get_thread_default()`, but also adds a reference to
    /// it with `g_main_context_ref()`. In addition, unlike
    /// `g_main_context_get_thread_default()`, if the thread-default context
    /// is the global default context, this will return that `GMainContext`
    /// (with a ref added to it) rather than returning `nil`.
    @inlinable static func refThreadDefault() -> MainContextRef! {
            let result = g_main_context_ref_thread_default()
        guard let rv = MainContextRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }
}

/// The `GMainContext` struct is an opaque data
/// type representing a set of sources to be handled in a main loop.
///
/// The `MainContext` type acts as a reference-counted owner of an underlying `GMainContext` instance.
/// It provides the methods that can operate on this data type through `MainContextProtocol` conformance.
/// Use `MainContext` as a strong reference or owner of a `GMainContext` instance.
///
open class MainContext: MainContextProtocol {
        /// Untyped pointer to the underlying `GMainContext` instance.
    /// For type-safe access, use the generated, typed pointer `main_context_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MainContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GMainContext>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MainContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GMainContext>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MainContext` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MainContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MainContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GMainContext>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MainContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GMainContext>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GMainContext`.
    /// i.e., ownership is transferred to the `MainContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GMainContext>) {
        ptr = UnsafeMutableRawPointer(op)
        g_main_context_ref(ptr.assumingMemoryBound(to: GMainContext.self))
    }

    /// Reference intialiser for a related type that implements `MainContextProtocol`
    /// Will retain `GMainContext`.
    /// - Parameter other: an instance of a related type that implements `MainContextProtocol`
    @inlinable public init<T: MainContextProtocol>(_ other: T) {
        ptr = other.ptr
        g_main_context_ref(ptr.assumingMemoryBound(to: GMainContext.self))
    }

    /// Releases the underlying `GMainContext` instance using `g_main_context_unref`.
    deinit {
        g_main_context_unref(ptr.assumingMemoryBound(to: GMainContext.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_main_context_ref(ptr.assumingMemoryBound(to: GMainContext.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainContextProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainContextProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_main_context_ref(ptr.assumingMemoryBound(to: GMainContext.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainContextProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainContextProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_main_context_ref(ptr.assumingMemoryBound(to: GMainContext.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_main_context_ref(ptr.assumingMemoryBound(to: GMainContext.self))
    }

    /// Creates a new `GMainContext` structure.
    @inlinable public init() {
            let result = g_main_context_new()
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Returns the global default main context. This is the main context
    /// used for main loop functions when a main loop is not explicitly
    /// specified, and corresponds to the "main" main loop. See also
    /// `g_main_context_get_thread_default()`.
    @inlinable public static func default_() -> MainContext! {
            let result = g_main_context_default()
        guard let rv = MainContext(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
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
    @inlinable public static func getThreadDefault() -> MainContext! {
            let result = g_main_context_get_thread_default()
        guard let rv = MainContext(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Gets the thread-default `GMainContext` for this thread, as with
    /// `g_main_context_get_thread_default()`, but also adds a reference to
    /// it with `g_main_context_ref()`. In addition, unlike
    /// `g_main_context_get_thread_default()`, if the thread-default context
    /// is the global default context, this will return that `GMainContext`
    /// (with a ref added to it) rather than returning `nil`.
    @inlinable public static func refThreadDefault() -> MainContext! {
            let result = g_main_context_ref_thread_default()
        guard let rv = MainContext(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

}

// MARK: no MainContext properties

// MARK: no MainContext signals

// MARK: MainContext has no signals
// MARK: MainContext Record: MainContextProtocol extension (methods and fields)
public extension MainContextProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMainContext` instance.
    @inlinable var main_context_ptr: UnsafeMutablePointer<GMainContext>! { return ptr?.assumingMemoryBound(to: GMainContext.self) }

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
    @inlinable func acquire() -> Bool {
        let result = g_main_context_acquire(main_context_ptr)
        let rv = ((result) != 0)
        return rv
    }

    /// Adds a file descriptor to the set of file descriptors polled for
    /// this context. This will very seldom be used directly. Instead
    /// a typical event source will use `g_source_add_unix_fd()` instead.
    @inlinable func addPoll<PollFDT: PollFDProtocol>(fd: PollFDT, priority: Int) {
        
        g_main_context_add_poll(main_context_ptr, fd.pollfd_ptr, gint(priority))
        
    }

    /// Passes the results of polling back to the main loop. You should be
    /// careful to pass `fds` and its length `n_fds` as received from
    /// `g_main_context_query()`, as this functions relies on assumptions
    /// on how `fds` is filled.
    /// 
    /// You must have successfully acquired the context with
    /// `g_main_context_acquire()` before you may call this function.
    @inlinable func check(maxPriority: Int, fds: UnsafeMutablePointer<GPollFD>!, nFds: Int) -> Bool {
        let result = g_main_context_check(main_context_ptr, gint(maxPriority), fds, gint(nFds))
        let rv = ((result) != 0)
        return rv
    }

    /// Dispatches all pending sources.
    /// 
    /// You must have successfully acquired the context with
    /// `g_main_context_acquire()` before you may call this function.
    @inlinable func dispatch() {
        
        g_main_context_dispatch(main_context_ptr)
        
    }

    /// Finds a source with the given source functions and user data.  If
    /// multiple sources exist with the same source function and user data,
    /// the first one found will be returned.
    @inlinable func findSourceByFuncsUserData<SourceFuncsT: SourceFuncsProtocol>(funcs: SourceFuncsT, userData: gpointer? = nil) -> SourceRef! {
        let result = g_main_context_find_source_by_funcs_user_data(main_context_ptr, funcs._ptr, userData)
        let rv = SourceRef(gconstpointer: gconstpointer(result))
        return rv
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
    @inlinable func findSourceByID(sourceID: Int) -> SourceRef! {
        let result = g_main_context_find_source_by_id(main_context_ptr, guint(sourceID))
        let rv = SourceRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Finds a source with the given user data for the callback.  If
    /// multiple sources exist with the same user data, the first
    /// one found will be returned.
    @inlinable func findSourceBy(userData: gpointer? = nil) -> SourceRef! {
        let result = g_main_context_find_source_by_user_data(main_context_ptr, userData)
        let rv = SourceRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Gets the poll function set by `g_main_context_set_poll_func()`.
    @inlinable func getPollFunc() -> GPollFunc! {
        let result = g_main_context_get_poll_func(main_context_ptr)
        let rv = result
        return rv
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
    @inlinable func invoke(function: GSourceFunc?, data: gpointer? = nil) {
        
        g_main_context_invoke(main_context_ptr, function, data)
        
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
    @inlinable func invokeFull(priority: Int, function: GSourceFunc?, data: gpointer? = nil, notify: GDestroyNotify? = nil) {
        
        g_main_context_invoke_full(main_context_ptr, gint(priority), function, data, notify)
        
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
    @inlinable func iteration(mayBlock: Bool) -> Bool {
        let result = g_main_context_iteration(main_context_ptr, gboolean((mayBlock) ? 1 : 0))
        let rv = ((result) != 0)
        return rv
    }

    /// Checks if any sources have pending events for the given context.
    @inlinable func pending() -> Bool {
        let result = g_main_context_pending(main_context_ptr)
        let rv = ((result) != 0)
        return rv
    }

    /// Pops `context` off the thread-default context stack (verifying that
    /// it was on the top of the stack).
    @inlinable func popThreadDefault() {
        
        g_main_context_pop_thread_default(main_context_ptr)
        
    }

    /// Prepares to poll sources within a main loop. The resulting information
    /// for polling is determined by calling g_main_context_query ().
    /// 
    /// You must have successfully acquired the context with
    /// `g_main_context_acquire()` before you may call this function.
    @inlinable func prepare(priority: UnsafeMutablePointer<gint>! = nil) -> Bool {
        let result = g_main_context_prepare(main_context_ptr, priority)
        let rv = ((result) != 0)
        return rv
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
    @inlinable func pushThreadDefault() {
        
        g_main_context_push_thread_default(main_context_ptr)
        
    }

    /// Determines information necessary to poll this main loop. You should
    /// be careful to pass the resulting `fds` array and its length `n_fds`
    /// as is when calling `g_main_context_check()`, as this function relies
    /// on assumptions made when the array is filled.
    /// 
    /// You must have successfully acquired the context with
    /// `g_main_context_acquire()` before you may call this function.
    @inlinable func query(maxPriority: Int, timeout: UnsafeMutablePointer<gint>!, fds: UnsafeMutablePointer<GPollFD>!, nFds: Int) -> Int {
        let result = g_main_context_query(main_context_ptr, gint(maxPriority), timeout, fds, gint(nFds))
        let rv = Int(result)
        return rv
    }

    /// Increases the reference count on a `GMainContext` object by one.
    @discardableResult @inlinable func ref() -> MainContextRef! {
        let result = g_main_context_ref(main_context_ptr)
        guard let rv = MainContextRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Releases ownership of a context previously acquired by this thread
    /// with `g_main_context_acquire()`. If the context was acquired multiple
    /// times, the ownership will be released only when `g_main_context_release()`
    /// is called as many times as it was acquired.
    @inlinable func release() {
        
        g_main_context_release(main_context_ptr)
        
    }

    /// Removes file descriptor from the set of file descriptors to be
    /// polled for a particular context.
    @inlinable func removePoll<PollFDT: PollFDProtocol>(fd: PollFDT) {
        
        g_main_context_remove_poll(main_context_ptr, fd.pollfd_ptr)
        
    }

    /// Sets the function to use to handle polling of file descriptors. It
    /// will be used instead of the `poll()` system call
    /// (or GLib's replacement function, which is used where
    /// `poll()` isn't available).
    /// 
    /// This function could possibly be used to integrate the GLib event
    /// loop with an external event loop.
    @inlinable func setPollFunc(`func`: GPollFunc?) {
        
        g_main_context_set_poll_func(main_context_ptr, `func`)
        
    }

    /// Decreases the reference count on a `GMainContext` object by one. If
    /// the result is zero, free the context and free all associated memory.
    @inlinable func unref() {
        
        g_main_context_unref(main_context_ptr)
        
    }

    /// Tries to become the owner of the specified context,
    /// as with `g_main_context_acquire()`. But if another thread
    /// is the owner, atomically drop `mutex` and wait on `cond` until
    /// that owner releases ownership or until `cond` is signaled, then
    /// try again (once) to become the owner.
    ///
    /// **wait is deprecated:**
    /// Use g_main_context_is_owner() and separate locking instead.
    @available(*, deprecated) @inlinable func wait<CondT: CondProtocol, MutexT: MutexProtocol>(cond: CondT, mutex: MutexT) -> Bool {
        let result = g_main_context_wait(main_context_ptr, cond._ptr, mutex._ptr)
        let rv = ((result) != 0)
        return rv
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
    ///   static gint tasks_remaining = NUM_TASKS;  // (atomic)
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
    @inlinable func wakeup() {
        
        g_main_context_wakeup(main_context_ptr)
        
    }
    /// Determines whether this thread holds the (recursive)
    /// ownership of this `GMainContext`. This is useful to
    /// know before waiting on another thread that may be
    /// blocking to get ownership of `context`.
    @inlinable var isOwner: Bool {
        /// Determines whether this thread holds the (recursive)
        /// ownership of this `GMainContext`. This is useful to
        /// know before waiting on another thread that may be
        /// blocking to get ownership of `context`.
        get {
            let result = g_main_context_is_owner(main_context_ptr)
        let rv = ((result) != 0)
            return rv
        }
    }

    /// Gets the poll function set by `g_main_context_set_poll_func()`.
    @inlinable var pollFunc: GPollFunc! {
        /// Gets the poll function set by `g_main_context_set_poll_func()`.
        get {
            let result = g_main_context_get_poll_func(main_context_ptr)
        let rv = result
            return rv
        }
        /// Sets the function to use to handle polling of file descriptors. It
        /// will be used instead of the `poll()` system call
        /// (or GLib's replacement function, which is used where
        /// `poll()` isn't available).
        /// 
        /// This function could possibly be used to integrate the GLib event
        /// loop with an external event loop.
        nonmutating set {
            g_main_context_set_poll_func(main_context_ptr, newValue)
        }
    }


}



// MARK: - MainLoop Record

/// The `GMainLoop` struct is an opaque data type
/// representing the main event loop of a GLib or GTK+ application.
///
/// The `MainLoopProtocol` protocol exposes the methods and properties of an underlying `GMainLoop` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MainLoop`.
/// Alternatively, use `MainLoopRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol MainLoopProtocol {
        /// Untyped pointer to the underlying `GMainLoop` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GMainLoop` instance.
    var main_loop_ptr: UnsafeMutablePointer<GMainLoop>! { get }

    /// Required Initialiser for types conforming to `MainLoopProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `GMainLoop` struct is an opaque data type
/// representing the main event loop of a GLib or GTK+ application.
///
/// The `MainLoopRef` type acts as a lightweight Swift reference to an underlying `GMainLoop` instance.
/// It exposes methods that can operate on this data type through `MainLoopProtocol` conformance.
/// Use `MainLoopRef` only as an `unowned` reference to an existing `GMainLoop` instance.
///
public struct MainLoopRef: MainLoopProtocol {
        /// Untyped pointer to the underlying `GMainLoop` instance.
    /// For type-safe access, use the generated, typed pointer `main_loop_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MainLoopRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GMainLoop>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GMainLoop>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GMainLoop>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GMainLoop>?) {
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

    /// Reference intialiser for a related type that implements `MainLoopProtocol`
    @inlinable init<T: MainLoopProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainLoopProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainLoopProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainLoopProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainLoopProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainLoopProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GMainLoop` structure.
    @inlinable init<MainContextT: MainContextProtocol>( context: MainContextT?, isRunning: Bool) {
            let result = g_main_loop_new(context?.main_context_ptr, gboolean((isRunning) ? 1 : 0))
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `GMainLoop` struct is an opaque data type
/// representing the main event loop of a GLib or GTK+ application.
///
/// The `MainLoop` type acts as a reference-counted owner of an underlying `GMainLoop` instance.
/// It provides the methods that can operate on this data type through `MainLoopProtocol` conformance.
/// Use `MainLoop` as a strong reference or owner of a `GMainLoop` instance.
///
open class MainLoop: MainLoopProtocol {
        /// Untyped pointer to the underlying `GMainLoop` instance.
    /// For type-safe access, use the generated, typed pointer `main_loop_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MainLoop` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GMainLoop>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MainLoop` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GMainLoop>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MainLoop` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MainLoop` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MainLoop` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GMainLoop>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MainLoop` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GMainLoop>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GMainLoop`.
    /// i.e., ownership is transferred to the `MainLoop` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GMainLoop>) {
        ptr = UnsafeMutableRawPointer(op)
        g_main_loop_ref(ptr.assumingMemoryBound(to: GMainLoop.self))
    }

    /// Reference intialiser for a related type that implements `MainLoopProtocol`
    /// Will retain `GMainLoop`.
    /// - Parameter other: an instance of a related type that implements `MainLoopProtocol`
    @inlinable public init<T: MainLoopProtocol>(_ other: T) {
        ptr = other.ptr
        g_main_loop_ref(ptr.assumingMemoryBound(to: GMainLoop.self))
    }

    /// Releases the underlying `GMainLoop` instance using `g_main_loop_unref`.
    deinit {
        g_main_loop_unref(ptr.assumingMemoryBound(to: GMainLoop.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainLoopProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainLoopProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_main_loop_ref(ptr.assumingMemoryBound(to: GMainLoop.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainLoopProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainLoopProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_main_loop_ref(ptr.assumingMemoryBound(to: GMainLoop.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainLoopProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainLoopProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_main_loop_ref(ptr.assumingMemoryBound(to: GMainLoop.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainLoopProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainLoopProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_main_loop_ref(ptr.assumingMemoryBound(to: GMainLoop.self))
    }

    /// Creates a new `GMainLoop` structure.
    @inlinable public init<MainContextT: MainContextProtocol>( context: MainContextT?, isRunning: Bool) {
            let result = g_main_loop_new(context?.main_context_ptr, gboolean((isRunning) ? 1 : 0))
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no MainLoop properties

// MARK: no MainLoop signals

// MARK: MainLoop has no signals
// MARK: MainLoop Record: MainLoopProtocol extension (methods and fields)
public extension MainLoopProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMainLoop` instance.
    @inlinable var main_loop_ptr: UnsafeMutablePointer<GMainLoop>! { return ptr?.assumingMemoryBound(to: GMainLoop.self) }

    /// Returns the `GMainContext` of `loop`.
    @inlinable func getContext() -> MainContextRef! {
        let result = g_main_loop_get_context(main_loop_ptr)
        let rv = MainContextRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Stops a `GMainLoop` from running. Any calls to `g_main_loop_run()`
    /// for the loop will return.
    /// 
    /// Note that sources that have already been dispatched when
    /// `g_main_loop_quit()` is called will still be executed.
    @inlinable func quit() {
        
        g_main_loop_quit(main_loop_ptr)
        
    }

    /// Increases the reference count on a `GMainLoop` object by one.
    @discardableResult @inlinable func ref() -> MainLoopRef! {
        let result = g_main_loop_ref(main_loop_ptr)
        guard let rv = MainLoopRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Runs a main loop until `g_main_loop_quit()` is called on the loop.
    /// If this is called for the thread of the loop's `GMainContext`,
    /// it will process events from the loop, otherwise it will
    /// simply wait.
    @inlinable func run() {
        
        g_main_loop_run(main_loop_ptr)
        
    }

    /// Decreases the reference count on a `GMainLoop` object by one. If
    /// the result is zero, free the loop and free all associated memory.
    @inlinable func unref() {
        
        g_main_loop_unref(main_loop_ptr)
        
    }
    /// Returns the `GMainContext` of `loop`.
    @inlinable var context: MainContextRef! {
        /// Returns the `GMainContext` of `loop`.
        get {
            let result = g_main_loop_get_context(main_loop_ptr)
        let rv = MainContextRef(gconstpointer: gconstpointer(result))
            return rv
        }
    }

    /// Checks to see if the main loop is currently being run via `g_main_loop_run()`.
    @inlinable var isRunning: Bool {
        /// Checks to see if the main loop is currently being run via `g_main_loop_run()`.
        get {
            let result = g_main_loop_is_running(main_loop_ptr)
        let rv = ((result) != 0)
            return rv
        }
    }


}



// MARK: - MappedFile Record

/// The `GMappedFile` represents a file mapping created with
/// `g_mapped_file_new()`. It has only private members and should
/// not be accessed directly.
///
/// The `MappedFileProtocol` protocol exposes the methods and properties of an underlying `GMappedFile` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MappedFile`.
/// Alternatively, use `MappedFileRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol MappedFileProtocol {
        /// Untyped pointer to the underlying `GMappedFile` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GMappedFile` instance.
    var mapped_file_ptr: UnsafeMutablePointer<GMappedFile>! { get }

    /// Required Initialiser for types conforming to `MappedFileProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `GMappedFile` represents a file mapping created with
/// `g_mapped_file_new()`. It has only private members and should
/// not be accessed directly.
///
/// The `MappedFileRef` type acts as a lightweight Swift reference to an underlying `GMappedFile` instance.
/// It exposes methods that can operate on this data type through `MappedFileProtocol` conformance.
/// Use `MappedFileRef` only as an `unowned` reference to an existing `GMappedFile` instance.
///
public struct MappedFileRef: MappedFileProtocol {
        /// Untyped pointer to the underlying `GMappedFile` instance.
    /// For type-safe access, use the generated, typed pointer `mapped_file_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MappedFileRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GMappedFile>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GMappedFile>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GMappedFile>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GMappedFile>?) {
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

    /// Reference intialiser for a related type that implements `MappedFileProtocol`
    @inlinable init<T: MappedFileProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MappedFileProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MappedFileProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MappedFileProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MappedFileProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MappedFileProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Maps a file into memory. On UNIX, this is using the `mmap()` function.
    /// 
    /// If `writable` is `true`, the mapped buffer may be modified, otherwise
    /// it is an error to modify the mapped buffer. Modifications to the buffer
    /// are not visible to other processes mapping the same file, and are not
    /// written back to the file.
    /// 
    /// Note that modifications of the underlying file might affect the contents
    /// of the `GMappedFile`. Therefore, mapping should only be used if the file
    /// will not be modified, or if all modifications of the file are done
    /// atomically (e.g. using `g_file_set_contents()`).
    /// 
    /// If `filename` is the name of an empty, regular file, the function
    /// will successfully return an empty `GMappedFile`. In other cases of
    /// size 0 (e.g. device files such as /dev/null), `error` will be set
    /// to the `GFileError` value `G_FILE_ERROR_INVAL`.
    @inlinable init( filename: UnsafePointer<gchar>!, writable: Bool) throws {
            var error: UnsafeMutablePointer<GError>?
        let result = g_mapped_file_new(filename, gboolean((writable) ? 1 : 0), &error)
        if let error = error { throw GLibError(error) }
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Maps a file into memory. On UNIX, this is using the `mmap()` function.
    /// 
    /// If `writable` is `true`, the mapped buffer may be modified, otherwise
    /// it is an error to modify the mapped buffer. Modifications to the buffer
    /// are not visible to other processes mapping the same file, and are not
    /// written back to the file.
    /// 
    /// Note that modifications of the underlying file might affect the contents
    /// of the `GMappedFile`. Therefore, mapping should only be used if the file
    /// will not be modified, or if all modifications of the file are done
    /// atomically (e.g. using `g_file_set_contents()`).
    @inlinable init(fd: Int, writable: Bool) throws {
            var error: UnsafeMutablePointer<GError>?
        let result = g_mapped_file_new_from_fd(gint(fd), gboolean((writable) ? 1 : 0), &error)
        if let error = error { throw GLibError(error) }
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }
    /// Maps a file into memory. On UNIX, this is using the `mmap()` function.
    /// 
    /// If `writable` is `true`, the mapped buffer may be modified, otherwise
    /// it is an error to modify the mapped buffer. Modifications to the buffer
    /// are not visible to other processes mapping the same file, and are not
    /// written back to the file.
    /// 
    /// Note that modifications of the underlying file might affect the contents
    /// of the `GMappedFile`. Therefore, mapping should only be used if the file
    /// will not be modified, or if all modifications of the file are done
    /// atomically (e.g. using `g_file_set_contents()`).
    @inlinable static func newFrom(fd: Int, writable: Bool) throws -> MappedFileRef! {
            var error: UnsafeMutablePointer<GError>?
        let result = g_mapped_file_new_from_fd(gint(fd), gboolean((writable) ? 1 : 0), &error)
        if let error = error { throw GLibError(error) }
        let maybeRV = MappedFileRef(gconstpointer: gconstpointer(result))
        
        guard let rv = maybeRV else { return nil }
        return rv
    }
}

/// The `GMappedFile` represents a file mapping created with
/// `g_mapped_file_new()`. It has only private members and should
/// not be accessed directly.
///
/// The `MappedFile` type acts as a reference-counted owner of an underlying `GMappedFile` instance.
/// It provides the methods that can operate on this data type through `MappedFileProtocol` conformance.
/// Use `MappedFile` as a strong reference or owner of a `GMappedFile` instance.
///
open class MappedFile: MappedFileProtocol {
        /// Untyped pointer to the underlying `GMappedFile` instance.
    /// For type-safe access, use the generated, typed pointer `mapped_file_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MappedFile` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GMappedFile>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MappedFile` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GMappedFile>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MappedFile` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MappedFile` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MappedFile` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GMappedFile>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MappedFile` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GMappedFile>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GMappedFile`.
    /// i.e., ownership is transferred to the `MappedFile` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GMappedFile>) {
        ptr = UnsafeMutableRawPointer(op)
        g_mapped_file_ref(ptr.assumingMemoryBound(to: GMappedFile.self))
    }

    /// Reference intialiser for a related type that implements `MappedFileProtocol`
    /// Will retain `GMappedFile`.
    /// - Parameter other: an instance of a related type that implements `MappedFileProtocol`
    @inlinable public init<T: MappedFileProtocol>(_ other: T) {
        ptr = other.ptr
        g_mapped_file_ref(ptr.assumingMemoryBound(to: GMappedFile.self))
    }

    /// Releases the underlying `GMappedFile` instance using `g_mapped_file_unref`.
    deinit {
        g_mapped_file_unref(ptr.assumingMemoryBound(to: GMappedFile.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MappedFileProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MappedFileProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_mapped_file_ref(ptr.assumingMemoryBound(to: GMappedFile.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MappedFileProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MappedFileProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_mapped_file_ref(ptr.assumingMemoryBound(to: GMappedFile.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MappedFileProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MappedFileProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_mapped_file_ref(ptr.assumingMemoryBound(to: GMappedFile.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MappedFileProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MappedFileProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_mapped_file_ref(ptr.assumingMemoryBound(to: GMappedFile.self))
    }

    /// Maps a file into memory. On UNIX, this is using the `mmap()` function.
    /// 
    /// If `writable` is `true`, the mapped buffer may be modified, otherwise
    /// it is an error to modify the mapped buffer. Modifications to the buffer
    /// are not visible to other processes mapping the same file, and are not
    /// written back to the file.
    /// 
    /// Note that modifications of the underlying file might affect the contents
    /// of the `GMappedFile`. Therefore, mapping should only be used if the file
    /// will not be modified, or if all modifications of the file are done
    /// atomically (e.g. using `g_file_set_contents()`).
    /// 
    /// If `filename` is the name of an empty, regular file, the function
    /// will successfully return an empty `GMappedFile`. In other cases of
    /// size 0 (e.g. device files such as /dev/null), `error` will be set
    /// to the `GFileError` value `G_FILE_ERROR_INVAL`.
    @inlinable public init( filename: UnsafePointer<gchar>!, writable: Bool) throws {
            var error: UnsafeMutablePointer<GError>?
        let result = g_mapped_file_new(filename, gboolean((writable) ? 1 : 0), &error)
        if let error = error { throw GLibError(error) }
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Maps a file into memory. On UNIX, this is using the `mmap()` function.
    /// 
    /// If `writable` is `true`, the mapped buffer may be modified, otherwise
    /// it is an error to modify the mapped buffer. Modifications to the buffer
    /// are not visible to other processes mapping the same file, and are not
    /// written back to the file.
    /// 
    /// Note that modifications of the underlying file might affect the contents
    /// of the `GMappedFile`. Therefore, mapping should only be used if the file
    /// will not be modified, or if all modifications of the file are done
    /// atomically (e.g. using `g_file_set_contents()`).
    @inlinable public init(fd: Int, writable: Bool) throws {
            var error: UnsafeMutablePointer<GError>?
        let result = g_mapped_file_new_from_fd(gint(fd), gboolean((writable) ? 1 : 0), &error)
        if let error = error { throw GLibError(error) }
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Maps a file into memory. On UNIX, this is using the `mmap()` function.
    /// 
    /// If `writable` is `true`, the mapped buffer may be modified, otherwise
    /// it is an error to modify the mapped buffer. Modifications to the buffer
    /// are not visible to other processes mapping the same file, and are not
    /// written back to the file.
    /// 
    /// Note that modifications of the underlying file might affect the contents
    /// of the `GMappedFile`. Therefore, mapping should only be used if the file
    /// will not be modified, or if all modifications of the file are done
    /// atomically (e.g. using `g_file_set_contents()`).
    @inlinable public static func newFrom(fd: Int, writable: Bool) throws -> MappedFile! {
            var error: UnsafeMutablePointer<GError>?
        let result = g_mapped_file_new_from_fd(gint(fd), gboolean((writable) ? 1 : 0), &error)
        if let error = error { throw GLibError(error) }
        let maybeRV = MappedFile(gconstpointer: gconstpointer(result))
        
        guard let rv = maybeRV else { return nil }
        return rv
    }

}

// MARK: no MappedFile properties

// MARK: no MappedFile signals

// MARK: MappedFile has no signals
// MARK: MappedFile Record: MappedFileProtocol extension (methods and fields)
public extension MappedFileProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMappedFile` instance.
    @inlinable var mapped_file_ptr: UnsafeMutablePointer<GMappedFile>! { return ptr?.assumingMemoryBound(to: GMappedFile.self) }

    /// This call existed before `GMappedFile` had refcounting and is currently
    /// exactly the same as `g_mapped_file_unref()`.
    ///
    /// **free is deprecated:**
    /// Use g_mapped_file_unref() instead.
    @available(*, deprecated) @inlinable func free() {
        
        g_mapped_file_free(mapped_file_ptr)
        
    }

    /// Creates a new `GBytes` which references the data mapped from `file`.
    /// The mapped contents of the file must not be modified after creating this
    /// bytes object, because a `GBytes` should be immutable.
    @inlinable func getBytes() -> BytesRef! {
        let result = g_mapped_file_get_bytes(mapped_file_ptr)
        let rv = BytesRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Returns the contents of a `GMappedFile`.
    /// 
    /// Note that the contents may not be zero-terminated,
    /// even if the `GMappedFile` is backed by a text file.
    /// 
    /// If the file is empty then `nil` is returned.
    @inlinable func getContents() -> String! {
        let result = g_mapped_file_get_contents(mapped_file_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Returns the length of the contents of a `GMappedFile`.
    @inlinable func getLength() -> Int {
        let result = g_mapped_file_get_length(mapped_file_ptr)
        let rv = Int(result)
        return rv
    }

    /// Increments the reference count of `file` by one.  It is safe to call
    /// this function from any thread.
    @discardableResult @inlinable func ref() -> MappedFileRef! {
        let result = g_mapped_file_ref(mapped_file_ptr)
        guard let rv = MappedFileRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Decrements the reference count of `file` by one.  If the reference count
    /// drops to 0, unmaps the buffer of `file` and frees it.
    /// 
    /// It is safe to call this function from any thread.
    /// 
    /// Since 2.22
    @inlinable func unref() {
        
        g_mapped_file_unref(mapped_file_ptr)
        
    }
    /// Creates a new `GBytes` which references the data mapped from `file`.
    /// The mapped contents of the file must not be modified after creating this
    /// bytes object, because a `GBytes` should be immutable.
    @inlinable var bytes: BytesRef! {
        /// Creates a new `GBytes` which references the data mapped from `file`.
        /// The mapped contents of the file must not be modified after creating this
        /// bytes object, because a `GBytes` should be immutable.
        get {
            let result = g_mapped_file_get_bytes(mapped_file_ptr)
        let rv = BytesRef(gconstpointer: gconstpointer(result))
            return rv
        }
    }

    /// Returns the contents of a `GMappedFile`.
    /// 
    /// Note that the contents may not be zero-terminated,
    /// even if the `GMappedFile` is backed by a text file.
    /// 
    /// If the file is empty then `nil` is returned.
    @inlinable var contents: String! {
        /// Returns the contents of a `GMappedFile`.
        /// 
        /// Note that the contents may not be zero-terminated,
        /// even if the `GMappedFile` is backed by a text file.
        /// 
        /// If the file is empty then `nil` is returned.
        get {
            let result = g_mapped_file_get_contents(mapped_file_ptr)
        let rv = result.map({ String(cString: $0) })
            return rv
        }
    }

    /// Returns the length of the contents of a `GMappedFile`.
    @inlinable var length: Int {
        /// Returns the length of the contents of a `GMappedFile`.
        get {
            let result = g_mapped_file_get_length(mapped_file_ptr)
        let rv = Int(result)
            return rv
        }
    }


}



// MARK: - MarkupParseContext Record

/// A parse context is used to parse a stream of bytes that
/// you expect to contain marked-up text.
/// 
/// See `g_markup_parse_context_new()`, `GMarkupParser`, and so
/// on for more details.
///
/// The `MarkupParseContextProtocol` protocol exposes the methods and properties of an underlying `GMarkupParseContext` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MarkupParseContext`.
/// Alternatively, use `MarkupParseContextRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol MarkupParseContextProtocol {
        /// Untyped pointer to the underlying `GMarkupParseContext` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GMarkupParseContext` instance.
    var markup_parse_context_ptr: UnsafeMutablePointer<GMarkupParseContext>! { get }

    /// Required Initialiser for types conforming to `MarkupParseContextProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A parse context is used to parse a stream of bytes that
/// you expect to contain marked-up text.
/// 
/// See `g_markup_parse_context_new()`, `GMarkupParser`, and so
/// on for more details.
///
/// The `MarkupParseContextRef` type acts as a lightweight Swift reference to an underlying `GMarkupParseContext` instance.
/// It exposes methods that can operate on this data type through `MarkupParseContextProtocol` conformance.
/// Use `MarkupParseContextRef` only as an `unowned` reference to an existing `GMarkupParseContext` instance.
///
public struct MarkupParseContextRef: MarkupParseContextProtocol {
        /// Untyped pointer to the underlying `GMarkupParseContext` instance.
    /// For type-safe access, use the generated, typed pointer `markup_parse_context_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MarkupParseContextRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GMarkupParseContext>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GMarkupParseContext>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GMarkupParseContext>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GMarkupParseContext>?) {
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

    /// Reference intialiser for a related type that implements `MarkupParseContextProtocol`
    @inlinable init<T: MarkupParseContextProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParseContextProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParseContextProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParseContextProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParseContextProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParseContextProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new parse context. A parse context is used to parse
    /// marked-up documents. You can feed any number of documents into
    /// a context, as long as no errors occur; once an error occurs,
    /// the parse context can't continue to parse text (you have to
    /// free it and create a new parse context).
    @inlinable init<MarkupParserT: MarkupParserProtocol>( parser: MarkupParserT, flags: MarkupParseFlags, userData: gpointer? = nil, userDataDnotify: GDestroyNotify?) {
            let result = g_markup_parse_context_new(parser._ptr, flags.value, userData, userDataDnotify)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }
}

/// A parse context is used to parse a stream of bytes that
/// you expect to contain marked-up text.
/// 
/// See `g_markup_parse_context_new()`, `GMarkupParser`, and so
/// on for more details.
///
/// The `MarkupParseContext` type acts as a reference-counted owner of an underlying `GMarkupParseContext` instance.
/// It provides the methods that can operate on this data type through `MarkupParseContextProtocol` conformance.
/// Use `MarkupParseContext` as a strong reference or owner of a `GMarkupParseContext` instance.
///
open class MarkupParseContext: MarkupParseContextProtocol {
        /// Untyped pointer to the underlying `GMarkupParseContext` instance.
    /// For type-safe access, use the generated, typed pointer `markup_parse_context_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MarkupParseContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GMarkupParseContext>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MarkupParseContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GMarkupParseContext>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MarkupParseContext` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MarkupParseContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MarkupParseContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GMarkupParseContext>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MarkupParseContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GMarkupParseContext>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GMarkupParseContext`.
    /// i.e., ownership is transferred to the `MarkupParseContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GMarkupParseContext>) {
        ptr = UnsafeMutableRawPointer(op)
        g_markup_parse_context_ref(ptr.assumingMemoryBound(to: GMarkupParseContext.self))
    }

    /// Reference intialiser for a related type that implements `MarkupParseContextProtocol`
    /// Will retain `GMarkupParseContext`.
    /// - Parameter other: an instance of a related type that implements `MarkupParseContextProtocol`
    @inlinable public init<T: MarkupParseContextProtocol>(_ other: T) {
        ptr = other.ptr
        g_markup_parse_context_ref(ptr.assumingMemoryBound(to: GMarkupParseContext.self))
    }

    /// Releases the underlying `GMarkupParseContext` instance using `g_markup_parse_context_unref`.
    deinit {
        g_markup_parse_context_unref(ptr.assumingMemoryBound(to: GMarkupParseContext.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParseContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParseContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_markup_parse_context_ref(ptr.assumingMemoryBound(to: GMarkupParseContext.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParseContextProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParseContextProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_markup_parse_context_ref(ptr.assumingMemoryBound(to: GMarkupParseContext.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParseContextProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParseContextProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_markup_parse_context_ref(ptr.assumingMemoryBound(to: GMarkupParseContext.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParseContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParseContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_markup_parse_context_ref(ptr.assumingMemoryBound(to: GMarkupParseContext.self))
    }

    /// Creates a new parse context. A parse context is used to parse
    /// marked-up documents. You can feed any number of documents into
    /// a context, as long as no errors occur; once an error occurs,
    /// the parse context can't continue to parse text (you have to
    /// free it and create a new parse context).
    @inlinable public init<MarkupParserT: MarkupParserProtocol>( parser: MarkupParserT, flags: MarkupParseFlags, userData: gpointer? = nil, userDataDnotify: GDestroyNotify?) {
            let result = g_markup_parse_context_new(parser._ptr, flags.value, userData, userDataDnotify)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no MarkupParseContext properties

// MARK: no MarkupParseContext signals

// MARK: MarkupParseContext has no signals
// MARK: MarkupParseContext Record: MarkupParseContextProtocol extension (methods and fields)
public extension MarkupParseContextProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMarkupParseContext` instance.
    @inlinable var markup_parse_context_ptr: UnsafeMutablePointer<GMarkupParseContext>! { return ptr?.assumingMemoryBound(to: GMarkupParseContext.self) }

    /// Signals to the `GMarkupParseContext` that all data has been
    /// fed into the parse context with `g_markup_parse_context_parse()`.
    /// 
    /// This function reports an error if the document isn't complete,
    /// for example if elements are still open.
    @inlinable func endParse() throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let result = g_markup_parse_context_end_parse(markup_parse_context_ptr, &error)
        if let error = error { throw GLibError(error) }
        let rv = ((result) != 0)
        return rv
    }

    /// Frees a `GMarkupParseContext`.
    /// 
    /// This function can't be called from inside one of the
    /// `GMarkupParser` functions or while a subparser is pushed.
    @inlinable func free() {
        
        g_markup_parse_context_free(markup_parse_context_ptr)
        
    }

    /// Retrieves the name of the currently open element.
    /// 
    /// If called from the start_element or end_element handlers this will
    /// give the element_name as passed to those functions. For the parent
    /// elements, see `g_markup_parse_context_get_element_stack()`.
    @inlinable func getElement() -> String! {
        let result = g_markup_parse_context_get_element(markup_parse_context_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Retrieves the element stack from the internal state of the parser.
    /// 
    /// The returned `GSList` is a list of strings where the first item is
    /// the currently open tag (as would be returned by
    /// `g_markup_parse_context_get_element()`) and the next item is its
    /// immediate parent.
    /// 
    /// This function is intended to be used in the start_element and
    /// end_element handlers where `g_markup_parse_context_get_element()`
    /// would merely return the name of the element that is being
    /// processed.
    @inlinable func getElementStack() -> SListRef! {
        let result = g_markup_parse_context_get_element_stack(markup_parse_context_ptr)
        let rv = SListRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Retrieves the current line number and the number of the character on
    /// that line. Intended for use in error messages; there are no strict
    /// semantics for what constitutes the "current" line number other than
    /// "the best number we could come up with for error messages."
    @inlinable func getPosition(lineNumber: UnsafeMutablePointer<gint>! = nil, charNumber: UnsafeMutablePointer<gint>! = nil) {
        
        g_markup_parse_context_get_position(markup_parse_context_ptr, lineNumber, charNumber)
        
    }

    /// Returns the user_data associated with `context`.
    /// 
    /// This will either be the user_data that was provided to
    /// `g_markup_parse_context_new()` or to the most recent call
    /// of `g_markup_parse_context_push()`.
    @inlinable func getUserData() -> gpointer? {
        let result = g_markup_parse_context_get_user_data(markup_parse_context_ptr)
        let rv = result
        return rv
    }

    /// Feed some data to the `GMarkupParseContext`.
    /// 
    /// The data need not be valid UTF-8; an error will be signaled if
    /// it's invalid. The data need not be an entire document; you can
    /// feed a document into the parser incrementally, via multiple calls
    /// to this function. Typically, as you receive data from a network
    /// connection or file, you feed each received chunk of data into this
    /// function, aborting the process if an error occurs. Once an error
    /// is reported, no further data may be fed to the `GMarkupParseContext`;
    /// all errors are fatal.
    @inlinable func parse(text: UnsafePointer<gchar>!, textLen: gssize) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let result = g_markup_parse_context_parse(markup_parse_context_ptr, text, textLen, &error)
        if let error = error { throw GLibError(error) }
        let rv = ((result) != 0)
        return rv
    }

    /// Completes the process of a temporary sub-parser redirection.
    /// 
    /// This function exists to collect the user_data allocated by a
    /// matching call to `g_markup_parse_context_push()`. It must be called
    /// in the end_element handler corresponding to the start_element
    /// handler during which `g_markup_parse_context_push()` was called.
    /// You must not call this function from the error callback -- the
    /// `user_data` is provided directly to the callback in that case.
    /// 
    /// This function is not intended to be directly called by users
    /// interested in invoking subparsers. Instead, it is intended to
    /// be used by the subparsers themselves to implement a higher-level
    /// interface.
    @inlinable func pop() -> gpointer? {
        let result = g_markup_parse_context_pop(markup_parse_context_ptr)
        let rv = result
        return rv
    }

    /// Temporarily redirects markup data to a sub-parser.
    /// 
    /// This function may only be called from the start_element handler of
    /// a `GMarkupParser`. It must be matched with a corresponding call to
    /// `g_markup_parse_context_pop()` in the matching end_element handler
    /// (except in the case that the parser aborts due to an error).
    /// 
    /// All tags, text and other data between the matching tags is
    /// redirected to the subparser given by `parser`. `user_data` is used
    /// as the user_data for that parser. `user_data` is also passed to the
    /// error callback in the event that an error occurs. This includes
    /// errors that occur in subparsers of the subparser.
    /// 
    /// The end tag matching the start tag for which this call was made is
    /// handled by the previous parser (which is given its own user_data)
    /// which is why `g_markup_parse_context_pop()` is provided to allow "one
    /// last access" to the `user_data` provided to this function. In the
    /// case of error, the `user_data` provided here is passed directly to
    /// the error callback of the subparser and `g_markup_parse_context_pop()`
    /// should not be called. In either case, if `user_data` was allocated
    /// then it ought to be freed from both of these locations.
    /// 
    /// This function is not intended to be directly called by users
    /// interested in invoking subparsers. Instead, it is intended to be
    /// used by the subparsers themselves to implement a higher-level
    /// interface.
    /// 
    /// As an example, see the following implementation of a simple
    /// parser that counts the number of tags encountered.
    /// 
    /// (C Language Example):
    /// ```C
    /// typedef struct
    /// {
    ///   gint tag_count;
    /// } CounterData;
    /// 
    /// static void
    /// counter_start_element (GMarkupParseContext  *context,
    ///                        const gchar          *element_name,
    ///                        const gchar         **attribute_names,
    ///                        const gchar         **attribute_values,
    ///                        gpointer              user_data,
    ///                        GError              **error)
    /// {
    ///   CounterData *data = user_data;
    /// 
    ///   data->tag_count++;
    /// }
    /// 
    /// static void
    /// counter_error (GMarkupParseContext *context,
    ///                GError              *error,
    ///                gpointer             user_data)
    /// {
    ///   CounterData *data = user_data;
    /// 
    ///   g_slice_free (CounterData, data);
    /// }
    /// 
    /// static GMarkupParser counter_subparser =
    /// {
    ///   counter_start_element,
    ///   NULL,
    ///   NULL,
    ///   NULL,
    ///   counter_error
    /// };
    /// ```
    /// 
    /// In order to allow this parser to be easily used as a subparser, the
    /// following interface is provided:
    /// 
    /// (C Language Example):
    /// ```C
    /// void
    /// start_counting (GMarkupParseContext *context)
    /// {
    ///   CounterData *data = g_slice_new (CounterData);
    /// 
    ///   data->tag_count = 0;
    ///   g_markup_parse_context_push (context, &counter_subparser, data);
    /// }
    /// 
    /// gint
    /// end_counting (GMarkupParseContext *context)
    /// {
    ///   CounterData *data = g_markup_parse_context_pop (context);
    ///   int result;
    /// 
    ///   result = data->tag_count;
    ///   g_slice_free (CounterData, data);
    /// 
    ///   return result;
    /// }
    /// ```
    /// 
    /// The subparser would then be used as follows:
    /// 
    /// (C Language Example):
    /// ```C
    /// static void start_element (context, element_name, ...)
    /// {
    ///   if (strcmp (element_name, "count-these") == 0)
    ///     start_counting (context);
    /// 
    ///   // else, handle other tags...
    /// }
    /// 
    /// static void end_element (context, element_name, ...)
    /// {
    ///   if (strcmp (element_name, "count-these") == 0)
    ///     g_print ("Counted %d tags\n", end_counting (context));
    /// 
    ///   // else, handle other tags...
    /// }
    /// ```
    /// 
    @inlinable func push<MarkupParserT: MarkupParserProtocol>(parser: MarkupParserT, userData: gpointer? = nil) {
        
        g_markup_parse_context_push(markup_parse_context_ptr, parser._ptr, userData)
        
    }

    /// Increases the reference count of `context`.
    @discardableResult @inlinable func ref() -> MarkupParseContextRef! {
        let result = g_markup_parse_context_ref(markup_parse_context_ptr)
        guard let rv = MarkupParseContextRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Decreases the reference count of `context`.  When its reference count
    /// drops to 0, it is freed.
    @inlinable func unref() {
        
        g_markup_parse_context_unref(markup_parse_context_ptr)
        
    }
    /// Retrieves the name of the currently open element.
    /// 
    /// If called from the start_element or end_element handlers this will
    /// give the element_name as passed to those functions. For the parent
    /// elements, see `g_markup_parse_context_get_element_stack()`.
    @inlinable var element: String! {
        /// Retrieves the name of the currently open element.
        /// 
        /// If called from the start_element or end_element handlers this will
        /// give the element_name as passed to those functions. For the parent
        /// elements, see `g_markup_parse_context_get_element_stack()`.
        get {
            let result = g_markup_parse_context_get_element(markup_parse_context_ptr)
        let rv = result.map({ String(cString: $0) })
            return rv
        }
    }

    /// Retrieves the element stack from the internal state of the parser.
    /// 
    /// The returned `GSList` is a list of strings where the first item is
    /// the currently open tag (as would be returned by
    /// `g_markup_parse_context_get_element()`) and the next item is its
    /// immediate parent.
    /// 
    /// This function is intended to be used in the start_element and
    /// end_element handlers where `g_markup_parse_context_get_element()`
    /// would merely return the name of the element that is being
    /// processed.
    @inlinable var elementStack: SListRef! {
        /// Retrieves the element stack from the internal state of the parser.
        /// 
        /// The returned `GSList` is a list of strings where the first item is
        /// the currently open tag (as would be returned by
        /// `g_markup_parse_context_get_element()`) and the next item is its
        /// immediate parent.
        /// 
        /// This function is intended to be used in the start_element and
        /// end_element handlers where `g_markup_parse_context_get_element()`
        /// would merely return the name of the element that is being
        /// processed.
        get {
            let result = g_markup_parse_context_get_element_stack(markup_parse_context_ptr)
        let rv = SListRef(gconstpointer: gconstpointer(result))
            return rv
        }
    }

    /// Returns the user_data associated with `context`.
    /// 
    /// This will either be the user_data that was provided to
    /// `g_markup_parse_context_new()` or to the most recent call
    /// of `g_markup_parse_context_push()`.
    @inlinable var userData: gpointer? {
        /// Returns the user_data associated with `context`.
        /// 
        /// This will either be the user_data that was provided to
        /// `g_markup_parse_context_new()` or to the most recent call
        /// of `g_markup_parse_context_push()`.
        get {
            let result = g_markup_parse_context_get_user_data(markup_parse_context_ptr)
        let rv = result
            return rv
        }
    }


}



// MARK: - MarkupParser Record

/// Any of the fields in `GMarkupParser` can be `nil`, in which case they
/// will be ignored. Except for the `error` function, any of these callbacks
/// can set an error; in particular the `G_MARKUP_ERROR_UNKNOWN_ELEMENT`,
/// `G_MARKUP_ERROR_UNKNOWN_ATTRIBUTE`, and `G_MARKUP_ERROR_INVALID_CONTENT`
/// errors are intended to be set from these callbacks. If you set an error
/// from a callback, `g_markup_parse_context_parse()` will report that error
/// back to its caller.
///
/// The `MarkupParserProtocol` protocol exposes the methods and properties of an underlying `GMarkupParser` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MarkupParser`.
/// Alternatively, use `MarkupParserRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol MarkupParserProtocol {
        /// Untyped pointer to the underlying `GMarkupParser` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GMarkupParser` instance.
    var _ptr: UnsafeMutablePointer<GMarkupParser>! { get }

    /// Required Initialiser for types conforming to `MarkupParserProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Any of the fields in `GMarkupParser` can be `nil`, in which case they
/// will be ignored. Except for the `error` function, any of these callbacks
/// can set an error; in particular the `G_MARKUP_ERROR_UNKNOWN_ELEMENT`,
/// `G_MARKUP_ERROR_UNKNOWN_ATTRIBUTE`, and `G_MARKUP_ERROR_INVALID_CONTENT`
/// errors are intended to be set from these callbacks. If you set an error
/// from a callback, `g_markup_parse_context_parse()` will report that error
/// back to its caller.
///
/// The `MarkupParserRef` type acts as a lightweight Swift reference to an underlying `GMarkupParser` instance.
/// It exposes methods that can operate on this data type through `MarkupParserProtocol` conformance.
/// Use `MarkupParserRef` only as an `unowned` reference to an existing `GMarkupParser` instance.
///
public struct MarkupParserRef: MarkupParserProtocol {
        /// Untyped pointer to the underlying `GMarkupParser` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MarkupParserRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GMarkupParser>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GMarkupParser>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GMarkupParser>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GMarkupParser>?) {
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

    /// Reference intialiser for a related type that implements `MarkupParserProtocol`
    @inlinable init<T: MarkupParserProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParserProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParserProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParserProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParserProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParserProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// Any of the fields in `GMarkupParser` can be `nil`, in which case they
/// will be ignored. Except for the `error` function, any of these callbacks
/// can set an error; in particular the `G_MARKUP_ERROR_UNKNOWN_ELEMENT`,
/// `G_MARKUP_ERROR_UNKNOWN_ATTRIBUTE`, and `G_MARKUP_ERROR_INVALID_CONTENT`
/// errors are intended to be set from these callbacks. If you set an error
/// from a callback, `g_markup_parse_context_parse()` will report that error
/// back to its caller.
///
/// The `MarkupParser` type acts as an owner of an underlying `GMarkupParser` instance.
/// It provides the methods that can operate on this data type through `MarkupParserProtocol` conformance.
/// Use `MarkupParser` as a strong reference or owner of a `GMarkupParser` instance.
///
open class MarkupParser: MarkupParserProtocol {
        /// Untyped pointer to the underlying `GMarkupParser` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MarkupParser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GMarkupParser>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MarkupParser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GMarkupParser>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MarkupParser` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MarkupParser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MarkupParser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GMarkupParser>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MarkupParser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GMarkupParser>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GMarkupParser` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `MarkupParser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GMarkupParser>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GMarkupParser, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `MarkupParserProtocol`
    /// `GMarkupParser` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `MarkupParserProtocol`
    @inlinable public init<T: MarkupParserProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GMarkupParser, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GMarkupParser`.
    deinit {
        // no reference counting for GMarkupParser, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParserProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParserProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GMarkupParser, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParserProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParserProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GMarkupParser, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParserProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParserProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GMarkupParser, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParserProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParserProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GMarkupParser, cannot ref(_ptr)
    }



}

// MARK: no MarkupParser properties

// MARK: no MarkupParser signals

// MARK: MarkupParser has no signals
// MARK: MarkupParser Record: MarkupParserProtocol extension (methods and fields)
public extension MarkupParserProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMarkupParser` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GMarkupParser>! { return ptr?.assumingMemoryBound(to: GMarkupParser.self) }


    // var startElement is unavailable because start_element is void

    // var endElement is unavailable because end_element is void

    // var text is unavailable because text is void

    // var passthrough is unavailable because passthrough is void

    // var error is unavailable because error is void

}



// MARK: - MatchInfo Record

/// A GMatchInfo is an opaque struct used to return information about
/// matches.
///
/// The `MatchInfoProtocol` protocol exposes the methods and properties of an underlying `GMatchInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MatchInfo`.
/// Alternatively, use `MatchInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol MatchInfoProtocol {
        /// Untyped pointer to the underlying `GMatchInfo` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GMatchInfo` instance.
    var match_info_ptr: UnsafeMutablePointer<GMatchInfo>! { get }

    /// Required Initialiser for types conforming to `MatchInfoProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A GMatchInfo is an opaque struct used to return information about
/// matches.
///
/// The `MatchInfoRef` type acts as a lightweight Swift reference to an underlying `GMatchInfo` instance.
/// It exposes methods that can operate on this data type through `MatchInfoProtocol` conformance.
/// Use `MatchInfoRef` only as an `unowned` reference to an existing `GMatchInfo` instance.
///
public struct MatchInfoRef: MatchInfoProtocol {
        /// Untyped pointer to the underlying `GMatchInfo` instance.
    /// For type-safe access, use the generated, typed pointer `match_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MatchInfoRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GMatchInfo>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GMatchInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GMatchInfo>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GMatchInfo>?) {
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

    /// Reference intialiser for a related type that implements `MatchInfoProtocol`
    @inlinable init<T: MatchInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatchInfoProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatchInfoProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatchInfoProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatchInfoProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatchInfoProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A GMatchInfo is an opaque struct used to return information about
/// matches.
///
/// The `MatchInfo` type acts as a reference-counted owner of an underlying `GMatchInfo` instance.
/// It provides the methods that can operate on this data type through `MatchInfoProtocol` conformance.
/// Use `MatchInfo` as a strong reference or owner of a `GMatchInfo` instance.
///
open class MatchInfo: MatchInfoProtocol {
        /// Untyped pointer to the underlying `GMatchInfo` instance.
    /// For type-safe access, use the generated, typed pointer `match_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MatchInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GMatchInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MatchInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GMatchInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MatchInfo` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MatchInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MatchInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GMatchInfo>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MatchInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GMatchInfo>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GMatchInfo`.
    /// i.e., ownership is transferred to the `MatchInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GMatchInfo>) {
        ptr = UnsafeMutableRawPointer(op)
        g_match_info_ref(ptr.assumingMemoryBound(to: GMatchInfo.self))
    }

    /// Reference intialiser for a related type that implements `MatchInfoProtocol`
    /// Will retain `GMatchInfo`.
    /// - Parameter other: an instance of a related type that implements `MatchInfoProtocol`
    @inlinable public init<T: MatchInfoProtocol>(_ other: T) {
        ptr = other.ptr
        g_match_info_ref(ptr.assumingMemoryBound(to: GMatchInfo.self))
    }

    /// Releases the underlying `GMatchInfo` instance using `g_match_info_unref`.
    deinit {
        g_match_info_unref(ptr.assumingMemoryBound(to: GMatchInfo.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatchInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatchInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_match_info_ref(ptr.assumingMemoryBound(to: GMatchInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatchInfoProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatchInfoProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_match_info_ref(ptr.assumingMemoryBound(to: GMatchInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatchInfoProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatchInfoProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_match_info_ref(ptr.assumingMemoryBound(to: GMatchInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatchInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatchInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_match_info_ref(ptr.assumingMemoryBound(to: GMatchInfo.self))
    }



}

// MARK: no MatchInfo properties

// MARK: no MatchInfo signals

// MARK: MatchInfo has no signals
// MARK: MatchInfo Record: MatchInfoProtocol extension (methods and fields)
public extension MatchInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMatchInfo` instance.
    @inlinable var match_info_ptr: UnsafeMutablePointer<GMatchInfo>! { return ptr?.assumingMemoryBound(to: GMatchInfo.self) }

    /// Returns a new string containing the text in `string_to_expand` with
    /// references and escape sequences expanded. References refer to the last
    /// match done with `string` against `regex` and have the same syntax used by
    /// `g_regex_replace()`.
    /// 
    /// The `string_to_expand` must be UTF-8 encoded even if `G_REGEX_RAW` was
    /// passed to `g_regex_new()`.
    /// 
    /// The backreferences are extracted from the string passed to the match
    /// function, so you cannot call this function after freeing the string.
    /// 
    /// `match_info` may be `nil` in which case `string_to_expand` must not
    /// contain references. For instance "foo\n" does not refer to an actual
    /// pattern and '\n' merely will be replaced with \n character,
    /// while to expand "\0" (whole match) one needs the result of a match.
    /// Use `g_regex_check_replacement()` to find out whether `string_to_expand`
    /// contains references.
    @inlinable func expandReferences(stringToExpand: UnsafePointer<gchar>!) throws -> String! {
        var error: UnsafeMutablePointer<GError>?
        let result = g_match_info_expand_references(match_info_ptr, stringToExpand, &error)
        if let error = error { throw GLibError(error) }
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Retrieves the text matching the `match_num`'th capturing
    /// parentheses. 0 is the full text of the match, 1 is the first paren
    /// set, 2 the second, and so on.
    /// 
    /// If `match_num` is a valid sub pattern but it didn't match anything
    /// (e.g. sub pattern 1, matching "b" against "(a)?b") then an empty
    /// string is returned.
    /// 
    /// If the match was obtained using the DFA algorithm, that is using
    /// `g_regex_match_all()` or `g_regex_match_all_full()`, the retrieved
    /// string is not that of a set of parentheses but that of a matched
    /// substring. Substrings are matched in reverse order of length, so
    /// 0 is the longest match.
    /// 
    /// The string is fetched from the string passed to the match function,
    /// so you cannot call this function after freeing the string.
    @inlinable func fetch(matchNum: Int) -> String! {
        let result = g_match_info_fetch(match_info_ptr, gint(matchNum))
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Bundles up pointers to each of the matching substrings from a match
    /// and stores them in an array of gchar pointers. The first element in
    /// the returned array is the match number 0, i.e. the entire matched
    /// text.
    /// 
    /// If a sub pattern didn't match anything (e.g. sub pattern 1, matching
    /// "b" against "(a)?b") then an empty string is inserted.
    /// 
    /// If the last match was obtained using the DFA algorithm, that is using
    /// `g_regex_match_all()` or `g_regex_match_all_full()`, the retrieved
    /// strings are not that matched by sets of parentheses but that of the
    /// matched substring. Substrings are matched in reverse order of length,
    /// so the first one is the longest match.
    /// 
    /// The strings are fetched from the string passed to the match function,
    /// so you cannot call this function after freeing the string.
    @inlinable func fetchAll() -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        let result = g_match_info_fetch_all(match_info_ptr)
        let rv = result
        return rv
    }

    /// Retrieves the text matching the capturing parentheses named `name`.
    /// 
    /// If `name` is a valid sub pattern name but it didn't match anything
    /// (e.g. sub pattern "X", matching "b" against "(?P&lt;X&gt;a)?b")
    /// then an empty string is returned.
    /// 
    /// The string is fetched from the string passed to the match function,
    /// so you cannot call this function after freeing the string.
    @inlinable func fetchNamed(name: UnsafePointer<gchar>!) -> String! {
        let result = g_match_info_fetch_named(match_info_ptr, name)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Retrieves the position in bytes of the capturing parentheses named `name`.
    /// 
    /// If `name` is a valid sub pattern name but it didn't match anything
    /// (e.g. sub pattern "X", matching "b" against "(?P&lt;X&gt;a)?b")
    /// then `start_pos` and `end_pos` are set to -1 and `true` is returned.
    @inlinable func fetchNamedPos(name: UnsafePointer<gchar>!, startPos: UnsafeMutablePointer<gint>! = nil, endPos: UnsafeMutablePointer<gint>! = nil) -> Bool {
        let result = g_match_info_fetch_named_pos(match_info_ptr, name, startPos, endPos)
        let rv = ((result) != 0)
        return rv
    }

    /// Retrieves the position in bytes of the `match_num`'th capturing
    /// parentheses. 0 is the full text of the match, 1 is the first
    /// paren set, 2 the second, and so on.
    /// 
    /// If `match_num` is a valid sub pattern but it didn't match anything
    /// (e.g. sub pattern 1, matching "b" against "(a)?b") then `start_pos`
    /// and `end_pos` are set to -1 and `true` is returned.
    /// 
    /// If the match was obtained using the DFA algorithm, that is using
    /// `g_regex_match_all()` or `g_regex_match_all_full()`, the retrieved
    /// position is not that of a set of parentheses but that of a matched
    /// substring. Substrings are matched in reverse order of length, so
    /// 0 is the longest match.
    @inlinable func fetchPos(matchNum: Int, startPos: UnsafeMutablePointer<gint>! = nil, endPos: UnsafeMutablePointer<gint>! = nil) -> Bool {
        let result = g_match_info_fetch_pos(match_info_ptr, gint(matchNum), startPos, endPos)
        let rv = ((result) != 0)
        return rv
    }

    /// If `match_info` is not `nil`, calls `g_match_info_unref()`; otherwise does
    /// nothing.
    @inlinable func free() {
        
        g_match_info_free(match_info_ptr)
        
    }

    /// Retrieves the number of matched substrings (including substring 0,
    /// that is the whole matched text), so 1 is returned if the pattern
    /// has no substrings in it and 0 is returned if the match failed.
    /// 
    /// If the last match was obtained using the DFA algorithm, that is
    /// using `g_regex_match_all()` or `g_regex_match_all_full()`, the retrieved
    /// count is not that of the number of capturing parentheses but that of
    /// the number of matched substrings.
    @inlinable func getMatchCount() -> Int {
        let result = g_match_info_get_match_count(match_info_ptr)
        let rv = Int(result)
        return rv
    }

    /// Returns `GRegex` object used in `match_info`. It belongs to Glib
    /// and must not be freed. Use `g_regex_ref()` if you need to keep it
    /// after you free `match_info` object.
    @inlinable func getRegex() -> RegexRef! {
        let result = g_match_info_get_regex(match_info_ptr)
        let rv = RegexRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Returns the string searched with `match_info`. This is the
    /// string passed to `g_regex_match()` or `g_regex_replace()` so
    /// you may not free it before calling this function.
    @inlinable func getString() -> String! {
        let result = g_match_info_get_string(match_info_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Returns whether the previous match operation succeeded.
    @inlinable func matches() -> Bool {
        let result = g_match_info_matches(match_info_ptr)
        let rv = ((result) != 0)
        return rv
    }

    /// Scans for the next match using the same parameters of the previous
    /// call to `g_regex_match_full()` or `g_regex_match()` that returned
    /// `match_info`.
    /// 
    /// The match is done on the string passed to the match function, so you
    /// cannot free it before calling this function.
    @inlinable func next() throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let result = g_match_info_next(match_info_ptr, &error)
        if let error = error { throw GLibError(error) }
        let rv = ((result) != 0)
        return rv
    }

    /// Increases reference count of `match_info` by 1.
    @discardableResult @inlinable func ref() -> MatchInfoRef! {
        let result = g_match_info_ref(match_info_ptr)
        guard let rv = MatchInfoRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Decreases reference count of `match_info` by 1. When reference count drops
    /// to zero, it frees all the memory associated with the match_info structure.
    @inlinable func unref() {
        
        g_match_info_unref(match_info_ptr)
        
    }
    /// Usually if the string passed to g_regex_match*() matches as far as
    /// it goes, but is too short to match the entire pattern, `false` is
    /// returned. There are circumstances where it might be helpful to
    /// distinguish this case from other cases in which there is no match.
    /// 
    /// Consider, for example, an application where a human is required to
    /// type in data for a field with specific formatting requirements. An
    /// example might be a date in the form ddmmmyy, defined by the pattern
    /// `"^\d?\d(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec)`\d\d$".
    /// If the application sees the user’s keystrokes one by one, and can
    /// check that what has been typed so far is potentially valid, it is
    /// able to raise an error as soon as a mistake is made.
    /// 
    /// GRegex supports the concept of partial matching by means of the
    /// `G_REGEX_MATCH_PARTIAL_SOFT` and `G_REGEX_MATCH_PARTIAL_HARD` flags.
    /// When they are used, the return code for
    /// `g_regex_match()` or `g_regex_match_full()` is, as usual, `true`
    /// for a complete match, `false` otherwise. But, when these functions
    /// return `false`, you can check if the match was partial calling
    /// `g_match_info_is_partial_match()`.
    /// 
    /// The difference between `G_REGEX_MATCH_PARTIAL_SOFT` and
    /// `G_REGEX_MATCH_PARTIAL_HARD` is that when a partial match is encountered
    /// with `G_REGEX_MATCH_PARTIAL_SOFT`, matching continues to search for a
    /// possible complete match, while with `G_REGEX_MATCH_PARTIAL_HARD` matching
    /// stops at the partial match.
    /// When both `G_REGEX_MATCH_PARTIAL_SOFT` and `G_REGEX_MATCH_PARTIAL_HARD`
    /// are set, the latter takes precedence.
    /// 
    /// There were formerly some restrictions on the pattern for partial matching.
    /// The restrictions no longer apply.
    /// 
    /// See `pcrepartial(3)` for more information on partial matching.
    @inlinable var isPartialMatch: Bool {
        /// Usually if the string passed to g_regex_match*() matches as far as
        /// it goes, but is too short to match the entire pattern, `false` is
        /// returned. There are circumstances where it might be helpful to
        /// distinguish this case from other cases in which there is no match.
        /// 
        /// Consider, for example, an application where a human is required to
        /// type in data for a field with specific formatting requirements. An
        /// example might be a date in the form ddmmmyy, defined by the pattern
        /// `"^\d?\d(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec)`\d\d$".
        /// If the application sees the user’s keystrokes one by one, and can
        /// check that what has been typed so far is potentially valid, it is
        /// able to raise an error as soon as a mistake is made.
        /// 
        /// GRegex supports the concept of partial matching by means of the
        /// `G_REGEX_MATCH_PARTIAL_SOFT` and `G_REGEX_MATCH_PARTIAL_HARD` flags.
        /// When they are used, the return code for
        /// `g_regex_match()` or `g_regex_match_full()` is, as usual, `true`
        /// for a complete match, `false` otherwise. But, when these functions
        /// return `false`, you can check if the match was partial calling
        /// `g_match_info_is_partial_match()`.
        /// 
        /// The difference between `G_REGEX_MATCH_PARTIAL_SOFT` and
        /// `G_REGEX_MATCH_PARTIAL_HARD` is that when a partial match is encountered
        /// with `G_REGEX_MATCH_PARTIAL_SOFT`, matching continues to search for a
        /// possible complete match, while with `G_REGEX_MATCH_PARTIAL_HARD` matching
        /// stops at the partial match.
        /// When both `G_REGEX_MATCH_PARTIAL_SOFT` and `G_REGEX_MATCH_PARTIAL_HARD`
        /// are set, the latter takes precedence.
        /// 
        /// There were formerly some restrictions on the pattern for partial matching.
        /// The restrictions no longer apply.
        /// 
        /// See `pcrepartial(3)` for more information on partial matching.
        get {
            let result = g_match_info_is_partial_match(match_info_ptr)
        let rv = ((result) != 0)
            return rv
        }
    }

    /// Retrieves the number of matched substrings (including substring 0,
    /// that is the whole matched text), so 1 is returned if the pattern
    /// has no substrings in it and 0 is returned if the match failed.
    /// 
    /// If the last match was obtained using the DFA algorithm, that is
    /// using `g_regex_match_all()` or `g_regex_match_all_full()`, the retrieved
    /// count is not that of the number of capturing parentheses but that of
    /// the number of matched substrings.
    @inlinable var matchCount: Int {
        /// Retrieves the number of matched substrings (including substring 0,
        /// that is the whole matched text), so 1 is returned if the pattern
        /// has no substrings in it and 0 is returned if the match failed.
        /// 
        /// If the last match was obtained using the DFA algorithm, that is
        /// using `g_regex_match_all()` or `g_regex_match_all_full()`, the retrieved
        /// count is not that of the number of capturing parentheses but that of
        /// the number of matched substrings.
        get {
            let result = g_match_info_get_match_count(match_info_ptr)
        let rv = Int(result)
            return rv
        }
    }

    /// Returns `GRegex` object used in `match_info`. It belongs to Glib
    /// and must not be freed. Use `g_regex_ref()` if you need to keep it
    /// after you free `match_info` object.
    @inlinable var regex: RegexRef! {
        /// Returns `GRegex` object used in `match_info`. It belongs to Glib
        /// and must not be freed. Use `g_regex_ref()` if you need to keep it
        /// after you free `match_info` object.
        get {
            let result = g_match_info_get_regex(match_info_ptr)
        let rv = RegexRef(gconstpointer: gconstpointer(result))
            return rv
        }
    }

    /// Returns the string searched with `match_info`. This is the
    /// string passed to `g_regex_match()` or `g_regex_replace()` so
    /// you may not free it before calling this function.
    @inlinable var string: String! {
        /// Returns the string searched with `match_info`. This is the
        /// string passed to `g_regex_match()` or `g_regex_replace()` so
        /// you may not free it before calling this function.
        get {
            let result = g_match_info_get_string(match_info_ptr)
        let rv = result.map({ String(cString: $0) })
            return rv
        }
    }


}



// MARK: - MemVTable Record

/// A set of functions used to perform memory allocation. The same `GMemVTable` must
/// be used for all allocations in the same program; a call to `g_mem_set_vtable()`,
/// if it exists, should be prior to any use of GLib.
/// 
/// This functions related to this has been deprecated in 2.46, and no longer work.
///
/// The `MemVTableProtocol` protocol exposes the methods and properties of an underlying `GMemVTable` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MemVTable`.
/// Alternatively, use `MemVTableRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol MemVTableProtocol {
        /// Untyped pointer to the underlying `GMemVTable` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GMemVTable` instance.
    var _ptr: UnsafeMutablePointer<GMemVTable>! { get }

    /// Required Initialiser for types conforming to `MemVTableProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A set of functions used to perform memory allocation. The same `GMemVTable` must
/// be used for all allocations in the same program; a call to `g_mem_set_vtable()`,
/// if it exists, should be prior to any use of GLib.
/// 
/// This functions related to this has been deprecated in 2.46, and no longer work.
///
/// The `MemVTableRef` type acts as a lightweight Swift reference to an underlying `GMemVTable` instance.
/// It exposes methods that can operate on this data type through `MemVTableProtocol` conformance.
/// Use `MemVTableRef` only as an `unowned` reference to an existing `GMemVTable` instance.
///
public struct MemVTableRef: MemVTableProtocol {
        /// Untyped pointer to the underlying `GMemVTable` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MemVTableRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GMemVTable>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GMemVTable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GMemVTable>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GMemVTable>?) {
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

    /// Reference intialiser for a related type that implements `MemVTableProtocol`
    @inlinable init<T: MemVTableProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemVTableProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemVTableProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemVTableProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemVTableProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemVTableProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A set of functions used to perform memory allocation. The same `GMemVTable` must
/// be used for all allocations in the same program; a call to `g_mem_set_vtable()`,
/// if it exists, should be prior to any use of GLib.
/// 
/// This functions related to this has been deprecated in 2.46, and no longer work.
///
/// The `MemVTable` type acts as an owner of an underlying `GMemVTable` instance.
/// It provides the methods that can operate on this data type through `MemVTableProtocol` conformance.
/// Use `MemVTable` as a strong reference or owner of a `GMemVTable` instance.
///
open class MemVTable: MemVTableProtocol {
        /// Untyped pointer to the underlying `GMemVTable` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MemVTable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GMemVTable>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MemVTable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GMemVTable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MemVTable` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MemVTable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MemVTable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GMemVTable>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MemVTable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GMemVTable>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GMemVTable` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `MemVTable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GMemVTable>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GMemVTable, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `MemVTableProtocol`
    /// `GMemVTable` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `MemVTableProtocol`
    @inlinable public init<T: MemVTableProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GMemVTable, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GMemVTable`.
    deinit {
        // no reference counting for GMemVTable, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemVTableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemVTableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GMemVTable, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemVTableProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemVTableProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GMemVTable, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemVTableProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemVTableProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GMemVTable, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemVTableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemVTableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GMemVTable, cannot ref(_ptr)
    }



}

// MARK: no MemVTable properties

// MARK: no MemVTable signals

// MARK: MemVTable has no signals
// MARK: MemVTable Record: MemVTableProtocol extension (methods and fields)
public extension MemVTableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMemVTable` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GMemVTable>! { return ptr?.assumingMemoryBound(to: GMemVTable.self) }

    /// This function used to let you override the memory allocation function.
    /// However, its use was incompatible with the use of global constructors
    /// in GLib and GIO, because those use the GLib allocators before main is
    /// reached. Therefore this function is now deprecated and is just a stub.
    ///
    /// **mem_set_vtable is deprecated:**
    /// This function now does nothing. Use other memory
    /// profiling tools instead
    @available(*, deprecated) @inlinable func memSetVtable() {
        
        g_mem_set_vtable(_ptr)
        
    }

    // var malloc is unavailable because malloc is void

    // var realloc is unavailable because realloc is void

    // var free is unavailable because free is void

    // var calloc is unavailable because calloc is void

    // var tryMalloc is unavailable because try_malloc is void

    // var tryRealloc is unavailable because try_realloc is void

}



