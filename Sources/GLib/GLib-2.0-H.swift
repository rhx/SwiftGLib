import CGLib

// MARK: - HashTable Record

/// The `GHashTable` struct is an opaque data structure to represent a
/// [Hash Table](../Protocols/HashTableProtocol.html). It should only be accessed via the
/// following functions.
///
/// The `HashTableProtocol` protocol exposes the methods and properties of an underlying `GHashTable` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `HashTable`.
/// Alternatively, use `HashTableRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol HashTableProtocol {
        /// Untyped pointer to the underlying `GHashTable` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GHashTable` instance.
    var hash_table_ptr: UnsafeMutablePointer<GHashTable>! { get }

    /// Required Initialiser for types conforming to `HashTableProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `GHashTable` struct is an opaque data structure to represent a
/// [Hash Table](../Protocols/HashTableProtocol.html). It should only be accessed via the
/// following functions.
///
/// The `HashTableRef` type acts as a lightweight Swift reference to an underlying `GHashTable` instance.
/// It exposes methods that can operate on this data type through `HashTableProtocol` conformance.
/// Use `HashTableRef` only as an `unowned` reference to an existing `GHashTable` instance.
///
public struct HashTableRef: HashTableProtocol {
        /// Untyped pointer to the underlying `GHashTable` instance.
    /// For type-safe access, use the generated, typed pointer `hash_table_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension HashTableRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GHashTable>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GHashTable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GHashTable>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GHashTable>?) {
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

