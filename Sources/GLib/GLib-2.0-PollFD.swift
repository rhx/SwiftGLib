import CGLib

// MARK: - PollFD Record

/// The `PollFDProtocol` protocol exposes the methods and properties of an underlying `GPollFD` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PollFD`.
/// Alternatively, use `PollFDRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Represents a file descriptor, which events to poll for, and which events
/// occurred.
public protocol PollFDProtocol {
    /// Untyped pointer to the underlying `GPollFD` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GPollFD` instance.
    var pollfd_ptr: UnsafeMutablePointer<GPollFD> { get }
}

/// The `PollFDRef` type acts as a lightweight Swift reference to an underlying `GPollFD` instance.
/// It exposes methods that can operate on this data type through `PollFDProtocol` conformance.
/// Use `PollFDRef` only as an `unowned` reference to an existing `GPollFD` instance.
///
/// Represents a file descriptor, which events to poll for, and which events
/// occurred.
public struct PollFDRef: PollFDProtocol {
    /// Untyped pointer to the underlying `GPollFD` instance.
    /// For type-safe access, use the generated, typed pointer `pollfd_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PollFDRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GPollFD>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PollFDProtocol`
    init<T: PollFDProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollFDProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollFDProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollFDProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollFDProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollFDProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PollFD` type acts as an owner of an underlying `GPollFD` instance.
/// It provides the methods that can operate on this data type through `PollFDProtocol` conformance.
/// Use `PollFD` as a strong reference or owner of a `GPollFD` instance.
///
/// Represents a file descriptor, which events to poll for, and which events
/// occurred.
open class PollFD: PollFDProtocol {
    /// Untyped pointer to the underlying `GPollFD` instance.
    /// For type-safe access, use the generated, typed pointer `pollfd_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `PollFD` instance.
    public init(_ op: UnsafeMutablePointer<GPollFD>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `PollFDProtocol`
    /// `GPollFD` does not allow reference counting.
    public convenience init<T: PollFDProtocol>(_ other: T) {
        self.init(cast(other.pollfd_ptr))
        // no reference counting for GPollFD, cannot ref(cast(pollfd_ptr))
    }

    /// Do-nothing destructor for`GPollFD`.
    deinit {
        // no reference counting for GPollFD, cannot unref(cast(pollfd_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollFDProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GPollFD.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollFDProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GPollFD.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollFDProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GPollFD.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollFDProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GPollFD>(opaquePointer))
    }



}

// MARK: - no PollFD properties

// MARK: - no signals


public extension PollFDProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GPollFD` instance.
    var pollfd_ptr: UnsafeMutablePointer<GPollFD> { return ptr.assumingMemoryBound(to: GPollFD.self) }

    /// Polls `fds`, as with the poll() system call, but portably. (On
    /// systems that don't have poll(), it is emulated using select().)
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
    /// Windows. If you need to use g_poll() in code that has to run on
    /// Windows, the easiest solution is to construct all of your
    /// `GPollFDs` with g_io_channel_win32_make_pollfd().
    func poll(nfds: CUnsignedInt, timeout: CInt) -> CInt {
        let rv = g_poll(cast(pollfd_ptr), guint(nfds), gint(timeout))
        return CInt(rv)
    }
}



