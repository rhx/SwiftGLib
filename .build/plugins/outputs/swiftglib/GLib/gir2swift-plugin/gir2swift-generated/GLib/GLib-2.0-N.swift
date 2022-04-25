import CGLib

// MARK: - Node Record

/// The `GNode` struct represents one node in a [n-ary tree](../Protocols/NodeProtocol.html).
///
/// The `NodeProtocol` protocol exposes the methods and properties of an underlying `GNode` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Node`.
/// Alternatively, use `NodeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol NodeProtocol {
        /// Untyped pointer to the underlying `GNode` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GNode` instance.
    var _ptr: UnsafeMutablePointer<GNode>! { get }

    /// Required Initialiser for types conforming to `NodeProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `GNode` struct represents one node in a [n-ary tree](../Protocols/NodeProtocol.html).
///
/// The `NodeRef` type acts as a lightweight Swift reference to an underlying `GNode` instance.
/// It exposes methods that can operate on this data type through `NodeProtocol` conformance.
/// Use `NodeRef` only as an `unowned` reference to an existing `GNode` instance.
///
public struct NodeRef: NodeProtocol {
        /// Untyped pointer to the underlying `GNode` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension NodeRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GNode>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GNode>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GNode>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GNode>?) {
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

    /// Reference intialiser for a related type that implements `NodeProtocol`
    @inlinable init<T: NodeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NodeProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NodeProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NodeProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NodeProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NodeProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `GNode` struct represents one node in a [n-ary tree](../Protocols/NodeProtocol.html).
///
/// The `Node` type acts as an owner of an underlying `GNode` instance.
/// It provides the methods that can operate on this data type through `NodeProtocol` conformance.
/// Use `Node` as a strong reference or owner of a `GNode` instance.
///
open class Node: NodeProtocol {
        /// Untyped pointer to the underlying `GNode` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Node` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GNode>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Node` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GNode>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Node` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Node` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Node` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GNode>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Node` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GNode>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GNode` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Node` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GNode>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GNode, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `NodeProtocol`
    /// `GNode` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `NodeProtocol`
    @inlinable public init<T: NodeProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GNode, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GNode`.
    deinit {
        // no reference counting for GNode, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NodeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NodeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GNode, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NodeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NodeProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GNode, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NodeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NodeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GNode, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NodeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NodeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GNode, cannot ref(_ptr)
    }



}

// MARK: no Node properties

// MARK: no Node signals

// MARK: Node has no signals
// MARK: Node Record: NodeProtocol extension (methods and fields)
public extension NodeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GNode` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GNode>! { return ptr?.assumingMemoryBound(to: GNode.self) }

    /// Gets the position of the first child of a `GNode`
    /// which contains the given data.
    @inlinable func childIndex(data: gpointer? = nil) -> Int {
        let result = g_node_child_index(_ptr, data)
        let rv = Int(result)
        return rv
    }

    /// Gets the position of a `GNode` with respect to its siblings.
    /// `child` must be a child of `node`. The first child is numbered 0,
    /// the second 1, and so on.
    @inlinable func childPosition<NodeT: NodeProtocol>(child: NodeT) -> Int {
        let result = g_node_child_position(_ptr, child._ptr)
        let rv = Int(result)
        return rv
    }

    /// Calls a function for each of the children of a `GNode`. Note that it
    /// doesn't descend beneath the child nodes. `func` must not do anything
    /// that would modify the structure of the tree.
    @inlinable func childrenForeach(flags: TraverseFlags, `func`: GNodeForeachFunc?, data: gpointer? = nil) {
        
        g_node_children_foreach(_ptr, flags.value, `func`, data)
        
    }

