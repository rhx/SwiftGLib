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

    }

/// Contains the public fields of a GArray.
///
/// The `ArrayType` type acts as an owner of an underlying `GArray` instance.
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
    /// `GArray` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ArrayType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GArray>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GArray, cannot ref(array_ptr)
    }

    /// Reference intialiser for a related type that implements `ArrayProtocol`
    /// `GArray` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ArrayProtocol`
    @inlinable public init<T: ArrayProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GArray, cannot ref(array_ptr)
    }

    /// Do-nothing destructor for `GArray`.
    deinit {
        // no reference counting for GArray, cannot unref(array_ptr)
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
        // no reference counting for GArray, cannot ref(array_ptr)
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
        // no reference counting for GArray, cannot ref(array_ptr)
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
        // no reference counting for GArray, cannot ref(array_ptr)
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
        // no reference counting for GArray, cannot ref(array_ptr)
    }



}

// MARK: no ArrayType properties

// MARK: no ArrayType signals

// MARK: ArrayType has no signals
// MARK: Array Record: ArrayProtocol extension (methods and fields)
public extension ArrayProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GArray` instance.
    @inlinable var array_ptr: UnsafeMutablePointer<GArray>! { return ptr?.assumingMemoryBound(to: GArray.self) }


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
        guard let rv = AsyncQueueRef(gconstpointer: gconstpointer(g_async_queue_new_full(itemFreeFunc))) else { return nil }
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
        guard let rv = AsyncQueue(gconstpointer: gconstpointer(g_async_queue_new_full(itemFreeFunc))) else { return nil }
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



// MARK: - BookmarkFile Record

/// An opaque data structure representing a set of bookmarks.
///
/// The `BookmarkFileProtocol` protocol exposes the methods and properties of an underlying `GBookmarkFile` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BookmarkFile`.
/// Alternatively, use `BookmarkFileRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol BookmarkFileProtocol {
        /// Untyped pointer to the underlying `GBookmarkFile` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GBookmarkFile` instance.
    var _ptr: UnsafeMutablePointer<GBookmarkFile>! { get }

    /// Required Initialiser for types conforming to `BookmarkFileProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// An opaque data structure representing a set of bookmarks.
///
/// The `BookmarkFileRef` type acts as a lightweight Swift reference to an underlying `GBookmarkFile` instance.
/// It exposes methods that can operate on this data type through `BookmarkFileProtocol` conformance.
/// Use `BookmarkFileRef` only as an `unowned` reference to an existing `GBookmarkFile` instance.
///
public struct BookmarkFileRef: BookmarkFileProtocol {
        /// Untyped pointer to the underlying `GBookmarkFile` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BookmarkFileRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GBookmarkFile>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GBookmarkFile>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GBookmarkFile>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GBookmarkFile>?) {
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

    /// Reference intialiser for a related type that implements `BookmarkFileProtocol`
    @inlinable init<T: BookmarkFileProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkFileProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkFileProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkFileProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkFileProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkFileProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// An opaque data structure representing a set of bookmarks.
///
/// The `BookmarkFile` type acts as an owner of an underlying `GBookmarkFile` instance.
/// It provides the methods that can operate on this data type through `BookmarkFileProtocol` conformance.
/// Use `BookmarkFile` as a strong reference or owner of a `GBookmarkFile` instance.
///
open class BookmarkFile: BookmarkFileProtocol {
        /// Untyped pointer to the underlying `GBookmarkFile` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BookmarkFile` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GBookmarkFile>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BookmarkFile` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GBookmarkFile>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BookmarkFile` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BookmarkFile` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BookmarkFile` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GBookmarkFile>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BookmarkFile` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GBookmarkFile>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GBookmarkFile` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `BookmarkFile` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GBookmarkFile>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GBookmarkFile, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `BookmarkFileProtocol`
    /// `GBookmarkFile` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `BookmarkFileProtocol`
    @inlinable public init<T: BookmarkFileProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GBookmarkFile, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GBookmarkFile`.
    deinit {
        // no reference counting for GBookmarkFile, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkFileProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkFileProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GBookmarkFile, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkFileProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkFileProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GBookmarkFile, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkFileProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkFileProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GBookmarkFile, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkFileProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkFileProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GBookmarkFile, cannot ref(_ptr)
    }



}

// MARK: no BookmarkFile properties

// MARK: no BookmarkFile signals

// MARK: BookmarkFile has no signals
// MARK: BookmarkFile Record: BookmarkFileProtocol extension (methods and fields)
public extension BookmarkFileProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GBookmarkFile` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GBookmarkFile>! { return ptr?.assumingMemoryBound(to: GBookmarkFile.self) }

