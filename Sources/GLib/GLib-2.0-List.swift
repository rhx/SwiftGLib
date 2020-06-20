import CGLib

// MARK: - List Record

/// The `ListProtocol` protocol exposes the methods and properties of an underlying `GList` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `List`.
/// Alternatively, use `ListRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GList` struct is used for each element in a doubly-linked list.
public protocol ListProtocol {
        /// Untyped pointer to the underlying `GList` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GList` instance.
    var _ptr: UnsafeMutablePointer<GList> { get }
}

/// The `ListRef` type acts as a lightweight Swift reference to an underlying `GList` instance.
/// It exposes methods that can operate on this data type through `ListProtocol` conformance.
/// Use `ListRef` only as an `unowned` reference to an existing `GList` instance.
///
/// The `GList` struct is used for each element in a doubly-linked list.
public struct ListRef: ListProtocol {
        /// Untyped pointer to the underlying `GList` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ListRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GList>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ListProtocol`
    init<T: ListProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Allocates space for one `GList` element. It is called by
    /// `g_list_append()`, `g_list_prepend()`, `g_list_insert()` and
    /// `g_list_insert_sorted()` and so is rarely used on its own.
    static func alloc() -> ListRef! {
        let rv: UnsafeMutablePointer<GList>! = cast(g_list_alloc())
        return rv.map { ListRef(cast($0)) }
    }
}

/// The `List` type acts as an owner of an underlying `GList` instance.
/// It provides the methods that can operate on this data type through `ListProtocol` conformance.
/// Use `List` as a strong reference or owner of a `GList` instance.
///
/// The `GList` struct is used for each element in a doubly-linked list.
open class List: ListProtocol {
        /// Untyped pointer to the underlying `GList` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `List` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GList>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GList` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `List` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GList>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GList, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `ListProtocol`
    /// `GList` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ListProtocol`
    public init<T: ListProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GList, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GList`.
    deinit {
        // no reference counting for GList, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GList, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GList, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GList, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GList, cannot ref(cast(_ptr))
    }


    /// Allocates space for one `GList` element. It is called by
    /// `g_list_append()`, `g_list_prepend()`, `g_list_insert()` and
    /// `g_list_insert_sorted()` and so is rarely used on its own.
    public static func alloc() -> List! {
        let rv: UnsafeMutablePointer<GList>! = cast(g_list_alloc())
        return rv.map { List(cast($0)) }
    }

}

// MARK: no List properties

// MARK: no List signals


// MARK: List Record: ListProtocol extension (methods and fields)
public extension ListProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GList` instance.
    var _ptr: UnsafeMutablePointer<GList> { return ptr.assumingMemoryBound(to: GList.self) }

    /// Adds a new element on to the end of the list.
    /// 
    /// Note that the return value is the new start of the list,
    /// if `list` was empty; make sure you store the new value.
    /// 
    /// `g_list_append()` has to traverse the entire list to find the end,
    /// which is inefficient when adding multiple elements. A common idiom
    /// to avoid the inefficiency is to use `g_list_prepend()` and reverse
    /// the list with `g_list_reverse()` when all elements have been added.
    /// 
    /// (C Language Example):
    /// ```C
    /// // Notice that these are initialized to the empty list.
    /// GList *string_list = NULL, *number_list = NULL;
    /// 
    /// // This is a list of strings.
    /// string_list = g_list_append (string_list, "first");
    /// string_list = g_list_append (string_list, "second");
    /// 
    /// // This is a list of integers.
    /// number_list = g_list_append (number_list, GINT_TO_POINTER (27));
    /// number_list = g_list_append (number_list, GINT_TO_POINTER (14));
    /// ```
    /// 
    func append(data: UnsafeMutableRawPointer) -> UnsafeMutablePointer<GList>! {
        let rv: UnsafeMutablePointer<GList>! = cast(g_list_append(cast(_ptr), cast(data)))
        return cast(rv)
    }

