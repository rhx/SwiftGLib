import CGLib

// MARK: - Array Record

/// The `ArrayTypeProtocol` protocol exposes the methods and properties of an underlying `GArray` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ArrayType`.
/// Alternatively, use `ArrayTypeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Contains the public fields of a GArray.
public protocol ArrayTypeProtocol {
        /// Untyped pointer to the underlying `GArray` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GArray` instance.
    var array_ptr: UnsafeMutablePointer<GArray> { get }
}

/// The `ArrayRef` type acts as a lightweight Swift reference to an underlying `GArray` instance.
/// It exposes methods that can operate on this data type through `ArrayTypeProtocol` conformance.
/// Use `ArrayRef` only as an `unowned` reference to an existing `GArray` instance.
///
/// Contains the public fields of a GArray.
public struct ArrayRef: ArrayTypeProtocol {
        /// Untyped pointer to the underlying `GArray` instance.
    /// For type-safe access, use the generated, typed pointer `array_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ArrayRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GArray>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ArrayTypeProtocol`
    init<T: ArrayTypeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayTypeProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayTypeProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayTypeProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayTypeProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayTypeProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GArray` with `reserved_size` elements preallocated and
    /// a reference count of 1. This avoids frequent reallocation, if you
    /// are going to add many elements to the array. Note however that the
    /// size of the array is still 0.
    static func sizedNew(sized zero_terminated: Bool, clear_: Bool, elementSize element_size: CUnsignedInt, reservedSize reserved_size: CUnsignedInt) -> ArrayRef! {
        let rv: UnsafeMutablePointer<GArray>! = cast(g_array_sized_new(gboolean(zero_terminated ? 1 : 0), gboolean(clear_ ? 1 : 0), guint(element_size), guint(reserved_size)))
        return rv.map { ArrayRef(cast($0)) }
    }
}

/// The `ArrayType` type acts as a reference-counted owner of an underlying `GArray` instance.
/// It provides the methods that can operate on this data type through `ArrayTypeProtocol` conformance.
/// Use `ArrayType` as a strong reference or owner of a `GArray` instance.
///
/// Contains the public fields of a GArray.
open class ArrayType: ArrayTypeProtocol {
        /// Untyped pointer to the underlying `GArray` instance.
    /// For type-safe access, use the generated, typed pointer `array_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ArrayType` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GArray>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GArray`.
    /// i.e., ownership is transferred to the `ArrayType` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GArray>) {
        ptr = UnsafeMutableRawPointer(op)
        g_array_ref(cast(array_ptr))
    }

    /// Reference intialiser for a related type that implements `ArrayTypeProtocol`
    /// Will retain `GArray`.
    /// - Parameter other: an instance of a related type that implements `ArrayTypeProtocol`
    public init<T: ArrayTypeProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.array_ptr)
        g_array_ref(cast(array_ptr))
    }

    /// Releases the underlying `GArray` instance using `g_array_unref`.
    deinit {
        g_array_unref(cast(array_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayTypeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayTypeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_array_ref(cast(array_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayTypeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayTypeProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_array_ref(cast(array_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayTypeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayTypeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_array_ref(cast(array_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayTypeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayTypeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_array_ref(cast(array_ptr))
    }


    /// Creates a new `GArray` with `reserved_size` elements preallocated and
    /// a reference count of 1. This avoids frequent reallocation, if you
    /// are going to add many elements to the array. Note however that the
    /// size of the array is still 0.
    public static func sizedNew(sized zero_terminated: Bool, clear_: Bool, elementSize element_size: CUnsignedInt, reservedSize reserved_size: CUnsignedInt) -> ArrayType! {
        let rv: UnsafeMutablePointer<GArray>! = cast(g_array_sized_new(gboolean(zero_terminated ? 1 : 0), gboolean(clear_ ? 1 : 0), guint(element_size), guint(reserved_size)))
        return rv.map { ArrayType(cast($0)) }
    }

}

// MARK: no ArrayType properties

// MARK: no ArrayType signals


// MARK: Array Record: ArrayTypeProtocol extension (methods and fields)
public extension ArrayTypeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GArray` instance.
    var array_ptr: UnsafeMutablePointer<GArray> { return ptr.assumingMemoryBound(to: GArray.self) }

    /// Adds `len` elements onto the end of the array.
    func appendVals(data: gconstpointer, len: CUnsignedInt) -> UnsafeMutablePointer<GArray>! {
        let rv: UnsafeMutablePointer<GArray>! = cast(g_array_append_vals(cast(array_ptr), cast(data), guint(len)))
        return cast(rv)
    }

    /// Checks whether `target` exists in `array` by performing a binary
    /// search based on the given comparison function `compare_func` which
    /// get pointers to items as arguments. If the element is found, `true`
    /// is returned and the element’s index is returned in `out_match_index`
    /// (if non-`nil`). Otherwise, `false` is returned and `out_match_index`
    /// is undefined. If `target` exists multiple times in `array`, the index
    /// of the first instance is returned. This search is using a binary
    /// search, so the `array` must absolutely be sorted to return a correct
    /// result (if not, the function may produce false-negative).
    /// 
    /// This example defines a comparison function and search an element in a `GArray:`
    /// (C Language Example):
    /// ```C
    /// static gint*
    /// cmpint (gconstpointer a, gconstpointer b)
    /// {
    ///   const gint *_a = a;
    ///   const gint *_b = b;
    /// 
    ///   return *_a - *_b;
    /// }
    /// ...
    /// gint i = 424242;
    /// guint matched_index;
    /// gboolean result = g_array_binary_search (garray, &i, cmpint, &matched_index);
    /// ...
    /// ```
    /// 
    func binarySearch(target: gconstpointer, compareFunc compare_func: @escaping CompareFunc, outMatchIndex out_match_index: UnsafeMutablePointer<CUnsignedInt>) -> Bool {
        let rv = g_array_binary_search(cast(array_ptr), cast(target), compare_func, cast(out_match_index))
        return Bool(rv != 0)
    }

    /// Create a shallow copy of a `GArray`. If the array elements consist of
    /// pointers to data, the pointers are copied but the actual data is not.
    func copy() -> UnsafeMutablePointer<GArray>! {
        let rv: UnsafeMutablePointer<GArray>! = cast(g_array_copy(cast(array_ptr)))
        return cast(rv)
    }

    /// Frees the memory allocated for the `GArray`. If `free_segment` is
    /// `true` it frees the memory block holding the elements as well. Pass
    /// `false` if you want to free the `GArray` wrapper but preserve the
    /// underlying array for use elsewhere. If the reference count of
    /// `array` is greater than one, the `GArray` wrapper is preserved but
    /// the size of  `array` will be set to zero.
    /// 
    /// If array contents point to dynamically-allocated memory, they should
    /// be freed separately if `free_seg` is `true` and no `clear_func`
    /// function has been set for `array`.
    /// 
    /// This function is not thread-safe. If using a `GArray` from multiple
    /// threads, use only the atomic `g_array_ref()` and `g_array_unref()`
    /// functions.
    @discardableResult func free(freeSegment free_segment: Bool) -> UnsafeMutableRawPointer? {
        let rv: String! = cast(g_array_free(cast(array_ptr), gboolean(free_segment ? 1 : 0)))
        return cast(rv)
    }

    /// Gets the size of the elements in `array`.
    func getElementSize() -> Int {
        let rv: Int = cast(g_array_get_element_size(cast(array_ptr)))
        return Int(rv)
    }

    /// Inserts `len` elements into a `GArray` at the given index.
    /// 
    /// If `index_` is greater than the array’s current length, the array is expanded.
    /// The elements between the old end of the array and the newly inserted elements
    /// will be initialised to zero if the array was configured to clear elements;
    /// otherwise their values will be undefined.
    /// 
    /// `data` may be `nil` if (and only if) `len` is zero. If `len` is zero, this
    /// function is a no-op.
    @discardableResult func insertVals(index_: CUnsignedInt, data: gconstpointer, len: CUnsignedInt) -> UnsafeMutablePointer<GArray>! {
        let rv: UnsafeMutablePointer<GArray>! = cast(g_array_insert_vals(cast(array_ptr), guint(index_), cast(data), guint(len)))
        return cast(rv)
    }

    /// Adds `len` elements onto the start of the array.
    /// 
    /// `data` may be `nil` if (and only if) `len` is zero. If `len` is zero, this
    /// function is a no-op.
    /// 
    /// This operation is slower than `g_array_append_vals()` since the
    /// existing elements in the array have to be moved to make space for
    /// the new elements.
    @discardableResult func prependVals(data: gconstpointer, len: CUnsignedInt) -> UnsafeMutablePointer<GArray>! {
        let rv: UnsafeMutablePointer<GArray>! = cast(g_array_prepend_vals(cast(array_ptr), cast(data), guint(len)))
        return cast(rv)
    }

    /// Atomically increments the reference count of `array` by one.
    /// This function is thread-safe and may be called from any thread.
    @discardableResult func ref() -> UnsafeMutablePointer<GArray>! {
        let rv: UnsafeMutablePointer<GArray>! = cast(g_array_ref(cast(array_ptr)))
        return cast(rv)
    }

    /// Removes the element at the given index from a `GArray`. The following
    /// elements are moved down one place.
    @discardableResult func removeIndex(index_: CUnsignedInt) -> UnsafeMutablePointer<GArray>! {
        let rv: UnsafeMutablePointer<GArray>! = cast(g_array_remove_index(cast(array_ptr), guint(index_)))
        return cast(rv)
    }

    /// Removes the element at the given index from a `GArray`. The last
    /// element in the array is used to fill in the space, so this function
    /// does not preserve the order of the `GArray`. But it is faster than
    /// `g_array_remove_index()`.
    @discardableResult func removeIndexFast(index_: CUnsignedInt) -> UnsafeMutablePointer<GArray>! {
        let rv: UnsafeMutablePointer<GArray>! = cast(g_array_remove_index_fast(cast(array_ptr), guint(index_)))
        return cast(rv)
    }

    /// Removes the given number of elements starting at the given index
    /// from a `GArray`.  The following elements are moved to close the gap.
    @discardableResult func removeRange(index_: CUnsignedInt, length: CUnsignedInt) -> UnsafeMutablePointer<GArray>! {
        let rv: UnsafeMutablePointer<GArray>! = cast(g_array_remove_range(cast(array_ptr), guint(index_), guint(length)))
        return cast(rv)
    }

    /// Sets a function to clear an element of `array`.
    /// 
    /// The `clear_func` will be called when an element in the array
    /// data segment is removed and when the array is freed and data
    /// segment is deallocated as well. `clear_func` will be passed a
    /// pointer to the element to clear, rather than the element itself.
    /// 
    /// Note that in contrast with other uses of `GDestroyNotify`
    /// functions, `clear_func` is expected to clear the contents of
    /// the array element it is given, but not free the element itself.
    func set(clearFunc clear_func: @escaping DestroyNotify) {
        g_array_set_clear_func(cast(array_ptr), clear_func)
    
    }

    /// Sets the size of the array, expanding it if necessary. If the array
    /// was created with `clear_` set to `true`, the new elements are set to 0.
    @discardableResult func setSize(length: CUnsignedInt) -> UnsafeMutablePointer<GArray>! {
        let rv: UnsafeMutablePointer<GArray>! = cast(g_array_set_size(cast(array_ptr), guint(length)))
        return cast(rv)
    }

    /// Sorts a `GArray` using `compare_func` which should be a `qsort()`-style
    /// comparison function (returns less than zero for first arg is less
    /// than second arg, zero for equal, greater zero if first arg is
    /// greater than second arg).
    /// 
    /// This is guaranteed to be a stable sort since version 2.32.
    func sort(compareFunc compare_func: @escaping CompareFunc) {
        g_array_sort(cast(array_ptr), compare_func)
    
    }

    /// Like `g_array_sort()`, but the comparison function receives an extra
    /// user data argument.
    /// 
    /// This is guaranteed to be a stable sort since version 2.32.
    /// 
    /// There used to be a comment here about making the sort stable by
    /// using the addresses of the elements in the comparison function.
    /// This did not actually work, so any such code should be removed.
    func sortWithData(compareFunc compare_func: @escaping CompareDataFunc, userData user_data: UnsafeMutableRawPointer) {
        g_array_sort_with_data(cast(array_ptr), compare_func, cast(user_data))
    
    }

    /// Frees the data in the array and resets the size to zero, while
    /// the underlying array is preserved for use elsewhere and returned
    /// to the caller.
    /// 
    /// If the array was created with the `zero_terminate` property
    /// set to `true`, the returned data is zero terminated too.
    /// 
    /// If array elements contain dynamically-allocated memory,
    /// the array elements should also be freed by the caller.
    /// 
    /// A short example of use:
    /// (C Language Example):
    /// ```C
    /// ...
    /// gpointer data;
    /// gsize data_len;
    /// data = g_array_steal (some_array, &data_len);
    /// ...
    /// ```
    /// 
    func steal(len: UnsafeMutablePointer<Int>) -> UnsafeMutableRawPointer! {
        let rv: UnsafeMutableRawPointer! = cast(g_array_steal(cast(array_ptr), cast(len)))
        return cast(rv)
    }

    /// Atomically decrements the reference count of `array` by one. If the
    /// reference count drops to 0, all memory allocated by the array is
    /// released. This function is thread-safe and may be called from any
    /// thread.
    func unref() {
        g_array_unref(cast(array_ptr))
    
    }
    /// Gets the size of the elements in `array`.
    var elementSize: Int {
        /// Gets the size of the elements in `array`.
        get {
            let rv: Int = cast(g_array_get_element_size(cast(array_ptr)))
            return Int(rv)
        }
    }

    /// a pointer to the element data. The data may be moved as
    ///     elements are added to the `GArray`.
    var data: UnsafePointer<CChar> {
        /// a pointer to the element data. The data may be moved as
        ///     elements are added to the `GArray`.
        get {
            let rv: UnsafePointer<CChar> = cast(array_ptr.pointee.data)
            return rv
        }
        /// a pointer to the element data. The data may be moved as
        ///     elements are added to the `GArray`.
         set {
            array_ptr.pointee.data = cast(newValue)
        }
    }

    /// the number of elements in the `GArray` not including the
    ///     possible terminating zero element.
    var len: Int {
        /// the number of elements in the `GArray` not including the
        ///     possible terminating zero element.
        get {
            let rv: Int = cast(array_ptr.pointee.len)
            return rv
        }
        /// the number of elements in the `GArray` not including the
        ///     possible terminating zero element.
         set {
            array_ptr.pointee.len = guint(newValue)
        }
    }

}



