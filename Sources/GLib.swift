#if os(Linux)
    import Glibc
#else
    import Darwin
#endif

import CGLib

/// Convenience conversion from a constant pointer to a mutable pointer.
///
/// This function is provided for convenience as many glib types and functions
/// declare a non-const pointer even in cases where the original data are not
/// modified.
///
/// USE WITH EXTREME CARE!
///
/// - Parameter p: original pointer
/// - Returns: mutating pointer
public func mutate<T>(_ s: UnsafePointer<T>) -> UnsafeMutablePointer<T> {
    return UnsafeMutablePointer(mutating: s)
}

/// Allocate zero-initialised memory for a given type T
///
/// - Returns: pointer to allocated memory for T
public func g_slice_new0<T>() -> UnsafeMutablePointer<T>! {
    return g_slice_alloc0(gsize(MemoryLayout<T>.size)).assumingMemoryBound(to: T.self)
}

/// Allocate uninitialised memory for a given type T
///
/// - Returns: pointer to allocated memory for T
public func g_slice_new<T>() -> UnsafeMutablePointer<T>! {
    return g_slice_alloc(gsize(MemoryLayout<T>.size)).assumingMemoryBound(to: T.self)
}

/// Internal Class that wraps a one-parameter closure to make sure the closure
/// is retained until no longer required
public class TimerClosureHolder {
    
    public let call: () -> Bool
    
    public init(_ closure: @escaping () -> Bool) {
        self.call = closure
    }
}

func _timeoutAdd(_ interval: CUnsignedInt, priority p: CInt = 0, data: TimerClosureHolder, handler: @convention(c) @escaping (gpointer) -> gboolean) -> CUnsignedInt {
    let opaqueHolder = Unmanaged.passRetained(data).toOpaque()
    let callback = unsafeBitCast(handler, to: SourceFunc.self)
    let rv = timeoutAddFull(priority: p, interval: interval, function: callback, data: opaqueHolder) {
        if let swift = $0 {
            let holder = Unmanaged<TimerClosureHolder>.fromOpaque(swift)
            holder.release()
        }
    }
    return rv
}

/// Connects a (T) -> Void closure or function to a timer.
/// Similar to g_timeout_add_full(), but allows
/// to provide a Swift closure that can capture its surrounding context.
@discardableResult
public func timeout(add interval: Int, priority p: Int = 0, handler: @escaping () -> Bool) -> Int {
    let rv = _timeoutAdd(CUnsignedInt(interval), priority: CInt(p), data: TimerClosureHolder(handler)) {
        let holder = Unmanaged<TimerClosureHolder>.fromOpaque($0).takeUnretainedValue()
        let rv: gboolean = holder.call() ? 1 : 0
        return rv
    }
    return Int(rv)
}

/// Allow Swift strings to interact with GLib strings
extension String {
    /// Return a GString corresponding to the given swift string.
    /// The returned string pointer needs to be freed using g_string_free(*, true)
    var ptr: UnsafeMutablePointer<GString> { return g_string_new(self) }
}

/// Allow StringRefs to be initialised from Swift strings
public extension StringRef {
    /// Construct a StringRef from a Swift string.
    /// The returned string needs to be freed using free(free_segment: true)
    public init(_ s: String) { ptr = s.ptr }
}

/// A subclass of StringType that represents unique ownership of the underlying
/// GString pointer and frees its content upon release
public class StringClass: StringType {
    /// Initialise from a copy of the given GString
    override public init(_ op: UnsafeMutablePointer<GString>) {
        super.init(UnsafeMutablePointer(g_string_new(op.pointee.str)))
    }

    /// Initialise from a swift string
    public init(_ s: String) {
        super.init(s.ptr)
    }

    /// free the contained string upon release
    deinit {
        g_string_free(ptr, 1)
    }
}

/// Swift string extension to generate GLib strings
public extension String {
    /// Return a GString reference that needs to be manually freed
    /// using free(free_segment: true)
    public var g_string_ref: StringRef { return StringRef(self) }

    /// Return a memory-managed StringType that will be freed using ARC.
    public var g_string: StringClass { return StringClass(self) }
}


/// Convenience extension for MainContextRef
public extension MainContextRef {
    /// Return a MainContext reference to the default context singleton.
    ///
    /// This is a convenience factory method that returns the global default
    /// main context, i.e. the main context used for main loop functions
    /// when a main loop is not explicitly specified, and corresponds to
    /// the "main" main loop. See also g_main_context_get_thread_default().
    public static func defaultContext() -> MainContextRef {
        return MainContextRef(g_main_context_default()!)
    }
}


/// Convenience extension for MainContext
public extension MainContext {
    /// Return a MainContext that references the default context singleton.
    ///
    /// This is a convenience factory method that returns the global default
    /// main context, i.e. the main context used for main loop functions
    /// when a main loop is not explicitly specified, and corresponds to
    /// the "main" main loop. See also g_main_context_get_thread_default().
    public static func defaultContext() -> MainContext {
        let context = MainContext(g_main_context_ref(g_main_context_default())!)
        return context
    }
}


/// Convenience extension for MainLoopRef
public extension MainLoopRef {
    /// Convenience initialiser that returns a retained reference to the
    /// default main loop.  See also g_main_loop_unref()
    public init() {
        self.ptr = UnsafeMutablePointer(g_main_loop_new(g_main_context_default()!, 0)!)
    }
}


/// Convenience extension for MainLoop
public extension MainLoop {
    /// Convenience initialiser that creates and returns the
    /// default main loop.
    public convenience init() {
        self.init(g_main_loop_new(g_main_context_default()!, 0))
    }
}


/// CustomStringConvertible extension for GError ErrorType
extension ErrorTypeProtocol {
    /// The error message associated with the receiver.
    public var description: String {
        return String(cString: ptr.pointee.message)
    }

    /// The error domain, code, and message associated with the receiver.
    public var debugDescription: String {
        return String("\(quarkToString(quark: ptr.pointee.domain)) error \(ptr.pointee.code): \(String(cString: ptr.pointee.message))")
    }
}

extension ErrorType: CustomStringConvertible {}
extension ErrorType: CustomDebugStringConvertible {}
extension ErrorRef: CustomStringConvertible {}
extension ErrorRef: CustomDebugStringConvertible {}
