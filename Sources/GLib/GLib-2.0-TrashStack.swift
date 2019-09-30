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
    /// Ownership is transferred to the `TrashStack` instance.
    public init(_ op: UnsafeMutablePointer<GTrashStack>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TrashStackProtocol`
    /// `GTrashStack` does not allow reference counting.
    public convenience init<T: TrashStackProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GTrashStack, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GTrashStack`.
    deinit {
        // no reference counting for GTrashStack, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TrashStackProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GTrashStack.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TrashStackProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GTrashStack.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TrashStackProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GTrashStack.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TrashStackProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GTrashStack>(opaquePointer))
    }



}

// MARK: - no TrashStack properties

// MARK: - no signals


public extension TrashStackProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTrashStack` instance.
    var _ptr: UnsafeMutablePointer<GTrashStack> { return ptr.assumingMemoryBound(to: GTrashStack.self) }

    /// Returns the height of a `GTrashStack`.
    /// 
    /// Note that execution of this function is of O(N) complexity
    /// where N denotes the number of items on the stack.
    ///
    /// **height is deprecated:**
    /// #GTrashStack is deprecated without replacement
    @available(*, deprecated) func height() -> CUnsignedInt {
        let rv = g_trash_stack_height(cast(_ptr))
        return CUnsignedInt(rv)
    }

    /// Returns the element at the top of a `GTrashStack`
    /// which may be `nil`.
    ///
    /// **peek is deprecated:**
    /// #GTrashStack is deprecated without replacement
    @available(*, deprecated) func peek() -> UnsafeMutableRawPointer! {
        let rv = g_trash_stack_peek(cast(_ptr))
        return cast(rv)
    }

    /// Pops a piece of memory off a `GTrashStack`.
    ///
    /// **pop is deprecated:**
    /// #GTrashStack is deprecated without replacement
    @available(*, deprecated) func pop() -> UnsafeMutableRawPointer! {
        let rv = g_trash_stack_pop(cast(_ptr))
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
    /// Note that execution of this function is of O(N) complexity
    /// where N denotes the number of items on the stack.
    ///
    /// **trash_stack_height is deprecated:**
    /// #GTrashStack is deprecated without replacement
    @available(*, deprecated) func trashStackHeight() -> CUnsignedInt {
        let rv = g_trash_stack_height(cast(_ptr))
        return CUnsignedInt(rv)
    }

    /// Returns the element at the top of a `GTrashStack`
    /// which may be `nil`.
    ///
    /// **trash_stack_peek is deprecated:**
    /// #GTrashStack is deprecated without replacement
    @available(*, deprecated) func trashStackPeek() -> UnsafeMutableRawPointer! {
        let rv = g_trash_stack_peek(cast(_ptr))
        return cast(rv)
    }

    /// Pops a piece of memory off a `GTrashStack`.
    ///
    /// **trash_stack_pop is deprecated:**
    /// #GTrashStack is deprecated without replacement
    @available(*, deprecated) func trashStackPop() -> UnsafeMutableRawPointer! {
        let rv = g_trash_stack_pop(cast(_ptr))
        return cast(rv)
    }

    /// Pushes a piece of memory onto a `GTrashStack`.
    ///
    /// **trash_stack_push is deprecated:**
    /// #GTrashStack is deprecated without replacement
    @available(*, deprecated) func trashStackPush(dataP data_p: UnsafeMutableRawPointer) {
        g_trash_stack_push(cast(_ptr), cast(data_p))
    
    }
}



