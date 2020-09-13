import CGLib

// MARK: - AsyncQueue Record

/// The `AsyncQueueProtocol` protocol exposes the methods and properties of an underlying `GAsyncQueue` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AsyncQueue`.
/// Alternatively, use `AsyncQueueRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The GAsyncQueue struct is an opaque data structure which represents
/// an asynchronous queue. It should only be accessed through the
/// g_async_queue_* functions.
public protocol AsyncQueueProtocol {
        /// Untyped pointer to the underlying `GAsyncQueue` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GAsyncQueue` instance.
    var _ptr: UnsafeMutablePointer<GAsyncQueue>! { get }

}

/// The `AsyncQueueRef` type acts as a lightweight Swift reference to an underlying `GAsyncQueue` instance.
/// It exposes methods that can operate on this data type through `AsyncQueueProtocol` conformance.
/// Use `AsyncQueueRef` only as an `unowned` reference to an existing `GAsyncQueue` instance.
///
/// The GAsyncQueue struct is an opaque data structure which represents
/// an asynchronous queue. It should only be accessed through the
/// g_async_queue_* functions.
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
    @inlinable static func new(full itemFreeFunc: GDestroyNotify?) -> AsyncQueueRef! {
        guard let rv = AsyncQueueRef(gconstpointer: gconstpointer(g_async_queue_new_full(itemFreeFunc))) else { return nil }
        return rv
    }
}

/// The `AsyncQueue` type acts as a reference-counted owner of an underlying `GAsyncQueue` instance.
/// It provides the methods that can operate on this data type through `AsyncQueueProtocol` conformance.
/// Use `AsyncQueue` as a strong reference or owner of a `GAsyncQueue` instance.
///
/// The GAsyncQueue struct is an opaque data structure which represents
/// an asynchronous queue. It should only be accessed through the
/// g_async_queue_* functions.
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
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
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
    @inlinable public static func new(full itemFreeFunc: GDestroyNotify?) -> AsyncQueue! {
        guard let rv = AsyncQueue(gconstpointer: gconstpointer(g_async_queue_new_full(itemFreeFunc))) else { return nil }
        return rv
    }

}

// MARK: no AsyncQueue properties

// MARK: no AsyncQueue signals


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
        let rv = Int(g_async_queue_length(_ptr))
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
        let rv = Int(g_async_queue_length_unlocked(_ptr))
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
    @inlinable func pop() -> gpointer! {
        let rv = g_async_queue_pop(_ptr)
        return rv
    }

    /// Pops data from the `queue`. If `queue` is empty, this function
    /// blocks until data becomes available.
    /// 
    /// This function must be called while holding the `queue`'s lock.
    @inlinable func popUnlocked() -> gpointer! {
        let rv = g_async_queue_pop_unlocked(_ptr)
        return rv
    }

    /// Pushes the `data` into the `queue`. `data` must not be `nil`.
    @inlinable func push(data: gpointer! = nil) {
        g_async_queue_push(_ptr, data)
    
    }

    /// Pushes the `item` into the `queue`. `item` must not be `nil`.
    /// In contrast to `g_async_queue_push()`, this function
    /// pushes the new item ahead of the items already in the queue,
    /// so that it will be the next one to be popped off the queue.
    @inlinable func pushFront(item: gpointer! = nil) {
        g_async_queue_push_front(_ptr, item)
    
    }

    /// Pushes the `item` into the `queue`. `item` must not be `nil`.
    /// In contrast to `g_async_queue_push_unlocked()`, this function
    /// pushes the new item ahead of the items already in the queue,
    /// so that it will be the next one to be popped off the queue.
    /// 
    /// This function must be called while holding the `queue`'s lock.
    @inlinable func pushFrontUnlocked(item: gpointer! = nil) {
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
    @inlinable func pushSorted(data: gpointer! = nil, `func`: GCompareDataFunc?, userData: gpointer! = nil) {
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
    @inlinable func pushSortedUnlocked(data: gpointer! = nil, `func`: GCompareDataFunc?, userData: gpointer! = nil) {
        g_async_queue_push_sorted_unlocked(_ptr, data, `func`, userData)
    
    }

    /// Pushes the `data` into the `queue`. `data` must not be `nil`.
    /// 
    /// This function must be called while holding the `queue`'s lock.
    @inlinable func pushUnlocked(data: gpointer! = nil) {
        g_async_queue_push_unlocked(_ptr, data)
    
    }

    /// Increases the reference count of the asynchronous `queue` by 1.
    /// You do not need to hold the lock to call this function.
    @discardableResult @inlinable func ref() -> AsyncQueueRef! {
        guard let rv = AsyncQueueRef(gconstpointer: gconstpointer(g_async_queue_ref(_ptr))) else { return nil }
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
    @inlinable func remove(item: gpointer! = nil) -> Bool {
        let rv = ((g_async_queue_remove(_ptr, item)) != 0)
        return rv
    }

    /// Remove an item from the queue.
    /// 
    /// This function must be called while holding the `queue`'s lock.
    @inlinable func removeUnlocked(item: gpointer! = nil) -> Bool {
        let rv = ((g_async_queue_remove_unlocked(_ptr, item)) != 0)
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
    @inlinable func sort(`func`: GCompareDataFunc?, userData: gpointer! = nil) {
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
    @inlinable func sortUnlocked(`func`: GCompareDataFunc?, userData: gpointer! = nil) {
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
    @available(*, deprecated) @inlinable func timedPop<TimeValT: TimeValProtocol>(endTime: TimeValT) -> gpointer! {
        let rv = g_async_queue_timed_pop(_ptr, endTime._ptr)
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
    @available(*, deprecated) @inlinable func timedPopUnlocked<TimeValT: TimeValProtocol>(endTime: TimeValT) -> gpointer! {
        let rv = g_async_queue_timed_pop_unlocked(_ptr, endTime._ptr)
        return rv
    }

    /// Pops data from the `queue`. If the queue is empty, blocks for
    /// `timeout` microseconds, or until data becomes available.
    /// 
    /// If no data is received before the timeout, `nil` is returned.
    @inlinable func timeoutPop(timeout: guint64) -> gpointer! {
        let rv = g_async_queue_timeout_pop(_ptr, timeout)
        return rv
    }

    /// Pops data from the `queue`. If the queue is empty, blocks for
    /// `timeout` microseconds, or until data becomes available.
    /// 
    /// If no data is received before the timeout, `nil` is returned.
    /// 
    /// This function must be called while holding the `queue`'s lock.
    @inlinable func timeoutPopUnlocked(timeout: guint64) -> gpointer! {
        let rv = g_async_queue_timeout_pop_unlocked(_ptr, timeout)
        return rv
    }

    /// Tries to pop data from the `queue`. If no data is available,
    /// `nil` is returned.
    @inlinable func tryPop() -> gpointer! {
        let rv = g_async_queue_try_pop(_ptr)
        return rv
    }

    /// Tries to pop data from the `queue`. If no data is available,
    /// `nil` is returned.
    /// 
    /// This function must be called while holding the `queue`'s lock.
    @inlinable func tryPopUnlocked() -> gpointer! {
        let rv = g_async_queue_try_pop_unlocked(_ptr)
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



