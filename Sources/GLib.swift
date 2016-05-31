#if os(Linux)
    import Glibc
#else
    import Darwin
#endif

import CGLib

/// Allow Swift strings to interact with GLib strings
extension String: StringTypeProtocol {
    /// Return a GString corresponding to the given swift string.
    /// The returned string pointer needs to be freed using g_string_free(*, true)
    public var ptr: UnsafeMutablePointer<GString> { return g_string_new(self) }
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
    public var ref: StringRef { return StringRef(self) }

    /// Return a memory-managed StringType that will be freed using ARC.
    public var gstring: StringClass { return StringClass(self) }
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
        let context = MainContext(g_main_context_default()!)
        context.ref()
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
