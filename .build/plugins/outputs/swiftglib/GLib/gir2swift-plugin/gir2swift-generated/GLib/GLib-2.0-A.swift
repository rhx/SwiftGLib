import CGLib

// MARK: - Array Record

/// Contains the public fields of a GArray.
///
/// The `ArrayProtocol` protocol exposes the methods and properties of an underlying `GArray` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ArrayType`.
/// Alternatively, use `ArrayRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ArrayProtocol {
        /// Untyped pointer to the underlying `GArray` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GArray` instance.
    var array_ptr: UnsafeMutablePointer<GArray>! { get }

    /// Required Initialiser for types conforming to `ArrayProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Contains the public fields of a GArray.
///
/// The `ArrayRef` type acts as a lightweight Swift reference to an underlying `GArray` instance.
/// It exposes methods that can operate on this data type through `ArrayProtocol` conformance.
/// Use `ArrayRef` only as an `unowned` reference to an existing `GArray` instance.
///
public struct ArrayRef: ArrayProtocol {
        /// Untyped pointer to the underlying `GArray` instance.
    /// For type-safe access, use the generated, typed pointer `array_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ArrayRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GArray>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GArray>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GArray>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GArray>?) {
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

    /// Reference intialiser for a related type that implements `ArrayProtocol`
    @inlinable init<T: ArrayProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GArray` with `reserved_size` elements preallocated and
    /// a reference count of 1. This avoids frequent reallocation, if you
    /// are going to add many elements to the array. Note however that the
    /// size of the array is still 0.
    @inlinable static func sizedNew(sized zeroTerminated: Bool, clear: Bool, elementSize: Int, reservedSize: Int) -> ArrayRef! {
            let result = g_array_sized_new(gboolean((zeroTerminated) ? 1 : 0), gboolean((clear) ? 1 : 0), guint(elementSize), guint(reservedSize))
        guard let rv = ArrayRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }
}

/// Contains the public fields of a GArray.
///
/// The `ArrayType` type acts as a reference-counted owner of an underlying `GArray` instance.
/// It provides the methods that can operate on this data type through `ArrayProtocol` conformance.
/// Use `ArrayType` as a strong reference or owner of a `GArray` instance.
///
open class ArrayType: ArrayProtocol {
        /// Untyped pointer to the underlying `GArray` instance.
    /// For type-safe access, use the generated, typed pointer `array_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ArrayType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GArray>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ArrayType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GArray>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ArrayType` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ArrayType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ArrayType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GArray>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ArrayType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GArray>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GArray`.
    /// i.e., ownership is transferred to the `ArrayType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GArray>) {
        ptr = UnsafeMutableRawPointer(op)
        g_array_ref(ptr.assumingMemoryBound(to: GArray.self))
    }

    /// Reference intialiser for a related type that implements `ArrayProtocol`
    /// Will retain `GArray`.
    /// - Parameter other: an instance of a related type that implements `ArrayProtocol`
    @inlinable public init<T: ArrayProtocol>(_ other: T) {
        ptr = other.ptr
        g_array_ref(ptr.assumingMemoryBound(to: GArray.self))
    }

    /// Releases the underlying `GArray` instance using `g_array_unref`.
    deinit {
        g_array_unref(ptr.assumingMemoryBound(to: GArray.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_array_ref(ptr.assumingMemoryBound(to: GArray.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_array_ref(ptr.assumingMemoryBound(to: GArray.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_array_ref(ptr.assumingMemoryBound(to: GArray.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_array_ref(ptr.assumingMemoryBound(to: GArray.self))
    }


    /// Creates a new `GArray` with `reserved_size` elements preallocated and
    /// a reference count of 1. This avoids frequent reallocation, if you
    /// are going to add many elements to the array. Note however that the
    /// size of the array is still 0.
    @inlinable public static func sizedNew(sized zeroTerminated: Bool, clear: Bool, elementSize: Int, reservedSize: Int) -> ArrayType! {
            let result = g_array_sized_new(gboolean((zeroTerminated) ? 1 : 0), gboolean((clear) ? 1 : 0), guint(elementSize), guint(reservedSize))
        guard let rv = ArrayType(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

}

// MARK: no ArrayType properties

// MARK: no ArrayType signals

// MARK: ArrayType has no signals
// MARK: Array Record: ArrayProtocol extension (methods and fields)
public extension ArrayProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GArray` instance.
    @inlinable var array_ptr: UnsafeMutablePointer<GArray>! { return ptr?.assumingMemoryBound(to: GArray.self) }

    /// Adds `len` elements onto the end of the array.
    @inlinable func appendVals(data: gconstpointer?, len: Int) -> ArrayRef! {
        let result = g_array_append_vals(array_ptr, data, guint(len))
        guard let rv = ArrayRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
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
    @inlinable func binarySearch(target: gconstpointer? = nil, compareFunc: GCompareFunc?, outMatchIndex: UnsafeMutablePointer<guint>! = nil) -> Bool {
        let result = g_array_binary_search(array_ptr, target, compareFunc, outMatchIndex)
        let rv = ((result) != 0)
        return rv
    }

    /// Create a shallow copy of a `GArray`. If the array elements consist of
    /// pointers to data, the pointers are copied but the actual data is not.
    @inlinable func copy() -> ArrayRef! {
        let result = g_array_copy(array_ptr)
        guard let rv = ArrayRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
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
    @inlinable func free(freeSegment: Bool) -> String! {
        let result = g_array_free(array_ptr, gboolean((freeSegment) ? 1 : 0))
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Gets the size of the elements in `array`.
    @inlinable func getElementSize() -> Int {
        let result = g_array_get_element_size(array_ptr)
        let rv = Int(result)
        return rv
    }

    /// Inserts `len` elements into a `GArray` at the given index.
    /// 
    /// If `index_` is greater than the array’s current length, the array is expanded.
    /// The elements between the old end of the array and the newly inserted elements
    /// will be initialised to zero if the array was configured to clear elements;
    /// otherwise their values will be undefined.
    /// 
    /// If `index_` is less than the array’s current length, new entries will be
    /// inserted into the array, and the existing entries above `index_` will be moved
    /// upwards.
    /// 
    /// `data` may be `nil` if (and only if) `len` is zero. If `len` is zero, this
    /// function is a no-op.
    @inlinable func insertVals(index: Int, data: gconstpointer? = nil, len: Int) -> ArrayRef! {
        let result = g_array_insert_vals(array_ptr, guint(index), data, guint(len))
        guard let rv = ArrayRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Adds `len` elements onto the start of the array.
    /// 
    /// `data` may be `nil` if (and only if) `len` is zero. If `len` is zero, this
    /// function is a no-op.
    /// 
    /// This operation is slower than `g_array_append_vals()` since the
    /// existing elements in the array have to be moved to make space for
    /// the new elements.
    @inlinable func prependVals(data: gconstpointer? = nil, len: Int) -> ArrayRef! {
        let result = g_array_prepend_vals(array_ptr, data, guint(len))
        guard let rv = ArrayRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Atomically increments the reference count of `array` by one.
    /// This function is thread-safe and may be called from any thread.
    @discardableResult @inlinable func ref() -> ArrayRef! {
        let result = g_array_ref(array_ptr)
        guard let rv = ArrayRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Removes the element at the given index from a `GArray`. The following
    /// elements are moved down one place.
    @inlinable func remove(index: Int) -> ArrayRef! {
        let result = g_array_remove_index(array_ptr, guint(index))
        guard let rv = ArrayRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Removes the element at the given index from a `GArray`. The last
    /// element in the array is used to fill in the space, so this function
    /// does not preserve the order of the `GArray`. But it is faster than
    /// `g_array_remove_index()`.
    @inlinable func removeIndexFast(index: Int) -> ArrayRef! {
        let result = g_array_remove_index_fast(array_ptr, guint(index))
        guard let rv = ArrayRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Removes the given number of elements starting at the given index
    /// from a `GArray`.  The following elements are moved to close the gap.
    @inlinable func removeRange(index: Int, length: Int) -> ArrayRef! {
        let result = g_array_remove_range(array_ptr, guint(index), guint(length))
        guard let rv = ArrayRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
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
    /// 
    /// (C Language Example):
    /// ```C
    /// typedef struct
    /// {
    ///   gchar *str;
    ///   GObject *obj;
    /// } ArrayElement;
    /// 
    /// static void
    /// array_element_clear (ArrayElement *element)
    /// {
    ///   g_clear_pointer (&element->str, g_free);
    ///   g_clear_object (&element->obj);
    /// }
    /// 
    /// // main code
    /// GArray *garray = g_array_new (FALSE, FALSE, sizeof (ArrayElement));
    /// g_array_set_clear_func (garray, (GDestroyNotify) array_element_clear);
    /// // assign data to the structure
    /// g_array_free (garray, TRUE);
    /// ```
    /// 
    @inlinable func set(clearFunc: GDestroyNotify?) {
        
        g_array_set_clear_func(array_ptr, clearFunc)
        
    }

    /// Sets the size of the array, expanding it if necessary. If the array
    /// was created with `clear_` set to `true`, the new elements are set to 0.
    @inlinable func setSize(length: Int) -> ArrayRef! {
        let result = g_array_set_size(array_ptr, guint(length))
        guard let rv = ArrayRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Sorts a `GArray` using `compare_func` which should be a `qsort()`-style
    /// comparison function (returns less than zero for first arg is less
    /// than second arg, zero for equal, greater zero if first arg is
    /// greater than second arg).
    /// 
    /// This is guaranteed to be a stable sort since version 2.32.
    @inlinable func sort(compareFunc: GCompareFunc?) {
        
        g_array_sort(array_ptr, compareFunc)
        
    }

    /// Like `g_array_sort()`, but the comparison function receives an extra
    /// user data argument.
    /// 
    /// This is guaranteed to be a stable sort since version 2.32.
    /// 
    /// There used to be a comment here about making the sort stable by
    /// using the addresses of the elements in the comparison function.
    /// This did not actually work, so any such code should be removed.
    @inlinable func sortWithData(compareFunc: GCompareDataFunc?, userData: gpointer? = nil) {
        
        g_array_sort_with_data(array_ptr, compareFunc, userData)
        
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
    @inlinable func steal(len: UnsafeMutablePointer<gsize>! = nil) -> gpointer? {
        let result = g_array_steal(array_ptr, len)
        let rv = result
        return rv
    }

    /// Atomically decrements the reference count of `array` by one. If the
    /// reference count drops to 0, all memory allocated by the array is
    /// released. This function is thread-safe and may be called from any
    /// thread.
    @inlinable func unref() {
        
        g_array_unref(array_ptr)
        
    }
    /// Gets the size of the elements in `array`.
    @inlinable var elementSize: Int {
        /// Gets the size of the elements in `array`.
        get {
            let result = g_array_get_element_size(array_ptr)
        let rv = Int(result)
            return rv
        }
    }

    /// a pointer to the element data. The data may be moved as
    ///     elements are added to the `GArray`.
    @inlinable var data: UnsafeMutablePointer<gchar>! {
        /// a pointer to the element data. The data may be moved as
        ///     elements are added to the `GArray`.
        get {
            let rv = array_ptr.pointee.data
    return rv
        }
        /// a pointer to the element data. The data may be moved as
        ///     elements are added to the `GArray`.
         set {
            array_ptr.pointee.data = newValue
        }
    }

    /// the number of elements in the `GArray` not including the
    ///     possible terminating zero element.
    @inlinable var len: guint {
        /// the number of elements in the `GArray` not including the
        ///     possible terminating zero element.
        get {
            let rv = array_ptr.pointee.len
    return rv
        }
        /// the number of elements in the `GArray` not including the
        ///     possible terminating zero element.
         set {
            array_ptr.pointee.len = newValue
        }
    }

}



// MARK: - AsyncQueue Record

/// An opaque data structure which represents an asynchronous queue.
/// 
/// It should only be accessed through the `g_async_queue_*` functions.
///
/// The `AsyncQueueProtocol` protocol exposes the methods and properties of an underlying `GAsyncQueue` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AsyncQueue`.
/// Alternatively, use `AsyncQueueRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol AsyncQueueProtocol {
        /// Untyped pointer to the underlying `GAsyncQueue` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GAsyncQueue` instance.
    var _ptr: UnsafeMutablePointer<GAsyncQueue>! { get }

    /// Required Initialiser for types conforming to `AsyncQueueProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// An opaque data structure which represents an asynchronous queue.
/// 
/// It should only be accessed through the `g_async_queue_*` functions.
///
/// The `AsyncQueueRef` type acts as a lightweight Swift reference to an underlying `GAsyncQueue` instance.
/// It exposes methods that can operate on this data type through `AsyncQueueProtocol` conformance.
/// Use `AsyncQueueRef` only as an `unowned` reference to an existing `GAsyncQueue` instance.
///
public struct AsyncQueueRef: AsyncQueueProtocol {
        /// Untyped pointer to the underlying `GAsyncQueue` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AsyncQueueRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GAsyncQueue>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GAsyncQueue>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GAsyncQueue>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GAsyncQueue>?) {
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

    /// Reference intialiser for a related type that implements `AsyncQueueProtocol`
    @inlinable init<T: AsyncQueueProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncQueueProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncQueueProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncQueueProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncQueueProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncQueueProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new asynchronous queue and sets up a destroy notify
    /// function that is used to free any remaining queue items when
    /// the queue is destroyed after the final unref.
    @inlinable static func new(full itemFreeFunc: GDestroyNotify? = nil) -> AsyncQueueRef! {
            let result = g_async_queue_new_full(itemFreeFunc)
        guard let rv = AsyncQueueRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }
}

/// An opaque data structure which represents an asynchronous queue.
/// 
/// It should only be accessed through the `g_async_queue_*` functions.
///
/// The `AsyncQueue` type acts as a reference-counted owner of an underlying `GAsyncQueue` instance.
/// It provides the methods that can operate on this data type through `AsyncQueueProtocol` conformance.
/// Use `AsyncQueue` as a strong reference or owner of a `GAsyncQueue` instance.
///
open class AsyncQueue: AsyncQueueProtocol {
        /// Untyped pointer to the underlying `GAsyncQueue` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AsyncQueue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GAsyncQueue>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AsyncQueue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GAsyncQueue>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AsyncQueue` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AsyncQueue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AsyncQueue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GAsyncQueue>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AsyncQueue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GAsyncQueue>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GAsyncQueue`.
    /// i.e., ownership is transferred to the `AsyncQueue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GAsyncQueue>) {
        ptr = UnsafeMutableRawPointer(op)
        g_async_queue_ref(ptr.assumingMemoryBound(to: GAsyncQueue.self))
    }

    /// Reference intialiser for a related type that implements `AsyncQueueProtocol`
    /// Will retain `GAsyncQueue`.
    /// - Parameter other: an instance of a related type that implements `AsyncQueueProtocol`
    @inlinable public init<T: AsyncQueueProtocol>(_ other: T) {
        ptr = other.ptr
        g_async_queue_ref(ptr.assumingMemoryBound(to: GAsyncQueue.self))
    }

    /// Releases the underlying `GAsyncQueue` instance using `g_async_queue_unref`.
    deinit {
        g_async_queue_unref(ptr.assumingMemoryBound(to: GAsyncQueue.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncQueueProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncQueueProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_async_queue_ref(ptr.assumingMemoryBound(to: GAsyncQueue.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncQueueProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncQueueProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_async_queue_ref(ptr.assumingMemoryBound(to: GAsyncQueue.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncQueueProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncQueueProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_async_queue_ref(ptr.assumingMemoryBound(to: GAsyncQueue.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncQueueProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncQueueProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_async_queue_ref(ptr.assumingMemoryBound(to: GAsyncQueue.self))
    }


    /// Creates a new asynchronous queue and sets up a destroy notify
    /// function that is used to free any remaining queue items when
    /// the queue is destroyed after the final unref.
    @inlinable public static func new(full itemFreeFunc: GDestroyNotify? = nil) -> AsyncQueue! {
            let result = g_async_queue_new_full(itemFreeFunc)
        guard let rv = AsyncQueue(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

}

// MARK: no AsyncQueue properties

// MARK: no AsyncQueue signals

// MARK: AsyncQueue has no signals
// MARK: AsyncQueue Record: AsyncQueueProtocol extension (methods and fields)
public extension AsyncQueueProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GAsyncQueue` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GAsyncQueue>! { return ptr?.assumingMemoryBound(to: GAsyncQueue.self) }

    /// Returns the length of the queue.
    /// 
    /// Actually this function returns the number of data items in
    /// the queue minus the number of waiting threads, so a negative
    /// value means waiting threads, and a positive value means available
    /// entries in the `queue`. A return value of 0 could mean n entries
    /// in the queue and n threads waiting. This can happen due to locking
    /// of the queue or due to scheduling.
    @inlinable func length() -> Int {
        let result = g_async_queue_length(_ptr)
        let rv = Int(result)
        return rv
    }

    /// Returns the length of the queue.
    /// 
    /// Actually this function returns the number of data items in
    /// the queue minus the number of waiting threads, so a negative
    /// value means waiting threads, and a positive value means available
    /// entries in the `queue`. A return value of 0 could mean n entries
    /// in the queue and n threads waiting. This can happen due to locking
    /// of the queue or due to scheduling.
    /// 
    /// This function must be called while holding the `queue`'s lock.
    @inlinable func lengthUnlocked() -> Int {
        let result = g_async_queue_length_unlocked(_ptr)
        let rv = Int(result)
        return rv
    }

    /// Acquires the `queue`'s lock. If another thread is already
    /// holding the lock, this call will block until the lock
    /// becomes available.
    /// 
    /// Call `g_async_queue_unlock()` to drop the lock again.
    /// 
    /// While holding the lock, you can only call the
    /// `g_async_queue_*_unlocked()` functions on `queue`. Otherwise,
    /// deadlock may occur.
    @inlinable func lock() {
        
        g_async_queue_lock(_ptr)
        
    }

    /// Pops data from the `queue`. If `queue` is empty, this function
    /// blocks until data becomes available.
    @inlinable func pop() -> gpointer? {
        let result = g_async_queue_pop(_ptr)
        let rv = result
        return rv
    }

    /// Pops data from the `queue`. If `queue` is empty, this function
    /// blocks until data becomes available.
    /// 
    /// This function must be called while holding the `queue`'s lock.
    @inlinable func popUnlocked() -> gpointer? {
        let result = g_async_queue_pop_unlocked(_ptr)
        let rv = result
        return rv
    }

    /// Pushes the `data` into the `queue`. `data` must not be `nil`.
    @inlinable func push(data: gpointer? = nil) {
        
        g_async_queue_push(_ptr, data)
        
    }

    /// Pushes the `item` into the `queue`. `item` must not be `nil`.
    /// In contrast to `g_async_queue_push()`, this function
    /// pushes the new item ahead of the items already in the queue,
    /// so that it will be the next one to be popped off the queue.
    @inlinable func pushFront(item: gpointer? = nil) {
        
        g_async_queue_push_front(_ptr, item)
        
    }

    /// Pushes the `item` into the `queue`. `item` must not be `nil`.
    /// In contrast to `g_async_queue_push_unlocked()`, this function
    /// pushes the new item ahead of the items already in the queue,
    /// so that it will be the next one to be popped off the queue.
    /// 
    /// This function must be called while holding the `queue`'s lock.
    @inlinable func pushFrontUnlocked(item: gpointer? = nil) {
        
        g_async_queue_push_front_unlocked(_ptr, item)
        
    }

    /// Inserts `data` into `queue` using `func` to determine the new
    /// position.
    /// 
    /// This function requires that the `queue` is sorted before pushing on
    /// new elements, see `g_async_queue_sort()`.
    /// 
    /// This function will lock `queue` before it sorts the queue and unlock
    /// it when it is finished.
    /// 
    /// For an example of `func` see `g_async_queue_sort()`.
    @inlinable func pushSorted(data: gpointer? = nil, `func`: GCompareDataFunc?, userData: gpointer? = nil) {
        
        g_async_queue_push_sorted(_ptr, data, `func`, userData)
        
    }

    /// Inserts `data` into `queue` using `func` to determine the new
    /// position.
    /// 
    /// The sort function `func` is passed two elements of the `queue`.
    /// It should return 0 if they are equal, a negative value if the
    /// first element should be higher in the `queue` or a positive value
    /// if the first element should be lower in the `queue` than the second
    /// element.
    /// 
    /// This function requires that the `queue` is sorted before pushing on
    /// new elements, see `g_async_queue_sort()`.
    /// 
    /// This function must be called while holding the `queue`'s lock.
    /// 
    /// For an example of `func` see `g_async_queue_sort()`.
    @inlinable func pushSortedUnlocked(data: gpointer? = nil, `func`: GCompareDataFunc?, userData: gpointer? = nil) {
        
        g_async_queue_push_sorted_unlocked(_ptr, data, `func`, userData)
        
    }

    /// Pushes the `data` into the `queue`. `data` must not be `nil`.
    /// 
    /// This function must be called while holding the `queue`'s lock.
    @inlinable func pushUnlocked(data: gpointer? = nil) {
        
        g_async_queue_push_unlocked(_ptr, data)
        
    }

    /// Increases the reference count of the asynchronous `queue` by 1.
    /// You do not need to hold the lock to call this function.
    @discardableResult @inlinable func ref() -> AsyncQueueRef! {
        let result = g_async_queue_ref(_ptr)
        guard let rv = AsyncQueueRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Increases the reference count of the asynchronous `queue` by 1.
    ///
    /// **ref_unlocked is deprecated:**
    /// Reference counting is done atomically.
    /// so g_async_queue_ref() can be used regardless of the @queue's
    /// lock.
    @available(*, deprecated) @inlinable func refUnlocked() {
        
        g_async_queue_ref_unlocked(_ptr)
        
    }

    /// Remove an item from the queue.
    @inlinable func remove(item: gpointer? = nil) -> Bool {
        let result = g_async_queue_remove(_ptr, item)
        let rv = ((result) != 0)
        return rv
    }

    /// Remove an item from the queue.
    /// 
    /// This function must be called while holding the `queue`'s lock.
    @inlinable func removeUnlocked(item: gpointer? = nil) -> Bool {
        let result = g_async_queue_remove_unlocked(_ptr, item)
        let rv = ((result) != 0)
        return rv
    }

    /// Sorts `queue` using `func`.
    /// 
    /// The sort function `func` is passed two elements of the `queue`.
    /// It should return 0 if they are equal, a negative value if the
    /// first element should be higher in the `queue` or a positive value
    /// if the first element should be lower in the `queue` than the second
    /// element.
    /// 
    /// This function will lock `queue` before it sorts the queue and unlock
    /// it when it is finished.
    /// 
    /// If you were sorting a list of priority numbers to make sure the
    /// lowest priority would be at the top of the queue, you could use:
    /// (C Language Example):
    /// ```C
    ///  gint32 id1;
    ///  gint32 id2;
    /// 
    ///  id1 = GPOINTER_TO_INT (element1);
    ///  id2 = GPOINTER_TO_INT (element2);
    /// 
    ///  return (id1 > id2 ? +1 : id1 == id2 ? 0 : -1);
    /// ```
    /// 
    @inlinable func sort(`func`: GCompareDataFunc?, userData: gpointer? = nil) {
        
        g_async_queue_sort(_ptr, `func`, userData)
        
    }

    /// Sorts `queue` using `func`.
    /// 
    /// The sort function `func` is passed two elements of the `queue`.
    /// It should return 0 if they are equal, a negative value if the
    /// first element should be higher in the `queue` or a positive value
    /// if the first element should be lower in the `queue` than the second
    /// element.
    /// 
    /// This function must be called while holding the `queue`'s lock.
    @inlinable func sortUnlocked(`func`: GCompareDataFunc?, userData: gpointer? = nil) {
        
        g_async_queue_sort_unlocked(_ptr, `func`, userData)
        
    }

    /// Pops data from the `queue`. If the queue is empty, blocks until
    /// `end_time` or until data becomes available.
    /// 
    /// If no data is received before `end_time`, `nil` is returned.
    /// 
    /// To easily calculate `end_time`, a combination of `g_get_real_time()`
    /// and `g_time_val_add()` can be used.
    ///
    /// **timed_pop is deprecated:**
    /// use g_async_queue_timeout_pop().
    @available(*, deprecated) @inlinable func timedPop<TimeValT: TimeValProtocol>(endTime: TimeValT) -> gpointer? {
        let result = g_async_queue_timed_pop(_ptr, endTime._ptr)
        let rv = result
        return rv
    }

    /// Pops data from the `queue`. If the queue is empty, blocks until
    /// `end_time` or until data becomes available.
    /// 
    /// If no data is received before `end_time`, `nil` is returned.
    /// 
    /// To easily calculate `end_time`, a combination of `g_get_real_time()`
    /// and `g_time_val_add()` can be used.
    /// 
    /// This function must be called while holding the `queue`'s lock.
    ///
    /// **timed_pop_unlocked is deprecated:**
    /// use g_async_queue_timeout_pop_unlocked().
    @available(*, deprecated) @inlinable func timedPopUnlocked<TimeValT: TimeValProtocol>(endTime: TimeValT) -> gpointer? {
        let result = g_async_queue_timed_pop_unlocked(_ptr, endTime._ptr)
        let rv = result
        return rv
    }

    /// Pops data from the `queue`. If the queue is empty, blocks for
    /// `timeout` microseconds, or until data becomes available.
    /// 
    /// If no data is received before the timeout, `nil` is returned.
    @inlinable func timeoutPop(timeout: guint64) -> gpointer? {
        let result = g_async_queue_timeout_pop(_ptr, timeout)
        let rv = result
        return rv
    }

    /// Pops data from the `queue`. If the queue is empty, blocks for
    /// `timeout` microseconds, or until data becomes available.
    /// 
    /// If no data is received before the timeout, `nil` is returned.
    /// 
    /// This function must be called while holding the `queue`'s lock.
    @inlinable func timeoutPopUnlocked(timeout: guint64) -> gpointer? {
        let result = g_async_queue_timeout_pop_unlocked(_ptr, timeout)
        let rv = result
        return rv
    }

    /// Tries to pop data from the `queue`. If no data is available,
    /// `nil` is returned.
    @inlinable func tryPop() -> gpointer? {
        let result = g_async_queue_try_pop(_ptr)
        let rv = result
        return rv
    }

    /// Tries to pop data from the `queue`. If no data is available,
    /// `nil` is returned.
    /// 
    /// This function must be called while holding the `queue`'s lock.
    @inlinable func tryPopUnlocked() -> gpointer? {
        let result = g_async_queue_try_pop_unlocked(_ptr)
        let rv = result
        return rv
    }

    /// Releases the queue's lock.
    /// 
    /// Calling this function when you have not acquired
    /// the with `g_async_queue_lock()` leads to undefined
    /// behaviour.
    @inlinable func unlock() {
        
        g_async_queue_unlock(_ptr)
        
    }

    /// Decreases the reference count of the asynchronous `queue` by 1.
    /// 
    /// If the reference count went to 0, the `queue` will be destroyed
    /// and the memory allocated will be freed. So you are not allowed
    /// to use the `queue` afterwards, as it might have disappeared.
    /// You do not need to hold the lock to call this function.
    @inlinable func unref() {
        
        g_async_queue_unref(_ptr)
        
    }

    /// Decreases the reference count of the asynchronous `queue` by 1
    /// and releases the lock. This function must be called while holding
    /// the `queue`'s lock. If the reference count went to 0, the `queue`
    /// will be destroyed and the memory allocated will be freed.
    ///
    /// **unref_and_unlock is deprecated:**
    /// Reference counting is done atomically.
    /// so g_async_queue_unref() can be used regardless of the @queue's
    /// lock.
    @available(*, deprecated) @inlinable func unrefAndUnlock() {
        
        g_async_queue_unref_and_unlock(_ptr)
        
    }


}



