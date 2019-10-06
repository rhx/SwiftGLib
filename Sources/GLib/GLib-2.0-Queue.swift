import CGLib

// MARK: - Queue Record

/// The `QueueProtocol` protocol exposes the methods and properties of an underlying `GQueue` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Queue`.
/// Alternatively, use `QueueRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Contains the public fields of a
/// [Queue][glib-Double-ended-Queues].
public protocol QueueProtocol {
    /// Untyped pointer to the underlying `GQueue` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GQueue` instance.
    var _ptr: UnsafeMutablePointer<GQueue> { get }
}

/// The `QueueRef` type acts as a lightweight Swift reference to an underlying `GQueue` instance.
/// It exposes methods that can operate on this data type through `QueueProtocol` conformance.
/// Use `QueueRef` only as an `unowned` reference to an existing `GQueue` instance.
///
/// Contains the public fields of a
/// [Queue][glib-Double-ended-Queues].
public struct QueueRef: QueueProtocol {
    /// Untyped pointer to the underlying `GQueue` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension QueueRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GQueue>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `QueueProtocol`
    init<T: QueueProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `QueueProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `QueueProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `QueueProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `QueueProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `QueueProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Queue` type acts as an owner of an underlying `GQueue` instance.
/// It provides the methods that can operate on this data type through `QueueProtocol` conformance.
/// Use `Queue` as a strong reference or owner of a `GQueue` instance.
///
/// Contains the public fields of a
/// [Queue][glib-Double-ended-Queues].
open class Queue: QueueProtocol {
    /// Untyped pointer to the underlying `GQueue` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Queue` instance.
    public init(_ op: UnsafeMutablePointer<GQueue>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `QueueProtocol`
    /// `GQueue` does not allow reference counting.
    public convenience init<T: QueueProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GQueue, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GQueue`.
    deinit {
        // no reference counting for GQueue, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `QueueProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GQueue.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `QueueProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GQueue.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `QueueProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GQueue.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `QueueProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GQueue>(opaquePointer))
    }



}

// MARK: - no Queue properties

// MARK: - no signals


public extension QueueProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GQueue` instance.
    var _ptr: UnsafeMutablePointer<GQueue> { return ptr.assumingMemoryBound(to: GQueue.self) }

    /// Removes all the elements in `queue`. If queue elements contain
    /// dynamically-allocated memory, they should be freed first.
    func clear() {
        g_queue_clear(cast(_ptr))
    
    }

    /// Convenience method, which frees all the memory used by a `GQueue`,
    /// and calls the provided `free_func` on each item in the `GQueue`.
    func clearFull(freeFunc free_func: @escaping DestroyNotify) {
        g_queue_clear_full(cast(_ptr), free_func)
    
    }

    /// Copies a `queue`. Note that is a shallow copy. If the elements in the
    /// queue consist of pointers to data, the pointers are copied, but the
    /// actual data is not.
    func copy() -> UnsafeMutablePointer<GQueue>! {
        let rv = g_queue_copy(cast(_ptr))
        return cast(rv)
    }

    /// Removes `link_` from `queue` and frees it.
    /// 
    /// `link_` must be part of `queue`.
    func deleteLink(link_: ListProtocol) {
        g_queue_delete_link(cast(_ptr), cast(link_.ptr))
    
    }

    /// Finds the first link in `queue` which contains `data`.
    func find(data: gconstpointer) -> UnsafeMutablePointer<GList>! {
        let rv = g_queue_find(cast(_ptr), cast(data))
        return cast(rv)
    }

    /// Finds an element in a `GQueue`, using a supplied function to find the
    /// desired element. It iterates over the queue, calling the given function
    /// which should return 0 when the desired element is found. The function
    /// takes two gconstpointer arguments, the `GQueue` element's data as the
    /// first argument and the given user data as the second argument.
    func findCustom(data: gconstpointer, func_: @escaping CompareFunc) -> UnsafeMutablePointer<GList>! {
        let rv = g_queue_find_custom(cast(_ptr), cast(data), func_)
        return cast(rv)
    }

    /// Calls `func` for each element in the queue passing `user_data` to the
    /// function.
    /// 
    /// It is safe for `func` to remove the element from `queue`, but it must
    /// not modify any part of the queue after that element.
    func foreach(func_: @escaping Func, userData user_data: UnsafeMutableRawPointer) {
        g_queue_foreach(cast(_ptr), func_, cast(user_data))
    
    }

    /// Frees the memory allocated for the `GQueue`. Only call this function
    /// if `queue` was created with `g_queue_new()`. If queue elements contain
    /// dynamically-allocated memory, they should be freed first.
    /// 
    /// If queue elements contain dynamically-allocated memory, you should
    /// either use `g_queue_free_full()` or free them manually first.
    func free() {
        g_queue_free(cast(_ptr))
    
    }

    /// Convenience method, which frees all the memory used by a `GQueue`,
    /// and calls the specified destroy function on every element's data.
    /// 
    /// `free_func` should not modify the queue (eg, by removing the freed
    /// element from it).
    func freeFull(freeFunc free_func: @escaping DestroyNotify) {
        g_queue_free_full(cast(_ptr), free_func)
    
    }

    /// Returns the number of items in `queue`.
    func getLength() -> CUnsignedInt {
        let rv = g_queue_get_length(cast(_ptr))
        return CUnsignedInt(rv)
    }

    /// Returns the position of the first element in `queue` which contains `data`.
    func index(data: gconstpointer) -> CInt {
        let rv = g_queue_index(cast(_ptr), cast(data))
        return CInt(rv)
    }

    /// A statically-allocated `GQueue` must be initialized with this function
    /// before it can be used. Alternatively you can initialize it with
    /// `G_QUEUE_INIT`. It is not necessary to initialize queues created with
    /// `g_queue_new()`.
    func init_() {
        g_queue_init(cast(_ptr))
    
    }

    /// Inserts `data` into `queue` after `sibling`.
    /// 
    /// `sibling` must be part of `queue`. Since GLib 2.44 a `nil` sibling pushes the
    /// data at the head of the queue.
    func insertAfter(sibling: ListProtocol, data: UnsafeMutableRawPointer) {
        g_queue_insert_after(cast(_ptr), cast(sibling.ptr), cast(data))
    
    }

    /// Inserts `link_` into `queue` after `sibling`.
    /// 
    /// `sibling` must be part of `queue`.
    func insertAfterLink(sibling: ListProtocol, link_: ListProtocol) {
        g_queue_insert_after_link(cast(_ptr), cast(sibling.ptr), cast(link_.ptr))
    
    }

    /// Inserts `data` into `queue` before `sibling`.
    /// 
    /// `sibling` must be part of `queue`. Since GLib 2.44 a `nil` sibling pushes the
    /// data at the tail of the queue.
    func insertBefore(sibling: ListProtocol, data: UnsafeMutableRawPointer) {
        g_queue_insert_before(cast(_ptr), cast(sibling.ptr), cast(data))
    
    }

    /// Inserts `link_` into `queue` before `sibling`.
    /// 
    /// `sibling` must be part of `queue`.
    func insertBeforeLink(sibling: ListProtocol, link_: ListProtocol) {
        g_queue_insert_before_link(cast(_ptr), cast(sibling.ptr), cast(link_.ptr))
    
    }

    /// Inserts `data` into `queue` using `func` to determine the new position.
    func insertSorted(data: UnsafeMutableRawPointer, func_: @escaping CompareDataFunc, userData user_data: UnsafeMutableRawPointer) {
        g_queue_insert_sorted(cast(_ptr), cast(data), func_, cast(user_data))
    
    }

    /// Returns the position of `link_` in `queue`.
    func linkIndex(link_: ListProtocol) -> CInt {
        let rv = g_queue_link_index(cast(_ptr), cast(link_.ptr))
        return CInt(rv)
    }

    /// Returns the first element of the queue.
    func peekHead() -> UnsafeMutableRawPointer! {
        let rv = g_queue_peek_head(cast(_ptr))
        return cast(rv)
    }

    /// Returns the first link in `queue`.
    func peekHeadLink() -> UnsafeMutablePointer<GList>! {
        let rv = g_queue_peek_head_link(cast(_ptr))
        return cast(rv)
    }

    /// Returns the `n`'th element of `queue`.
    func peekNth(n: CUnsignedInt) -> UnsafeMutableRawPointer! {
        let rv = g_queue_peek_nth(cast(_ptr), guint(n))
        return cast(rv)
    }

    /// Returns the link at the given position
    func peekNthLink(n: CUnsignedInt) -> UnsafeMutablePointer<GList>! {
        let rv = g_queue_peek_nth_link(cast(_ptr), guint(n))
        return cast(rv)
    }

    /// Returns the last element of the queue.
    func peekTail() -> UnsafeMutableRawPointer! {
        let rv = g_queue_peek_tail(cast(_ptr))
        return cast(rv)
    }

    /// Returns the last link in `queue`.
    func peekTailLink() -> UnsafeMutablePointer<GList>! {
        let rv = g_queue_peek_tail_link(cast(_ptr))
        return cast(rv)
    }

    /// Removes the first element of the queue and returns its data.
    func popHead() -> UnsafeMutableRawPointer! {
        let rv = g_queue_pop_head(cast(_ptr))
        return cast(rv)
    }

    /// Removes and returns the first element of the queue.
    func popHeadLink() -> UnsafeMutablePointer<GList>! {
        let rv = g_queue_pop_head_link(cast(_ptr))
        return cast(rv)
    }

    /// Removes the `n`'th element of `queue` and returns its data.
    func popNth(n: CUnsignedInt) -> UnsafeMutableRawPointer! {
        let rv = g_queue_pop_nth(cast(_ptr), guint(n))
        return cast(rv)
    }

    /// Removes and returns the link at the given position.
    func popNthLink(n: CUnsignedInt) -> UnsafeMutablePointer<GList>! {
        let rv = g_queue_pop_nth_link(cast(_ptr), guint(n))
        return cast(rv)
    }

    /// Removes the last element of the queue and returns its data.
    func popTail() -> UnsafeMutableRawPointer! {
        let rv = g_queue_pop_tail(cast(_ptr))
        return cast(rv)
    }

    /// Removes and returns the last element of the queue.
    func popTailLink() -> UnsafeMutablePointer<GList>! {
        let rv = g_queue_pop_tail_link(cast(_ptr))
        return cast(rv)
    }

    /// Adds a new element at the head of the queue.
    func pushHead(data: UnsafeMutableRawPointer) {
        g_queue_push_head(cast(_ptr), cast(data))
    
    }

    /// Adds a new element at the head of the queue.
    func pushHeadLink(link_: ListProtocol) {
        g_queue_push_head_link(cast(_ptr), cast(link_.ptr))
    
    }

    /// Inserts a new element into `queue` at the given position.
    func pushNth(data: UnsafeMutableRawPointer, n: CInt) {
        g_queue_push_nth(cast(_ptr), cast(data), gint(n))
    
    }

    /// Inserts `link` into `queue` at the given position.
    func pushNthLink(n: CInt, link_: ListProtocol) {
        g_queue_push_nth_link(cast(_ptr), gint(n), cast(link_.ptr))
    
    }

    /// Adds a new element at the tail of the queue.
    func pushTail(data: UnsafeMutableRawPointer) {
        g_queue_push_tail(cast(_ptr), cast(data))
    
    }

    /// Adds a new element at the tail of the queue.
    func pushTailLink(link_: ListProtocol) {
        g_queue_push_tail_link(cast(_ptr), cast(link_.ptr))
    
    }

    /// Removes the first element in `queue` that contains `data`.
    func remove(data: gconstpointer) -> Bool {
        let rv = g_queue_remove(cast(_ptr), cast(data))
        return Bool(rv != 0)
    }

    /// Remove all elements whose data equals `data` from `queue`.
    func removeAll(data: gconstpointer) -> CUnsignedInt {
        let rv = g_queue_remove_all(cast(_ptr), cast(data))
        return CUnsignedInt(rv)
    }

    /// Reverses the order of the items in `queue`.
    func reverse() {
        g_queue_reverse(cast(_ptr))
    
    }

    /// Sorts `queue` using `compare_func`.
    func sort(compareFunc compare_func: @escaping CompareDataFunc, userData user_data: UnsafeMutableRawPointer) {
        g_queue_sort(cast(_ptr), compare_func, cast(user_data))
    
    }

    /// Unlinks `link_` so that it will no longer be part of `queue`.
    /// The link is not freed.
    /// 
    /// `link_` must be part of `queue`.
    func unlink(link_: ListProtocol) {
        g_queue_unlink(cast(_ptr), cast(link_.ptr))
    
    }
    /// Returns `true` if the queue is empty.
    var isEmpty: Bool {
        /// Returns `true` if the queue is empty.
        get {
            let rv = g_queue_is_empty(cast(_ptr))
            return Bool(rv != 0)
        }
    }

    /// Returns the number of items in `queue`.
    var length: CUnsignedInt {
        /// Returns the number of items in `queue`.
        get {
            let rv = g_queue_get_length(cast(_ptr))
            return CUnsignedInt(rv)
        }
    }
}