    /// Adds the second `GList` onto the end of the first `GList`.
    /// Note that the elements of the second `GList` are not copied.
    /// They are used directly.
    /// 
    /// This function is for example used to move an element in the list.
    /// The following example moves an element to the top of the list:
    /// (C Language Example):
    /// ```C
    /// list = g_list_remove_link (list, llink);
    /// list = g_list_concat (llink, list);
    /// ```
    /// 
    func concat(list2: ListProtocol) -> UnsafeMutablePointer<GList>! {
        let rv: UnsafeMutablePointer<GList>! = cast(g_list_concat(cast(_ptr), cast(list2.ptr)))
        return cast(rv)
    }

    /// Copies a `GList`.
    /// 
    /// Note that this is a "shallow" copy. If the list elements
    /// consist of pointers to data, the pointers are copied but
    /// the actual data is not. See `g_list_copy_deep()` if you need
    /// to copy the data as well.
    func copy() -> UnsafeMutablePointer<GList>! {
        let rv: UnsafeMutablePointer<GList>! = cast(g_list_copy(cast(_ptr)))
        return cast(rv)
    }

    /// Makes a full (deep) copy of a `GList`.
    /// 
    /// In contrast with `g_list_copy()`, this function uses `func` to make
    /// a copy of each list element, in addition to copying the list
    /// container itself.
    /// 
    /// `func`, as a `GCopyFunc`, takes two arguments, the data to be copied
    /// and a `user_data` pointer. On common processor architectures, it's safe to
    /// pass `nil` as `user_data` if the copy function takes only one argument. You
    /// may get compiler warnings from this though if compiling with GCC’s
    /// `-Wcast-function-type` warning.
    /// 
    /// For instance, if `list` holds a list of GObjects, you can do:
    /// (C Language Example):
    /// ```C
    /// another_list = g_list_copy_deep (list, (GCopyFunc) g_object_ref, NULL);
    /// ```
    /// 
    /// And, to entirely free the new list, you could do:
    /// (C Language Example):
    /// ```C
    /// g_list_free_full (another_list, g_object_unref);
    /// ```
    /// 
    func copyDeep(func_: @escaping CopyFunc, userData user_data: UnsafeMutableRawPointer) -> UnsafeMutablePointer<GList>! {
        let rv: UnsafeMutablePointer<GList>! = cast(g_list_copy_deep(cast(_ptr), func_, cast(user_data)))
        return cast(rv)
    }

    /// Removes the node link_ from the list and frees it.
    /// Compare this to `g_list_remove_link()` which removes the node
    /// without freeing it.
    func deleteLink(link_: ListProtocol) -> UnsafeMutablePointer<GList>! {
        let rv: UnsafeMutablePointer<GList>! = cast(g_list_delete_link(cast(_ptr), cast(link_.ptr)))
        return cast(rv)
    }

    /// Finds the element in a `GList` which contains the given data.
    func find(data: gconstpointer) -> UnsafeMutablePointer<GList>! {
        let rv: UnsafeMutablePointer<GList>! = cast(g_list_find(cast(_ptr), cast(data)))
        return cast(rv)
    }

    /// Finds an element in a `GList`, using a supplied function to
    /// find the desired element. It iterates over the list, calling
    /// the given function which should return 0 when the desired
    /// element is found. The function takes two `gconstpointer` arguments,
    /// the `GList` element's data as the first argument and the
    /// given user data.
    func findCustom(data: gconstpointer, func_: @escaping CompareFunc) -> UnsafeMutablePointer<GList>! {
        let rv: UnsafeMutablePointer<GList>! = cast(g_list_find_custom(cast(_ptr), cast(data), func_))
        return cast(rv)
    }

    /// Gets the first element in a `GList`.
    func first() -> UnsafeMutablePointer<GList>! {
        let rv: UnsafeMutablePointer<GList>! = cast(g_list_first(cast(_ptr)))
        return cast(rv)
    }

    /// Calls a function for each element of a `GList`.
    /// 
    /// It is safe for `func` to remove the element from `list`, but it must
    /// not modify any part of the list after that element.
    func foreach(func_: @escaping Func, userData user_data: UnsafeMutableRawPointer) {
        g_list_foreach(cast(_ptr), func_, cast(user_data))
    
    }

