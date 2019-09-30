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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSource` instance.
    var source_ptr: UnsafeMutablePointer<GSource> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension SourceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSource>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SourceProtocol`
    init<T: SourceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GSource` structure. The size is specified to
    /// allow creating structures derived from `GSource` that contain
    /// additional data. The size passed in must be at least
    /// `sizeof (GSource)`.
    /// 
    /// The source will not initially be associated with any `GMainContext`
    /// and must be added to one with g_source_attach() before it will be
    /// executed.
    init( source_funcs: SourceFuncsProtocol, structSize struct_size: CUnsignedInt) {
        let rv = g_source_new(cast(source_funcs.ptr), guint(struct_size))
        self.init(cast(rv))
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Source` instance.
    public init(_ op: UnsafeMutablePointer<GSource>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `SourceProtocol`
    /// Will retain `GSource`.
    public convenience init<T: SourceProtocol>(_ other: T) {
        self.init(cast(other.source_ptr))
        g_source_ref(cast(source_ptr))
    }

    /// Releases the underlying `GSource` instance using `g_source_unref`.
    deinit {
        g_source_unref(cast(source_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GSource.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GSource.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GSource.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GSource>(opaquePointer))
    }

    /// Creates a new `GSource` structure. The size is specified to
    /// allow creating structures derived from `GSource` that contain
    /// additional data. The size passed in must be at least
    /// `sizeof (GSource)`.
    /// 
    /// The source will not initially be associated with any `GMainContext`
    /// and must be added to one with g_source_attach() before it will be
    /// executed.
    public convenience init( source_funcs: SourceFuncsProtocol, structSize struct_size: CUnsignedInt) {
        let rv = g_source_new(cast(source_funcs.ptr), guint(struct_size))
        self.init(cast(rv))
    }


}

// MARK: - no Source properties

// MARK: - no signals


public extension SourceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSource` instance.
    var source_ptr: UnsafeMutablePointer<GSource> { return ptr.assumingMemoryBound(to: GSource.self) }

    /// Adds `child_source` to `source` as a "polled" source; when `source` is
    /// added to a `GMainContext`, `child_source` will be automatically added
    /// with the same priority, when `child_source` is triggered, it will
    /// cause `source` to dispatch (in addition to calling its own
    /// callback), and when `source` is destroyed, it will destroy
    /// `child_source` as well. (`source` will also still be dispatched if
    /// its own prepare/check functions indicate that it is ready.)
    /// 
    /// If you don't need `child_source` to do anything on its own when it
    /// triggers, you can call g_source_set_dummy_callback() on it to set a
    /// callback that does nothing (except return `true` if appropriate).
    /// 
    /// `source` will hold a reference on `child_source` while `child_source`
    /// is attached to it.
    /// 
    /// This API is only intended to be used by implementations of `GSource`.
    /// Do not call this API on a `GSource` that you did not create.
    func add(childSource child_source: SourceProtocol) {
        g_source_add_child_source(cast(source_ptr), cast(child_source.ptr))
    
    }

    /// Adds a file descriptor to the set of file descriptors polled for
    /// this source. This is usually combined with g_source_new() to add an
    /// event source. The event source's check function will typically test
    /// the `revents` field in the `GPollFD` struct and return `true` if events need
    /// to be processed.
    /// 
    /// This API is only intended to be used by implementations of `GSource`.
    /// Do not call this API on a `GSource` that you did not create.
    /// 
    /// Using this API forces the linear scanning of event sources on each
    /// main loop iteration.  Newly-written event sources should try to use
    /// g_source_add_unix_fd() instead of this API.
    func addPoll(fd: PollFDProtocol) {
        g_source_add_poll(cast(source_ptr), cast(fd.ptr))
    
    }

    /// Monitors `fd` for the IO events in `events`.
    /// 
    /// The tag returned by this function can be used to remove or modify the
    /// monitoring of the fd using g_source_remove_unix_fd() or
    /// g_source_modify_unix_fd().
    /// 
    /// It is not necessary to remove the fd before destroying the source; it
    /// will be cleaned up automatically.
    /// 
    /// This API is only intended to be used by implementations of `GSource`.
    /// Do not call this API on a `GSource` that you did not create.
    /// 
    /// As the name suggests, this function is not available on Windows.
    func addUnix(fd: CInt, events: IOCondition) -> UnsafeMutableRawPointer! {
        let rv = g_source_add_unix_fd(cast(source_ptr), gint(fd), events)
        return cast(rv)
    }

    /// Adds a `GSource` to a `context` so that it will be executed within
    /// that context. Remove it by calling g_source_destroy().
    func attach(context: MainContextProtocol) -> CUnsignedInt {
        let rv = g_source_attach(cast(source_ptr), cast(context.ptr))
        return CUnsignedInt(rv)
    }

    /// Removes a source from its `GMainContext`, if any, and mark it as
    /// destroyed.  The source cannot be subsequently added to another
    /// context. It is safe to call this on sources which have already been
    /// removed from their context.
    /// 
    /// This does not unref the `GSource`: if you still hold a reference, use
    /// g_source_unref() to drop it.
    func destroy() {
        g_source_destroy(cast(source_ptr))
    
    }

    /// Checks whether a source is allowed to be called recursively.
    /// see g_source_set_can_recurse().
    func getCanRecurse() -> Bool {
        let rv = g_source_get_can_recurse(cast(source_ptr))
        return Bool(rv != 0)
    }

    /// Gets the `GMainContext` with which the source is associated.
    /// 
    /// You can call this on a source that has been destroyed, provided
    /// that the `GMainContext` it was attached to still exists (in which
    /// case it will return that `GMainContext`). In particular, you can
    /// always call this function on the source returned from
    /// g_main_current_source(). But calling this function on a source
    /// whose `GMainContext` has been destroyed is an error.
    func getContext() -> UnsafeMutablePointer<GMainContext>! {
        let rv = g_source_get_context(cast(source_ptr))
        return cast(rv)
    }

    /// This function ignores `source` and is otherwise the same as
    /// g_get_current_time().
    ///
    /// **get_current_time is deprecated:**
    /// use g_source_get_time() instead
    @available(*, deprecated) func getCurrentTime(timeval: TimeValProtocol) {
        g_source_get_current_time(cast(source_ptr), cast(timeval.ptr))
    
    }

    /// Returns the numeric ID for a particular source. The ID of a source
    /// is a positive integer which is unique within a particular main loop
    /// context. The reverse
    /// mapping from ID to source is done by g_main_context_find_source_by_id().
    /// 
    /// You can only call this function while the source is associated to a
    /// `GMainContext` instance; calling this function before g_source_attach()
    /// or after g_source_destroy() yields undefined behavior. The ID returned
    /// is unique within the `GMainContext` instance passed to g_source_attach().
    func getID() -> CUnsignedInt {
        let rv = g_source_get_id(cast(source_ptr))
        return CUnsignedInt(rv)
    }

    /// Gets a name for the source, used in debugging and profiling.  The
    /// name may be `NULL` if it has never been set with g_source_set_name().
    func getName() -> String! {
        let rv = g_source_get_name(cast(source_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the priority of a source.
    func getPriority() -> CInt {
        let rv = g_source_get_priority(cast(source_ptr))
        return CInt(rv)
    }

    /// Gets the "ready time" of `source`, as set by
    /// g_source_set_ready_time().
    /// 
    /// Any time before the current monotonic time (including 0) is an
    /// indication that the source will fire immediately.
    func getReadyTime() -> Int64 {
        let rv = g_source_get_ready_time(cast(source_ptr))
        return Int64(rv)
    }

    /// Gets the time to be used when checking this source. The advantage of
    /// calling this function over calling g_get_monotonic_time() directly is
    /// that when checking multiple sources, GLib can cache a single value
    /// instead of having to repeatedly get the system monotonic time.
    /// 
    /// The time here is the system monotonic time, if available, or some
    /// other reasonable alternative otherwise.  See g_get_monotonic_time().
    func getTime() -> Int64 {
        let rv = g_source_get_time(cast(source_ptr))
        return Int64(rv)
    }

    /// Updates the event mask to watch for the fd identified by `tag`.
    /// 
    /// `tag` is the tag returned from g_source_add_unix_fd().
    /// 
    /// If you want to remove a fd, don't set its event mask to zero.
    /// Instead, call g_source_remove_unix_fd().
    /// 
    /// This API is only intended to be used by implementations of `GSource`.
    /// Do not call this API on a `GSource` that you did not create.
    /// 
    /// As the name suggests, this function is not available on Windows.
    func modifyUnixFd(tag: UnsafeMutableRawPointer, newEvents new_events: IOCondition) {
        g_source_modify_unix_fd(cast(source_ptr), cast(tag), new_events)
    
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
    func queryUnixFd(tag: UnsafeMutableRawPointer) -> GIOCondition {
        let rv = g_source_query_unix_fd(cast(source_ptr), cast(tag))
        return rv
    }

    /// Increases the reference count on a source by one.
    func ref() -> UnsafeMutablePointer<GSource>! {
        let rv = g_source_ref(cast(source_ptr))
        return cast(rv)
    }

    /// Detaches `child_source` from `source` and destroys it.
    /// 
    /// This API is only intended to be used by implementations of `GSource`.
    /// Do not call this API on a `GSource` that you did not create.
    func remove(childSource child_source: SourceProtocol) {
        g_source_remove_child_source(cast(source_ptr), cast(child_source.ptr))
    
    }

    /// Removes a file descriptor from the set of file descriptors polled for
    /// this source.
    /// 
    /// This API is only intended to be used by implementations of `GSource`.
    /// Do not call this API on a `GSource` that you did not create.
    func removePoll(fd: PollFDProtocol) {
        g_source_remove_poll(cast(source_ptr), cast(fd.ptr))
    
    }

    /// Reverses the effect of a previous call to g_source_add_unix_fd().
    /// 
    /// You only need to call this if you want to remove an fd from being
    /// watched while keeping the same source around.  In the normal case you
    /// will just want to destroy the source.
    /// 
    /// This API is only intended to be used by implementations of `GSource`.
    /// Do not call this API on a `GSource` that you did not create.
    /// 
    /// As the name suggests, this function is not available on Windows.
    func removeUnixFd(tag: UnsafeMutableRawPointer) {
        g_source_remove_unix_fd(cast(source_ptr), cast(tag))
    
    }

    /// Sets the callback function for a source. The callback for a source is
    /// called from the source's dispatch function.
    /// 
    /// The exact type of `func` depends on the type of source; ie. you
    /// should not count on `func` being called with `data` as its first
    /// parameter. Cast `func` with G_SOURCE_FUNC() to avoid warnings about
    /// incompatible function types.
    /// 
    /// See [memory management of sources][mainloop-memory-management] for details
    /// on how to handle memory management of `data`.
    /// 
    /// Typically, you won't use this function. Instead use functions specific
    /// to the type of source you are using, such as g_idle_add() or g_timeout_add().
    /// 
    /// It is safe to call this function multiple times on a source which has already
    /// been attached to a context. The changes will take effect for the next time
    /// the source is dispatched after this call returns.
    func setCallback(func_: @escaping SourceFunc, data: UnsafeMutableRawPointer, notify: @escaping DestroyNotify) {
        g_source_set_callback(cast(source_ptr), func_, cast(data), notify)
    
    }

    /// Sets the callback function storing the data as a refcounted callback
    /// "object". This is used internally. Note that calling
    /// g_source_set_callback_indirect() assumes
    /// an initial reference count on `callback_data`, and thus
    /// `callback_funcs`->unref will eventually be called once more
    /// than `callback_funcs`->ref.
    /// 
    /// It is safe to call this function multiple times on a source which has already
    /// been attached to a context. The changes will take effect for the next time
    /// the source is dispatched after this call returns.
    func setCallbackIndirect(callbackData callback_data: UnsafeMutableRawPointer, callbackFuncs callback_funcs: SourceCallbackFuncsProtocol) {
        g_source_set_callback_indirect(cast(source_ptr), cast(callback_data), cast(callback_funcs.ptr))
    
    }

    /// Sets whether a source can be called recursively. If `can_recurse` is
    /// `true`, then while the source is being dispatched then this source
    /// will be processed normally. Otherwise, all processing of this
    /// source is blocked until the dispatch function returns.
    func set(canRecurse can_recurse: Bool) {
        g_source_set_can_recurse(cast(source_ptr), gboolean(can_recurse ? 1 : 0))
    
    }

    /// Sets the source functions (can be used to override
    /// default implementations) of an unattached source.
    func set(funcs: SourceFuncsProtocol) {
        g_source_set_funcs(cast(source_ptr), cast(funcs.ptr))
    
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
    /// accessing it with g_source_get_name(); that function does not copy
    /// the value, and changing the value will free it while the other thread
    /// may be attempting to use it.
    func set(name: UnsafePointer<CChar>) {
        g_source_set_name(cast(source_ptr), name)
    
    }

    /// Sets the priority of a source. While the main loop is being run, a
    /// source will be dispatched if it is ready to be dispatched and no
    /// sources at a higher (numerically smaller) priority are ready to be
    /// dispatched.
    /// 
    /// A child source always has the same priority as its parent.  It is not
    /// permitted to change the priority of a source once it has been added
    /// as a child of another source.
    func set(priority: CInt) {
        g_source_set_priority(cast(source_ptr), gint(priority))
    
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
    /// destroyed with g_source_destroy().
    /// 
    /// This API is only intended to be used by implementations of `GSource`.
    /// Do not call this API on a `GSource` that you did not create.
    func set(readyTime ready_time: Int64) {
        g_source_set_ready_time(cast(source_ptr), gint64(ready_time))
    
    }

    /// Decreases the reference count of a source by one. If the
    /// resulting reference count is zero the source and associated
    /// memory will be destroyed.
    func unref() {
        g_source_unref(cast(source_ptr))
    
    }
    /// Checks whether a source is allowed to be called recursively.
    /// see g_source_set_can_recurse().
    var canRecurse: Bool {
        /// Checks whether a source is allowed to be called recursively.
        /// see g_source_set_can_recurse().
        get {
            let rv = g_source_get_can_recurse(cast(source_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether a source can be called recursively. If `can_recurse` is
        /// `true`, then while the source is being dispatched then this source
        /// will be processed normally. Otherwise, all processing of this
        /// source is blocked until the dispatch function returns.
        nonmutating set {
            g_source_set_can_recurse(cast(source_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Gets the `GMainContext` with which the source is associated.
    /// 
    /// You can call this on a source that has been destroyed, provided
    /// that the `GMainContext` it was attached to still exists (in which
    /// case it will return that `GMainContext`). In particular, you can
    /// always call this function on the source returned from
    /// g_main_current_source(). But calling this function on a source
    /// whose `GMainContext` has been destroyed is an error.
    var context: UnsafeMutablePointer<GMainContext>! {
        /// Gets the `GMainContext` with which the source is associated.
        /// 
        /// You can call this on a source that has been destroyed, provided
        /// that the `GMainContext` it was attached to still exists (in which
        /// case it will return that `GMainContext`). In particular, you can
        /// always call this function on the source returned from
        /// g_main_current_source(). But calling this function on a source
        /// whose `GMainContext` has been destroyed is an error.
        get {
            let rv = g_source_get_context(cast(source_ptr))
            return cast(rv)
        }
    }

    /// Returns the numeric ID for a particular source. The ID of a source
    /// is a positive integer which is unique within a particular main loop
    /// context. The reverse
    /// mapping from ID to source is done by g_main_context_find_source_by_id().
    /// 
    /// You can only call this function while the source is associated to a
    /// `GMainContext` instance; calling this function before g_source_attach()
    /// or after g_source_destroy() yields undefined behavior. The ID returned
    /// is unique within the `GMainContext` instance passed to g_source_attach().
    var id: CUnsignedInt {
        /// Returns the numeric ID for a particular source. The ID of a source
        /// is a positive integer which is unique within a particular main loop
        /// context. The reverse
        /// mapping from ID to source is done by g_main_context_find_source_by_id().
        /// 
        /// You can only call this function while the source is associated to a
        /// `GMainContext` instance; calling this function before g_source_attach()
        /// or after g_source_destroy() yields undefined behavior. The ID returned
        /// is unique within the `GMainContext` instance passed to g_source_attach().
        get {
            let rv = g_source_get_id(cast(source_ptr))
            return CUnsignedInt(rv)
        }
    }

    /// Returns whether `source` has been destroyed.
    /// 
    /// This is important when you operate upon your objects
    /// from within idle handlers, but may have freed the object
    /// before the dispatch of your idle handler.
    /// 
    /// |[<!-- language="C" -->
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
    /// ]|
    /// 
    /// This will fail in a multi-threaded application if the
    /// widget is destroyed before the idle handler fires due
    /// to the use after free in the callback. A solution, to
    /// this particular problem, is to check to if the source
    /// has already been destroy within the callback.
    /// 
    /// |[<!-- language="C" -->
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
    /// ]|
    /// 
    /// Calls to this function from a thread other than the one acquired by the
    /// `GMainContext` the `GSource` is attached to are typically redundant, as the
    /// source could be destroyed immediately after this function returns. However,
    /// once a source is destroyed it cannot be un-destroyed, so this function can be
    /// used for opportunistic checks from any thread.
    var isDestroyed: Bool {
        /// Returns whether `source` has been destroyed.
        /// 
        /// This is important when you operate upon your objects
        /// from within idle handlers, but may have freed the object
        /// before the dispatch of your idle handler.
        /// 
        /// |[<!-- language="C" -->
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
        /// ]|
        /// 
        /// This will fail in a multi-threaded application if the
        /// widget is destroyed before the idle handler fires due
        /// to the use after free in the callback. A solution, to
        /// this particular problem, is to check to if the source
        /// has already been destroy within the callback.
        /// 
        /// |[<!-- language="C" -->
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
        /// ]|
        /// 
        /// Calls to this function from a thread other than the one acquired by the
        /// `GMainContext` the `GSource` is attached to are typically redundant, as the
        /// source could be destroyed immediately after this function returns. However,
        /// once a source is destroyed it cannot be un-destroyed, so this function can be
        /// used for opportunistic checks from any thread.
        get {
            let rv = g_source_is_destroyed(cast(source_ptr))
            return Bool(rv != 0)
        }
    }

    /// Gets a name for the source, used in debugging and profiling.  The
    /// name may be `NULL` if it has never been set with g_source_set_name().
    var name: String! {
        /// Gets a name for the source, used in debugging and profiling.  The
        /// name may be `NULL` if it has never been set with g_source_set_name().
        get {
            let rv = g_source_get_name(cast(source_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
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
        /// accessing it with g_source_get_name(); that function does not copy
        /// the value, and changing the value will free it while the other thread
        /// may be attempting to use it.
        nonmutating set {
            g_source_set_name(cast(source_ptr), newValue)
        }
    }

    /// Gets the priority of a source.
    var priority: CInt {
        /// Gets the priority of a source.
        get {
            let rv = g_source_get_priority(cast(source_ptr))
            return CInt(rv)
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
            g_source_set_priority(cast(source_ptr), gint(newValue))
        }
    }

    /// Gets the "ready time" of `source`, as set by
    /// g_source_set_ready_time().
    /// 
    /// Any time before the current monotonic time (including 0) is an
    /// indication that the source will fire immediately.
    var readyTime: Int64 {
        /// Gets the "ready time" of `source`, as set by
        /// g_source_set_ready_time().
        /// 
        /// Any time before the current monotonic time (including 0) is an
        /// indication that the source will fire immediately.
        get {
            let rv = g_source_get_ready_time(cast(source_ptr))
            return Int64(rv)
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
        /// destroyed with g_source_destroy().
        /// 
        /// This API is only intended to be used by implementations of `GSource`.
        /// Do not call this API on a `GSource` that you did not create.
        nonmutating set {
            g_source_set_ready_time(cast(source_ptr), gint64(newValue))
        }
    }

    /// Gets the time to be used when checking this source. The advantage of
    /// calling this function over calling g_get_monotonic_time() directly is
    /// that when checking multiple sources, GLib can cache a single value
    /// instead of having to repeatedly get the system monotonic time.
    /// 
    /// The time here is the system monotonic time, if available, or some
    /// other reasonable alternative otherwise.  See g_get_monotonic_time().
    var time: Int64 {
        /// Gets the time to be used when checking this source. The advantage of
        /// calling this function over calling g_get_monotonic_time() directly is
        /// that when checking multiple sources, GLib can cache a single value
        /// instead of having to repeatedly get the system monotonic time.
        /// 
        /// The time here is the system monotonic time, if available, or some
        /// other reasonable alternative otherwise.  See g_get_monotonic_time().
        get {
            let rv = g_source_get_time(cast(source_ptr))
            return Int64(rv)
        }
    }
}