    /// Recursively copies a `GNode` (but does not deep-copy the data inside the
    /// nodes, see `g_node_copy_deep()` if you need that).
    @inlinable func copy() -> NodeRef! {
        let result = g_node_copy(_ptr)
        guard let rv = NodeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Recursively copies a `GNode` and its data.
    @inlinable func copyDeep(copyFunc: GCopyFunc?, data: gpointer? = nil) -> NodeRef! {
        let result = g_node_copy_deep(_ptr, copyFunc, data)
        guard let rv = NodeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Gets the depth of a `GNode`.
    /// 
    /// If `node` is `nil` the depth is 0. The root node has a depth of 1.
    /// For the children of the root node the depth is 2. And so on.
    @inlinable func depth() -> Int {
        let result = g_node_depth(_ptr)
        let rv = Int(result)
        return rv
    }

    /// Removes `root` and its children from the tree, freeing any memory
    /// allocated.
    @inlinable func destroy() {
        
        g_node_destroy(_ptr)
        
    }

    /// Finds a `GNode` in a tree.
    @inlinable func find(order: GTraverseType, flags: TraverseFlags, data: gpointer? = nil) -> NodeRef! {
        let result = g_node_find(_ptr, order, flags.value, data)
        guard let rv = NodeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Finds the first child of a `GNode` with the given data.
    @inlinable func findChild(flags: TraverseFlags, data: gpointer? = nil) -> NodeRef! {
        let result = g_node_find_child(_ptr, flags.value, data)
        guard let rv = NodeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Gets the first sibling of a `GNode`.
    /// This could possibly be the node itself.
    @inlinable func firstSibling() -> NodeRef! {
        let result = g_node_first_sibling(_ptr)
        guard let rv = NodeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Gets the root of a tree.
    @inlinable func getRoot() -> NodeRef! {
        let result = g_node_get_root(_ptr)
        guard let rv = NodeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Inserts a `GNode` beneath the parent at the given position.
    @inlinable func insert<NodeT: NodeProtocol>(position: Int, node: NodeT) -> NodeRef! {
        let result = g_node_insert(_ptr, gint(position), node._ptr)
        guard let rv = NodeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Inserts a `GNode` beneath the parent after the given sibling.
    @inlinable func insertAfter<NodeT: NodeProtocol>(sibling: NodeT, node: NodeT) -> NodeRef! {
        let result = g_node_insert_after(_ptr, sibling._ptr, node._ptr)
        guard let rv = NodeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Inserts a `GNode` beneath the parent before the given sibling.
    @inlinable func insertBefore<NodeT: NodeProtocol>(sibling: NodeT, node: NodeT) -> NodeRef! {
        let result = g_node_insert_before(_ptr, sibling._ptr, node._ptr)
        guard let rv = NodeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Returns `true` if `node` is an ancestor of `descendant`.
    /// This is true if node is the parent of `descendant`,
    /// or if node is the grandparent of `descendant` etc.
    @inlinable func isAncestor<NodeT: NodeProtocol>(descendant: NodeT) -> Bool {
        let result = g_node_is_ancestor(_ptr, descendant._ptr)
        let rv = ((result) != 0)
        return rv
    }

    /// Gets the last child of a `GNode`.
    @inlinable func lastChild() -> NodeRef! {
        let result = g_node_last_child(_ptr)
        guard let rv = NodeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Gets the last sibling of a `GNode`.
    /// This could possibly be the node itself.
    @inlinable func lastSibling() -> NodeRef! {
        let result = g_node_last_sibling(_ptr)
        guard let rv = NodeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Gets the maximum height of all branches beneath a `GNode`.
    /// This is the maximum distance from the `GNode` to all leaf nodes.
    /// 
    /// If `root` is `nil`, 0 is returned. If `root` has no children,
    /// 1 is returned. If `root` has children, 2 is returned. And so on.
    @inlinable func maxHeight() -> Int {
        let result = g_node_max_height(_ptr)
        let rv = Int(result)
        return rv
    }

    /// Gets the number of children of a `GNode`.
    @inlinable func nChildren() -> Int {
        let result = g_node_n_children(_ptr)
        let rv = Int(result)
        return rv
    }

    /// Gets the number of nodes in a tree.
    @inlinable func nNodes(flags: TraverseFlags) -> Int {
        let result = g_node_n_nodes(_ptr, flags.value)
        let rv = Int(result)
        return rv
    }

    /// Gets a child of a `GNode`, using the given index.
    /// The first child is at index 0. If the index is
    /// too big, `nil` is returned.
    @inlinable func nthChild(n: Int) -> NodeRef! {
        let result = g_node_nth_child(_ptr, guint(n))
        guard let rv = NodeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Inserts a `GNode` as the first child of the given parent.
    @inlinable func prepend<NodeT: NodeProtocol>(node: NodeT) -> NodeRef! {
        let result = g_node_prepend(_ptr, node._ptr)
        guard let rv = NodeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Reverses the order of the children of a `GNode`.
    /// (It doesn't change the order of the grandchildren.)
    @inlinable func reverseChildren() {
        
        g_node_reverse_children(_ptr)
        
    }

    /// Traverses a tree starting at the given root `GNode`.
    /// It calls the given function for each node visited.
    /// The traversal can be halted at any point by returning `true` from `func`.
    /// `func` must not do anything that would modify the structure of the tree.
    @inlinable func traverse(order: GTraverseType, flags: TraverseFlags, maxDepth: Int, `func`: GNodeTraverseFunc?, data: gpointer? = nil) {
        
        g_node_traverse(_ptr, order, flags.value, gint(maxDepth), `func`, data)
        
    }

    /// Unlinks a `GNode` from a tree, resulting in two separate trees.
    @inlinable func unlink() {
        
        g_node_unlink(_ptr)
        
    }
    /// Gets the root of a tree.
    @inlinable var root: NodeRef! {
        /// Gets the root of a tree.
        get {
            let result = g_node_get_root(_ptr)
        guard let rv = NodeRef(gconstpointer: gconstpointer(result)) else { return nil }
            return rv
        }
    }

    /// contains the actual data of the node.
    @inlinable var data: gpointer? {
        /// contains the actual data of the node.
        get {
            let rv = _ptr.pointee.data
    return rv
        }
        /// contains the actual data of the node.
         set {
            _ptr.pointee.data = newValue
        }
    }

    /// points to the node's next sibling (a sibling is another
    ///        `GNode` with the same parent).
    @inlinable var next: NodeRef! {
        /// points to the node's next sibling (a sibling is another
        ///        `GNode` with the same parent).
        get {
            let rv = NodeRef(gconstpointer: gconstpointer(_ptr.pointee.next))
    return rv
        }
        /// points to the node's next sibling (a sibling is another
        ///        `GNode` with the same parent).
         set {
            _ptr.pointee.next = UnsafeMutablePointer<GNode>(newValue._ptr)
        }
    }

    /// points to the node's previous sibling.
    @inlinable var prev: NodeRef! {
        /// points to the node's previous sibling.
        get {
            let rv = NodeRef(gconstpointer: gconstpointer(_ptr.pointee.prev))
    return rv
        }
        /// points to the node's previous sibling.
         set {
            _ptr.pointee.prev = UnsafeMutablePointer<GNode>(newValue._ptr)
        }
    }

    /// points to the parent of the `GNode`, or is `nil` if the
    ///          `GNode` is the root of the tree.
    @inlinable var parent: NodeRef! {
        /// points to the parent of the `GNode`, or is `nil` if the
        ///          `GNode` is the root of the tree.
        get {
            let rv = NodeRef(gconstpointer: gconstpointer(_ptr.pointee.parent))
    return rv
        }
        /// points to the parent of the `GNode`, or is `nil` if the
        ///          `GNode` is the root of the tree.
         set {
            _ptr.pointee.parent = UnsafeMutablePointer<GNode>(newValue._ptr)
        }
    }

    /// points to the first child of the `GNode`.  The other
    ///            children are accessed by using the `next` pointer of each
    ///            child.
    @inlinable var children: NodeRef! {
        /// points to the first child of the `GNode`.  The other
        ///            children are accessed by using the `next` pointer of each
        ///            child.
        get {
            let rv = NodeRef(gconstpointer: gconstpointer(_ptr.pointee.children))
    return rv
        }
        /// points to the first child of the `GNode`.  The other
        ///            children are accessed by using the `next` pointer of each
        ///            child.
         set {
            _ptr.pointee.children = UnsafeMutablePointer<GNode>(newValue._ptr)
        }
    }

}