    /// Frees all of the memory used by a `GList`.
    /// The freed elements are returned to the slice allocator.
    /// 
    /// If list elements contain dynamically-allocated memory, you should
    /// either use `g_list_free_full()` or free them manually first.
    /// 
    /// It can be combined with `g_steal_pointer()` to ensure the list head pointer
    /// is not left dangling:
    /// (C Language Example):
    /// ```C
    /// GList *list_of_borrowed_things = …;  /<!-- -->* (transfer container) *<!-- -->/
    /// g_list_free (g_steal_pointer (&list_of_borrowed_things));
    /// ```
    /// 
    func free() {
        g_list_free(cast(_ptr))
    
    }

    /// Frees one `GList` element, but does not update links from the next and
    /// previous elements in the list, so you should not call this function on an
    /// element that is currently part of a list.
    /// 
    /// It is usually used after `g_list_remove_link()`.
    func free1() {
        g_list_free_1(cast(_ptr))
    
    }

    /// Convenience method, which frees all the memory used by a `GList`,
    /// and calls `free_func` on every element's data.
    /// 
    /// `free_func` must not modify the list (eg, by removing the freed
    /// element from it).
    /// 
    /// It can be combined with `g_steal_pointer()` to ensure the list head pointer
    /// is not left dangling ­— this also has the nice property that the head pointer
    /// is cleared before any of the list elements are freed, to prevent double frees
    /// from `free_func:`
    /// (C Language Example):
    /// ```C
    /// GList *list_of_owned_things = …;  /<!-- -->* (transfer full) (element-type GObject) *<!-- -->/
    /// g_list_free_full (g_steal_pointer (&list_of_owned_things), g_object_unref);
    /// ```
    /// 
    func freeFull(freeFunc free_func: @escaping DestroyNotify) {
        g_list_free_full(cast(_ptr), free_func)
    
    }

    /// Gets the position of the element containing
    /// the given data (starting from 0).
    func index(data: gconstpointer) -> Int {
        let rv: Int = cast(g_list_index(cast(_ptr), cast(data)))
        return Int(rv)
    }

    /// Inserts a new element into the list at the given position.
    @discardableResult func insert(data: UnsafeMutableRawPointer, position: CInt) -> UnsafeMutablePointer<GList>! {
        let rv: UnsafeMutablePointer<GList>! = cast(g_list_insert(cast(_ptr), cast(data), gint(position)))
        return cast(rv)
    }

    /// Inserts a new element into the list before the given position.
    @discardableResult func insertBefore(sibling: ListProtocol, data: UnsafeMutableRawPointer) -> UnsafeMutablePointer<GList>! {
        let rv: UnsafeMutablePointer<GList>! = cast(g_list_insert_before(cast(_ptr), cast(sibling.ptr), cast(data)))
        return cast(rv)
    }

    /// Inserts `link_` into the list before the given position.
    @discardableResult func insertBeforeLink(sibling: ListProtocol, link_: ListProtocol) -> UnsafeMutablePointer<GList>! {
        let rv: UnsafeMutablePointer<GList>! = cast(g_list_insert_before_link(cast(_ptr), cast(sibling.ptr), cast(link_.ptr)))
        return cast(rv)
    }

    /// Inserts a new element into the list, using the given comparison
    /// function to determine its position.
    /// 
    /// If you are adding many new elements to a list, and the number of
    /// new elements is much larger than the length of the list, use
    /// `g_list_prepend()` to add the new items and sort the list afterwards
    /// with `g_list_sort()`.
    @discardableResult func insertSorted(data: UnsafeMutableRawPointer, func_: @escaping CompareFunc) -> UnsafeMutablePointer<GList>! {
        let rv: UnsafeMutablePointer<GList>! = cast(g_list_insert_sorted(cast(_ptr), cast(data), func_))
        return cast(rv)
    }

