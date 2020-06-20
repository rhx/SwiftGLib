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
        let rv: UnsafeMutablePointer<GHook>! = cast(g_hook_alloc(cast(hook_list.ptr)))
        return rv.map { HookRef(cast($0)) }
    }

    /// Finds a `GHook` in a `GHookList` using the given function to
    /// test for a match.
    static func find(hookList hook_list: HookListProtocol, needValids need_valids: Bool, func_: @escaping HookFindFunc, data: UnsafeMutableRawPointer) -> HookRef! {
        let rv: UnsafeMutablePointer<GHook>! = cast(g_hook_find(cast(hook_list.ptr), gboolean(need_valids ? 1 : 0), func_, cast(data)))
        return rv.map { HookRef(cast($0)) }
    }

    /// Finds a `GHook` in a `GHookList` with the given data.
    static func findData(hookList hook_list: HookListProtocol, needValids need_valids: Bool, data: UnsafeMutableRawPointer) -> HookRef! {
        let rv: UnsafeMutablePointer<GHook>! = cast(g_hook_find_data(cast(hook_list.ptr), gboolean(need_valids ? 1 : 0), cast(data)))
        return rv.map { HookRef(cast($0)) }
    }

    /// Finds a `GHook` in a `GHookList` with the given function.
    static func findFunc(hookList hook_list: HookListProtocol, needValids need_valids: Bool, func_: UnsafeMutableRawPointer) -> HookRef! {
        let rv: UnsafeMutablePointer<GHook>! = cast(g_hook_find_func(cast(hook_list.ptr), gboolean(need_valids ? 1 : 0), cast(func_)))
        return rv.map { HookRef(cast($0)) }
    }

    /// Finds a `GHook` in a `GHookList` with the given function and data.
    static func findFuncData(hookList hook_list: HookListProtocol, needValids need_valids: Bool, func_: UnsafeMutableRawPointer, data: UnsafeMutableRawPointer) -> HookRef! {
        let rv: UnsafeMutablePointer<GHook>! = cast(g_hook_find_func_data(cast(hook_list.ptr), gboolean(need_valids ? 1 : 0), cast(func_), cast(data)))
        return rv.map { HookRef(cast($0)) }
    }

    /// Returns the first `GHook` in a `GHookList` which has not been destroyed.
    /// The reference count for the `GHook` is incremented, so you must call
    /// `g_hook_unref()` to restore it when no longer needed. (Or call
    /// `g_hook_next_valid()` if you are stepping through the `GHookList`.)
    static func firstValid(hookList hook_list: HookListProtocol, mayBeInCall may_be_in_call: Bool) -> HookRef! {
        let rv: UnsafeMutablePointer<GHook>! = cast(g_hook_first_valid(cast(hook_list.ptr), gboolean(may_be_in_call ? 1 : 0)))
        return rv.map { HookRef(cast($0)) }
    }

    /// Returns the `GHook` with the given id, or `nil` if it is not found.
    static func get(hookList hook_list: HookListProtocol, hookID hook_id: CUnsignedLong) -> HookRef! {
        let rv: UnsafeMutablePointer<GHook>! = cast(g_hook_get(cast(hook_list.ptr), gulong(hook_id)))
        return rv.map { HookRef(cast($0)) }
    }

    /// Returns the next `GHook` in a `GHookList` which has not been destroyed.
    /// The reference count for the `GHook` is incremented, so you must call
    /// `g_hook_unref()` to restore it when no longer needed. (Or continue to call
    /// `g_hook_next_valid()` until `nil` is returned.)
    static func nextValid(hookList hook_list: HookListProtocol, hook: HookProtocol, mayBeInCall may_be_in_call: Bool) -> HookRef! {
        let rv: UnsafeMutablePointer<GHook>! = cast(g_hook_next_valid(cast(hook_list.ptr), cast(hook.ptr), gboolean(may_be_in_call ? 1 : 0)))
        return rv.map { HookRef(cast($0)) }
    }

    /// Increments the reference count for a `GHook`.
    static func ref(hookList hook_list: HookListProtocol, hook: HookProtocol) -> HookRef! {
        let rv: UnsafeMutablePointer<GHook>! = cast(g_hook_ref(cast(hook_list.ptr), cast(hook.ptr)))
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
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Hook` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GHook>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GHook` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Hook` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GHook>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GHook, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `HookProtocol`
    /// `GHook` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `HookProtocol`
    public init<T: HookProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GHook, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GHook`.
    deinit {
        // no reference counting for GHook, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GHook, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GHook, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GHook, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GHook, cannot ref(cast(_ptr))
    }


    /// Allocates space for a `GHook` and initializes it.
    public static func alloc(hookList hook_list: HookListProtocol) -> Hook! {
        let rv: UnsafeMutablePointer<GHook>! = cast(g_hook_alloc(cast(hook_list.ptr)))
        return rv.map { Hook(cast($0)) }
    }

    /// Finds a `GHook` in a `GHookList` using the given function to
    /// test for a match.
    public static func find(hookList hook_list: HookListProtocol, needValids need_valids: Bool, func_: @escaping HookFindFunc, data: UnsafeMutableRawPointer) -> Hook! {
        let rv: UnsafeMutablePointer<GHook>! = cast(g_hook_find(cast(hook_list.ptr), gboolean(need_valids ? 1 : 0), func_, cast(data)))
        return rv.map { Hook(cast($0)) }
    }

    /// Finds a `GHook` in a `GHookList` with the given data.
    public static func findData(hookList hook_list: HookListProtocol, needValids need_valids: Bool, data: UnsafeMutableRawPointer) -> Hook! {
        let rv: UnsafeMutablePointer<GHook>! = cast(g_hook_find_data(cast(hook_list.ptr), gboolean(need_valids ? 1 : 0), cast(data)))
        return rv.map { Hook(cast($0)) }
    }

    /// Finds a `GHook` in a `GHookList` with the given function.
    public static func findFunc(hookList hook_list: HookListProtocol, needValids need_valids: Bool, func_: UnsafeMutableRawPointer) -> Hook! {
        let rv: UnsafeMutablePointer<GHook>! = cast(g_hook_find_func(cast(hook_list.ptr), gboolean(need_valids ? 1 : 0), cast(func_)))
        return rv.map { Hook(cast($0)) }
    }

    /// Finds a `GHook` in a `GHookList` with the given function and data.
    public static func findFuncData(hookList hook_list: HookListProtocol, needValids need_valids: Bool, func_: UnsafeMutableRawPointer, data: UnsafeMutableRawPointer) -> Hook! {
        let rv: UnsafeMutablePointer<GHook>! = cast(g_hook_find_func_data(cast(hook_list.ptr), gboolean(need_valids ? 1 : 0), cast(func_), cast(data)))
        return rv.map { Hook(cast($0)) }
    }

    /// Returns the first `GHook` in a `GHookList` which has not been destroyed.
    /// The reference count for the `GHook` is incremented, so you must call
    /// `g_hook_unref()` to restore it when no longer needed. (Or call
    /// `g_hook_next_valid()` if you are stepping through the `GHookList`.)
    public static func firstValid(hookList hook_list: HookListProtocol, mayBeInCall may_be_in_call: Bool) -> Hook! {
        let rv: UnsafeMutablePointer<GHook>! = cast(g_hook_first_valid(cast(hook_list.ptr), gboolean(may_be_in_call ? 1 : 0)))
        return rv.map { Hook(cast($0)) }
    }

    /// Returns the `GHook` with the given id, or `nil` if it is not found.
    public static func get(hookList hook_list: HookListProtocol, hookID hook_id: CUnsignedLong) -> Hook! {
        let rv: UnsafeMutablePointer<GHook>! = cast(g_hook_get(cast(hook_list.ptr), gulong(hook_id)))
        return rv.map { Hook(cast($0)) }
    }

    /// Returns the next `GHook` in a `GHookList` which has not been destroyed.
    /// The reference count for the `GHook` is incremented, so you must call
    /// `g_hook_unref()` to restore it when no longer needed. (Or continue to call
    /// `g_hook_next_valid()` until `nil` is returned.)
    public static func nextValid(hookList hook_list: HookListProtocol, hook: HookProtocol, mayBeInCall may_be_in_call: Bool) -> Hook! {
        let rv: UnsafeMutablePointer<GHook>! = cast(g_hook_next_valid(cast(hook_list.ptr), cast(hook.ptr), gboolean(may_be_in_call ? 1 : 0)))
        return rv.map { Hook(cast($0)) }
    }

    /// Increments the reference count for a `GHook`.
    public static func ref(hookList hook_list: HookListProtocol, hook: HookProtocol) -> Hook! {
        let rv: UnsafeMutablePointer<GHook>! = cast(g_hook_ref(cast(hook_list.ptr), cast(hook.ptr)))
        return rv.map { Hook(cast($0)) }
    }

}

