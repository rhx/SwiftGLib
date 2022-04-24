import CGLib

// MARK: - SList Record

/// The `GSList` struct is used for each element in the singly-linked
/// list.
///
/// The `SListProtocol` protocol exposes the methods and properties of an underlying `GSList` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SList`.
/// Alternatively, use `SListRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol SListProtocol {
        /// Untyped pointer to the underlying `GSList` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSList` instance.
    var _ptr: UnsafeMutablePointer<GSList>! { get }

    /// Required Initialiser for types conforming to `SListProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `GSList` struct is used for each element in the singly-linked
/// list.
///
/// The `SListRef` type acts as a lightweight Swift reference to an underlying `GSList` instance.
/// It exposes methods that can operate on this data type through `SListProtocol` conformance.
/// Use `SListRef` only as an `unowned` reference to an existing `GSList` instance.
///
public struct SListRef: SListProtocol {
        /// Untyped pointer to the underlying `GSList` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SListRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSList>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSList>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSList>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSList>?) {
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

    /// Reference intialiser for a related type that implements `SListProtocol`
    @inlinable init<T: SListProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SListProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SListProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SListProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SListProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SListProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Allocates space for one `GSList` element. It is called by the
    /// `g_slist_append()`, `g_slist_prepend()`, `g_slist_insert()` and
    /// `g_slist_insert_sorted()` functions and so is rarely used on its own.
    @inlinable static func alloc() -> SListRef! {
            let result = g_slist_alloc()
        guard let rv = SListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }
}

/// The `GSList` struct is used for each element in the singly-linked
/// list.
///
/// The `SList` type acts as an owner of an underlying `GSList` instance.
/// It provides the methods that can operate on this data type through `SListProtocol` conformance.
/// Use `SList` as a strong reference or owner of a `GSList` instance.
///
open class SList: SListProtocol {
        /// Untyped pointer to the underlying `GSList` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GSList>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GSList>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SList` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GSList>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GSList>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GSList` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `SList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GSList>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GSList, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `SListProtocol`
    /// `GSList` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SListProtocol`
    @inlinable public init<T: SListProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GSList, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GSList`.
    deinit {
        // no reference counting for GSList, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SListProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SListProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GSList, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SListProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SListProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GSList, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SListProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SListProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GSList, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SListProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SListProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GSList, cannot ref(_ptr)
    }


    /// Allocates space for one `GSList` element. It is called by the
    /// `g_slist_append()`, `g_slist_prepend()`, `g_slist_insert()` and
    /// `g_slist_insert_sorted()` functions and so is rarely used on its own.
    @inlinable public static func alloc() -> SList! {
            let result = g_slist_alloc()
        guard let rv = SList(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

}

// MARK: no SList properties

// MARK: no SList signals

// MARK: SList has no signals
// MARK: SList Record: SListProtocol extension (methods and fields)
public extension SListProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSList` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GSList>! { return ptr?.assumingMemoryBound(to: GSList.self) }

