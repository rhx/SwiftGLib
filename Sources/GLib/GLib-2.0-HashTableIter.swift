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
/// with g_hash_table_iter_init().
public protocol HashTableIterProtocol {
    /// Untyped pointer to the underlying `GHashTableIter` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GHashTableIter` instance.
    var _ptr: UnsafeMutablePointer<GHashTableIter> { get }
}

/// The `HashTableIterRef` type acts as a lightweight Swift reference to an underlying `GHashTableIter` instance.
/// It exposes methods that can operate on this data type through `HashTableIterProtocol` conformance.
/// Use `HashTableIterRef` only as an `unowned` reference to an existing `GHashTableIter` instance.
///
/// A GHashTableIter structure represents an iterator that can be used
/// to iterate over the elements of a `GHashTable`. GHashTableIter
/// structures are typically allocated on the stack and then initialized
/// with g_hash_table_iter_init().
public struct HashTableIterRef: HashTableIterProtocol {
    /// Untyped pointer to the underlying `GHashTableIter` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension HashTableIterRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GHashTableIter>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `HashTableIterProtocol`
    init<T: HashTableIterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableIterProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableIterProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableIterProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableIterProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableIterProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
/// with g_hash_table_iter_init().
open class HashTableIter: HashTableIterProtocol {
    /// Untyped pointer to the underlying `GHashTableIter` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `HashTableIter` instance.
    public init(_ op: UnsafeMutablePointer<GHashTableIter>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `HashTableIterProtocol`
    /// `GHashTableIter` does not allow reference counting.
    public convenience init<T: HashTableIterProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GHashTableIter, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GHashTableIter`.
    deinit {
        // no reference counting for GHashTableIter, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableIterProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GHashTableIter.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableIterProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GHashTableIter.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableIterProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GHashTableIter.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableIterProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GHashTableIter>(opaquePointer))
    }



}

// MARK: - no HashTableIter properties

// MARK: - no signals


public extension HashTableIterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GHashTableIter` instance.
    var _ptr: UnsafeMutablePointer<GHashTableIter> { return ptr.assumingMemoryBound(to: GHashTableIter.self) }

    /// Returns the `GHashTable` associated with `iter`.
    func getHashTable() -> UnsafeMutablePointer<GHashTable>! {
        let rv = g_hash_table_iter_get_hash_table(cast(_ptr))
        return cast(rv)
    }

    /// Initializes a key/value pair iterator and associates it with
    /// `hash_table`. Modifying the hash table after calling this function
    /// invalidates the returned iterator.
    /// |[<!-- language="C" -->
    /// GHashTableIter iter;
    /// gpointer key, value;
    /// 
    /// g_hash_table_iter_init (&iter, hash_table);
    /// while (g_hash_table_iter_next (&iter, &key, &value))
    ///   {
    ///     // do something with key and value
    ///   }
    /// ]|
    func init_(hashTable hash_table: HashTableProtocol) {
        g_hash_table_iter_init(cast(_ptr), cast(hash_table.ptr))
    
    }

    /// Advances `iter` and retrieves the key and/or value that are now
    /// pointed to as a result of this advancement. If `false` is returned,
    /// `key` and `value` are not set, and the iterator becomes invalid.
    func next(key: UnsafeMutablePointer<UnsafeMutableRawPointer>, value: UnsafeMutablePointer<UnsafeMutableRawPointer>) -> Bool {
        let rv = g_hash_table_iter_next(cast(_ptr), cast(key), cast(value))
        return Bool(rv != 0)
    }

    /// Removes the key/value pair currently pointed to by the iterator
    /// from its associated `GHashTable`. Can only be called after
    /// g_hash_table_iter_next() returned `true`, and cannot be called
    /// more than once for the same key/value pair.
    /// 
    /// If the `GHashTable` was created using g_hash_table_new_full(),
    /// the key and value are freed using the supplied destroy functions,
    /// otherwise you have to make sure that any dynamically allocated
    /// values are freed yourself.
    /// 
    /// It is safe to continue iterating the `GHashTable` afterward:
    /// |[<!-- language="C" -->
    /// while (g_hash_table_iter_next (&iter, &key, &value))
    ///   {
    ///     if (condition)
    ///       g_hash_table_iter_remove (&iter);
    ///   }
    /// ]|
    func remove() {
        g_hash_table_iter_remove(cast(_ptr))
    
    }

    /// Replaces the value currently pointed to by the iterator
    /// from its associated `GHashTable`. Can only be called after
    /// g_hash_table_iter_next() returned `true`.
    /// 
    /// If you supplied a `value_destroy_func` when creating the
    /// `GHashTable`, the old value is freed using that function.
    func replace(value: UnsafeMutableRawPointer) {
        g_hash_table_iter_replace(cast(_ptr), cast(value))
    
    }

    /// Removes the key/value pair currently pointed to by the
    /// iterator from its associated `GHashTable`, without calling
    /// the key and value destroy functions. Can only be called
    /// after g_hash_table_iter_next() returned `true`, and cannot
    /// be called more than once for the same key/value pair.
    func steal() {
        g_hash_table_iter_steal(cast(_ptr))
    
    }
    /// Returns the `GHashTable` associated with `iter`.
    var hashTable: UnsafeMutablePointer<GHashTable>! {
        /// Returns the `GHashTable` associated with `iter`.
        get {
            let rv = g_hash_table_iter_get_hash_table(cast(_ptr))
            return cast(rv)
        }
    }
}



