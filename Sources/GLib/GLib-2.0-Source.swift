import CGLib

// MARK: - Source Record

/// The `SourceProtocol` protocol exposes the methods and properties of an underlying `GSource` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Source`.
/// Alternatively, use `SourceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GSource` struct is an opaque data type
/// representing an event source.
public protocol SourceProtocol {
        /// Untyped pointer to the underlying `GSource` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSource` instance.
    var source_ptr: UnsafeMutablePointer<GSource>! { get }

}

/// The `SourceRef` type acts as a lightweight Swift reference to an underlying `GSource` instance.
/// It exposes methods that can operate on this data type through `SourceProtocol` conformance.
/// Use `SourceRef` only as an `unowned` reference to an existing `GSource` instance.
///
/// The `GSource` struct is an opaque data type
/// representing an event source.
public struct SourceRef: SourceProtocol {
        /// Untyped pointer to the underlying `GSource` instance.
    /// For type-safe access, use the generated, typed pointer `source_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SourceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSource>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSource>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSource>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSource>?) {
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

    /// Reference intialiser for a related type that implements `SourceProtocol`
    @inlinable init<T: SourceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GSource` structure. The size is specified to
    /// allow creating structures derived from `GSource` that contain
    /// additional data. The size passed in must be at least
    /// `sizeof (GSource)`.
    /// 
    /// The source will not initially be associated with any `GMainContext`
    /// and must be added to one with `g_source_attach()` before it will be
    /// executed.
    @inlinable init<SourceFuncsT: SourceFuncsProtocol>( sourceFuncs: SourceFuncsT, structSize: Int) {
        let rv = g_source_new(sourceFuncs._ptr, guint(structSize))
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `Source` type acts as a reference-counted owner of an underlying `GSource` instance.
/// It provides the methods that can operate on this data type through `SourceProtocol` conformance.
/// Use `Source` as a strong reference or owner of a `GSource` instance.
///
/// The `GSource` struct is an opaque data type
/// representing an event source.
open class Source: SourceProtocol {
        /// Untyped pointer to the underlying `GSource` instance.
    /// For type-safe access, use the generated, typed pointer `source_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Source` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GSource>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Source` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GSource>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Source` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Source` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Source` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GSource>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Source` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GSource>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSource`.
    /// i.e., ownership is transferred to the `Source` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GSource>) {
        ptr = UnsafeMutableRawPointer(op)
        g_source_ref(ptr.assumingMemoryBound(to: GSource.self))
    }

    /// Reference intialiser for a related type that implements `SourceProtocol`
    /// Will retain `GSource`.
    /// - Parameter other: an instance of a related type that implements `SourceProtocol`
    @inlinable public init<T: SourceProtocol>(_ other: T) {
        ptr = other.ptr
        g_source_ref(ptr.assumingMemoryBound(to: GSource.self))
    }

    /// Releases the underlying `GSource` instance using `g_source_unref`.
    deinit {
        g_source_unref(ptr.assumingMemoryBound(to: GSource.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_source_ref(ptr.assumingMemoryBound(to: GSource.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_source_ref(ptr.assumingMemoryBound(to: GSource.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_source_ref(ptr.assumingMemoryBound(to: GSource.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_source_ref(ptr.assumingMemoryBound(to: GSource.self))
    }

    /// Creates a new `GSource` structure. The size is specified to
    /// allow creating structures derived from `GSource` that contain
    /// additional data. The size passed in must be at least
    /// `sizeof (GSource)`.
    /// 
    /// The source will not initially be associated with any `GMainContext`
    /// and must be added to one with `g_source_attach()` before it will be
    /// executed.
    @inlinable public init<SourceFuncsT: SourceFuncsProtocol>( sourceFuncs: SourceFuncsT, structSize: Int) {
        let rv = g_source_new(sourceFuncs._ptr, guint(structSize))
        ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no Source properties

// MARK: no Source signals


// MARK: Source Record: SourceProtocol extension (methods and fields)
public extension SourceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSource` instance.
    @inlinable var source_ptr: UnsafeMutablePointer<GSource>! { return ptr?.assumingMemoryBound(to: GSource.self) }

