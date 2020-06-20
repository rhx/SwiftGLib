import CGLib

// MARK: - Node Record

/// The `NodeProtocol` protocol exposes the methods and properties of an underlying `GNode` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Node`.
/// Alternatively, use `NodeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GNode` struct represents one node in a [n-ary tree](../Protocols/NodeProtocol.html).
public protocol NodeProtocol {
        /// Untyped pointer to the underlying `GNode` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GNode` instance.
    var _ptr: UnsafeMutablePointer<GNode> { get }
}

/// The `NodeRef` type acts as a lightweight Swift reference to an underlying `GNode` instance.
/// It exposes methods that can operate on this data type through `NodeProtocol` conformance.
/// Use `NodeRef` only as an `unowned` reference to an existing `GNode` instance.
///
/// The `GNode` struct represents one node in a [n-ary tree](../Protocols/NodeProtocol.html).
public struct NodeRef: NodeProtocol {
        /// Untyped pointer to the underlying `GNode` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension NodeRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GNode>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `NodeProtocol`
    init<T: NodeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NodeProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NodeProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NodeProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NodeProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NodeProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Node` type acts as an owner of an underlying `GNode` instance.
/// It provides the methods that can operate on this data type through `NodeProtocol` conformance.
/// Use `Node` as a strong reference or owner of a `GNode` instance.
///
/// The `GNode` struct represents one node in a [n-ary tree](../Protocols/NodeProtocol.html).
open class Node: NodeProtocol {
        /// Untyped pointer to the underlying `GNode` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Node` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GNode>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GNode` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Node` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GNode>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GNode, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `NodeProtocol`
    /// `GNode` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `NodeProtocol`
    public init<T: NodeProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GNode, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GNode`.
    deinit {
        // no reference counting for GNode, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NodeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NodeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GNode, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NodeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NodeProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GNode, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NodeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NodeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GNode, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NodeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NodeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GNode, cannot ref(cast(_ptr))
    }



}

// MARK: no Node properties

// MARK: no Node signals


// MARK: Node Record: NodeProtocol extension (methods and fields)
public extension NodeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GNode` instance.
    var _ptr: UnsafeMutablePointer<GNode> { return ptr.assumingMemoryBound(to: GNode.self) }

    /// Gets the position of the first child of a `GNode`
    /// which contains the given data.
    func childIndex(data: UnsafeMutableRawPointer) -> Int {
        let rv: Int = cast(g_node_child_index(cast(_ptr), cast(data)))
        return Int(rv)
    }

    /// Gets the position of a `GNode` with respect to its siblings.
    /// `child` must be a child of `node`. The first child is numbered 0,
    /// the second 1, and so on.
    func childPosition(child: NodeProtocol) -> Int {
        let rv: Int = cast(g_node_child_position(cast(_ptr), cast(child.ptr)))
        return Int(rv)
    }

    /// Calls a function for each of the children of a `GNode`. Note that it
    /// doesn't descend beneath the child nodes. `func` must not do anything
    /// that would modify the structure of the tree.
    func childrenForeach(flags: TraverseFlags, func_: @escaping NodeForeachFunc, data: UnsafeMutableRawPointer) {
        g_node_children_foreach(cast(_ptr), flags.value, func_, cast(data))
    
    }

    /// Recursively copies a `GNode` (but does not deep-copy the data inside the
    /// nodes, see `g_node_copy_deep()` if you need that).
    func copy() -> UnsafeMutablePointer<GNode>! {
        let rv: UnsafeMutablePointer<GNode>! = cast(g_node_copy(cast(_ptr)))
        return cast(rv)
    }

    /// Recursively copies a `GNode` and its data.
    func copyDeep(copyFunc copy_func: @escaping CopyFunc, data: UnsafeMutableRawPointer) -> UnsafeMutablePointer<GNode>! {
        let rv: UnsafeMutablePointer<GNode>! = cast(g_node_copy_deep(cast(_ptr), copy_func, cast(data)))
        return cast(rv)
    }

    /// Gets the depth of a `GNode`.
    /// 
    /// If `node` is `nil` the depth is 0. The root node has a depth of 1.
    /// For the children of the root node the depth is 2. And so on.
    func depth() -> Int {
        let rv: Int = cast(g_node_depth(cast(_ptr)))
        return Int(rv)
    }