    /// Reference intialiser for a related type that implements `HashTableProtocol`
    @inlinable init<T: HashTableProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GHashTable` like `g_hash_table_new()` with a reference
    /// count of 1 and allows to specify functions to free the memory
    /// allocated for the key and value that get called when removing the
    /// entry from the `GHashTable`.
    /// 
    /// Since version 2.42 it is permissible for destroy notify functions to
    /// recursively remove further items from the hash table. This is only
    /// permissible if the application still holds a reference to the hash table.
    /// This means that you may need to ensure that the hash table is empty by
    /// calling `g_hash_table_remove_all()` before releasing the last reference using
    /// `g_hash_table_unref()`.
    @inlinable static func new(full hashFunc: GHashFunc?, keyEqualFunc: GEqualFunc?, keyDestroyFunc: GDestroyNotify? = nil, valueDestroyFunc: GDestroyNotify? = nil) -> HashTableRef! {
            let result = g_hash_table_new_full(hashFunc, keyEqualFunc, keyDestroyFunc, valueDestroyFunc)
        guard let rv = HashTableRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }
}

/// The `GHashTable` struct is an opaque data structure to represent a
/// [Hash Table](../Protocols/HashTableProtocol.html). It should only be accessed via the
/// following functions.
///
/// The `HashTable` type acts as a reference-counted owner of an underlying `GHashTable` instance.
/// It provides the methods that can operate on this data type through `HashTableProtocol` conformance.
/// Use `HashTable` as a strong reference or owner of a `GHashTable` instance.
///
open class HashTable: HashTableProtocol {
        /// Untyped pointer to the underlying `GHashTable` instance.
    /// For type-safe access, use the generated, typed pointer `hash_table_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HashTable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GHashTable>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HashTable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GHashTable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HashTable` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HashTable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HashTable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GHashTable>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HashTable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GHashTable>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GHashTable`.
    /// i.e., ownership is transferred to the `HashTable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GHashTable>) {
        ptr = UnsafeMutableRawPointer(op)
        g_hash_table_ref(ptr.assumingMemoryBound(to: GHashTable.self))
    }

    /// Reference intialiser for a related type that implements `HashTableProtocol`
    /// Will retain `GHashTable`.
    /// - Parameter other: an instance of a related type that implements `HashTableProtocol`
    @inlinable public init<T: HashTableProtocol>(_ other: T) {
        ptr = other.ptr
        g_hash_table_ref(ptr.assumingMemoryBound(to: GHashTable.self))
    }

    /// Releases the underlying `GHashTable` instance using `g_hash_table_unref`.
    deinit {
        g_hash_table_unref(ptr.assumingMemoryBound(to: GHashTable.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_hash_table_ref(ptr.assumingMemoryBound(to: GHashTable.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_hash_table_ref(ptr.assumingMemoryBound(to: GHashTable.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_hash_table_ref(ptr.assumingMemoryBound(to: GHashTable.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_hash_table_ref(ptr.assumingMemoryBound(to: GHashTable.self))
    }


    /// Creates a new `GHashTable` like `g_hash_table_new()` with a reference
    /// count of 1 and allows to specify functions to free the memory
    /// allocated for the key and value that get called when removing the
    /// entry from the `GHashTable`.
    /// 
    /// Since version 2.42 it is permissible for destroy notify functions to
    /// recursively remove further items from the hash table. This is only
    /// permissible if the application still holds a reference to the hash table.
    /// This means that you may need to ensure that the hash table is empty by
    /// calling `g_hash_table_remove_all()` before releasing the last reference using
    /// `g_hash_table_unref()`.
    @inlinable public static func new(full hashFunc: GHashFunc?, keyEqualFunc: GEqualFunc?, keyDestroyFunc: GDestroyNotify? = nil, valueDestroyFunc: GDestroyNotify? = nil) -> HashTable! {
            let result = g_hash_table_new_full(hashFunc, keyEqualFunc, keyDestroyFunc, valueDestroyFunc)
        guard let rv = HashTable(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

}

// MARK: no HashTable properties

// MARK: no HashTable signals

// MARK: HashTable has no signals
// MARK: HashTable Record: HashTableProtocol extension (methods and fields)
public extension HashTableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GHashTable` instance.
    @inlinable var hash_table_ptr: UnsafeMutablePointer<GHashTable>! { return ptr?.assumingMemoryBound(to: GHashTable.self) }

    /// This is a convenience function for using a `GHashTable` as a set.  It
    /// is equivalent to calling `g_hash_table_replace()` with `key` as both the
    /// key and the value.
    /// 
    /// In particular, this means that if `key` already exists in the hash table, then
    /// the old copy of `key` in the hash table is freed and `key` replaces it in the
    /// table.
    /// 
    /// When a hash table only ever contains keys that have themselves as the
    /// corresponding value it is able to be stored more efficiently.  See
    /// the discussion in the section description.
    /// 
    /// Starting from GLib 2.40, this function returns a boolean value to
    /// indicate whether the newly added value was already in the hash table
    /// or not.
    @inlinable func add(key: gpointer? = nil) -> Bool {
        let result = g_hash_table_add(hash_table_ptr, key)
        let rv = ((result) != 0)
        return rv
    }

    /// Checks if `key` is in `hash_table`.
    @inlinable func contains(key: gconstpointer? = nil) -> Bool {
        let result = g_hash_table_contains(hash_table_ptr, key)
        let rv = ((result) != 0)
        return rv
    }

    /// Destroys all keys and values in the `GHashTable` and decrements its
    /// reference count by 1. If keys and/or values are dynamically allocated,
    /// you should either free them first or create the `GHashTable` with destroy
    /// notifiers using `g_hash_table_new_full()`. In the latter case the destroy
    /// functions you supplied will be called on all keys and values during the
    /// destruction phase.
    @inlinable func destroy() {
        
        g_hash_table_destroy(hash_table_ptr)
        
    }

    /// Calls the given function for key/value pairs in the `GHashTable`
    /// until `predicate` returns `true`. The function is passed the key
    /// and value of each pair, and the given `user_data` parameter. The
    /// hash table may not be modified while iterating over it (you can't
    /// add/remove items).
    /// 
    /// Note, that hash tables are really only optimized for forward
    /// lookups, i.e. `g_hash_table_lookup()`. So code that frequently issues
    /// `g_hash_table_find()` or `g_hash_table_foreach()` (e.g. in the order of
    /// once per every entry in a hash table) should probably be reworked
    /// to use additional or different data structures for reverse lookups
    /// (keep in mind that an `O(n)` find/foreach operation issued for all n
    /// values in a hash table ends up needing `O(n*n)` operations).
    @inlinable func find(predicate: GHRFunc?, userData: gpointer? = nil) -> gpointer? {
        let result = g_hash_table_find(hash_table_ptr, predicate, userData)
        let rv = result
        return rv
    }

    /// Calls the given function for each of the key/value pairs in the
    /// `GHashTable`.  The function is passed the key and value of each
    /// pair, and the given `user_data` parameter.  The hash table may not
    /// be modified while iterating over it (you can't add/remove
    /// items). To remove all items matching a predicate, use
    /// `g_hash_table_foreach_remove()`.
    /// 
    /// The order in which `g_hash_table_foreach()` iterates over the keys/values in
    /// the hash table is not defined.
    /// 
    /// See `g_hash_table_find()` for performance caveats for linear
    /// order searches in contrast to `g_hash_table_lookup()`.
    @inlinable func foreach(`func`: GHFunc?, userData: gpointer? = nil) {
        
        g_hash_table_foreach(hash_table_ptr, `func`, userData)
        
    }

    /// Calls the given function for each key/value pair in the
    /// `GHashTable`. If the function returns `true`, then the key/value
    /// pair is removed from the `GHashTable`. If you supplied key or
    /// value destroy functions when creating the `GHashTable`, they are
    /// used to free the memory allocated for the removed keys and values.
    /// 
    /// See `GHashTableIter` for an alternative way to loop over the
    /// key/value pairs in the hash table.
    @inlinable func foreachRemove(`func`: GHRFunc?, userData: gpointer? = nil) -> Int {
        let result = g_hash_table_foreach_remove(hash_table_ptr, `func`, userData)
        let rv = Int(result)
        return rv
    }

    /// Calls the given function for each key/value pair in the
    /// `GHashTable`. If the function returns `true`, then the key/value
    /// pair is removed from the `GHashTable`, but no key or value
    /// destroy functions are called.
    /// 
    /// See `GHashTableIter` for an alternative way to loop over the
    /// key/value pairs in the hash table.
    @inlinable func foreachSteal(`func`: GHRFunc?, userData: gpointer? = nil) -> Int {
        let result = g_hash_table_foreach_steal(hash_table_ptr, `func`, userData)
        let rv = Int(result)
        return rv
    }

    /// Retrieves every key inside `hash_table`. The returned data is valid
    /// until changes to the hash release those keys.
    /// 
    /// This iterates over every entry in the hash table to build its return value.
    /// To iterate over the entries in a `GHashTable` more efficiently, use a
    /// `GHashTableIter`.
    @inlinable func getKeys() -> ListRef! {
        let result = g_hash_table_get_keys(hash_table_ptr)
        let rv = ListRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Retrieves every key inside `hash_table`, as an array.
    /// 
    /// The returned array is `nil`-terminated but may contain `nil` as a
    /// key.  Use `length` to determine the true length if it's possible that
    /// `nil` was used as the value for a key.
    /// 
    /// Note: in the common case of a string-keyed `GHashTable`, the return
    /// value of this function can be conveniently cast to (const gchar **).
    /// 
    /// This iterates over every entry in the hash table to build its return value.
    /// To iterate over the entries in a `GHashTable` more efficiently, use a
    /// `GHashTableIter`.
    /// 
    /// You should always free the return result with `g_free()`.  In the
    /// above-mentioned case of a string-keyed hash table, it may be
    /// appropriate to use `g_strfreev()` if you call `g_hash_table_steal_all()`
    /// first to transfer ownership of the keys.
    @inlinable func getKeysAsArray(length: UnsafeMutablePointer<guint>! = nil) -> UnsafeMutablePointer<gpointer?>! {
        let result = g_hash_table_get_keys_as_array(hash_table_ptr, length)
        let rv = result
        return rv
    }

    /// Retrieves every value inside `hash_table`. The returned data
    /// is valid until `hash_table` is modified.
    /// 
    /// This iterates over every entry in the hash table to build its return value.
    /// To iterate over the entries in a `GHashTable` more efficiently, use a
    /// `GHashTableIter`.
    @inlinable func getValues() -> ListRef! {
        let result = g_hash_table_get_values(hash_table_ptr)
        let rv = ListRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Inserts a new key and value into a `GHashTable`.
    /// 
    /// If the key already exists in the `GHashTable` its current
    /// value is replaced with the new value. If you supplied a
    /// `value_destroy_func` when creating the `GHashTable`, the old
    /// value is freed using that function. If you supplied a
    /// `key_destroy_func` when creating the `GHashTable`, the passed
    /// key is freed using that function.
    /// 
    /// Starting from GLib 2.40, this function returns a boolean value to
    /// indicate whether the newly added value was already in the hash table
    /// or not.
    @inlinable func insert(key: gpointer? = nil, value: gpointer? = nil) -> Bool {
        let result = g_hash_table_insert(hash_table_ptr, key, value)
        let rv = ((result) != 0)
        return rv
    }

    /// Looks up a key in a `GHashTable`. Note that this function cannot
    /// distinguish between a key that is not present and one which is present
    /// and has the value `nil`. If you need this distinction, use
    /// `g_hash_table_lookup_extended()`.
    @inlinable func lookup(key: gconstpointer? = nil) -> gpointer? {
        let result = g_hash_table_lookup(hash_table_ptr, key)
        let rv = result
        return rv
    }

    /// Looks up a key in the `GHashTable`, returning the original key and the
    /// associated value and a `gboolean` which is `true` if the key was found. This
    /// is useful if you need to free the memory allocated for the original key,
    /// for example before calling `g_hash_table_remove()`.
    /// 
    /// You can actually pass `nil` for `lookup_key` to test
    /// whether the `nil` key exists, provided the hash and equal functions
    /// of `hash_table` are `nil`-safe.
    @inlinable func lookupExtended(lookupKey: gconstpointer? = nil, origKey: UnsafeMutablePointer<gpointer?>? = nil, value: UnsafeMutablePointer<gpointer?>? = nil) -> Bool {
        let result = g_hash_table_lookup_extended(hash_table_ptr, lookupKey, origKey, value)
        let rv = ((result) != 0)
        return rv
    }

    /// Atomically increments the reference count of `hash_table` by one.
    /// This function is MT-safe and may be called from any thread.
    @discardableResult @inlinable func ref() -> HashTableRef! {
        let result = g_hash_table_ref(hash_table_ptr)
        guard let rv = HashTableRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Removes a key and its associated value from a `GHashTable`.
    /// 
    /// If the `GHashTable` was created using `g_hash_table_new_full()`, the
    /// key and value are freed using the supplied destroy functions, otherwise
    /// you have to make sure that any dynamically allocated values are freed
    /// yourself.
    @inlinable func remove(key: gconstpointer? = nil) -> Bool {
        let result = g_hash_table_remove(hash_table_ptr, key)
        let rv = ((result) != 0)
        return rv
    }

    /// Removes all keys and their associated values from a `GHashTable`.
    /// 
    /// If the `GHashTable` was created using `g_hash_table_new_full()`,
    /// the keys and values are freed using the supplied destroy functions,
    /// otherwise you have to make sure that any dynamically allocated
    /// values are freed yourself.
    @inlinable func removeAll() {
        
        g_hash_table_remove_all(hash_table_ptr)
        
    }

    /// Inserts a new key and value into a `GHashTable` similar to
    /// `g_hash_table_insert()`. The difference is that if the key
    /// already exists in the `GHashTable`, it gets replaced by the
    /// new key. If you supplied a `value_destroy_func` when creating
    /// the `GHashTable`, the old value is freed using that function.
    /// If you supplied a `key_destroy_func` when creating the
    /// `GHashTable`, the old key is freed using that function.
    /// 
    /// Starting from GLib 2.40, this function returns a boolean value to
    /// indicate whether the newly added value was already in the hash table
    /// or not.
    @inlinable func replace(key: gpointer? = nil, value: gpointer? = nil) -> Bool {
        let result = g_hash_table_replace(hash_table_ptr, key, value)
        let rv = ((result) != 0)
        return rv
    }

    /// Returns the number of elements contained in the `GHashTable`.
    @inlinable func size() -> Int {
        let result = g_hash_table_size(hash_table_ptr)
        let rv = Int(result)
        return rv
    }

    /// Removes a key and its associated value from a `GHashTable` without
    /// calling the key and value destroy functions.
    @inlinable func steal(key: gconstpointer? = nil) -> Bool {
        let result = g_hash_table_steal(hash_table_ptr, key)
        let rv = ((result) != 0)
        return rv
    }

    /// Removes all keys and their associated values from a `GHashTable`
    /// without calling the key and value destroy functions.
    @inlinable func stealAll() {
        
        g_hash_table_steal_all(hash_table_ptr)
        
    }

    /// Looks up a key in the `GHashTable`, stealing the original key and the
    /// associated value and returning `true` if the key was found. If the key was
    /// not found, `false` is returned.
    /// 
    /// If found, the stolen key and value are removed from the hash table without
    /// calling the key and value destroy functions, and ownership is transferred to
    /// the caller of this method; as with `g_hash_table_steal()`.
    /// 
    /// You can pass `nil` for `lookup_key`, provided the hash and equal functions
    /// of `hash_table` are `nil`-safe.
    @inlinable func stealExtended(lookupKey: gconstpointer? = nil, stolenKey: UnsafeMutablePointer<gpointer?>? = nil, stolenValue: UnsafeMutablePointer<gpointer?>? = nil) -> Bool {
        let result = g_hash_table_steal_extended(hash_table_ptr, lookupKey, stolenKey, stolenValue)
        let rv = ((result) != 0)
        return rv
    }

    /// Atomically decrements the reference count of `hash_table` by one.
    /// If the reference count drops to 0, all keys and values will be
    /// destroyed, and all memory allocated by the hash table is released.
    /// This function is MT-safe and may be called from any thread.
    @inlinable func unref() {
        
        g_hash_table_unref(hash_table_ptr)
        
    }

    /// This is a convenience function for using a `GHashTable` as a set.  It
    /// is equivalent to calling `g_hash_table_replace()` with `key` as both the
    /// key and the value.
    /// 
    /// In particular, this means that if `key` already exists in the hash table, then
    /// the old copy of `key` in the hash table is freed and `key` replaces it in the
    /// table.
    /// 
    /// When a hash table only ever contains keys that have themselves as the
    /// corresponding value it is able to be stored more efficiently.  See
    /// the discussion in the section description.
    /// 
    /// Starting from GLib 2.40, this function returns a boolean value to
    /// indicate whether the newly added value was already in the hash table
    /// or not.
    @inlinable func hashTableAdd(key: gpointer? = nil) -> Bool {
        let result = g_hash_table_add(hash_table_ptr, key)
        let rv = ((result) != 0)
        return rv
    }

    /// Checks if `key` is in `hash_table`.
    @inlinable func hashTableContains(key: gconstpointer? = nil) -> Bool {
        let result = g_hash_table_contains(hash_table_ptr, key)
        let rv = ((result) != 0)
        return rv
    }

    /// Destroys all keys and values in the `GHashTable` and decrements its
    /// reference count by 1. If keys and/or values are dynamically allocated,
    /// you should either free them first or create the `GHashTable` with destroy
    /// notifiers using `g_hash_table_new_full()`. In the latter case the destroy
    /// functions you supplied will be called on all keys and values during the
    /// destruction phase.
    @inlinable func hashTableDestroy() {
        
        g_hash_table_destroy(hash_table_ptr)
        
    }

    /// Inserts a new key and value into a `GHashTable`.
    /// 
    /// If the key already exists in the `GHashTable` its current
    /// value is replaced with the new value. If you supplied a
    /// `value_destroy_func` when creating the `GHashTable`, the old
    /// value is freed using that function. If you supplied a
    /// `key_destroy_func` when creating the `GHashTable`, the passed
    /// key is freed using that function.
    /// 
    /// Starting from GLib 2.40, this function returns a boolean value to
    /// indicate whether the newly added value was already in the hash table
    /// or not.
    @inlinable func hashTableInsert(key: gpointer? = nil, value: gpointer? = nil) -> Bool {
        let result = g_hash_table_insert(hash_table_ptr, key, value)
        let rv = ((result) != 0)
        return rv
    }

    /// Looks up a key in a `GHashTable`. Note that this function cannot
    /// distinguish between a key that is not present and one which is present
    /// and has the value `nil`. If you need this distinction, use
    /// `g_hash_table_lookup_extended()`.
    @inlinable func hashTableLookup(key: gconstpointer? = nil) -> gpointer? {
        let result = g_hash_table_lookup(hash_table_ptr, key)
        let rv = result
        return rv
    }

    /// Looks up a key in the `GHashTable`, returning the original key and the
    /// associated value and a `gboolean` which is `true` if the key was found. This
    /// is useful if you need to free the memory allocated for the original key,
    /// for example before calling `g_hash_table_remove()`.
    /// 
    /// You can actually pass `nil` for `lookup_key` to test
    /// whether the `nil` key exists, provided the hash and equal functions
    /// of `hash_table` are `nil`-safe.
    @inlinable func hashTableLookupExtended(lookupKey: gconstpointer? = nil, origKey: UnsafeMutablePointer<gpointer?>? = nil, value: UnsafeMutablePointer<gpointer?>? = nil) -> Bool {
        let result = g_hash_table_lookup_extended(hash_table_ptr, lookupKey, origKey, value)
        let rv = ((result) != 0)
        return rv
    }

    /// Removes a key and its associated value from a `GHashTable`.
    /// 
    /// If the `GHashTable` was created using `g_hash_table_new_full()`, the
    /// key and value are freed using the supplied destroy functions, otherwise
    /// you have to make sure that any dynamically allocated values are freed
    /// yourself.
    @inlinable func hashTableRemove(key: gconstpointer? = nil) -> Bool {
        let result = g_hash_table_remove(hash_table_ptr, key)
        let rv = ((result) != 0)
        return rv
    }

    /// Removes all keys and their associated values from a `GHashTable`.
    /// 
    /// If the `GHashTable` was created using `g_hash_table_new_full()`,
    /// the keys and values are freed using the supplied destroy functions,
    /// otherwise you have to make sure that any dynamically allocated
    /// values are freed yourself.
    @inlinable func hashTableRemoveAll() {
        
        g_hash_table_remove_all(hash_table_ptr)
        
    }

    /// Inserts a new key and value into a `GHashTable` similar to
    /// `g_hash_table_insert()`. The difference is that if the key
    /// already exists in the `GHashTable`, it gets replaced by the
    /// new key. If you supplied a `value_destroy_func` when creating
    /// the `GHashTable`, the old value is freed using that function.
    /// If you supplied a `key_destroy_func` when creating the
    /// `GHashTable`, the old key is freed using that function.
    /// 
    /// Starting from GLib 2.40, this function returns a boolean value to
    /// indicate whether the newly added value was already in the hash table
    /// or not.
    @inlinable func hashTableReplace(key: gpointer? = nil, value: gpointer? = nil) -> Bool {
        let result = g_hash_table_replace(hash_table_ptr, key, value)
        let rv = ((result) != 0)
        return rv
    }

    /// Returns the number of elements contained in the `GHashTable`.
    @inlinable func hashTableSize() -> Int {
        let result = g_hash_table_size(hash_table_ptr)
        let rv = Int(result)
        return rv
    }

    /// Removes a key and its associated value from a `GHashTable` without
    /// calling the key and value destroy functions.
    @inlinable func hashTableSteal(key: gconstpointer? = nil) -> Bool {
        let result = g_hash_table_steal(hash_table_ptr, key)
        let rv = ((result) != 0)
        return rv
    }

    /// Removes all keys and their associated values from a `GHashTable`
    /// without calling the key and value destroy functions.
    @inlinable func hashTableStealAll() {
        
        g_hash_table_steal_all(hash_table_ptr)
        
    }

    /// Looks up a key in the `GHashTable`, stealing the original key and the
    /// associated value and returning `true` if the key was found. If the key was
    /// not found, `false` is returned.
    /// 
    /// If found, the stolen key and value are removed from the hash table without
    /// calling the key and value destroy functions, and ownership is transferred to
    /// the caller of this method; as with `g_hash_table_steal()`.
    /// 
    /// You can pass `nil` for `lookup_key`, provided the hash and equal functions
    /// of `hash_table` are `nil`-safe.
    @inlinable func hashTableStealExtended(lookupKey: gconstpointer? = nil, stolenKey: UnsafeMutablePointer<gpointer?>? = nil, stolenValue: UnsafeMutablePointer<gpointer?>? = nil) -> Bool {
        let result = g_hash_table_steal_extended(hash_table_ptr, lookupKey, stolenKey, stolenValue)
        let rv = ((result) != 0)
        return rv
    }

    /// Atomically decrements the reference count of `hash_table` by one.
    /// If the reference count drops to 0, all keys and values will be
    /// destroyed, and all memory allocated by the hash table is released.
    /// This function is MT-safe and may be called from any thread.
    @inlinable func hashTableUnref() {
        
        g_hash_table_unref(hash_table_ptr)
        
    }
    /// Retrieves every key inside `hash_table`. The returned data is valid
    /// until changes to the hash release those keys.
    /// 
    /// This iterates over every entry in the hash table to build its return value.
    /// To iterate over the entries in a `GHashTable` more efficiently, use a
    /// `GHashTableIter`.
    @inlinable var keys: ListRef! {
        /// Retrieves every key inside `hash_table`. The returned data is valid
        /// until changes to the hash release those keys.
        /// 
        /// This iterates over every entry in the hash table to build its return value.
        /// To iterate over the entries in a `GHashTable` more efficiently, use a
        /// `GHashTableIter`.
        get {
            let result = g_hash_table_get_keys(hash_table_ptr)
        let rv = ListRef(gconstpointer: gconstpointer(result))
            return rv
        }
    }

    /// Retrieves every value inside `hash_table`. The returned data
    /// is valid until `hash_table` is modified.
    /// 
    /// This iterates over every entry in the hash table to build its return value.
    /// To iterate over the entries in a `GHashTable` more efficiently, use a
    /// `GHashTableIter`.
    @inlinable var values: ListRef! {
        /// Retrieves every value inside `hash_table`. The returned data
        /// is valid until `hash_table` is modified.
        /// 
        /// This iterates over every entry in the hash table to build its return value.
        /// To iterate over the entries in a `GHashTable` more efficiently, use a
        /// `GHashTableIter`.
        get {
            let result = g_hash_table_get_values(hash_table_ptr)
        let rv = ListRef(gconstpointer: gconstpointer(result))
            return rv
        }
    }


}



// MARK: - HashTableIter Record

/// A GHashTableIter structure represents an iterator that can be used
/// to iterate over the elements of a `GHashTable`. GHashTableIter
/// structures are typically allocated on the stack and then initialized
/// with `g_hash_table_iter_init()`.
/// 
/// The iteration order of a `GHashTableIter` over the keys/values in a hash
/// table is not defined.
///
/// The `HashTableIterProtocol` protocol exposes the methods and properties of an underlying `GHashTableIter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `HashTableIter`.
/// Alternatively, use `HashTableIterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol HashTableIterProtocol {
        /// Untyped pointer to the underlying `GHashTableIter` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GHashTableIter` instance.
    var _ptr: UnsafeMutablePointer<GHashTableIter>! { get }

    /// Required Initialiser for types conforming to `HashTableIterProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A GHashTableIter structure represents an iterator that can be used
/// to iterate over the elements of a `GHashTable`. GHashTableIter
/// structures are typically allocated on the stack and then initialized
/// with `g_hash_table_iter_init()`.
/// 
/// The iteration order of a `GHashTableIter` over the keys/values in a hash
/// table is not defined.
///
/// The `HashTableIterRef` type acts as a lightweight Swift reference to an underlying `GHashTableIter` instance.
/// It exposes methods that can operate on this data type through `HashTableIterProtocol` conformance.
/// Use `HashTableIterRef` only as an `unowned` reference to an existing `GHashTableIter` instance.
///
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

/// A GHashTableIter structure represents an iterator that can be used
/// to iterate over the elements of a `GHashTable`. GHashTableIter
/// structures are typically allocated on the stack and then initialized
/// with `g_hash_table_iter_init()`.
/// 
/// The iteration order of a `GHashTableIter` over the keys/values in a hash
/// table is not defined.
///
/// The `HashTableIter` type acts as an owner of an underlying `GHashTableIter` instance.
/// It provides the methods that can operate on this data type through `HashTableIterProtocol` conformance.
/// Use `HashTableIter` as a strong reference or owner of a `GHashTableIter` instance.
///
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
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

// MARK: HashTableIter has no signals
// MARK: HashTableIter Record: HashTableIterProtocol extension (methods and fields)
public extension HashTableIterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GHashTableIter` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GHashTableIter>! { return ptr?.assumingMemoryBound(to: GHashTableIter.self) }

    /// Returns the `GHashTable` associated with `iter`.
    @inlinable func getHashTable() -> HashTableRef! {
        let result = g_hash_table_iter_get_hash_table(_ptr)
        let rv = HashTableRef(gconstpointer: gconstpointer(result))
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
        let result = g_hash_table_iter_next(_ptr, key, value)
        let rv = ((result) != 0)
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
    @inlinable func replace(value: gpointer? = nil) {
        
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
    @inlinable var hashTable: HashTableRef! {
        /// Returns the `GHashTable` associated with `iter`.
        get {
            let result = g_hash_table_iter_get_hash_table(_ptr)
        let rv = HashTableRef(gconstpointer: gconstpointer(result))
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



// MARK: - Hmac Record

/// An opaque structure representing a HMAC operation.
/// To create a new GHmac, use `g_hmac_new()`. To free
/// a GHmac, use `g_hmac_unref()`.
///
/// The `HmacProtocol` protocol exposes the methods and properties of an underlying `GHmac` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Hmac`.
/// Alternatively, use `HmacRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol HmacProtocol {
        /// Untyped pointer to the underlying `GHmac` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GHmac` instance.
    var _ptr: UnsafeMutablePointer<GHmac>! { get }

    /// Required Initialiser for types conforming to `HmacProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// An opaque structure representing a HMAC operation.
/// To create a new GHmac, use `g_hmac_new()`. To free
/// a GHmac, use `g_hmac_unref()`.
///
/// The `HmacRef` type acts as a lightweight Swift reference to an underlying `GHmac` instance.
/// It exposes methods that can operate on this data type through `HmacProtocol` conformance.
/// Use `HmacRef` only as an `unowned` reference to an existing `GHmac` instance.
///
public struct HmacRef: HmacProtocol {
        /// Untyped pointer to the underlying `GHmac` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension HmacRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GHmac>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GHmac>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GHmac>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GHmac>?) {
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

    /// Reference intialiser for a related type that implements `HmacProtocol`
    @inlinable init<T: HmacProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HmacProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HmacProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HmacProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HmacProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HmacProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// An opaque structure representing a HMAC operation.
/// To create a new GHmac, use `g_hmac_new()`. To free
/// a GHmac, use `g_hmac_unref()`.
///
/// The `Hmac` type acts as a reference-counted owner of an underlying `GHmac` instance.
/// It provides the methods that can operate on this data type through `HmacProtocol` conformance.
/// Use `Hmac` as a strong reference or owner of a `GHmac` instance.
///
open class Hmac: HmacProtocol {
        /// Untyped pointer to the underlying `GHmac` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Hmac` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GHmac>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Hmac` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GHmac>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Hmac` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Hmac` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Hmac` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GHmac>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Hmac` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GHmac>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GHmac`.
    /// i.e., ownership is transferred to the `Hmac` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GHmac>) {
        ptr = UnsafeMutableRawPointer(op)
        g_hmac_ref(ptr.assumingMemoryBound(to: GHmac.self))
    }

    /// Reference intialiser for a related type that implements `HmacProtocol`
    /// Will retain `GHmac`.
    /// - Parameter other: an instance of a related type that implements `HmacProtocol`
    @inlinable public init<T: HmacProtocol>(_ other: T) {
        ptr = other.ptr
        g_hmac_ref(ptr.assumingMemoryBound(to: GHmac.self))
    }

    /// Releases the underlying `GHmac` instance using `g_hmac_unref`.
    deinit {
        g_hmac_unref(ptr.assumingMemoryBound(to: GHmac.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HmacProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HmacProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_hmac_ref(ptr.assumingMemoryBound(to: GHmac.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HmacProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HmacProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_hmac_ref(ptr.assumingMemoryBound(to: GHmac.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HmacProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HmacProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_hmac_ref(ptr.assumingMemoryBound(to: GHmac.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HmacProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HmacProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_hmac_ref(ptr.assumingMemoryBound(to: GHmac.self))
    }



}

// MARK: no Hmac properties

// MARK: no Hmac signals

// MARK: Hmac has no signals
// MARK: Hmac Record: HmacProtocol extension (methods and fields)
public extension HmacProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GHmac` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GHmac>! { return ptr?.assumingMemoryBound(to: GHmac.self) }

    /// Copies a `GHmac`. If `hmac` has been closed, by calling
    /// `g_hmac_get_string()` or `g_hmac_get_digest()`, the copied
    /// HMAC will be closed as well.
    @inlinable func copy() -> HmacRef! {
        let result = g_hmac_copy(_ptr)
        guard let rv = HmacRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Gets the digest from `checksum` as a raw binary array and places it
    /// into `buffer`. The size of the digest depends on the type of checksum.
    /// 
    /// Once this function has been called, the `GHmac` is closed and can
    /// no longer be updated with `g_checksum_update()`.
    @inlinable func getDigest(buffer: UnsafeMutablePointer<guint8>!, digestLen: UnsafeMutablePointer<gsize>!) {
        
        g_hmac_get_digest(_ptr, buffer, digestLen)
        
    }

    /// Gets the HMAC as a hexadecimal string.
    /// 
    /// Once this function has been called the `GHmac` can no longer be
    /// updated with `g_hmac_update()`.
    /// 
    /// The hexadecimal characters will be lower case.
    @inlinable func getString() -> String! {
        let result = g_hmac_get_string(_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Atomically increments the reference count of `hmac` by one.
    /// 
    /// This function is MT-safe and may be called from any thread.
    @discardableResult @inlinable func ref() -> HmacRef! {
        let result = g_hmac_ref(_ptr)
        guard let rv = HmacRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Atomically decrements the reference count of `hmac` by one.
    /// 
    /// If the reference count drops to 0, all keys and values will be
    /// destroyed, and all memory allocated by the hash table is released.
    /// This function is MT-safe and may be called from any thread.
    /// Frees the memory allocated for `hmac`.
    @inlinable func unref() {
        
        g_hmac_unref(_ptr)
        
    }

    /// Feeds `data` into an existing `GHmac`.
    /// 
    /// The HMAC must still be open, that is `g_hmac_get_string()` or
    /// `g_hmac_get_digest()` must not have been called on `hmac`.
    @inlinable func update(data: UnsafePointer<guchar>!, length: gssize) {
        
        g_hmac_update(_ptr, data, length)
        
    }
    /// Gets the HMAC as a hexadecimal string.
    /// 
    /// Once this function has been called the `GHmac` can no longer be
    /// updated with `g_hmac_update()`.
    /// 
    /// The hexadecimal characters will be lower case.
    @inlinable var string: String! {
        /// Gets the HMAC as a hexadecimal string.
        /// 
        /// Once this function has been called the `GHmac` can no longer be
        /// updated with `g_hmac_update()`.
        /// 
        /// The hexadecimal characters will be lower case.
        get {
            let result = g_hmac_get_string(_ptr)
        let rv = result.map({ String(cString: $0) })
            return rv
        }
    }


}



// MARK: - Hook Record

/// The `GHook` struct represents a single hook function in a `GHookList`.
///
/// The `HookProtocol` protocol exposes the methods and properties of an underlying `GHook` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Hook`.
/// Alternatively, use `HookRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol HookProtocol {
        /// Untyped pointer to the underlying `GHook` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GHook` instance.
    var _ptr: UnsafeMutablePointer<GHook>! { get }

    /// Required Initialiser for types conforming to `HookProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `GHook` struct represents a single hook function in a `GHookList`.
///
/// The `HookRef` type acts as a lightweight Swift reference to an underlying `GHook` instance.
/// It exposes methods that can operate on this data type through `HookProtocol` conformance.
/// Use `HookRef` only as an `unowned` reference to an existing `GHook` instance.
///
public struct HookRef: HookProtocol {
        /// Untyped pointer to the underlying `GHook` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension HookRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GHook>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GHook>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GHook>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GHook>?) {
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

    /// Reference intialiser for a related type that implements `HookProtocol`
    @inlinable init<T: HookProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Allocates space for a `GHook` and initializes it.
    @inlinable static func alloc<HookListT: HookListProtocol>(hookList: HookListT) -> HookRef! {
            let result = g_hook_alloc(hookList._ptr)
        guard let rv = HookRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Finds a `GHook` in a `GHookList` using the given function to
    /// test for a match.
    @inlinable static func find<HookListT: HookListProtocol>(hookList: HookListT, needValids: Bool, `func`: GHookFindFunc?, data: gpointer? = nil) -> HookRef! {
            let result = g_hook_find(hookList._ptr, gboolean((needValids) ? 1 : 0), `func`, data)
        guard let rv = HookRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Finds a `GHook` in a `GHookList` with the given data.
    @inlinable static func findData<HookListT: HookListProtocol>(hookList: HookListT, needValids: Bool, data: gpointer? = nil) -> HookRef! {
            let result = g_hook_find_data(hookList._ptr, gboolean((needValids) ? 1 : 0), data)
        guard let rv = HookRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Finds a `GHook` in a `GHookList` with the given function.
    @inlinable static func findFunc<HookListT: HookListProtocol>(hookList: HookListT, needValids: Bool, `func`: gpointer? = nil) -> HookRef! {
            let result = g_hook_find_func(hookList._ptr, gboolean((needValids) ? 1 : 0), `func`)
        guard let rv = HookRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Finds a `GHook` in a `GHookList` with the given function and data.
    @inlinable static func findFuncData<HookListT: HookListProtocol>(hookList: HookListT, needValids: Bool, `func`: gpointer!, data: gpointer? = nil) -> HookRef! {
            let result = g_hook_find_func_data(hookList._ptr, gboolean((needValids) ? 1 : 0), `func`, data)
        guard let rv = HookRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Returns the first `GHook` in a `GHookList` which has not been destroyed.
    /// The reference count for the `GHook` is incremented, so you must call
    /// `g_hook_unref()` to restore it when no longer needed. (Or call
    /// `g_hook_next_valid()` if you are stepping through the `GHookList`.)
    @inlinable static func firstValid<HookListT: HookListProtocol>(hookList: HookListT, mayBeInCall: Bool) -> HookRef! {
            let result = g_hook_first_valid(hookList._ptr, gboolean((mayBeInCall) ? 1 : 0))
        guard let rv = HookRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Returns the `GHook` with the given id, or `nil` if it is not found.
    @inlinable static func get<HookListT: HookListProtocol>(hookList: HookListT, hookID: Int) -> HookRef! {
            let result = g_hook_get(hookList._ptr, gulong(hookID))
        guard let rv = HookRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Returns the next `GHook` in a `GHookList` which has not been destroyed.
    /// The reference count for the `GHook` is incremented, so you must call
    /// `g_hook_unref()` to restore it when no longer needed. (Or continue to call
    /// `g_hook_next_valid()` until `nil` is returned.)
    @inlinable static func nextValid<HookListT: HookListProtocol, HookT: HookProtocol>(hookList: HookListT, hook: HookT, mayBeInCall: Bool) -> HookRef! {
            let result = g_hook_next_valid(hookList._ptr, hook._ptr, gboolean((mayBeInCall) ? 1 : 0))
        guard let rv = HookRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Increments the reference count for a `GHook`.
    @inlinable static func ref<HookListT: HookListProtocol, HookT: HookProtocol>(hookList: HookListT, hook: HookT) -> HookRef! {
            let result = g_hook_ref(hookList._ptr, hook._ptr)
        guard let rv = HookRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }
}

/// The `GHook` struct represents a single hook function in a `GHookList`.
///
/// The `Hook` type acts as an owner of an underlying `GHook` instance.
/// It provides the methods that can operate on this data type through `HookProtocol` conformance.
/// Use `Hook` as a strong reference or owner of a `GHook` instance.
///
open class Hook: HookProtocol {
        /// Untyped pointer to the underlying `GHook` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Hook` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GHook>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Hook` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GHook>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Hook` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Hook` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Hook` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GHook>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Hook` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GHook>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GHook` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Hook` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GHook>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GHook, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `HookProtocol`
    /// `GHook` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `HookProtocol`
    @inlinable public init<T: HookProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GHook, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GHook`.
    deinit {
        // no reference counting for GHook, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GHook, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GHook, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GHook, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GHook, cannot ref(_ptr)
    }


    /// Allocates space for a `GHook` and initializes it.
    @inlinable public static func alloc<HookListT: HookListProtocol>(hookList: HookListT) -> Hook! {
            let result = g_hook_alloc(hookList._ptr)
        guard let rv = Hook(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Finds a `GHook` in a `GHookList` using the given function to
    /// test for a match.
    @inlinable public static func find<HookListT: HookListProtocol>(hookList: HookListT, needValids: Bool, `func`: GHookFindFunc?, data: gpointer? = nil) -> Hook! {
            let result = g_hook_find(hookList._ptr, gboolean((needValids) ? 1 : 0), `func`, data)
        guard let rv = Hook(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Finds a `GHook` in a `GHookList` with the given data.
    @inlinable public static func findData<HookListT: HookListProtocol>(hookList: HookListT, needValids: Bool, data: gpointer? = nil) -> Hook! {
            let result = g_hook_find_data(hookList._ptr, gboolean((needValids) ? 1 : 0), data)
        guard let rv = Hook(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Finds a `GHook` in a `GHookList` with the given function.
    @inlinable public static func findFunc<HookListT: HookListProtocol>(hookList: HookListT, needValids: Bool, `func`: gpointer? = nil) -> Hook! {
            let result = g_hook_find_func(hookList._ptr, gboolean((needValids) ? 1 : 0), `func`)
        guard let rv = Hook(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Finds a `GHook` in a `GHookList` with the given function and data.
    @inlinable public static func findFuncData<HookListT: HookListProtocol>(hookList: HookListT, needValids: Bool, `func`: gpointer!, data: gpointer? = nil) -> Hook! {
            let result = g_hook_find_func_data(hookList._ptr, gboolean((needValids) ? 1 : 0), `func`, data)
        guard let rv = Hook(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Returns the first `GHook` in a `GHookList` which has not been destroyed.
    /// The reference count for the `GHook` is incremented, so you must call
    /// `g_hook_unref()` to restore it when no longer needed. (Or call
    /// `g_hook_next_valid()` if you are stepping through the `GHookList`.)
    @inlinable public static func firstValid<HookListT: HookListProtocol>(hookList: HookListT, mayBeInCall: Bool) -> Hook! {
            let result = g_hook_first_valid(hookList._ptr, gboolean((mayBeInCall) ? 1 : 0))
        guard let rv = Hook(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Returns the `GHook` with the given id, or `nil` if it is not found.
    @inlinable public static func get<HookListT: HookListProtocol>(hookList: HookListT, hookID: Int) -> Hook! {
            let result = g_hook_get(hookList._ptr, gulong(hookID))
        guard let rv = Hook(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Returns the next `GHook` in a `GHookList` which has not been destroyed.
    /// The reference count for the `GHook` is incremented, so you must call
    /// `g_hook_unref()` to restore it when no longer needed. (Or continue to call
    /// `g_hook_next_valid()` until `nil` is returned.)
    @inlinable public static func nextValid<HookListT: HookListProtocol, HookT: HookProtocol>(hookList: HookListT, hook: HookT, mayBeInCall: Bool) -> Hook! {
            let result = g_hook_next_valid(hookList._ptr, hook._ptr, gboolean((mayBeInCall) ? 1 : 0))
        guard let rv = Hook(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Increments the reference count for a `GHook`.
    @inlinable public static func ref<HookListT: HookListProtocol, HookT: HookProtocol>(hookList: HookListT, hook: HookT) -> Hook! {
            let result = g_hook_ref(hookList._ptr, hook._ptr)
        guard let rv = Hook(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

}

// MARK: no Hook properties

// MARK: no Hook signals

// MARK: Hook has no signals
// MARK: Hook Record: HookProtocol extension (methods and fields)
public extension HookProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GHook` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GHook>! { return ptr?.assumingMemoryBound(to: GHook.self) }

    /// Compares the ids of two `GHook` elements, returning a negative value
    /// if the second id is greater than the first.
    @inlinable func compareIDs<HookT: HookProtocol>(sibling: HookT) -> Int {
        let result = g_hook_compare_ids(_ptr, sibling._ptr)
        let rv = Int(result)
        return rv
    }

    /// Removes one `GHook` from a `GHookList`, marking it
    /// inactive and calling `g_hook_unref()` on it.
    @inlinable func destroyLink<HookListT: HookListProtocol>(hookList: HookListT) {
        
        g_hook_destroy_link(hookList._ptr, _ptr)
        
    }

    /// Calls the `GHookList` `finalize_hook` function if it exists,
    /// and frees the memory allocated for the `GHook`.
    @inlinable func free<HookListT: HookListProtocol>(hookList: HookListT) {
        
        g_hook_free(hookList._ptr, _ptr)
        
    }

    /// Inserts a `GHook` into a `GHookList`, before a given `GHook`.
    @inlinable func insertBefore<HookListT: HookListProtocol, HookT: HookProtocol>(hookList: HookListT, hook: HookT) {
        
        g_hook_insert_before(hookList._ptr, _ptr, hook._ptr)
        
    }

    /// Inserts a `GHook` into a `GHookList`, sorted by the given function.
    @inlinable func insertSorted<HookListT: HookListProtocol>(hookList: HookListT, `func`: GHookCompareFunc?) {
        
        g_hook_insert_sorted(hookList._ptr, _ptr, `func`)
        
    }

    /// Returns the next `GHook` in a `GHookList` which has not been destroyed.
    /// The reference count for the `GHook` is incremented, so you must call
    /// `g_hook_unref()` to restore it when no longer needed. (Or continue to call
    /// `g_hook_next_valid()` until `nil` is returned.)
    @inlinable func nextValid<HookListT: HookListProtocol>(hookList: HookListT, mayBeInCall: Bool) -> HookRef! {
        let result = g_hook_next_valid(hookList._ptr, _ptr, gboolean((mayBeInCall) ? 1 : 0))
        guard let rv = HookRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Prepends a `GHook` on the start of a `GHookList`.
    @inlinable func prepend<HookListT: HookListProtocol>(hookList: HookListT) {
        
        g_hook_prepend(hookList._ptr, _ptr)
        
    }

    /// Increments the reference count for a `GHook`.
    @inlinable func ref<HookListT: HookListProtocol>(hookList: HookListT) -> HookRef! {
        let result = g_hook_ref(hookList._ptr, _ptr)
        guard let rv = HookRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Decrements the reference count of a `GHook`.
    /// If the reference count falls to 0, the `GHook` is removed
    /// from the `GHookList` and `g_hook_free()` is called to free it.
    @inlinable func unref<HookListT: HookListProtocol>(hookList: HookListT) {
        
        g_hook_unref(hookList._ptr, _ptr)
        
    }

    /// Removes one `GHook` from a `GHookList`, marking it
    /// inactive and calling `g_hook_unref()` on it.
    @inlinable func hookDestroyLink<HookListT: HookListProtocol>(hookList: HookListT) {
        
        g_hook_destroy_link(hookList._ptr, _ptr)
        
    }

    /// Calls the `GHookList` `finalize_hook` function if it exists,
    /// and frees the memory allocated for the `GHook`.
    @inlinable func hookFree<HookListT: HookListProtocol>(hookList: HookListT) {
        
        g_hook_free(hookList._ptr, _ptr)
        
    }

    /// Inserts a `GHook` into a `GHookList`, before a given `GHook`.
    @inlinable func hookInsertBefore<HookListT: HookListProtocol, HookT: HookProtocol>(hookList: HookListT, hook: HookT) {
        
        g_hook_insert_before(hookList._ptr, _ptr, hook._ptr)
        
    }

    /// Prepends a `GHook` on the start of a `GHookList`.
    @inlinable func hookPrepend<HookListT: HookListProtocol>(hookList: HookListT) {
        
        g_hook_prepend(hookList._ptr, _ptr)
        
    }

    /// Decrements the reference count of a `GHook`.
    /// If the reference count falls to 0, the `GHook` is removed
    /// from the `GHookList` and `g_hook_free()` is called to free it.
    @inlinable func hookUnref<HookListT: HookListProtocol>(hookList: HookListT) {
        
        g_hook_unref(hookList._ptr, _ptr)
        
    }

    /// data which is passed to func when this hook is invoked
    @inlinable var data: gpointer? {
        /// data which is passed to func when this hook is invoked
        get {
            let rv = _ptr.pointee.data
    return rv
        }
        /// data which is passed to func when this hook is invoked
         set {
            _ptr.pointee.data = newValue
        }
    }

    /// pointer to the next hook in the list
    @inlinable var next: HookRef! {
        /// pointer to the next hook in the list
        get {
            let rv = HookRef(gconstpointer: gconstpointer(_ptr.pointee.next))
    return rv
        }
        /// pointer to the next hook in the list
         set {
            _ptr.pointee.next = UnsafeMutablePointer<GHook>(newValue._ptr)
        }
    }

    /// pointer to the previous hook in the list
    @inlinable var prev: HookRef! {
        /// pointer to the previous hook in the list
        get {
            let rv = HookRef(gconstpointer: gconstpointer(_ptr.pointee.prev))
    return rv
        }
        /// pointer to the previous hook in the list
         set {
            _ptr.pointee.prev = UnsafeMutablePointer<GHook>(newValue._ptr)
        }
    }

    /// the reference count of this hook
    @inlinable var refCount: guint {
        /// the reference count of this hook
        get {
            let rv = _ptr.pointee.ref_count
    return rv
        }
        /// the reference count of this hook
         set {
            _ptr.pointee.ref_count = newValue
        }
    }

    /// the id of this hook, which is unique within its list
    @inlinable var hookID: gulong {
        /// the id of this hook, which is unique within its list
        get {
            let rv = _ptr.pointee.hook_id
    return rv
        }
        /// the id of this hook, which is unique within its list
         set {
            _ptr.pointee.hook_id = newValue
        }
    }

    /// flags which are set for this hook. See `GHookFlagMask` for
    ///     predefined flags
    @inlinable var flags: guint {
        /// flags which are set for this hook. See `GHookFlagMask` for
        ///     predefined flags
        get {
            let rv = _ptr.pointee.flags
    return rv
        }
        /// flags which are set for this hook. See `GHookFlagMask` for
        ///     predefined flags
         set {
            _ptr.pointee.flags = newValue
        }
    }

    /// the function to call when this hook is invoked. The possible
    ///     signatures for this function are `GHookFunc` and `GHookCheckFunc`
    @inlinable var `func`: gpointer? {
        /// the function to call when this hook is invoked. The possible
        ///     signatures for this function are `GHookFunc` and `GHookCheckFunc`
        get {
            let rv = _ptr.pointee.func
    return rv
        }
        /// the function to call when this hook is invoked. The possible
        ///     signatures for this function are `GHookFunc` and `GHookCheckFunc`
         set {
            _ptr.pointee.func = newValue
        }
    }

    /// the default `finalize_hook` function of a `GHookList` calls
    ///     this member of the hook that is being finalized
    @inlinable var destroy: GDestroyNotify! {
        /// the default `finalize_hook` function of a `GHookList` calls
        ///     this member of the hook that is being finalized
        get {
            let rv = _ptr.pointee.destroy
    return rv
        }
        /// the default `finalize_hook` function of a `GHookList` calls
        ///     this member of the hook that is being finalized
         set {
            _ptr.pointee.destroy = newValue
        }
    }

}



// MARK: - HookList Record

/// The `GHookList` struct represents a list of hook functions.
///
/// The `HookListProtocol` protocol exposes the methods and properties of an underlying `GHookList` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `HookList`.
/// Alternatively, use `HookListRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol HookListProtocol {
        /// Untyped pointer to the underlying `GHookList` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GHookList` instance.
    var _ptr: UnsafeMutablePointer<GHookList>! { get }

    /// Required Initialiser for types conforming to `HookListProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `GHookList` struct represents a list of hook functions.
///
/// The `HookListRef` type acts as a lightweight Swift reference to an underlying `GHookList` instance.
/// It exposes methods that can operate on this data type through `HookListProtocol` conformance.
/// Use `HookListRef` only as an `unowned` reference to an existing `GHookList` instance.
///
public struct HookListRef: HookListProtocol {
        /// Untyped pointer to the underlying `GHookList` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension HookListRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GHookList>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GHookList>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GHookList>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GHookList>?) {
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

    /// Reference intialiser for a related type that implements `HookListProtocol`
    @inlinable init<T: HookListProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookListProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookListProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookListProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookListProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookListProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `GHookList` struct represents a list of hook functions.
///
/// The `HookList` type acts as an owner of an underlying `GHookList` instance.
/// It provides the methods that can operate on this data type through `HookListProtocol` conformance.
/// Use `HookList` as a strong reference or owner of a `GHookList` instance.
///
open class HookList: HookListProtocol {
        /// Untyped pointer to the underlying `GHookList` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HookList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GHookList>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HookList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GHookList>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HookList` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HookList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HookList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GHookList>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HookList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GHookList>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GHookList` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `HookList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GHookList>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GHookList, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `HookListProtocol`
    /// `GHookList` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `HookListProtocol`
    @inlinable public init<T: HookListProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GHookList, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GHookList`.
    deinit {
        // no reference counting for GHookList, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookListProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookListProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GHookList, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookListProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookListProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GHookList, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookListProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookListProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GHookList, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookListProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HookListProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GHookList, cannot ref(_ptr)
    }



}

// MARK: no HookList properties

// MARK: no HookList signals

// MARK: HookList has no signals
// MARK: HookList Record: HookListProtocol extension (methods and fields)
public extension HookListProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GHookList` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GHookList>! { return ptr?.assumingMemoryBound(to: GHookList.self) }

    /// Removes all the `GHook` elements from a `GHookList`.
    @inlinable func clear() {
        
        g_hook_list_clear(_ptr)
        
    }

    /// Initializes a `GHookList`.
    /// This must be called before the `GHookList` is used.
    @inlinable func init_(hookSize: Int) {
        
        g_hook_list_init(_ptr, guint(hookSize))
        
    }

    /// Calls all of the `GHook` functions in a `GHookList`.
    @inlinable func invoke(mayRecurse: Bool) {
        
        g_hook_list_invoke(_ptr, gboolean((mayRecurse) ? 1 : 0))
        
    }

    /// Calls all of the `GHook` functions in a `GHookList`.
    /// Any function which returns `false` is removed from the `GHookList`.
    @inlinable func invokeCheck(mayRecurse: Bool) {
        
        g_hook_list_invoke_check(_ptr, gboolean((mayRecurse) ? 1 : 0))
        
    }

    /// Calls a function on each valid `GHook`.
    @inlinable func marshal(mayRecurse: Bool, marshaller: GHookMarshaller?, marshalData: gpointer? = nil) {
        
        g_hook_list_marshal(_ptr, gboolean((mayRecurse) ? 1 : 0), marshaller, marshalData)
        
    }

    /// Calls a function on each valid `GHook` and destroys it if the
    /// function returns `false`.
    @inlinable func marshalCheck(mayRecurse: Bool, marshaller: GHookCheckMarshaller?, marshalData: gpointer? = nil) {
        
        g_hook_list_marshal_check(_ptr, gboolean((mayRecurse) ? 1 : 0), marshaller, marshalData)
        
    }

    /// Destroys a `GHook`, given its ID.
    @inlinable func hookDestroy(hookID: Int) -> Bool {
        let result = g_hook_destroy(_ptr, gulong(hookID))
        let rv = ((result) != 0)
        return rv
    }

    /// Removes one `GHook` from a `GHookList`, marking it
    /// inactive and calling `g_hook_unref()` on it.
    @inlinable func hookDestroyLink<HookT: HookProtocol>(hook: HookT) {
        
        g_hook_destroy_link(_ptr, hook._ptr)
        
    }

    /// Calls the `GHookList` `finalize_hook` function if it exists,
    /// and frees the memory allocated for the `GHook`.
    @inlinable func hookFree<HookT: HookProtocol>(hook: HookT) {
        
        g_hook_free(_ptr, hook._ptr)
        
    }

    /// Inserts a `GHook` into a `GHookList`, before a given `GHook`.
    @inlinable func hookInsertBefore<HookT: HookProtocol>(sibling: HookT?, hook: HookT) {
        
        g_hook_insert_before(_ptr, sibling?._ptr, hook._ptr)
        
    }

    /// Prepends a `GHook` on the start of a `GHookList`.
    @inlinable func hookPrepend<HookT: HookProtocol>(hook: HookT) {
        
        g_hook_prepend(_ptr, hook._ptr)
        
    }

    /// Decrements the reference count of a `GHook`.
    /// If the reference count falls to 0, the `GHook` is removed
    /// from the `GHookList` and `g_hook_free()` is called to free it.
    @inlinable func hookUnref<HookT: HookProtocol>(hook: HookT) {
        
        g_hook_unref(_ptr, hook._ptr)
        
    }

    /// the next free `GHook` id
    @inlinable var seqID: gulong {
        /// the next free `GHook` id
        get {
            let rv = _ptr.pointee.seq_id
    return rv
        }
        /// the next free `GHook` id
         set {
            _ptr.pointee.seq_id = newValue
        }
    }

    /// the size of the `GHookList` elements, in bytes
    @inlinable var hookSize: guint {
        /// the size of the `GHookList` elements, in bytes
        get {
            let rv = _ptr.pointee.hook_size
    return rv
        }
        /// the size of the `GHookList` elements, in bytes
         set {
            _ptr.pointee.hook_size = newValue
        }
    }

    /// 1 if the `GHookList` has been initialized
    @inlinable var isSetup: guint {
        /// 1 if the `GHookList` has been initialized
        get {
            let rv = _ptr.pointee.is_setup
    return rv
        }
        /// 1 if the `GHookList` has been initialized
         set {
            _ptr.pointee.is_setup = newValue
        }
    }

    /// the first `GHook` element in the list
    @inlinable var hooks: HookRef! {
        /// the first `GHook` element in the list
        get {
            let rv = HookRef(gconstpointer: gconstpointer(_ptr.pointee.hooks))
    return rv
        }
        /// the first `GHook` element in the list
         set {
            _ptr.pointee.hooks = UnsafeMutablePointer<GHook>(newValue._ptr)
        }
    }

    /// unused
    @inlinable var dummy3: gpointer? {
        /// unused
        get {
            let rv = _ptr.pointee.dummy3
    return rv
        }
        /// unused
         set {
            _ptr.pointee.dummy3 = newValue
        }
    }

    /// the function to call to finalize a `GHook` element.
    ///     The default behaviour is to call the hooks `destroy` function
    @inlinable var finalizeHook: GHookFinalizeFunc! {
        /// the function to call to finalize a `GHook` element.
        ///     The default behaviour is to call the hooks `destroy` function
        get {
            let rv = _ptr.pointee.finalize_hook
    return rv
        }
        /// the function to call to finalize a `GHook` element.
        ///     The default behaviour is to call the hooks `destroy` function
         set {
            _ptr.pointee.finalize_hook = newValue
        }
    }

    /// unused
    @inlinable var dummy: (gpointer?, gpointer?) {
        /// unused
        get {
            let rv = _ptr.pointee.dummy
    return rv
        }
        /// unused
         set {
            _ptr.pointee.dummy = newValue
        }
    }

}



