import CGLib

// MARK: - HookList Record

/// The `HookListProtocol` protocol exposes the methods and properties of an underlying `GHookList` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `HookList`.
/// Alternatively, use `HookListRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GHookList` struct represents a list of hook functions.
public protocol HookListProtocol {
        /// Untyped pointer to the underlying `GHookList` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GHookList` instance.
    var _ptr: UnsafeMutablePointer<GHookList>! { get }

}

/// The `HookListRef` type acts as a lightweight Swift reference to an underlying `GHookList` instance.
/// It exposes methods that can operate on this data type through `HookListProtocol` conformance.
/// Use `HookListRef` only as an `unowned` reference to an existing `GHookList` instance.
///
/// The `GHookList` struct represents a list of hook functions.
public struct HookListRef: HookListProtocol {
        /// Untyped pointer to the underlying `GHookList` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension HookListRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GHookList>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GHookList>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GHookList>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GHookList>?) {
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

    /// Reference intialiser for a related type that implements `HookListProtocol`
    @inlinable init<T: HookListProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookListProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookListProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookListProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookListProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookListProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `HookList` type acts as an owner of an underlying `GHookList` instance.
/// It provides the methods that can operate on this data type through `HookListProtocol` conformance.
/// Use `HookList` as a strong reference or owner of a `GHookList` instance.
///
/// The `GHookList` struct represents a list of hook functions.
open class HookList: HookListProtocol {
        /// Untyped pointer to the underlying `GHookList` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HookList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GHookList>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HookList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GHookList>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HookList` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HookList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HookList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GHookList>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HookList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GHookList>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GHookList` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `HookList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GHookList>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GHookList, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `HookListProtocol`
    /// `GHookList` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `HookListProtocol`
    @inlinable public init<T: HookListProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GHookList, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GHookList`.
    deinit {
        // no reference counting for GHookList, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookListProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookListProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GHookList, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookListProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookListProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GHookList, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookListProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookListProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GHookList, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookListProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookListProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GHookList, cannot ref(_ptr)
    }



}

// MARK: no HookList properties

// MARK: no HookList signals


// MARK: HookList Record: HookListProtocol extension (methods and fields)
public extension HookListProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GHookList` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GHookList>! { return ptr?.assumingMemoryBound(to: GHookList.self) }

    /// Removes all the `GHook` elements from a `GHookList`.
    @inlinable func clear() {
        g_hook_list_clear(_ptr)
    
    }

    /// Initializes a `GHookList`.
    /// This must be called before the `GHookList` is used.
    @inlinable func init_(hookSize: Int) {
        g_hook_list_init(_ptr, guint(hookSize))
    
    }

    /// Calls all of the `GHook` functions in a `GHookList`.
    @inlinable func invoke(mayRecurse: Bool) {
        g_hook_list_invoke(_ptr, gboolean((mayRecurse) ? 1 : 0))
    
    }

    /// Calls all of the `GHook` functions in a `GHookList`.
    /// Any function which returns `false` is removed from the `GHookList`.
    @inlinable func invokeCheck(mayRecurse: Bool) {
        g_hook_list_invoke_check(_ptr, gboolean((mayRecurse) ? 1 : 0))
    
    }

    /// Calls a function on each valid `GHook`.
    @inlinable func marshal(mayRecurse: Bool, marshaller: GHookMarshaller?, marshalData: gpointer! = nil) {
        g_hook_list_marshal(_ptr, gboolean((mayRecurse) ? 1 : 0), marshaller, marshalData)
    
    }

    /// Calls a function on each valid `GHook` and destroys it if the
    /// function returns `false`.
    @inlinable func marshalCheck(mayRecurse: Bool, marshaller: GHookCheckMarshaller?, marshalData: gpointer! = nil) {
        g_hook_list_marshal_check(_ptr, gboolean((mayRecurse) ? 1 : 0), marshaller, marshalData)
    
    }