    /// Adds `child_source` to `source` as a "polled" source; when `source` is
    /// added to a `GMainContext`, `child_source` will be automatically added
    /// with the same priority, when `child_source` is triggered, it will
    /// cause `source` to dispatch (in addition to calling its own
    /// callback), and when `source` is destroyed, it will destroy
    /// `child_source` as well. (`source` will also still be dispatched if
    /// its own prepare/check functions indicate that it is ready.)
    /// 
    /// If you don't need `child_source` to do anything on its own when it
    /// triggers, you can call `g_source_set_dummy_callback()` on it to set a
    /// callback that does nothing (except return `true` if appropriate).
    /// 
    /// `source` will hold a reference on `child_source` while `child_source`
    /// is attached to it.
    /// 
    /// This API is only intended to be used by implementations of `GSource`.
    /// Do not call this API on a `GSource` that you did not create.
    @inlinable func add<SourceT: SourceProtocol>(childSource: SourceT) {
        g_source_add_child_source(source_ptr, childSource.source_ptr)
    
    }

    /// Adds a file descriptor to the set of file descriptors polled for
    /// this source. This is usually combined with `g_source_new()` to add an
    /// event source. The event source's check function will typically test
    /// the `revents` field in the `GPollFD` struct and return `true` if events need
    /// to be processed.
    /// 
    /// This API is only intended to be used by implementations of `GSource`.
    /// Do not call this API on a `GSource` that you did not create.
    /// 
    /// Using this API forces the linear scanning of event sources on each
    /// main loop iteration.  Newly-written event sources should try to use
    /// `g_source_add_unix_fd()` instead of this API.
    @inlinable func addPoll<PollFDT: PollFDProtocol>(fd: PollFDT) {
        g_source_add_poll(source_ptr, fd.pollfd_ptr)
    
    }

    /// Monitors `fd` for the IO events in `events`.
    /// 
    /// The tag returned by this function can be used to remove or modify the
    /// monitoring of the fd using `g_source_remove_unix_fd()` or
    /// `g_source_modify_unix_fd()`.
    /// 
    /// It is not necessary to remove the fd before destroying the source; it
    /// will be cleaned up automatically.
    /// 
    /// This API is only intended to be used by implementations of `GSource`.
    /// Do not call this API on a `GSource` that you did not create.
    /// 
    /// As the name suggests, this function is not available on Windows.
    @inlinable func addUnix(fd: Int, events: IOCondition) -> gpointer! {
        let rv = gpointer?(g_source_add_unix_fd(source_ptr, gint(fd), events.value))
        return rv
    }

    /// Adds a `GSource` to a `context` so that it will be executed within
    /// that context. Remove it by calling `g_source_destroy()`.
    /// 
    /// This function is safe to call from any thread, regardless of which thread
    /// the `context` is running in.
    @inlinable func attach(context: MainContextRef? = nil) -> Int {
        let rv = Int(g_source_attach(source_ptr, context?.main_context_ptr))
        return rv
    }
    /// Adds a `GSource` to a `context` so that it will be executed within
    /// that context. Remove it by calling `g_source_destroy()`.
    /// 
    /// This function is safe to call from any thread, regardless of which thread
    /// the `context` is running in.
    @inlinable func attach<MainContextT: MainContextProtocol>(context: MainContextT?) -> Int {
        let rv = Int(g_source_attach(source_ptr, context?.main_context_ptr))
        return rv
    }

    /// Removes a source from its `GMainContext`, if any, and mark it as
    /// destroyed.  The source cannot be subsequently added to another
    /// context. It is safe to call this on sources which have already been
    /// removed from their context.
    /// 
    /// This does not unref the `GSource:` if you still hold a reference, use
    /// `g_source_unref()` to drop it.
    /// 
    /// This function is safe to call from any thread, regardless of which thread
    /// the `GMainContext` is running in.
    @inlinable func destroy() {
        g_source_destroy(source_ptr)
    
    }

