import CGLib

// MARK: - HashTable Record

/// The `HashTableProtocol` protocol exposes the methods and properties of an underlying `GHashTable` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `HashTable`.
/// Alternatively, use `HashTableRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GHashTable` struct is an opaque data structure to represent a
/// [Hash Table](../Protocols/HashTableProtocol.html). It should only be accessed via the
/// following functions.
public protocol HashTableProtocol {
        /// Untyped pointer to the underlying `GHashTable` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GHashTable` instance.
    var hash_table_ptr: UnsafeMutablePointer<GHashTable> { get }
}

/// The `HashTableRef` type acts as a lightweight Swift reference to an underlying `GHashTable` instance.
/// It exposes methods that can operate on this data type through `HashTableProtocol` conformance.
/// Use `HashTableRef` only as an `unowned` reference to an existing `GHashTable` instance.
///
/// The `GHashTable` struct is an opaque data structure to represent a
/// [Hash Table](../Protocols/HashTableProtocol.html). It should only be accessed via the
/// following functions.
public struct HashTableRef: HashTableProtocol {
        /// Untyped pointer to the underlying `GHashTable` instance.
    /// For type-safe access, use the generated, typed pointer `hash_table_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension HashTableRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GHashTable>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `HashTableProtocol`
    init<T: HashTableProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    static func new(full hash_func: @escaping HashFunc, keyEqualFunc key_equal_func: @escaping EqualFunc, keyDestroyFunc key_destroy_func: @escaping DestroyNotify, valueDestroyFunc value_destroy_func: @escaping DestroyNotify) -> HashTableRef! {
        let rv: UnsafeMutablePointer<GHashTable>! = cast(g_hash_table_new_full(hash_func, key_equal_func, key_destroy_func, value_destroy_func))
        return rv.map { HashTableRef(cast($0)) }
    }
}

