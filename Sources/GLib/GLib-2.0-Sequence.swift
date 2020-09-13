import CGLib

// MARK: - Sequence Record

/// The `SequenceProtocol` protocol exposes the methods and properties of an underlying `GSequence` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Sequence`.
/// Alternatively, use `SequenceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GSequence` struct is an opaque data type representing a
/// [sequence](../Protocols/SequenceProtocol.html) data type.
public protocol SequenceProtocol {
        /// Untyped pointer to the underlying `GSequence` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSequence` instance.
    var _ptr: UnsafeMutablePointer<GSequence>! { get }

}

/// The `SequenceRef` type acts as a lightweight Swift reference to an underlying `GSequence` instance.
/// It exposes methods that can operate on this data type through `SequenceProtocol` conformance.
/// Use `SequenceRef` only as an `unowned` reference to an existing `GSequence` instance.
///
/// The `GSequence` struct is an opaque data type representing a
/// [sequence](../Protocols/SequenceProtocol.html) data type.
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

/// The `Sequence` type acts as an owner of an underlying `GSequence` instance.
/// It provides the methods that can operate on this data type through `SequenceProtocol` conformance.
/// Use `Sequence` as a strong reference or owner of a `GSequence` instance.
///
/// The `GSequence` struct is an opaque data type representing a
/// [sequence](../Protocols/SequenceProtocol.html) data type.
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
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
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


// MARK: Sequence Record: SequenceProtocol extension (methods and fields)
public extension SequenceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSequence` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GSequence>! { return ptr?.assumingMemoryBound(to: GSequence.self) }

    /// Adds a new item to the end of `seq`.
    @inlinable func append(data: gpointer! = nil) -> SequenceIterRef! {
        let rv = SequenceIterRef(gconstpointer: gconstpointer(g_sequence_append(_ptr, data)))
        return rv
    }

    /// Calls `func` for each item in the sequence passing `user_data`
    /// to the function. `func` must not modify the sequence itself.
    @inlinable func foreach(`func`: GFunc?, userData: gpointer! = nil) {
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
        let rv = SequenceIterRef(gconstpointer: gconstpointer(g_sequence_get_begin_iter(_ptr)))
        return rv
    }

    /// Returns the end iterator for `seg`
    @inlinable func getEndIter() -> SequenceIterRef! {
        let rv = SequenceIterRef(gconstpointer: gconstpointer(g_sequence_get_end_iter(_ptr)))
        return rv
    }

    /// Returns the iterator at position `pos`. If `pos` is negative or larger
    /// than the number of items in `seq`, the end iterator is returned.
    @inlinable func getIterAt(pos: Int) -> SequenceIterRef! {
        let rv = SequenceIterRef(gconstpointer: gconstpointer(g_sequence_get_iter_at_pos(_ptr, gint(pos))))
        return rv
    }

    /// Returns the length of `seq`. Note that this method is `O(h)` where `h' is the
    /// height of the tree. It is thus more efficient to use `g_sequence_is_empty()`
    /// when comparing the length to zero.
    @inlinable func getLength() -> Int {
        let rv = Int(g_sequence_get_length(_ptr))
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
    @inlinable func insertSorted(data: gpointer! = nil, cmpFunc: GCompareDataFunc?, cmpData: gpointer! = nil) -> SequenceIterRef! {
        let rv = SequenceIterRef(gconstpointer: gconstpointer(g_sequence_insert_sorted(_ptr, data, cmpFunc, cmpData)))
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
    @inlinable func insertSortedIter(data: gpointer! = nil, iterCmp: GSequenceIterCompareFunc?, cmpData: gpointer! = nil) -> SequenceIterRef! {
        let rv = SequenceIterRef(gconstpointer: gconstpointer(g_sequence_insert_sorted_iter(_ptr, data, iterCmp, cmpData)))
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
    @inlinable func lookup(data: gpointer! = nil, cmpFunc: GCompareDataFunc?, cmpData: gpointer! = nil) -> SequenceIterRef! {
        let rv = SequenceIterRef(gconstpointer: gconstpointer(g_sequence_lookup(_ptr, data, cmpFunc, cmpData)))
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
    @inlinable func lookupIter(data: gpointer! = nil, iterCmp: GSequenceIterCompareFunc?, cmpData: gpointer! = nil) -> SequenceIterRef! {
        let rv = SequenceIterRef(gconstpointer: gconstpointer(g_sequence_lookup_iter(_ptr, data, iterCmp, cmpData)))
        return rv
    }

    /// Adds a new item to the front of `seq`
    @inlinable func prepend(data: gpointer! = nil) -> SequenceIterRef! {
        let rv = SequenceIterRef(gconstpointer: gconstpointer(g_sequence_prepend(_ptr, data)))
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
    @inlinable func search(data: gpointer! = nil, cmpFunc: GCompareDataFunc?, cmpData: gpointer! = nil) -> SequenceIterRef! {
        let rv = SequenceIterRef(gconstpointer: gconstpointer(g_sequence_search(_ptr, data, cmpFunc, cmpData)))
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
    @inlinable func searchIter(data: gpointer! = nil, iterCmp: GSequenceIterCompareFunc?, cmpData: gpointer! = nil) -> SequenceIterRef! {
        let rv = SequenceIterRef(gconstpointer: gconstpointer(g_sequence_search_iter(_ptr, data, iterCmp, cmpData)))
        return rv
    }

    /// Sorts `seq` using `cmp_func`.
    /// 
    /// `cmp_func` is passed two items of `seq` and should
    /// return 0 if they are equal, a negative value if the
    /// first comes before the second, and a positive value
    /// if the second comes before the first.
    @inlinable func sort(cmpFunc: GCompareDataFunc?, cmpData: gpointer! = nil) {
        g_sequence_sort(_ptr, cmpFunc, cmpData)
    
    }

    /// Like `g_sequence_sort()`, but uses a `GSequenceIterCompareFunc` instead
    /// of a `GCompareDataFunc` as the compare function
    /// 
    /// `cmp_func` is called with two iterators pointing into `seq`. It should
    /// return 0 if the iterators are equal, a negative value if the first
    /// iterator comes before the second, and a positive value if the second
    /// iterator comes before the first.
    @inlinable func sortIter(cmpFunc: GSequenceIterCompareFunc?, cmpData: gpointer! = nil) {
        g_sequence_sort_iter(_ptr, cmpFunc, cmpData)
    
    }
    /// Returns the begin iterator for `seq`.
    @inlinable var beginIter: SequenceIterRef! {
        /// Returns the begin iterator for `seq`.
        get {
            let rv = SequenceIterRef(gconstpointer: gconstpointer(g_sequence_get_begin_iter(_ptr)))
            return rv
        }
    }

    /// Returns the end iterator for `seg`
    @inlinable var endIter: SequenceIterRef! {
        /// Returns the end iterator for `seg`
        get {
            let rv = SequenceIterRef(gconstpointer: gconstpointer(g_sequence_get_end_iter(_ptr)))
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
            let rv = ((g_sequence_is_empty(_ptr)) != 0)
            return rv
        }
    }

    /// Returns the length of `seq`. Note that this method is `O(h)` where `h' is the
    /// height of the tree. It is thus more efficient to use `g_sequence_is_empty()`
    /// when comparing the length to zero.
    @inlinable var length: Int {
        /// Returns the length of `seq`. Note that this method is `O(h)` where `h' is the
        /// height of the tree. It is thus more efficient to use `g_sequence_is_empty()`
        /// when comparing the length to zero.
        get {
            let rv = Int(g_sequence_get_length(_ptr))
            return rv
        }
    }


}