    /// Checks whether a source is allowed to be called recursively.
    /// see `g_source_set_can_recurse()`.
    @inlinable func getCanRecurse() -> Bool {
        let rv = ((g_source_get_can_recurse(source_ptr)) != 0)
        return rv
    }

    /// Gets the `GMainContext` with which the source is associated.
    /// 
    /// You can call this on a source that has been destroyed, provided
    /// that the `GMainContext` it was attached to still exists (in which
    /// case it will return that `GMainContext`). In particular, you can
    /// always call this function on the source returned from
    /// `g_main_current_source()`. But calling this function on a source
    /// whose `GMainContext` has been destroyed is an error.
    @inlinable func getContext() -> MainContextRef! {
        let rv = MainContextRef(gconstpointer: gconstpointer(g_source_get_context(source_ptr)))
        return rv
    }

    /// This function ignores `source` and is otherwise the same as
    /// `g_get_current_time()`.
    ///
    /// **get_current_time is deprecated:**
    /// use g_source_get_time() instead
    @available(*, deprecated) @inlinable func getCurrentTime<TimeValT: TimeValProtocol>(timeval: TimeValT) {
        g_source_get_current_time(source_ptr, timeval._ptr)
    
    }

    /// Returns the numeric ID for a particular source. The ID of a source
    /// is a positive integer which is unique within a particular main loop
    /// context. The reverse
    /// mapping from ID to source is done by `g_main_context_find_source_by_id()`.
    /// 
    /// You can only call this function while the source is associated to a
    /// `GMainContext` instance; calling this function before `g_source_attach()`
    /// or after `g_source_destroy()` yields undefined behavior. The ID returned
    /// is unique within the `GMainContext` instance passed to `g_source_attach()`.
    @inlinable func getID() -> Int {
        let rv = Int(g_source_get_id(source_ptr))
        return rv
    }