    /// Inserts a new element into the list, using the given comparison
    /// function to determine its position.
    /// 
    /// If you are adding many new elements to a list, and the number of
    /// new elements is much larger than the length of the list, use
    /// `g_list_prepend()` to add the new items and sort the list afterwards
    /// with `g_list_sort()`.
    @discardableResult func insertSortedWith(data: UnsafeMutableRawPointer, func_: @escaping CompareDataFunc, userData user_data: UnsafeMutableRawPointer) -> UnsafeMutablePointer<GList>! {
        let rv: UnsafeMutablePointer<GList>! = cast(g_list_insert_sorted_with_data(cast(_ptr), cast(data), func_, cast(user_data)))
        return cast(rv)
    }

    /// Gets the last element in a `GList`.
    func last() -> UnsafeMutablePointer<GList>! {
        let rv: UnsafeMutablePointer<GList>! = cast(g_list_last(cast(_ptr)))
        return cast(rv)
    }

    /// Gets the number of elements in a `GList`.
    /// 
    /// This function iterates over the whole list to count its elements.
    /// Use a `GQueue` instead of a GList if you regularly need the number
    /// of items. To check whether the list is non-empty, it is faster to check
    /// `list` against `nil`.
    func length() -> Int {
        let rv: Int = cast(g_list_length(cast(_ptr)))
        return Int(rv)
    }

    /// Gets the element at the given position in a `GList`.
    /// 
    /// This iterates over the list until it reaches the `n`-th position. If you
    /// intend to iterate over every element, it is better to use a for-loop as
    /// described in the `GList` introduction.
    func nth(n: CUnsignedInt) -> UnsafeMutablePointer<GList>! {
        let rv: UnsafeMutablePointer<GList>! = cast(g_list_nth(cast(_ptr), guint(n)))
        return cast(rv)
    }

    /// Gets the data of the element at the given position.
    /// 
    /// This iterates over the list until it reaches the `n`-th position. If you
    /// intend to iterate over every element, it is better to use a for-loop as
    /// described in the `GList` introduction.
    func nthData(n: CUnsignedInt) -> UnsafeMutableRawPointer! {
        let rv: UnsafeMutableRawPointer! = cast(g_list_nth_data(cast(_ptr), guint(n)))
        return cast(rv)
    }

    /// Gets the element `n` places before `list`.
    func nthPrev(n: CUnsignedInt) -> UnsafeMutablePointer<GList>! {
        let rv: UnsafeMutablePointer<GList>! = cast(g_list_nth_prev(cast(_ptr), guint(n)))
        return cast(rv)
    }

    /// Gets the position of the given element
    /// in the `GList` (starting from 0).
    func position(llink: ListProtocol) -> Int {
        let rv: Int = cast(g_list_position(cast(_ptr), cast(llink.ptr)))
        return Int(rv)
    }

    /// Prepends a new element on to the start of the list.
    /// 
    /// Note that the return value is the new start of the list,
    /// which will have changed, so make sure you store the new value.
    /// 
    /// (C Language Example):
    /// ```C
    /// // Notice that it is initialized to the empty list.
    /// GList *list = NULL;
    /// 
    /// list = g_list_prepend (list, "last");
    /// list = g_list_prepend (list, "first");
    /// ```
    /// 
    /// Do not use this function to prepend a new element to a different
    /// element than the start of the list. Use `g_list_insert_before()` instead.
    @discardableResult func prepend(data: UnsafeMutableRawPointer) -> UnsafeMutablePointer<GList>! {
        let rv: UnsafeMutablePointer<GList>! = cast(g_list_prepend(cast(_ptr), cast(data)))
        return cast(rv)
    }

    /// Removes an element from a `GList`.
    /// If two elements contain the same data, only the first is removed.
    /// If none of the elements contain the data, the `GList` is unchanged.
    @discardableResult func remove(data: gconstpointer) -> UnsafeMutablePointer<GList>! {
        let rv: UnsafeMutablePointer<GList>! = cast(g_list_remove(cast(_ptr), cast(data)))
        return cast(rv)
    }

