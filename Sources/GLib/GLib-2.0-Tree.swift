import CGLib

// MARK: - Tree Record

/// The `TreeProtocol` protocol exposes the methods and properties of an underlying `GTree` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Tree`.
/// Alternatively, use `TreeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The GTree struct is an opaque data structure representing a
/// [balanced binary tree](../Protocols/TreeProtocol.html). It should be
/// accessed only by using the following functions.
public protocol TreeProtocol {
        /// Untyped pointer to the underlying `GTree` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTree` instance.
    var _ptr: UnsafeMutablePointer<GTree>! { get }

}

/// The `TreeRef` type acts as a lightweight Swift reference to an underlying `GTree` instance.
/// It exposes methods that can operate on this data type through `TreeProtocol` conformance.
/// Use `TreeRef` only as an `unowned` reference to an existing `GTree` instance.
///
/// The GTree struct is an opaque data structure representing a
/// [balanced binary tree](../Protocols/TreeProtocol.html). It should be
/// accessed only by using the following functions.
public struct TreeRef: TreeProtocol {
        /// Untyped pointer to the underlying `GTree` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TreeRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTree>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTree>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTree>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTree>?) {
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

    /// Reference intialiser for a related type that implements `TreeProtocol`
    @inlinable init<T: TreeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GTree` like `g_tree_new()` and allows to specify functions
    /// to free the memory allocated for the key and value that get called when
    /// removing the entry from the `GTree`.
    @inlinable static func new(full keyCompareFunc: GCompareDataFunc?, keyCompareData: gpointer! = nil, keyDestroyFunc: GDestroyNotify?, valueDestroyFunc: GDestroyNotify?) -> TreeRef! {
        guard let rv = TreeRef(gconstpointer: gconstpointer(g_tree_new_full(keyCompareFunc, keyCompareData, keyDestroyFunc, valueDestroyFunc))) else { return nil }
        return rv
    }

    /// Creates a new `GTree` with a comparison function that accepts user data.
    /// See `g_tree_new()` for more details.
    @inlinable static func newWith(data keyCompareFunc: GCompareDataFunc?, keyCompareData: gpointer! = nil) -> TreeRef! {
        guard let rv = TreeRef(gconstpointer: gconstpointer(g_tree_new_with_data(keyCompareFunc, keyCompareData))) else { return nil }
        return rv
    }
}

/// The `Tree` type acts as a reference-counted owner of an underlying `GTree` instance.
/// It provides the methods that can operate on this data type through `TreeProtocol` conformance.
/// Use `Tree` as a strong reference or owner of a `GTree` instance.
///
/// The GTree struct is an opaque data structure representing a
/// [balanced binary tree](../Protocols/TreeProtocol.html). It should be
/// accessed only by using the following functions.
open class Tree: TreeProtocol {
        /// Untyped pointer to the underlying `GTree` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Tree` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTree>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Tree` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTree>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Tree` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Tree` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Tree` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTree>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Tree` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTree>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GTree`.
    /// i.e., ownership is transferred to the `Tree` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTree>) {
        ptr = UnsafeMutableRawPointer(op)
        g_tree_ref(ptr.assumingMemoryBound(to: GTree.self))
    }

    /// Reference intialiser for a related type that implements `TreeProtocol`
    /// Will retain `GTree`.
    /// - Parameter other: an instance of a related type that implements `TreeProtocol`
    @inlinable public init<T: TreeProtocol>(_ other: T) {
        ptr = other.ptr
        g_tree_ref(ptr.assumingMemoryBound(to: GTree.self))
    }

    /// Releases the underlying `GTree` instance using `g_tree_unref`.
    deinit {
        g_tree_unref(ptr.assumingMemoryBound(to: GTree.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_tree_ref(ptr.assumingMemoryBound(to: GTree.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_tree_ref(ptr.assumingMemoryBound(to: GTree.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_tree_ref(ptr.assumingMemoryBound(to: GTree.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_tree_ref(ptr.assumingMemoryBound(to: GTree.self))
    }


    /// Creates a new `GTree` like `g_tree_new()` and allows to specify functions
    /// to free the memory allocated for the key and value that get called when
    /// removing the entry from the `GTree`.
    @inlinable public static func new(full keyCompareFunc: GCompareDataFunc?, keyCompareData: gpointer! = nil, keyDestroyFunc: GDestroyNotify?, valueDestroyFunc: GDestroyNotify?) -> Tree! {
        guard let rv = Tree(gconstpointer: gconstpointer(g_tree_new_full(keyCompareFunc, keyCompareData, keyDestroyFunc, valueDestroyFunc))) else { return nil }
        return rv
    }

    /// Creates a new `GTree` with a comparison function that accepts user data.
    /// See `g_tree_new()` for more details.
    @inlinable public static func newWith(data keyCompareFunc: GCompareDataFunc?, keyCompareData: gpointer! = nil) -> Tree! {
        guard let rv = Tree(gconstpointer: gconstpointer(g_tree_new_with_data(keyCompareFunc, keyCompareData))) else { return nil }
        return rv
    }

}

// MARK: no Tree properties

// MARK: no Tree signals


// MARK: Tree Record: TreeProtocol extension (methods and fields)
public extension TreeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTree` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTree>! { return ptr?.assumingMemoryBound(to: GTree.self) }

    /// Removes all keys and values from the `GTree` and decreases its
    /// reference count by one. If keys and/or values are dynamically
    /// allocated, you should either free them first or create the `GTree`
    /// using `g_tree_new_full()`. In the latter case the destroy functions
    /// you supplied will be called on all keys and values before destroying
    /// the `GTree`.
    @inlinable func destroy() {
        g_tree_destroy(_ptr)
    
    }

    /// Calls the given function for each of the key/value pairs in the `GTree`.
    /// The function is passed the key and value of each pair, and the given
    /// `data` parameter. The tree is traversed in sorted order.
    /// 
    /// The tree may not be modified while iterating over it (you can't
    /// add/remove items). To remove all items matching a predicate, you need
    /// to add each item to a list in your `GTraverseFunc` as you walk over
    /// the tree, then walk the list and remove each item.
    @inlinable func foreach(`func`: GTraverseFunc?, userData: gpointer! = nil) {
        g_tree_foreach(_ptr, `func`, userData)
    
    }

    /// Gets the height of a `GTree`.
    /// 
    /// If the `GTree` contains no nodes, the height is 0.
    /// If the `GTree` contains only one root node the height is 1.
    /// If the root node has children the height is 2, etc.
    @inlinable func height() -> Int {
        let rv = Int(g_tree_height(_ptr))
        return rv
    }

    /// Inserts a key/value pair into a `GTree`.
    /// 
    /// If the given key already exists in the `GTree` its corresponding value
    /// is set to the new value. If you supplied a `value_destroy_func` when
    /// creating the `GTree`, the old value is freed using that function. If
    /// you supplied a `key_destroy_func` when creating the `GTree`, the passed
    /// key is freed using that function.
    /// 
    /// The tree is automatically 'balanced' as new key/value pairs are added,
    /// so that the distance from the root to every leaf is as small as possible.
    @inlinable func insert(key: gpointer! = nil, value: gpointer! = nil) {
        g_tree_insert(_ptr, key, value)
    
    }

    /// Gets the value corresponding to the given key. Since a `GTree` is
    /// automatically balanced as key/value pairs are added, key lookup
    /// is `O(log n)` (where n is the number of key/value pairs in the tree).
    @inlinable func lookup(key: gconstpointer! = nil) -> gpointer! {
        let rv = g_tree_lookup(_ptr, key)
        return rv
    }

    /// Looks up a key in the `GTree`, returning the original key and the
    /// associated value. This is useful if you need to free the memory
    /// allocated for the original key, for example before calling
    /// `g_tree_remove()`.
    @inlinable func lookupExtended(lookupKey: gconstpointer! = nil, origKey: UnsafeMutablePointer<gpointer?>? = nil, value: UnsafeMutablePointer<gpointer?>? = nil) -> Bool {
        let rv = ((g_tree_lookup_extended(_ptr, lookupKey, origKey, value)) != 0)
        return rv
    }

    /// Gets the number of nodes in a `GTree`.
    @inlinable func nnodes() -> Int {
        let rv = Int(g_tree_nnodes(_ptr))
        return rv
    }

    /// Increments the reference count of `tree` by one.
    /// 
    /// It is safe to call this function from any thread.
    @discardableResult @inlinable func ref() -> TreeRef! {
        guard let rv = TreeRef(gconstpointer: gconstpointer(g_tree_ref(_ptr))) else { return nil }
        return rv
    }

    /// Removes a key/value pair from a `GTree`.
    /// 
    /// If the `GTree` was created using `g_tree_new_full()`, the key and value
    /// are freed using the supplied destroy functions, otherwise you have to
    /// make sure that any dynamically allocated values are freed yourself.
    /// If the key does not exist in the `GTree`, the function does nothing.
    @inlinable func remove(key: gconstpointer! = nil) -> Bool {
        let rv = ((g_tree_remove(_ptr, key)) != 0)
        return rv
    }

    /// Inserts a new key and value into a `GTree` similar to `g_tree_insert()`.
    /// The difference is that if the key already exists in the `GTree`, it gets
    /// replaced by the new key. If you supplied a `value_destroy_func` when
    /// creating the `GTree`, the old value is freed using that function. If you
    /// supplied a `key_destroy_func` when creating the `GTree`, the old key is
    /// freed using that function.
    /// 
    /// The tree is automatically 'balanced' as new key/value pairs are added,
    /// so that the distance from the root to every leaf is as small as possible.
    @inlinable func replace(key: gpointer! = nil, value: gpointer! = nil) {
        g_tree_replace(_ptr, key, value)
    
    }

    /// Searches a `GTree` using `search_func`.
    /// 
    /// The `search_func` is called with a pointer to the key of a key/value
    /// pair in the tree, and the passed in `user_data`. If `search_func` returns
    /// 0 for a key/value pair, then the corresponding value is returned as
    /// the result of `g_tree_search()`. If `search_func` returns -1, searching
    /// will proceed among the key/value pairs that have a smaller key; if
    /// `search_func` returns 1, searching will proceed among the key/value
    /// pairs that have a larger key.
    @inlinable func search(searchFunc: GCompareFunc?, userData: gconstpointer! = nil) -> gpointer! {
        let rv = g_tree_search(_ptr, searchFunc, userData)
        return rv
    }

    /// Removes a key and its associated value from a `GTree` without calling
    /// the key and value destroy functions.
    /// 
    /// If the key does not exist in the `GTree`, the function does nothing.
    @inlinable func steal(key: gconstpointer! = nil) -> Bool {
        let rv = ((g_tree_steal(_ptr, key)) != 0)
        return rv
    }

    /// Calls the given function for each node in the `GTree`.
    ///
    /// **traverse is deprecated:**
    /// The order of a balanced tree is somewhat arbitrary.
    ///     If you just want to visit all nodes in sorted order, use
    ///     g_tree_foreach() instead. If you really need to visit nodes in
    ///     a different order, consider using an [n-ary tree][glib-N-ary-Trees].
    @available(*, deprecated) @inlinable func traverse(traverseFunc: GTraverseFunc?, traverseType: GTraverseType, userData: gpointer! = nil) {
        g_tree_traverse(_ptr, traverseFunc, traverseType, userData)
    
    }

    /// Decrements the reference count of `tree` by one.
    /// If the reference count drops to 0, all keys and values will
    /// be destroyed (if destroy functions were specified) and all
    /// memory allocated by `tree` will be released.
    /// 
    /// It is safe to call this function from any thread.
    @inlinable func unref() {
        g_tree_unref(_ptr)
    
    }


}



