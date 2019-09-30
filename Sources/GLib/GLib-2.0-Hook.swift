import CGLib

// MARK: - Hook Record

/// The `HookProtocol` protocol exposes the methods and properties of an underlying `GHook` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Hook`.
/// Alternatively, use `HookRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GHook` struct represents a single hook function in a `GHookList`.
public protocol HookProtocol {
    /// Untyped pointer to the underlying `GHook` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GHook` instance.
    var _ptr: UnsafeMutablePointer<GHook> { get }
}

/// The `HookRef` type acts as a lightweight Swift reference to an underlying `GHook` instance.
/// It exposes methods that can operate on this data type through `HookProtocol` conformance.
/// Use `HookRef` only as an `unowned` reference to an existing `GHook` instance.
///
/// The `GHook` struct represents a single hook function in a `GHookList`.
public struct HookRef: HookProtocol {
    /// Untyped pointer to the underlying `GHook` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension HookRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GHook>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `HookProtocol`
    init<T: HookProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Allocates space for a `GHook` and initializes it.
    static func alloc(hookList hook_list: HookListProtocol) -> HookRef! {
        let rv = g_hook_alloc(cast(hook_list.ptr))
        return rv.map { HookRef(cast($0)) }
    }

    /// Finds a `GHook` in a `GHookList` using the given function to
    /// test for a match.
    static func find(hookList hook_list: HookListProtocol, needValids need_valids: Bool, func_: @escaping HookFindFunc, data: UnsafeMutableRawPointer) -> HookRef! {
        let rv = g_hook_find(cast(hook_list.ptr), gboolean(need_valids ? 1 : 0), func_, cast(data))
        return rv.map { HookRef(cast($0)) }
    }

    /// Finds a `GHook` in a `GHookList` with the given data.
    static func findData(hookList hook_list: HookListProtocol, needValids need_valids: Bool, data: UnsafeMutableRawPointer) -> HookRef! {
        let rv = g_hook_find_data(cast(hook_list.ptr), gboolean(need_valids ? 1 : 0), cast(data))
        return rv.map { HookRef(cast($0)) }
    }

    /// Finds a `GHook` in a `GHookList` with the given function.
    static func findFunc(hookList hook_list: HookListProtocol, needValids need_valids: Bool, func_: UnsafeMutableRawPointer) -> HookRef! {
        let rv = g_hook_find_func(cast(hook_list.ptr), gboolean(need_valids ? 1 : 0), cast(func_))
        return rv.map { HookRef(cast($0)) }
    }

    /// Finds a `GHook` in a `GHookList` with the given function and data.
    static func findFuncData(hookList hook_list: HookListProtocol, needValids need_valids: Bool, func_: UnsafeMutableRawPointer, data: UnsafeMutableRawPointer) -> HookRef! {
        let rv = g_hook_find_func_data(cast(hook_list.ptr), gboolean(need_valids ? 1 : 0), cast(func_), cast(data))
        return rv.map { HookRef(cast($0)) }
    }

    /// Returns the first `GHook` in a `GHookList` which has not been destroyed.
    /// The reference count for the `GHook` is incremented, so you must call
    /// g_hook_unref() to restore it when no longer needed. (Or call
    /// g_hook_next_valid() if you are stepping through the `GHookList`.)
    static func firstValid(hookList hook_list: HookListProtocol, mayBeInCall may_be_in_call: Bool) -> HookRef! {
        let rv = g_hook_first_valid(cast(hook_list.ptr), gboolean(may_be_in_call ? 1 : 0))
        return rv.map { HookRef(cast($0)) }
    }

    /// Returns the `GHook` with the given id, or `nil` if it is not found.
    static func get(hookList hook_list: HookListProtocol, hookID hook_id: CUnsignedLong) -> HookRef! {
        let rv = g_hook_get(cast(hook_list.ptr), gulong(hook_id))
        return rv.map { HookRef(cast($0)) }
    }

    /// Returns the next `GHook` in a `GHookList` which has not been destroyed.
    /// The reference count for the `GHook` is incremented, so you must call
    /// g_hook_unref() to restore it when no longer needed. (Or continue to call
    /// g_hook_next_valid() until `nil` is returned.)
    static func nextValid(hookList hook_list: HookListProtocol, hook: HookProtocol, mayBeInCall may_be_in_call: Bool) -> HookRef! {
        let rv = g_hook_next_valid(cast(hook_list.ptr), cast(hook.ptr), gboolean(may_be_in_call ? 1 : 0))
        return rv.map { HookRef(cast($0)) }
    }

