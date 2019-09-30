import CGLib

// MARK: - SList Record

/// The `SListProtocol` protocol exposes the methods and properties of an underlying `GSList` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SList`.
/// Alternatively, use `SListRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GSList` struct is used for each element in the singly-linked
/// list.
public protocol SListProtocol {
    /// Untyped pointer to the underlying `GSList` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSList` instance.
    var _ptr: UnsafeMutablePointer<GSList> { get }
}

/// The `SListRef` type acts as a lightweight Swift reference to an underlying `GSList` instance.
/// It exposes methods that can operate on this data type through `SListProtocol` conformance.
/// Use `SListRef` only as an `unowned` reference to an existing `GSList` instance.
///
/// The `GSList` struct is used for each element in the singly-linked
/// list.
public struct SListRef: SListProtocol {
    /// Untyped pointer to the underlying `GSList` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SListRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSList>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SListProtocol`
    init<T: SListProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SListProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SListProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SListProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SListProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SListProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Allocates space for one `GSList` element. It is called by the
    /// g_slist_append(), g_slist_prepend(), g_slist_insert() and
    /// g_slist_insert_sorted() functions and so is rarely used on its own.
    static func alloc() -> SListRef! {
        let rv = g_slist_alloc()
        return rv.map { SListRef(cast($0)) }
    }
}

