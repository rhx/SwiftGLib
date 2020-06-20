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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GAsyncQueue` instance.
    var _ptr: UnsafeMutablePointer<GAsyncQueue> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension AsyncQueueRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GAsyncQueue>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AsyncQueueProtocol`
    init<T: AsyncQueueProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncQueueProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncQueueProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncQueueProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncQueueProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncQueueProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new asynchronous queue and sets up a destroy notify
    /// function that is used to free any remaining queue items when
    /// the queue is destroyed after the final unref.
    static func new(full item_free_func: @escaping DestroyNotify) -> AsyncQueueRef! {
        let rv: UnsafeMutablePointer<GAsyncQueue>! = cast(g_async_queue_new_full(item_free_func))
        return rv.map { AsyncQueueRef(cast($0)) }
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AsyncQueue` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GAsyncQueue>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GAsyncQueue`.
    /// i.e., ownership is transferred to the `AsyncQueue` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GAsyncQueue>) {
        ptr = UnsafeMutableRawPointer(op)
        g_async_queue_ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `AsyncQueueProtocol`
    /// Will retain `GAsyncQueue`.
    /// - Parameter other: an instance of a related type that implements `AsyncQueueProtocol`
    public init<T: AsyncQueueProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        g_async_queue_ref(cast(_ptr))
    }

    /// Releases the underlying `GAsyncQueue` instance using `g_async_queue_unref`.
    deinit {
        g_async_queue_unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncQueueProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncQueueProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_async_queue_ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncQueueProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncQueueProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_async_queue_ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncQueueProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncQueueProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_async_queue_ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncQueueProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncQueueProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_async_queue_ref(cast(_ptr))
    }


    /// Creates a new asynchronous queue and sets up a destroy notify
    /// function that is used to free any remaining queue items when
    /// the queue is destroyed after the final unref.
    public static func new(full item_free_func: @escaping DestroyNotify) -> AsyncQueue! {
        let rv: UnsafeMutablePointer<GAsyncQueue>! = cast(g_async_queue_new_full(item_free_func))
        return rv.map { AsyncQueue(cast($0)) }
    }

}

// MARK: no AsyncQueue properties

// MARK: no AsyncQueue signals


