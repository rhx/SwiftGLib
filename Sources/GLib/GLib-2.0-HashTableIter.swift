import CGLib

// MARK: - HashTableIter Record

/// The `HashTableIterProtocol` protocol exposes the methods and properties of an underlying `GHashTableIter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `HashTableIter`.
/// Alternatively, use `HashTableIterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A GHashTableIter structure represents an iterator that can be used
/// to iterate over the elements of a `GHashTable`. GHashTableIter
/// structures are typically allocated on the stack and then initialized
/// with `g_hash_table_iter_init()`.
/// 
/// The iteration order of a `GHashTableIter` over the keys/values in a hash
/// table is not defined.
public protocol HashTableIterProtocol {
        /// Untyped pointer to the underlying `GHashTableIter` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GHashTableIter` instance.
    var _ptr: UnsafeMutablePointer<GHashTableIter>! { get }

}

/// The `HashTableIterRef` type acts as a lightweight Swift reference to an underlying `GHashTableIter` instance.
/// It exposes methods that can operate on this data type through `HashTableIterProtocol` conformance.
/// Use `HashTableIterRef` only as an `unowned` reference to an existing `GHashTableIter` instance.
///
/// A GHashTableIter structure represents an iterator that can be used
/// to iterate over the elements of a `GHashTable`. GHashTableIter
/// structures are typically allocated on the stack and then initialized
/// with `g_hash_table_iter_init()`.
/// 
/// The iteration order of a `GHashTableIter` over the keys/values in a hash
/// table is not defined.
public struct HashTableIterRef: HashTableIterProtocol {
        /// Untyped pointer to the underlying `GHashTableIter` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension HashTableIterRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GHashTableIter>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GHashTableIter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GHashTableIter>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GHashTableIter>?) {
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

    /// Reference intialiser for a related type that implements `HashTableIterProtocol`
    @inlinable init<T: HashTableIterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableIterProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableIterProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableIterProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableIterProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableIterProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `HashTableIter` type acts as an owner of an underlying `GHashTableIter` instance.
/// It provides the methods that can operate on this data type through `HashTableIterProtocol` conformance.
/// Use `HashTableIter` as a strong reference or owner of a `GHashTableIter` instance.
///
/// A GHashTableIter structure represents an iterator that can be used
/// to iterate over the elements of a `GHashTable`. GHashTableIter
/// structures are typically allocated on the stack and then initialized
/// with `g_hash_table_iter_init()`.
/// 
/// The iteration order of a `GHashTableIter` over the keys/values in a hash
/// table is not defined.
open class HashTableIter: HashTableIterProtocol {
        /// Untyped pointer to the underlying `GHashTableIter` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HashTableIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GHashTableIter>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HashTableIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GHashTableIter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HashTableIter` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HashTableIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HashTableIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GHashTableIter>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HashTableIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GHashTableIter>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GHashTableIter` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `HashTableIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GHashTableIter>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GHashTableIter, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `HashTableIterProtocol`
    /// `GHashTableIter` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `HashTableIterProtocol`
    @inlinable public init<T: HashTableIterProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GHashTableIter, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GHashTableIter`.
    deinit {
        // no reference counting for GHashTableIter, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GHashTableIter, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableIterProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableIterProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GHashTableIter, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableIterProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableIterProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GHashTableIter, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GHashTableIter, cannot ref(_ptr)
    }



}

// MARK: no HashTableIter properties

// MARK: no HashTableIter signals


// MARK: HashTableIter Record: HashTableIterProtocol extension (methods and fields)
public extension HashTableIterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GHashTableIter` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GHashTableIter>! { return ptr?.assumingMemoryBound(to: GHashTableIter.self) }

    /// Returns the `GHashTable` associated with `iter`.
    @inlinable func getHashTable() -> GLib.HashTableRef! {
        let rv = GLib.HashTableRef(g_hash_table_iter_get_hash_table(_ptr))
        return rv
    }

    /// Initializes a key/value pair iterator and associates it with
    /// `hash_table`. Modifying the hash table after calling this function
    /// invalidates the returned iterator.
    /// 
    /// The iteration order of a `GHashTableIter` over the keys/values in a hash
    /// table is not defined.
    /// 
    /// (C Language Example):
    /// ```C
    /// GHashTableIter iter;
    /// gpointer key, value;
    /// 
    /// g_hash_table_iter_init (&iter, hash_table);
    /// while (g_hash_table_iter_next (&iter, &key, &value))
    ///   {
    ///     // do something with key and value
    ///   }
    /// ```
    /// 
    @inlinable func init_<HashTableT: HashTableProtocol>(hashTable: HashTableT) {
        g_hash_table_iter_init(_ptr, hashTable.hash_table_ptr)
    
    }

    /// Advances `iter` and retrieves the key and/or value that are now
    /// pointed to as a result of this advancement. If `false` is returned,
    /// `key` and `value` are not set, and the iterator becomes invalid.
    @inlinable func next(key: UnsafeMutablePointer<gpointer?>? = nil, value: UnsafeMutablePointer<gpointer?>? = nil) -> Bool {
        let rv = ((g_hash_table_iter_next(_ptr, key, value)) != 0)
        return rv
    }

    /// Removes the key/value pair currently pointed to by the iterator
    /// from its associated `GHashTable`. Can only be called after
    /// `g_hash_table_iter_next()` returned `true`, and cannot be called
    /// more than once for the same key/value pair.
    /// 
    /// If the `GHashTable` was created using `g_hash_table_new_full()`,
    /// the key and value are freed using the supplied destroy functions,
    /// otherwise you have to make sure that any dynamically allocated
    /// values are freed yourself.
    /// 
    /// It is safe to continue iterating the `GHashTable` afterward:
    /// (C Language Example):
    /// ```C
    /// while (g_hash_table_iter_next (&iter, &key, &value))
    ///   {
    ///     if (condition)
    ///       g_hash_table_iter_remove (&iter);
    ///   }
    /// ```
    /// 
    @inlinable func remove() {
        g_hash_table_iter_remove(_ptr)
    
    }

    /// Replaces the value currently pointed to by the iterator
    /// from its associated `GHashTable`. Can only be called after
    /// `g_hash_table_iter_next()` returned `true`.
    /// 
    /// If you supplied a `value_destroy_func` when creating the
    /// `GHashTable`, the old value is freed using that function.
    @inlinable func replace(value: gpointer! = nil) {
        g_hash_table_iter_replace(_ptr, value)
    
    }

    /// Removes the key/value pair currently pointed to by the
    /// iterator from its associated `GHashTable`, without calling
    /// the key and value destroy functions. Can only be called
    /// after `g_hash_table_iter_next()` returned `true`, and cannot
    /// be called more than once for the same key/value pair.
    @inlinable func steal() {
        g_hash_table_iter_steal(_ptr)
    
    }
    /// Returns the `GHashTable` associated with `iter`.
    @inlinable var hashTable: GLib.HashTableRef! {
        /// Returns the `GHashTable` associated with `iter`.
        get {
            let rv = GLib.HashTableRef(g_hash_table_iter_get_hash_table(_ptr))
            return rv
        }
    }

    // var dummy1 is unavailable because dummy1 is private

    // var dummy2 is unavailable because dummy2 is private

    // var dummy3 is unavailable because dummy3 is private

    // var dummy4 is unavailable because dummy4 is private

    // var dummy5 is unavailable because dummy5 is private

    // var dummy6 is unavailable because dummy6 is private

}