    /// Increments the reference count for a `GHook`.
    static func ref(hookList hook_list: HookListProtocol, hook: HookProtocol) -> HookRef! {
        let rv = g_hook_ref(cast(hook_list.ptr), cast(hook.ptr))
        return rv.map { HookRef(cast($0)) }
    }
}

/// The `Hook` type acts as an owner of an underlying `GHook` instance.
/// It provides the methods that can operate on this data type through `HookProtocol` conformance.
/// Use `Hook` as a strong reference or owner of a `GHook` instance.
///
/// The `GHook` struct represents a single hook function in a `GHookList`.
open class Hook: HookProtocol {
    /// Untyped pointer to the underlying `GHook` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Hook` instance.
    public init(_ op: UnsafeMutablePointer<GHook>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `HookProtocol`
    /// `GHook` does not allow reference counting.
    public convenience init<T: HookProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GHook, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GHook`.
    deinit {
        // no reference counting for GHook, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GHook.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GHook.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GHook.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GHook>(opaquePointer))
    }


    /// Allocates space for a `GHook` and initializes it.
    public static func alloc(hookList hook_list: HookListProtocol) -> Hook! {
        let rv = g_hook_alloc(cast(hook_list.ptr))
        return rv.map { Hook(cast($0)) }
    }

    /// Finds a `GHook` in a `GHookList` using the given function to
    /// test for a match.
    public static func find(hookList hook_list: HookListProtocol, needValids need_valids: Bool, func_: @escaping HookFindFunc, data: UnsafeMutableRawPointer) -> Hook! {
        let rv = g_hook_find(cast(hook_list.ptr), gboolean(need_valids ? 1 : 0), func_, cast(data))
        return rv.map { Hook(cast($0)) }
    }

    /// Finds a `GHook` in a `GHookList` with the given data.
    public static func findData(hookList hook_list: HookListProtocol, needValids need_valids: Bool, data: UnsafeMutableRawPointer) -> Hook! {
        let rv = g_hook_find_data(cast(hook_list.ptr), gboolean(need_valids ? 1 : 0), cast(data))
        return rv.map { Hook(cast($0)) }
    }

    /// Finds a `GHook` in a `GHookList` with the given function.
    public static func findFunc(hookList hook_list: HookListProtocol, needValids need_valids: Bool, func_: UnsafeMutableRawPointer) -> Hook! {
        let rv = g_hook_find_func(cast(hook_list.ptr), gboolean(need_valids ? 1 : 0), cast(func_))
        return rv.map { Hook(cast($0)) }
    }

    /// Finds a `GHook` in a `GHookList` with the given function and data.
    public static func findFuncData(hookList hook_list: HookListProtocol, needValids need_valids: Bool, func_: UnsafeMutableRawPointer, data: UnsafeMutableRawPointer) -> Hook! {
        let rv = g_hook_find_func_data(cast(hook_list.ptr), gboolean(need_valids ? 1 : 0), cast(func_), cast(data))
        return rv.map { Hook(cast($0)) }
    }

    /// Returns the first `GHook` in a `GHookList` which has not been destroyed.
    /// The reference count for the `GHook` is incremented, so you must call
    /// g_hook_unref() to restore it when no longer needed. (Or call
    /// g_hook_next_valid() if you are stepping through the `GHookList`.)
    public static func firstValid(hookList hook_list: HookListProtocol, mayBeInCall may_be_in_call: Bool) -> Hook! {
        let rv = g_hook_first_valid(cast(hook_list.ptr), gboolean(may_be_in_call ? 1 : 0))
        return rv.map { Hook(cast($0)) }
    }

    /// Returns the `GHook` with the given id, or `nil` if it is not found.
    public static func get(hookList hook_list: HookListProtocol, hookID hook_id: CUnsignedLong) -> Hook! {
        let rv = g_hook_get(cast(hook_list.ptr), gulong(hook_id))
        return rv.map { Hook(cast($0)) }
    }

    /// Returns the next `GHook` in a `GHookList` which has not been destroyed.
    /// The reference count for the `GHook` is incremented, so you must call
    /// g_hook_unref() to restore it when no longer needed. (Or continue to call
    /// g_hook_next_valid() until `nil` is returned.)
    public static func nextValid(hookList hook_list: HookListProtocol, hook: HookProtocol, mayBeInCall may_be_in_call: Bool) -> Hook! {
        let rv = g_hook_next_valid(cast(hook_list.ptr), cast(hook.ptr), gboolean(may_be_in_call ? 1 : 0))
        return rv.map { Hook(cast($0)) }
    }

    /// Increments the reference count for a `GHook`.
    public static func ref(hookList hook_list: HookListProtocol, hook: HookProtocol) -> Hook! {
        let rv = g_hook_ref(cast(hook_list.ptr), cast(hook.ptr))
        return rv.map { Hook(cast($0)) }
    }

}

// MARK: - no Hook properties

// MARK: - no signals


public extension HookProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GHook` instance.
    var _ptr: UnsafeMutablePointer<GHook> { return ptr.assumingMemoryBound(to: GHook.self) }

    /// Compares the ids of two `GHook` elements, returning a negative value
    /// if the second id is greater than the first.
    func compareIDs(sibling: HookProtocol) -> CInt {
        let rv = g_hook_compare_ids(cast(_ptr), cast(sibling.ptr))
        return CInt(rv)
    }

    /// Removes one `GHook` from a `GHookList`, marking it
    /// inactive and calling g_hook_unref() on it.
    func destroyLink(hookList hook_list: HookListProtocol) {
        g_hook_destroy_link(cast(hook_list.ptr), cast(_ptr))
    
    }

    /// Calls the `GHookList` `finalize_hook` function if it exists,
    /// and frees the memory allocated for the `GHook`.
    func free(hookList hook_list: HookListProtocol) {
        g_hook_free(cast(hook_list.ptr), cast(_ptr))
    
    }

    /// Inserts a `GHook` into a `GHookList`, before a given `GHook`.
    func insertBefore(hookList hook_list: HookListProtocol, hook: HookProtocol) {
        g_hook_insert_before(cast(hook_list.ptr), cast(_ptr), cast(hook.ptr))
    
    }

    /// Inserts a `GHook` into a `GHookList`, sorted by the given function.
    func insertSorted(hookList hook_list: HookListProtocol, func_: @escaping HookCompareFunc) {
        g_hook_insert_sorted(cast(hook_list.ptr), cast(_ptr), func_)
    
    }

    /// Returns the next `GHook` in a `GHookList` which has not been destroyed.
    /// The reference count for the `GHook` is incremented, so you must call
    /// g_hook_unref() to restore it when no longer needed. (Or continue to call
    /// g_hook_next_valid() until `nil` is returned.)
    func nextValid(hookList hook_list: HookListProtocol, mayBeInCall may_be_in_call: Bool) -> UnsafeMutablePointer<GHook>! {
        let rv = g_hook_next_valid(cast(hook_list.ptr), cast(_ptr), gboolean(may_be_in_call ? 1 : 0))
        return cast(rv)
    }

    /// Prepends a `GHook` on the start of a `GHookList`.
    func prepend(hookList hook_list: HookListProtocol) {
        g_hook_prepend(cast(hook_list.ptr), cast(_ptr))
    
    }

    /// Increments the reference count for a `GHook`.
    func ref(hookList hook_list: HookListProtocol) -> UnsafeMutablePointer<GHook>! {
        let rv = g_hook_ref(cast(hook_list.ptr), cast(_ptr))
        return cast(rv)
    }

    /// Decrements the reference count of a `GHook`.
    /// If the reference count falls to 0, the `GHook` is removed
    /// from the `GHookList` and g_hook_free() is called to free it.
    func unref(hookList hook_list: HookListProtocol) {
        g_hook_unref(cast(hook_list.ptr), cast(_ptr))
    
    }

    /// Removes one `GHook` from a `GHookList`, marking it
    /// inactive and calling g_hook_unref() on it.
    func hookDestroyLink(hookList hook_list: HookListProtocol) {
        g_hook_destroy_link(cast(hook_list.ptr), cast(_ptr))
    
    }

    /// Calls the `GHookList` `finalize_hook` function if it exists,
    /// and frees the memory allocated for the `GHook`.
    func hookFree(hookList hook_list: HookListProtocol) {
        g_hook_free(cast(hook_list.ptr), cast(_ptr))
    
    }

    /// Inserts a `GHook` into a `GHookList`, before a given `GHook`.
    func hookInsertBefore(hookList hook_list: HookListProtocol, hook: HookProtocol) {
        g_hook_insert_before(cast(hook_list.ptr), cast(_ptr), cast(hook.ptr))
    
    }

    /// Prepends a `GHook` on the start of a `GHookList`.
    func hookPrepend(hookList hook_list: HookListProtocol) {
        g_hook_prepend(cast(hook_list.ptr), cast(_ptr))
    
    }

    /// Decrements the reference count of a `GHook`.
    /// If the reference count falls to 0, the `GHook` is removed
    /// from the `GHookList` and g_hook_free() is called to free it.
    func hookUnref(hookList hook_list: HookListProtocol) {
        g_hook_unref(cast(hook_list.ptr), cast(_ptr))
    
    }
}



