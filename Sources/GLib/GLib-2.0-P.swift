import CGLib

// MARK: - PollFD Record

/// Represents a file descriptor, which events to poll for, and which events
/// occurred.
///
/// The `PollFDProtocol` protocol exposes the methods and properties of an underlying `GPollFD` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PollFD`.
/// Alternatively, use `PollFDRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol PollFDProtocol {
        /// Untyped pointer to the underlying `GPollFD` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GPollFD` instance.
    var pollfd_ptr: UnsafeMutablePointer<GPollFD>! { get }

    /// Required Initialiser for types conforming to `PollFDProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Represents a file descriptor, which events to poll for, and which events
/// occurred.
///
/// The `PollFDRef` type acts as a lightweight Swift reference to an underlying `GPollFD` instance.
/// It exposes methods that can operate on this data type through `PollFDProtocol` conformance.
/// Use `PollFDRef` only as an `unowned` reference to an existing `GPollFD` instance.
///
public struct PollFDRef: PollFDProtocol {
        /// Untyped pointer to the underlying `GPollFD` instance.
    /// For type-safe access, use the generated, typed pointer `pollfd_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PollFDRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GPollFD>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GPollFD>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GPollFD>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GPollFD>?) {
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

    /// Reference intialiser for a related type that implements `PollFDProtocol`
    @inlinable init<T: PollFDProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollFDProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollFDProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollFDProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollFDProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollFDProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// Represents a file descriptor, which events to poll for, and which events
/// occurred.
///
/// The `PollFD` type acts as an owner of an underlying `GPollFD` instance.
/// It provides the methods that can operate on this data type through `PollFDProtocol` conformance.
/// Use `PollFD` as a strong reference or owner of a `GPollFD` instance.
///
open class PollFD: PollFDProtocol {
        /// Untyped pointer to the underlying `GPollFD` instance.
    /// For type-safe access, use the generated, typed pointer `pollfd_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PollFD` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GPollFD>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PollFD` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GPollFD>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PollFD` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PollFD` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PollFD` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GPollFD>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PollFD` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GPollFD>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GPollFD` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `PollFD` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GPollFD>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GPollFD, cannot ref(pollfd_ptr)
    }

    /// Reference intialiser for a related type that implements `PollFDProtocol`
    /// `GPollFD` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `PollFDProtocol`
    @inlinable public init<T: PollFDProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GPollFD, cannot ref(pollfd_ptr)
    }

    /// Do-nothing destructor for `GPollFD`.
    deinit {
        // no reference counting for GPollFD, cannot unref(pollfd_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollFDProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollFDProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GPollFD, cannot ref(pollfd_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollFDProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollFDProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GPollFD, cannot ref(pollfd_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollFDProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollFDProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GPollFD, cannot ref(pollfd_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollFDProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollFDProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GPollFD, cannot ref(pollfd_ptr)
    }



}

// MARK: no PollFD properties

// MARK: no PollFD signals

