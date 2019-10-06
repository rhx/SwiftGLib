import CGLib

// MARK: - Sequence Record

/// The `SequenceProtocol` protocol exposes the methods and properties of an underlying `GSequence` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Sequence`.
/// Alternatively, use `SequenceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GSequence` struct is an opaque data type representing a
/// [sequence][glib-Sequences] data type.
public protocol SequenceProtocol {
    /// Untyped pointer to the underlying `GSequence` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSequence` instance.
    var _ptr: UnsafeMutablePointer<GSequence> { get }
}

/// The `SequenceRef` type acts as a lightweight Swift reference to an underlying `GSequence` instance.
/// It exposes methods that can operate on this data type through `SequenceProtocol` conformance.
/// Use `SequenceRef` only as an `unowned` reference to an existing `GSequence` instance.
///
/// The `GSequence` struct is an opaque data type representing a
/// [sequence][glib-Sequences] data type.
public struct SequenceRef: SequenceProtocol {
    /// Untyped pointer to the underlying `GSequence` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SequenceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSequence>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SequenceProtocol`
    init<T: SequenceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Sequence` type acts as an owner of an underlying `GSequence` instance.
/// It provides the methods that can operate on this data type through `SequenceProtocol` conformance.
/// Use `Sequence` as a strong reference or owner of a `GSequence` instance.
///
/// The `GSequence` struct is an opaque data type representing a
/// [sequence][glib-Sequences] data type.
open class Sequence: SequenceProtocol {
    /// Untyped pointer to the underlying `GSequence` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Sequence` instance.
    public init(_ op: UnsafeMutablePointer<GSequence>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `SequenceProtocol`
    /// `GSequence` does not allow reference counting.
    public convenience init<T: SequenceProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GSequence, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GSequence`.
    deinit {
        // no reference counting for GSequence, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GSequence.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GSequence.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GSequence.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GSequence>(opaquePointer))
    }



}

// MARK: - no Sequence properties

// MARK: - no signals


public extension SequenceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSequence` instance.
    var _ptr: UnsafeMutablePointer<GSequence> { return ptr.assumingMemoryBound(to: GSequence.self) }

    /// Adds a new item to the end of `seq`.
    func append(data: UnsafeMutableRawPointer) -> UnsafeMutablePointer<GSequenceIter>! {
        let rv = g_sequence_append(cast(_ptr), cast(data))
        return cast(rv)
    }

    /// Calls `func` for each item in the sequence passing `user_data`
    /// to the function. `func` must not modify the sequence itself.
    func foreach(func_: @escaping Func, userData user_data: UnsafeMutableRawPointer) {
        g_sequence_foreach(cast(_ptr), func_, cast(user_data))
    
    }

    /// Frees the memory allocated for `seq`. If `seq` has a data destroy
    /// function associated with it, that function is called on all items
    /// in `seq`.
    func free() {
        g_sequence_free(cast(_ptr))
    
    }

    /// Returns the begin iterator for `seq`.
    func getBeginIter() -> UnsafeMutablePointer<GSequenceIter>! {
        let rv = g_sequence_get_begin_iter(cast(_ptr))
        return cast(rv)
    }

    /// Returns the end iterator for `seg`
    func getEndIter() -> UnsafeMutablePointer<GSequenceIter>! {
        let rv = g_sequence_get_end_iter(cast(_ptr))
        return cast(rv)
    }

    /// Returns the iterator at position `pos`. If `pos` is negative or larger
    /// than the number of items in `seq`, the end iterator is returned.
    func getIterAt(pos: CInt) -> UnsafeMutablePointer<GSequenceIter>! {
        let rv = g_sequence_get_iter_at_pos(cast(_ptr), gint(pos))
        return cast(rv)
    }

    /// Returns the length of `seq`. Note that this method is `O(h)` where `h' is the
    /// height of the tree. It is thus more efficient to use `g_sequence_is_empty()`
    /// when comparing the length to zero.
    func getLength() -> CInt {
        let rv = g_sequence_get_length(cast(_ptr))
        return CInt(rv)
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
    func insertSorted(data: UnsafeMutableRawPointer, cmpFunc cmp_func: @escaping CompareDataFunc, cmpData cmp_data: UnsafeMutableRawPointer) -> UnsafeMutablePointer<GSequenceIter>! {
        let rv = g_sequence_insert_sorted(cast(_ptr), cast(data), cmp_func, cast(cmp_data))
        return cast(rv)
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
    func insertSortedIter(data: UnsafeMutableRawPointer, iterCmp iter_cmp: @escaping SequenceIterCompareFunc, cmpData cmp_data: UnsafeMutableRawPointer) -> UnsafeMutablePointer<GSequenceIter>! {
        let rv = g_sequence_insert_sorted_iter(cast(_ptr), cast(data), iter_cmp, cast(cmp_data))
        return cast(rv)
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
    func lookup(data: UnsafeMutableRawPointer, cmpFunc cmp_func: @escaping CompareDataFunc, cmpData cmp_data: UnsafeMutableRawPointer) -> UnsafeMutablePointer<GSequenceIter>! {
        let rv = g_sequence_lookup(cast(_ptr), cast(data), cmp_func, cast(cmp_data))
        return cast(rv)
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
    func lookupIter(data: UnsafeMutableRawPointer, iterCmp iter_cmp: @escaping SequenceIterCompareFunc, cmpData cmp_data: UnsafeMutableRawPointer) -> UnsafeMutablePointer<GSequenceIter>! {
        let rv = g_sequence_lookup_iter(cast(_ptr), cast(data), iter_cmp, cast(cmp_data))
        return cast(rv)
    }

    /// Adds a new item to the front of `seq`
    func prepend(data: UnsafeMutableRawPointer) -> UnsafeMutablePointer<GSequenceIter>! {
        let rv = g_sequence_prepend(cast(_ptr), cast(data))
        return cast(rv)
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
    func search(data: UnsafeMutableRawPointer, cmpFunc cmp_func: @escaping CompareDataFunc, cmpData cmp_data: UnsafeMutableRawPointer) -> UnsafeMutablePointer<GSequenceIter>! {
        let rv = g_sequence_search(cast(_ptr), cast(data), cmp_func, cast(cmp_data))
        return cast(rv)
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
    func searchIter(data: UnsafeMutableRawPointer, iterCmp iter_cmp: @escaping SequenceIterCompareFunc, cmpData cmp_data: UnsafeMutableRawPointer) -> UnsafeMutablePointer<GSequenceIter>! {
        let rv = g_sequence_search_iter(cast(_ptr), cast(data), iter_cmp, cast(cmp_data))
        return cast(rv)
    }

    /// Sorts `seq` using `cmp_func`.
    /// 
    /// `cmp_func` is passed two items of `seq` and should
    /// return 0 if they are equal, a negative value if the
    /// first comes before the second, and a positive value
    /// if the second comes before the first.
    func sort(cmpFunc cmp_func: @escaping CompareDataFunc, cmpData cmp_data: UnsafeMutableRawPointer) {
        g_sequence_sort(cast(_ptr), cmp_func, cast(cmp_data))
    
    }

    /// Like `g_sequence_sort()`, but uses a `GSequenceIterCompareFunc` instead
    /// of a `GCompareDataFunc` as the compare function
    /// 
    /// `cmp_func` is called with two iterators pointing into `seq`. It should
    /// return 0 if the iterators are equal, a negative value if the first
    /// iterator comes before the second, and a positive value if the second
    /// iterator comes before the first.
    func sortIter(cmpFunc cmp_func: @escaping SequenceIterCompareFunc, cmpData cmp_data: UnsafeMutableRawPointer) {
        g_sequence_sort_iter(cast(_ptr), cmp_func, cast(cmp_data))
    
    }
    /// Returns the begin iterator for `seq`.
    var beginIter: UnsafeMutablePointer<GSequenceIter>! {
        /// Returns the begin iterator for `seq`.
        get {
            let rv = g_sequence_get_begin_iter(cast(_ptr))
            return cast(rv)
        }
    }

    /// Returns the end iterator for `seg`
    var endIter: UnsafeMutablePointer<GSequenceIter>! {
        /// Returns the end iterator for `seg`
        get {
            let rv = g_sequence_get_end_iter(cast(_ptr))
            return cast(rv)
        }
    }

    /// Returns `true` if the sequence contains zero items.
    /// 
    /// This function is functionally identical to checking the result of
    /// `g_sequence_get_length()` being equal to zero. However this function is
    /// implemented in `O(1)` running time.
    var isEmpty: Bool {
        /// Returns `true` if the sequence contains zero items.
        /// 
        /// This function is functionally identical to checking the result of
        /// `g_sequence_get_length()` being equal to zero. However this function is
        /// implemented in `O(1)` running time.
        get {
            let rv = g_sequence_is_empty(cast(_ptr))
            return Bool(rv != 0)
        }
    }

    /// Returns the length of `seq`. Note that this method is `O(h)` where `h' is the
    /// height of the tree. It is thus more efficient to use `g_sequence_is_empty()`
    /// when comparing the length to zero.
    var length: CInt {
        /// Returns the length of `seq`. Note that this method is `O(h)` where `h' is the
        /// height of the tree. It is thus more efficient to use `g_sequence_is_empty()`
        /// when comparing the length to zero.
        get {
            let rv = g_sequence_get_length(cast(_ptr))
            return CInt(rv)
        }
    }
}