    /// Removes all list nodes with data equal to `data`.
    /// Returns the new head of the list. Contrast with
    /// `g_list_remove()` which removes only the first node
    /// matching the given data.
    @discardableResult func removeAll(data: gconstpointer) -> UnsafeMutablePointer<GList>! {
        let rv: UnsafeMutablePointer<GList>! = cast(g_list_remove_all(cast(_ptr), cast(data)))
        return cast(rv)
    }

    /// Removes an element from a `GList`, without freeing the element.
    /// The removed element's prev and next links are set to `nil`, so
    /// that it becomes a self-contained list with one element.
    /// 
    /// This function is for example used to move an element in the list
    /// (see the example for `g_list_concat()`) or to remove an element in
    /// the list before freeing its data:
    /// (C Language Example):
    /// ```C
    /// list = g_list_remove_link (list, llink);
    /// free_some_data_that_may_access_the_list_again (llink->data);
    /// g_list_free (llink);
    /// ```
    /// 
    @discardableResult func removeLink(llink: ListProtocol) -> UnsafeMutablePointer<GList>! {
        let rv: UnsafeMutablePointer<GList>! = cast(g_list_remove_link(cast(_ptr), cast(llink.ptr)))
        return cast(rv)
    }

    /// Reverses a `GList`.
    /// It simply switches the next and prev pointers of each element.
    func reverse() -> UnsafeMutablePointer<GList>! {
        let rv: UnsafeMutablePointer<GList>! = cast(g_list_reverse(cast(_ptr)))
        return cast(rv)
    }

    /// Sorts a `GList` using the given comparison function. The algorithm
    /// used is a stable sort.
    func sort(compareFunc compare_func: @escaping CompareFunc) -> UnsafeMutablePointer<GList>! {
        let rv: UnsafeMutablePointer<GList>! = cast(g_list_sort(cast(_ptr), compare_func))
        return cast(rv)
    }

    /// Like `g_list_sort()`, but the comparison function accepts
    /// a user data argument.
    func sortWithData(compareFunc compare_func: @escaping CompareDataFunc, userData user_data: UnsafeMutableRawPointer) -> UnsafeMutablePointer<GList>! {
        let rv: UnsafeMutablePointer<GList>! = cast(g_list_sort_with_data(cast(_ptr), compare_func, cast(user_data)))
        return cast(rv)
    }

    /// Clears a pointer to a `GList`, freeing it and, optionally, freeing its elements using `destroy`.
    /// 
    /// `list_ptr` must be a valid pointer. If `list_ptr` points to a null `GList`, this does nothing.
    func clearList(destroy: @escaping DestroyNotify) {
        g_clear_list(cast(_ptr), destroy)
    
    }

    /// holds the element's data, which can be a pointer to any kind
    ///        of data, or any integer value using the
    ///        [Type Conversion Macros](#glib-Type-Conversion-Macros)
    var data: UnsafeMutableRawPointer {
        /// holds the element's data, which can be a pointer to any kind
        ///        of data, or any integer value using the
        ///        [Type Conversion Macros](#glib-Type-Conversion-Macros)
        get {
            let rv: UnsafeMutableRawPointer = cast(_ptr.pointee.data)
            return rv
        }
        /// holds the element's data, which can be a pointer to any kind
        ///        of data, or any integer value using the
        ///        [Type Conversion Macros](#glib-Type-Conversion-Macros)
         set {
            _ptr.pointee.data = cast(newValue)
        }
    }

    /// contains the link to the next element in the list
    var next: UnsafeMutablePointer<GList> {
        /// contains the link to the next element in the list
        get {
            let rv: UnsafeMutablePointer<GList> = cast(_ptr.pointee.next)
            return rv
        }
        /// contains the link to the next element in the list
         set {
            _ptr.pointee.next = cast(newValue)
        }
    }

    /// contains the link to the previous element in the list
    var prev: UnsafeMutablePointer<GList> {
        /// contains the link to the previous element in the list
        get {
            let rv: UnsafeMutablePointer<GList> = cast(_ptr.pointee.prev)
            return rv
        }
        /// contains the link to the previous element in the list
         set {
            _ptr.pointee.prev = cast(newValue)
        }
    }

}



