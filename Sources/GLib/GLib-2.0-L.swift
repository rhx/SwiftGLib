import CGLib

// MARK: - List Record

/// The `GList` struct is used for each element in a doubly-linked list.
///
/// The `ListProtocol` protocol exposes the methods and properties of an underlying `GList` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `List`.
/// Alternatively, use `ListRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ListProtocol {
        /// Untyped pointer to the underlying `GList` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GList` instance.
    var _ptr: UnsafeMutablePointer<GList>! { get }

    /// Required Initialiser for types conforming to `ListProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `GList` struct is used for each element in a doubly-linked list.
///
/// The `ListRef` type acts as a lightweight Swift reference to an underlying `GList` instance.
/// It exposes methods that can operate on this data type through `ListProtocol` conformance.
/// Use `ListRef` only as an `unowned` reference to an existing `GList` instance.
///
public struct ListRef: ListProtocol {
        /// Untyped pointer to the underlying `GList` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ListRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GList>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GList>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GList>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GList>?) {
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

    /// Reference intialiser for a related type that implements `ListProtocol`
    @inlinable init<T: ListProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Allocates space for one `GList` element. It is called by
    /// `g_list_append()`, `g_list_prepend()`, `g_list_insert()` and
    /// `g_list_insert_sorted()` and so is rarely used on its own.
    @inlinable static func alloc() -> ListRef! {
            let result = g_list_alloc()
        guard let rv = ListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }
}