// MARK: PollFD has no signals
// MARK: PollFD Record: PollFDProtocol extension (methods and fields)
public extension PollFDProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GPollFD` instance.
    @inlinable var pollfd_ptr: UnsafeMutablePointer<GPollFD>! { return ptr?.assumingMemoryBound(to: GPollFD.self) }

    /// Polls `fds`, as with the `poll()` system call, but portably. (On
    /// systems that don't have `poll()`, it is emulated using `select()`.)
    /// This is used internally by `GMainContext`, but it can be called
    /// directly if you need to block until a file descriptor is ready, but
    /// don't want to run the full main loop.
    /// 
    /// Each element of `fds` is a `GPollFD` describing a single file
    /// descriptor to poll. The `fd` field indicates the file descriptor,
    /// and the `events` field indicates the events to poll for. On return,
    /// the `revents` fields will be filled with the events that actually
    /// occurred.
    /// 
    /// On POSIX systems, the file descriptors in `fds` can be any sort of
    /// file descriptor, but the situation is much more complicated on
    /// Windows. If you need to use `g_poll()` in code that has to run on
    /// Windows, the easiest solution is to construct all of your
    /// `GPollFDs` with `g_io_channel_win32_make_pollfd()`.
    @inlinable func poll(nfds: Int, timeout: Int) -> Int {
        let rv = Int(g_poll(pollfd_ptr, guint(nfds), gint(timeout)))
        return rv
    }

    /// the file descriptor to poll (or a HANDLE on Win32)
    @inlinable var fd: gint {
        /// the file descriptor to poll (or a HANDLE on Win32)
        get {
            let rv = pollfd_ptr.pointee.fd
            return rv
        }
        /// the file descriptor to poll (or a HANDLE on Win32)
         set {
            pollfd_ptr.pointee.fd = newValue
        }
    }

    /// a bitwise combination from `GIOCondition`, specifying which
    ///     events should be polled for. Typically for reading from a file
    ///     descriptor you would use `G_IO_IN` | `G_IO_HUP` | `G_IO_ERR`, and
    ///     for writing you would use `G_IO_OUT` | `G_IO_ERR`.
    @inlinable var events: gushort {
        /// a bitwise combination from `GIOCondition`, specifying which
        ///     events should be polled for. Typically for reading from a file
        ///     descriptor you would use `G_IO_IN` | `G_IO_HUP` | `G_IO_ERR`, and
        ///     for writing you would use `G_IO_OUT` | `G_IO_ERR`.
        get {
            let rv = pollfd_ptr.pointee.events
            return rv
        }
        /// a bitwise combination from `GIOCondition`, specifying which
        ///     events should be polled for. Typically for reading from a file
        ///     descriptor you would use `G_IO_IN` | `G_IO_HUP` | `G_IO_ERR`, and
        ///     for writing you would use `G_IO_OUT` | `G_IO_ERR`.
         set {
            pollfd_ptr.pointee.events = newValue
        }
    }

    /// a bitwise combination of flags from `GIOCondition`, returned
    ///     from the `poll()` function to indicate which events occurred.
    @inlinable var revents: gushort {
        /// a bitwise combination of flags from `GIOCondition`, returned
        ///     from the `poll()` function to indicate which events occurred.
        get {
            let rv = pollfd_ptr.pointee.revents
            return rv
        }
        /// a bitwise combination of flags from `GIOCondition`, returned
        ///     from the `poll()` function to indicate which events occurred.
         set {
            pollfd_ptr.pointee.revents = newValue
        }
    }

}



// MARK: - Private Record

/// The `GPrivate` struct is an opaque data structure to represent a
/// thread-local data key. It is approximately equivalent to the
/// `pthread_setspecific()``/pthread_getspecific()` APIs on POSIX and to
/// `TlsSetValue()``/TlsGetValue()` on Windows.
/// 
/// If you don't already know why you might want this functionality,
/// then you probably don't need it.
/// 
/// `GPrivate` is a very limited resource (as far as 128 per program,
/// shared between all libraries). It is also not possible to destroy a
/// `GPrivate` after it has been used. As such, it is only ever acceptable
/// to use `GPrivate` in static scope, and even then sparingly so.
/// 
/// See `G_PRIVATE_INIT()` for a couple of examples.
/// 
/// The `GPrivate` structure should be considered opaque.  It should only
/// be accessed via the g_private_ functions.
///
/// The `PrivateProtocol` protocol exposes the methods and properties of an underlying `GPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Private`.
/// Alternatively, use `PrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol PrivateProtocol {
        /// Untyped pointer to the underlying `GPrivate` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GPrivate` instance.
    var _ptr: UnsafeMutablePointer<GPrivate>! { get }

    /// Required Initialiser for types conforming to `PrivateProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `GPrivate` struct is an opaque data structure to represent a
/// thread-local data key. It is approximately equivalent to the
/// `pthread_setspecific()``/pthread_getspecific()` APIs on POSIX and to
/// `TlsSetValue()``/TlsGetValue()` on Windows.
/// 
/// If you don't already know why you might want this functionality,
/// then you probably don't need it.
/// 
/// `GPrivate` is a very limited resource (as far as 128 per program,
/// shared between all libraries). It is also not possible to destroy a
/// `GPrivate` after it has been used. As such, it is only ever acceptable
/// to use `GPrivate` in static scope, and even then sparingly so.
/// 
/// See `G_PRIVATE_INIT()` for a couple of examples.
/// 
/// The `GPrivate` structure should be considered opaque.  It should only
/// be accessed via the g_private_ functions.
///
/// The `PrivateRef` type acts as a lightweight Swift reference to an underlying `GPrivate` instance.
/// It exposes methods that can operate on this data type through `PrivateProtocol` conformance.
/// Use `PrivateRef` only as an `unowned` reference to an existing `GPrivate` instance.
///
public struct PrivateRef: PrivateProtocol {
        /// Untyped pointer to the underlying `GPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PrivateRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GPrivate>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GPrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GPrivate>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GPrivate>?) {
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

    /// Reference intialiser for a related type that implements `PrivateProtocol`
    @inlinable init<T: PrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrivateProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrivateProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrivateProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrivateProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrivateProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `GPrivate` struct is an opaque data structure to represent a
/// thread-local data key. It is approximately equivalent to the
/// `pthread_setspecific()``/pthread_getspecific()` APIs on POSIX and to
/// `TlsSetValue()``/TlsGetValue()` on Windows.
/// 
/// If you don't already know why you might want this functionality,
/// then you probably don't need it.
/// 
/// `GPrivate` is a very limited resource (as far as 128 per program,
/// shared between all libraries). It is also not possible to destroy a
/// `GPrivate` after it has been used. As such, it is only ever acceptable
/// to use `GPrivate` in static scope, and even then sparingly so.
/// 
/// See `G_PRIVATE_INIT()` for a couple of examples.
/// 
/// The `GPrivate` structure should be considered opaque.  It should only
/// be accessed via the g_private_ functions.
///
/// The `Private` type acts as an owner of an underlying `GPrivate` instance.
/// It provides the methods that can operate on this data type through `PrivateProtocol` conformance.
/// Use `Private` as a strong reference or owner of a `GPrivate` instance.
///
open class Private: PrivateProtocol {
        /// Untyped pointer to the underlying `GPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Private` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Private` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GPrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Private` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Private` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Private` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GPrivate>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Private` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GPrivate>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Private` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GPrivate, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `PrivateProtocol`
    /// `GPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `PrivateProtocol`
    @inlinable public init<T: PrivateProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GPrivate, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GPrivate`.
    deinit {
        // no reference counting for GPrivate, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrivateProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GPrivate, cannot ref(_ptr)
    }



}

// MARK: no Private properties

// MARK: no Private signals

// MARK: Private has no signals
// MARK: Private Record: PrivateProtocol extension (methods and fields)
public extension PrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GPrivate` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GPrivate>! { return ptr?.assumingMemoryBound(to: GPrivate.self) }

    /// Returns the current value of the thread local variable `key`.
    /// 
    /// If the value has not yet been set in this thread, `nil` is returned.
    /// Values are never copied between threads (when a new thread is
    /// created, for example).
    @inlinable func get() -> gpointer! {
        let rv = g_private_get(_ptr)
        return rv
    }

    /// Sets the thread local variable `key` to have the value `value` in the
    /// current thread.
    /// 
    /// This function differs from `g_private_set()` in the following way: if
    /// the previous value was non-`nil` then the `GDestroyNotify` handler for
    /// `key` is run on it.
    @inlinable func replace(value: gpointer! = nil) {
        g_private_replace(_ptr, value)
    
    }

    /// Sets the thread local variable `key` to have the value `value` in the
    /// current thread.
    /// 
    /// This function differs from `g_private_replace()` in the following way:
    /// the `GDestroyNotify` for `key` is not called on the old value.
    @inlinable func set(value: gpointer! = nil) {
        g_private_set(_ptr, value)
    
    }

    // var p is unavailable because p is private

    // var notify is unavailable because notify is private

    // var future is unavailable because future is private

}



// MARK: - PtrArray Record

/// Contains the public fields of a pointer array.
///
/// The `PtrArrayProtocol` protocol exposes the methods and properties of an underlying `GPtrArray` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PtrArray`.
/// Alternatively, use `PtrArrayRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol PtrArrayProtocol {
        /// Untyped pointer to the underlying `GPtrArray` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GPtrArray` instance.
    var ptr_array_ptr: UnsafeMutablePointer<GPtrArray>! { get }

    /// Required Initialiser for types conforming to `PtrArrayProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Contains the public fields of a pointer array.
///
/// The `PtrArrayRef` type acts as a lightweight Swift reference to an underlying `GPtrArray` instance.
/// It exposes methods that can operate on this data type through `PtrArrayProtocol` conformance.
/// Use `PtrArrayRef` only as an `unowned` reference to an existing `GPtrArray` instance.
///
public struct PtrArrayRef: PtrArrayProtocol {
        /// Untyped pointer to the underlying `GPtrArray` instance.
    /// For type-safe access, use the generated, typed pointer `ptr_array_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PtrArrayRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GPtrArray>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GPtrArray>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GPtrArray>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GPtrArray>?) {
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

    /// Reference intialiser for a related type that implements `PtrArrayProtocol`
    @inlinable init<T: PtrArrayProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// Contains the public fields of a pointer array.
///
/// The `PtrArray` type acts as an owner of an underlying `GPtrArray` instance.
/// It provides the methods that can operate on this data type through `PtrArrayProtocol` conformance.
/// Use `PtrArray` as a strong reference or owner of a `GPtrArray` instance.
///
open class PtrArray: PtrArrayProtocol {
        /// Untyped pointer to the underlying `GPtrArray` instance.
    /// For type-safe access, use the generated, typed pointer `ptr_array_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PtrArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GPtrArray>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PtrArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GPtrArray>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PtrArray` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PtrArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PtrArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GPtrArray>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PtrArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GPtrArray>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GPtrArray` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `PtrArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GPtrArray>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GPtrArray, cannot ref(ptr_array_ptr)
    }

    /// Reference intialiser for a related type that implements `PtrArrayProtocol`
    /// `GPtrArray` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `PtrArrayProtocol`
    @inlinable public init<T: PtrArrayProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GPtrArray, cannot ref(ptr_array_ptr)
    }

    /// Do-nothing destructor for `GPtrArray`.
    deinit {
        // no reference counting for GPtrArray, cannot unref(ptr_array_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GPtrArray, cannot ref(ptr_array_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GPtrArray, cannot ref(ptr_array_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GPtrArray, cannot ref(ptr_array_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GPtrArray, cannot ref(ptr_array_ptr)
    }



}

// MARK: no PtrArray properties

// MARK: no PtrArray signals

// MARK: PtrArray has no signals
// MARK: PtrArray Record: PtrArrayProtocol extension (methods and fields)
public extension PtrArrayProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GPtrArray` instance.
    @inlinable var ptr_array_ptr: UnsafeMutablePointer<GPtrArray>! { return ptr?.assumingMemoryBound(to: GPtrArray.self) }


    /// points to the array of pointers, which may be moved when the
    ///     array grows
    @inlinable var pdata: UnsafeMutablePointer<gpointer?>! {
        /// points to the array of pointers, which may be moved when the
        ///     array grows
        get {
            let rv = ptr_array_ptr.pointee.pdata
            return rv
        }
        /// points to the array of pointers, which may be moved when the
        ///     array grows
         set {
            ptr_array_ptr.pointee.pdata = newValue
        }
    }

    /// number of pointers in the array
    @inlinable var len: guint {
        /// number of pointers in the array
        get {
            let rv = ptr_array_ptr.pointee.len
            return rv
        }
        /// number of pointers in the array
         set {
            ptr_array_ptr.pointee.len = newValue
        }
    }

}



// MARK: - Queue Record

/// Contains the public fields of a
/// [Queue](../Protocols/QueueProtocol.html).
///
/// The `QueueProtocol` protocol exposes the methods and properties of an underlying `GQueue` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Queue`.
/// Alternatively, use `QueueRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol QueueProtocol {
        /// Untyped pointer to the underlying `GQueue` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GQueue` instance.
    var _ptr: UnsafeMutablePointer<GQueue>! { get }

    /// Required Initialiser for types conforming to `QueueProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Contains the public fields of a
/// [Queue](../Protocols/QueueProtocol.html).
///
/// The `QueueRef` type acts as a lightweight Swift reference to an underlying `GQueue` instance.
/// It exposes methods that can operate on this data type through `QueueProtocol` conformance.
/// Use `QueueRef` only as an `unowned` reference to an existing `GQueue` instance.
///
public struct QueueRef: QueueProtocol {
        /// Untyped pointer to the underlying `GQueue` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension QueueRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GQueue>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GQueue>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GQueue>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GQueue>?) {
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

    /// Reference intialiser for a related type that implements `QueueProtocol`
    @inlinable init<T: QueueProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `QueueProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `QueueProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `QueueProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `QueueProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `QueueProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// Contains the public fields of a
/// [Queue](../Protocols/QueueProtocol.html).
///
/// The `Queue` type acts as an owner of an underlying `GQueue` instance.
/// It provides the methods that can operate on this data type through `QueueProtocol` conformance.
/// Use `Queue` as a strong reference or owner of a `GQueue` instance.
///
open class Queue: QueueProtocol {
        /// Untyped pointer to the underlying `GQueue` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Queue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GQueue>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Queue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GQueue>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Queue` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Queue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Queue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GQueue>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Queue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GQueue>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GQueue` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Queue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GQueue>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GQueue, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `QueueProtocol`
    /// `GQueue` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `QueueProtocol`
    @inlinable public init<T: QueueProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GQueue, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GQueue`.
    deinit {
        // no reference counting for GQueue, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `QueueProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `QueueProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GQueue, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `QueueProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `QueueProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GQueue, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `QueueProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `QueueProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GQueue, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `QueueProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `QueueProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GQueue, cannot ref(_ptr)
    }



}

// MARK: no Queue properties

// MARK: no Queue signals

// MARK: Queue has no signals
// MARK: Queue Record: QueueProtocol extension (methods and fields)
public extension QueueProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GQueue` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GQueue>! { return ptr?.assumingMemoryBound(to: GQueue.self) }

    /// Removes all the elements in `queue`. If queue elements contain
    /// dynamically-allocated memory, they should be freed first.
    @inlinable func clear() {
        g_queue_clear(_ptr)
    
    }

    /// Convenience method, which frees all the memory used by a `GQueue`,
    /// and calls the provided `free_func` on each item in the `GQueue`.
    @inlinable func clearFull(freeFunc: GDestroyNotify? = nil) {
        g_queue_clear_full(_ptr, freeFunc)
    
    }

    /// Copies a `queue`. Note that is a shallow copy. If the elements in the
    /// queue consist of pointers to data, the pointers are copied, but the
    /// actual data is not.
    @inlinable func copy() -> QueueRef! {
        guard let rv = QueueRef(gconstpointer: gconstpointer(g_queue_copy(_ptr))) else { return nil }
        return rv
    }

    /// Removes `link_` from `queue` and frees it.
    /// 
    /// `link_` must be part of `queue`.
    @inlinable func delete<ListT: ListProtocol>(link: ListT) {
        g_queue_delete_link(_ptr, link._ptr)
    
    }

    /// Finds the first link in `queue` which contains `data`.
    @inlinable func find(data: gconstpointer! = nil) -> GLib.ListRef! {
        let rv = GLib.ListRef(g_queue_find(_ptr, data))
        return rv
    }

    /// Finds an element in a `GQueue`, using a supplied function to find the
    /// desired element. It iterates over the queue, calling the given function
    /// which should return 0 when the desired element is found. The function
    /// takes two gconstpointer arguments, the `GQueue` element's data as the
    /// first argument and the given user data as the second argument.
    @inlinable func findCustom(data: gconstpointer! = nil, `func`: GCompareFunc?) -> GLib.ListRef! {
        let rv = GLib.ListRef(g_queue_find_custom(_ptr, data, `func`))
        return rv
    }

    /// Calls `func` for each element in the queue passing `user_data` to the
    /// function.
    /// 
    /// It is safe for `func` to remove the element from `queue`, but it must
    /// not modify any part of the queue after that element.
    @inlinable func foreach(`func`: GFunc?, userData: gpointer! = nil) {
        g_queue_foreach(_ptr, `func`, userData)
    
    }

    /// Frees the memory allocated for the `GQueue`. Only call this function
    /// if `queue` was created with `g_queue_new()`. If queue elements contain
    /// dynamically-allocated memory, they should be freed first.
    /// 
    /// If queue elements contain dynamically-allocated memory, you should
    /// either use `g_queue_free_full()` or free them manually first.
    @inlinable func free() {
        g_queue_free(_ptr)
    
    }

    /// Convenience method, which frees all the memory used by a `GQueue`,
    /// and calls the specified destroy function on every element's data.
    /// 
    /// `free_func` should not modify the queue (eg, by removing the freed
    /// element from it).
    @inlinable func freeFull(freeFunc: GDestroyNotify?) {
        g_queue_free_full(_ptr, freeFunc)
    
    }

    /// Returns the number of items in `queue`.
    @inlinable func getLength() -> Int {
        let rv = Int(g_queue_get_length(_ptr))
        return rv
    }

    /// Returns the position of the first element in `queue` which contains `data`.
    @inlinable func index(data: gconstpointer! = nil) -> Int {
        let rv = Int(g_queue_index(_ptr, data))
        return rv
    }

    /// A statically-allocated `GQueue` must be initialized with this function
    /// before it can be used. Alternatively you can initialize it with
    /// `G_QUEUE_INIT`. It is not necessary to initialize queues created with
    /// `g_queue_new()`.
    @inlinable func init_() {
        g_queue_init(_ptr)
    
    }

    /// Inserts `data` into `queue` after `sibling`.
    /// 
    /// `sibling` must be part of `queue`. Since GLib 2.44 a `nil` sibling pushes the
    /// data at the head of the queue.
    @inlinable func insertAfter(sibling: ListRef? = nil, data: gpointer! = nil) {
        g_queue_insert_after(_ptr, sibling?._ptr, data)
    
    }
    /// Inserts `data` into `queue` after `sibling`.
    /// 
    /// `sibling` must be part of `queue`. Since GLib 2.44 a `nil` sibling pushes the
    /// data at the head of the queue.
    @inlinable func insertAfter<ListT: ListProtocol>(sibling: ListT?, data: gpointer! = nil) {
        g_queue_insert_after(_ptr, sibling?._ptr, data)
    
    }

    /// Inserts `link_` into `queue` after `sibling`.
    /// 
    /// `sibling` must be part of `queue`.
    @inlinable func insertAfterLink<ListT: ListProtocol>(sibling: ListT?, link: ListT) {
        g_queue_insert_after_link(_ptr, sibling?._ptr, link._ptr)
    
    }

    /// Inserts `data` into `queue` before `sibling`.
    /// 
    /// `sibling` must be part of `queue`. Since GLib 2.44 a `nil` sibling pushes the
    /// data at the tail of the queue.
    @inlinable func insertBefore(sibling: ListRef? = nil, data: gpointer! = nil) {
        g_queue_insert_before(_ptr, sibling?._ptr, data)
    
    }
    /// Inserts `data` into `queue` before `sibling`.
    /// 
    /// `sibling` must be part of `queue`. Since GLib 2.44 a `nil` sibling pushes the
    /// data at the tail of the queue.
    @inlinable func insertBefore<ListT: ListProtocol>(sibling: ListT?, data: gpointer! = nil) {
        g_queue_insert_before(_ptr, sibling?._ptr, data)
    
    }

    /// Inserts `link_` into `queue` before `sibling`.
    /// 
    /// `sibling` must be part of `queue`.
    @inlinable func insertBeforeLink<ListT: ListProtocol>(sibling: ListT?, link: ListT) {
        g_queue_insert_before_link(_ptr, sibling?._ptr, link._ptr)
    
    }

    /// Inserts `data` into `queue` using `func` to determine the new position.
    @inlinable func insertSorted(data: gpointer! = nil, `func`: GCompareDataFunc?, userData: gpointer! = nil) {
        g_queue_insert_sorted(_ptr, data, `func`, userData)
    
    }

    /// Returns the position of `link_` in `queue`.
    @inlinable func linkIndex<ListT: ListProtocol>(link: ListT) -> Int {
        let rv = Int(g_queue_link_index(_ptr, link._ptr))
        return rv
    }

    /// Returns the first element of the queue.
    @inlinable func peekHead() -> gpointer! {
        let rv = g_queue_peek_head(_ptr)
        return rv
    }

    /// Returns the first link in `queue`.
    @inlinable func peekHeadLink() -> GLib.ListRef! {
        let rv = GLib.ListRef(g_queue_peek_head_link(_ptr))
        return rv
    }

    /// Returns the `n`'th element of `queue`.
    @inlinable func peekNth(n: Int) -> gpointer! {
        let rv = g_queue_peek_nth(_ptr, guint(n))
        return rv
    }

    /// Returns the link at the given position
    @inlinable func peekNthLink(n: Int) -> GLib.ListRef! {
        let rv = GLib.ListRef(g_queue_peek_nth_link(_ptr, guint(n)))
        return rv
    }

    /// Returns the last element of the queue.
    @inlinable func peekTail() -> gpointer! {
        let rv = g_queue_peek_tail(_ptr)
        return rv
    }

    /// Returns the last link in `queue`.
    @inlinable func peekTailLink() -> GLib.ListRef! {
        let rv = GLib.ListRef(g_queue_peek_tail_link(_ptr))
        return rv
    }

    /// Removes the first element of the queue and returns its data.
    @inlinable func popHead() -> gpointer! {
        let rv = g_queue_pop_head(_ptr)
        return rv
    }

    /// Removes and returns the first element of the queue.
    @inlinable func popHeadLink() -> GLib.ListRef! {
        let rv = GLib.ListRef(g_queue_pop_head_link(_ptr))
        return rv
    }

    /// Removes the `n`'th element of `queue` and returns its data.
    @inlinable func popNth(n: Int) -> gpointer! {
        let rv = g_queue_pop_nth(_ptr, guint(n))
        return rv
    }

    /// Removes and returns the link at the given position.
    @inlinable func popNthLink(n: Int) -> GLib.ListRef! {
        let rv = GLib.ListRef(g_queue_pop_nth_link(_ptr, guint(n)))
        return rv
    }

    /// Removes the last element of the queue and returns its data.
    @inlinable func popTail() -> gpointer! {
        let rv = g_queue_pop_tail(_ptr)
        return rv
    }

    /// Removes and returns the last element of the queue.
    @inlinable func popTailLink() -> GLib.ListRef! {
        let rv = GLib.ListRef(g_queue_pop_tail_link(_ptr))
        return rv
    }

    /// Adds a new element at the head of the queue.
    @inlinable func pushHead(data: gpointer! = nil) {
        g_queue_push_head(_ptr, data)
    
    }

    /// Adds a new element at the head of the queue.
    @inlinable func pushHead<ListT: ListProtocol>(link: ListT) {
        g_queue_push_head_link(_ptr, link._ptr)
    
    }

    /// Inserts a new element into `queue` at the given position.
    @inlinable func pushNth(data: gpointer! = nil, n: Int) {
        g_queue_push_nth(_ptr, data, gint(n))
    
    }

    /// Inserts `link` into `queue` at the given position.
    @inlinable func pushNthLink<ListT: ListProtocol>(n: Int, link: ListT) {
        g_queue_push_nth_link(_ptr, gint(n), link._ptr)
    
    }

    /// Adds a new element at the tail of the queue.
    @inlinable func pushTail(data: gpointer! = nil) {
        g_queue_push_tail(_ptr, data)
    
    }

    /// Adds a new element at the tail of the queue.
    @inlinable func pushTail<ListT: ListProtocol>(link: ListT) {
        g_queue_push_tail_link(_ptr, link._ptr)
    
    }

    /// Removes the first element in `queue` that contains `data`.
    @inlinable func remove(data: gconstpointer! = nil) -> Bool {
        let rv = ((g_queue_remove(_ptr, data)) != 0)
        return rv
    }

    /// Remove all elements whose data equals `data` from `queue`.
    @inlinable func removeAll(data: gconstpointer! = nil) -> Int {
        let rv = Int(g_queue_remove_all(_ptr, data))
        return rv
    }

    /// Reverses the order of the items in `queue`.
    @inlinable func reverse() {
        g_queue_reverse(_ptr)
    
    }

    /// Sorts `queue` using `compare_func`.
    @inlinable func sort(compareFunc: GCompareDataFunc?, userData: gpointer! = nil) {
        g_queue_sort(_ptr, compareFunc, userData)
    
    }

    /// Unlinks `link_` so that it will no longer be part of `queue`.
    /// The link is not freed.
    /// 
    /// `link_` must be part of `queue`.
    @inlinable func unlink<ListT: ListProtocol>(link: ListT) {
        g_queue_unlink(_ptr, link._ptr)
    
    }
    /// Returns `true` if the queue is empty.
    @inlinable var isEmpty: Bool {
        /// Returns `true` if the queue is empty.
        get {
            let rv = ((g_queue_is_empty(_ptr)) != 0)
            return rv
        }
    }

    /// Returns the number of items in `queue`.
    @inlinable var length: Int {
        /// Returns the number of items in `queue`.
        get {
            let rv = Int(g_queue_get_length(_ptr))
            return rv
        }
    }

    /// a pointer to the first element of the queue
    @inlinable var head: ListRef! {
        /// a pointer to the first element of the queue
        get {
            let rv = ListRef(gconstpointer: gconstpointer(_ptr.pointee.head))
            return rv
        }
        /// a pointer to the first element of the queue
         set {
            _ptr.pointee.head = UnsafeMutablePointer<GList>(newValue._ptr)
        }
    }

    /// a pointer to the last element of the queue
    @inlinable var tail: ListRef! {
        /// a pointer to the last element of the queue
        get {
            let rv = ListRef(gconstpointer: gconstpointer(_ptr.pointee.tail))
            return rv
        }
        /// a pointer to the last element of the queue
         set {
            _ptr.pointee.tail = UnsafeMutablePointer<GList>(newValue._ptr)
        }
    }

    /// the number of elements in the queue
    @inlinable var _length: guint {
        /// the number of elements in the queue
        get {
            let rv = _ptr.pointee.length
            return rv
        }
        /// the number of elements in the queue
         set {
            _ptr.pointee.length = newValue
        }
    }

}



