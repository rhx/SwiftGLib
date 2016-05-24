import CGLib

public extension MainContextRef {
    /// Return a MainContext reference to the default context singleton.
    ///
    /// This is a convenience factory method that returns the global default
    /// main context, i.e. the main context used for main loop functions
    /// when a main loop is not explicitly specified, and corresponds to
    /// the "main" main loop. See also g_main_context_get_thread_default().
    public static func sharedContext() -> MainContextRef {
        return MainContextRef(opaquePointer: g_main_context_default()!)
    }
}

public extension MainContext {
    /// Return a MainContext that references the default context singleton.
    ///
    /// This is a convenience factory method that returns the global default
    /// main context, i.e. the main context used for main loop functions
    /// when a main loop is not explicitly specified, and corresponds to
    /// the "main" main loop. See also g_main_context_get_thread_default().
    public static func sharedContext() -> MainContext {
        let context = MainContext(opaquePointer: g_main_context_default()!)
        context.ref()
        return context
    }
}


public extension MainLoopRef {
    /// Convenience initialiser that returns a retained reference to the
    /// default main loop.  See also g_main_loop_unref()
    public init() {
        self.ptr = UnsafeMutablePointer(g_main_loop_new(g_main_context_default()!, 0)!)
    }
}


public extension MainLoop {
    /// Convenience initialiser that creates and returns the
    /// default main loop.
    public convenience init() {
        self.init(opaquePointer: g_main_loop_new(g_main_context_default()!, 0))
    }
}