/// The `GList` struct is used for each element in a doubly-linked list.
///
/// The `List` type acts as an owner of an underlying `GList` instance.
/// It provides the methods that can operate on this data type through `ListProtocol` conformance.
/// Use `List` as a strong reference or owner of a `GList` instance.
///
open class List: ListProtocol {
        /// Untyped pointer to the underlying `GList` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `List` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GList>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `List` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GList>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `List` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `List` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `List` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GList>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `List` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GList>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GList` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `List` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GList>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GList, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `ListProtocol`
    /// `GList` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ListProtocol`
    @inlinable public init<T: ListProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GList, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GList`.
    deinit {
        // no reference counting for GList, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GList, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GList, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GList, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GList, cannot ref(_ptr)
    }


    /// Allocates space for one `GList` element. It is called by
    /// `g_list_append()`, `g_list_prepend()`, `g_list_insert()` and
    /// `g_list_insert_sorted()` and so is rarely used on its own.
    @inlinable public static func alloc() -> List! {
            let result = g_list_alloc()
        guard let rv = List(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

}

// MARK: no List properties

// MARK: no List signals

// MARK: List has no signals
// MARK: List Record: ListProtocol extension (methods and fields)
public extension ListProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GList` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GList>! { return ptr?.assumingMemoryBound(to: GList.self) }

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
    @inlinable func append(data: gpointer? = nil) -> ListRef! {
        let result = g_list_append(_ptr, data)
        guard let rv = ListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
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
    @inlinable func concat<ListT: ListProtocol>(list2: ListT) -> ListRef! {
        let result = g_list_concat(_ptr, list2._ptr)
        guard let rv = ListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Copies a `GList`.
    /// 
    /// Note that this is a "shallow" copy. If the list elements
    /// consist of pointers to data, the pointers are copied but
    /// the actual data is not. See `g_list_copy_deep()` if you need
    /// to copy the data as well.
    @inlinable func copy() -> ListRef! {
        let result = g_list_copy(_ptr)
        guard let rv = ListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
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
    @inlinable func copyDeep(`func`: GCopyFunc?, userData: gpointer? = nil) -> ListRef! {
        let result = g_list_copy_deep(_ptr, `func`, userData)
        guard let rv = ListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Removes the node link_ from the list and frees it.
    /// Compare this to `g_list_remove_link()` which removes the node
    /// without freeing it.
    @inlinable func delete<ListT: ListProtocol>(link: ListT) -> ListRef! {
        let result = g_list_delete_link(_ptr, link._ptr)
        guard let rv = ListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Finds the element in a `GList` which contains the given data.
    @inlinable func find(data: gconstpointer? = nil) -> ListRef! {
        let result = g_list_find(_ptr, data)
        guard let rv = ListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Finds an element in a `GList`, using a supplied function to
    /// find the desired element. It iterates over the list, calling
    /// the given function which should return 0 when the desired
    /// element is found. The function takes two `gconstpointer` arguments,
    /// the `GList` element's data as the first argument and the
    /// given user data.
    @inlinable func findCustom(data: gconstpointer? = nil, `func`: GCompareFunc?) -> ListRef! {
        let result = g_list_find_custom(_ptr, data, `func`)
        guard let rv = ListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Gets the first element in a `GList`.
    @inlinable func first() -> ListRef! {
        let result = g_list_first(_ptr)
        guard let rv = ListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Calls a function for each element of a `GList`.
    /// 
    /// It is safe for `func` to remove the element from `list`, but it must
    /// not modify any part of the list after that element.
    @inlinable func foreach(`func`: GFunc?, userData: gpointer? = nil) {
        
        g_list_foreach(_ptr, `func`, userData)
        
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
    @inlinable func free() {
        
        g_list_free(_ptr)
        
    }

    /// Frees one `GList` element, but does not update links from the next and
    /// previous elements in the list, so you should not call this function on an
    /// element that is currently part of a list.
    /// 
    /// It is usually used after `g_list_remove_link()`.
    @inlinable func free1() {
        
        g_list_free_1(_ptr)
        
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
    @inlinable func freeFull(freeFunc: GDestroyNotify?) {
        
        g_list_free_full(_ptr, freeFunc)
        
    }

    /// Gets the position of the element containing
    /// the given data (starting from 0).
    @inlinable func index(data: gconstpointer? = nil) -> Int {
        let result = g_list_index(_ptr, data)
        let rv = Int(result)
        return rv
    }

    /// Inserts a new element into the list at the given position.
    @inlinable func insert(data: gpointer? = nil, position: Int) -> ListRef! {
        let result = g_list_insert(_ptr, data, gint(position))
        guard let rv = ListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Inserts a new element into the list before the given position.
    @inlinable func insertBefore<ListT: ListProtocol>(sibling: ListT, data: gpointer? = nil) -> ListRef! {
        let result = g_list_insert_before(_ptr, sibling._ptr, data)
        guard let rv = ListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Inserts `link_` into the list before the given position.
    @inlinable func insertBeforeLink<ListT: ListProtocol>(sibling: ListT?, link: ListT) -> ListRef! {
        let result = g_list_insert_before_link(_ptr, sibling?._ptr, link._ptr)
        guard let rv = ListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Inserts a new element into the list, using the given comparison
    /// function to determine its position.
    /// 
    /// If you are adding many new elements to a list, and the number of
    /// new elements is much larger than the length of the list, use
    /// `g_list_prepend()` to add the new items and sort the list afterwards
    /// with `g_list_sort()`.
    @inlinable func insertSorted(data: gpointer? = nil, `func`: GCompareFunc?) -> ListRef! {
        let result = g_list_insert_sorted(_ptr, data, `func`)
        guard let rv = ListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Inserts a new element into the list, using the given comparison
    /// function to determine its position.
    /// 
    /// If you are adding many new elements to a list, and the number of
    /// new elements is much larger than the length of the list, use
    /// `g_list_prepend()` to add the new items and sort the list afterwards
    /// with `g_list_sort()`.
    @inlinable func insertSortedWith(data: gpointer? = nil, `func`: GCompareDataFunc?, userData: gpointer? = nil) -> ListRef! {
        let result = g_list_insert_sorted_with_data(_ptr, data, `func`, userData)
        guard let rv = ListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Gets the last element in a `GList`.
    @inlinable func last() -> ListRef! {
        let result = g_list_last(_ptr)
        guard let rv = ListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Gets the number of elements in a `GList`.
    /// 
    /// This function iterates over the whole list to count its elements.
    /// Use a `GQueue` instead of a GList if you regularly need the number
    /// of items. To check whether the list is non-empty, it is faster to check
    /// `list` against `nil`.
    @inlinable func length() -> Int {
        let result = g_list_length(_ptr)
        let rv = Int(result)
        return rv
    }

    /// Gets the element at the given position in a `GList`.
    /// 
    /// This iterates over the list until it reaches the `n-th` position. If you
    /// intend to iterate over every element, it is better to use a for-loop as
    /// described in the `GList` introduction.
    @inlinable func nth(n: Int) -> ListRef! {
        let result = g_list_nth(_ptr, guint(n))
        guard let rv = ListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Gets the data of the element at the given position.
    /// 
    /// This iterates over the list until it reaches the `n-th` position. If you
    /// intend to iterate over every element, it is better to use a for-loop as
    /// described in the `GList` introduction.
    @inlinable func nthData(n: Int) -> gpointer? {
        let result = g_list_nth_data(_ptr, guint(n))
        let rv = result
        return rv
    }

    /// Gets the element `n` places before `list`.
    @inlinable func nthPrev(n: Int) -> ListRef! {
        let result = g_list_nth_prev(_ptr, guint(n))
        guard let rv = ListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Gets the position of the given element
    /// in the `GList` (starting from 0).
    @inlinable func position<ListT: ListProtocol>(llink: ListT) -> Int {
        let result = g_list_position(_ptr, llink._ptr)
        let rv = Int(result)
        return rv
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
    @inlinable func prepend(data: gpointer? = nil) -> ListRef! {
        let result = g_list_prepend(_ptr, data)
        guard let rv = ListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Removes an element from a `GList`.
    /// If two elements contain the same data, only the first is removed.
    /// If none of the elements contain the data, the `GList` is unchanged.
    @inlinable func remove(data: gconstpointer? = nil) -> ListRef! {
        let result = g_list_remove(_ptr, data)
        guard let rv = ListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Removes all list nodes with data equal to `data`.
    /// Returns the new head of the list. Contrast with
    /// `g_list_remove()` which removes only the first node
    /// matching the given data.
    @inlinable func removeAll(data: gconstpointer? = nil) -> ListRef! {
        let result = g_list_remove_all(_ptr, data)
        guard let rv = ListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
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
    @inlinable func removeLink<ListT: ListProtocol>(llink: ListT) -> ListRef! {
        let result = g_list_remove_link(_ptr, llink._ptr)
        guard let rv = ListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Reverses a `GList`.
    /// It simply switches the next and prev pointers of each element.
    @inlinable func reverse() -> ListRef! {
        let result = g_list_reverse(_ptr)
        guard let rv = ListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Sorts a `GList` using the given comparison function. The algorithm
    /// used is a stable sort.
    @inlinable func sort(compareFunc: GCompareFunc?) -> ListRef! {
        let result = g_list_sort(_ptr, compareFunc)
        guard let rv = ListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Like `g_list_sort()`, but the comparison function accepts
    /// a user data argument.
    @inlinable func sortWithData(compareFunc: GCompareDataFunc?, userData: gpointer? = nil) -> ListRef! {
        let result = g_list_sort_with_data(_ptr, compareFunc, userData)
        guard let rv = ListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// holds the element's data, which can be a pointer to any kind
    ///        of data, or any integer value using the
    ///        [Type Conversion Macros](#glib-Type-Conversion-Macros)
    @inlinable var data: gpointer? {
        /// holds the element's data, which can be a pointer to any kind
        ///        of data, or any integer value using the
        ///        [Type Conversion Macros](#glib-Type-Conversion-Macros)
        get {
            let rv = _ptr.pointee.data
    return rv
        }
        /// holds the element's data, which can be a pointer to any kind
        ///        of data, or any integer value using the
        ///        [Type Conversion Macros](#glib-Type-Conversion-Macros)
         set {
            _ptr.pointee.data = newValue
        }
    }

    /// contains the link to the next element in the list
    @inlinable var next: ListRef! {
        /// contains the link to the next element in the list
        get {
            let rv = ListRef(gconstpointer: gconstpointer(_ptr.pointee.next))
    return rv
        }
        /// contains the link to the next element in the list
         set {
            _ptr.pointee.next = UnsafeMutablePointer<GList>(newValue._ptr)
        }
    }

    /// contains the link to the previous element in the list
    @inlinable var prev: ListRef! {
        /// contains the link to the previous element in the list
        get {
            let rv = ListRef(gconstpointer: gconstpointer(_ptr.pointee.prev))
    return rv
        }
        /// contains the link to the previous element in the list
         set {
            _ptr.pointee.prev = UnsafeMutablePointer<GList>(newValue._ptr)
        }
    }

}



// MARK: - LogField Record

/// Structure representing a single field in a structured log entry. See
/// `g_log_structured()` for details.
/// 
/// Log fields may contain arbitrary values, including binary with embedded nul
/// bytes. If the field contains a string, the string must be UTF-8 encoded and
/// have a trailing nul byte. Otherwise, `length` must be set to a non-negative
/// value.
///
/// The `LogFieldProtocol` protocol exposes the methods and properties of an underlying `GLogField` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LogField`.
/// Alternatively, use `LogFieldRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol LogFieldProtocol {
        /// Untyped pointer to the underlying `GLogField` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GLogField` instance.
    var _ptr: UnsafeMutablePointer<GLogField>! { get }

    /// Required Initialiser for types conforming to `LogFieldProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Structure representing a single field in a structured log entry. See
/// `g_log_structured()` for details.
/// 
/// Log fields may contain arbitrary values, including binary with embedded nul
/// bytes. If the field contains a string, the string must be UTF-8 encoded and
/// have a trailing nul byte. Otherwise, `length` must be set to a non-negative
/// value.
///
/// The `LogFieldRef` type acts as a lightweight Swift reference to an underlying `GLogField` instance.
/// It exposes methods that can operate on this data type through `LogFieldProtocol` conformance.
/// Use `LogFieldRef` only as an `unowned` reference to an existing `GLogField` instance.
///
public struct LogFieldRef: LogFieldProtocol {
        /// Untyped pointer to the underlying `GLogField` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LogFieldRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GLogField>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GLogField>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GLogField>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GLogField>?) {
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

    /// Reference intialiser for a related type that implements `LogFieldProtocol`
    @inlinable init<T: LogFieldProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// Structure representing a single field in a structured log entry. See
/// `g_log_structured()` for details.
/// 
/// Log fields may contain arbitrary values, including binary with embedded nul
/// bytes. If the field contains a string, the string must be UTF-8 encoded and
/// have a trailing nul byte. Otherwise, `length` must be set to a non-negative
/// value.
///
/// The `LogField` type acts as an owner of an underlying `GLogField` instance.
/// It provides the methods that can operate on this data type through `LogFieldProtocol` conformance.
/// Use `LogField` as a strong reference or owner of a `GLogField` instance.
///
open class LogField: LogFieldProtocol {
        /// Untyped pointer to the underlying `GLogField` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LogField` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GLogField>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LogField` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GLogField>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LogField` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LogField` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LogField` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GLogField>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LogField` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GLogField>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GLogField` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `LogField` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GLogField>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GLogField, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `LogFieldProtocol`
    /// `GLogField` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `LogFieldProtocol`
    @inlinable public init<T: LogFieldProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GLogField, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GLogField`.
    deinit {
        // no reference counting for GLogField, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GLogField, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GLogField, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GLogField, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GLogField, cannot ref(_ptr)
    }



}

// MARK: no LogField properties

// MARK: no LogField signals

// MARK: LogField has no signals
// MARK: LogField Record: LogFieldProtocol extension (methods and fields)
public extension LogFieldProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GLogField` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GLogField>! { return ptr?.assumingMemoryBound(to: GLogField.self) }


    /// field name (UTF-8 string)
    @inlinable var key: UnsafePointer<gchar>! {
        /// field name (UTF-8 string)
        get {
            let rv = _ptr.pointee.key
    return rv
        }
        /// field name (UTF-8 string)
         set {
            _ptr.pointee.key = newValue
        }
    }

    /// field value (arbitrary bytes)
    @inlinable var value: gconstpointer? {
        /// field value (arbitrary bytes)
        get {
            let rv = _ptr.pointee.value
    return rv
        }
        /// field value (arbitrary bytes)
         set {
            _ptr.pointee.value = newValue
        }
    }

    /// length of `value`, in bytes, or -1 if it is nul-terminated
    @inlinable var length: gssize {
        /// length of `value`, in bytes, or -1 if it is nul-terminated
        get {
            let rv = _ptr.pointee.length
    return rv
        }
        /// length of `value`, in bytes, or -1 if it is nul-terminated
         set {
            _ptr.pointee.length = newValue
        }
    }

}