    /// Adds the application with `name` and `exec` to the list of
    /// applications that have registered a bookmark for `uri` into
    /// `bookmark`.
    /// 
    /// Every bookmark inside a `GBookmarkFile` must have at least an
    /// application registered.  Each application must provide a name, a
    /// command line useful for launching the bookmark, the number of times
    /// the bookmark has been registered by the application and the last
    /// time the application registered this bookmark.
    /// 
    /// If `name` is `nil`, the name of the application will be the
    /// same returned by `g_get_application_name()`; if `exec` is `nil`, the
    /// command line will be a composition of the program name as
    /// returned by `g_get_prgname()` and the "\`u`" modifier, which will be
    /// expanded to the bookmark's URI.
    /// 
    /// This function will automatically take care of updating the
    /// registrations count and timestamping in case an application
    /// with the same `name` had already registered a bookmark for
    /// `uri` inside `bookmark`.
    /// 
    /// If no bookmark for `uri` is found, one is created.
    @inlinable func addApplication(uri: UnsafePointer<gchar>!, name: UnsafePointer<gchar>? = nil, exec: UnsafePointer<gchar>? = nil) {
        g_bookmark_file_add_application(_ptr, uri, name, exec)
    
    }

    /// Adds `group` to the list of groups to which the bookmark for `uri`
    /// belongs to.
    /// 
    /// If no bookmark for `uri` is found then it is created.
    @inlinable func addGroup(uri: UnsafePointer<gchar>!, group: UnsafePointer<gchar>!) {
        g_bookmark_file_add_group(_ptr, uri, group)
    
    }

    /// Frees a `GBookmarkFile`.
    @inlinable func free() {
        g_bookmark_file_free(_ptr)
    
    }

