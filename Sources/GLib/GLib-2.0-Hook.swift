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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GHook` instance.
    var _ptr: UnsafeMutablePointer<GHook>! { get }

}

/// The `HookRef` type acts as a lightweight Swift reference to an underlying `GHook` instance.
/// It exposes methods that can operate on this data type through `HookProtocol` conformance.
/// Use `HookRef` only as an `unowned` reference to an existing `GHook` instance.
///
/// The `GHook` struct represents a single hook function in a `GHookList`.
public struct HookRef: HookProtocol {
        /// Untyped pointer to the underlying `GHook` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension HookRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GHook>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GHook>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GHook>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GHook>?) {
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

    /// Reference intialiser for a related type that implements `HookProtocol`
    @inlinable init<T: HookProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Allocates space for a `GHook` and initializes it.
    @inlinable static func alloc<HookListT: HookListProtocol>(hookList: HookListT) -> HookRef! {
        guard let rv = HookRef(gconstpointer: gconstpointer(g_hook_alloc(hookList._ptr))) else { return nil }
        return rv
    }

    /// Finds a `GHook` in a `GHookList` using the given function to
    /// test for a match.
    @inlinable static func find<HookListT: HookListProtocol>(hookList: HookListT, needValids: Bool, `func`: GHookFindFunc?, data: gpointer! = nil) -> HookRef! {
        guard let rv = HookRef(gconstpointer: gconstpointer(g_hook_find(hookList._ptr, gboolean((needValids) ? 1 : 0), `func`, data))) else { return nil }
        return rv
    }

    /// Finds a `GHook` in a `GHookList` with the given data.
    @inlinable static func findData<HookListT: HookListProtocol>(hookList: HookListT, needValids: Bool, data: gpointer! = nil) -> HookRef! {
        guard let rv = HookRef(gconstpointer: gconstpointer(g_hook_find_data(hookList._ptr, gboolean((needValids) ? 1 : 0), data))) else { return nil }
        return rv
    }

    /// Finds a `GHook` in a `GHookList` with the given function.
    @inlinable static func findFunc<HookListT: HookListProtocol>(hookList: HookListT, needValids: Bool, `func`: gpointer! = nil) -> HookRef! {
        guard let rv = HookRef(gconstpointer: gconstpointer(g_hook_find_func(hookList._ptr, gboolean((needValids) ? 1 : 0), `func`))) else { return nil }
        return rv
    }

    /// Finds a `GHook` in a `GHookList` with the given function and data.
    @inlinable static func findFuncData<HookListT: HookListProtocol>(hookList: HookListT, needValids: Bool, `func`: gpointer!, data: gpointer! = nil) -> HookRef! {
        guard let rv = HookRef(gconstpointer: gconstpointer(g_hook_find_func_data(hookList._ptr, gboolean((needValids) ? 1 : 0), `func`, data))) else { return nil }
        return rv
    }

    /// Returns the first `GHook` in a `GHookList` which has not been destroyed.
    /// The reference count for the `GHook` is incremented, so you must call
    /// `g_hook_unref()` to restore it when no longer needed. (Or call
    /// `g_hook_next_valid()` if you are stepping through the `GHookList`.)
    @inlinable static func firstValid<HookListT: HookListProtocol>(hookList: HookListT, mayBeInCall: Bool) -> HookRef! {
        guard let rv = HookRef(gconstpointer: gconstpointer(g_hook_first_valid(hookList._ptr, gboolean((mayBeInCall) ? 1 : 0)))) else { return nil }
        return rv
    }

    /// Returns the `GHook` with the given id, or `nil` if it is not found.
    @inlinable static func get<HookListT: HookListProtocol>(hookList: HookListT, hookID: Int) -> HookRef! {
        guard let rv = HookRef(gconstpointer: gconstpointer(g_hook_get(hookList._ptr, gulong(hookID)))) else { return nil }
        return rv
    }

    /// Returns the next `GHook` in a `GHookList` which has not been destroyed.
    /// The reference count for the `GHook` is incremented, so you must call
    /// `g_hook_unref()` to restore it when no longer needed. (Or continue to call
    /// `g_hook_next_valid()` until `nil` is returned.)
    @inlinable static func nextValid<HookListT: HookListProtocol, HookT: HookProtocol>(hookList: HookListT, hook: HookT, mayBeInCall: Bool) -> HookRef! {
        guard let rv = HookRef(gconstpointer: gconstpointer(g_hook_next_valid(hookList._ptr, hook._ptr, gboolean((mayBeInCall) ? 1 : 0)))) else { return nil }
        return rv
    }

    /// Increments the reference count for a `GHook`.
    @inlinable static func ref<HookListT: HookListProtocol, HookT: HookProtocol>(hookList: HookListT, hook: HookT) -> HookRef! {
        guard let rv = HookRef(gconstpointer: gconstpointer(g_hook_ref(hookList._ptr, hook._ptr))) else { return nil }
        return rv
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
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Hook` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GHook>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Hook` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GHook>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Hook` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Hook` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Hook` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GHook>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Hook` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GHook>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GHook` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Hook` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GHook>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GHook, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `HookProtocol`
    /// `GHook` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `HookProtocol`
    @inlinable public init<T: HookProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GHook, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GHook`.
    deinit {
        // no reference counting for GHook, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GHook, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GHook, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GHook, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GHook, cannot ref(_ptr)
    }


    /// Allocates space for a `GHook` and initializes it.
    @inlinable public static func alloc<HookListT: HookListProtocol>(hookList: HookListT) -> Hook! {
        guard let rv = Hook(gconstpointer: gconstpointer(g_hook_alloc(hookList._ptr))) else { return nil }
        return rv
    }

    /// Finds a `GHook` in a `GHookList` using the given function to
    /// test for a match.
    @inlinable public static func find<HookListT: HookListProtocol>(hookList: HookListT, needValids: Bool, `func`: GHookFindFunc?, data: gpointer! = nil) -> Hook! {
        guard let rv = Hook(gconstpointer: gconstpointer(g_hook_find(hookList._ptr, gboolean((needValids) ? 1 : 0), `func`, data))) else { return nil }
        return rv
    }

    /// Finds a `GHook` in a `GHookList` with the given data.
    @inlinable public static func findData<HookListT: HookListProtocol>(hookList: HookListT, needValids: Bool, data: gpointer! = nil) -> Hook! {
        guard let rv = Hook(gconstpointer: gconstpointer(g_hook_find_data(hookList._ptr, gboolean((needValids) ? 1 : 0), data))) else { return nil }
        return rv
    }

    /// Finds a `GHook` in a `GHookList` with the given function.
    @inlinable public static func findFunc<HookListT: HookListProtocol>(hookList: HookListT, needValids: Bool, `func`: gpointer! = nil) -> Hook! {
        guard let rv = Hook(gconstpointer: gconstpointer(g_hook_find_func(hookList._ptr, gboolean((needValids) ? 1 : 0), `func`))) else { return nil }
        return rv
    }

    /// Finds a `GHook` in a `GHookList` with the given function and data.
    @inlinable public static func findFuncData<HookListT: HookListProtocol>(hookList: HookListT, needValids: Bool, `func`: gpointer!, data: gpointer! = nil) -> Hook! {
        guard let rv = Hook(gconstpointer: gconstpointer(g_hook_find_func_data(hookList._ptr, gboolean((needValids) ? 1 : 0), `func`, data))) else { return nil }
        return rv
    }

    /// Returns the first `GHook` in a `GHookList` which has not been destroyed.
    /// The reference count for the `GHook` is incremented, so you must call
    /// `g_hook_unref()` to restore it when no longer needed. (Or call
    /// `g_hook_next_valid()` if you are stepping through the `GHookList`.)
    @inlinable public static func firstValid<HookListT: HookListProtocol>(hookList: HookListT, mayBeInCall: Bool) -> Hook! {
        guard let rv = Hook(gconstpointer: gconstpointer(g_hook_first_valid(hookList._ptr, gboolean((mayBeInCall) ? 1 : 0)))) else { return nil }
        return rv
    }

    /// Returns the `GHook` with the given id, or `nil` if it is not found.
    @inlinable public static func get<HookListT: HookListProtocol>(hookList: HookListT, hookID: Int) -> Hook! {
        guard let rv = Hook(gconstpointer: gconstpointer(g_hook_get(hookList._ptr, gulong(hookID)))) else { return nil }
        return rv
    }

    /// Returns the next `GHook` in a `GHookList` which has not been destroyed.
    /// The reference count for the `GHook` is incremented, so you must call
    /// `g_hook_unref()` to restore it when no longer needed. (Or continue to call
    /// `g_hook_next_valid()` until `nil` is returned.)
    @inlinable public static func nextValid<HookListT: HookListProtocol, HookT: HookProtocol>(hookList: HookListT, hook: HookT, mayBeInCall: Bool) -> Hook! {
        guard let rv = Hook(gconstpointer: gconstpointer(g_hook_next_valid(hookList._ptr, hook._ptr, gboolean((mayBeInCall) ? 1 : 0)))) else { return nil }
        return rv
    }

    /// Increments the reference count for a `GHook`.
    @inlinable public static func ref<HookListT: HookListProtocol, HookT: HookProtocol>(hookList: HookListT, hook: HookT) -> Hook! {
        guard let rv = Hook(gconstpointer: gconstpointer(g_hook_ref(hookList._ptr, hook._ptr))) else { return nil }
        return rv
    }

}