/// The `HashTable` type acts as a reference-counted owner of an underlying `GHashTable` instance.
/// It provides the methods that can operate on this data type through `HashTableProtocol` conformance.
/// Use `HashTable` as a strong reference or owner of a `GHashTable` instance.
///
/// The `GHashTable` struct is an opaque data structure to represent a
/// [Hash Table](../Protocols/HashTableProtocol.html). It should only be accessed via the
/// following functions.
open class HashTable: HashTableProtocol {
        /// Untyped pointer to the underlying `GHashTable` instance.
    /// For type-safe access, use the generated, typed pointer `hash_table_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HashTable` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GHashTable>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GHashTable`.
    /// i.e., ownership is transferred to the `HashTable` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GHashTable>) {
        ptr = UnsafeMutableRawPointer(op)
        g_hash_table_ref(cast(hash_table_ptr))
    }

    /// Reference intialiser for a related type that implements `HashTableProtocol`
    /// Will retain `GHashTable`.
    /// - Parameter other: an instance of a related type that implements `HashTableProtocol`
    public init<T: HashTableProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.hash_table_ptr)
        g_hash_table_ref(cast(hash_table_ptr))
    }

    /// Releases the underlying `GHashTable` instance using `g_hash_table_unref`.
    deinit {
        g_hash_table_unref(cast(hash_table_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_hash_table_ref(cast(hash_table_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_hash_table_ref(cast(hash_table_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_hash_table_ref(cast(hash_table_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HashTableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_hash_table_ref(cast(hash_table_ptr))
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
    public static func new(full hash_func: @escaping HashFunc, keyEqualFunc key_equal_func: @escaping EqualFunc, keyDestroyFunc key_destroy_func: @escaping DestroyNotify, valueDestroyFunc value_destroy_func: @escaping DestroyNotify) -> HashTable! {
        let rv: UnsafeMutablePointer<GHashTable>! = cast(g_hash_table_new_full(hash_func, key_equal_func, key_destroy_func, value_destroy_func))
        return rv.map { HashTable(cast($0)) }
    }

}

// MARK: no HashTable properties

// MARK: no HashTable signals


// MARK: HashTable Record: HashTableProtocol extension (methods and fields)
public extension HashTableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GHashTable` instance.
    var hash_table_ptr: UnsafeMutablePointer<GHashTable> { return ptr.assumingMemoryBound(to: GHashTable.self) }

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
    func add(key: UnsafeMutableRawPointer) -> Bool {
        let rv = g_hash_table_add(cast(hash_table_ptr), cast(key))
        return Bool(rv != 0)
    }

    /// Checks if `key` is in `hash_table`.
    func contains(key: gconstpointer) -> Bool {
        let rv = g_hash_table_contains(cast(hash_table_ptr), cast(key))
        return Bool(rv != 0)
    }

    /// Destroys all keys and values in the `GHashTable` and decrements its
    /// reference count by 1. If keys and/or values are dynamically allocated,
    /// you should either free them first or create the `GHashTable` with destroy
    /// notifiers using `g_hash_table_new_full()`. In the latter case the destroy
    /// functions you supplied will be called on all keys and values during the
    /// destruction phase.
    func destroy() {
        g_hash_table_destroy(cast(hash_table_ptr))
    
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
    func find(predicate: @escaping HRFunc, userData user_data: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer! {
        let rv: UnsafeMutableRawPointer! = cast(g_hash_table_find(cast(hash_table_ptr), predicate, cast(user_data)))
        return cast(rv)
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
    func foreach(func_: @escaping HFunc, userData user_data: UnsafeMutableRawPointer) {
        g_hash_table_foreach(cast(hash_table_ptr), func_, cast(user_data))
    
    }

    /// Calls the given function for each key/value pair in the
    /// `GHashTable`. If the function returns `true`, then the key/value
    /// pair is removed from the `GHashTable`. If you supplied key or
    /// value destroy functions when creating the `GHashTable`, they are
    /// used to free the memory allocated for the removed keys and values.
    /// 
    /// See `GHashTableIter` for an alternative way to loop over the
    /// key/value pairs in the hash table.
    func foreachRemove(func_: @escaping HRFunc, userData user_data: UnsafeMutableRawPointer) -> Int {
        let rv: Int = cast(g_hash_table_foreach_remove(cast(hash_table_ptr), func_, cast(user_data)))
        return Int(rv)
    }

    /// Calls the given function for each key/value pair in the
    /// `GHashTable`. If the function returns `true`, then the key/value
    /// pair is removed from the `GHashTable`, but no key or value
    /// destroy functions are called.
    /// 
    /// See `GHashTableIter` for an alternative way to loop over the
    /// key/value pairs in the hash table.
    func foreachSteal(func_: @escaping HRFunc, userData user_data: UnsafeMutableRawPointer) -> Int {
        let rv: Int = cast(g_hash_table_foreach_steal(cast(hash_table_ptr), func_, cast(user_data)))
        return Int(rv)
    }

    /// Retrieves every key inside `hash_table`. The returned data is valid
    /// until changes to the hash release those keys.
    /// 
    /// This iterates over every entry in the hash table to build its return value.
    /// To iterate over the entries in a `GHashTable` more efficiently, use a
    /// `GHashTableIter`.
    func getKeys() -> UnsafeMutablePointer<GList>! {
        let rv: UnsafeMutablePointer<GList>! = cast(g_hash_table_get_keys(cast(hash_table_ptr)))
        return cast(rv)
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
    func getKeysAsArray(length: UnsafeMutablePointer<CUnsignedInt>) -> UnsafeMutablePointer<UnsafeMutableRawPointer>! {
        let rv: UnsafeMutablePointer<UnsafeMutableRawPointer>! = cast(g_hash_table_get_keys_as_array(cast(hash_table_ptr), cast(length)))
        return cast(rv)
    }

    /// Retrieves every value inside `hash_table`. The returned data
    /// is valid until `hash_table` is modified.
    /// 
    /// This iterates over every entry in the hash table to build its return value.
    /// To iterate over the entries in a `GHashTable` more efficiently, use a
    /// `GHashTableIter`.
    func getValues() -> UnsafeMutablePointer<GList>! {
        let rv: UnsafeMutablePointer<GList>! = cast(g_hash_table_get_values(cast(hash_table_ptr)))
        return cast(rv)
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
    func insert(key: UnsafeMutableRawPointer, value: UnsafeMutableRawPointer) -> Bool {
        let rv = g_hash_table_insert(cast(hash_table_ptr), cast(key), cast(value))
        return Bool(rv != 0)
    }

    /// Looks up a key in a `GHashTable`. Note that this function cannot
    /// distinguish between a key that is not present and one which is present
    /// and has the value `nil`. If you need this distinction, use
    /// `g_hash_table_lookup_extended()`.
    func lookup(key: gconstpointer) -> UnsafeMutableRawPointer! {
        let rv: UnsafeMutableRawPointer! = cast(g_hash_table_lookup(cast(hash_table_ptr), cast(key)))
        return cast(rv)
    }

    /// Looks up a key in the `GHashTable`, returning the original key and the
    /// associated value and a `gboolean` which is `true` if the key was found. This
    /// is useful if you need to free the memory allocated for the original key,
    /// for example before calling `g_hash_table_remove()`.
    /// 
    /// You can actually pass `nil` for `lookup_key` to test
    /// whether the `nil` key exists, provided the hash and equal functions
    /// of `hash_table` are `nil`-safe.
    func lookupExtended(lookupKey lookup_key: gconstpointer, origKey orig_key: UnsafeMutablePointer<UnsafeMutableRawPointer>, value: UnsafeMutablePointer<UnsafeMutableRawPointer>) -> Bool {
        let rv = g_hash_table_lookup_extended(cast(hash_table_ptr), cast(lookup_key), cast(orig_key), cast(value))
        return Bool(rv != 0)
    }

    /// Atomically increments the reference count of `hash_table` by one.
    /// This function is MT-safe and may be called from any thread.
    @discardableResult func ref() -> UnsafeMutablePointer<GHashTable>! {
        let rv: UnsafeMutablePointer<GHashTable>! = cast(g_hash_table_ref(cast(hash_table_ptr)))
        return cast(rv)
    }

    /// Removes a key and its associated value from a `GHashTable`.
    /// 
    /// If the `GHashTable` was created using `g_hash_table_new_full()`, the
    /// key and value are freed using the supplied destroy functions, otherwise
    /// you have to make sure that any dynamically allocated values are freed
    /// yourself.
    func remove(key: gconstpointer) -> Bool {
        let rv = g_hash_table_remove(cast(hash_table_ptr), cast(key))
        return Bool(rv != 0)
    }

    /// Removes all keys and their associated values from a `GHashTable`.
    /// 
    /// If the `GHashTable` was created using `g_hash_table_new_full()`,
    /// the keys and values are freed using the supplied destroy functions,
    /// otherwise you have to make sure that any dynamically allocated
    /// values are freed yourself.
    func removeAll() {
        g_hash_table_remove_all(cast(hash_table_ptr))
    
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
    func replace(key: UnsafeMutableRawPointer, value: UnsafeMutableRawPointer) -> Bool {
        let rv = g_hash_table_replace(cast(hash_table_ptr), cast(key), cast(value))
        return Bool(rv != 0)
    }

    /// Returns the number of elements contained in the `GHashTable`.
    func size() -> Int {
        let rv: Int = cast(g_hash_table_size(cast(hash_table_ptr)))
        return Int(rv)
    }

    /// Removes a key and its associated value from a `GHashTable` without
    /// calling the key and value destroy functions.
    func steal(key: gconstpointer) -> Bool {
        let rv = g_hash_table_steal(cast(hash_table_ptr), cast(key))
        return Bool(rv != 0)
    }

    /// Removes all keys and their associated values from a `GHashTable`
    /// without calling the key and value destroy functions.
    func stealAll() {
        g_hash_table_steal_all(cast(hash_table_ptr))
    
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
    func stealExtended(lookupKey lookup_key: gconstpointer, stolenKey stolen_key: UnsafeMutablePointer<UnsafeMutableRawPointer>, stolenValue stolen_value: UnsafeMutablePointer<UnsafeMutableRawPointer>) -> Bool {
        let rv = g_hash_table_steal_extended(cast(hash_table_ptr), cast(lookup_key), cast(stolen_key), cast(stolen_value))
        return Bool(rv != 0)
    }

    /// Atomically decrements the reference count of `hash_table` by one.
    /// If the reference count drops to 0, all keys and values will be
    /// destroyed, and all memory allocated by the hash table is released.
    /// This function is MT-safe and may be called from any thread.
    func unref() {
        g_hash_table_unref(cast(hash_table_ptr))
    
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
    func hashTableAdd(key: UnsafeMutableRawPointer) -> Bool {
        let rv = g_hash_table_add(cast(hash_table_ptr), cast(key))
        return Bool(rv != 0)
    }

    /// Checks if `key` is in `hash_table`.
    func hashTableContains(key: gconstpointer) -> Bool {
        let rv = g_hash_table_contains(cast(hash_table_ptr), cast(key))
        return Bool(rv != 0)
    }

    /// Destroys all keys and values in the `GHashTable` and decrements its
    /// reference count by 1. If keys and/or values are dynamically allocated,
    /// you should either free them first or create the `GHashTable` with destroy
    /// notifiers using `g_hash_table_new_full()`. In the latter case the destroy
    /// functions you supplied will be called on all keys and values during the
    /// destruction phase.
    func hashTableDestroy() {
        g_hash_table_destroy(cast(hash_table_ptr))
    
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
    func hashTableInsert(key: UnsafeMutableRawPointer, value: UnsafeMutableRawPointer) -> Bool {
        let rv = g_hash_table_insert(cast(hash_table_ptr), cast(key), cast(value))
        return Bool(rv != 0)
    }

    /// Looks up a key in a `GHashTable`. Note that this function cannot
    /// distinguish between a key that is not present and one which is present
    /// and has the value `nil`. If you need this distinction, use
    /// `g_hash_table_lookup_extended()`.
    func hashTableLookup(key: gconstpointer) -> UnsafeMutableRawPointer! {
        let rv: UnsafeMutableRawPointer! = cast(g_hash_table_lookup(cast(hash_table_ptr), cast(key)))
        return cast(rv)
    }

    /// Looks up a key in the `GHashTable`, returning the original key and the
    /// associated value and a `gboolean` which is `true` if the key was found. This
    /// is useful if you need to free the memory allocated for the original key,
    /// for example before calling `g_hash_table_remove()`.
    /// 
    /// You can actually pass `nil` for `lookup_key` to test
    /// whether the `nil` key exists, provided the hash and equal functions
    /// of `hash_table` are `nil`-safe.
    func hashTableLookupExtended(lookupKey lookup_key: gconstpointer, origKey orig_key: UnsafeMutablePointer<UnsafeMutableRawPointer>, value: UnsafeMutablePointer<UnsafeMutableRawPointer>) -> Bool {
        let rv = g_hash_table_lookup_extended(cast(hash_table_ptr), cast(lookup_key), cast(orig_key), cast(value))
        return Bool(rv != 0)
    }

    /// Removes a key and its associated value from a `GHashTable`.
    /// 
    /// If the `GHashTable` was created using `g_hash_table_new_full()`, the
    /// key and value are freed using the supplied destroy functions, otherwise
    /// you have to make sure that any dynamically allocated values are freed
    /// yourself.
    func hashTableRemove(key: gconstpointer) -> Bool {
        let rv = g_hash_table_remove(cast(hash_table_ptr), cast(key))
        return Bool(rv != 0)
    }

    /// Removes all keys and their associated values from a `GHashTable`.
    /// 
    /// If the `GHashTable` was created using `g_hash_table_new_full()`,
    /// the keys and values are freed using the supplied destroy functions,
    /// otherwise you have to make sure that any dynamically allocated
    /// values are freed yourself.
    func hashTableRemoveAll() {
        g_hash_table_remove_all(cast(hash_table_ptr))
    
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
    func hashTableReplace(key: UnsafeMutableRawPointer, value: UnsafeMutableRawPointer) -> Bool {
        let rv = g_hash_table_replace(cast(hash_table_ptr), cast(key), cast(value))
        return Bool(rv != 0)
    }

    /// Returns the number of elements contained in the `GHashTable`.
    func hashTableSize() -> Int {
        let rv: Int = cast(g_hash_table_size(cast(hash_table_ptr)))
        return Int(rv)
    }

    /// Removes a key and its associated value from a `GHashTable` without
    /// calling the key and value destroy functions.
    func hashTableSteal(key: gconstpointer) -> Bool {
        let rv = g_hash_table_steal(cast(hash_table_ptr), cast(key))
        return Bool(rv != 0)
    }

    /// Removes all keys and their associated values from a `GHashTable`
    /// without calling the key and value destroy functions.
    func hashTableStealAll() {
        g_hash_table_steal_all(cast(hash_table_ptr))
    
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
    func hashTableStealExtended(lookupKey lookup_key: gconstpointer, stolenKey stolen_key: UnsafeMutablePointer<UnsafeMutableRawPointer>, stolenValue stolen_value: UnsafeMutablePointer<UnsafeMutableRawPointer>) -> Bool {
        let rv = g_hash_table_steal_extended(cast(hash_table_ptr), cast(lookup_key), cast(stolen_key), cast(stolen_value))
        return Bool(rv != 0)
    }

    /// Atomically decrements the reference count of `hash_table` by one.
    /// If the reference count drops to 0, all keys and values will be
    /// destroyed, and all memory allocated by the hash table is released.
    /// This function is MT-safe and may be called from any thread.
    func hashTableUnref() {
        g_hash_table_unref(cast(hash_table_ptr))
    
    }
    /// Retrieves every key inside `hash_table`. The returned data is valid
    /// until changes to the hash release those keys.
    /// 
    /// This iterates over every entry in the hash table to build its return value.
    /// To iterate over the entries in a `GHashTable` more efficiently, use a
    /// `GHashTableIter`.
    var keys: UnsafeMutablePointer<GList>! {
        /// Retrieves every key inside `hash_table`. The returned data is valid
        /// until changes to the hash release those keys.
        /// 
        /// This iterates over every entry in the hash table to build its return value.
        /// To iterate over the entries in a `GHashTable` more efficiently, use a
        /// `GHashTableIter`.
        get {
            let rv: UnsafeMutablePointer<GList>! = cast(g_hash_table_get_keys(cast(hash_table_ptr)))
            return cast(rv)
        }
    }

    /// Retrieves every value inside `hash_table`. The returned data
    /// is valid until `hash_table` is modified.
    /// 
    /// This iterates over every entry in the hash table to build its return value.
    /// To iterate over the entries in a `GHashTable` more efficiently, use a
    /// `GHashTableIter`.
    var values: UnsafeMutablePointer<GList>! {
        /// Retrieves every value inside `hash_table`. The returned data
        /// is valid until `hash_table` is modified.
        /// 
        /// This iterates over every entry in the hash table to build its return value.
        /// To iterate over the entries in a `GHashTable` more efficiently, use a
        /// `GHashTableIter`.
        get {
            let rv: UnsafeMutablePointer<GList>! = cast(g_hash_table_get_values(cast(hash_table_ptr)))
            return cast(rv)
        }
    }


}