    /// Gets the time the bookmark for `uri` was added to `bookmark`
    /// 
    /// In the event the URI cannot be found, -1 is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    ///
    /// **get_added is deprecated:**
    /// Use g_bookmark_file_get_added_date_time() instead, as
    ///    `time_t` is deprecated due to the year 2038 problem.
    @available(*, deprecated) @inlinable func getAdded(uri: UnsafePointer<gchar>!) throws -> time_t {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_bookmark_file_get_added(_ptr, uri, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Gets the time the bookmark for `uri` was added to `bookmark`
    /// 
    /// In the event the URI cannot be found, `nil` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    @inlinable func getAddedDateTime(uri: UnsafePointer<CChar>!) throws -> DateTimeRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = DateTimeRef(gconstpointer: gconstpointer(g_bookmark_file_get_added_date_time(_ptr, uri, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Gets the registration information of `app_name` for the bookmark for
    /// `uri`.  See `g_bookmark_file_set_application_info()` for more information about
    /// the returned data.
    /// 
    /// The string returned in `app_exec` must be freed.
    /// 
    /// In the event the URI cannot be found, `false` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.  In the
    /// event that no application with name `app_name` has registered a bookmark
    /// for `uri`,  `false` is returned and error is set to
    /// `G_BOOKMARK_FILE_ERROR_APP_NOT_REGISTERED`. In the event that unquoting
    /// the command line fails, an error of the `G_SHELL_ERROR` domain is
    /// set and `false` is returned.
    ///
    /// **get_app_info is deprecated:**
    /// Use g_bookmark_file_get_application_info() instead, as
    ///    `time_t` is deprecated due to the year 2038 problem.
    @available(*, deprecated) @inlinable func getAppInfo(uri: UnsafePointer<gchar>!, name: UnsafePointer<gchar>!, exec: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! = nil, count: UnsafeMutablePointer<guint>! = nil, stamp: UnsafeMutablePointer<time_t>! = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_bookmark_file_get_app_info(_ptr, uri, name, exec, count, stamp, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Gets the registration information of `app_name` for the bookmark for
    /// `uri`.  See `g_bookmark_file_set_application_info()` for more information about
    /// the returned data.
    /// 
    /// The string returned in `app_exec` must be freed.
    /// 
    /// In the event the URI cannot be found, `false` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.  In the
    /// event that no application with name `app_name` has registered a bookmark
    /// for `uri`,  `false` is returned and error is set to
    /// `G_BOOKMARK_FILE_ERROR_APP_NOT_REGISTERED`. In the event that unquoting
    /// the command line fails, an error of the `G_SHELL_ERROR` domain is
    /// set and `false` is returned.
    @inlinable func getApplicationInfo(uri: UnsafePointer<CChar>!, name: UnsafePointer<CChar>!, exec: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>! = nil, count: UnsafeMutablePointer<guint>! = nil, stamp: UnsafeMutablePointer<UnsafeMutablePointer<GDateTime>?>! = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_bookmark_file_get_application_info(_ptr, uri, name, exec, count, stamp, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Retrieves the names of the applications that have registered the
    /// bookmark for `uri`.
    /// 
    /// In the event the URI cannot be found, `nil` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    @inlinable func getApplications(uri: UnsafePointer<gchar>!, length: UnsafeMutablePointer<gsize>! = nil) throws -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_bookmark_file_get_applications(_ptr, uri, length, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Retrieves the description of the bookmark for `uri`.
    /// 
    /// In the event the URI cannot be found, `nil` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    @inlinable func getDescription(uri: UnsafePointer<gchar>!) throws -> String! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_bookmark_file_get_description(_ptr, uri, &error).map({ String(cString: $0) })
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Retrieves the list of group names of the bookmark for `uri`.
    /// 
    /// In the event the URI cannot be found, `nil` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    /// 
    /// The returned array is `nil` terminated, so `length` may optionally
    /// be `nil`.
    @inlinable func getGroups(uri: UnsafePointer<gchar>!, length: UnsafeMutablePointer<gsize>! = nil) throws -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_bookmark_file_get_groups(_ptr, uri, length, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Gets the icon of the bookmark for `uri`.
    /// 
    /// In the event the URI cannot be found, `false` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    @inlinable func getIcon(uri: UnsafePointer<gchar>!, href: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! = nil, mimeType: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_bookmark_file_get_icon(_ptr, uri, href, mimeType, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Gets whether the private flag of the bookmark for `uri` is set.
    /// 
    /// In the event the URI cannot be found, `false` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.  In the
    /// event that the private flag cannot be found, `false` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_INVALID_VALUE`.
    @inlinable func getIsPrivate(uri: UnsafePointer<gchar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_bookmark_file_get_is_private(_ptr, uri, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Retrieves the MIME type of the resource pointed by `uri`.
    /// 
    /// In the event the URI cannot be found, `nil` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.  In the
    /// event that the MIME type cannot be found, `nil` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_INVALID_VALUE`.
    @inlinable func getMimeType(uri: UnsafePointer<gchar>!) throws -> String! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_bookmark_file_get_mime_type(_ptr, uri, &error).map({ String(cString: $0) })
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Gets the time when the bookmark for `uri` was last modified.
    /// 
    /// In the event the URI cannot be found, -1 is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    ///
    /// **get_modified is deprecated:**
    /// Use g_bookmark_file_get_modified_date_time() instead, as
    ///    `time_t` is deprecated due to the year 2038 problem.
    @available(*, deprecated) @inlinable func getModified(uri: UnsafePointer<gchar>!) throws -> time_t {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_bookmark_file_get_modified(_ptr, uri, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Gets the time when the bookmark for `uri` was last modified.
    /// 
    /// In the event the URI cannot be found, `nil` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    @inlinable func getModifiedDateTime(uri: UnsafePointer<CChar>!) throws -> DateTimeRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = DateTimeRef(gconstpointer: gconstpointer(g_bookmark_file_get_modified_date_time(_ptr, uri, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Gets the number of bookmarks inside `bookmark`.
    @inlinable func getSize() -> Int {
        let rv = Int(g_bookmark_file_get_size(_ptr))
        return rv
    }

    /// Returns the title of the bookmark for `uri`.
    /// 
    /// If `uri` is `nil`, the title of `bookmark` is returned.
    /// 
    /// In the event the URI cannot be found, `nil` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    @inlinable func getTitle(uri: UnsafePointer<gchar>? = nil) throws -> String! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_bookmark_file_get_title(_ptr, uri, &error).map({ String(cString: $0) })
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Returns all URIs of the bookmarks in the bookmark file `bookmark`.
    /// The array of returned URIs will be `nil`-terminated, so `length` may
    /// optionally be `nil`.
    @inlinable func getURIs(length: UnsafeMutablePointer<gsize>! = nil) -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        let rv = g_bookmark_file_get_uris(_ptr, length)
        return rv
    }

    /// Gets the time the bookmark for `uri` was last visited.
    /// 
    /// In the event the URI cannot be found, -1 is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    ///
    /// **get_visited is deprecated:**
    /// Use g_bookmark_file_get_visited_date_time() instead, as
    ///    `time_t` is deprecated due to the year 2038 problem.
    @available(*, deprecated) @inlinable func getVisited(uri: UnsafePointer<gchar>!) throws -> time_t {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_bookmark_file_get_visited(_ptr, uri, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Gets the time the bookmark for `uri` was last visited.
    /// 
    /// In the event the URI cannot be found, `nil` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    @inlinable func getVisitedDateTime(uri: UnsafePointer<CChar>!) throws -> DateTimeRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = DateTimeRef(gconstpointer: gconstpointer(g_bookmark_file_get_visited_date_time(_ptr, uri, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Checks whether the bookmark for `uri` inside `bookmark` has been
    /// registered by application `name`.
    /// 
    /// In the event the URI cannot be found, `false` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    @inlinable func hasApplication(uri: UnsafePointer<gchar>!, name: UnsafePointer<gchar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_bookmark_file_has_application(_ptr, uri, name, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Checks whether `group` appears in the list of groups to which
    /// the bookmark for `uri` belongs to.
    /// 
    /// In the event the URI cannot be found, `false` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    @inlinable func hasGroup(uri: UnsafePointer<gchar>!, group: UnsafePointer<gchar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_bookmark_file_has_group(_ptr, uri, group, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Looks whether the desktop bookmark has an item with its URI set to `uri`.
    @inlinable func hasItem(uri: UnsafePointer<gchar>!) -> Bool {
        let rv = ((g_bookmark_file_has_item(_ptr, uri)) != 0)
        return rv
    }

    /// Loads a bookmark file from memory into an empty `GBookmarkFile`
    /// structure.  If the object cannot be created then `error` is set to a
    /// `GBookmarkFileError`.
    @inlinable func loadFrom(data: UnsafePointer<gchar>!, length: Int) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_bookmark_file_load_from_data(_ptr, data, gsize(length), &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// This function looks for a desktop bookmark file named `file` in the
    /// paths returned from `g_get_user_data_dir()` and `g_get_system_data_dirs()`,
    /// loads the file into `bookmark` and returns the file's full path in
    /// `full_path`.  If the file could not be loaded then `error` is
    /// set to either a `GFileError` or `GBookmarkFileError`.
    @inlinable func loadFromDataDirs(file: UnsafePointer<gchar>!, fullPath: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_bookmark_file_load_from_data_dirs(_ptr, file, fullPath, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Loads a desktop bookmark file into an empty `GBookmarkFile` structure.
    /// If the file could not be loaded then `error` is set to either a `GFileError`
    /// or `GBookmarkFileError`.
    @inlinable func loadFromFile(filename: UnsafePointer<gchar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_bookmark_file_load_from_file(_ptr, filename, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Changes the URI of a bookmark item from `old_uri` to `new_uri`.  Any
    /// existing bookmark for `new_uri` will be overwritten.  If `new_uri` is
    /// `nil`, then the bookmark is removed.
    /// 
    /// In the event the URI cannot be found, `false` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    @inlinable func moveItem(oldURI: UnsafePointer<gchar>!, newURI: UnsafePointer<gchar>? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_bookmark_file_move_item(_ptr, oldURI, newURI, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Removes application registered with `name` from the list of applications
    /// that have registered a bookmark for `uri` inside `bookmark`.
    /// 
    /// In the event the URI cannot be found, `false` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    /// In the event that no application with name `app_name` has registered
    /// a bookmark for `uri`,  `false` is returned and error is set to
    /// `G_BOOKMARK_FILE_ERROR_APP_NOT_REGISTERED`.
    @inlinable func removeApplication(uri: UnsafePointer<gchar>!, name: UnsafePointer<gchar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_bookmark_file_remove_application(_ptr, uri, name, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Removes `group` from the list of groups to which the bookmark
    /// for `uri` belongs to.
    /// 
    /// In the event the URI cannot be found, `false` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    /// In the event no group was defined, `false` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_INVALID_VALUE`.
    @inlinable func removeGroup(uri: UnsafePointer<gchar>!, group: UnsafePointer<gchar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_bookmark_file_remove_group(_ptr, uri, group, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Removes the bookmark for `uri` from the bookmark file `bookmark`.
    @inlinable func removeItem(uri: UnsafePointer<gchar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_bookmark_file_remove_item(_ptr, uri, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Sets the time the bookmark for `uri` was added into `bookmark`.
    /// 
    /// If no bookmark for `uri` is found then it is created.
    ///
    /// **set_added is deprecated:**
    /// Use g_bookmark_file_set_added_date_time() instead, as
    ///    `time_t` is deprecated due to the year 2038 problem.
    @available(*, deprecated) @inlinable func setAdded(uri: UnsafePointer<gchar>!, added: time_t) {
        g_bookmark_file_set_added(_ptr, uri, added)
    
    }

    /// Sets the time the bookmark for `uri` was added into `bookmark`.
    /// 
    /// If no bookmark for `uri` is found then it is created.
    @inlinable func setAddedDateTime<DateTimeT: DateTimeProtocol>(uri: UnsafePointer<CChar>!, added: DateTimeT) {
        g_bookmark_file_set_added_date_time(_ptr, uri, added.date_time_ptr)
    
    }

    /// Sets the meta-data of application `name` inside the list of
    /// applications that have registered a bookmark for `uri` inside
    /// `bookmark`.
    /// 
    /// You should rarely use this function; use `g_bookmark_file_add_application()`
    /// and `g_bookmark_file_remove_application()` instead.
    /// 
    /// `name` can be any UTF-8 encoded string used to identify an
    /// application.
    /// `exec` can have one of these two modifiers: "\`f`", which will
    /// be expanded as the local file name retrieved from the bookmark's
    /// URI; "\`u`", which will be expanded as the bookmark's URI.
    /// The expansion is done automatically when retrieving the stored
    /// command line using the `g_bookmark_file_get_application_info()` function.
    /// `count` is the number of times the application has registered the
    /// bookmark; if is &lt; 0, the current registration count will be increased
    /// by one, if is 0, the application with `name` will be removed from
    /// the list of registered applications.
    /// `stamp` is the Unix time of the last registration; if it is -1, the
    /// current time will be used.
    /// 
    /// If you try to remove an application by setting its registration count to
    /// zero, and no bookmark for `uri` is found, `false` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`; similarly,
    /// in the event that no application `name` has registered a bookmark
    /// for `uri`,  `false` is returned and error is set to
    /// `G_BOOKMARK_FILE_ERROR_APP_NOT_REGISTERED`.  Otherwise, if no bookmark
    /// for `uri` is found, one is created.
    ///
    /// **set_app_info is deprecated:**
    /// Use g_bookmark_file_set_application_info() instead, as
    ///    `time_t` is deprecated due to the year 2038 problem.
    @available(*, deprecated) @inlinable func setAppInfo(uri: UnsafePointer<gchar>!, name: UnsafePointer<gchar>!, exec: UnsafePointer<gchar>!, count: Int, stamp: time_t) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_bookmark_file_set_app_info(_ptr, uri, name, exec, gint(count), stamp, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Sets the meta-data of application `name` inside the list of
    /// applications that have registered a bookmark for `uri` inside
    /// `bookmark`.
    /// 
    /// You should rarely use this function; use `g_bookmark_file_add_application()`
    /// and `g_bookmark_file_remove_application()` instead.
    /// 
    /// `name` can be any UTF-8 encoded string used to identify an
    /// application.
    /// `exec` can have one of these two modifiers: "\`f`", which will
    /// be expanded as the local file name retrieved from the bookmark's
    /// URI; "\`u`", which will be expanded as the bookmark's URI.
    /// The expansion is done automatically when retrieving the stored
    /// command line using the `g_bookmark_file_get_application_info()` function.
    /// `count` is the number of times the application has registered the
    /// bookmark; if is &lt; 0, the current registration count will be increased
    /// by one, if is 0, the application with `name` will be removed from
    /// the list of registered applications.
    /// `stamp` is the Unix time of the last registration.
    /// 
    /// If you try to remove an application by setting its registration count to
    /// zero, and no bookmark for `uri` is found, `false` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`; similarly,
    /// in the event that no application `name` has registered a bookmark
    /// for `uri`,  `false` is returned and error is set to
    /// `G_BOOKMARK_FILE_ERROR_APP_NOT_REGISTERED`.  Otherwise, if no bookmark
    /// for `uri` is found, one is created.
    @inlinable func setApplicationInfo(uri: UnsafePointer<CChar>!, name: UnsafePointer<CChar>!, exec: UnsafePointer<CChar>!, count: Int, stamp: DateTimeRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_bookmark_file_set_application_info(_ptr, uri, name, exec, gint(count), stamp?.date_time_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Sets the meta-data of application `name` inside the list of
    /// applications that have registered a bookmark for `uri` inside
    /// `bookmark`.
    /// 
    /// You should rarely use this function; use `g_bookmark_file_add_application()`
    /// and `g_bookmark_file_remove_application()` instead.
    /// 
    /// `name` can be any UTF-8 encoded string used to identify an
    /// application.
    /// `exec` can have one of these two modifiers: "\`f`", which will
    /// be expanded as the local file name retrieved from the bookmark's
    /// URI; "\`u`", which will be expanded as the bookmark's URI.
    /// The expansion is done automatically when retrieving the stored
    /// command line using the `g_bookmark_file_get_application_info()` function.
    /// `count` is the number of times the application has registered the
    /// bookmark; if is &lt; 0, the current registration count will be increased
    /// by one, if is 0, the application with `name` will be removed from
    /// the list of registered applications.
    /// `stamp` is the Unix time of the last registration.
    /// 
    /// If you try to remove an application by setting its registration count to
    /// zero, and no bookmark for `uri` is found, `false` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`; similarly,
    /// in the event that no application `name` has registered a bookmark
    /// for `uri`,  `false` is returned and error is set to
    /// `G_BOOKMARK_FILE_ERROR_APP_NOT_REGISTERED`.  Otherwise, if no bookmark
    /// for `uri` is found, one is created.
    @inlinable func setApplicationInfo<DateTimeT: DateTimeProtocol>(uri: UnsafePointer<CChar>!, name: UnsafePointer<CChar>!, exec: UnsafePointer<CChar>!, count: Int, stamp: DateTimeT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_bookmark_file_set_application_info(_ptr, uri, name, exec, gint(count), stamp?.date_time_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Sets `description` as the description of the bookmark for `uri`.
    /// 
    /// If `uri` is `nil`, the description of `bookmark` is set.
    /// 
    /// If a bookmark for `uri` cannot be found then it is created.
    @inlinable func setDescription(uri: UnsafePointer<gchar>? = nil, description: UnsafePointer<gchar>!) {
        g_bookmark_file_set_description(_ptr, uri, description)
    
    }

    /// Sets a list of group names for the item with URI `uri`.  Each previously
    /// set group name list is removed.
    /// 
    /// If `uri` cannot be found then an item for it is created.
    @inlinable func setGroups(uri: UnsafePointer<gchar>!, groups: UnsafeMutablePointer<UnsafePointer<gchar>?>! = nil, length: Int) {
        g_bookmark_file_set_groups(_ptr, uri, groups, gsize(length))
    
    }

    /// Sets the icon for the bookmark for `uri`. If `href` is `nil`, unsets
    /// the currently set icon. `href` can either be a full URL for the icon
    /// file or the icon name following the Icon Naming specification.
    /// 
    /// If no bookmark for `uri` is found one is created.
    @inlinable func setIcon(uri: UnsafePointer<gchar>!, href: UnsafePointer<gchar>? = nil, mimeType: UnsafePointer<gchar>!) {
        g_bookmark_file_set_icon(_ptr, uri, href, mimeType)
    
    }

    /// Sets the private flag of the bookmark for `uri`.
    /// 
    /// If a bookmark for `uri` cannot be found then it is created.
    @inlinable func setIsPrivate(uri: UnsafePointer<gchar>!, isPrivate: Bool) {
        g_bookmark_file_set_is_private(_ptr, uri, gboolean((isPrivate) ? 1 : 0))
    
    }

    /// Sets `mime_type` as the MIME type of the bookmark for `uri`.
    /// 
    /// If a bookmark for `uri` cannot be found then it is created.
    @inlinable func setMimeType(uri: UnsafePointer<gchar>!, mimeType: UnsafePointer<gchar>!) {
        g_bookmark_file_set_mime_type(_ptr, uri, mimeType)
    
    }

    /// Sets the last time the bookmark for `uri` was last modified.
    /// 
    /// If no bookmark for `uri` is found then it is created.
    /// 
    /// The "modified" time should only be set when the bookmark's meta-data
    /// was actually changed.  Every function of `GBookmarkFile` that
    /// modifies a bookmark also changes the modification time, except for
    /// `g_bookmark_file_set_visited_date_time()`.
    ///
    /// **set_modified is deprecated:**
    /// Use g_bookmark_file_set_modified_date_time() instead, as
    ///    `time_t` is deprecated due to the year 2038 problem.
    @available(*, deprecated) @inlinable func setModified(uri: UnsafePointer<gchar>!, modified: time_t) {
        g_bookmark_file_set_modified(_ptr, uri, modified)
    
    }

    /// Sets the last time the bookmark for `uri` was last modified.
    /// 
    /// If no bookmark for `uri` is found then it is created.
    /// 
    /// The "modified" time should only be set when the bookmark's meta-data
    /// was actually changed.  Every function of `GBookmarkFile` that
    /// modifies a bookmark also changes the modification time, except for
    /// `g_bookmark_file_set_visited_date_time()`.
    @inlinable func setModifiedDateTime<DateTimeT: DateTimeProtocol>(uri: UnsafePointer<CChar>!, modified: DateTimeT) {
        g_bookmark_file_set_modified_date_time(_ptr, uri, modified.date_time_ptr)
    
    }

    /// Sets `title` as the title of the bookmark for `uri` inside the
    /// bookmark file `bookmark`.
    /// 
    /// If `uri` is `nil`, the title of `bookmark` is set.
    /// 
    /// If a bookmark for `uri` cannot be found then it is created.
    @inlinable func setTitle(uri: UnsafePointer<gchar>? = nil, title: UnsafePointer<gchar>!) {
        g_bookmark_file_set_title(_ptr, uri, title)
    
    }

    /// Sets the time the bookmark for `uri` was last visited.
    /// 
    /// If no bookmark for `uri` is found then it is created.
    /// 
    /// The "visited" time should only be set if the bookmark was launched,
    /// either using the command line retrieved by `g_bookmark_file_get_application_info()`
    /// or by the default application for the bookmark's MIME type, retrieved
    /// using `g_bookmark_file_get_mime_type()`.  Changing the "visited" time
    /// does not affect the "modified" time.
    ///
    /// **set_visited is deprecated:**
    /// Use g_bookmark_file_set_visited_date_time() instead, as
    ///    `time_t` is deprecated due to the year 2038 problem.
    @available(*, deprecated) @inlinable func setVisited(uri: UnsafePointer<gchar>!, visited: time_t) {
        g_bookmark_file_set_visited(_ptr, uri, visited)
    
    }

    /// Sets the time the bookmark for `uri` was last visited.
    /// 
    /// If no bookmark for `uri` is found then it is created.
    /// 
    /// The "visited" time should only be set if the bookmark was launched,
    /// either using the command line retrieved by `g_bookmark_file_get_application_info()`
    /// or by the default application for the bookmark's MIME type, retrieved
    /// using `g_bookmark_file_get_mime_type()`.  Changing the "visited" time
    /// does not affect the "modified" time.
    @inlinable func setVisitedDateTime<DateTimeT: DateTimeProtocol>(uri: UnsafePointer<CChar>!, visited: DateTimeT) {
        g_bookmark_file_set_visited_date_time(_ptr, uri, visited.date_time_ptr)
    
    }

    /// This function outputs `bookmark` as a string.
    @inlinable func toData(length: UnsafeMutablePointer<gsize>! = nil) throws -> String! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_bookmark_file_to_data(_ptr, length, &error).map({ String(cString: $0) })
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// This function outputs `bookmark` into a file.  The write process is
    /// guaranteed to be atomic by using `g_file_set_contents()` internally.
    @inlinable func toFile(filename: UnsafePointer<gchar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_bookmark_file_to_file(_ptr, filename, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Gets the number of bookmarks inside `bookmark`.
    @inlinable var size: Int {
        /// Gets the number of bookmarks inside `bookmark`.
        get {
            let rv = Int(g_bookmark_file_get_size(_ptr))
            return rv
        }
    }


}



