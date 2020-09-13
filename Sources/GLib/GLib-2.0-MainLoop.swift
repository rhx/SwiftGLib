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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GMainLoop` instance.
    var main_loop_ptr: UnsafeMutablePointer<GMainLoop>! { get }

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
        let rv = g_main_loop_new(context?.main_context_ptr, gboolean((isRunning) ? 1 : 0))
        ptr = UnsafeMutableRawPointer(rv)
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
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
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
        let rv = g_main_loop_new(context?.main_context_ptr, gboolean((isRunning) ? 1 : 0))
        ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no MainLoop properties

// MARK: no MainLoop signals


// MARK: MainLoop Record: MainLoopProtocol extension (methods and fields)
public extension MainLoopProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMainLoop` instance.
    @inlinable var main_loop_ptr: UnsafeMutablePointer<GMainLoop>! { return ptr?.assumingMemoryBound(to: GMainLoop.self) }

    /// Returns the `GMainContext` of `loop`.
    @inlinable func getContext() -> MainContextRef! {
        let rv = MainContextRef(gconstpointer: gconstpointer(g_main_loop_get_context(main_loop_ptr)))
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
        guard let rv = MainLoopRef(gconstpointer: gconstpointer(g_main_loop_ref(main_loop_ptr))) else { return nil }
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
            let rv = MainContextRef(gconstpointer: gconstpointer(g_main_loop_get_context(main_loop_ptr)))
            return rv
        }
    }

    /// Checks to see if the main loop is currently being run via `g_main_loop_run()`.
    @inlinable var isRunning: Bool {
        /// Checks to see if the main loop is currently being run via `g_main_loop_run()`.
        get {
            let rv = ((g_main_loop_is_running(main_loop_ptr)) != 0)
            return rv
        }
    }


}