    /// Destroys a `GHook`, given its ID.
    @inlinable func hookDestroy(hookID: Int) -> Bool {
        let rv = ((g_hook_destroy(_ptr, gulong(hookID))) != 0)
        return rv
    }

    /// Removes one `GHook` from a `GHookList`, marking it
    /// inactive and calling `g_hook_unref()` on it.
    @inlinable func hookDestroyLink<HookT: HookProtocol>(hook: HookT) {
        g_hook_destroy_link(_ptr, hook._ptr)
    
    }

    /// Calls the `GHookList` `finalize_hook` function if it exists,
    /// and frees the memory allocated for the `GHook`.
    @inlinable func hookFree<HookT: HookProtocol>(hook: HookT) {
        g_hook_free(_ptr, hook._ptr)
    
    }

    /// Inserts a `GHook` into a `GHookList`, before a given `GHook`.
    @inlinable func hookInsertBefore<HookT: HookProtocol>(sibling: HookT?, hook: HookT) {
        g_hook_insert_before(_ptr, sibling?._ptr, hook._ptr)
    
    }

    /// Prepends a `GHook` on the start of a `GHookList`.
    @inlinable func hookPrepend<HookT: HookProtocol>(hook: HookT) {
        g_hook_prepend(_ptr, hook._ptr)
    
    }

    /// Decrements the reference count of a `GHook`.
    /// If the reference count falls to 0, the `GHook` is removed
    /// from the `GHookList` and `g_hook_free()` is called to free it.
    @inlinable func hookUnref<HookT: HookProtocol>(hook: HookT) {
        g_hook_unref(_ptr, hook._ptr)
    
    }

    /// the next free `GHook` id
    @inlinable var seqID: gulong {
        /// the next free `GHook` id
        get {
            let rv = _ptr.pointee.seq_id
            return rv
        }
        /// the next free `GHook` id
         set {
            _ptr.pointee.seq_id = newValue
        }
    }

    /// the size of the `GHookList` elements, in bytes
    @inlinable var hookSize: guint {
        /// the size of the `GHookList` elements, in bytes
        get {
            let rv = _ptr.pointee.hook_size
            return rv
        }
        /// the size of the `GHookList` elements, in bytes
         set {
            _ptr.pointee.hook_size = newValue
        }
    }

    /// 1 if the `GHookList` has been initialized
    @inlinable var isSetup: guint {
        /// 1 if the `GHookList` has been initialized
        get {
            let rv = _ptr.pointee.is_setup
            return rv
        }
        /// 1 if the `GHookList` has been initialized
         set {
            _ptr.pointee.is_setup = newValue
        }
    }

    /// the first `GHook` element in the list
    @inlinable var hooks: HookRef! {
        /// the first `GHook` element in the list
        get {
            let rv = HookRef(gconstpointer: gconstpointer(_ptr.pointee.hooks))
            return rv
        }
        /// the first `GHook` element in the list
         set {
            _ptr.pointee.hooks = UnsafeMutablePointer<GHook>(newValue._ptr)
        }
    }

    /// unused
    @inlinable var dummy3: gpointer! {
        /// unused
        get {
            let rv = _ptr.pointee.dummy3
            return rv
        }
        /// unused
         set {
            _ptr.pointee.dummy3 = newValue
        }
    }

    /// the function to call to finalize a `GHook` element.
    ///     The default behaviour is to call the hooks `destroy` function
    @inlinable var finalizeHook: GHookFinalizeFunc! {
        /// the function to call to finalize a `GHook` element.
        ///     The default behaviour is to call the hooks `destroy` function
        get {
            let rv = _ptr.pointee.finalize_hook
            return rv
        }
        /// the function to call to finalize a `GHook` element.
        ///     The default behaviour is to call the hooks `destroy` function
         set {
            _ptr.pointee.finalize_hook = newValue
        }
    }

    /// unused
    @inlinable var dummy: (gpointer?, gpointer?) {
        /// unused
        get {
            let rv = _ptr.pointee.dummy
            return rv
        }
        /// unused
         set {
            _ptr.pointee.dummy = newValue
        }
    }

}



