import CGLib

// MARK: - Timer Record

/// The `TimerProtocol` protocol exposes the methods and properties of an underlying `GTimer` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Timer`.
/// Alternatively, use `TimerRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Opaque datatype that records a start time.
public protocol TimerProtocol {
    /// Untyped pointer to the underlying `GTimer` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GTimer` instance.
    var _ptr: UnsafeMutablePointer<GTimer> { get }
}

/// The `TimerRef` type acts as a lightweight Swift reference to an underlying `GTimer` instance.
/// It exposes methods that can operate on this data type through `TimerProtocol` conformance.
/// Use `TimerRef` only as an `unowned` reference to an existing `GTimer` instance.
///
/// Opaque datatype that records a start time.
public struct TimerRef: TimerProtocol {
    /// Untyped pointer to the underlying `GTimer` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TimerRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GTimer>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TimerProtocol`
    init<T: TimerProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimerProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimerProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimerProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimerProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimerProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Timer` type acts as an owner of an underlying `GTimer` instance.
/// It provides the methods that can operate on this data type through `TimerProtocol` conformance.
/// Use `Timer` as a strong reference or owner of a `GTimer` instance.
///
/// Opaque datatype that records a start time.
open class Timer: TimerProtocol {
    /// Untyped pointer to the underlying `GTimer` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Timer` instance.
    public init(_ op: UnsafeMutablePointer<GTimer>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TimerProtocol`
    /// `GTimer` does not allow reference counting.
    public convenience init<T: TimerProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GTimer, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GTimer`.
    deinit {
        // no reference counting for GTimer, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimerProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GTimer.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimerProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GTimer.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimerProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GTimer.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimerProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GTimer>(opaquePointer))
    }



}

// MARK: - no Timer properties

// MARK: - no signals


public extension TimerProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTimer` instance.
    var _ptr: UnsafeMutablePointer<GTimer> { return ptr.assumingMemoryBound(to: GTimer.self) }

    /// Resumes a timer that has previously been stopped with
    /// g_timer_stop(). g_timer_stop() must be called before using this
    /// function.
    func continue_() {
        g_timer_continue(cast(_ptr))
    
    }

    /// Destroys a timer, freeing associated resources.
    func destroy() {
        g_timer_destroy(cast(_ptr))
    
    }

    /// If `timer` has been started but not stopped, obtains the time since
    /// the timer was started. If `timer` has been stopped, obtains the
    /// elapsed time between the time it was started and the time it was
    /// stopped. The return value is the number of seconds elapsed,
    /// including any fractional part. The `microseconds` out parameter is
    /// essentially useless.
    func elapsed(microseconds: UnsafeMutablePointer<CUnsignedLong>) -> gdouble {
        let rv = g_timer_elapsed(cast(_ptr), cast(microseconds))
        return rv
    }

    /// This function is useless; it's fine to call g_timer_start() on an
    /// already-started timer to reset the start time, so g_timer_reset()
    /// serves no purpose.
    func reset() {
        g_timer_reset(cast(_ptr))
    
    }

    /// Marks a start time, so that future calls to g_timer_elapsed() will
    /// report the time since g_timer_start() was called. g_timer_new()
    /// automatically marks the start time, so no need to call
    /// g_timer_start() immediately after creating the timer.
    func start() {
        g_timer_start(cast(_ptr))
    
    }

    /// Marks an end time, so calls to g_timer_elapsed() will return the
    /// difference between this end time and the start time.
    func stop() {
        g_timer_stop(cast(_ptr))
    
    }
    /// Exposes whether the timer is currently active.
    var isActive: Bool {
        /// Exposes whether the timer is currently active.
        get {
            let rv = g_timer_is_active(cast(_ptr))
            return Bool(rv != 0)
        }
    }
}