/// The `SList` type acts as an owner of an underlying `GSList` instance.
/// It provides the methods that can operate on this data type through `SListProtocol` conformance.
/// Use `SList` as a strong reference or owner of a `GSList` instance.
///
/// The `GSList` struct is used for each element in the singly-linked
/// list.
open class SList: SListProtocol {
    /// Untyped pointer to the underlying `GSList` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `SList` instance.
    public init(_ op: UnsafeMutablePointer<GSList>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `SListProtocol`
    /// `GSList` does not allow reference counting.
    public convenience init<T: SListProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GSList, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GSList`.
    deinit {
        // no reference counting for GSList, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SListProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GSList.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SListProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GSList.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SListProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GSList.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SListProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GSList>(opaquePointer))
    }


    /// Allocates space for one `GSList` element. It is called by the
    /// g_slist_append(), g_slist_prepend(), g_slist_insert() and
    /// g_slist_insert_sorted() functions and so is rarely used on its own.
    public static func alloc() -> SList! {
        let rv = g_slist_alloc()
        return rv.map { SList(cast($0)) }
    }

}

// MARK: - no SList properties

// MARK: - no signals


public extension SListProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSList` instance.
    var _ptr: UnsafeMutablePointer<GSList> { return ptr.assumingMemoryBound(to: GSList.self) }

    /// Adds a new element on to the end of the list.
    /// 
    /// The return value is the new start of the list, which may
    /// have changed, so make sure you store the new value.
    /// 
    /// Note that g_slist_append() has to traverse the entire list
    /// to find the end, which is inefficient when adding multiple
    /// elements. A common idiom to avoid the inefficiency is to prepend
    /// the elements and reverse the list when all elements have been added.
    /// 
    /// |[<!-- language="C" -->
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
    /// ]|
    func append(data: UnsafeMutableRawPointer) -> UnsafeMutablePointer<GSList>! {
        let rv = g_slist_append(cast(_ptr), cast(data))
        return cast(rv)
    }

    /// Adds the second `GSList` onto the end of the first `GSList`.
    /// Note that the elements of the second `GSList` are not copied.
    /// They are used directly.
    func concat(list2: SListProtocol) -> UnsafeMutablePointer<GSList>! {
        let rv = g_slist_concat(cast(_ptr), cast(list2.ptr))
        return cast(rv)
    }

    /// Copies a `GSList`.
    /// 
    /// Note that this is a "shallow" copy. If the list elements
    /// consist of pointers to data, the pointers are copied but
    /// the actual data isn't. See g_slist_copy_deep() if you need
    /// to copy the data as well.
    func copy() -> UnsafeMutablePointer<GSList>! {
        let rv = g_slist_copy(cast(_ptr))
        return cast(rv)
    }

    /// Makes a full (deep) copy of a `GSList`.
    /// 
    /// In contrast with g_slist_copy(), this function uses `func` to make a copy of
    /// each list element, in addition to copying the list container itself.
    /// 
    /// `func`, as a `GCopyFunc`, takes two arguments, the data to be copied
    /// and a `user_data` pointer. On common processor architectures, it's safe to
    /// pass `nil` as `user_data` if the copy function takes only one argument. You
    /// may get compiler warnings from this though if compiling with GCC’s
    /// `-Wcast-function-type` warning.
    /// 
    /// For instance, if `list` holds a list of GObjects, you can do:
    /// |[<!-- language="C" -->
    /// another_list = g_slist_copy_deep (list, (GCopyFunc) g_object_ref, NULL);
    /// ]|
    /// 
    /// And, to entirely free the new list, you could do:
    /// |[<!-- language="C" -->
    /// g_slist_free_full (another_list, g_object_unref);
    /// ]|
    func copyDeep(func_: @escaping CopyFunc, userData user_data: UnsafeMutableRawPointer) -> UnsafeMutablePointer<GSList>! {
        let rv = g_slist_copy_deep(cast(_ptr), func_, cast(user_data))
        return cast(rv)
    }

    /// Removes the node link_ from the list and frees it.
    /// Compare this to g_slist_remove_link() which removes the node
    /// without freeing it.
    /// 
    /// Removing arbitrary nodes from a singly-linked list requires time
    /// that is proportional to the length of the list (ie. O(n)). If you
    /// find yourself using g_slist_delete_link() frequently, you should
    /// consider a different data structure, such as the doubly-linked
    /// `GList`.
    func deleteLink(link_: SListProtocol) -> UnsafeMutablePointer<GSList>! {
        let rv = g_slist_delete_link(cast(_ptr), cast(link_.ptr))
        return cast(rv)
    }

    /// Finds the element in a `GSList` which
    /// contains the given data.
    func find(data: gconstpointer) -> UnsafeMutablePointer<GSList>! {
        let rv = g_slist_find(cast(_ptr), cast(data))
        return cast(rv)
    }

    /// Finds an element in a `GSList`, using a supplied function to
    /// find the desired element. It iterates over the list, calling
    /// the given function which should return 0 when the desired
    /// element is found. The function takes two `gconstpointer` arguments,
    /// the `GSList` element's data as the first argument and the
    /// given user data.
    func findCustom(data: gconstpointer, func_: @escaping CompareFunc) -> UnsafeMutablePointer<GSList>! {
        let rv = g_slist_find_custom(cast(_ptr), cast(data), func_)
        return cast(rv)
    }

    /// Calls a function for each element of a `GSList`.
    /// 
    /// It is safe for `func` to remove the element from `list`, but it must
    /// not modify any part of the list after that element.
    func foreach(func_: @escaping Func, userData user_data: UnsafeMutableRawPointer) {
        g_slist_foreach(cast(_ptr), func_, cast(user_data))
    
    }

    /// Frees all of the memory used by a `GSList`.
    /// The freed elements are returned to the slice allocator.
    /// 
    /// If list elements contain dynamically-allocated memory,
    /// you should either use g_slist_free_full() or free them manually
    /// first.
    func free() {
        g_slist_free(cast(_ptr))
    
    }

    /// Frees one `GSList` element.
    /// It is usually used after g_slist_remove_link().
    func free1() {
        g_slist_free_1(cast(_ptr))
    
    }

    /// Convenience method, which frees all the memory used by a `GSList`, and
    /// calls the specified destroy function on every element's data.
    /// 
    /// `free_func` must not modify the list (eg, by removing the freed
    /// element from it).
    func freeFull(freeFunc free_func: @escaping DestroyNotify) {
        g_slist_free_full(cast(_ptr), free_func)
    
    }

    /// Gets the position of the element containing
    /// the given data (starting from 0).
    func index(data: gconstpointer) -> CInt {
        let rv = g_slist_index(cast(_ptr), cast(data))
        return CInt(rv)
    }

    /// Inserts a new element into the list at the given position.
    func insert(data: UnsafeMutableRawPointer, position: CInt) -> UnsafeMutablePointer<GSList>! {
        let rv = g_slist_insert(cast(_ptr), cast(data), gint(position))
        return cast(rv)
    }

    /// Inserts a node before `sibling` containing `data`.
    func insertBefore(sibling: SListProtocol, data: UnsafeMutableRawPointer) -> UnsafeMutablePointer<GSList>! {
        let rv = g_slist_insert_before(cast(_ptr), cast(sibling.ptr), cast(data))
        return cast(rv)
    }

    /// Inserts a new element into the list, using the given
    /// comparison function to determine its position.
    func insertSorted(data: UnsafeMutableRawPointer, func_: @escaping CompareFunc) -> UnsafeMutablePointer<GSList>! {
        let rv = g_slist_insert_sorted(cast(_ptr), cast(data), func_)
        return cast(rv)
    }

    /// Inserts a new element into the list, using the given
    /// comparison function to determine its position.
    func insertSortedWith(data: UnsafeMutableRawPointer, func_: @escaping CompareDataFunc, userData user_data: UnsafeMutableRawPointer) -> UnsafeMutablePointer<GSList>! {
        let rv = g_slist_insert_sorted_with_data(cast(_ptr), cast(data), func_, cast(user_data))
        return cast(rv)
    }

    /// Gets the last element in a `GSList`.
    /// 
    /// This function iterates over the whole list.
    func last() -> UnsafeMutablePointer<GSList>! {
        let rv = g_slist_last(cast(_ptr))
        return cast(rv)
    }

    /// Gets the number of elements in a `GSList`.
    /// 
    /// This function iterates over the whole list to
    /// count its elements. To check whether the list is non-empty, it is faster to
    /// check `list` against `nil`.
    func length() -> CUnsignedInt {
        let rv = g_slist_length(cast(_ptr))
        return CUnsignedInt(rv)
    }

    /// Gets the element at the given position in a `GSList`.
    func nth(n: CUnsignedInt) -> UnsafeMutablePointer<GSList>! {
        let rv = g_slist_nth(cast(_ptr), guint(n))
        return cast(rv)
    }

    /// Gets the data of the element at the given position.
    func nthData(n: CUnsignedInt) -> UnsafeMutableRawPointer! {
        let rv = g_slist_nth_data(cast(_ptr), guint(n))
        return cast(rv)
    }

    /// Gets the position of the given element
    /// in the `GSList` (starting from 0).
    func position(llink: SListProtocol) -> CInt {
        let rv = g_slist_position(cast(_ptr), cast(llink.ptr))
        return CInt(rv)
    }

    /// Adds a new element on to the start of the list.
    /// 
    /// The return value is the new start of the list, which
    /// may have changed, so make sure you store the new value.
    /// 
    /// |[<!-- language="C" -->
    /// // Notice that it is initialized to the empty list.
    /// GSList *list = NULL;
    /// list = g_slist_prepend (list, "last");
    /// list = g_slist_prepend (list, "first");
    /// ]|
    func prepend(data: UnsafeMutableRawPointer) -> UnsafeMutablePointer<GSList>! {
        let rv = g_slist_prepend(cast(_ptr), cast(data))
        return cast(rv)
    }

    /// Removes an element from a `GSList`.
    /// If two elements contain the same data, only the first is removed.
    /// If none of the elements contain the data, the `GSList` is unchanged.
    func remove(data: gconstpointer) -> UnsafeMutablePointer<GSList>! {
        let rv = g_slist_remove(cast(_ptr), cast(data))
        return cast(rv)
    }

    /// Removes all list nodes with data equal to `data`.
    /// Returns the new head of the list. Contrast with
    /// g_slist_remove() which removes only the first node
    /// matching the given data.
    func removeAll(data: gconstpointer) -> UnsafeMutablePointer<GSList>! {
        let rv = g_slist_remove_all(cast(_ptr), cast(data))
        return cast(rv)
    }

    /// Removes an element from a `GSList`, without
    /// freeing the element. The removed element's next
    /// link is set to `nil`, so that it becomes a
    /// self-contained list with one element.
    /// 
    /// Removing arbitrary nodes from a singly-linked list
    /// requires time that is proportional to the length of the list
    /// (ie. O(n)). If you find yourself using g_slist_remove_link()
    /// frequently, you should consider a different data structure,
    /// such as the doubly-linked `GList`.
    func removeLink(link_: SListProtocol) -> UnsafeMutablePointer<GSList>! {
        let rv = g_slist_remove_link(cast(_ptr), cast(link_.ptr))
        return cast(rv)
    }

    /// Reverses a `GSList`.
    func reverse() -> UnsafeMutablePointer<GSList>! {
        let rv = g_slist_reverse(cast(_ptr))
        return cast(rv)
    }

    /// Sorts a `GSList` using the given comparison function. The algorithm
    /// used is a stable sort.
    func sort(compareFunc compare_func: @escaping CompareFunc) -> UnsafeMutablePointer<GSList>! {
        let rv = g_slist_sort(cast(_ptr), compare_func)
        return cast(rv)
    }

    /// Like g_slist_sort(), but the sort function accepts a user data argument.
    func sortWithData(compareFunc compare_func: @escaping CompareDataFunc, userData user_data: UnsafeMutableRawPointer) -> UnsafeMutablePointer<GSList>! {
        let rv = g_slist_sort_with_data(cast(_ptr), compare_func, cast(user_data))
        return cast(rv)
    }
}