    /// Gets a name for the source, used in debugging and profiling.  The
    /// name may be `NULL` if it has never been set with `g_source_set_name()`.
    @inlinable func getName() -> String! {
        let rv = g_source_get_name(source_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the priority of a source.
    @inlinable func getPriority() -> Int {
        let rv = Int(g_source_get_priority(source_ptr))
        return rv
    }

    /// Gets the "ready time" of `source`, as set by
    /// `g_source_set_ready_time()`.
    /// 
    /// Any time before the current monotonic time (including 0) is an
    /// indication that the source will fire immediately.
    @inlinable func getReadyTime() -> gint64 {
        let rv = g_source_get_ready_time(source_ptr)
        return rv
    }

    /// Gets the time to be used when checking this source. The advantage of
    /// calling this function over calling `g_get_monotonic_time()` directly is
    /// that when checking multiple sources, GLib can cache a single value
    /// instead of having to repeatedly get the system monotonic time.
    /// 
    /// The time here is the system monotonic time, if available, or some
    /// other reasonable alternative otherwise.  See `g_get_monotonic_time()`.
    @inlinable func getTime() -> gint64 {
        let rv = g_source_get_time(source_ptr)
        return rv
    }

    /// Updates the event mask to watch for the fd identified by `tag`.
    /// 
    /// `tag` is the tag returned from `g_source_add_unix_fd()`.
    /// 
    /// If you want to remove a fd, don't set its event mask to zero.
    /// Instead, call `g_source_remove_unix_fd()`.
    /// 
    /// This API is only intended to be used by implementations of `GSource`.
    /// Do not call this API on a `GSource` that you did not create.
    /// 
    /// As the name suggests, this function is not available on Windows.
    @inlinable func modifyUnixFd(tag: gpointer!, newEvents: IOCondition) {
        g_source_modify_unix_fd(source_ptr, tag, newEvents.value)
    
    }

    /// Queries the events reported for the fd corresponding to `tag` on
    /// `source` during the last poll.
    /// 
    /// The return value of this function is only defined when the function
    /// is called from the check or dispatch functions for `source`.
    /// 
    /// This API is only intended to be used by implementations of `GSource`.
    /// Do not call this API on a `GSource` that you did not create.
    /// 
    /// As the name suggests, this function is not available on Windows.
    @inlinable func queryUnixFd(tag: gpointer!) -> IOCondition {
        let rv = IOCondition(g_source_query_unix_fd(source_ptr, tag))
        return rv
    }

    /// Increases the reference count on a source by one.
    @discardableResult @inlinable func ref() -> SourceRef! {
        guard let rv = SourceRef(gconstpointer: gconstpointer(g_source_ref(source_ptr))) else { return nil }
        return rv
    }

    /// Detaches `child_source` from `source` and destroys it.
    /// 
    /// This API is only intended to be used by implementations of `GSource`.
    /// Do not call this API on a `GSource` that you did not create.
    @inlinable func remove<SourceT: SourceProtocol>(childSource: SourceT) {
        g_source_remove_child_source(source_ptr, childSource.source_ptr)
    
    }

    /// Removes a file descriptor from the set of file descriptors polled for
    /// this source.
    /// 
    /// This API is only intended to be used by implementations of `GSource`.
    /// Do not call this API on a `GSource` that you did not create.
    @inlinable func removePoll<PollFDT: PollFDProtocol>(fd: PollFDT) {
        g_source_remove_poll(source_ptr, fd.pollfd_ptr)
    
    }

    /// Reverses the effect of a previous call to `g_source_add_unix_fd()`.
    /// 
    /// You only need to call this if you want to remove an fd from being
    /// watched while keeping the same source around.  In the normal case you
    /// will just want to destroy the source.
    /// 
    /// This API is only intended to be used by implementations of `GSource`.
    /// Do not call this API on a `GSource` that you did not create.
    /// 
    /// As the name suggests, this function is not available on Windows.
    @inlinable func removeUnixFd(tag: gpointer!) {
        g_source_remove_unix_fd(source_ptr, tag)
    
    }

    /// Sets the callback function for a source. The callback for a source is
    /// called from the source's dispatch function.
    /// 
    /// The exact type of `func` depends on the type of source; ie. you
    /// should not count on `func` being called with `data` as its first
    /// parameter. Cast `func` with `G_SOURCE_FUNC()` to avoid warnings about
    /// incompatible function types.
    /// 
    /// See [memory management of sources](#mainloop-memory-management) for details
    /// on how to handle memory management of `data`.
    /// 
    /// Typically, you won't use this function. Instead use functions specific
    /// to the type of source you are using, such as `g_idle_add()` or `g_timeout_add()`.
    /// 
    /// It is safe to call this function multiple times on a source which has already
    /// been attached to a context. The changes will take effect for the next time
    /// the source is dispatched after this call returns.
    @inlinable func setCallback(`func`: GSourceFunc?, data: gpointer! = nil, notify: GDestroyNotify? = nil) {
        g_source_set_callback(source_ptr, `func`, data, notify)
    
    }

    /// Sets the callback function storing the data as a refcounted callback
    /// "object". This is used internally. Note that calling
    /// `g_source_set_callback_indirect()` assumes
    /// an initial reference count on `callback_data`, and thus
    /// `callback_funcs`->unref will eventually be called once more
    /// than `callback_funcs`->ref.
    /// 
    /// It is safe to call this function multiple times on a source which has already
    /// been attached to a context. The changes will take effect for the next time
    /// the source is dispatched after this call returns.
    @inlinable func setCallbackIndirect<SourceCallbackFuncsT: SourceCallbackFuncsProtocol>(callbackData: gpointer! = nil, callbackFuncs: SourceCallbackFuncsT) {
        g_source_set_callback_indirect(source_ptr, callbackData, callbackFuncs._ptr)
    
    }

    /// Sets whether a source can be called recursively. If `can_recurse` is
    /// `true`, then while the source is being dispatched then this source
    /// will be processed normally. Otherwise, all processing of this
    /// source is blocked until the dispatch function returns.
    @inlinable func set(canRecurse: Bool) {
        g_source_set_can_recurse(source_ptr, gboolean((canRecurse) ? 1 : 0))
    
    }

    /// Set `dispose` as dispose function on `source`. `dispose` will be called once
    /// the reference count of `source` reaches 0 but before any of the state of the
    /// source is freed, especially before the finalize function is called.
    /// 
    /// This means that at this point `source` is still a valid `GSource` and it is
    /// allow for the reference count to increase again until `dispose` returns.
    /// 
    /// The dispose function can be used to clear any "weak" references to the
    /// `source` in other data structures in a thread-safe way where it is possible
    /// for another thread to increase the reference count of `source` again while
    /// it is being freed.
    /// 
    /// The finalize function can not be used for this purpose as at that point
    /// `source` is already partially freed and not valid anymore.
    /// 
    /// This should only ever be called from `GSource` implementations.
    @inlinable func setDisposeFunction(dispose: GSourceDisposeFunc?) {
        g_source_set_dispose_function(source_ptr, dispose)
    
    }

    /// Sets the source functions (can be used to override
    /// default implementations) of an unattached source.
    @inlinable func set<SourceFuncsT: SourceFuncsProtocol>(funcs: SourceFuncsT) {
        g_source_set_funcs(source_ptr, funcs._ptr)
    
    }

    /// Sets a name for the source, used in debugging and profiling.
    /// The name defaults to `NULL`.
    /// 
    /// The source name should describe in a human-readable way
    /// what the source does. For example, "X11 event queue"
    /// or "GTK+ repaint idle handler" or whatever it is.
    /// 
    /// It is permitted to call this function multiple times, but is not
    /// recommended due to the potential performance impact.  For example,
    /// one could change the name in the "check" function of a `GSourceFuncs`
    /// to include details like the event type in the source name.
    /// 
    /// Use caution if changing the name while another thread may be
    /// accessing it with `g_source_get_name()`; that function does not copy
    /// the value, and changing the value will free it while the other thread
    /// may be attempting to use it.
    @inlinable func set(name: UnsafePointer<CChar>!) {
        g_source_set_name(source_ptr, name)
    
    }

    /// Sets the priority of a source. While the main loop is being run, a
    /// source will be dispatched if it is ready to be dispatched and no
    /// sources at a higher (numerically smaller) priority are ready to be
    /// dispatched.
    /// 
    /// A child source always has the same priority as its parent.  It is not
    /// permitted to change the priority of a source once it has been added
    /// as a child of another source.
    @inlinable func set(priority: Int) {
        g_source_set_priority(source_ptr, gint(priority))
    
    }

    /// Sets a `GSource` to be dispatched when the given monotonic time is
    /// reached (or passed).  If the monotonic time is in the past (as it
    /// always will be if `ready_time` is 0) then the source will be
    /// dispatched immediately.
    /// 
    /// If `ready_time` is -1 then the source is never woken up on the basis
    /// of the passage of time.
    /// 
    /// Dispatching the source does not reset the ready time.  You should do
    /// so yourself, from the source dispatch function.
    /// 
    /// Note that if you have a pair of sources where the ready time of one
    /// suggests that it will be delivered first but the priority for the
    /// other suggests that it would be delivered first, and the ready time
    /// for both sources is reached during the same main context iteration,
    /// then the order of dispatch is undefined.
    /// 
    /// It is a no-op to call this function on a `GSource` which has already been
    /// destroyed with `g_source_destroy()`.
    /// 
    /// This API is only intended to be used by implementations of `GSource`.
    /// Do not call this API on a `GSource` that you did not create.
    @inlinable func set(readyTime: gint64) {
        g_source_set_ready_time(source_ptr, readyTime)
    
    }

    /// Decreases the reference count of a source by one. If the
    /// resulting reference count is zero the source and associated
    /// memory will be destroyed.
    @inlinable func unref() {
        g_source_unref(source_ptr)
    
    }
    /// Checks whether a source is allowed to be called recursively.
    /// see `g_source_set_can_recurse()`.
    @inlinable var canRecurse: Bool {
        /// Checks whether a source is allowed to be called recursively.
        /// see `g_source_set_can_recurse()`.
        get {
            let rv = ((g_source_get_can_recurse(source_ptr)) != 0)
            return rv
        }
        /// Sets whether a source can be called recursively. If `can_recurse` is
        /// `true`, then while the source is being dispatched then this source
        /// will be processed normally. Otherwise, all processing of this
        /// source is blocked until the dispatch function returns.
        nonmutating set {
            g_source_set_can_recurse(source_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the `GMainContext` with which the source is associated.
    /// 
    /// You can call this on a source that has been destroyed, provided
    /// that the `GMainContext` it was attached to still exists (in which
    /// case it will return that `GMainContext`). In particular, you can
    /// always call this function on the source returned from
    /// `g_main_current_source()`. But calling this function on a source
    /// whose `GMainContext` has been destroyed is an error.
    @inlinable var context: MainContextRef! {
        /// Gets the `GMainContext` with which the source is associated.
        /// 
        /// You can call this on a source that has been destroyed, provided
        /// that the `GMainContext` it was attached to still exists (in which
        /// case it will return that `GMainContext`). In particular, you can
        /// always call this function on the source returned from
        /// `g_main_current_source()`. But calling this function on a source
        /// whose `GMainContext` has been destroyed is an error.
        get {
            let rv = MainContextRef(gconstpointer: gconstpointer(g_source_get_context(source_ptr)))
            return rv
        }
    }

    /// Returns the numeric ID for a particular source. The ID of a source
    /// is a positive integer which is unique within a particular main loop
    /// context. The reverse
    /// mapping from ID to source is done by `g_main_context_find_source_by_id()`.
    /// 
    /// You can only call this function while the source is associated to a
    /// `GMainContext` instance; calling this function before `g_source_attach()`
    /// or after `g_source_destroy()` yields undefined behavior. The ID returned
    /// is unique within the `GMainContext` instance passed to `g_source_attach()`.
    @inlinable var id: Int {
        /// Returns the numeric ID for a particular source. The ID of a source
        /// is a positive integer which is unique within a particular main loop
        /// context. The reverse
        /// mapping from ID to source is done by `g_main_context_find_source_by_id()`.
        /// 
        /// You can only call this function while the source is associated to a
        /// `GMainContext` instance; calling this function before `g_source_attach()`
        /// or after `g_source_destroy()` yields undefined behavior. The ID returned
        /// is unique within the `GMainContext` instance passed to `g_source_attach()`.
        get {
            let rv = Int(g_source_get_id(source_ptr))
            return rv
        }
    }

    /// Returns whether `source` has been destroyed.
    /// 
    /// This is important when you operate upon your objects
    /// from within idle handlers, but may have freed the object
    /// before the dispatch of your idle handler.
    /// 
    /// (C Language Example):
    /// ```C
    /// static gboolean
    /// idle_callback (gpointer data)
    /// {
    ///   SomeWidget *self = data;
    ///    
    ///   GDK_THREADS_ENTER ();
    ///   // do stuff with self
    ///   self->idle_id = 0;
    ///   GDK_THREADS_LEAVE ();
    ///    
    ///   return G_SOURCE_REMOVE;
    /// }
    ///  
    /// static void
    /// some_widget_do_stuff_later (SomeWidget *self)
    /// {
    ///   self->idle_id = g_idle_add (idle_callback, self);
    /// }
    ///  
    /// static void
    /// some_widget_finalize (GObject *object)
    /// {
    ///   SomeWidget *self = SOME_WIDGET (object);
    ///    
    ///   if (self->idle_id)
    ///     g_source_remove (self->idle_id);
    ///    
    ///   G_OBJECT_CLASS (parent_class)->finalize (object);
    /// }
    /// ```
    /// 
    /// This will fail in a multi-threaded application if the
    /// widget is destroyed before the idle handler fires due
    /// to the use after free in the callback. A solution, to
    /// this particular problem, is to check to if the source
    /// has already been destroy within the callback.
    /// 
    /// (C Language Example):
    /// ```C
    /// static gboolean
    /// idle_callback (gpointer data)
    /// {
    ///   SomeWidget *self = data;
    ///   
    ///   GDK_THREADS_ENTER ();
    ///   if (!g_source_is_destroyed (g_main_current_source ()))
    ///     {
    ///       // do stuff with self
    ///     }
    ///   GDK_THREADS_LEAVE ();
    ///   
    ///   return FALSE;
    /// }
    /// ```
    /// 
    /// Calls to this function from a thread other than the one acquired by the
    /// `GMainContext` the `GSource` is attached to are typically redundant, as the
    /// source could be destroyed immediately after this function returns. However,
    /// once a source is destroyed it cannot be un-destroyed, so this function can be
    /// used for opportunistic checks from any thread.
    @inlinable var isDestroyed: Bool {
        /// Returns whether `source` has been destroyed.
        /// 
        /// This is important when you operate upon your objects
        /// from within idle handlers, but may have freed the object
        /// before the dispatch of your idle handler.
        /// 
        /// (C Language Example):
        /// ```C
        /// static gboolean
        /// idle_callback (gpointer data)
        /// {
        ///   SomeWidget *self = data;
        ///    
        ///   GDK_THREADS_ENTER ();
        ///   // do stuff with self
        ///   self->idle_id = 0;
        ///   GDK_THREADS_LEAVE ();
        ///    
        ///   return G_SOURCE_REMOVE;
        /// }
        ///  
        /// static void
        /// some_widget_do_stuff_later (SomeWidget *self)
        /// {
        ///   self->idle_id = g_idle_add (idle_callback, self);
        /// }
        ///  
        /// static void
        /// some_widget_finalize (GObject *object)
        /// {
        ///   SomeWidget *self = SOME_WIDGET (object);
        ///    
        ///   if (self->idle_id)
        ///     g_source_remove (self->idle_id);
        ///    
        ///   G_OBJECT_CLASS (parent_class)->finalize (object);
        /// }
        /// ```
        /// 
        /// This will fail in a multi-threaded application if the
        /// widget is destroyed before the idle handler fires due
        /// to the use after free in the callback. A solution, to
        /// this particular problem, is to check to if the source
        /// has already been destroy within the callback.
        /// 
        /// (C Language Example):
        /// ```C
        /// static gboolean
        /// idle_callback (gpointer data)
        /// {
        ///   SomeWidget *self = data;
        ///   
        ///   GDK_THREADS_ENTER ();
        ///   if (!g_source_is_destroyed (g_main_current_source ()))
        ///     {
        ///       // do stuff with self
        ///     }
        ///   GDK_THREADS_LEAVE ();
        ///   
        ///   return FALSE;
        /// }
        /// ```
        /// 
        /// Calls to this function from a thread other than the one acquired by the
        /// `GMainContext` the `GSource` is attached to are typically redundant, as the
        /// source could be destroyed immediately after this function returns. However,
        /// once a source is destroyed it cannot be un-destroyed, so this function can be
        /// used for opportunistic checks from any thread.
        get {
            let rv = ((g_source_is_destroyed(source_ptr)) != 0)
            return rv
        }
    }

    /// Gets a name for the source, used in debugging and profiling.  The
    /// name may be `NULL` if it has never been set with `g_source_set_name()`.
    @inlinable var name: String! {
        /// Gets a name for the source, used in debugging and profiling.  The
        /// name may be `NULL` if it has never been set with `g_source_set_name()`.
        get {
            let rv = g_source_get_name(source_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets a name for the source, used in debugging and profiling.
        /// The name defaults to `NULL`.
        /// 
        /// The source name should describe in a human-readable way
        /// what the source does. For example, "X11 event queue"
        /// or "GTK+ repaint idle handler" or whatever it is.
        /// 
        /// It is permitted to call this function multiple times, but is not
        /// recommended due to the potential performance impact.  For example,
        /// one could change the name in the "check" function of a `GSourceFuncs`
        /// to include details like the event type in the source name.
        /// 
        /// Use caution if changing the name while another thread may be
        /// accessing it with `g_source_get_name()`; that function does not copy
        /// the value, and changing the value will free it while the other thread
        /// may be attempting to use it.
        nonmutating set {
            g_source_set_name(source_ptr, newValue)
        }
    }

    /// Gets the priority of a source.
    @inlinable var priority: Int {
        /// Gets the priority of a source.
        get {
            let rv = Int(g_source_get_priority(source_ptr))
            return rv
        }
        /// Sets the priority of a source. While the main loop is being run, a
        /// source will be dispatched if it is ready to be dispatched and no
        /// sources at a higher (numerically smaller) priority are ready to be
        /// dispatched.
        /// 
        /// A child source always has the same priority as its parent.  It is not
        /// permitted to change the priority of a source once it has been added
        /// as a child of another source.
        nonmutating set {
            g_source_set_priority(source_ptr, gint(newValue))
        }
    }

    /// Gets the "ready time" of `source`, as set by
    /// `g_source_set_ready_time()`.
    /// 
    /// Any time before the current monotonic time (including 0) is an
    /// indication that the source will fire immediately.
    @inlinable var readyTime: gint64 {
        /// Gets the "ready time" of `source`, as set by
        /// `g_source_set_ready_time()`.
        /// 
        /// Any time before the current monotonic time (including 0) is an
        /// indication that the source will fire immediately.
        get {
            let rv = g_source_get_ready_time(source_ptr)
            return rv
        }
        /// Sets a `GSource` to be dispatched when the given monotonic time is
        /// reached (or passed).  If the monotonic time is in the past (as it
        /// always will be if `ready_time` is 0) then the source will be
        /// dispatched immediately.
        /// 
        /// If `ready_time` is -1 then the source is never woken up on the basis
        /// of the passage of time.
        /// 
        /// Dispatching the source does not reset the ready time.  You should do
        /// so yourself, from the source dispatch function.
        /// 
        /// Note that if you have a pair of sources where the ready time of one
        /// suggests that it will be delivered first but the priority for the
        /// other suggests that it would be delivered first, and the ready time
        /// for both sources is reached during the same main context iteration,
        /// then the order of dispatch is undefined.
        /// 
        /// It is a no-op to call this function on a `GSource` which has already been
        /// destroyed with `g_source_destroy()`.
        /// 
        /// This API is only intended to be used by implementations of `GSource`.
        /// Do not call this API on a `GSource` that you did not create.
        nonmutating set {
            g_source_set_ready_time(source_ptr, newValue)
        }
    }

    /// Gets the time to be used when checking this source. The advantage of
    /// calling this function over calling `g_get_monotonic_time()` directly is
    /// that when checking multiple sources, GLib can cache a single value
    /// instead of having to repeatedly get the system monotonic time.
    /// 
    /// The time here is the system monotonic time, if available, or some
    /// other reasonable alternative otherwise.  See `g_get_monotonic_time()`.
    @inlinable var time: gint64 {
        /// Gets the time to be used when checking this source. The advantage of
        /// calling this function over calling `g_get_monotonic_time()` directly is
        /// that when checking multiple sources, GLib can cache a single value
        /// instead of having to repeatedly get the system monotonic time.
        /// 
        /// The time here is the system monotonic time, if available, or some
        /// other reasonable alternative otherwise.  See `g_get_monotonic_time()`.
        get {
            let rv = g_source_get_time(source_ptr)
            return rv
        }
    }

    // var callbackData is unavailable because callback_data is private

    // var callbackFuncs is unavailable because callback_funcs is private

    // var sourceFuncs is unavailable because source_funcs is private

    // var refCount is unavailable because ref_count is private

    // var _context is unavailable because context is private

    // var _priority is unavailable because priority is private

    // var flags is unavailable because flags is private

    // var sourceID is unavailable because source_id is private

    // var pollFds is unavailable because poll_fds is private

    // var prev is unavailable because prev is private

    // var next is unavailable because next is private

    // var _name is unavailable because name is private

    // var priv is unavailable because priv is private

}


