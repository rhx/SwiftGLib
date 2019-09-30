import CGLib

// MARK: - MainLoop Record

/// The `MainLoopProtocol` protocol exposes the methods and properties of an underlying `GMainLoop` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MainLoop`.
/// Alternatively, use `MainLoopRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GMainLoop` struct is an opaque data type
/// representing the main event loop of a GLib or GTK+ application.
public protocol MainLoopProtocol {
    /// Untyped pointer to the underlying `GMainLoop` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GMainLoop` instance.
    var main_loop_ptr: UnsafeMutablePointer<GMainLoop> { get }
}

/// The `MainLoopRef` type acts as a lightweight Swift reference to an underlying `GMainLoop` instance.
/// It exposes methods that can operate on this data type through `MainLoopProtocol` conformance.
/// Use `MainLoopRef` only as an `unowned` reference to an existing `GMainLoop` instance.
///
/// The `GMainLoop` struct is an opaque data type
/// representing the main event loop of a GLib or GTK+ application.
public struct MainLoopRef: MainLoopProtocol {
    /// Untyped pointer to the underlying `GMainLoop` instance.
    /// For type-safe access, use the generated, typed pointer `main_loop_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MainLoopRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GMainLoop>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MainLoopProtocol`
    init<T: MainLoopProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainLoopProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainLoopProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainLoopProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainLoopProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainLoopProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GMainLoop` structure.
    init( context: MainContextProtocol, isRunning is_running: Bool) {
        let rv = g_main_loop_new(cast(context.ptr), gboolean(is_running ? 1 : 0))
        self.init(cast(rv))
    }
}

/// The `MainLoop` type acts as a reference-counted owner of an underlying `GMainLoop` instance.
/// It provides the methods that can operate on this data type through `MainLoopProtocol` conformance.
/// Use `MainLoop` as a strong reference or owner of a `GMainLoop` instance.
///
/// The `GMainLoop` struct is an opaque data type
/// representing the main event loop of a GLib or GTK+ application.
open class MainLoop: MainLoopProtocol {
    /// Untyped pointer to the underlying `GMainLoop` instance.
    /// For type-safe access, use the generated, typed pointer `main_loop_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `MainLoop` instance.
    public init(_ op: UnsafeMutablePointer<GMainLoop>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MainLoopProtocol`
    /// Will retain `GMainLoop`.
    public convenience init<T: MainLoopProtocol>(_ other: T) {
        self.init(cast(other.main_loop_ptr))
        g_main_loop_ref(cast(main_loop_ptr))
    }

    /// Releases the underlying `GMainLoop` instance using `g_main_loop_unref`.
    deinit {
        g_main_loop_unref(cast(main_loop_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainLoopProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GMainLoop.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainLoopProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GMainLoop.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainLoopProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GMainLoop.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainLoopProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GMainLoop>(opaquePointer))
    }

    /// Creates a new `GMainLoop` structure.
    public convenience init( context: MainContextProtocol, isRunning is_running: Bool) {
        let rv = g_main_loop_new(cast(context.ptr), gboolean(is_running ? 1 : 0))
        self.init(cast(rv))
    }


}

// MARK: - no MainLoop properties

// MARK: - no signals


public extension MainLoopProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMainLoop` instance.
    var main_loop_ptr: UnsafeMutablePointer<GMainLoop> { return ptr.assumingMemoryBound(to: GMainLoop.self) }

    /// Returns the `GMainContext` of `loop`.
    func getContext() -> UnsafeMutablePointer<GMainContext>! {
        let rv = g_main_loop_get_context(cast(main_loop_ptr))
        return cast(rv)
    }

    /// Stops a `GMainLoop` from running. Any calls to g_main_loop_run()
    /// for the loop will return.
    /// 
    /// Note that sources that have already been dispatched when
    /// g_main_loop_quit() is called will still be executed.
    func quit() {
        g_main_loop_quit(cast(main_loop_ptr))
    
    }

    /// Increases the reference count on a `GMainLoop` object by one.
    func ref() -> UnsafeMutablePointer<GMainLoop>! {
        let rv = g_main_loop_ref(cast(main_loop_ptr))
        return cast(rv)
    }

    /// Runs a main loop until g_main_loop_quit() is called on the loop.
    /// If this is called for the thread of the loop's `GMainContext`,
    /// it will process events from the loop, otherwise it will
    /// simply wait.
    func run() {
        g_main_loop_run(cast(main_loop_ptr))
    
    }

    /// Decreases the reference count on a `GMainLoop` object by one. If
    /// the result is zero, free the loop and free all associated memory.
    func unref() {
        g_main_loop_unref(cast(main_loop_ptr))
    
    }
    /// Returns the `GMainContext` of `loop`.
    var context: UnsafeMutablePointer<GMainContext>! {
        /// Returns the `GMainContext` of `loop`.
        get {
            let rv = g_main_loop_get_context(cast(main_loop_ptr))
            return cast(rv)
        }
    }

    /// Checks to see if the main loop is currently being run via g_main_loop_run().
    var isRunning: Bool {
        /// Checks to see if the main loop is currently being run via g_main_loop_run().
        get {
            let rv = g_main_loop_is_running(cast(main_loop_ptr))
            return Bool(rv != 0)
        }
    }
}



