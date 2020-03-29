import CGLib

// MARK: - PtrArray Record

/// The `PtrArrayProtocol` protocol exposes the methods and properties of an underlying `GPtrArray` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PtrArray`.
/// Alternatively, use `PtrArrayRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Contains the public fields of a pointer array.
public protocol PtrArrayProtocol {
    /// Untyped pointer to the underlying `GPtrArray` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GPtrArray` instance.
    var ptr_array_ptr: UnsafeMutablePointer<GPtrArray> { get }
}

/// The `PtrArrayRef` type acts as a lightweight Swift reference to an underlying `GPtrArray` instance.
/// It exposes methods that can operate on this data type through `PtrArrayProtocol` conformance.
/// Use `PtrArrayRef` only as an `unowned` reference to an existing `GPtrArray` instance.
///
/// Contains the public fields of a pointer array.
public struct PtrArrayRef: PtrArrayProtocol {
    /// Untyped pointer to the underlying `GPtrArray` instance.
    /// For type-safe access, use the generated, typed pointer `ptr_array_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PtrArrayRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GPtrArray>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PtrArrayProtocol`
    init<T: PtrArrayProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GPtrArray` with `reserved_size` pointers preallocated
    /// and a reference count of 1. This avoids frequent reallocation, if
    /// you are going to add many pointers to the array. Note however that
    /// the size of the array is still 0. It also set `element_free_func`
    /// for freeing each element when the array is destroyed either via
    /// `g_ptr_array_unref()`, when `g_ptr_array_free()` is called with
    /// `free_segment` set to `true` or when removing elements.
    static func new(full reserved_size: CUnsignedInt, elementFreeFunc element_free_func: @escaping DestroyNotify) -> PtrArrayRef! {
        let rv = g_ptr_array_new_full(guint(reserved_size), element_free_func)
        return rv.map { PtrArrayRef(cast($0)) }
    }

    /// Creates a new `GPtrArray` with a reference count of 1 and use
    /// `element_free_func` for freeing each element when the array is destroyed
    /// either via `g_ptr_array_unref()`, when `g_ptr_array_free()` is called with
    /// `free_segment` set to `true` or when removing elements.
    static func newWith(freeFunc element_free_func: @escaping DestroyNotify) -> PtrArrayRef! {
        let rv = g_ptr_array_new_with_free_func(element_free_func)
        return rv.map { PtrArrayRef(cast($0)) }
    }

    /// Creates a new `GPtrArray` with `reserved_size` pointers preallocated
    /// and a reference count of 1. This avoids frequent reallocation, if
    /// you are going to add many pointers to the array. Note however that
    /// the size of the array is still 0.
    static func sizedNew(sized reserved_size: CUnsignedInt) -> PtrArrayRef! {
        let rv = g_ptr_array_sized_new(guint(reserved_size))
        return rv.map { PtrArrayRef(cast($0)) }
    }
}

/// The `PtrArray` type acts as a reference-counted owner of an underlying `GPtrArray` instance.
/// It provides the methods that can operate on this data type through `PtrArrayProtocol` conformance.
/// Use `PtrArray` as a strong reference or owner of a `GPtrArray` instance.
///
/// Contains the public fields of a pointer array.
open class PtrArray: PtrArrayProtocol {
    /// Untyped pointer to the underlying `GPtrArray` instance.
    /// For type-safe access, use the generated, typed pointer `ptr_array_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PtrArray` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GPtrArray>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GPtrArray`.
    /// i.e., ownership is transferred to the `PtrArray` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GPtrArray>) {
        ptr = UnsafeMutableRawPointer(op)
        g_ptr_array_ref(cast(ptr_array_ptr))
    }

    /// Reference intialiser for a related type that implements `PtrArrayProtocol`
    /// Will retain `GPtrArray`.
    /// - Parameter other: an instance of a related type that implements `PtrArrayProtocol`
    public init<T: PtrArrayProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.ptr_array_ptr)
        g_ptr_array_ref(cast(ptr_array_ptr))
    }

    /// Releases the underlying `GPtrArray` instance using `g_ptr_array_unref`.
    deinit {
        g_ptr_array_unref(cast(ptr_array_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_ptr_array_ref(cast(ptr_array_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_ptr_array_ref(cast(ptr_array_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_ptr_array_ref(cast(ptr_array_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_ptr_array_ref(cast(ptr_array_ptr))
    }


    /// Creates a new `GPtrArray` with `reserved_size` pointers preallocated
    /// and a reference count of 1. This avoids frequent reallocation, if
    /// you are going to add many pointers to the array. Note however that
    /// the size of the array is still 0. It also set `element_free_func`
    /// for freeing each element when the array is destroyed either via
    /// `g_ptr_array_unref()`, when `g_ptr_array_free()` is called with
    /// `free_segment` set to `true` or when removing elements.
    public static func new(full reserved_size: CUnsignedInt, elementFreeFunc element_free_func: @escaping DestroyNotify) -> PtrArray! {
        let rv = g_ptr_array_new_full(guint(reserved_size), element_free_func)
        return rv.map { PtrArray(cast($0)) }
    }

    /// Creates a new `GPtrArray` with a reference count of 1 and use
    /// `element_free_func` for freeing each element when the array is destroyed
    /// either via `g_ptr_array_unref()`, when `g_ptr_array_free()` is called with
    /// `free_segment` set to `true` or when removing elements.
    public static func newWith(freeFunc element_free_func: @escaping DestroyNotify) -> PtrArray! {
        let rv = g_ptr_array_new_with_free_func(element_free_func)
        return rv.map { PtrArray(cast($0)) }
    }

    /// Creates a new `GPtrArray` with `reserved_size` pointers preallocated
    /// and a reference count of 1. This avoids frequent reallocation, if
    /// you are going to add many pointers to the array. Note however that
    /// the size of the array is still 0.
    public static func sizedNew(sized reserved_size: CUnsignedInt) -> PtrArray! {
        let rv = g_ptr_array_sized_new(guint(reserved_size))
        return rv.map { PtrArray(cast($0)) }
    }

}

// MARK: - no PtrArray properties

// MARK: - no signals


public extension PtrArrayProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GPtrArray` instance.
    var ptr_array_ptr: UnsafeMutablePointer<GPtrArray> { return ptr.assumingMemoryBound(to: GPtrArray.self) }

    /// Adds a pointer to the end of the pointer array. The array will grow
    /// in size automatically if necessary.
    func add(data: UnsafeMutableRawPointer) {
        g_ptr_array_add(cast(ptr_array_ptr), cast(data))
    
    }

    /// Makes a full (deep) copy of a `GPtrArray`.
    /// 
    /// `func`, as a `GCopyFunc`, takes two arguments, the data to be copied
    /// and a `user_data` pointer. On common processor architectures, it's safe to
    /// pass `nil` as `user_data` if the copy function takes only one argument. You
    /// may get compiler warnings from this though if compiling with GCC’s
    /// `-Wcast-function-type` warning.
    /// 
    /// If `func` is `nil`, then only the pointers (and not what they are
    /// pointing to) are copied to the new `GPtrArray`.
    /// 
    /// The copy of `array` will have the same `GDestroyNotify` for its elements as
    /// `array`.
    func copy(func_: @escaping CopyFunc, userData user_data: UnsafeMutableRawPointer) -> UnsafeMutablePointer<GPtrArray>! {
        let rv = g_ptr_array_copy(cast(ptr_array_ptr), func_, cast(user_data))
        return cast(rv)
    }

    /// Adds all pointers of `array` to the end of the array `array_to_extend`.
    /// The array will grow in size automatically if needed. `array_to_extend` is
    /// modified in-place.
    /// 
    /// `func`, as a `GCopyFunc`, takes two arguments, the data to be copied
    /// and a `user_data` pointer. On common processor architectures, it's safe to
    /// pass `nil` as `user_data` if the copy function takes only one argument. You
    /// may get compiler warnings from this though if compiling with GCC’s
    /// `-Wcast-function-type` warning.
    /// 
    /// If `func` is `nil`, then only the pointers (and not what they are
    /// pointing to) are copied to the new `GPtrArray`.
    func extend(array: PtrArrayProtocol, func_: @escaping CopyFunc, userData user_data: UnsafeMutableRawPointer) {
        g_ptr_array_extend(cast(ptr_array_ptr), cast(array.ptr), func_, cast(user_data))
    
    }

    /// Adds all the pointers in `array` to the end of `array_to_extend`, transferring
    /// ownership of each element from `array` to `array_to_extend` and modifying
    /// `array_to_extend` in-place. `array` is then freed.
    /// 
    /// As with `g_ptr_array_free()`, `array` will be destroyed if its reference count
    /// is 1. If its reference count is higher, it will be decremented and the
    /// length of `array` set to zero.
    func extendAndSteal(array: PtrArrayProtocol) {
        g_ptr_array_extend_and_steal(cast(ptr_array_ptr), cast(array.ptr))
    
    }

    /// Checks whether `needle` exists in `haystack`. If the element is found, `true` is
    /// returned and the element’s index is returned in `index_` (if non-`nil`).
    /// Otherwise, `false` is returned and `index_` is undefined. If `needle` exists
    /// multiple times in `haystack`, the index of the first instance is returned.
    /// 
    /// This does pointer comparisons only. If you want to use more complex equality
    /// checks, such as string comparisons, use `g_ptr_array_find_with_equal_func()`.
    func find(needle: gconstpointer, index_: UnsafeMutablePointer<CUnsignedInt>) -> Bool {
        let rv = g_ptr_array_find(cast(ptr_array_ptr), cast(needle), cast(index_))
        return Bool(rv != 0)
    }

    /// Checks whether `needle` exists in `haystack`, using the given `equal_func`.
    /// If the element is found, `true` is returned and the element’s index is
    /// returned in `index_` (if non-`nil`). Otherwise, `false` is returned and `index_`
    /// is undefined. If `needle` exists multiple times in `haystack`, the index of
    /// the first instance is returned.
    /// 
    /// `equal_func` is called with the element from the array as its first parameter,
    /// and `needle` as its second parameter. If `equal_func` is `nil`, pointer
    /// equality is used.
    func findWithEqualFunc(needle: gconstpointer, equalFunc equal_func: @escaping EqualFunc, index_: UnsafeMutablePointer<CUnsignedInt>) -> Bool {
        let rv = g_ptr_array_find_with_equal_func(cast(ptr_array_ptr), cast(needle), equal_func, cast(index_))
        return Bool(rv != 0)
    }

    /// Calls a function for each element of a `GPtrArray`. `func` must not
    /// add elements to or remove elements from the array.
    func foreach(func_: @escaping Func, userData user_data: UnsafeMutableRawPointer) {
        g_ptr_array_foreach(cast(ptr_array_ptr), func_, cast(user_data))
    
    }

    /// Frees the memory allocated for the `GPtrArray`. If `free_seg` is `true`
    /// it frees the memory block holding the elements as well. Pass `false`
    /// if you want to free the `GPtrArray` wrapper but preserve the
    /// underlying array for use elsewhere. If the reference count of `array`
    /// is greater than one, the `GPtrArray` wrapper is preserved but the
    /// size of `array` will be set to zero.
    /// 
    /// If array contents point to dynamically-allocated memory, they should
    /// be freed separately if `free_seg` is `true` and no `GDestroyNotify`
    /// function has been set for `array`.
    /// 
    /// This function is not thread-safe. If using a `GPtrArray` from multiple
    /// threads, use only the atomic `g_ptr_array_ref()` and `g_ptr_array_unref()`
    /// functions.
    func free(freeSeg free_seg: Bool) -> UnsafeMutablePointer<UnsafeMutableRawPointer>! {
        let rv = g_ptr_array_free(cast(ptr_array_ptr), gboolean(free_seg ? 1 : 0))
        return cast(rv)
    }

    /// Inserts an element into the pointer array at the given index. The
    /// array will grow in size automatically if necessary.
    func insert(index_: CInt, data: UnsafeMutableRawPointer) {
        g_ptr_array_insert(cast(ptr_array_ptr), gint(index_), cast(data))
    
    }

    /// Atomically increments the reference count of `array` by one.
    /// This function is thread-safe and may be called from any thread.
    func ref() -> UnsafeMutablePointer<GPtrArray>! {
        let rv = g_ptr_array_ref(cast(ptr_array_ptr))
        return cast(rv)
    }

    /// Removes the first occurrence of the given pointer from the pointer
    /// array. The following elements are moved down one place. If `array`
    /// has a non-`nil` `GDestroyNotify` function it is called for the
    /// removed element.
    /// 
    /// It returns `true` if the pointer was removed, or `false` if the
    /// pointer was not found.
    func remove(data: UnsafeMutableRawPointer) -> Bool {
        let rv = g_ptr_array_remove(cast(ptr_array_ptr), cast(data))
        return Bool(rv != 0)
    }

    /// Removes the first occurrence of the given pointer from the pointer
    /// array. The last element in the array is used to fill in the space,
    /// so this function does not preserve the order of the array. But it
    /// is faster than `g_ptr_array_remove()`. If `array` has a non-`nil`
    /// `GDestroyNotify` function it is called for the removed element.
    /// 
    /// It returns `true` if the pointer was removed, or `false` if the
    /// pointer was not found.
    func removeFast(data: UnsafeMutableRawPointer) -> Bool {
        let rv = g_ptr_array_remove_fast(cast(ptr_array_ptr), cast(data))
        return Bool(rv != 0)
    }

    /// Removes the pointer at the given index from the pointer array.
    /// The following elements are moved down one place. If `array` has
    /// a non-`nil` `GDestroyNotify` function it is called for the removed
    /// element. If so, the return value from this function will potentially point
    /// to freed memory (depending on the `GDestroyNotify` implementation).
    func removeIndex(index_: CUnsignedInt) -> UnsafeMutableRawPointer! {
        let rv = g_ptr_array_remove_index(cast(ptr_array_ptr), guint(index_))
        return cast(rv)
    }

    /// Removes the pointer at the given index from the pointer array.
    /// The last element in the array is used to fill in the space, so
    /// this function does not preserve the order of the array. But it
    /// is faster than `g_ptr_array_remove_index()`. If `array` has a non-`nil`
    /// `GDestroyNotify` function it is called for the removed element. If so, the
    /// return value from this function will potentially point to freed memory
    /// (depending on the `GDestroyNotify` implementation).
    func removeIndexFast(index_: CUnsignedInt) -> UnsafeMutableRawPointer! {
        let rv = g_ptr_array_remove_index_fast(cast(ptr_array_ptr), guint(index_))
        return cast(rv)
    }

    /// Removes the given number of pointers starting at the given index
    /// from a `GPtrArray`. The following elements are moved to close the
    /// gap. If `array` has a non-`nil` `GDestroyNotify` function it is
    /// called for the removed elements.
    func removeRange(index_: CUnsignedInt, length: CUnsignedInt) -> UnsafeMutablePointer<GPtrArray>! {
        let rv = g_ptr_array_remove_range(cast(ptr_array_ptr), guint(index_), guint(length))
        return cast(rv)
    }

    /// Sets a function for freeing each element when `array` is destroyed
    /// either via `g_ptr_array_unref()`, when `g_ptr_array_free()` is called
    /// with `free_segment` set to `true` or when removing elements.
    func setFreeFunc(elementFreeFunc element_free_func: @escaping DestroyNotify) {
        g_ptr_array_set_free_func(cast(ptr_array_ptr), element_free_func)
    
    }

    /// Sets the size of the array. When making the array larger,
    /// newly-added elements will be set to `nil`. When making it smaller,
    /// if `array` has a non-`nil` `GDestroyNotify` function then it will be
    /// called for the removed elements.
    func setSize(length: CInt) {
        g_ptr_array_set_size(cast(ptr_array_ptr), gint(length))
    
    }

    /// Sorts the array, using `compare_func` which should be a `qsort()`-style
    /// comparison function (returns less than zero for first arg is less
    /// than second arg, zero for equal, greater than zero if irst arg is
    /// greater than second arg).
    /// 
    /// Note that the comparison function for `g_ptr_array_sort()` doesn't
    /// take the pointers from the array as arguments, it takes pointers to
    /// the pointers in the array. Here is a full example of usage:
    /// 
    /// (C Language Example):
    /// ```C
    /// typedef struct
    /// {
    ///   gchar *name;
    ///   gint size;
    /// } FileListEntry;
    /// 
    /// static gint
    /// sort_filelist (gconstpointer a, gconstpointer b)
    /// {
    ///   const FileListEntry *entry1 = *((FileListEntry **) a);
    ///   const FileListEntry *entry2 = *((FileListEntry **) b);
    /// 
    ///   return g_ascii_strcasecmp (entry1->name, entry2->name);
    /// }
    /// 
    /// …
    /// g_autoptr (GPtrArray) file_list = NULL;
    /// 
    /// // initialize file_list array and load with many FileListEntry entries
    /// ...
    /// // now sort it with
    /// g_ptr_array_sort (file_list, sort_filelist);
    /// ```
    /// 
    /// This is guaranteed to be a stable sort since version 2.32.
    func sort(compareFunc compare_func: @escaping CompareFunc) {
        g_ptr_array_sort(cast(ptr_array_ptr), compare_func)
    
    }

    /// Like `g_ptr_array_sort()`, but the comparison function has an extra
    /// user data argument.
    /// 
    /// Note that the comparison function for `g_ptr_array_sort_with_data()`
    /// doesn't take the pointers from the array as arguments, it takes
    /// pointers to the pointers in the array. Here is a full example of use:
    /// 
    /// (C Language Example):
    /// ```C
    /// typedef enum { SORT_NAME, SORT_SIZE } SortMode;
    /// 
    /// typedef struct
    /// {
    ///   gchar *name;
    ///   gint size;
    /// } FileListEntry;
    /// 
    /// static gint
    /// sort_filelist (gconstpointer a, gconstpointer b, gpointer user_data)
    /// {
    ///   gint order;
    ///   const SortMode sort_mode = GPOINTER_TO_INT (user_data);
    ///   const FileListEntry *entry1 = *((FileListEntry **) a);
    ///   const FileListEntry *entry2 = *((FileListEntry **) b);
    /// 
    ///   switch (sort_mode)
    ///     {
    ///     case SORT_NAME:
    ///       order = g_ascii_strcasecmp (entry1->name, entry2->name);
    ///       break;
    ///     case SORT_SIZE:
    ///       order = entry1->size - entry2->size;
    ///       break;
    ///     default:
    ///       order = 0;
    ///       break;
    ///     }
    ///   return order;
    /// }
    /// 
    /// ...
    /// g_autoptr (GPtrArray) file_list = NULL;
    /// SortMode sort_mode;
    /// 
    /// // initialize file_list array and load with many FileListEntry entries
    /// ...
    /// // now sort it with
    /// sort_mode = SORT_NAME;
    /// g_ptr_array_sort_with_data (file_list,
    ///                             sort_filelist,
    ///                             GINT_TO_POINTER (sort_mode));
    /// ```
    /// 
    /// This is guaranteed to be a stable sort since version 2.32.
    func sortWithData(compareFunc compare_func: @escaping CompareDataFunc, userData user_data: UnsafeMutableRawPointer) {
        g_ptr_array_sort_with_data(cast(ptr_array_ptr), compare_func, cast(user_data))
    
    }

    /// Frees the data in the array and resets the size to zero, while
    /// the underlying array is preserved for use elsewhere and returned
    /// to the caller.
    /// 
    /// Even if set, the `GDestroyNotify` function will never be called
    /// on the current contents of the array and the caller is
    /// responsible for freeing the array elements.
    /// 
    /// An example of use:
    /// (C Language Example):
    /// ```C
    /// g_autoptr(GPtrArray) chunk_buffer = g_ptr_array_new_with_free_func (g_bytes_unref);
    /// 
    /// // Some part of your application appends a number of chunks to the pointer array.
    /// g_ptr_array_add (chunk_buffer, g_bytes_new_static ("hello", 5));
    /// g_ptr_array_add (chunk_buffer, g_bytes_new_static ("world", 5));
    /// 
    /// …
    /// 
    /// // Periodically, the chunks need to be sent as an array-and-length to some
    /// // other part of the program.
    /// GBytes **chunks;
    /// gsize n_chunks;
    /// 
    /// chunks = g_ptr_array_steal (chunk_buffer, &n_chunks);
    /// for (gsize i = 0; i < n_chunks; i++)
    ///   {
    ///     // Do something with each chunk here, and then free them, since
    ///     // g_ptr_array_steal() transfers ownership of all the elements and the
    ///     // array to the caller.
    ///     …
    /// 
    ///     g_bytes_unref (chunks[i]);
    ///   }
    /// 
    /// g_free (chunks);
    /// 
    /// // After calling g_ptr_array_steal(), the pointer array can be reused for the
    /// // next set of chunks.
    /// g_assert (chunk_buffer->len == 0);
    /// ```
    /// 
    func steal(len: UnsafeMutablePointer<Int>) -> UnsafeMutablePointer<UnsafeMutableRawPointer>! {
        let rv = g_ptr_array_steal(cast(ptr_array_ptr), cast(len))
        return cast(rv)
    }

    /// Removes the pointer at the given index from the pointer array.
    /// The following elements are moved down one place. The `GDestroyNotify` for
    /// `array` is *not* called on the removed element; ownership is transferred to
    /// the caller of this function.
    func stealIndex(index_: CUnsignedInt) -> UnsafeMutableRawPointer! {
        let rv = g_ptr_array_steal_index(cast(ptr_array_ptr), guint(index_))
        return cast(rv)
    }

    /// Removes the pointer at the given index from the pointer array.
    /// The last element in the array is used to fill in the space, so
    /// this function does not preserve the order of the array. But it
    /// is faster than `g_ptr_array_steal_index()`. The `GDestroyNotify` for `array` is
    /// *not* called on the removed element; ownership is transferred to the caller
    /// of this function.
    func stealIndexFast(index_: CUnsignedInt) -> UnsafeMutableRawPointer! {
        let rv = g_ptr_array_steal_index_fast(cast(ptr_array_ptr), guint(index_))
        return cast(rv)
    }

    /// Atomically decrements the reference count of `array` by one. If the
    /// reference count drops to 0, the effect is the same as calling
    /// `g_ptr_array_free()` with `free_segment` set to `true`. This function
    /// is thread-safe and may be called from any thread.
    func unref() {
        g_ptr_array_unref(cast(ptr_array_ptr))
    
    }

    /// Checks whether `needle` exists in `haystack`. If the element is found, `true` is
    /// returned and the element’s index is returned in `index_` (if non-`nil`).
    /// Otherwise, `false` is returned and `index_` is undefined. If `needle` exists
    /// multiple times in `haystack`, the index of the first instance is returned.
    /// 
    /// This does pointer comparisons only. If you want to use more complex equality
    /// checks, such as string comparisons, use `g_ptr_array_find_with_equal_func()`.
    func ptrArrayFind(needle: gconstpointer, index_: UnsafeMutablePointer<CUnsignedInt>) -> Bool {
        let rv = g_ptr_array_find(cast(ptr_array_ptr), cast(needle), cast(index_))
        return Bool(rv != 0)
    }

    /// Checks whether `needle` exists in `haystack`, using the given `equal_func`.
    /// If the element is found, `true` is returned and the element’s index is
    /// returned in `index_` (if non-`nil`). Otherwise, `false` is returned and `index_`
    /// is undefined. If `needle` exists multiple times in `haystack`, the index of
    /// the first instance is returned.
    /// 
    /// `equal_func` is called with the element from the array as its first parameter,
    /// and `needle` as its second parameter. If `equal_func` is `nil`, pointer
    /// equality is used.
    func ptrArrayFindWithEqualFunc(needle: gconstpointer, equalFunc equal_func: @escaping EqualFunc, index_: UnsafeMutablePointer<CUnsignedInt>) -> Bool {
        let rv = g_ptr_array_find_with_equal_func(cast(ptr_array_ptr), cast(needle), equal_func, cast(index_))
        return Bool(rv != 0)
    }
}