// MARK: AsyncQueue Record: AsyncQueueProtocol extension (methods and fields)
public extension AsyncQueueProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GAsyncQueue` instance.
    var _ptr: UnsafeMutablePointer<GAsyncQueue> { return ptr.assumingMemoryBound(to: GAsyncQueue.self) }

    /// Returns the length of the queue.
    /// 
    /// Actually this function returns the number of data items in
    /// the queue minus the number of waiting threads, so a negative
    /// value means waiting threads, and a positive value means available
    /// entries in the `queue`. A return value of 0 could mean n entries
    /// in the queue and n threads waiting. This can happen due to locking
    /// of the queue or due to scheduling.
    func length() -> Int {
        let rv: Int = cast(g_async_queue_length(cast(_ptr)))
        return Int(rv)
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
    func lengthUnlocked() -> Int {
        let rv: Int = cast(g_async_queue_length_unlocked(cast(_ptr)))
        return Int(rv)
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
    func lock() {
        g_async_queue_lock(cast(_ptr))
    
    }

    /// Pops data from the `queue`. If `queue` is empty, this function
    /// blocks until data becomes available.
    func pop() -> UnsafeMutableRawPointer! {
        let rv: UnsafeMutableRawPointer! = cast(g_async_queue_pop(cast(_ptr)))
        return cast(rv)
    }

    /// Pops data from the `queue`. If `queue` is empty, this function
    /// blocks until data becomes available.
    /// 
    /// This function must be called while holding the `queue`'s lock.
    func popUnlocked() -> UnsafeMutableRawPointer! {
        let rv: UnsafeMutableRawPointer! = cast(g_async_queue_pop_unlocked(cast(_ptr)))
        return cast(rv)
    }

    /// Pushes the `data` into the `queue`. `data` must not be `nil`.
    func push(data: UnsafeMutableRawPointer) {
        g_async_queue_push(cast(_ptr), cast(data))
    
    }

    /// Pushes the `item` into the `queue`. `item` must not be `nil`.
    /// In contrast to `g_async_queue_push()`, this function
    /// pushes the new item ahead of the items already in the queue,
    /// so that it will be the next one to be popped off the queue.
    func pushFront(item: UnsafeMutableRawPointer) {
        g_async_queue_push_front(cast(_ptr), cast(item))
    
    }

    /// Pushes the `item` into the `queue`. `item` must not be `nil`.
    /// In contrast to `g_async_queue_push_unlocked()`, this function
    /// pushes the new item ahead of the items already in the queue,
    /// so that it will be the next one to be popped off the queue.
    /// 
    /// This function must be called while holding the `queue`'s lock.
    func pushFrontUnlocked(item: UnsafeMutableRawPointer) {
        g_async_queue_push_front_unlocked(cast(_ptr), cast(item))
    
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
    func pushSorted(data: UnsafeMutableRawPointer, func_: @escaping CompareDataFunc, userData user_data: UnsafeMutableRawPointer) {
        g_async_queue_push_sorted(cast(_ptr), cast(data), func_, cast(user_data))
    
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
    func pushSortedUnlocked(data: UnsafeMutableRawPointer, func_: @escaping CompareDataFunc, userData user_data: UnsafeMutableRawPointer) {
        g_async_queue_push_sorted_unlocked(cast(_ptr), cast(data), func_, cast(user_data))
    
    }

    /// Pushes the `data` into the `queue`. `data` must not be `nil`.
    /// 
    /// This function must be called while holding the `queue`'s lock.
    func pushUnlocked(data: UnsafeMutableRawPointer) {
        g_async_queue_push_unlocked(cast(_ptr), cast(data))
    
    }

    /// Increases the reference count of the asynchronous `queue` by 1.
    /// You do not need to hold the lock to call this function.
    @discardableResult func ref() -> UnsafeMutablePointer<GAsyncQueue>! {
        let rv: UnsafeMutablePointer<GAsyncQueue>! = cast(g_async_queue_ref(cast(_ptr)))
        return cast(rv)
    }

    /// Increases the reference count of the asynchronous `queue` by 1.
    ///
    /// **ref_unlocked is deprecated:**
    /// Reference counting is done atomically.
    /// so g_async_queue_ref() can be used regardless of the @queue's
    /// lock.
    @available(*, deprecated) func refUnlocked() {
        g_async_queue_ref_unlocked(cast(_ptr))
    
    }

    /// Remove an item from the queue.
    func remove(item: UnsafeMutableRawPointer) -> Bool {
        let rv = g_async_queue_remove(cast(_ptr), cast(item))
        return Bool(rv != 0)
    }

    /// Remove an item from the queue.
    /// 
    /// This function must be called while holding the `queue`'s lock.
    func removeUnlocked(item: UnsafeMutableRawPointer) -> Bool {
        let rv = g_async_queue_remove_unlocked(cast(_ptr), cast(item))
        return Bool(rv != 0)
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
    func sort(func_: @escaping CompareDataFunc, userData user_data: UnsafeMutableRawPointer) {
        g_async_queue_sort(cast(_ptr), func_, cast(user_data))
    
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
    func sortUnlocked(func_: @escaping CompareDataFunc, userData user_data: UnsafeMutableRawPointer) {
        g_async_queue_sort_unlocked(cast(_ptr), func_, cast(user_data))
    
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
    @available(*, deprecated) func timedPop(endTime end_time: TimeValProtocol) -> UnsafeMutableRawPointer! {
        let rv: UnsafeMutableRawPointer! = cast(g_async_queue_timed_pop(cast(_ptr), cast(end_time.ptr)))
        return cast(rv)
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
    @available(*, deprecated) func timedPopUnlocked(endTime end_time: TimeValProtocol) -> UnsafeMutableRawPointer! {
        let rv: UnsafeMutableRawPointer! = cast(g_async_queue_timed_pop_unlocked(cast(_ptr), cast(end_time.ptr)))
        return cast(rv)
    }

    /// Pops data from the `queue`. If the queue is empty, blocks for
    /// `timeout` microseconds, or until data becomes available.
    /// 
    /// If no data is received before the timeout, `nil` is returned.
    func timeoutPop(timeout: UInt64) -> UnsafeMutableRawPointer! {
        let rv: UnsafeMutableRawPointer! = cast(g_async_queue_timeout_pop(cast(_ptr), guint64(timeout)))
        return cast(rv)
    }

    /// Pops data from the `queue`. If the queue is empty, blocks for
    /// `timeout` microseconds, or until data becomes available.
    /// 
    /// If no data is received before the timeout, `nil` is returned.
    /// 
    /// This function must be called while holding the `queue`'s lock.
    func timeoutPopUnlocked(timeout: UInt64) -> UnsafeMutableRawPointer! {
        let rv: UnsafeMutableRawPointer! = cast(g_async_queue_timeout_pop_unlocked(cast(_ptr), guint64(timeout)))
        return cast(rv)
    }

    /// Tries to pop data from the `queue`. If no data is available,
    /// `nil` is returned.
    func tryPop() -> UnsafeMutableRawPointer! {
        let rv: UnsafeMutableRawPointer! = cast(g_async_queue_try_pop(cast(_ptr)))
        return cast(rv)
    }

    /// Tries to pop data from the `queue`. If no data is available,
    /// `nil` is returned.
    /// 
    /// This function must be called while holding the `queue`'s lock.
    func tryPopUnlocked() -> UnsafeMutableRawPointer! {
        let rv: UnsafeMutableRawPointer! = cast(g_async_queue_try_pop_unlocked(cast(_ptr)))
        return cast(rv)
    }

    /// Releases the queue's lock.
    /// 
    /// Calling this function when you have not acquired
    /// the with `g_async_queue_lock()` leads to undefined
    /// behaviour.
    func unlock() {
        g_async_queue_unlock(cast(_ptr))
    
    }

    /// Decreases the reference count of the asynchronous `queue` by 1.
    /// 
    /// If the reference count went to 0, the `queue` will be destroyed
    /// and the memory allocated will be freed. So you are not allowed
    /// to use the `queue` afterwards, as it might have disappeared.
    /// You do not need to hold the lock to call this function.
    func unref() {
        g_async_queue_unref(cast(_ptr))
    
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
    @available(*, deprecated) func unrefAndUnlock() {
        g_async_queue_unref_and_unlock(cast(_ptr))
    
    }


}