    /// Removes `root` and its children from the tree, freeing any memory
    /// allocated.
    func destroy() {
        g_node_destroy(cast(_ptr))
    
    }

    /// Finds a `GNode` in a tree.
    func find(order: TraverseType, flags: TraverseFlags, data: UnsafeMutableRawPointer) -> UnsafeMutablePointer<GNode>! {
        let rv: UnsafeMutablePointer<GNode>! = cast(g_node_find(cast(_ptr), order, flags.value, cast(data)))
        return cast(rv)
    }

    /// Finds the first child of a `GNode` with the given data.
    func findChild(flags: TraverseFlags, data: UnsafeMutableRawPointer) -> UnsafeMutablePointer<GNode>! {
        let rv: UnsafeMutablePointer<GNode>! = cast(g_node_find_child(cast(_ptr), flags.value, cast(data)))
        return cast(rv)
    }

    /// Gets the first sibling of a `GNode`.
    /// This could possibly be the node itself.
    func firstSibling() -> UnsafeMutablePointer<GNode>! {
        let rv: UnsafeMutablePointer<GNode>! = cast(g_node_first_sibling(cast(_ptr)))
        return cast(rv)
    }

    /// Gets the root of a tree.
    func getRoot() -> UnsafeMutablePointer<GNode>! {
        let rv: UnsafeMutablePointer<GNode>! = cast(g_node_get_root(cast(_ptr)))
        return cast(rv)
    }

    /// Inserts a `GNode` beneath the parent at the given position.
    @discardableResult func insert(position: CInt, node: NodeProtocol) -> UnsafeMutablePointer<GNode>! {
        let rv: UnsafeMutablePointer<GNode>! = cast(g_node_insert(cast(_ptr), gint(position), cast(node.ptr)))
        return cast(rv)
    }

    /// Inserts a `GNode` beneath the parent after the given sibling.
    @discardableResult func insertAfter(sibling: NodeProtocol, node: NodeProtocol) -> UnsafeMutablePointer<GNode>! {
        let rv: UnsafeMutablePointer<GNode>! = cast(g_node_insert_after(cast(_ptr), cast(sibling.ptr), cast(node.ptr)))
        return cast(rv)
    }

    /// Inserts a `GNode` beneath the parent before the given sibling.
    @discardableResult func insertBefore(sibling: NodeProtocol, node: NodeProtocol) -> UnsafeMutablePointer<GNode>! {
        let rv: UnsafeMutablePointer<GNode>! = cast(g_node_insert_before(cast(_ptr), cast(sibling.ptr), cast(node.ptr)))
        return cast(rv)
    }

    /// Returns `true` if `node` is an ancestor of `descendant`.
    /// This is true if node is the parent of `descendant`,
    /// or if node is the grandparent of `descendant` etc.
    func isAncestor(descendant: NodeProtocol) -> Bool {
        let rv = g_node_is_ancestor(cast(_ptr), cast(descendant.ptr))
        return Bool(rv != 0)
    }

    /// Gets the last child of a `GNode`.
    func lastChild() -> UnsafeMutablePointer<GNode>! {
        let rv: UnsafeMutablePointer<GNode>! = cast(g_node_last_child(cast(_ptr)))
        return cast(rv)
    }

    /// Gets the last sibling of a `GNode`.
    /// This could possibly be the node itself.
    func lastSibling() -> UnsafeMutablePointer<GNode>! {
        let rv: UnsafeMutablePointer<GNode>! = cast(g_node_last_sibling(cast(_ptr)))
        return cast(rv)
    }

    /// Gets the maximum height of all branches beneath a `GNode`.
    /// This is the maximum distance from the `GNode` to all leaf nodes.
    /// 
    /// If `root` is `nil`, 0 is returned. If `root` has no children,
    /// 1 is returned. If `root` has children, 2 is returned. And so on.
    func maxHeight() -> Int {
        let rv: Int = cast(g_node_max_height(cast(_ptr)))
        return Int(rv)
    }

    /// Gets the number of children of a `GNode`.
    func nChildren() -> Int {
        let rv: Int = cast(g_node_n_children(cast(_ptr)))
        return Int(rv)
    }

    /// Gets the number of nodes in a tree.
    func nNodes(flags: TraverseFlags) -> Int {
        let rv: Int = cast(g_node_n_nodes(cast(_ptr), flags.value))
        return Int(rv)
    }