// MARK: no Hook properties

// MARK: no Hook signals


// MARK: Hook Record: HookProtocol extension (methods and fields)
public extension HookProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GHook` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GHook>! { return ptr?.assumingMemoryBound(to: GHook.self) }

    /// Compares the ids of two `GHook` elements, returning a negative value
    /// if the second id is greater than the first.
    @inlinable func compareIDs<HookT: HookProtocol>(sibling: HookT) -> Int {
        let rv = Int(g_hook_compare_ids(_ptr, sibling._ptr))
        return rv
    }

    /// Removes one `GHook` from a `GHookList`, marking it
    /// inactive and calling `g_hook_unref()` on it.
    @inlinable func destroyLink<HookListT: HookListProtocol>(hookList: HookListT) {
        g_hook_destroy_link(hookList._ptr, _ptr)
    
    }

    /// Calls the `GHookList` `finalize_hook` function if it exists,
    /// and frees the memory allocated for the `GHook`.
    @inlinable func free<HookListT: HookListProtocol>(hookList: HookListT) {
        g_hook_free(hookList._ptr, _ptr)
    
    }

    /// Inserts a `GHook` into a `GHookList`, before a given `GHook`.
    @inlinable func insertBefore<HookListT: HookListProtocol, HookT: HookProtocol>(hookList: HookListT, hook: HookT) {
        g_hook_insert_before(hookList._ptr, _ptr, hook._ptr)
    
    }

    /// Inserts a `GHook` into a `GHookList`, sorted by the given function.
    @inlinable func insertSorted<HookListT: HookListProtocol>(hookList: HookListT, `func`: GHookCompareFunc?) {
        g_hook_insert_sorted(hookList._ptr, _ptr, `func`)
    
    }

    /// Returns the next `GHook` in a `GHookList` which has not been destroyed.
    /// The reference count for the `GHook` is incremented, so you must call
    /// `g_hook_unref()` to restore it when no longer needed. (Or continue to call
    /// `g_hook_next_valid()` until `nil` is returned.)
    @inlinable func nextValid<HookListT: HookListProtocol>(hookList: HookListT, mayBeInCall: Bool) -> HookRef! {
        guard let rv = HookRef(gconstpointer: gconstpointer(g_hook_next_valid(hookList._ptr, _ptr, gboolean((mayBeInCall) ? 1 : 0)))) else { return nil }
        return rv
    }

    /// Prepends a `GHook` on the start of a `GHookList`.
    @inlinable func prepend<HookListT: HookListProtocol>(hookList: HookListT) {
        g_hook_prepend(hookList._ptr, _ptr)
    
    }

    /// Increments the reference count for a `GHook`.
    @inlinable func ref<HookListT: HookListProtocol>(hookList: HookListT) -> HookRef! {
        guard let rv = HookRef(gconstpointer: gconstpointer(g_hook_ref(hookList._ptr, _ptr))) else { return nil }
        return rv
    }

    /// Decrements the reference count of a `GHook`.
    /// If the reference count falls to 0, the `GHook` is removed
    /// from the `GHookList` and `g_hook_free()` is called to free it.
    @inlinable func unref<HookListT: HookListProtocol>(hookList: HookListT) {
        g_hook_unref(hookList._ptr, _ptr)
    
    }

    /// Removes one `GHook` from a `GHookList`, marking it
    /// inactive and calling `g_hook_unref()` on it.
    @inlinable func hookDestroyLink<HookListT: HookListProtocol>(hookList: HookListT) {
        g_hook_destroy_link(hookList._ptr, _ptr)
    
    }

    /// Calls the `GHookList` `finalize_hook` function if it exists,
    /// and frees the memory allocated for the `GHook`.
    @inlinable func hookFree<HookListT: HookListProtocol>(hookList: HookListT) {
        g_hook_free(hookList._ptr, _ptr)
    
    }

    /// Inserts a `GHook` into a `GHookList`, before a given `GHook`.
    @inlinable func hookInsertBefore<HookListT: HookListProtocol, HookT: HookProtocol>(hookList: HookListT, hook: HookT) {
        g_hook_insert_before(hookList._ptr, _ptr, hook._ptr)
    
    }

    /// Prepends a `GHook` on the start of a `GHookList`.
    @inlinable func hookPrepend<HookListT: HookListProtocol>(hookList: HookListT) {
        g_hook_prepend(hookList._ptr, _ptr)
    
    }

    /// Decrements the reference count of a `GHook`.
    /// If the reference count falls to 0, the `GHook` is removed
    /// from the `GHookList` and `g_hook_free()` is called to free it.
    @inlinable func hookUnref<HookListT: HookListProtocol>(hookList: HookListT) {
        g_hook_unref(hookList._ptr, _ptr)
    
    }

    /// data which is passed to func when this hook is invoked
    @inlinable var data: gpointer! {
        /// data which is passed to func when this hook is invoked
        get {
            let rv = _ptr.pointee.data
            return rv
        }
        /// data which is passed to func when this hook is invoked
         set {
            _ptr.pointee.data = newValue
        }
    }

    /// pointer to the next hook in the list
    @inlinable var next: HookRef! {
        /// pointer to the next hook in the list
        get {
            let rv = HookRef(gconstpointer: gconstpointer(_ptr.pointee.next))
            return rv
        }
        /// pointer to the next hook in the list
         set {
            _ptr.pointee.next = UnsafeMutablePointer<GHook>(newValue._ptr)
        }
    }

    /// pointer to the previous hook in the list
    @inlinable var prev: HookRef! {
        /// pointer to the previous hook in the list
        get {
            let rv = HookRef(gconstpointer: gconstpointer(_ptr.pointee.prev))
            return rv
        }
        /// pointer to the previous hook in the list
         set {
            _ptr.pointee.prev = UnsafeMutablePointer<GHook>(newValue._ptr)
        }
    }

    /// the reference count of this hook
    @inlinable var refCount: guint {
        /// the reference count of this hook
        get {
            let rv = _ptr.pointee.ref_count
            return rv
        }
        /// the reference count of this hook
         set {
            _ptr.pointee.ref_count = newValue
        }
    }

    /// the id of this hook, which is unique within its list
    @inlinable var hookID: gulong {
        /// the id of this hook, which is unique within its list
        get {
            let rv = _ptr.pointee.hook_id
            return rv
        }
        /// the id of this hook, which is unique within its list
         set {
            _ptr.pointee.hook_id = newValue
        }
    }

    /// flags which are set for this hook. See `GHookFlagMask` for
    ///     predefined flags
    @inlinable var flags: guint {
        /// flags which are set for this hook. See `GHookFlagMask` for
        ///     predefined flags
        get {
            let rv = _ptr.pointee.flags
            return rv
        }
        /// flags which are set for this hook. See `GHookFlagMask` for
        ///     predefined flags
         set {
            _ptr.pointee.flags = newValue
        }
    }

    /// the function to call when this hook is invoked. The possible
    ///     signatures for this function are `GHookFunc` and `GHookCheckFunc`
    @inlinable var `func`: gpointer! {
        /// the function to call when this hook is invoked. The possible
        ///     signatures for this function are `GHookFunc` and `GHookCheckFunc`
        get {
            let rv = _ptr.pointee.func
            return rv
        }
        /// the function to call when this hook is invoked. The possible
        ///     signatures for this function are `GHookFunc` and `GHookCheckFunc`
         set {
            _ptr.pointee.func = newValue
        }
    }

    /// the default `finalize_hook` function of a `GHookList` calls
    ///     this member of the hook that is being finalized
    @inlinable var destroy: GDestroyNotify! {
        /// the default `finalize_hook` function of a `GHookList` calls
        ///     this member of the hook that is being finalized
        get {
            let rv = _ptr.pointee.destroy
            return rv
        }
        /// the default `finalize_hook` function of a `GHookList` calls
        ///     this member of the hook that is being finalized
         set {
            _ptr.pointee.destroy = newValue
        }
    }

}



