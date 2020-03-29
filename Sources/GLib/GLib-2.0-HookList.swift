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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GHookList` instance.
    var _ptr: UnsafeMutablePointer<GHookList> { get }
}

/// The `HookListRef` type acts as a lightweight Swift reference to an underlying `GHookList` instance.
/// It exposes methods that can operate on this data type through `HookListProtocol` conformance.
/// Use `HookListRef` only as an `unowned` reference to an existing `GHookList` instance.
///
/// The `GHookList` struct represents a list of hook functions.
public struct HookListRef: HookListProtocol {
    /// Untyped pointer to the underlying `GHookList` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension HookListRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GHookList>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `HookListProtocol`
    init<T: HookListProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookListProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookListProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookListProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookListProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookListProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HookList` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GHookList>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GHookList` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `HookList` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GHookList>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GHookList, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `HookListProtocol`
    /// `GHookList` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `HookListProtocol`
    public init<T: HookListProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GHookList, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GHookList`.
    deinit {
        // no reference counting for GHookList, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookListProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookListProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GHookList, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookListProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookListProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GHookList, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookListProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookListProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GHookList, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookListProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookListProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GHookList, cannot ref(cast(_ptr))
    }



}

// MARK: - no HookList properties

// MARK: - no signals


public extension HookListProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GHookList` instance.
    var _ptr: UnsafeMutablePointer<GHookList> { return ptr.assumingMemoryBound(to: GHookList.self) }

    /// Removes all the `GHook` elements from a `GHookList`.
    func clear() {
        g_hook_list_clear(cast(_ptr))
    
    }

    /// Initializes a `GHookList`.
    /// This must be called before the `GHookList` is used.
    func init_(hookSize hook_size: CUnsignedInt) {
        g_hook_list_init(cast(_ptr), guint(hook_size))
    
    }

    /// Calls all of the `GHook` functions in a `GHookList`.
    func invoke(mayRecurse may_recurse: Bool) {
        g_hook_list_invoke(cast(_ptr), gboolean(may_recurse ? 1 : 0))
    
    }

    /// Calls all of the `GHook` functions in a `GHookList`.
    /// Any function which returns `false` is removed from the `GHookList`.
    func invokeCheck(mayRecurse may_recurse: Bool) {
        g_hook_list_invoke_check(cast(_ptr), gboolean(may_recurse ? 1 : 0))
    
    }

    /// Calls a function on each valid `GHook`.
    func marshal(mayRecurse may_recurse: Bool, marshaller: @escaping HookMarshaller, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_hook_list_marshal(cast(_ptr), gboolean(may_recurse ? 1 : 0), marshaller, cast(marshal_data))
    
    }

    /// Calls a function on each valid `GHook` and destroys it if the
    /// function returns `false`.
    func marshalCheck(mayRecurse may_recurse: Bool, marshaller: @escaping HookCheckMarshaller, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_hook_list_marshal_check(cast(_ptr), gboolean(may_recurse ? 1 : 0), marshaller, cast(marshal_data))
    
    }

    /// Destroys a `GHook`, given its ID.
    func hookDestroy(hookID hook_id: CUnsignedLong) -> Bool {
        let rv = g_hook_destroy(cast(_ptr), gulong(hook_id))
        return Bool(rv != 0)
    }

    /// Removes one `GHook` from a `GHookList`, marking it
    /// inactive and calling `g_hook_unref()` on it.
    func hookDestroyLink(hook: HookProtocol) {
        g_hook_destroy_link(cast(_ptr), cast(hook.ptr))
    
    }

    /// Calls the `GHookList` `finalize_hook` function if it exists,
    /// and frees the memory allocated for the `GHook`.
    func hookFree(hook: HookProtocol) {
        g_hook_free(cast(_ptr), cast(hook.ptr))
    
    }

    /// Inserts a `GHook` into a `GHookList`, before a given `GHook`.
    func hookInsertBefore(sibling: HookProtocol, hook: HookProtocol) {
        g_hook_insert_before(cast(_ptr), cast(sibling.ptr), cast(hook.ptr))
    
    }

    /// Prepends a `GHook` on the start of a `GHookList`.
    func hookPrepend(hook: HookProtocol) {
        g_hook_prepend(cast(_ptr), cast(hook.ptr))
    
    }

    /// Decrements the reference count of a `GHook`.
    /// If the reference count falls to 0, the `GHook` is removed
    /// from the `GHookList` and `g_hook_free()` is called to free it.
    func hookUnref(hook: HookProtocol) {
        g_hook_unref(cast(_ptr), cast(hook.ptr))
    
    }
}