    /// Gets a child of a `GNode`, using the given index.
    /// The first child is at index 0. If the index is
    /// too big, `nil` is returned.
    func nthChild(n: CUnsignedInt) -> UnsafeMutablePointer<GNode>! {
        let rv: UnsafeMutablePointer<GNode>! = cast(g_node_nth_child(cast(_ptr), guint(n)))
        return cast(rv)
    }

    /// Inserts a `GNode` as the first child of the given parent.
    @discardableResult func prepend(node: NodeProtocol) -> UnsafeMutablePointer<GNode>! {
        let rv: UnsafeMutablePointer<GNode>! = cast(g_node_prepend(cast(_ptr), cast(node.ptr)))
        return cast(rv)
    }

    /// Reverses the order of the children of a `GNode`.
    /// (It doesn't change the order of the grandchildren.)
    func reverseChildren() {
        g_node_reverse_children(cast(_ptr))
    
    }

    /// Traverses a tree starting at the given root `GNode`.
    /// It calls the given function for each node visited.
    /// The traversal can be halted at any point by returning `true` from `func`.
    /// `func` must not do anything that would modify the structure of the tree.
    func traverse(order: TraverseType, flags: TraverseFlags, maxDepth max_depth: CInt, func_: @escaping NodeTraverseFunc, data: UnsafeMutableRawPointer) {
        g_node_traverse(cast(_ptr), order, flags.value, gint(max_depth), func_, cast(data))
    
    }

    /// Unlinks a `GNode` from a tree, resulting in two separate trees.
    func unlink() {
        g_node_unlink(cast(_ptr))
    
    }
    /// Gets the root of a tree.
    var root: UnsafeMutablePointer<GNode>! {
        /// Gets the root of a tree.
        get {
            let rv: UnsafeMutablePointer<GNode>! = cast(g_node_get_root(cast(_ptr)))
            return cast(rv)
        }
    }

    /// contains the actual data of the node.
    var data: UnsafeMutableRawPointer {
        /// contains the actual data of the node.
        get {
            let rv: UnsafeMutableRawPointer = cast(_ptr.pointee.data)
            return rv
        }
        /// contains the actual data of the node.
         set {
            _ptr.pointee.data = cast(newValue)
        }
    }

    /// points to the node's next sibling (a sibling is another
    ///        `GNode` with the same parent).
    var next: UnsafeMutablePointer<GNode> {
        /// points to the node's next sibling (a sibling is another
        ///        `GNode` with the same parent).
        get {
            let rv: UnsafeMutablePointer<GNode> = cast(_ptr.pointee.next)
            return rv
        }
        /// points to the node's next sibling (a sibling is another
        ///        `GNode` with the same parent).
         set {
            _ptr.pointee.next = cast(newValue)
        }
    }

    /// points to the node's previous sibling.
    var prev: UnsafeMutablePointer<GNode> {
        /// points to the node's previous sibling.
        get {
            let rv: UnsafeMutablePointer<GNode> = cast(_ptr.pointee.prev)
            return rv
        }
        /// points to the node's previous sibling.
         set {
            _ptr.pointee.prev = cast(newValue)
        }
    }

    /// points to the parent of the `GNode`, or is `nil` if the
    ///          `GNode` is the root of the tree.
    var parent: UnsafeMutablePointer<GNode> {
        /// points to the parent of the `GNode`, or is `nil` if the
        ///          `GNode` is the root of the tree.
        get {
            let rv: UnsafeMutablePointer<GNode> = cast(_ptr.pointee.parent)
            return rv
        }
        /// points to the parent of the `GNode`, or is `nil` if the
        ///          `GNode` is the root of the tree.
         set {
            _ptr.pointee.parent = cast(newValue)
        }
    }

    /// points to the first child of the `GNode`.  The other
    ///            children are accessed by using the `next` pointer of each
    ///            child.
    var children: UnsafeMutablePointer<GNode> {
        /// points to the first child of the `GNode`.  The other
        ///            children are accessed by using the `next` pointer of each
        ///            child.
        get {
            let rv: UnsafeMutablePointer<GNode> = cast(_ptr.pointee.children)
            return rv
        }
        /// points to the first child of the `GNode`.  The other
        ///            children are accessed by using the `next` pointer of each
        ///            child.
         set {
            _ptr.pointee.children = cast(newValue)
        }
    }

}