    /// Adds a new element on to the end of the list.
    /// 
    /// The return value is the new start of the list, which may
    /// have changed, so make sure you store the new value.
    /// 
    /// Note that `g_slist_append()` has to traverse the entire list
    /// to find the end, which is inefficient when adding multiple
    /// elements. A common idiom to avoid the inefficiency is to prepend
    /// the elements and reverse the list when all elements have been added.
    /// 
    /// (C Language Example):
    /// ```C
    /// // Notice that these are initialized to the empty list.
    /// GSList *list = NULL, *number_list = NULL;
    /// 
    /// // This is a list of strings.
    /// list = g_slist_append (list, "first");
    /// list = g_slist_append (list, "second");
    /// 
    /// // This is a list of integers.
    /// number_list = g_slist_append (number_list, GINT_TO_POINTER (27));
    /// number_list = g_slist_append (number_list, GINT_TO_POINTER (14));
    /// ```
    /// 
    @inlinable func append(data: gpointer? = nil) -> SListRef! {
        let result = g_slist_append(_ptr, data)
        guard let rv = SListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Adds the second `GSList` onto the end of the first `GSList`.
    /// Note that the elements of the second `GSList` are not copied.
    /// They are used directly.
    @inlinable func concat<SListT: SListProtocol>(list2: SListT) -> SListRef! {
        let result = g_slist_concat(_ptr, list2._ptr)
        guard let rv = SListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Copies a `GSList`.
    /// 
    /// Note that this is a "shallow" copy. If the list elements
    /// consist of pointers to data, the pointers are copied but
    /// the actual data isn't. See `g_slist_copy_deep()` if you need
    /// to copy the data as well.
    @inlinable func copy() -> SListRef! {
        let result = g_slist_copy(_ptr)
        guard let rv = SListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Makes a full (deep) copy of a `GSList`.
    /// 
    /// In contrast with `g_slist_copy()`, this function uses `func` to make a copy of
    /// each list element, in addition to copying the list container itself.
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
    /// another_list = g_slist_copy_deep (list, (GCopyFunc) g_object_ref, NULL);
    /// ```
    /// 
    /// And, to entirely free the new list, you could do:
    /// (C Language Example):
    /// ```C
    /// g_slist_free_full (another_list, g_object_unref);
    /// ```
    /// 
    @inlinable func copyDeep(`func`: GCopyFunc?, userData: gpointer? = nil) -> SListRef! {
        let result = g_slist_copy_deep(_ptr, `func`, userData)
        guard let rv = SListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Removes the node link_ from the list and frees it.
    /// Compare this to `g_slist_remove_link()` which removes the node
    /// without freeing it.
    /// 
    /// Removing arbitrary nodes from a singly-linked list requires time
    /// that is proportional to the length of the list (ie. `O(n)`). If you
    /// find yourself using `g_slist_delete_link()` frequently, you should
    /// consider a different data structure, such as the doubly-linked
    /// `GList`.
    @inlinable func delete<SListT: SListProtocol>(link: SListT) -> SListRef! {
        let result = g_slist_delete_link(_ptr, link._ptr)
        guard let rv = SListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Finds the element in a `GSList` which
    /// contains the given data.
    @inlinable func find(data: gconstpointer? = nil) -> SListRef! {
        let result = g_slist_find(_ptr, data)
        guard let rv = SListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Finds an element in a `GSList`, using a supplied function to
    /// find the desired element. It iterates over the list, calling
    /// the given function which should return 0 when the desired
    /// element is found. The function takes two `gconstpointer` arguments,
    /// the `GSList` element's data as the first argument and the
    /// given user data.
    @inlinable func findCustom(data: gconstpointer? = nil, `func`: GCompareFunc?) -> SListRef! {
        let result = g_slist_find_custom(_ptr, data, `func`)
        guard let rv = SListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Calls a function for each element of a `GSList`.
    /// 
    /// It is safe for `func` to remove the element from `list`, but it must
    /// not modify any part of the list after that element.
    @inlinable func foreach(`func`: GFunc?, userData: gpointer? = nil) {
        
        g_slist_foreach(_ptr, `func`, userData)
        
    }

    /// Frees all of the memory used by a `GSList`.
    /// The freed elements are returned to the slice allocator.
    /// 
    /// If list elements contain dynamically-allocated memory,
    /// you should either use `g_slist_free_full()` or free them manually
    /// first.
    /// 
    /// It can be combined with `g_steal_pointer()` to ensure the list head pointer
    /// is not left dangling:
    /// (C Language Example):
    /// ```C
    /// GSList *list_of_borrowed_things = …;  /<!-- -->* (transfer container) *<!-- -->/
    /// g_slist_free (g_steal_pointer (&list_of_borrowed_things));
    /// ```
    /// 
    @inlinable func free() {
        
        g_slist_free(_ptr)
        
    }

    /// Frees one `GSList` element.
    /// It is usually used after `g_slist_remove_link()`.
    @inlinable func free1() {
        
        g_slist_free_1(_ptr)
        
    }

    /// Convenience method, which frees all the memory used by a `GSList`, and
    /// calls the specified destroy function on every element's data.
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
    /// GSList *list_of_owned_things = …;  /<!-- -->* (transfer full) (element-type GObject) *<!-- -->/
    /// g_slist_free_full (g_steal_pointer (&list_of_owned_things), g_object_unref);
    /// ```
    /// 
    @inlinable func freeFull(freeFunc: GDestroyNotify?) {
        
        g_slist_free_full(_ptr, freeFunc)
        
    }

    /// Gets the position of the element containing
    /// the given data (starting from 0).
    @inlinable func index(data: gconstpointer? = nil) -> Int {
        let result = g_slist_index(_ptr, data)
        let rv = Int(result)
        return rv
    }

    /// Inserts a new element into the list at the given position.
    @inlinable func insert(data: gpointer? = nil, position: Int) -> SListRef! {
        let result = g_slist_insert(_ptr, data, gint(position))
        guard let rv = SListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Inserts a node before `sibling` containing `data`.
    @inlinable func insertBefore<SListT: SListProtocol>(sibling: SListT, data: gpointer? = nil) -> SListRef! {
        let result = g_slist_insert_before(_ptr, sibling._ptr, data)
        guard let rv = SListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Inserts a new element into the list, using the given
    /// comparison function to determine its position.
    @inlinable func insertSorted(data: gpointer? = nil, `func`: GCompareFunc?) -> SListRef! {
        let result = g_slist_insert_sorted(_ptr, data, `func`)
        guard let rv = SListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Inserts a new element into the list, using the given
    /// comparison function to determine its position.
    @inlinable func insertSortedWith(data: gpointer? = nil, `func`: GCompareDataFunc?, userData: gpointer? = nil) -> SListRef! {
        let result = g_slist_insert_sorted_with_data(_ptr, data, `func`, userData)
        guard let rv = SListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Gets the last element in a `GSList`.
    /// 
    /// This function iterates over the whole list.
    @inlinable func last() -> SListRef! {
        let result = g_slist_last(_ptr)
        guard let rv = SListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Gets the number of elements in a `GSList`.
    /// 
    /// This function iterates over the whole list to
    /// count its elements. To check whether the list is non-empty, it is faster to
    /// check `list` against `nil`.
    @inlinable func length() -> Int {
        let result = g_slist_length(_ptr)
        let rv = Int(result)
        return rv
    }

    /// Gets the element at the given position in a `GSList`.
    @inlinable func nth(n: Int) -> SListRef! {
        let result = g_slist_nth(_ptr, guint(n))
        guard let rv = SListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Gets the data of the element at the given position.
    @inlinable func nthData(n: Int) -> gpointer? {
        let result = g_slist_nth_data(_ptr, guint(n))
        let rv = result
        return rv
    }

    /// Gets the position of the given element
    /// in the `GSList` (starting from 0).
    @inlinable func position<SListT: SListProtocol>(llink: SListT) -> Int {
        let result = g_slist_position(_ptr, llink._ptr)
        let rv = Int(result)
        return rv
    }

    /// Adds a new element on to the start of the list.
    /// 
    /// The return value is the new start of the list, which
    /// may have changed, so make sure you store the new value.
    /// 
    /// (C Language Example):
    /// ```C
    /// // Notice that it is initialized to the empty list.
    /// GSList *list = NULL;
    /// list = g_slist_prepend (list, "last");
    /// list = g_slist_prepend (list, "first");
    /// ```
    /// 
    @inlinable func prepend(data: gpointer? = nil) -> SListRef! {
        let result = g_slist_prepend(_ptr, data)
        guard let rv = SListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Removes an element from a `GSList`.
    /// If two elements contain the same data, only the first is removed.
    /// If none of the elements contain the data, the `GSList` is unchanged.
    @inlinable func remove(data: gconstpointer? = nil) -> SListRef! {
        let result = g_slist_remove(_ptr, data)
        guard let rv = SListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Removes all list nodes with data equal to `data`.
    /// Returns the new head of the list. Contrast with
    /// `g_slist_remove()` which removes only the first node
    /// matching the given data.
    @inlinable func removeAll(data: gconstpointer? = nil) -> SListRef! {
        let result = g_slist_remove_all(_ptr, data)
        guard let rv = SListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Removes an element from a `GSList`, without
    /// freeing the element. The removed element's next
    /// link is set to `nil`, so that it becomes a
    /// self-contained list with one element.
    /// 
    /// Removing arbitrary nodes from a singly-linked list
    /// requires time that is proportional to the length of the list
    /// (ie. `O(n)`). If you find yourself using `g_slist_remove_link()`
    /// frequently, you should consider a different data structure,
    /// such as the doubly-linked `GList`.
    @inlinable func remove<SListT: SListProtocol>(link: SListT) -> SListRef! {
        let result = g_slist_remove_link(_ptr, link._ptr)
        guard let rv = SListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Reverses a `GSList`.
    @inlinable func reverse() -> SListRef! {
        let result = g_slist_reverse(_ptr)
        guard let rv = SListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Sorts a `GSList` using the given comparison function. The algorithm
    /// used is a stable sort.
    @inlinable func sort(compareFunc: GCompareFunc?) -> SListRef! {
        let result = g_slist_sort(_ptr, compareFunc)
        guard let rv = SListRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Like `g_slist_sort()`, but the sort function accepts a user data argument.
    @inlinable func sortWithData(compareFunc: GCompareDataFunc?, userData: gpointer? = nil) -> SListRef! {
        let result = g_slist_sort_with_data(_ptr, compareFunc, userData)
        guard let rv = SListRef(gconstpointer: gconstpointer(result)) else { return nil }
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

    /// contains the link to the next element in the list.
    @inlinable var next: SListRef! {
        /// contains the link to the next element in the list.
        get {
            let rv = SListRef(gconstpointer: gconstpointer(_ptr.pointee.next))
    return rv
        }
        /// contains the link to the next element in the list.
         set {
            _ptr.pointee.next = UnsafeMutablePointer<GSList>(newValue._ptr)
        }
    }

}



// MARK: - Scanner Record

/// The data structure representing a lexical scanner.
/// 
/// You should set `input_name` after creating the scanner, since
/// it is used by the default message handler when displaying
/// warnings and errors. If you are scanning a file, the filename
/// would be a good choice.
/// 
/// The `user_data` and `max_parse_errors` fields are not used.
/// If you need to associate extra data with the scanner you
/// can place them here.
/// 
/// If you want to use your own message handler you can set the
/// `msg_handler` field. The type of the message handler function
/// is declared by `GScannerMsgFunc`.
///
/// The `ScannerProtocol` protocol exposes the methods and properties of an underlying `GScanner` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Scanner`.
/// Alternatively, use `ScannerRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ScannerProtocol {
        /// Untyped pointer to the underlying `GScanner` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GScanner` instance.
    var _ptr: UnsafeMutablePointer<GScanner>! { get }

    /// Required Initialiser for types conforming to `ScannerProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The data structure representing a lexical scanner.
/// 
/// You should set `input_name` after creating the scanner, since
/// it is used by the default message handler when displaying
/// warnings and errors. If you are scanning a file, the filename
/// would be a good choice.
/// 
/// The `user_data` and `max_parse_errors` fields are not used.
/// If you need to associate extra data with the scanner you
/// can place them here.
/// 
/// If you want to use your own message handler you can set the
/// `msg_handler` field. The type of the message handler function
/// is declared by `GScannerMsgFunc`.
///
/// The `ScannerRef` type acts as a lightweight Swift reference to an underlying `GScanner` instance.
/// It exposes methods that can operate on this data type through `ScannerProtocol` conformance.
/// Use `ScannerRef` only as an `unowned` reference to an existing `GScanner` instance.
///
public struct ScannerRef: ScannerProtocol {
        /// Untyped pointer to the underlying `GScanner` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ScannerRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GScanner>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GScanner>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GScanner>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GScanner>?) {
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

    /// Reference intialiser for a related type that implements `ScannerProtocol`
    @inlinable init<T: ScannerProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The data structure representing a lexical scanner.
/// 
/// You should set `input_name` after creating the scanner, since
/// it is used by the default message handler when displaying
/// warnings and errors. If you are scanning a file, the filename
/// would be a good choice.
/// 
/// The `user_data` and `max_parse_errors` fields are not used.
/// If you need to associate extra data with the scanner you
/// can place them here.
/// 
/// If you want to use your own message handler you can set the
/// `msg_handler` field. The type of the message handler function
/// is declared by `GScannerMsgFunc`.
///
/// The `Scanner` type acts as an owner of an underlying `GScanner` instance.
/// It provides the methods that can operate on this data type through `ScannerProtocol` conformance.
/// Use `Scanner` as a strong reference or owner of a `GScanner` instance.
///
open class Scanner: ScannerProtocol {
        /// Untyped pointer to the underlying `GScanner` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Scanner` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GScanner>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Scanner` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GScanner>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Scanner` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Scanner` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Scanner` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GScanner>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Scanner` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GScanner>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GScanner` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Scanner` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GScanner>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GScanner, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `ScannerProtocol`
    /// `GScanner` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ScannerProtocol`
    @inlinable public init<T: ScannerProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GScanner, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GScanner`.
    deinit {
        // no reference counting for GScanner, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GScanner, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GScanner, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GScanner, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GScanner, cannot ref(_ptr)
    }



}

// MARK: no Scanner properties

// MARK: no Scanner signals

// MARK: Scanner has no signals
// MARK: Scanner Record: ScannerProtocol extension (methods and fields)
public extension ScannerProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GScanner` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GScanner>! { return ptr?.assumingMemoryBound(to: GScanner.self) }

    /// Returns the current line in the input stream (counting
    /// from 1). This is the line of the last token parsed via
    /// `g_scanner_get_next_token()`.
    @inlinable func curLine() -> Int {
        let result = g_scanner_cur_line(_ptr)
        let rv = Int(result)
        return rv
    }

    /// Returns the current position in the current line (counting
    /// from 0). This is the position of the last token parsed via
    /// `g_scanner_get_next_token()`.
    @inlinable func curPosition() -> Int {
        let result = g_scanner_cur_position(_ptr)
        let rv = Int(result)
        return rv
    }

    /// Gets the current token type. This is simply the `token`
    /// field in the `GScanner` structure.
    @inlinable func curToken() -> GTokenType {
        let result = g_scanner_cur_token(_ptr)
        let rv = result
        return rv
    }

    /// Gets the current token value. This is simply the `value`
    /// field in the `GScanner` structure.
    @inlinable func curValue() -> GTokenValue {
        let result = g_scanner_cur_value(_ptr)
        let rv = result
        return rv
    }

    /// Frees all memory used by the `GScanner`.
    @inlinable func destroy() {
        
        g_scanner_destroy(_ptr)
        
    }

    /// Returns `true` if the scanner has reached the end of
    /// the file or text buffer.
    @inlinable func eof() -> Bool {
        let result = g_scanner_eof(_ptr)
        let rv = ((result) != 0)
        return rv
    }


    // *** error() is not available because it has a varargs (...) parameter!


    /// Parses the next token just like `g_scanner_peek_next_token()`
    /// and also removes it from the input stream. The token data is
    /// placed in the `token`, `value`, `line`, and `position` fields of
    /// the `GScanner` structure.
    @inlinable func getNextToken() -> GTokenType {
        let result = g_scanner_get_next_token(_ptr)
        let rv = result
        return rv
    }

    /// Prepares to scan a file.
    @inlinable func inputFile(inputFd: Int) {
        
        g_scanner_input_file(_ptr, gint(inputFd))
        
    }

    /// Prepares to scan a text buffer.
    @inlinable func input(text: UnsafePointer<gchar>!, textLen: Int) {
        
        g_scanner_input_text(_ptr, text, guint(textLen))
        
    }

    /// Looks up a symbol in the current scope and return its value.
    /// If the symbol is not bound in the current scope, `nil` is
    /// returned.
    @inlinable func lookup(symbol: UnsafePointer<gchar>!) -> gpointer? {
        let result = g_scanner_lookup_symbol(_ptr, symbol)
        let rv = result
        return rv
    }

    /// Parses the next token, without removing it from the input stream.
    /// The token data is placed in the `next_token`, `next_value`, `next_line`,
    /// and `next_position` fields of the `GScanner` structure.
    /// 
    /// Note that, while the token is not removed from the input stream
    /// (i.e. the next call to `g_scanner_get_next_token()` will return the
    /// same token), it will not be reevaluated. This can lead to surprising
    /// results when changing scope or the scanner configuration after peeking
    /// the next token. Getting the next token after switching the scope or
    /// configuration will return whatever was peeked before, regardless of
    /// any symbols that may have been added or removed in the new scope.
    @inlinable func peekNextToken() -> GTokenType {
        let result = g_scanner_peek_next_token(_ptr)
        let rv = result
        return rv
    }

    /// Adds a symbol to the given scope.
    @inlinable func scopeAddSymbol(scopeID: Int, symbol: UnsafePointer<gchar>!, value: gpointer? = nil) {
        
        g_scanner_scope_add_symbol(_ptr, guint(scopeID), symbol, value)
        
    }

    /// Calls the given function for each of the symbol/value pairs
    /// in the given scope of the `GScanner`. The function is passed
    /// the symbol and value of each pair, and the given `user_data`
    /// parameter.
    @inlinable func scopeForeachSymbol(scopeID: Int, `func`: GHFunc?, userData: gpointer? = nil) {
        
        g_scanner_scope_foreach_symbol(_ptr, guint(scopeID), `func`, userData)
        
    }

    /// Looks up a symbol in a scope and return its value. If the
    /// symbol is not bound in the scope, `nil` is returned.
    @inlinable func scopeLookupSymbol(scopeID: Int, symbol: UnsafePointer<gchar>!) -> gpointer? {
        let result = g_scanner_scope_lookup_symbol(_ptr, guint(scopeID), symbol)
        let rv = result
        return rv
    }

    /// Removes a symbol from a scope.
    @inlinable func scopeRemoveSymbol(scopeID: Int, symbol: UnsafePointer<gchar>!) {
        
        g_scanner_scope_remove_symbol(_ptr, guint(scopeID), symbol)
        
    }

    /// Sets the current scope.
    @inlinable func setScope(scopeID: Int) -> Int {
        let result = g_scanner_set_scope(_ptr, guint(scopeID))
        let rv = Int(result)
        return rv
    }

    /// Rewinds the filedescriptor to the current buffer position
    /// and blows the file read ahead buffer. This is useful for
    /// third party uses of the scanners filedescriptor, which hooks
    /// onto the current scanning position.
    @inlinable func syncFileOffset() {
        
        g_scanner_sync_file_offset(_ptr)
        
    }

    /// Outputs a message through the scanner's msg_handler,
    /// resulting from an unexpected token in the input stream.
    /// Note that you should not call `g_scanner_peek_next_token()`
    /// followed by `g_scanner_unexp_token()` without an intermediate
    /// call to `g_scanner_get_next_token()`, as `g_scanner_unexp_token()`
    /// evaluates the scanner's current token (not the peeked token)
    /// to construct part of the message.
    @inlinable func unexpToken(expectedToken: GTokenType, identifierSpec: UnsafePointer<gchar>!, symbolSpec: UnsafePointer<gchar>!, symbolName: UnsafePointer<gchar>!, message: UnsafePointer<gchar>!, isError: Int) {
        
        g_scanner_unexp_token(_ptr, expectedToken, identifierSpec, symbolSpec, symbolName, message, gint(isError))
        
    }


    // *** warn() is not available because it has a varargs (...) parameter!

    /// Parses the next token just like `g_scanner_peek_next_token()`
    /// and also removes it from the input stream. The token data is
    /// placed in the `token`, `value`, `line`, and `position` fields of
    /// the `GScanner` structure.
    @inlinable var nextToken: GTokenType {
        /// Parses the next token just like `g_scanner_peek_next_token()`
        /// and also removes it from the input stream. The token data is
        /// placed in the `token`, `value`, `line`, and `position` fields of
        /// the `GScanner` structure.
        get {
            let result = g_scanner_get_next_token(_ptr)
        let rv = result
            return rv
        }
    }

    /// unused
    @inlinable var userData: gpointer? {
        /// unused
        get {
            let rv = _ptr.pointee.user_data
    return rv
        }
        /// unused
         set {
            _ptr.pointee.user_data = newValue
        }
    }

    /// unused
    @inlinable var maxParseErrors: guint {
        /// unused
        get {
            let rv = _ptr.pointee.max_parse_errors
    return rv
        }
        /// unused
         set {
            _ptr.pointee.max_parse_errors = newValue
        }
    }

    /// `g_scanner_error()` increments this field
    @inlinable var parseErrors: guint {
        /// `g_scanner_error()` increments this field
        get {
            let rv = _ptr.pointee.parse_errors
    return rv
        }
        /// `g_scanner_error()` increments this field
         set {
            _ptr.pointee.parse_errors = newValue
        }
    }

    /// name of input stream, featured by the default message handler
    @inlinable var inputName: UnsafePointer<gchar>! {
        /// name of input stream, featured by the default message handler
        get {
            let rv = _ptr.pointee.input_name
    return rv
        }
        /// name of input stream, featured by the default message handler
         set {
            _ptr.pointee.input_name = newValue
        }
    }

    /// quarked data
    @inlinable var qdata: DataRef! {
        /// quarked data
        get {
            let rv = DataRef(gconstpointer: gconstpointer(_ptr.pointee.qdata))
    return rv
        }
        /// quarked data
         set {
            _ptr.pointee.qdata = UnsafeMutablePointer<GData>(newValue._ptr)
        }
    }

    /// link into the scanner configuration
    @inlinable var config: ScannerConfigRef! {
        /// link into the scanner configuration
        get {
            let rv = ScannerConfigRef(gconstpointer: gconstpointer(_ptr.pointee.config))
    return rv
        }
        /// link into the scanner configuration
         set {
            _ptr.pointee.config = UnsafeMutablePointer<GScannerConfig>(newValue._ptr)
        }
    }

    /// token parsed by the last `g_scanner_get_next_token()`
    @inlinable var token: GTokenType {
        /// token parsed by the last `g_scanner_get_next_token()`
        get {
            let rv = _ptr.pointee.token
    return rv
        }
        /// token parsed by the last `g_scanner_get_next_token()`
         set {
            _ptr.pointee.token = newValue
        }
    }

    /// value of the last token from `g_scanner_get_next_token()`
    @inlinable var value: GTokenValue {
        /// value of the last token from `g_scanner_get_next_token()`
        get {
            let rv = _ptr.pointee.value
    return rv
        }
        /// value of the last token from `g_scanner_get_next_token()`
         set {
            _ptr.pointee.value = newValue
        }
    }

    /// line number of the last token from `g_scanner_get_next_token()`
    @inlinable var line: guint {
        /// line number of the last token from `g_scanner_get_next_token()`
        get {
            let rv = _ptr.pointee.line
    return rv
        }
        /// line number of the last token from `g_scanner_get_next_token()`
         set {
            _ptr.pointee.line = newValue
        }
    }

    /// char number of the last token from `g_scanner_get_next_token()`
    @inlinable var position: guint {
        /// char number of the last token from `g_scanner_get_next_token()`
        get {
            let rv = _ptr.pointee.position
    return rv
        }
        /// char number of the last token from `g_scanner_get_next_token()`
         set {
            _ptr.pointee.position = newValue
        }
    }

    /// token parsed by the last `g_scanner_peek_next_token()`
    @inlinable var _nextToken: GTokenType {
        /// token parsed by the last `g_scanner_peek_next_token()`
        get {
            let rv = _ptr.pointee.next_token
    return rv
        }
        /// token parsed by the last `g_scanner_peek_next_token()`
         set {
            _ptr.pointee.next_token = newValue
        }
    }

    /// value of the last token from `g_scanner_peek_next_token()`
    @inlinable var nextValue: GTokenValue {
        /// value of the last token from `g_scanner_peek_next_token()`
        get {
            let rv = _ptr.pointee.next_value
    return rv
        }
        /// value of the last token from `g_scanner_peek_next_token()`
         set {
            _ptr.pointee.next_value = newValue
        }
    }

    /// line number of the last token from `g_scanner_peek_next_token()`
    @inlinable var nextLine: guint {
        /// line number of the last token from `g_scanner_peek_next_token()`
        get {
            let rv = _ptr.pointee.next_line
    return rv
        }
        /// line number of the last token from `g_scanner_peek_next_token()`
         set {
            _ptr.pointee.next_line = newValue
        }
    }

    /// char number of the last token from `g_scanner_peek_next_token()`
    @inlinable var nextPosition: guint {
        /// char number of the last token from `g_scanner_peek_next_token()`
        get {
            let rv = _ptr.pointee.next_position
    return rv
        }
        /// char number of the last token from `g_scanner_peek_next_token()`
         set {
            _ptr.pointee.next_position = newValue
        }
    }

    // var symbolTable is unavailable because symbol_table is private

    // var inputFd is unavailable because input_fd is private

    // var text is unavailable because text is private

    // var textEnd is unavailable because text_end is private

    // var buffer is unavailable because buffer is private

    // var scopeID is unavailable because scope_id is private

    /// handler function for _warn and _error
    @inlinable var msgHandler: GScannerMsgFunc! {
        /// handler function for _warn and _error
        get {
            let rv = _ptr.pointee.msg_handler
    return rv
        }
        /// handler function for _warn and _error
         set {
            _ptr.pointee.msg_handler = newValue
        }
    }

}



// MARK: - ScannerConfig Record

/// Specifies the `GScanner` parser configuration. Most settings can
/// be changed during the parsing phase and will affect the lexical
/// parsing of the next unpeeked token.
///
/// The `ScannerConfigProtocol` protocol exposes the methods and properties of an underlying `GScannerConfig` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ScannerConfig`.
/// Alternatively, use `ScannerConfigRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ScannerConfigProtocol {
        /// Untyped pointer to the underlying `GScannerConfig` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GScannerConfig` instance.
    var _ptr: UnsafeMutablePointer<GScannerConfig>! { get }

    /// Required Initialiser for types conforming to `ScannerConfigProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Specifies the `GScanner` parser configuration. Most settings can
/// be changed during the parsing phase and will affect the lexical
/// parsing of the next unpeeked token.
///
/// The `ScannerConfigRef` type acts as a lightweight Swift reference to an underlying `GScannerConfig` instance.
/// It exposes methods that can operate on this data type through `ScannerConfigProtocol` conformance.
/// Use `ScannerConfigRef` only as an `unowned` reference to an existing `GScannerConfig` instance.
///
public struct ScannerConfigRef: ScannerConfigProtocol {
        /// Untyped pointer to the underlying `GScannerConfig` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ScannerConfigRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GScannerConfig>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GScannerConfig>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GScannerConfig>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GScannerConfig>?) {
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

    /// Reference intialiser for a related type that implements `ScannerConfigProtocol`
    @inlinable init<T: ScannerConfigProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerConfigProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerConfigProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerConfigProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerConfigProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerConfigProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// Specifies the `GScanner` parser configuration. Most settings can
/// be changed during the parsing phase and will affect the lexical
/// parsing of the next unpeeked token.
///
/// The `ScannerConfig` type acts as an owner of an underlying `GScannerConfig` instance.
/// It provides the methods that can operate on this data type through `ScannerConfigProtocol` conformance.
/// Use `ScannerConfig` as a strong reference or owner of a `GScannerConfig` instance.
///
open class ScannerConfig: ScannerConfigProtocol {
        /// Untyped pointer to the underlying `GScannerConfig` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ScannerConfig` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GScannerConfig>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ScannerConfig` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GScannerConfig>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ScannerConfig` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ScannerConfig` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ScannerConfig` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GScannerConfig>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ScannerConfig` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GScannerConfig>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GScannerConfig` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ScannerConfig` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GScannerConfig>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GScannerConfig, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `ScannerConfigProtocol`
    /// `GScannerConfig` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ScannerConfigProtocol`
    @inlinable public init<T: ScannerConfigProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GScannerConfig, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GScannerConfig`.
    deinit {
        // no reference counting for GScannerConfig, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerConfigProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerConfigProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GScannerConfig, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerConfigProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerConfigProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GScannerConfig, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerConfigProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerConfigProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GScannerConfig, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerConfigProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerConfigProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GScannerConfig, cannot ref(_ptr)
    }



}

// MARK: no ScannerConfig properties

// MARK: no ScannerConfig signals

// MARK: ScannerConfig has no signals
// MARK: ScannerConfig Record: ScannerConfigProtocol extension (methods and fields)
public extension ScannerConfigProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GScannerConfig` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GScannerConfig>! { return ptr?.assumingMemoryBound(to: GScannerConfig.self) }


    /// specifies which characters should be skipped
    ///     by the scanner (the default is the whitespace characters: space,
    ///     tab, carriage-return and line-feed).
    @inlinable var csetSkipCharacters: UnsafeMutablePointer<gchar>! {
        /// specifies which characters should be skipped
        ///     by the scanner (the default is the whitespace characters: space,
        ///     tab, carriage-return and line-feed).
        get {
            let rv = _ptr.pointee.cset_skip_characters
    return rv
        }
        /// specifies which characters should be skipped
        ///     by the scanner (the default is the whitespace characters: space,
        ///     tab, carriage-return and line-feed).
         set {
            _ptr.pointee.cset_skip_characters = newValue
        }
    }

    /// specifies the characters which can start
    ///     identifiers (the default is `G_CSET_a_2_z`, "_", and `G_CSET_A_2_Z`).
    @inlinable var csetIDentifierFirst: UnsafeMutablePointer<gchar>! {
        /// specifies the characters which can start
        ///     identifiers (the default is `G_CSET_a_2_z`, "_", and `G_CSET_A_2_Z`).
        get {
            let rv = _ptr.pointee.cset_identifier_first
    return rv
        }
        /// specifies the characters which can start
        ///     identifiers (the default is `G_CSET_a_2_z`, "_", and `G_CSET_A_2_Z`).
         set {
            _ptr.pointee.cset_identifier_first = newValue
        }
    }

    /// specifies the characters which can be used
    ///     in identifiers, after the first character (the default is
    ///     `G_CSET_a_2_z`, "_0123456789", `G_CSET_A_2_Z`, `G_CSET_LATINS`,
    ///     `G_CSET_LATINC`).
    @inlinable var csetIDentifierNth: UnsafeMutablePointer<gchar>! {
        /// specifies the characters which can be used
        ///     in identifiers, after the first character (the default is
        ///     `G_CSET_a_2_z`, "_0123456789", `G_CSET_A_2_Z`, `G_CSET_LATINS`,
        ///     `G_CSET_LATINC`).
        get {
            let rv = _ptr.pointee.cset_identifier_nth
    return rv
        }
        /// specifies the characters which can be used
        ///     in identifiers, after the first character (the default is
        ///     `G_CSET_a_2_z`, "_0123456789", `G_CSET_A_2_Z`, `G_CSET_LATINS`,
        ///     `G_CSET_LATINC`).
         set {
            _ptr.pointee.cset_identifier_nth = newValue
        }
    }

    /// specifies the characters at the start and
    ///     end of single-line comments. The default is "#\n" which means
    ///     that single-line comments start with a '#' and continue until
    ///     a '\n' (end of line).
    @inlinable var cpairCommentSingle: UnsafeMutablePointer<gchar>! {
        /// specifies the characters at the start and
        ///     end of single-line comments. The default is "#\n" which means
        ///     that single-line comments start with a '#' and continue until
        ///     a '\n' (end of line).
        get {
            let rv = _ptr.pointee.cpair_comment_single
    return rv
        }
        /// specifies the characters at the start and
        ///     end of single-line comments. The default is "#\n" which means
        ///     that single-line comments start with a '#' and continue until
        ///     a '\n' (end of line).
         set {
            _ptr.pointee.cpair_comment_single = newValue
        }
    }

    /// specifies if symbols are case sensitive (the
    ///     default is `false`).
    @inlinable var caseSensitive: guint {
        /// specifies if symbols are case sensitive (the
        ///     default is `false`).
        get {
            let rv = _ptr.pointee.case_sensitive
    return rv
        }
        /// specifies if symbols are case sensitive (the
        ///     default is `false`).
         set {
            _ptr.pointee.case_sensitive = newValue
        }
    }

    /// specifies if multi-line comments are skipped
    ///     and not returned as tokens (the default is `true`).
    @inlinable var skipCommentMulti: guint {
        /// specifies if multi-line comments are skipped
        ///     and not returned as tokens (the default is `true`).
        get {
            let rv = _ptr.pointee.skip_comment_multi
    return rv
        }
        /// specifies if multi-line comments are skipped
        ///     and not returned as tokens (the default is `true`).
         set {
            _ptr.pointee.skip_comment_multi = newValue
        }
    }

    /// specifies if single-line comments are skipped
    ///     and not returned as tokens (the default is `true`).
    @inlinable var skipCommentSingle: guint {
        /// specifies if single-line comments are skipped
        ///     and not returned as tokens (the default is `true`).
        get {
            let rv = _ptr.pointee.skip_comment_single
    return rv
        }
        /// specifies if single-line comments are skipped
        ///     and not returned as tokens (the default is `true`).
         set {
            _ptr.pointee.skip_comment_single = newValue
        }
    }

    /// specifies if multi-line comments are recognized
    ///     (the default is `true`).
    @inlinable var scanCommentMulti: guint {
        /// specifies if multi-line comments are recognized
        ///     (the default is `true`).
        get {
            let rv = _ptr.pointee.scan_comment_multi
    return rv
        }
        /// specifies if multi-line comments are recognized
        ///     (the default is `true`).
         set {
            _ptr.pointee.scan_comment_multi = newValue
        }
    }

    /// specifies if identifiers are recognized (the
    ///     default is `true`).
    @inlinable var scanIDentifier: guint {
        /// specifies if identifiers are recognized (the
        ///     default is `true`).
        get {
            let rv = _ptr.pointee.scan_identifier
    return rv
        }
        /// specifies if identifiers are recognized (the
        ///     default is `true`).
         set {
            _ptr.pointee.scan_identifier = newValue
        }
    }

    /// specifies if single-character
    ///     identifiers are recognized (the default is `false`).
    @inlinable var scanIDentifier1char: guint {
        /// specifies if single-character
        ///     identifiers are recognized (the default is `false`).
        get {
            let rv = _ptr.pointee.scan_identifier_1char
    return rv
        }
        /// specifies if single-character
        ///     identifiers are recognized (the default is `false`).
         set {
            _ptr.pointee.scan_identifier_1char = newValue
        }
    }

    /// specifies if `nil` is reported as
    ///     `G_TOKEN_IDENTIFIER_NULL` (the default is `false`).
    @inlinable var scanIDentifierNULL: guint {
        /// specifies if `nil` is reported as
        ///     `G_TOKEN_IDENTIFIER_NULL` (the default is `false`).
        get {
            let rv = _ptr.pointee.scan_identifier_NULL
    return rv
        }
        /// specifies if `nil` is reported as
        ///     `G_TOKEN_IDENTIFIER_NULL` (the default is `false`).
         set {
            _ptr.pointee.scan_identifier_NULL = newValue
        }
    }

    /// specifies if symbols are recognized (the default
    ///     is `true`).
    @inlinable var scanSymbols: guint {
        /// specifies if symbols are recognized (the default
        ///     is `true`).
        get {
            let rv = _ptr.pointee.scan_symbols
    return rv
        }
        /// specifies if symbols are recognized (the default
        ///     is `true`).
         set {
            _ptr.pointee.scan_symbols = newValue
        }
    }

    /// specifies if binary numbers are recognized (the
    ///     default is `false`).
    @inlinable var scanBinary: guint {
        /// specifies if binary numbers are recognized (the
        ///     default is `false`).
        get {
            let rv = _ptr.pointee.scan_binary
    return rv
        }
        /// specifies if binary numbers are recognized (the
        ///     default is `false`).
         set {
            _ptr.pointee.scan_binary = newValue
        }
    }

    /// specifies if octal numbers are recognized (the
    ///     default is `true`).
    @inlinable var scanOctal: guint {
        /// specifies if octal numbers are recognized (the
        ///     default is `true`).
        get {
            let rv = _ptr.pointee.scan_octal
    return rv
        }
        /// specifies if octal numbers are recognized (the
        ///     default is `true`).
         set {
            _ptr.pointee.scan_octal = newValue
        }
    }

    /// specifies if floating point numbers are recognized
    ///     (the default is `true`).
    @inlinable var scanFloat: guint {
        /// specifies if floating point numbers are recognized
        ///     (the default is `true`).
        get {
            let rv = _ptr.pointee.scan_float
    return rv
        }
        /// specifies if floating point numbers are recognized
        ///     (the default is `true`).
         set {
            _ptr.pointee.scan_float = newValue
        }
    }

    /// specifies if hexadecimal numbers are recognized (the
    ///     default is `true`).
    @inlinable var scanHex: guint {
        /// specifies if hexadecimal numbers are recognized (the
        ///     default is `true`).
        get {
            let rv = _ptr.pointee.scan_hex
    return rv
        }
        /// specifies if hexadecimal numbers are recognized (the
        ///     default is `true`).
         set {
            _ptr.pointee.scan_hex = newValue
        }
    }

    /// specifies if '$' is recognized as a prefix for
    ///     hexadecimal numbers (the default is `false`).
    @inlinable var scanHexDollar: guint {
        /// specifies if '$' is recognized as a prefix for
        ///     hexadecimal numbers (the default is `false`).
        get {
            let rv = _ptr.pointee.scan_hex_dollar
    return rv
        }
        /// specifies if '$' is recognized as a prefix for
        ///     hexadecimal numbers (the default is `false`).
         set {
            _ptr.pointee.scan_hex_dollar = newValue
        }
    }

    /// specifies if strings can be enclosed in single
    ///     quotes (the default is `true`).
    @inlinable var scanStringSq: guint {
        /// specifies if strings can be enclosed in single
        ///     quotes (the default is `true`).
        get {
            let rv = _ptr.pointee.scan_string_sq
    return rv
        }
        /// specifies if strings can be enclosed in single
        ///     quotes (the default is `true`).
         set {
            _ptr.pointee.scan_string_sq = newValue
        }
    }

    /// specifies if strings can be enclosed in double
    ///     quotes (the default is `true`).
    @inlinable var scanStringDq: guint {
        /// specifies if strings can be enclosed in double
        ///     quotes (the default is `true`).
        get {
            let rv = _ptr.pointee.scan_string_dq
    return rv
        }
        /// specifies if strings can be enclosed in double
        ///     quotes (the default is `true`).
         set {
            _ptr.pointee.scan_string_dq = newValue
        }
    }

    /// specifies if binary, octal and hexadecimal numbers
    ///     are reported as `G_TOKEN_INT` (the default is `true`).
    @inlinable var numbers2Int: guint {
        /// specifies if binary, octal and hexadecimal numbers
        ///     are reported as `G_TOKEN_INT` (the default is `true`).
        get {
            let rv = _ptr.pointee.numbers_2_int
    return rv
        }
        /// specifies if binary, octal and hexadecimal numbers
        ///     are reported as `G_TOKEN_INT` (the default is `true`).
         set {
            _ptr.pointee.numbers_2_int = newValue
        }
    }

    /// specifies if all numbers are reported as `G_TOKEN_FLOAT`
    ///     (the default is `false`).
    @inlinable var int2Float: guint {
        /// specifies if all numbers are reported as `G_TOKEN_FLOAT`
        ///     (the default is `false`).
        get {
            let rv = _ptr.pointee.int_2_float
    return rv
        }
        /// specifies if all numbers are reported as `G_TOKEN_FLOAT`
        ///     (the default is `false`).
         set {
            _ptr.pointee.int_2_float = newValue
        }
    }

    /// specifies if identifiers are reported as strings
    ///     (the default is `false`).
    @inlinable var identifier2String: guint {
        /// specifies if identifiers are reported as strings
        ///     (the default is `false`).
        get {
            let rv = _ptr.pointee.identifier_2_string
    return rv
        }
        /// specifies if identifiers are reported as strings
        ///     (the default is `false`).
         set {
            _ptr.pointee.identifier_2_string = newValue
        }
    }

    /// specifies if characters are reported by setting
    ///     `token = ch` or as `G_TOKEN_CHAR` (the default is `true`).
    @inlinable var char2Token: guint {
        /// specifies if characters are reported by setting
        ///     `token = ch` or as `G_TOKEN_CHAR` (the default is `true`).
        get {
            let rv = _ptr.pointee.char_2_token
    return rv
        }
        /// specifies if characters are reported by setting
        ///     `token = ch` or as `G_TOKEN_CHAR` (the default is `true`).
         set {
            _ptr.pointee.char_2_token = newValue
        }
    }

    /// specifies if symbols are reported by setting
    ///     `token = v_symbol` or as `G_TOKEN_SYMBOL` (the default is `false`).
    @inlinable var symbol2Token: guint {
        /// specifies if symbols are reported by setting
        ///     `token = v_symbol` or as `G_TOKEN_SYMBOL` (the default is `false`).
        get {
            let rv = _ptr.pointee.symbol_2_token
    return rv
        }
        /// specifies if symbols are reported by setting
        ///     `token = v_symbol` or as `G_TOKEN_SYMBOL` (the default is `false`).
         set {
            _ptr.pointee.symbol_2_token = newValue
        }
    }

    /// specifies if a symbol is searched for in the
    ///     default scope in addition to the current scope (the default is `false`).
    @inlinable var scope0Fallback: guint {
        /// specifies if a symbol is searched for in the
        ///     default scope in addition to the current scope (the default is `false`).
        get {
            let rv = _ptr.pointee.scope_0_fallback
    return rv
        }
        /// specifies if a symbol is searched for in the
        ///     default scope in addition to the current scope (the default is `false`).
         set {
            _ptr.pointee.scope_0_fallback = newValue
        }
    }

    /// use value.v_int64 rather than v_int
    @inlinable var storeInt64: guint {
        /// use value.v_int64 rather than v_int
        get {
            let rv = _ptr.pointee.store_int64
    return rv
        }
        /// use value.v_int64 rather than v_int
         set {
            _ptr.pointee.store_int64 = newValue
        }
    }

    // var paddingDummy is unavailable because padding_dummy is private

}



// MARK: - Sequence Record

/// The `GSequence` struct is an opaque data type representing a
/// [sequence](../Protocols/SequenceProtocol.html) data type.
///
/// The `SequenceProtocol` protocol exposes the methods and properties of an underlying `GSequence` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Sequence`.
/// Alternatively, use `SequenceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol SequenceProtocol {
        /// Untyped pointer to the underlying `GSequence` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSequence` instance.
    var _ptr: UnsafeMutablePointer<GSequence>! { get }

    /// Required Initialiser for types conforming to `SequenceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `GSequence` struct is an opaque data type representing a
/// [sequence](../Protocols/SequenceProtocol.html) data type.
///
/// The `SequenceRef` type acts as a lightweight Swift reference to an underlying `GSequence` instance.
/// It exposes methods that can operate on this data type through `SequenceProtocol` conformance.
/// Use `SequenceRef` only as an `unowned` reference to an existing `GSequence` instance.
///
public struct SequenceRef: SequenceProtocol {
        /// Untyped pointer to the underlying `GSequence` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SequenceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSequence>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSequence>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSequence>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSequence>?) {
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

    /// Reference intialiser for a related type that implements `SequenceProtocol`
    @inlinable init<T: SequenceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `GSequence` struct is an opaque data type representing a
/// [sequence](../Protocols/SequenceProtocol.html) data type.
///
/// The `Sequence` type acts as an owner of an underlying `GSequence` instance.
/// It provides the methods that can operate on this data type through `SequenceProtocol` conformance.
/// Use `Sequence` as a strong reference or owner of a `GSequence` instance.
///
open class Sequence: SequenceProtocol {
        /// Untyped pointer to the underlying `GSequence` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Sequence` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GSequence>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Sequence` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GSequence>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Sequence` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Sequence` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Sequence` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GSequence>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Sequence` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GSequence>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GSequence` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Sequence` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GSequence>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GSequence, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `SequenceProtocol`
    /// `GSequence` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SequenceProtocol`
    @inlinable public init<T: SequenceProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GSequence, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GSequence`.
    deinit {
        // no reference counting for GSequence, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GSequence, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GSequence, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GSequence, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GSequence, cannot ref(_ptr)
    }



}

// MARK: no Sequence properties

// MARK: no Sequence signals

// MARK: Sequence has no signals
// MARK: Sequence Record: SequenceProtocol extension (methods and fields)
public extension SequenceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSequence` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GSequence>! { return ptr?.assumingMemoryBound(to: GSequence.self) }

    /// Adds a new item to the end of `seq`.
    @inlinable func append(data: gpointer? = nil) -> SequenceIterRef! {
        let result = g_sequence_append(_ptr, data)
        let rv = SequenceIterRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Calls `func` for each item in the sequence passing `user_data`
    /// to the function. `func` must not modify the sequence itself.
    @inlinable func foreach(`func`: GFunc?, userData: gpointer? = nil) {
        
        g_sequence_foreach(_ptr, `func`, userData)
        
    }

    /// Frees the memory allocated for `seq`. If `seq` has a data destroy
    /// function associated with it, that function is called on all items
    /// in `seq`.
    @inlinable func free() {
        
        g_sequence_free(_ptr)
        
    }

    /// Returns the begin iterator for `seq`.
    @inlinable func getBeginIter() -> SequenceIterRef! {
        let result = g_sequence_get_begin_iter(_ptr)
        let rv = SequenceIterRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Returns the end iterator for `seg`
    @inlinable func getEndIter() -> SequenceIterRef! {
        let result = g_sequence_get_end_iter(_ptr)
        let rv = SequenceIterRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Returns the iterator at position `pos`. If `pos` is negative or larger
    /// than the number of items in `seq`, the end iterator is returned.
    @inlinable func getIterAt(pos: Int) -> SequenceIterRef! {
        let result = g_sequence_get_iter_at_pos(_ptr, gint(pos))
        let rv = SequenceIterRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Returns the positive length (&gt;= 0) of `seq`. Note that this method is
    /// `O(h)` where `h' is the height of the tree. It is thus more efficient
    /// to use `g_sequence_is_empty()` when comparing the length to zero.
    @inlinable func getLength() -> Int {
        let result = g_sequence_get_length(_ptr)
        let rv = Int(result)
        return rv
    }

    /// Inserts `data` into `seq` using `cmp_func` to determine the new
    /// position. The sequence must already be sorted according to `cmp_func`;
    /// otherwise the new position of `data` is undefined.
    /// 
    /// `cmp_func` is called with two items of the `seq`, and `cmp_data`.
    /// It should return 0 if the items are equal, a negative value
    /// if the first item comes before the second, and a positive value
    /// if the second item comes before the first.
    /// 
    /// Note that when adding a large amount of data to a `GSequence`,
    /// it is more efficient to do unsorted insertions and then call
    /// `g_sequence_sort()` or `g_sequence_sort_iter()`.
    @inlinable func insertSorted(data: gpointer? = nil, cmpFunc: GCompareDataFunc?, cmpData: gpointer? = nil) -> SequenceIterRef! {
        let result = g_sequence_insert_sorted(_ptr, data, cmpFunc, cmpData)
        let rv = SequenceIterRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Like `g_sequence_insert_sorted()`, but uses
    /// a `GSequenceIterCompareFunc` instead of a `GCompareDataFunc` as
    /// the compare function.
    /// 
    /// `iter_cmp` is called with two iterators pointing into `seq`.
    /// It should return 0 if the iterators are equal, a negative
    /// value if the first iterator comes before the second, and a
    /// positive value if the second iterator comes before the first.
    /// 
    /// Note that when adding a large amount of data to a `GSequence`,
    /// it is more efficient to do unsorted insertions and then call
    /// `g_sequence_sort()` or `g_sequence_sort_iter()`.
    @inlinable func insertSortedIter(data: gpointer? = nil, iterCmp: GSequenceIterCompareFunc?, cmpData: gpointer? = nil) -> SequenceIterRef! {
        let result = g_sequence_insert_sorted_iter(_ptr, data, iterCmp, cmpData)
        let rv = SequenceIterRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Returns an iterator pointing to the position of the first item found
    /// equal to `data` according to `cmp_func` and `cmp_data`. If more than one
    /// item is equal, it is not guaranteed that it is the first which is
    /// returned. In that case, you can use `g_sequence_iter_next()` and
    /// `g_sequence_iter_prev()` to get others.
    /// 
    /// `cmp_func` is called with two items of the `seq`, and `cmp_data`.
    /// It should return 0 if the items are equal, a negative value if
    /// the first item comes before the second, and a positive value if
    /// the second item comes before the first.
    /// 
    /// This function will fail if the data contained in the sequence is
    /// unsorted.
    @inlinable func lookup(data: gpointer? = nil, cmpFunc: GCompareDataFunc?, cmpData: gpointer? = nil) -> SequenceIterRef! {
        let result = g_sequence_lookup(_ptr, data, cmpFunc, cmpData)
        let rv = SequenceIterRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Like `g_sequence_lookup()`, but uses a `GSequenceIterCompareFunc`
    /// instead of a `GCompareDataFunc` as the compare function.
    /// 
    /// `iter_cmp` is called with two iterators pointing into `seq`.
    /// It should return 0 if the iterators are equal, a negative value
    /// if the first iterator comes before the second, and a positive
    /// value if the second iterator comes before the first.
    /// 
    /// This function will fail if the data contained in the sequence is
    /// unsorted.
    @inlinable func lookupIter(data: gpointer? = nil, iterCmp: GSequenceIterCompareFunc?, cmpData: gpointer? = nil) -> SequenceIterRef! {
        let result = g_sequence_lookup_iter(_ptr, data, iterCmp, cmpData)
        let rv = SequenceIterRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Adds a new item to the front of `seq`
    @inlinable func prepend(data: gpointer? = nil) -> SequenceIterRef! {
        let result = g_sequence_prepend(_ptr, data)
        let rv = SequenceIterRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Returns an iterator pointing to the position where `data` would
    /// be inserted according to `cmp_func` and `cmp_data`.
    /// 
    /// `cmp_func` is called with two items of the `seq`, and `cmp_data`.
    /// It should return 0 if the items are equal, a negative value if
    /// the first item comes before the second, and a positive value if
    /// the second item comes before the first.
    /// 
    /// If you are simply searching for an existing element of the sequence,
    /// consider using `g_sequence_lookup()`.
    /// 
    /// This function will fail if the data contained in the sequence is
    /// unsorted.
    @inlinable func search(data: gpointer? = nil, cmpFunc: GCompareDataFunc?, cmpData: gpointer? = nil) -> SequenceIterRef! {
        let result = g_sequence_search(_ptr, data, cmpFunc, cmpData)
        let rv = SequenceIterRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Like `g_sequence_search()`, but uses a `GSequenceIterCompareFunc`
    /// instead of a `GCompareDataFunc` as the compare function.
    /// 
    /// `iter_cmp` is called with two iterators pointing into `seq`.
    /// It should return 0 if the iterators are equal, a negative value
    /// if the first iterator comes before the second, and a positive
    /// value if the second iterator comes before the first.
    /// 
    /// If you are simply searching for an existing element of the sequence,
    /// consider using `g_sequence_lookup_iter()`.
    /// 
    /// This function will fail if the data contained in the sequence is
    /// unsorted.
    @inlinable func searchIter(data: gpointer? = nil, iterCmp: GSequenceIterCompareFunc?, cmpData: gpointer? = nil) -> SequenceIterRef! {
        let result = g_sequence_search_iter(_ptr, data, iterCmp, cmpData)
        let rv = SequenceIterRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Sorts `seq` using `cmp_func`.
    /// 
    /// `cmp_func` is passed two items of `seq` and should
    /// return 0 if they are equal, a negative value if the
    /// first comes before the second, and a positive value
    /// if the second comes before the first.
    @inlinable func sort(cmpFunc: GCompareDataFunc?, cmpData: gpointer? = nil) {
        
        g_sequence_sort(_ptr, cmpFunc, cmpData)
        
    }

    /// Like `g_sequence_sort()`, but uses a `GSequenceIterCompareFunc` instead
    /// of a `GCompareDataFunc` as the compare function
    /// 
    /// `cmp_func` is called with two iterators pointing into `seq`. It should
    /// return 0 if the iterators are equal, a negative value if the first
    /// iterator comes before the second, and a positive value if the second
    /// iterator comes before the first.
    @inlinable func sortIter(cmpFunc: GSequenceIterCompareFunc?, cmpData: gpointer? = nil) {
        
        g_sequence_sort_iter(_ptr, cmpFunc, cmpData)
        
    }
    /// Returns the begin iterator for `seq`.
    @inlinable var beginIter: SequenceIterRef! {
        /// Returns the begin iterator for `seq`.
        get {
            let result = g_sequence_get_begin_iter(_ptr)
        let rv = SequenceIterRef(gconstpointer: gconstpointer(result))
            return rv
        }
    }

    /// Returns the end iterator for `seg`
    @inlinable var endIter: SequenceIterRef! {
        /// Returns the end iterator for `seg`
        get {
            let result = g_sequence_get_end_iter(_ptr)
        let rv = SequenceIterRef(gconstpointer: gconstpointer(result))
            return rv
        }
    }

    /// Returns `true` if the sequence contains zero items.
    /// 
    /// This function is functionally identical to checking the result of
    /// `g_sequence_get_length()` being equal to zero. However this function is
    /// implemented in `O(1)` running time.
    @inlinable var isEmpty: Bool {
        /// Returns `true` if the sequence contains zero items.
        /// 
        /// This function is functionally identical to checking the result of
        /// `g_sequence_get_length()` being equal to zero. However this function is
        /// implemented in `O(1)` running time.
        get {
            let result = g_sequence_is_empty(_ptr)
        let rv = ((result) != 0)
            return rv
        }
    }

    /// Returns the positive length (&gt;= 0) of `seq`. Note that this method is
    /// `O(h)` where `h' is the height of the tree. It is thus more efficient
    /// to use `g_sequence_is_empty()` when comparing the length to zero.
    @inlinable var length: Int {
        /// Returns the positive length (&gt;= 0) of `seq`. Note that this method is
        /// `O(h)` where `h' is the height of the tree. It is thus more efficient
        /// to use `g_sequence_is_empty()` when comparing the length to zero.
        get {
            let result = g_sequence_get_length(_ptr)
        let rv = Int(result)
            return rv
        }
    }


}



// MARK: - SequenceIter Record

/// The `GSequenceIter` struct is an opaque data type representing an
/// iterator pointing into a `GSequence`.
///
/// The `SequenceIterProtocol` protocol exposes the methods and properties of an underlying `GSequenceIter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SequenceIter`.
/// Alternatively, use `SequenceIterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol SequenceIterProtocol {
        /// Untyped pointer to the underlying `GSequenceIter` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSequenceIter` instance.
    var _ptr: UnsafeMutablePointer<GSequenceIter>! { get }

    /// Required Initialiser for types conforming to `SequenceIterProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `GSequenceIter` struct is an opaque data type representing an
/// iterator pointing into a `GSequence`.
///
/// The `SequenceIterRef` type acts as a lightweight Swift reference to an underlying `GSequenceIter` instance.
/// It exposes methods that can operate on this data type through `SequenceIterProtocol` conformance.
/// Use `SequenceIterRef` only as an `unowned` reference to an existing `GSequenceIter` instance.
///
public struct SequenceIterRef: SequenceIterProtocol {
        /// Untyped pointer to the underlying `GSequenceIter` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SequenceIterRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSequenceIter>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSequenceIter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSequenceIter>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSequenceIter>?) {
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

    /// Reference intialiser for a related type that implements `SequenceIterProtocol`
    @inlinable init<T: SequenceIterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceIterProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceIterProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceIterProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceIterProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceIterProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `GSequenceIter` struct is an opaque data type representing an
/// iterator pointing into a `GSequence`.
///
/// The `SequenceIter` type acts as an owner of an underlying `GSequenceIter` instance.
/// It provides the methods that can operate on this data type through `SequenceIterProtocol` conformance.
/// Use `SequenceIter` as a strong reference or owner of a `GSequenceIter` instance.
///
open class SequenceIter: SequenceIterProtocol {
        /// Untyped pointer to the underlying `GSequenceIter` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SequenceIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GSequenceIter>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SequenceIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GSequenceIter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SequenceIter` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SequenceIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SequenceIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GSequenceIter>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SequenceIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GSequenceIter>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GSequenceIter` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `SequenceIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GSequenceIter>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GSequenceIter, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `SequenceIterProtocol`
    /// `GSequenceIter` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SequenceIterProtocol`
    @inlinable public init<T: SequenceIterProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GSequenceIter, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GSequenceIter`.
    deinit {
        // no reference counting for GSequenceIter, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GSequenceIter, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceIterProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceIterProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GSequenceIter, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceIterProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceIterProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GSequenceIter, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GSequenceIter, cannot ref(_ptr)
    }



}

// MARK: no SequenceIter properties

// MARK: no SequenceIter signals

// MARK: SequenceIter has no signals
// MARK: SequenceIter Record: SequenceIterProtocol extension (methods and fields)
public extension SequenceIterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSequenceIter` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GSequenceIter>! { return ptr?.assumingMemoryBound(to: GSequenceIter.self) }

    /// Returns a negative number if `a` comes before `b`, 0 if they are equal,
    /// and a positive number if `a` comes after `b`.
    /// 
    /// The `a` and `b` iterators must point into the same sequence.
    @inlinable func compare<SequenceIterT: SequenceIterProtocol>(b: SequenceIterT) -> Int {
        let result = g_sequence_iter_compare(_ptr, b._ptr)
        let rv = Int(result)
        return rv
    }

    /// Returns the position of `iter`
    @inlinable func getPosition() -> Int {
        let result = g_sequence_iter_get_position(_ptr)
        let rv = Int(result)
        return rv
    }

    /// Returns the `GSequence` that `iter` points into.
    @inlinable func getSequence() -> SequenceRef! {
        let result = g_sequence_iter_get_sequence(_ptr)
        let rv = SequenceRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Returns the `GSequenceIter` which is `delta` positions away from `iter`.
    /// If `iter` is closer than -`delta` positions to the beginning of the sequence,
    /// the begin iterator is returned. If `iter` is closer than `delta` positions
    /// to the end of the sequence, the end iterator is returned.
    @inlinable func move(delta: Int) -> SequenceIterRef! {
        let result = g_sequence_iter_move(_ptr, gint(delta))
        guard let rv = SequenceIterRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Returns an iterator pointing to the next position after `iter`.
    /// If `iter` is the end iterator, the end iterator is returned.
    @inlinable func next() -> SequenceIterRef! {
        let result = g_sequence_iter_next(_ptr)
        guard let rv = SequenceIterRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Returns an iterator pointing to the previous position before `iter`.
    /// If `iter` is the begin iterator, the begin iterator is returned.
    @inlinable func prev() -> SequenceIterRef! {
        let result = g_sequence_iter_prev(_ptr)
        guard let rv = SequenceIterRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Returns the data that `iter` points to.
    @inlinable func sequenceGet() -> gpointer? {
        let result = g_sequence_get(_ptr)
        let rv = result
        return rv
    }

    /// Inserts a new item just before the item pointed to by `iter`.
    @inlinable func sequenceInsertBefore(data: gpointer? = nil) -> SequenceIterRef! {
        let result = g_sequence_insert_before(_ptr, data)
        guard let rv = SequenceIterRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Moves the item pointed to by `src` to the position indicated by `dest`.
    /// After calling this function `dest` will point to the position immediately
    /// after `src`. It is allowed for `src` and `dest` to point into different
    /// sequences.
    @inlinable func sequenceMove<SequenceIterT: SequenceIterProtocol>(dest: SequenceIterT) {
        
        g_sequence_move(_ptr, dest._ptr)
        
    }

    /// Inserts the (`begin`, `end`) range at the destination pointed to by `dest`.
    /// The `begin` and `end` iters must point into the same sequence. It is
    /// allowed for `dest` to point to a different sequence than the one pointed
    /// into by `begin` and `end`.
    /// 
    /// If `dest` is `nil`, the range indicated by `begin` and `end` is
    /// removed from the sequence. If `dest` points to a place within
    /// the (`begin`, `end`) range, the range does not move.
    @inlinable func sequenceMoveRange<SequenceIterT: SequenceIterProtocol>(begin: SequenceIterT, end: SequenceIterT) {
        
        g_sequence_move_range(_ptr, begin._ptr, end._ptr)
        
    }

    /// Finds an iterator somewhere in the range (`begin`, `end`). This
    /// iterator will be close to the middle of the range, but is not
    /// guaranteed to be exactly in the middle.
    /// 
    /// The `begin` and `end` iterators must both point to the same sequence
    /// and `begin` must come before or be equal to `end` in the sequence.
    @inlinable func sequenceRangeGetMidpoint<SequenceIterT: SequenceIterProtocol>(end: SequenceIterT) -> SequenceIterRef! {
        let result = g_sequence_range_get_midpoint(_ptr, end._ptr)
        guard let rv = SequenceIterRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Removes the item pointed to by `iter`. It is an error to pass the
    /// end iterator to this function.
    /// 
    /// If the sequence has a data destroy function associated with it, this
    /// function is called on the data for the removed item.
    @inlinable func sequenceRemove() {
        
        g_sequence_remove(_ptr)
        
    }

    /// Removes all items in the (`begin`, `end`) range.
    /// 
    /// If the sequence has a data destroy function associated with it, this
    /// function is called on the data for the removed items.
    @inlinable func sequenceRemoveRange<SequenceIterT: SequenceIterProtocol>(end: SequenceIterT) {
        
        g_sequence_remove_range(_ptr, end._ptr)
        
    }

    /// Changes the data for the item pointed to by `iter` to be `data`. If
    /// the sequence has a data destroy function associated with it, that
    /// function is called on the existing data that `iter` pointed to.
    @inlinable func sequenceSet(data: gpointer? = nil) {
        
        g_sequence_set(_ptr, data)
        
    }

    /// Swaps the items pointed to by `a` and `b`. It is allowed for `a` and `b`
    /// to point into difference sequences.
    @inlinable func sequenceSwap<SequenceIterT: SequenceIterProtocol>(b: SequenceIterT) {
        
        g_sequence_swap(_ptr, b._ptr)
        
    }
    /// Returns whether `iter` is the begin iterator
    @inlinable var isBegin: Bool {
        /// Returns whether `iter` is the begin iterator
        get {
            let result = g_sequence_iter_is_begin(_ptr)
        let rv = ((result) != 0)
            return rv
        }
    }

    /// Returns whether `iter` is the end iterator
    @inlinable var isEnd: Bool {
        /// Returns whether `iter` is the end iterator
        get {
            let result = g_sequence_iter_is_end(_ptr)
        let rv = ((result) != 0)
            return rv
        }
    }

    /// Returns the position of `iter`
    @inlinable var position: Int {
        /// Returns the position of `iter`
        get {
            let result = g_sequence_iter_get_position(_ptr)
        let rv = Int(result)
            return rv
        }
    }

    /// Returns the `GSequence` that `iter` points into.
    @inlinable var sequence: SequenceRef! {
        /// Returns the `GSequence` that `iter` points into.
        get {
            let result = g_sequence_iter_get_sequence(_ptr)
        let rv = SequenceRef(gconstpointer: gconstpointer(result))
            return rv
        }
    }


}



// MARK: - Source Record

/// The `GSource` struct is an opaque data type
/// representing an event source.
///
/// The `SourceProtocol` protocol exposes the methods and properties of an underlying `GSource` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Source`.
/// Alternatively, use `SourceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol SourceProtocol {
        /// Untyped pointer to the underlying `GSource` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSource` instance.
    var source_ptr: UnsafeMutablePointer<GSource>! { get }

    /// Required Initialiser for types conforming to `SourceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `GSource` struct is an opaque data type
/// representing an event source.
///
/// The `SourceRef` type acts as a lightweight Swift reference to an underlying `GSource` instance.
/// It exposes methods that can operate on this data type through `SourceProtocol` conformance.
/// Use `SourceRef` only as an `unowned` reference to an existing `GSource` instance.
///
public struct SourceRef: SourceProtocol {
        /// Untyped pointer to the underlying `GSource` instance.
    /// For type-safe access, use the generated, typed pointer `source_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SourceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSource>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSource>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSource>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSource>?) {
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

    /// Reference intialiser for a related type that implements `SourceProtocol`
    @inlinable init<T: SourceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GSource` structure. The size is specified to
    /// allow creating structures derived from `GSource` that contain
    /// additional data. The size passed in must be at least
    /// `sizeof (GSource)`.
    /// 
    /// The source will not initially be associated with any `GMainContext`
    /// and must be added to one with `g_source_attach()` before it will be
    /// executed.
    @inlinable init<SourceFuncsT: SourceFuncsProtocol>( sourceFuncs: SourceFuncsT, structSize: Int) {
            let result = g_source_new(sourceFuncs._ptr, guint(structSize))
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `GSource` struct is an opaque data type
/// representing an event source.
///
/// The `Source` type acts as a reference-counted owner of an underlying `GSource` instance.
/// It provides the methods that can operate on this data type through `SourceProtocol` conformance.
/// Use `Source` as a strong reference or owner of a `GSource` instance.
///
open class Source: SourceProtocol {
        /// Untyped pointer to the underlying `GSource` instance.
    /// For type-safe access, use the generated, typed pointer `source_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Source` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GSource>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Source` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GSource>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Source` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Source` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Source` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GSource>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Source` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GSource>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSource`.
    /// i.e., ownership is transferred to the `Source` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GSource>) {
        ptr = UnsafeMutableRawPointer(op)
        g_source_ref(ptr.assumingMemoryBound(to: GSource.self))
    }

    /// Reference intialiser for a related type that implements `SourceProtocol`
    /// Will retain `GSource`.
    /// - Parameter other: an instance of a related type that implements `SourceProtocol`
    @inlinable public init<T: SourceProtocol>(_ other: T) {
        ptr = other.ptr
        g_source_ref(ptr.assumingMemoryBound(to: GSource.self))
    }

    /// Releases the underlying `GSource` instance using `g_source_unref`.
    deinit {
        g_source_unref(ptr.assumingMemoryBound(to: GSource.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_source_ref(ptr.assumingMemoryBound(to: GSource.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_source_ref(ptr.assumingMemoryBound(to: GSource.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_source_ref(ptr.assumingMemoryBound(to: GSource.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_source_ref(ptr.assumingMemoryBound(to: GSource.self))
    }

    /// Creates a new `GSource` structure. The size is specified to
    /// allow creating structures derived from `GSource` that contain
    /// additional data. The size passed in must be at least
    /// `sizeof (GSource)`.
    /// 
    /// The source will not initially be associated with any `GMainContext`
    /// and must be added to one with `g_source_attach()` before it will be
    /// executed.
    @inlinable public init<SourceFuncsT: SourceFuncsProtocol>( sourceFuncs: SourceFuncsT, structSize: Int) {
            let result = g_source_new(sourceFuncs._ptr, guint(structSize))
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no Source properties

// MARK: no Source signals

// MARK: Source has no signals
// MARK: Source Record: SourceProtocol extension (methods and fields)
public extension SourceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSource` instance.
    @inlinable var source_ptr: UnsafeMutablePointer<GSource>! { return ptr?.assumingMemoryBound(to: GSource.self) }

    /// Adds `child_source` to `source` as a "polled" source; when `source` is
    /// added to a `GMainContext`, `child_source` will be automatically added
    /// with the same priority, when `child_source` is triggered, it will
    /// cause `source` to dispatch (in addition to calling its own
    /// callback), and when `source` is destroyed, it will destroy
    /// `child_source` as well. (`source` will also still be dispatched if
    /// its own prepare/check functions indicate that it is ready.)
    /// 
    /// If you don't need `child_source` to do anything on its own when it
    /// triggers, you can call `g_source_set_dummy_callback()` on it to set a
    /// callback that does nothing (except return `true` if appropriate).
    /// 
    /// `source` will hold a reference on `child_source` while `child_source`
    /// is attached to it.
    /// 
    /// This API is only intended to be used by implementations of `GSource`.
    /// Do not call this API on a `GSource` that you did not create.
    @inlinable func add<SourceT: SourceProtocol>(childSource: SourceT) {
        
        g_source_add_child_source(source_ptr, childSource.source_ptr)
        
    }

    /// Adds a file descriptor to the set of file descriptors polled for
    /// this source. This is usually combined with `g_source_new()` to add an
    /// event source. The event source's check function will typically test
    /// the `revents` field in the `GPollFD` struct and return `true` if events need
    /// to be processed.
    /// 
    /// This API is only intended to be used by implementations of `GSource`.
    /// Do not call this API on a `GSource` that you did not create.
    /// 
    /// Using this API forces the linear scanning of event sources on each
    /// main loop iteration.  Newly-written event sources should try to use
    /// `g_source_add_unix_fd()` instead of this API.
    @inlinable func addPoll<PollFDT: PollFDProtocol>(fd: PollFDT) {
        
        g_source_add_poll(source_ptr, fd.pollfd_ptr)
        
    }

    /// Monitors `fd` for the IO events in `events`.
    /// 
    /// The tag returned by this function can be used to remove or modify the
    /// monitoring of the fd using `g_source_remove_unix_fd()` or
    /// `g_source_modify_unix_fd()`.
    /// 
    /// It is not necessary to remove the fd before destroying the source; it
    /// will be cleaned up automatically.
    /// 
    /// This API is only intended to be used by implementations of `GSource`.
    /// Do not call this API on a `GSource` that you did not create.
    /// 
    /// As the name suggests, this function is not available on Windows.
    @inlinable func addUnix(fd: Int, events: IOCondition) -> gpointer! {
        let result = g_source_add_unix_fd(source_ptr, gint(fd), events.value)
        let rv = gpointer(result)
        return rv
    }

    /// Adds a `GSource` to a `context` so that it will be executed within
    /// that context. Remove it by calling `g_source_destroy()`.
    /// 
    /// This function is safe to call from any thread, regardless of which thread
    /// the `context` is running in.
    @inlinable func attach(context: MainContextRef? = nil) -> Int {
            let result = g_source_attach(source_ptr, context?.main_context_ptr)
        let rv = Int(result)
            return rv
    }
    /// Adds a `GSource` to a `context` so that it will be executed within
    /// that context. Remove it by calling `g_source_destroy()`.
    /// 
    /// This function is safe to call from any thread, regardless of which thread
    /// the `context` is running in.
    @inlinable func attach<MainContextT: MainContextProtocol>(context: MainContextT?) -> Int {
        let result = g_source_attach(source_ptr, context?.main_context_ptr)
        let rv = Int(result)
        return rv
    }

    /// Removes a source from its `GMainContext`, if any, and mark it as
    /// destroyed.  The source cannot be subsequently added to another
    /// context. It is safe to call this on sources which have already been
    /// removed from their context.
    /// 
    /// This does not unref the `GSource:` if you still hold a reference, use
    /// `g_source_unref()` to drop it.
    /// 
    /// This function is safe to call from any thread, regardless of which thread
    /// the `GMainContext` is running in.
    /// 
    /// If the source is currently attached to a `GMainContext`, destroying it
    /// will effectively unset the callback similar to calling `g_source_set_callback()`.
    /// This can mean, that the data's `GDestroyNotify` gets called right away.
    @inlinable func destroy() {
        
        g_source_destroy(source_ptr)
        
    }

    /// Checks whether a source is allowed to be called recursively.
    /// see `g_source_set_can_recurse()`.
    @inlinable func getCanRecurse() -> Bool {
        let result = g_source_get_can_recurse(source_ptr)
        let rv = ((result) != 0)
        return rv
    }

    /// Gets the `GMainContext` with which the source is associated.
    /// 
    /// You can call this on a source that has been destroyed, provided
    /// that the `GMainContext` it was attached to still exists (in which
    /// case it will return that `GMainContext`). In particular, you can
    /// always call this function on the source returned from
    /// `g_main_current_source()`. But calling this function on a source
    /// whose `GMainContext` has been destroyed is an error.
    @inlinable func getContext() -> MainContextRef! {
        let result = g_source_get_context(source_ptr)
        let rv = MainContextRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// This function ignores `source` and is otherwise the same as
    /// `g_get_current_time()`.
    ///
    /// **get_current_time is deprecated:**
    /// use g_source_get_time() instead
    @available(*, deprecated) @inlinable func getCurrentTime<TimeValT: TimeValProtocol>(timeval: TimeValT) {
        
        g_source_get_current_time(source_ptr, timeval._ptr)
        
    }

    /// Returns the numeric ID for a particular source. The ID of a source
    /// is a positive integer which is unique within a particular main loop
    /// context. The reverse
    /// mapping from ID to source is done by `g_main_context_find_source_by_id()`.
    /// 
    /// You can only call this function while the source is associated to a
    /// `GMainContext` instance; calling this function before `g_source_attach()`
    /// or after `g_source_destroy()` yields undefined behavior. The ID returned
    /// is unique within the `GMainContext` instance passed to `g_source_attach()`.
    @inlinable func getID() -> Int {
        let result = g_source_get_id(source_ptr)
        let rv = Int(result)
        return rv
    }

    /// Gets a name for the source, used in debugging and profiling.  The
    /// name may be `NULL` if it has never been set with `g_source_set_name()`.
    @inlinable func getName() -> String! {
        let result = g_source_get_name(source_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Gets the priority of a source.
    @inlinable func getPriority() -> Int {
        let result = g_source_get_priority(source_ptr)
        let rv = Int(result)
        return rv
    }

    /// Gets the "ready time" of `source`, as set by
    /// `g_source_set_ready_time()`.
    /// 
    /// Any time before the current monotonic time (including 0) is an
    /// indication that the source will fire immediately.
    @inlinable func getReadyTime() -> gint64 {
        let result = g_source_get_ready_time(source_ptr)
        let rv = result
        return rv
    }

    /// Gets the time to be used when checking this source. The advantage of
    /// calling this function over calling `g_get_monotonic_time()` directly is
    /// that when checking multiple sources, GLib can cache a single value
    /// instead of having to repeatedly get the system monotonic time.
    /// 
    /// The time here is the system monotonic time, if available, or some
    /// other reasonable alternative otherwise.  See `g_get_monotonic_time()`.
    @inlinable func getTime() -> gint64 {
        let result = g_source_get_time(source_ptr)
        let rv = result
        return rv
    }

    /// Updates the event mask to watch for the fd identified by `tag`.
    /// 
    /// `tag` is the tag returned from `g_source_add_unix_fd()`.
    /// 
    /// If you want to remove a fd, don't set its event mask to zero.
    /// Instead, call `g_source_remove_unix_fd()`.
    /// 
    /// This API is only intended to be used by implementations of `GSource`.
    /// Do not call this API on a `GSource` that you did not create.
    /// 
    /// As the name suggests, this function is not available on Windows.
    @inlinable func modifyUnixFd(tag: gpointer!, newEvents: IOCondition) {
        
        g_source_modify_unix_fd(source_ptr, tag, newEvents.value)
        
    }

    /// Queries the events reported for the fd corresponding to `tag` on
    /// `source` during the last poll.
    /// 
    /// The return value of this function is only defined when the function
    /// is called from the check or dispatch functions for `source`.
    /// 
    /// This API is only intended to be used by implementations of `GSource`.
    /// Do not call this API on a `GSource` that you did not create.
    /// 
    /// As the name suggests, this function is not available on Windows.
    @inlinable func queryUnixFd(tag: gpointer!) -> GLib.IOCondition {
        let result = g_source_query_unix_fd(source_ptr, tag)
        let rv = IOCondition(result)
        return rv
    }

    /// Increases the reference count on a source by one.
    @discardableResult @inlinable func ref() -> SourceRef! {
        let result = g_source_ref(source_ptr)
        guard let rv = SourceRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Detaches `child_source` from `source` and destroys it.
    /// 
    /// This API is only intended to be used by implementations of `GSource`.
    /// Do not call this API on a `GSource` that you did not create.
    @inlinable func remove<SourceT: SourceProtocol>(childSource: SourceT) {
        
        g_source_remove_child_source(source_ptr, childSource.source_ptr)
        
    }

    /// Removes a file descriptor from the set of file descriptors polled for
    /// this source.
    /// 
    /// This API is only intended to be used by implementations of `GSource`.
    /// Do not call this API on a `GSource` that you did not create.
    @inlinable func removePoll<PollFDT: PollFDProtocol>(fd: PollFDT) {
        
        g_source_remove_poll(source_ptr, fd.pollfd_ptr)
        
    }

    /// Reverses the effect of a previous call to `g_source_add_unix_fd()`.
    /// 
    /// You only need to call this if you want to remove an fd from being
    /// watched while keeping the same source around.  In the normal case you
    /// will just want to destroy the source.
    /// 
    /// This API is only intended to be used by implementations of `GSource`.
    /// Do not call this API on a `GSource` that you did not create.
    /// 
    /// As the name suggests, this function is not available on Windows.
    @inlinable func removeUnixFd(tag: gpointer!) {
        
        g_source_remove_unix_fd(source_ptr, tag)
        
    }

    /// Sets the callback function for a source. The callback for a source is
    /// called from the source's dispatch function.
    /// 
    /// The exact type of `func` depends on the type of source; ie. you
    /// should not count on `func` being called with `data` as its first
    /// parameter. Cast `func` with `G_SOURCE_FUNC()` to avoid warnings about
    /// incompatible function types.
    /// 
    /// See [memory management of sources](#mainloop-memory-management) for details
    /// on how to handle memory management of `data`.
    /// 
    /// Typically, you won't use this function. Instead use functions specific
    /// to the type of source you are using, such as `g_idle_add()` or `g_timeout_add()`.
    /// 
    /// It is safe to call this function multiple times on a source which has already
    /// been attached to a context. The changes will take effect for the next time
    /// the source is dispatched after this call returns.
    /// 
    /// Note that `g_source_destroy()` for a currently attached source has the effect
    /// of also unsetting the callback.
    @inlinable func setCallback(`func`: GSourceFunc?, data: gpointer? = nil, notify: GDestroyNotify? = nil) {
        
        g_source_set_callback(source_ptr, `func`, data, notify)
        
    }

    /// Sets the callback function storing the data as a refcounted callback
    /// "object". This is used internally. Note that calling
    /// `g_source_set_callback_indirect()` assumes
    /// an initial reference count on `callback_data`, and thus
    /// `callback_funcs-`&gt;unref will eventually be called once more
    /// than `callback_funcs-`&gt;ref.
    /// 
    /// It is safe to call this function multiple times on a source which has already
    /// been attached to a context. The changes will take effect for the next time
    /// the source is dispatched after this call returns.
    @inlinable func setCallbackIndirect<SourceCallbackFuncsT: SourceCallbackFuncsProtocol>(callbackData: gpointer? = nil, callbackFuncs: SourceCallbackFuncsT) {
        
        g_source_set_callback_indirect(source_ptr, callbackData, callbackFuncs._ptr)
        
    }

    /// Sets whether a source can be called recursively. If `can_recurse` is
    /// `true`, then while the source is being dispatched then this source
    /// will be processed normally. Otherwise, all processing of this
    /// source is blocked until the dispatch function returns.
    @inlinable func set(canRecurse: Bool) {
        
        g_source_set_can_recurse(source_ptr, gboolean((canRecurse) ? 1 : 0))
        
    }

    /// Set `dispose` as dispose function on `source`. `dispose` will be called once
    /// the reference count of `source` reaches 0 but before any of the state of the
    /// source is freed, especially before the finalize function is called.
    /// 
    /// This means that at this point `source` is still a valid `GSource` and it is
    /// allow for the reference count to increase again until `dispose` returns.
    /// 
    /// The dispose function can be used to clear any "weak" references to the
    /// `source` in other data structures in a thread-safe way where it is possible
    /// for another thread to increase the reference count of `source` again while
    /// it is being freed.
    /// 
    /// The finalize function can not be used for this purpose as at that point
    /// `source` is already partially freed and not valid anymore.
    /// 
    /// This should only ever be called from `GSource` implementations.
    @inlinable func setDisposeFunction(dispose: GSourceDisposeFunc?) {
        
        g_source_set_dispose_function(source_ptr, dispose)
        
    }

    /// Sets the source functions (can be used to override
    /// default implementations) of an unattached source.
    @inlinable func set<SourceFuncsT: SourceFuncsProtocol>(funcs: SourceFuncsT) {
        
        g_source_set_funcs(source_ptr, funcs._ptr)
        
    }

    /// Sets a name for the source, used in debugging and profiling.
    /// The name defaults to `NULL`.
    /// 
    /// The source name should describe in a human-readable way
    /// what the source does. For example, "X11 event queue"
    /// or "GTK+ repaint idle handler" or whatever it is.
    /// 
    /// It is permitted to call this function multiple times, but is not
    /// recommended due to the potential performance impact.  For example,
    /// one could change the name in the "check" function of a `GSourceFuncs`
    /// to include details like the event type in the source name.
    /// 
    /// Use caution if changing the name while another thread may be
    /// accessing it with `g_source_get_name()`; that function does not copy
    /// the value, and changing the value will free it while the other thread
    /// may be attempting to use it.
    /// 
    /// Also see `g_source_set_static_name()`.
    @inlinable func set(name: UnsafePointer<CChar>!) {
        
        g_source_set_name(source_ptr, name)
        
    }

    /// Sets the priority of a source. While the main loop is being run, a
    /// source will be dispatched if it is ready to be dispatched and no
    /// sources at a higher (numerically smaller) priority are ready to be
    /// dispatched.
    /// 
    /// A child source always has the same priority as its parent.  It is not
    /// permitted to change the priority of a source once it has been added
    /// as a child of another source.
    @inlinable func set(priority: Int) {
        
        g_source_set_priority(source_ptr, gint(priority))
        
    }

    /// Sets a `GSource` to be dispatched when the given monotonic time is
    /// reached (or passed).  If the monotonic time is in the past (as it
    /// always will be if `ready_time` is 0) then the source will be
    /// dispatched immediately.
    /// 
    /// If `ready_time` is -1 then the source is never woken up on the basis
    /// of the passage of time.
    /// 
    /// Dispatching the source does not reset the ready time.  You should do
    /// so yourself, from the source dispatch function.
    /// 
    /// Note that if you have a pair of sources where the ready time of one
    /// suggests that it will be delivered first but the priority for the
    /// other suggests that it would be delivered first, and the ready time
    /// for both sources is reached during the same main context iteration,
    /// then the order of dispatch is undefined.
    /// 
    /// It is a no-op to call this function on a `GSource` which has already been
    /// destroyed with `g_source_destroy()`.
    /// 
    /// This API is only intended to be used by implementations of `GSource`.
    /// Do not call this API on a `GSource` that you did not create.
    @inlinable func set(readyTime: gint64) {
        
        g_source_set_ready_time(source_ptr, readyTime)
        
    }

    /// A variant of `g_source_set_name()` that does not
    /// duplicate the `name`, and can only be used with
    /// string literals.
    @inlinable func setStatic(name: UnsafePointer<CChar>!) {
        
        g_source_set_static_name(source_ptr, name)
        
    }

    /// Decreases the reference count of a source by one. If the
    /// resulting reference count is zero the source and associated
    /// memory will be destroyed.
    @inlinable func unref() {
        
        g_source_unref(source_ptr)
        
    }
    /// Checks whether a source is allowed to be called recursively.
    /// see `g_source_set_can_recurse()`.
    @inlinable var canRecurse: Bool {
        /// Checks whether a source is allowed to be called recursively.
        /// see `g_source_set_can_recurse()`.
        get {
            let result = g_source_get_can_recurse(source_ptr)
        let rv = ((result) != 0)
            return rv
        }
        /// Sets whether a source can be called recursively. If `can_recurse` is
        /// `true`, then while the source is being dispatched then this source
        /// will be processed normally. Otherwise, all processing of this
        /// source is blocked until the dispatch function returns.
        nonmutating set {
            g_source_set_can_recurse(source_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the `GMainContext` with which the source is associated.
    /// 
    /// You can call this on a source that has been destroyed, provided
    /// that the `GMainContext` it was attached to still exists (in which
    /// case it will return that `GMainContext`). In particular, you can
    /// always call this function on the source returned from
    /// `g_main_current_source()`. But calling this function on a source
    /// whose `GMainContext` has been destroyed is an error.
    @inlinable var context: MainContextRef! {
        /// Gets the `GMainContext` with which the source is associated.
        /// 
        /// You can call this on a source that has been destroyed, provided
        /// that the `GMainContext` it was attached to still exists (in which
        /// case it will return that `GMainContext`). In particular, you can
        /// always call this function on the source returned from
        /// `g_main_current_source()`. But calling this function on a source
        /// whose `GMainContext` has been destroyed is an error.
        get {
            let result = g_source_get_context(source_ptr)
        let rv = MainContextRef(gconstpointer: gconstpointer(result))
            return rv
        }
    }

    /// Returns the numeric ID for a particular source. The ID of a source
    /// is a positive integer which is unique within a particular main loop
    /// context. The reverse
    /// mapping from ID to source is done by `g_main_context_find_source_by_id()`.
    /// 
    /// You can only call this function while the source is associated to a
    /// `GMainContext` instance; calling this function before `g_source_attach()`
    /// or after `g_source_destroy()` yields undefined behavior. The ID returned
    /// is unique within the `GMainContext` instance passed to `g_source_attach()`.
    @inlinable var id: Int {
        /// Returns the numeric ID for a particular source. The ID of a source
        /// is a positive integer which is unique within a particular main loop
        /// context. The reverse
        /// mapping from ID to source is done by `g_main_context_find_source_by_id()`.
        /// 
        /// You can only call this function while the source is associated to a
        /// `GMainContext` instance; calling this function before `g_source_attach()`
        /// or after `g_source_destroy()` yields undefined behavior. The ID returned
        /// is unique within the `GMainContext` instance passed to `g_source_attach()`.
        get {
            let result = g_source_get_id(source_ptr)
        let rv = Int(result)
            return rv
        }
    }

    /// Returns whether `source` has been destroyed.
    /// 
    /// This is important when you operate upon your objects
    /// from within idle handlers, but may have freed the object
    /// before the dispatch of your idle handler.
    /// 
    /// (C Language Example):
    /// ```C
    /// static gboolean
    /// idle_callback (gpointer data)
    /// {
    ///   SomeWidget *self = data;
    ///    
    ///   g_mutex_lock (&self->idle_id_mutex);
    ///   // do stuff with self
    ///   self->idle_id = 0;
    ///   g_mutex_unlock (&self->idle_id_mutex);
    ///    
    ///   return G_SOURCE_REMOVE;
    /// }
    ///  
    /// static void
    /// some_widget_do_stuff_later (SomeWidget *self)
    /// {
    ///   g_mutex_lock (&self->idle_id_mutex);
    ///   self->idle_id = g_idle_add (idle_callback, self);
    ///   g_mutex_unlock (&self->idle_id_mutex);
    /// }
    ///  
    /// static void
    /// some_widget_init (SomeWidget *self)
    /// {
    ///   g_mutex_init (&self->idle_id_mutex);
    /// 
    ///   // ...
    /// }
    /// 
    /// static void
    /// some_widget_finalize (GObject *object)
    /// {
    ///   SomeWidget *self = SOME_WIDGET (object);
    ///    
    ///   if (self->idle_id)
    ///     g_source_remove (self->idle_id);
    ///    
    ///   g_mutex_clear (&self->idle_id_mutex);
    /// 
    ///   G_OBJECT_CLASS (parent_class)->finalize (object);
    /// }
    /// ```
    /// 
    /// This will fail in a multi-threaded application if the
    /// widget is destroyed before the idle handler fires due
    /// to the use after free in the callback. A solution, to
    /// this particular problem, is to check to if the source
    /// has already been destroy within the callback.
    /// 
    /// (C Language Example):
    /// ```C
    /// static gboolean
    /// idle_callback (gpointer data)
    /// {
    ///   SomeWidget *self = data;
    ///   
    ///   g_mutex_lock (&self->idle_id_mutex);
    ///   if (!g_source_is_destroyed (g_main_current_source ()))
    ///     {
    ///       // do stuff with self
    ///     }
    ///   g_mutex_unlock (&self->idle_id_mutex);
    ///   
    ///   return FALSE;
    /// }
    /// ```
    /// 
    /// Calls to this function from a thread other than the one acquired by the
    /// `GMainContext` the `GSource` is attached to are typically redundant, as the
    /// source could be destroyed immediately after this function returns. However,
    /// once a source is destroyed it cannot be un-destroyed, so this function can be
    /// used for opportunistic checks from any thread.
    @inlinable var isDestroyed: Bool {
        /// Returns whether `source` has been destroyed.
        /// 
        /// This is important when you operate upon your objects
        /// from within idle handlers, but may have freed the object
        /// before the dispatch of your idle handler.
        /// 
        /// (C Language Example):
        /// ```C
        /// static gboolean
        /// idle_callback (gpointer data)
        /// {
        ///   SomeWidget *self = data;
        ///    
        ///   g_mutex_lock (&self->idle_id_mutex);
        ///   // do stuff with self
        ///   self->idle_id = 0;
        ///   g_mutex_unlock (&self->idle_id_mutex);
        ///    
        ///   return G_SOURCE_REMOVE;
        /// }
        ///  
        /// static void
        /// some_widget_do_stuff_later (SomeWidget *self)
        /// {
        ///   g_mutex_lock (&self->idle_id_mutex);
        ///   self->idle_id = g_idle_add (idle_callback, self);
        ///   g_mutex_unlock (&self->idle_id_mutex);
        /// }
        ///  
        /// static void
        /// some_widget_init (SomeWidget *self)
        /// {
        ///   g_mutex_init (&self->idle_id_mutex);
        /// 
        ///   // ...
        /// }
        /// 
        /// static void
        /// some_widget_finalize (GObject *object)
        /// {
        ///   SomeWidget *self = SOME_WIDGET (object);
        ///    
        ///   if (self->idle_id)
        ///     g_source_remove (self->idle_id);
        ///    
        ///   g_mutex_clear (&self->idle_id_mutex);
        /// 
        ///   G_OBJECT_CLASS (parent_class)->finalize (object);
        /// }
        /// ```
        /// 
        /// This will fail in a multi-threaded application if the
        /// widget is destroyed before the idle handler fires due
        /// to the use after free in the callback. A solution, to
        /// this particular problem, is to check to if the source
        /// has already been destroy within the callback.
        /// 
        /// (C Language Example):
        /// ```C
        /// static gboolean
        /// idle_callback (gpointer data)
        /// {
        ///   SomeWidget *self = data;
        ///   
        ///   g_mutex_lock (&self->idle_id_mutex);
        ///   if (!g_source_is_destroyed (g_main_current_source ()))
        ///     {
        ///       // do stuff with self
        ///     }
        ///   g_mutex_unlock (&self->idle_id_mutex);
        ///   
        ///   return FALSE;
        /// }
        /// ```
        /// 
        /// Calls to this function from a thread other than the one acquired by the
        /// `GMainContext` the `GSource` is attached to are typically redundant, as the
        /// source could be destroyed immediately after this function returns. However,
        /// once a source is destroyed it cannot be un-destroyed, so this function can be
        /// used for opportunistic checks from any thread.
        get {
            let result = g_source_is_destroyed(source_ptr)
        let rv = ((result) != 0)
            return rv
        }
    }

    /// Gets a name for the source, used in debugging and profiling.  The
    /// name may be `NULL` if it has never been set with `g_source_set_name()`.
    @inlinable var name: String! {
        /// Gets a name for the source, used in debugging and profiling.  The
        /// name may be `NULL` if it has never been set with `g_source_set_name()`.
        get {
            let result = g_source_get_name(source_ptr)
        let rv = result.map({ String(cString: $0) })
            return rv
        }
        /// Sets a name for the source, used in debugging and profiling.
        /// The name defaults to `NULL`.
        /// 
        /// The source name should describe in a human-readable way
        /// what the source does. For example, "X11 event queue"
        /// or "GTK+ repaint idle handler" or whatever it is.
        /// 
        /// It is permitted to call this function multiple times, but is not
        /// recommended due to the potential performance impact.  For example,
        /// one could change the name in the "check" function of a `GSourceFuncs`
        /// to include details like the event type in the source name.
        /// 
        /// Use caution if changing the name while another thread may be
        /// accessing it with `g_source_get_name()`; that function does not copy
        /// the value, and changing the value will free it while the other thread
        /// may be attempting to use it.
        /// 
        /// Also see `g_source_set_static_name()`.
        nonmutating set {
            g_source_set_name(source_ptr, newValue)
        }
    }

    /// Gets the priority of a source.
    @inlinable var priority: Int {
        /// Gets the priority of a source.
        get {
            let result = g_source_get_priority(source_ptr)
        let rv = Int(result)
            return rv
        }
        /// Sets the priority of a source. While the main loop is being run, a
        /// source will be dispatched if it is ready to be dispatched and no
        /// sources at a higher (numerically smaller) priority are ready to be
        /// dispatched.
        /// 
        /// A child source always has the same priority as its parent.  It is not
        /// permitted to change the priority of a source once it has been added
        /// as a child of another source.
        nonmutating set {
            g_source_set_priority(source_ptr, gint(newValue))
        }
    }

    /// Gets the "ready time" of `source`, as set by
    /// `g_source_set_ready_time()`.
    /// 
    /// Any time before the current monotonic time (including 0) is an
    /// indication that the source will fire immediately.
    @inlinable var readyTime: gint64 {
        /// Gets the "ready time" of `source`, as set by
        /// `g_source_set_ready_time()`.
        /// 
        /// Any time before the current monotonic time (including 0) is an
        /// indication that the source will fire immediately.
        get {
            let result = g_source_get_ready_time(source_ptr)
        let rv = result
            return rv
        }
        /// Sets a `GSource` to be dispatched when the given monotonic time is
        /// reached (or passed).  If the monotonic time is in the past (as it
        /// always will be if `ready_time` is 0) then the source will be
        /// dispatched immediately.
        /// 
        /// If `ready_time` is -1 then the source is never woken up on the basis
        /// of the passage of time.
        /// 
        /// Dispatching the source does not reset the ready time.  You should do
        /// so yourself, from the source dispatch function.
        /// 
        /// Note that if you have a pair of sources where the ready time of one
        /// suggests that it will be delivered first but the priority for the
        /// other suggests that it would be delivered first, and the ready time
        /// for both sources is reached during the same main context iteration,
        /// then the order of dispatch is undefined.
        /// 
        /// It is a no-op to call this function on a `GSource` which has already been
        /// destroyed with `g_source_destroy()`.
        /// 
        /// This API is only intended to be used by implementations of `GSource`.
        /// Do not call this API on a `GSource` that you did not create.
        nonmutating set {
            g_source_set_ready_time(source_ptr, newValue)
        }
    }

    /// Gets the time to be used when checking this source. The advantage of
    /// calling this function over calling `g_get_monotonic_time()` directly is
    /// that when checking multiple sources, GLib can cache a single value
    /// instead of having to repeatedly get the system monotonic time.
    /// 
    /// The time here is the system monotonic time, if available, or some
    /// other reasonable alternative otherwise.  See `g_get_monotonic_time()`.
    @inlinable var time: gint64 {
        /// Gets the time to be used when checking this source. The advantage of
        /// calling this function over calling `g_get_monotonic_time()` directly is
        /// that when checking multiple sources, GLib can cache a single value
        /// instead of having to repeatedly get the system monotonic time.
        /// 
        /// The time here is the system monotonic time, if available, or some
        /// other reasonable alternative otherwise.  See `g_get_monotonic_time()`.
        get {
            let result = g_source_get_time(source_ptr)
        let rv = result
            return rv
        }
    }

    // var callbackData is unavailable because callback_data is private

    // var callbackFuncs is unavailable because callback_funcs is private

    // var sourceFuncs is unavailable because source_funcs is private

    // var refCount is unavailable because ref_count is private

    // var _context is unavailable because context is private

    // var _priority is unavailable because priority is private

    // var flags is unavailable because flags is private

    // var sourceID is unavailable because source_id is private

    // var pollFds is unavailable because poll_fds is private

    // var prev is unavailable because prev is private

    // var next is unavailable because next is private

    // var _name is unavailable because name is private

    // var priv is unavailable because priv is private

}



// MARK: - SourceCallbackFuncs Record

/// The `GSourceCallbackFuncs` struct contains
/// functions for managing callback objects.
///
/// The `SourceCallbackFuncsProtocol` protocol exposes the methods and properties of an underlying `GSourceCallbackFuncs` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SourceCallbackFuncs`.
/// Alternatively, use `SourceCallbackFuncsRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol SourceCallbackFuncsProtocol {
        /// Untyped pointer to the underlying `GSourceCallbackFuncs` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSourceCallbackFuncs` instance.
    var _ptr: UnsafeMutablePointer<GSourceCallbackFuncs>! { get }

    /// Required Initialiser for types conforming to `SourceCallbackFuncsProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `GSourceCallbackFuncs` struct contains
/// functions for managing callback objects.
///
/// The `SourceCallbackFuncsRef` type acts as a lightweight Swift reference to an underlying `GSourceCallbackFuncs` instance.
/// It exposes methods that can operate on this data type through `SourceCallbackFuncsProtocol` conformance.
/// Use `SourceCallbackFuncsRef` only as an `unowned` reference to an existing `GSourceCallbackFuncs` instance.
///
public struct SourceCallbackFuncsRef: SourceCallbackFuncsProtocol {
        /// Untyped pointer to the underlying `GSourceCallbackFuncs` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SourceCallbackFuncsRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSourceCallbackFuncs>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSourceCallbackFuncs>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSourceCallbackFuncs>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSourceCallbackFuncs>?) {
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

    /// Reference intialiser for a related type that implements `SourceCallbackFuncsProtocol`
    @inlinable init<T: SourceCallbackFuncsProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceCallbackFuncsProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceCallbackFuncsProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceCallbackFuncsProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceCallbackFuncsProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceCallbackFuncsProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `GSourceCallbackFuncs` struct contains
/// functions for managing callback objects.
///
/// The `SourceCallbackFuncs` type acts as an owner of an underlying `GSourceCallbackFuncs` instance.
/// It provides the methods that can operate on this data type through `SourceCallbackFuncsProtocol` conformance.
/// Use `SourceCallbackFuncs` as a strong reference or owner of a `GSourceCallbackFuncs` instance.
///
open class SourceCallbackFuncs: SourceCallbackFuncsProtocol {
        /// Untyped pointer to the underlying `GSourceCallbackFuncs` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SourceCallbackFuncs` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GSourceCallbackFuncs>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SourceCallbackFuncs` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GSourceCallbackFuncs>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SourceCallbackFuncs` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SourceCallbackFuncs` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SourceCallbackFuncs` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GSourceCallbackFuncs>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SourceCallbackFuncs` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GSourceCallbackFuncs>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GSourceCallbackFuncs` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `SourceCallbackFuncs` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GSourceCallbackFuncs>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GSourceCallbackFuncs, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `SourceCallbackFuncsProtocol`
    /// `GSourceCallbackFuncs` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SourceCallbackFuncsProtocol`
    @inlinable public init<T: SourceCallbackFuncsProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GSourceCallbackFuncs, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GSourceCallbackFuncs`.
    deinit {
        // no reference counting for GSourceCallbackFuncs, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceCallbackFuncsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceCallbackFuncsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GSourceCallbackFuncs, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceCallbackFuncsProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceCallbackFuncsProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GSourceCallbackFuncs, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceCallbackFuncsProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceCallbackFuncsProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GSourceCallbackFuncs, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceCallbackFuncsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceCallbackFuncsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GSourceCallbackFuncs, cannot ref(_ptr)
    }



}

// MARK: no SourceCallbackFuncs properties

// MARK: no SourceCallbackFuncs signals

// MARK: SourceCallbackFuncs has no signals
// MARK: SourceCallbackFuncs Record: SourceCallbackFuncsProtocol extension (methods and fields)
public extension SourceCallbackFuncsProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSourceCallbackFuncs` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GSourceCallbackFuncs>! { return ptr?.assumingMemoryBound(to: GSourceCallbackFuncs.self) }


    // var ref is unavailable because ref is void

    // var unref is unavailable because unref is void

    // var get is unavailable because get is void

}



// MARK: - SourceFuncs Record

/// The `GSourceFuncs` struct contains a table of
/// functions used to handle event sources in a generic manner.
/// 
/// For idle sources, the prepare and check functions always return `true`
/// to indicate that the source is always ready to be processed. The prepare
/// function also returns a timeout value of 0 to ensure that the `poll()` call
/// doesn't block (since that would be time wasted which could have been spent
/// running the idle function).
/// 
/// For timeout sources, the prepare and check functions both return `true`
/// if the timeout interval has expired. The prepare function also returns
/// a timeout value to ensure that the `poll()` call doesn't block too long
/// and miss the next timeout.
/// 
/// For file descriptor sources, the prepare function typically returns `false`,
/// since it must wait until `poll()` has been called before it knows whether
/// any events need to be processed. It sets the returned timeout to -1 to
/// indicate that it doesn't mind how long the `poll()` call blocks. In the
/// check function, it tests the results of the `poll()` call to see if the
/// required condition has been met, and returns `true` if so.
///
/// The `SourceFuncsProtocol` protocol exposes the methods and properties of an underlying `GSourceFuncs` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SourceFuncs`.
/// Alternatively, use `SourceFuncsRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol SourceFuncsProtocol {
        /// Untyped pointer to the underlying `GSourceFuncs` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSourceFuncs` instance.
    var _ptr: UnsafeMutablePointer<GSourceFuncs>! { get }

    /// Required Initialiser for types conforming to `SourceFuncsProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `GSourceFuncs` struct contains a table of
/// functions used to handle event sources in a generic manner.
/// 
/// For idle sources, the prepare and check functions always return `true`
/// to indicate that the source is always ready to be processed. The prepare
/// function also returns a timeout value of 0 to ensure that the `poll()` call
/// doesn't block (since that would be time wasted which could have been spent
/// running the idle function).
/// 
/// For timeout sources, the prepare and check functions both return `true`
/// if the timeout interval has expired. The prepare function also returns
/// a timeout value to ensure that the `poll()` call doesn't block too long
/// and miss the next timeout.
/// 
/// For file descriptor sources, the prepare function typically returns `false`,
/// since it must wait until `poll()` has been called before it knows whether
/// any events need to be processed. It sets the returned timeout to -1 to
/// indicate that it doesn't mind how long the `poll()` call blocks. In the
/// check function, it tests the results of the `poll()` call to see if the
/// required condition has been met, and returns `true` if so.
///
/// The `SourceFuncsRef` type acts as a lightweight Swift reference to an underlying `GSourceFuncs` instance.
/// It exposes methods that can operate on this data type through `SourceFuncsProtocol` conformance.
/// Use `SourceFuncsRef` only as an `unowned` reference to an existing `GSourceFuncs` instance.
///
public struct SourceFuncsRef: SourceFuncsProtocol {
        /// Untyped pointer to the underlying `GSourceFuncs` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SourceFuncsRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSourceFuncs>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSourceFuncs>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSourceFuncs>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSourceFuncs>?) {
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

    /// Reference intialiser for a related type that implements `SourceFuncsProtocol`
    @inlinable init<T: SourceFuncsProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceFuncsProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceFuncsProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceFuncsProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceFuncsProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceFuncsProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `GSourceFuncs` struct contains a table of
/// functions used to handle event sources in a generic manner.
/// 
/// For idle sources, the prepare and check functions always return `true`
/// to indicate that the source is always ready to be processed. The prepare
/// function also returns a timeout value of 0 to ensure that the `poll()` call
/// doesn't block (since that would be time wasted which could have been spent
/// running the idle function).
/// 
/// For timeout sources, the prepare and check functions both return `true`
/// if the timeout interval has expired. The prepare function also returns
/// a timeout value to ensure that the `poll()` call doesn't block too long
/// and miss the next timeout.
/// 
/// For file descriptor sources, the prepare function typically returns `false`,
/// since it must wait until `poll()` has been called before it knows whether
/// any events need to be processed. It sets the returned timeout to -1 to
/// indicate that it doesn't mind how long the `poll()` call blocks. In the
/// check function, it tests the results of the `poll()` call to see if the
/// required condition has been met, and returns `true` if so.
///
/// The `SourceFuncs` type acts as an owner of an underlying `GSourceFuncs` instance.
/// It provides the methods that can operate on this data type through `SourceFuncsProtocol` conformance.
/// Use `SourceFuncs` as a strong reference or owner of a `GSourceFuncs` instance.
///
open class SourceFuncs: SourceFuncsProtocol {
        /// Untyped pointer to the underlying `GSourceFuncs` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SourceFuncs` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GSourceFuncs>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SourceFuncs` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GSourceFuncs>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SourceFuncs` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SourceFuncs` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SourceFuncs` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GSourceFuncs>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SourceFuncs` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GSourceFuncs>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GSourceFuncs` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `SourceFuncs` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GSourceFuncs>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GSourceFuncs, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `SourceFuncsProtocol`
    /// `GSourceFuncs` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SourceFuncsProtocol`
    @inlinable public init<T: SourceFuncsProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GSourceFuncs, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GSourceFuncs`.
    deinit {
        // no reference counting for GSourceFuncs, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceFuncsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceFuncsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GSourceFuncs, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceFuncsProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceFuncsProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GSourceFuncs, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceFuncsProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceFuncsProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GSourceFuncs, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceFuncsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceFuncsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GSourceFuncs, cannot ref(_ptr)
    }



}

// MARK: no SourceFuncs properties

// MARK: no SourceFuncs signals

// MARK: SourceFuncs has no signals
// MARK: SourceFuncs Record: SourceFuncsProtocol extension (methods and fields)
public extension SourceFuncsProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSourceFuncs` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GSourceFuncs>! { return ptr?.assumingMemoryBound(to: GSourceFuncs.self) }

    /// Removes a source from the default main loop context given the
    /// source functions and user data. If multiple sources exist with the
    /// same source functions and user data, only one will be destroyed.
    @inlinable func sourceRemoveByFuncs(userData: gpointer? = nil) -> Bool {
        let result = g_source_remove_by_funcs_user_data(_ptr, userData)
        let rv = ((result) != 0)
        return rv
    }

    // var prepare is unavailable because prepare is void

    // var check is unavailable because check is void

    // var dispatch is unavailable because dispatch is void

    // var finalize is unavailable because finalize is void

    // var closureCallback is unavailable because closure_callback is private

    // var closureMarshal is unavailable because closure_marshal is private

}



// MARK: - SourcePrivate Record


///
/// The `SourcePrivateProtocol` protocol exposes the methods and properties of an underlying `GSourcePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SourcePrivate`.
/// Alternatively, use `SourcePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol SourcePrivateProtocol {
        /// Untyped pointer to the underlying `GSourcePrivate` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSourcePrivate` instance.
    var _ptr: UnsafeMutablePointer<GSourcePrivate>! { get }

    /// Required Initialiser for types conforming to `SourcePrivateProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `SourcePrivateRef` type acts as a lightweight Swift reference to an underlying `GSourcePrivate` instance.
/// It exposes methods that can operate on this data type through `SourcePrivateProtocol` conformance.
/// Use `SourcePrivateRef` only as an `unowned` reference to an existing `GSourcePrivate` instance.
///
public struct SourcePrivateRef: SourcePrivateProtocol {
        /// Untyped pointer to the underlying `GSourcePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SourcePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSourcePrivate>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSourcePrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSourcePrivate>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSourcePrivate>?) {
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

    /// Reference intialiser for a related type that implements `SourcePrivateProtocol`
    @inlinable init<T: SourcePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourcePrivateProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourcePrivateProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourcePrivateProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourcePrivateProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourcePrivateProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }


///
/// The `SourcePrivate` type acts as an owner of an underlying `GSourcePrivate` instance.
/// It provides the methods that can operate on this data type through `SourcePrivateProtocol` conformance.
/// Use `SourcePrivate` as a strong reference or owner of a `GSourcePrivate` instance.
///
open class SourcePrivate: SourcePrivateProtocol {
        /// Untyped pointer to the underlying `GSourcePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SourcePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GSourcePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SourcePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GSourcePrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SourcePrivate` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SourcePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SourcePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GSourcePrivate>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SourcePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GSourcePrivate>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GSourcePrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `SourcePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GSourcePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GSourcePrivate, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `SourcePrivateProtocol`
    /// `GSourcePrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SourcePrivateProtocol`
    @inlinable public init<T: SourcePrivateProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GSourcePrivate, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GSourcePrivate`.
    deinit {
        // no reference counting for GSourcePrivate, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourcePrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourcePrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GSourcePrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourcePrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourcePrivateProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GSourcePrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourcePrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourcePrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GSourcePrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourcePrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourcePrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GSourcePrivate, cannot ref(_ptr)
    }



}

// MARK: no SourcePrivate properties

// MARK: no SourcePrivate signals

// MARK: SourcePrivate has no signals
// MARK: SourcePrivate Record: SourcePrivateProtocol extension (methods and fields)
public extension SourcePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSourcePrivate` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GSourcePrivate>! { return ptr?.assumingMemoryBound(to: GSourcePrivate.self) }



}



// MARK: - StatBuf Record

/// A type corresponding to the appropriate struct type for the `stat()`
/// system call, depending on the platform and/or compiler being used.
/// 
/// See `g_stat()` for more information.
///
/// The `StatBufProtocol` protocol exposes the methods and properties of an underlying `GStatBuf` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StatBuf`.
/// Alternatively, use `StatBufRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol StatBufProtocol {
        /// Untyped pointer to the underlying `GStatBuf` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GStatBuf` instance.
    var _ptr: UnsafeMutablePointer<GStatBuf>! { get }

    /// Required Initialiser for types conforming to `StatBufProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A type corresponding to the appropriate struct type for the `stat()`
/// system call, depending on the platform and/or compiler being used.
/// 
/// See `g_stat()` for more information.
///
/// The `StatBufRef` type acts as a lightweight Swift reference to an underlying `GStatBuf` instance.
/// It exposes methods that can operate on this data type through `StatBufProtocol` conformance.
/// Use `StatBufRef` only as an `unowned` reference to an existing `GStatBuf` instance.
///
public struct StatBufRef: StatBufProtocol {
        /// Untyped pointer to the underlying `GStatBuf` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension StatBufRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GStatBuf>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GStatBuf>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GStatBuf>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GStatBuf>?) {
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

    /// Reference intialiser for a related type that implements `StatBufProtocol`
    @inlinable init<T: StatBufProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatBufProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatBufProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatBufProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatBufProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatBufProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A type corresponding to the appropriate struct type for the `stat()`
/// system call, depending on the platform and/or compiler being used.
/// 
/// See `g_stat()` for more information.
///
/// The `StatBuf` type acts as an owner of an underlying `GStatBuf` instance.
/// It provides the methods that can operate on this data type through `StatBufProtocol` conformance.
/// Use `StatBuf` as a strong reference or owner of a `GStatBuf` instance.
///
open class StatBuf: StatBufProtocol {
        /// Untyped pointer to the underlying `GStatBuf` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StatBuf` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GStatBuf>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StatBuf` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GStatBuf>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StatBuf` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StatBuf` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StatBuf` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GStatBuf>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StatBuf` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GStatBuf>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GStatBuf` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `StatBuf` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GStatBuf>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GStatBuf, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `StatBufProtocol`
    /// `GStatBuf` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `StatBufProtocol`
    @inlinable public init<T: StatBufProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GStatBuf, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GStatBuf`.
    deinit {
        // no reference counting for GStatBuf, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatBufProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatBufProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GStatBuf, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatBufProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatBufProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GStatBuf, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatBufProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatBufProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GStatBuf, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatBufProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StatBufProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GStatBuf, cannot ref(_ptr)
    }



}

// MARK: no StatBuf properties

// MARK: no StatBuf signals

// MARK: StatBuf has no signals
// MARK: StatBuf Record: StatBufProtocol extension (methods and fields)
public extension StatBufProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GStatBuf` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GStatBuf>! { return ptr?.assumingMemoryBound(to: GStatBuf.self) }



}



// MARK: - String Record

/// The GString struct contains the public fields of a GString.
///
/// The `StringProtocol` protocol exposes the methods and properties of an underlying `GString` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StringType`.
/// Alternatively, use `StringRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol StringProtocol {
        /// Untyped pointer to the underlying `GString` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GString` instance.
    var gstring_ptr: UnsafeMutablePointer<GString>! { get }

    /// Required Initialiser for types conforming to `StringProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The GString struct contains the public fields of a GString.
///
/// The `StringRef` type acts as a lightweight Swift reference to an underlying `GString` instance.
/// It exposes methods that can operate on this data type through `StringProtocol` conformance.
/// Use `StringRef` only as an `unowned` reference to an existing `GString` instance.
///
public struct StringRef: StringProtocol {
        /// Untyped pointer to the underlying `GString` instance.
    /// For type-safe access, use the generated, typed pointer `gstring_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension StringRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GString>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GString>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GString>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GString>?) {
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

    /// Reference intialiser for a related type that implements `StringProtocol`
    @inlinable init<T: StringProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GString`, initialized with the given string.
    @inlinable init( `init`: UnsafePointer<gchar>? = nil) {
            let result = g_string_new(`init`)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GString` with `len` bytes of the `init` buffer.
    /// Because a length is provided, `init` need not be nul-terminated,
    /// and can contain embedded nul bytes.
    /// 
    /// Since this function does not stop at nul bytes, it is the caller's
    /// responsibility to ensure that `init` has at least `len` addressable
    /// bytes.
    @inlinable init(len `init`: UnsafePointer<gchar>!, len: gssize) {
            let result = g_string_new_len(`init`, len)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GString`, with enough space for `dfl_size`
    /// bytes. This is useful if you are going to add a lot of
    /// text to the string and don't want it to be reallocated
    /// too often.
    @inlinable init(sized dflSize: Int) {
            let result = g_string_sized_new(gsize(dflSize))
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GString` with `len` bytes of the `init` buffer.
    /// Because a length is provided, `init` need not be nul-terminated,
    /// and can contain embedded nul bytes.
    /// 
    /// Since this function does not stop at nul bytes, it is the caller's
    /// responsibility to ensure that `init` has at least `len` addressable
    /// bytes.
    @inlinable static func new(len `init`: UnsafePointer<gchar>!, len: gssize) -> StringRef! {
            let result = g_string_new_len(`init`, len)
        guard let rv = StringRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new `GString`, with enough space for `dfl_size`
    /// bytes. This is useful if you are going to add a lot of
    /// text to the string and don't want it to be reallocated
    /// too often.
    @inlinable static func sizedNew(sized dflSize: Int) -> StringRef! {
            let result = g_string_sized_new(gsize(dflSize))
        guard let rv = StringRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }
}

/// The GString struct contains the public fields of a GString.
///
/// The `StringType` type acts as an owner of an underlying `GString` instance.
/// It provides the methods that can operate on this data type through `StringProtocol` conformance.
/// Use `StringType` as a strong reference or owner of a `GString` instance.
///
open class StringType: StringProtocol {
        /// Untyped pointer to the underlying `GString` instance.
    /// For type-safe access, use the generated, typed pointer `gstring_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StringType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GString>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StringType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GString>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StringType` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StringType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StringType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GString>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StringType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GString>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GString` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `StringType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GString>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GString, cannot ref(gstring_ptr)
    }

    /// Reference intialiser for a related type that implements `StringProtocol`
    /// `GString` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `StringProtocol`
    @inlinable public init<T: StringProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GString, cannot ref(gstring_ptr)
    }

    /// Do-nothing destructor for `GString`.
    deinit {
        // no reference counting for GString, cannot unref(gstring_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GString, cannot ref(gstring_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GString, cannot ref(gstring_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GString, cannot ref(gstring_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GString, cannot ref(gstring_ptr)
    }

    /// Creates a new `GString`, initialized with the given string.
    @inlinable public init( `init`: UnsafePointer<gchar>? = nil) {
            let result = g_string_new(`init`)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GString` with `len` bytes of the `init` buffer.
    /// Because a length is provided, `init` need not be nul-terminated,
    /// and can contain embedded nul bytes.
    /// 
    /// Since this function does not stop at nul bytes, it is the caller's
    /// responsibility to ensure that `init` has at least `len` addressable
    /// bytes.
    @inlinable public init(len `init`: UnsafePointer<gchar>!, len: gssize) {
            let result = g_string_new_len(`init`, len)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GString`, with enough space for `dfl_size`
    /// bytes. This is useful if you are going to add a lot of
    /// text to the string and don't want it to be reallocated
    /// too often.
    @inlinable public init(sized dflSize: Int) {
            let result = g_string_sized_new(gsize(dflSize))
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GString` with `len` bytes of the `init` buffer.
    /// Because a length is provided, `init` need not be nul-terminated,
    /// and can contain embedded nul bytes.
    /// 
    /// Since this function does not stop at nul bytes, it is the caller's
    /// responsibility to ensure that `init` has at least `len` addressable
    /// bytes.
    @inlinable public static func new(len `init`: UnsafePointer<gchar>!, len: gssize) -> StringType! {
            let result = g_string_new_len(`init`, len)
        guard let rv = StringType(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new `GString`, with enough space for `dfl_size`
    /// bytes. This is useful if you are going to add a lot of
    /// text to the string and don't want it to be reallocated
    /// too often.
    @inlinable public static func sizedNew(sized dflSize: Int) -> StringType! {
            let result = g_string_sized_new(gsize(dflSize))
        guard let rv = StringType(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

}

// MARK: no StringType properties

// MARK: no StringType signals

// MARK: StringType has no signals
// MARK: String Record: StringProtocol extension (methods and fields)
public extension StringProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GString` instance.
    @inlinable var gstring_ptr: UnsafeMutablePointer<GString>! { return ptr?.assumingMemoryBound(to: GString.self) }

    /// Adds a string onto the end of a `GString`, expanding
    /// it if necessary.
    @inlinable func append(val: UnsafePointer<gchar>!) -> StringRef! {
        let result = g_string_append(gstring_ptr, val)
        guard let rv = StringRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Adds a byte onto the end of a `GString`, expanding
    /// it if necessary.
    @inlinable func append(c: gchar) -> StringRef! {
        let result = g_string_append_c(gstring_ptr, c)
        guard let rv = StringRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Appends `len` bytes of `val` to `string`.
    /// 
    /// If `len` is positive, `val` may contain embedded nuls and need
    /// not be nul-terminated. It is the caller's responsibility to
    /// ensure that `val` has at least `len` addressable bytes.
    /// 
    /// If `len` is negative, `val` must be nul-terminated and `len`
    /// is considered to request the entire string length. This
    /// makes `g_string_append_len()` equivalent to `g_string_append()`.
    @inlinable func appendLen(val: UnsafePointer<gchar>!, len: gssize) -> StringRef! {
        let result = g_string_append_len(gstring_ptr, val, len)
        guard let rv = StringRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }


    // *** appendPrintf() is not available because it has a varargs (...) parameter!


    /// Converts a Unicode character into UTF-8, and appends it
    /// to the string.
    @inlinable func appendUnichar(wc: gunichar) -> StringRef! {
        let result = g_string_append_unichar(gstring_ptr, wc)
        guard let rv = StringRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Appends `unescaped` to `string`, escaping any characters that
    /// are reserved in URIs using URI-style escape sequences.
    @inlinable func appendURIEscaped(unescaped: UnsafePointer<gchar>!, reservedCharsAllowed: UnsafePointer<gchar>!, allowUTF8: Bool) -> StringRef! {
        let result = g_string_append_uri_escaped(gstring_ptr, unescaped, reservedCharsAllowed, gboolean((allowUTF8) ? 1 : 0))
        guard let rv = StringRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Appends a formatted string onto the end of a `GString`.
    /// This function is similar to `g_string_append_printf()`
    /// except that the arguments to the format string are passed
    /// as a va_list.
    @inlinable func appendVprintf(format: UnsafePointer<gchar>!, args: CVaListPointer) {
        
        g_string_append_vprintf(gstring_ptr, format, args)
        
    }

    /// Converts all uppercase ASCII letters to lowercase ASCII letters.
    @inlinable func asciiDown() -> StringRef! {
        let result = g_string_ascii_down(gstring_ptr)
        guard let rv = StringRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Converts all lowercase ASCII letters to uppercase ASCII letters.
    @inlinable func asciiUp() -> StringRef! {
        let result = g_string_ascii_up(gstring_ptr)
        guard let rv = StringRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Copies the bytes from a string into a `GString`,
    /// destroying any previous contents. It is rather like
    /// the standard `strcpy()` function, except that you do not
    /// have to worry about having enough space to copy the string.
    @inlinable func assign(rval: UnsafePointer<gchar>!) -> StringRef! {
        let result = g_string_assign(gstring_ptr, rval)
        guard let rv = StringRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Converts a `GString` to lowercase.
    ///
    /// **down is deprecated:**
    /// This function uses the locale-specific
    ///     tolower() function, which is almost never the right thing.
    ///     Use g_string_ascii_down() or g_utf8_strdown() instead.
    @available(*, deprecated) @inlinable func down() -> StringRef! {
        let result = g_string_down(gstring_ptr)
        guard let rv = StringRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Compares two strings for equality, returning `true` if they are equal.
    /// For use with `GHashTable`.
    @inlinable func equal<StringTypeT: StringProtocol>(v2: StringTypeT) -> Bool {
        let result = g_string_equal(gstring_ptr, v2.gstring_ptr)
        let rv = ((result) != 0)
        return rv
    }

    /// Removes `len` bytes from a `GString`, starting at position `pos`.
    /// The rest of the `GString` is shifted down to fill the gap.
    @inlinable func erase(pos: gssize, len: gssize) -> StringRef! {
        let result = g_string_erase(gstring_ptr, pos, len)
        guard let rv = StringRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Frees the memory allocated for the `GString`.
    /// If `free_segment` is `true` it also frees the character data.  If
    /// it's `false`, the caller gains ownership of the buffer and must
    /// free it after use with `g_free()`.
    @inlinable func free(freeSegment: Bool) -> String! {
        let result = g_string_free(gstring_ptr, gboolean((freeSegment) ? 1 : 0))
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Transfers ownership of the contents of `string` to a newly allocated
    /// `GBytes`.  The `GString` structure itself is deallocated, and it is
    /// therefore invalid to use `string` after invoking this function.
    /// 
    /// Note that while `GString` ensures that its buffer always has a
    /// trailing nul character (not reflected in its "len"), the returned
    /// `GBytes` does not include this extra nul; i.e. it has length exactly
    /// equal to the "len" member.
    @inlinable func freeToBytes() -> BytesRef! {
        let result = g_string_free_to_bytes(gstring_ptr)
        let rv = BytesRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Creates a hash code for `str`; for use with `GHashTable`.
    @inlinable func hash() -> Int {
        let result = g_string_hash(gstring_ptr)
        let rv = Int(result)
        return rv
    }

    /// Inserts a copy of a string into a `GString`,
    /// expanding it if necessary.
    @inlinable func insert(pos: gssize, val: UnsafePointer<gchar>!) -> StringRef! {
        let result = g_string_insert(gstring_ptr, pos, val)
        guard let rv = StringRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Inserts a byte into a `GString`, expanding it if necessary.
    @inlinable func insertC(pos: gssize, c: gchar) -> StringRef! {
        let result = g_string_insert_c(gstring_ptr, pos, c)
        guard let rv = StringRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Inserts `len` bytes of `val` into `string` at `pos`.
    /// 
    /// If `len` is positive, `val` may contain embedded nuls and need
    /// not be nul-terminated. It is the caller's responsibility to
    /// ensure that `val` has at least `len` addressable bytes.
    /// 
    /// If `len` is negative, `val` must be nul-terminated and `len`
    /// is considered to request the entire string length.
    /// 
    /// If `pos` is -1, bytes are inserted at the end of the string.
    @inlinable func insertLen(pos: gssize, val: UnsafePointer<gchar>!, len: gssize) -> StringRef! {
        let result = g_string_insert_len(gstring_ptr, pos, val, len)
        guard let rv = StringRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Converts a Unicode character into UTF-8, and insert it
    /// into the string at the given position.
    @inlinable func insertUnichar(pos: gssize, wc: gunichar) -> StringRef! {
        let result = g_string_insert_unichar(gstring_ptr, pos, wc)
        guard let rv = StringRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Overwrites part of a string, lengthening it if necessary.
    @inlinable func overwrite(pos: Int, val: UnsafePointer<gchar>!) -> StringRef! {
        let result = g_string_overwrite(gstring_ptr, gsize(pos), val)
        guard let rv = StringRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Overwrites part of a string, lengthening it if necessary.
    /// This function will work with embedded nuls.
    @inlinable func overwriteLen(pos: Int, val: UnsafePointer<gchar>!, len: gssize) -> StringRef! {
        let result = g_string_overwrite_len(gstring_ptr, gsize(pos), val, len)
        guard let rv = StringRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Adds a string on to the start of a `GString`,
    /// expanding it if necessary.
    @inlinable func prepend(val: UnsafePointer<gchar>!) -> StringRef! {
        let result = g_string_prepend(gstring_ptr, val)
        guard let rv = StringRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Adds a byte onto the start of a `GString`,
    /// expanding it if necessary.
    @inlinable func prepend(c: gchar) -> StringRef! {
        let result = g_string_prepend_c(gstring_ptr, c)
        guard let rv = StringRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Prepends `len` bytes of `val` to `string`.
    /// 
    /// If `len` is positive, `val` may contain embedded nuls and need
    /// not be nul-terminated. It is the caller's responsibility to
    /// ensure that `val` has at least `len` addressable bytes.
    /// 
    /// If `len` is negative, `val` must be nul-terminated and `len`
    /// is considered to request the entire string length. This
    /// makes `g_string_prepend_len()` equivalent to `g_string_prepend()`.
    @inlinable func prependLen(val: UnsafePointer<gchar>!, len: gssize) -> StringRef! {
        let result = g_string_prepend_len(gstring_ptr, val, len)
        guard let rv = StringRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Converts a Unicode character into UTF-8, and prepends it
    /// to the string.
    @inlinable func prependUnichar(wc: gunichar) -> StringRef! {
        let result = g_string_prepend_unichar(gstring_ptr, wc)
        guard let rv = StringRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }


    // *** printf() is not available because it has a varargs (...) parameter!


    /// Replaces the string `find` with the string `replace` in a `GString` up to
    /// `limit` times. If the number of instances of `find` in the `GString` is
    /// less than `limit`, all instances are replaced. If `limit` is `0`,
    /// all instances of `find` are replaced.
    /// 
    /// If `find` is the empty string, since versions 2.69.1 and 2.68.4 the
    /// replacement will be inserted no more than once per possible position
    /// (beginning of string, end of string and between characters). This did
    /// not work correctly in earlier versions.
    @inlinable func replace(find: UnsafePointer<gchar>!, replace: UnsafePointer<gchar>!, limit: Int) -> Int {
        let result = g_string_replace(gstring_ptr, find, replace, guint(limit))
        let rv = Int(result)
        return rv
    }

    /// Sets the length of a `GString`. If the length is less than
    /// the current length, the string will be truncated. If the
    /// length is greater than the current length, the contents
    /// of the newly added area are undefined. (However, as
    /// always, string-&gt;str[string-&gt;len] will be a nul byte.)
    @inlinable func setSize(len: Int) -> StringRef! {
        let result = g_string_set_size(gstring_ptr, gsize(len))
        guard let rv = StringRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Cuts off the end of the GString, leaving the first `len` bytes.
    @inlinable func truncate(len: Int) -> StringRef! {
        let result = g_string_truncate(gstring_ptr, gsize(len))
        guard let rv = StringRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Converts a `GString` to uppercase.
    ///
    /// **up is deprecated:**
    /// This function uses the locale-specific
    ///     toupper() function, which is almost never the right thing.
    ///     Use g_string_ascii_up() or g_utf8_strup() instead.
    @available(*, deprecated) @inlinable func up() -> StringRef! {
        let result = g_string_up(gstring_ptr)
        guard let rv = StringRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Writes a formatted string into a `GString`.
    /// This function is similar to `g_string_printf()` except that
    /// the arguments to the format string are passed as a va_list.
    @inlinable func vprintf(format: UnsafePointer<gchar>!, args: CVaListPointer) {
        
        g_string_vprintf(gstring_ptr, format, args)
        
    }

    /// points to the character data. It may move as text is added.
    ///   The `str` field is null-terminated and so
    ///   can be used as an ordinary C string.
    @inlinable var str: UnsafeMutablePointer<gchar>! {
        /// points to the character data. It may move as text is added.
        ///   The `str` field is null-terminated and so
        ///   can be used as an ordinary C string.
        get {
            let rv = gstring_ptr.pointee.str
    return rv
        }
        /// points to the character data. It may move as text is added.
        ///   The `str` field is null-terminated and so
        ///   can be used as an ordinary C string.
         set {
            gstring_ptr.pointee.str = newValue
        }
    }

    /// contains the length of the string, not including the
    ///   terminating nul byte.
    @inlinable var len: gsize {
        /// contains the length of the string, not including the
        ///   terminating nul byte.
        get {
            let rv = gstring_ptr.pointee.len
    return rv
        }
        /// contains the length of the string, not including the
        ///   terminating nul byte.
         set {
            gstring_ptr.pointee.len = newValue
        }
    }

    /// the number of bytes that can be stored in the
    ///   string before it needs to be reallocated. May be larger than `len`.
    @inlinable var allocatedLen: gsize {
        /// the number of bytes that can be stored in the
        ///   string before it needs to be reallocated. May be larger than `len`.
        get {
            let rv = gstring_ptr.pointee.allocated_len
    return rv
        }
        /// the number of bytes that can be stored in the
        ///   string before it needs to be reallocated. May be larger than `len`.
         set {
            gstring_ptr.pointee.allocated_len = newValue
        }
    }

}



// MARK: - StringChunk Record

/// An opaque data structure representing String Chunks.
/// It should only be accessed by using the following functions.
///
/// The `StringChunkProtocol` protocol exposes the methods and properties of an underlying `GStringChunk` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StringChunk`.
/// Alternatively, use `StringChunkRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol StringChunkProtocol {
        /// Untyped pointer to the underlying `GStringChunk` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GStringChunk` instance.
    var _ptr: UnsafeMutablePointer<GStringChunk>! { get }

    /// Required Initialiser for types conforming to `StringChunkProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// An opaque data structure representing String Chunks.
/// It should only be accessed by using the following functions.
///
/// The `StringChunkRef` type acts as a lightweight Swift reference to an underlying `GStringChunk` instance.
/// It exposes methods that can operate on this data type through `StringChunkProtocol` conformance.
/// Use `StringChunkRef` only as an `unowned` reference to an existing `GStringChunk` instance.
///
public struct StringChunkRef: StringChunkProtocol {
        /// Untyped pointer to the underlying `GStringChunk` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension StringChunkRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GStringChunk>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GStringChunk>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GStringChunk>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GStringChunk>?) {
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

    /// Reference intialiser for a related type that implements `StringChunkProtocol`
    @inlinable init<T: StringChunkProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringChunkProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringChunkProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringChunkProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringChunkProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringChunkProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// An opaque data structure representing String Chunks.
/// It should only be accessed by using the following functions.
///
/// The `StringChunk` type acts as an owner of an underlying `GStringChunk` instance.
/// It provides the methods that can operate on this data type through `StringChunkProtocol` conformance.
/// Use `StringChunk` as a strong reference or owner of a `GStringChunk` instance.
///
open class StringChunk: StringChunkProtocol {
        /// Untyped pointer to the underlying `GStringChunk` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StringChunk` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GStringChunk>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StringChunk` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GStringChunk>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StringChunk` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StringChunk` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StringChunk` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GStringChunk>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StringChunk` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GStringChunk>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GStringChunk` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `StringChunk` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GStringChunk>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GStringChunk, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `StringChunkProtocol`
    /// `GStringChunk` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `StringChunkProtocol`
    @inlinable public init<T: StringChunkProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GStringChunk, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GStringChunk`.
    deinit {
        // no reference counting for GStringChunk, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringChunkProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringChunkProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GStringChunk, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringChunkProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringChunkProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GStringChunk, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringChunkProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringChunkProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GStringChunk, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringChunkProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringChunkProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GStringChunk, cannot ref(_ptr)
    }



}

// MARK: no StringChunk properties

// MARK: no StringChunk signals

// MARK: StringChunk has no signals
// MARK: StringChunk Record: StringChunkProtocol extension (methods and fields)
public extension StringChunkProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GStringChunk` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GStringChunk>! { return ptr?.assumingMemoryBound(to: GStringChunk.self) }

    /// Frees all strings contained within the `GStringChunk`.
    /// After calling `g_string_chunk_clear()` it is not safe to
    /// access any of the strings which were contained within it.
    @inlinable func clear() {
        
        g_string_chunk_clear(_ptr)
        
    }

    /// Frees all memory allocated by the `GStringChunk`.
    /// After calling `g_string_chunk_free()` it is not safe to
    /// access any of the strings which were contained within it.
    @inlinable func free() {
        
        g_string_chunk_free(_ptr)
        
    }

    /// Adds a copy of `string` to the `GStringChunk`.
    /// It returns a pointer to the new copy of the string
    /// in the `GStringChunk`. The characters in the string
    /// can be changed, if necessary, though you should not
    /// change anything after the end of the string.
    /// 
    /// Unlike `g_string_chunk_insert_const()`, this function
    /// does not check for duplicates. Also strings added
    /// with `g_string_chunk_insert()` will not be searched
    /// by `g_string_chunk_insert_const()` when looking for
    /// duplicates.
    @inlinable func insert(string: UnsafePointer<gchar>!) -> String! {
        let result = g_string_chunk_insert(_ptr, string)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Adds a copy of `string` to the `GStringChunk`, unless the same
    /// string has already been added to the `GStringChunk` with
    /// `g_string_chunk_insert_const()`.
    /// 
    /// This function is useful if you need to copy a large number
    /// of strings but do not want to waste space storing duplicates.
    /// But you must remember that there may be several pointers to
    /// the same string, and so any changes made to the strings
    /// should be done very carefully.
    /// 
    /// Note that `g_string_chunk_insert_const()` will not return a
    /// pointer to a string added with `g_string_chunk_insert()`, even
    /// if they do match.
    @inlinable func insertConst(string: UnsafePointer<gchar>!) -> String! {
        let result = g_string_chunk_insert_const(_ptr, string)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Adds a copy of the first `len` bytes of `string` to the `GStringChunk`.
    /// The copy is nul-terminated.
    /// 
    /// Since this function does not stop at nul bytes, it is the caller's
    /// responsibility to ensure that `string` has at least `len` addressable
    /// bytes.
    /// 
    /// The characters in the returned string can be changed, if necessary,
    /// though you should not change anything after the end of the string.
    @inlinable func insertLen(string: UnsafePointer<gchar>!, len: gssize) -> String! {
        let result = g_string_chunk_insert_len(_ptr, string, len)
        let rv = result.map({ String(cString: $0) })
        return rv
    }


}



// MARK: - StrvBuilder Record

/// `GStrvBuilder` is a method of easily building dynamically sized
/// NULL-terminated string arrays.
/// 
/// The following example shows how to build a two element array:
/// 
/// (C Language Example):
/// ```C
///   g_autoptr(GStrvBuilder) builder = g_strv_builder_new ();
///   g_strv_builder_add (builder, "hello");
///   g_strv_builder_add (builder, "world");
///   g_auto(GStrv) array = g_strv_builder_end (builder);
/// ```
/// 
///
/// The `StrvBuilderProtocol` protocol exposes the methods and properties of an underlying `GStrvBuilder` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StrvBuilder`.
/// Alternatively, use `StrvBuilderRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol StrvBuilderProtocol {
        /// Untyped pointer to the underlying `GStrvBuilder` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GStrvBuilder` instance.
    var _ptr: UnsafeMutablePointer<GStrvBuilder>! { get }

    /// Required Initialiser for types conforming to `StrvBuilderProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GStrvBuilder` is a method of easily building dynamically sized
/// NULL-terminated string arrays.
/// 
/// The following example shows how to build a two element array:
/// 
/// (C Language Example):
/// ```C
///   g_autoptr(GStrvBuilder) builder = g_strv_builder_new ();
///   g_strv_builder_add (builder, "hello");
///   g_strv_builder_add (builder, "world");
///   g_auto(GStrv) array = g_strv_builder_end (builder);
/// ```
/// 
///
/// The `StrvBuilderRef` type acts as a lightweight Swift reference to an underlying `GStrvBuilder` instance.
/// It exposes methods that can operate on this data type through `StrvBuilderProtocol` conformance.
/// Use `StrvBuilderRef` only as an `unowned` reference to an existing `GStrvBuilder` instance.
///
public struct StrvBuilderRef: StrvBuilderProtocol {
        /// Untyped pointer to the underlying `GStrvBuilder` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension StrvBuilderRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GStrvBuilder>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GStrvBuilder>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GStrvBuilder>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GStrvBuilder>?) {
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

    /// Reference intialiser for a related type that implements `StrvBuilderProtocol`
    @inlinable init<T: StrvBuilderProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StrvBuilderProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StrvBuilderProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StrvBuilderProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StrvBuilderProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StrvBuilderProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// `GStrvBuilder` is a method of easily building dynamically sized
/// NULL-terminated string arrays.
/// 
/// The following example shows how to build a two element array:
/// 
/// (C Language Example):
/// ```C
///   g_autoptr(GStrvBuilder) builder = g_strv_builder_new ();
///   g_strv_builder_add (builder, "hello");
///   g_strv_builder_add (builder, "world");
///   g_auto(GStrv) array = g_strv_builder_end (builder);
/// ```
/// 
///
/// The `StrvBuilder` type acts as a reference-counted owner of an underlying `GStrvBuilder` instance.
/// It provides the methods that can operate on this data type through `StrvBuilderProtocol` conformance.
/// Use `StrvBuilder` as a strong reference or owner of a `GStrvBuilder` instance.
///
open class StrvBuilder: StrvBuilderProtocol {
        /// Untyped pointer to the underlying `GStrvBuilder` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StrvBuilder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GStrvBuilder>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StrvBuilder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GStrvBuilder>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StrvBuilder` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StrvBuilder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StrvBuilder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GStrvBuilder>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StrvBuilder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GStrvBuilder>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GStrvBuilder`.
    /// i.e., ownership is transferred to the `StrvBuilder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GStrvBuilder>) {
        ptr = UnsafeMutableRawPointer(op)
        g_strv_builder_ref(ptr.assumingMemoryBound(to: GStrvBuilder.self))
    }

    /// Reference intialiser for a related type that implements `StrvBuilderProtocol`
    /// Will retain `GStrvBuilder`.
    /// - Parameter other: an instance of a related type that implements `StrvBuilderProtocol`
    @inlinable public init<T: StrvBuilderProtocol>(_ other: T) {
        ptr = other.ptr
        g_strv_builder_ref(ptr.assumingMemoryBound(to: GStrvBuilder.self))
    }

    /// Releases the underlying `GStrvBuilder` instance using `g_strv_builder_unref`.
    deinit {
        g_strv_builder_unref(ptr.assumingMemoryBound(to: GStrvBuilder.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StrvBuilderProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StrvBuilderProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_strv_builder_ref(ptr.assumingMemoryBound(to: GStrvBuilder.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StrvBuilderProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StrvBuilderProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_strv_builder_ref(ptr.assumingMemoryBound(to: GStrvBuilder.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StrvBuilderProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StrvBuilderProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_strv_builder_ref(ptr.assumingMemoryBound(to: GStrvBuilder.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StrvBuilderProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StrvBuilderProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_strv_builder_ref(ptr.assumingMemoryBound(to: GStrvBuilder.self))
    }



}

// MARK: no StrvBuilder properties

// MARK: no StrvBuilder signals

// MARK: StrvBuilder has no signals
// MARK: StrvBuilder Record: StrvBuilderProtocol extension (methods and fields)
public extension StrvBuilderProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GStrvBuilder` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GStrvBuilder>! { return ptr?.assumingMemoryBound(to: GStrvBuilder.self) }

    /// Add a string to the end of the array.
    /// 
    /// Since 2.68
    @inlinable func add(value: UnsafePointer<CChar>!) {
        
        g_strv_builder_add(_ptr, value)
        
    }


    // *** addMany() is not available because it has a varargs (...) parameter!


    /// Appends all the strings in the given vector to the builder.
    /// 
    /// Since 2.70
    @inlinable func addv(value: UnsafeMutablePointer<UnsafePointer<CChar>?>!) {
        
        g_strv_builder_addv(_ptr, value)
        
    }

    /// Ends the builder process and returns the constructed NULL-terminated string
    /// array. The returned value should be freed with `g_strfreev()` when no longer
    /// needed.
    @inlinable func end() -> GStrv! {
        let result = g_strv_builder_end(_ptr)
        let rv = result
        return rv
    }

    /// Atomically increments the reference count of `builder` by one.
    /// This function is thread-safe and may be called from any thread.
    @discardableResult @inlinable func ref() -> StrvBuilderRef! {
        let result = g_strv_builder_ref(_ptr)
        guard let rv = StrvBuilderRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Decreases the reference count on `builder`.
    /// 
    /// In the event that there are no more references, releases all memory
    /// associated with the `GStrvBuilder`.
    @inlinable func unref() {
        
        g_strv_builder_unref(_ptr)
        
    }


}