// MARK: no Hook properties

// MARK: no Hook signals


// MARK: Hook Record: HookProtocol extension (methods and fields)
public extension HookProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GHook` instance.
    var _ptr: UnsafeMutablePointer<GHook> { return ptr.assumingMemoryBound(to: GHook.self) }

    /// Compares the ids of two `GHook` elements, returning a negative value
    /// if the second id is greater than the first.
    func compareIDs(sibling: HookProtocol) -> Int {
        let rv: Int = cast(g_hook_compare_ids(cast(_ptr), cast(sibling.ptr)))
        return Int(rv)
    }

    /// Removes one `GHook` from a `GHookList`, marking it
    /// inactive and calling `g_hook_unref()` on it.
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
    /// `g_hook_unref()` to restore it when no longer needed. (Or continue to call
    /// `g_hook_next_valid()` until `nil` is returned.)
    func nextValid(hookList hook_list: HookListProtocol, mayBeInCall may_be_in_call: Bool) -> UnsafeMutablePointer<GHook>! {
        let rv: UnsafeMutablePointer<GHook>! = cast(g_hook_next_valid(cast(hook_list.ptr), cast(_ptr), gboolean(may_be_in_call ? 1 : 0)))
        return cast(rv)
    }

    /// Prepends a `GHook` on the start of a `GHookList`.
    func prepend(hookList hook_list: HookListProtocol) {
        g_hook_prepend(cast(hook_list.ptr), cast(_ptr))
    
    }

    /// Increments the reference count for a `GHook`.
    @discardableResult func ref(hookList hook_list: HookListProtocol) -> UnsafeMutablePointer<GHook>! {
        let rv: UnsafeMutablePointer<GHook>! = cast(g_hook_ref(cast(hook_list.ptr), cast(_ptr)))
        return cast(rv)
    }

    /// Decrements the reference count of a `GHook`.
    /// If the reference count falls to 0, the `GHook` is removed
    /// from the `GHookList` and `g_hook_free()` is called to free it.
    func unref(hookList hook_list: HookListProtocol) {
        g_hook_unref(cast(hook_list.ptr), cast(_ptr))
    
    }

    /// Removes one `GHook` from a `GHookList`, marking it
    /// inactive and calling `g_hook_unref()` on it.
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
    /// from the `GHookList` and `g_hook_free()` is called to free it.
    func hookUnref(hookList hook_list: HookListProtocol) {
        g_hook_unref(cast(hook_list.ptr), cast(_ptr))
    
    }

    /// data which is passed to func when this hook is invoked
    var data: UnsafeMutableRawPointer {
        /// data which is passed to func when this hook is invoked
        get {
            let rv: UnsafeMutableRawPointer = cast(_ptr.pointee.data)
            return rv
        }
        /// data which is passed to func when this hook is invoked
         set {
            _ptr.pointee.data = cast(newValue)
        }
    }

    /// pointer to the next hook in the list
    var next: UnsafeMutablePointer<GHook> {
        /// pointer to the next hook in the list
        get {
            let rv: UnsafeMutablePointer<GHook> = cast(_ptr.pointee.next)
            return rv
        }
        /// pointer to the next hook in the list
         set {
            _ptr.pointee.next = cast(newValue)
        }
    }

    /// pointer to the previous hook in the list
    var prev: UnsafeMutablePointer<GHook> {
        /// pointer to the previous hook in the list
        get {
            let rv: UnsafeMutablePointer<GHook> = cast(_ptr.pointee.prev)
            return rv
        }
        /// pointer to the previous hook in the list
         set {
            _ptr.pointee.prev = cast(newValue)
        }
    }

    /// the reference count of this hook
    var refCount: Int {
        /// the reference count of this hook
        get {
            let rv: Int = cast(_ptr.pointee.ref_count)
            return rv
        }
        /// the reference count of this hook
         set {
            _ptr.pointee.ref_count = guint(newValue)
        }
    }

    /// the id of this hook, which is unique within its list
    var hookID: Int {
        /// the id of this hook, which is unique within its list
        get {
            let rv: Int = cast(_ptr.pointee.hook_id)
            return rv
        }
        /// the id of this hook, which is unique within its list
         set {
            _ptr.pointee.hook_id = gulong(newValue)
        }
    }

    /// flags which are set for this hook. See `GHookFlagMask` for
    ///     predefined flags
    var flags: Int {
        /// flags which are set for this hook. See `GHookFlagMask` for
        ///     predefined flags
        get {
            let rv: Int = cast(_ptr.pointee.flags)
            return rv
        }
        /// flags which are set for this hook. See `GHookFlagMask` for
        ///     predefined flags
         set {
            _ptr.pointee.flags = guint(newValue)
        }
    }

    /// the function to call when this hook is invoked. The possible
    ///     signatures for this function are `GHookFunc` and `GHookCheckFunc`
    var `func`: UnsafeMutableRawPointer {
        /// the function to call when this hook is invoked. The possible
        ///     signatures for this function are `GHookFunc` and `GHookCheckFunc`
        get {
            let rv: UnsafeMutableRawPointer = cast(_ptr.pointee.func)
            return rv
        }
        /// the function to call when this hook is invoked. The possible
        ///     signatures for this function are `GHookFunc` and `GHookCheckFunc`
         set {
            _ptr.pointee.func = cast(newValue)
        }
    }

    /// the default `finalize_hook` function of a `GHookList` calls
    ///     this member of the hook that is being finalized
    var destroy: GDestroyNotify {
        /// the default `finalize_hook` function of a `GHookList` calls
        ///     this member of the hook that is being finalized
        get {
            let rv: GDestroyNotify = cast(_ptr.pointee.destroy)
            return rv
        }
        /// the default `finalize_hook` function of a `GHookList` calls
        ///     this member of the hook that is being finalized
         set {
            _ptr.pointee.destroy = cast(newValue)
        }
    }

}



