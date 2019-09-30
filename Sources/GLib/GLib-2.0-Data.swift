import CGLib

// MARK: - Data Record

/// The `DataProtocol` protocol exposes the methods and properties of an underlying `GData` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Data`.
/// Alternatively, use `DataRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GData` struct is an opaque data structure to represent a
/// [Keyed Data List][glib-Keyed-Data-Lists]. It should only be
/// accessed via the following functions.
public protocol DataProtocol {
    /// Untyped pointer to the underlying `GData` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GData` instance.
    var _ptr: UnsafeMutablePointer<GData> { get }
}

/// The `DataRef` type acts as a lightweight Swift reference to an underlying `GData` instance.
/// It exposes methods that can operate on this data type through `DataProtocol` conformance.
/// Use `DataRef` only as an `unowned` reference to an existing `GData` instance.
///
/// The `GData` struct is an opaque data structure to represent a
/// [Keyed Data List][glib-Keyed-Data-Lists]. It should only be
/// accessed via the following functions.
public struct DataRef: DataProtocol {
    /// Untyped pointer to the underlying `GData` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DataRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GData>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DataProtocol`
    init<T: DataProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Data` type acts as an owner of an underlying `GData` instance.
/// It provides the methods that can operate on this data type through `DataProtocol` conformance.
/// Use `Data` as a strong reference or owner of a `GData` instance.
///
/// The `GData` struct is an opaque data structure to represent a
/// [Keyed Data List][glib-Keyed-Data-Lists]. It should only be
/// accessed via the following functions.
open class Data: DataProtocol {
    /// Untyped pointer to the underlying `GData` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Data` instance.
    public init(_ op: UnsafeMutablePointer<GData>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DataProtocol`
    /// `GData` does not allow reference counting.
    public convenience init<T: DataProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GData, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GData`.
    deinit {
        // no reference counting for GData, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GData.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GData.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GData.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GData>(opaquePointer))
    }



}

// MARK: - no Data properties

// MARK: - no signals


public extension DataProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GData` instance.
    var _ptr: UnsafeMutablePointer<GData> { return ptr.assumingMemoryBound(to: GData.self) }

    /// Frees all the data elements of the datalist.
    /// The data elements' destroy functions are called
    /// if they have been set.
    func datalistClear() {
        g_datalist_clear(cast(_ptr))
    
    }

    /// Calls the given function for each data element of the datalist. The
    /// function is called with each data element's `GQuark` id and data,
    /// together with the given `user_data` parameter. Note that this
    /// function is NOT thread-safe. So unless `datalist` can be protected
    /// from any modifications during invocation of this function, it should
    /// not be called.
    /// 
    /// `func` can make changes to `datalist`, but the iteration will not
    /// reflect changes made during the g_datalist_foreach() call, other
    /// than skipping over elements that are removed.
    func datalistForeach(func_: @escaping DataForeachFunc, userData user_data: UnsafeMutableRawPointer) {
        g_datalist_foreach(cast(_ptr), func_, cast(user_data))
    
    }

    /// Gets a data element, using its string identifier. This is slower than
    /// g_datalist_id_get_data() because it compares strings.
    func datalistGetData(key: UnsafePointer<gchar>) -> UnsafeMutableRawPointer! {
        let rv = g_datalist_get_data(cast(_ptr), key)
        return cast(rv)
    }

    /// Gets flags values packed in together with the datalist.
    /// See g_datalist_set_flags().
    func datalistGetFlags() -> CUnsignedInt {
        let rv = g_datalist_get_flags(cast(_ptr))
        return CUnsignedInt(rv)
    }

    /// This is a variant of g_datalist_id_get_data() which
    /// returns a 'duplicate' of the value. `dup_func` defines the
    /// meaning of 'duplicate' in this context, it could e.g.
    /// take a reference on a ref-counted object.
    /// 
    /// If the `key_id` is not set in the datalist then `dup_func`
    /// will be called with a `nil` argument.
    /// 
    /// Note that `dup_func` is called while the datalist is locked, so it
    /// is not allowed to read or modify the datalist.
    /// 
    /// This function can be useful to avoid races when multiple
    /// threads are using the same datalist and the same key.
    func datalistIDDupData(keyID key_id: Quark, dupFunc dup_func: @escaping DuplicateFunc, userData user_data: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer! {
        let rv = g_datalist_id_dup_data(cast(_ptr), key_id, dup_func, cast(user_data))
        return cast(rv)
    }

    /// Retrieves the data element corresponding to `key_id`.
    func datalistIDGetData(keyID key_id: Quark) -> UnsafeMutableRawPointer! {
        let rv = g_datalist_id_get_data(cast(_ptr), key_id)
        return cast(rv)
    }

    /// Removes an element, without calling its destroy notification
    /// function.
    func datalistIDRemoveNoNotify(keyID key_id: Quark) -> UnsafeMutableRawPointer! {
        let rv = g_datalist_id_remove_no_notify(cast(_ptr), key_id)
        return cast(rv)
    }

    /// Compares the member that is associated with `key_id` in
    /// `datalist` to `oldval`, and if they are the same, replace
    /// `oldval` with `newval`.
    /// 
    /// This is like a typical atomic compare-and-exchange
    /// operation, for a member of `datalist`.
    /// 
    /// If the previous value was replaced then ownership of the
    /// old value (`oldval`) is passed to the caller, including
    /// the registered destroy notify for it (passed out in `old_destroy`).
    /// Its up to the caller to free this as he wishes, which may
    /// or may not include using `old_destroy` as sometimes replacement
    /// should not destroy the object in the normal way.
    func datalistIDReplaceData(keyID key_id: Quark, oldval: UnsafeMutableRawPointer, newval: UnsafeMutableRawPointer, destroy: @escaping DestroyNotify, oldDestroy old_destroy: UnsafeMutablePointer<GDestroyNotify>) -> Bool {
        let rv = g_datalist_id_replace_data(cast(_ptr), key_id, cast(oldval), cast(newval), destroy, cast(old_destroy))
        return Bool(rv != 0)
    }

    /// Sets the data corresponding to the given `GQuark` id, and the
    /// function to be called when the element is removed from the datalist.
    /// Any previous data with the same key is removed, and its destroy
    /// function is called.
    func datalistIDSetDataFull(keyID key_id: Quark, data: UnsafeMutableRawPointer, destroyFunc destroy_func: @escaping DestroyNotify) {
        g_datalist_id_set_data_full(cast(_ptr), key_id, cast(data), destroy_func)
    
    }

    /// Resets the datalist to `nil`. It does not free any memory or call
    /// any destroy functions.
    func datalistInit() {
        g_datalist_init(cast(_ptr))
    
    }

    /// Turns on flag values for a data list. This function is used
    /// to keep a small number of boolean flags in an object with
    /// a data list without using any additional space. It is
    /// not generally useful except in circumstances where space
    /// is very tight. (It is used in the base `GObject` type, for
    /// example.)
    func datalistSet(flags: CUnsignedInt) {
        g_datalist_set_flags(cast(_ptr), guint(flags))
    
    }

    /// Turns off flag values for a data list. See g_datalist_unset_flags()
    func datalistUnset(flags: CUnsignedInt) {
        g_datalist_unset_flags(cast(_ptr), guint(flags))
    
    }
}



