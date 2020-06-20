import CGLib

// MARK: - TrashStack Record

/// The `TrashStackProtocol` protocol exposes the methods and properties of an underlying `GTrashStack` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TrashStack`.
/// Alternatively, use `TrashStackRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Each piece of memory that is pushed onto the stack
/// is cast to a GTrashStack*.
public protocol TrashStackProtocol {
        /// Untyped pointer to the underlying `GTrashStack` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GTrashStack` instance.
    var _ptr: UnsafeMutablePointer<GTrashStack> { get }
}

/// The `TrashStackRef` type acts as a lightweight Swift reference to an underlying `GTrashStack` instance.
/// It exposes methods that can operate on this data type through `TrashStackProtocol` conformance.
/// Use `TrashStackRef` only as an `unowned` reference to an existing `GTrashStack` instance.
///
/// Each piece of memory that is pushed onto the stack
/// is cast to a GTrashStack*.
public struct TrashStackRef: TrashStackProtocol {
        /// Untyped pointer to the underlying `GTrashStack` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TrashStackRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GTrashStack>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TrashStackProtocol`
    init<T: TrashStackProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TrashStackProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TrashStackProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TrashStackProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TrashStackProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TrashStackProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TrashStack` type acts as an owner of an underlying `GTrashStack` instance.
/// It provides the methods that can operate on this data type through `TrashStackProtocol` conformance.
/// Use `TrashStack` as a strong reference or owner of a `GTrashStack` instance.
///
/// Each piece of memory that is pushed onto the stack
/// is cast to a GTrashStack*.
open class TrashStack: TrashStackProtocol {
        /// Untyped pointer to the underlying `GTrashStack` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TrashStack` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GTrashStack>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTrashStack` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TrashStack` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GTrashStack>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTrashStack, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `TrashStackProtocol`
    /// `GTrashStack` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TrashStackProtocol`
    public init<T: TrashStackProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GTrashStack, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GTrashStack`.
    deinit {
        // no reference counting for GTrashStack, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TrashStackProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TrashStackProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTrashStack, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TrashStackProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TrashStackProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTrashStack, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TrashStackProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TrashStackProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTrashStack, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TrashStackProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TrashStackProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTrashStack, cannot ref(cast(_ptr))
    }



}

// MARK: no TrashStack properties

// MARK: no TrashStack signals


// MARK: TrashStack Record: TrashStackProtocol extension (methods and fields)
public extension TrashStackProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTrashStack` instance.
    var _ptr: UnsafeMutablePointer<GTrashStack> { return ptr.assumingMemoryBound(to: GTrashStack.self) }

    /// Returns the height of a `GTrashStack`.
    /// 
    /// Note that execution of this function is of `O(N)` complexity
    /// where N denotes the number of items on the stack.
    ///
    /// **height is deprecated:**
    /// #GTrashStack is deprecated without replacement
    @available(*, deprecated) func height() -> Int {
        let rv: Int = cast(g_trash_stack_height(cast(_ptr)))
        return Int(rv)
    }

    /// Returns the element at the top of a `GTrashStack`
    /// which may be `nil`.
    ///
    /// **peek is deprecated:**
    /// #GTrashStack is deprecated without replacement
    @available(*, deprecated) func peek() -> UnsafeMutableRawPointer! {
        let rv: UnsafeMutableRawPointer! = cast(g_trash_stack_peek(cast(_ptr)))
        return cast(rv)
    }

    /// Pops a piece of memory off a `GTrashStack`.
    ///
    /// **pop is deprecated:**
    /// #GTrashStack is deprecated without replacement
    @available(*, deprecated) func pop() -> UnsafeMutableRawPointer! {
        let rv: UnsafeMutableRawPointer! = cast(g_trash_stack_pop(cast(_ptr)))
        return cast(rv)
    }

    /// Pushes a piece of memory onto a `GTrashStack`.
    ///
    /// **push is deprecated:**
    /// #GTrashStack is deprecated without replacement
    @available(*, deprecated) func push(dataP data_p: UnsafeMutableRawPointer) {
        g_trash_stack_push(cast(_ptr), cast(data_p))
    
    }

    /// Returns the height of a `GTrashStack`.
    /// 
    /// Note that execution of this function is of `O(N)` complexity
    /// where N denotes the number of items on the stack.
    ///
    /// **trash_stack_height is deprecated:**
    /// #GTrashStack is deprecated without replacement
    @available(*, deprecated) func trashStackHeight() -> Int {
        let rv: Int = cast(g_trash_stack_height(cast(_ptr)))
        return Int(rv)
    }

    /// Returns the element at the top of a `GTrashStack`
    /// which may be `nil`.
    ///
    /// **trash_stack_peek is deprecated:**
    /// #GTrashStack is deprecated without replacement
    @available(*, deprecated) func trashStackPeek() -> UnsafeMutableRawPointer! {
        let rv: UnsafeMutableRawPointer! = cast(g_trash_stack_peek(cast(_ptr)))
        return cast(rv)
    }

    /// Pops a piece of memory off a `GTrashStack`.
    ///
    /// **trash_stack_pop is deprecated:**
    /// #GTrashStack is deprecated without replacement
    @available(*, deprecated) func trashStackPop() -> UnsafeMutableRawPointer! {
        let rv: UnsafeMutableRawPointer! = cast(g_trash_stack_pop(cast(_ptr)))
        return cast(rv)
    }

    /// Pushes a piece of memory onto a `GTrashStack`.
    ///
    /// **trash_stack_push is deprecated:**
    /// #GTrashStack is deprecated without replacement
    @available(*, deprecated) func trashStackPush(dataP data_p: UnsafeMutableRawPointer) {
        g_trash_stack_push(cast(_ptr), cast(data_p))
    
    }

    /// pointer to the previous element of the stack,
    ///     gets stored in the first `sizeof (gpointer)`
    ///     bytes of the element
    var next: UnsafeMutablePointer<GTrashStack> {
        /// pointer to the previous element of the stack,
        ///     gets stored in the first `sizeof (gpointer)`
        ///     bytes of the element
        get {
            let rv: UnsafeMutablePointer<GTrashStack> = cast(_ptr.pointee.next)
            return rv
        }
        /// pointer to the previous element of the stack,
        ///     gets stored in the first `sizeof (gpointer)`
        ///     bytes of the element
         set {
            _ptr.pointee.next = cast(newValue)
        }
    }

}



