import CGLib

// MARK: - TestLogMsg Record

/// The `TestLogMsgProtocol` protocol exposes the methods and properties of an underlying `GTestLogMsg` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TestLogMsg`.
/// Alternatively, use `TestLogMsgRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TestLogMsgProtocol {
    /// Untyped pointer to the underlying `GTestLogMsg` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GTestLogMsg` instance.
    var _ptr: UnsafeMutablePointer<GTestLogMsg> { get }
}

/// The `TestLogMsgRef` type acts as a lightweight Swift reference to an underlying `GTestLogMsg` instance.
/// It exposes methods that can operate on this data type through `TestLogMsgProtocol` conformance.
/// Use `TestLogMsgRef` only as an `unowned` reference to an existing `GTestLogMsg` instance.
///

public struct TestLogMsgRef: TestLogMsgProtocol {
    /// Untyped pointer to the underlying `GTestLogMsg` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TestLogMsgRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GTestLogMsg>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TestLogMsgProtocol`
    init<T: TestLogMsgProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogMsgProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogMsgProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogMsgProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogMsgProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogMsgProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TestLogMsg` type acts as an owner of an underlying `GTestLogMsg` instance.
/// It provides the methods that can operate on this data type through `TestLogMsgProtocol` conformance.
/// Use `TestLogMsg` as a strong reference or owner of a `GTestLogMsg` instance.
///

open class TestLogMsg: TestLogMsgProtocol {
    /// Untyped pointer to the underlying `GTestLogMsg` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TestLogMsg` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GTestLogMsg>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTestLogMsg` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TestLogMsg` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GTestLogMsg>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTestLogMsg, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `TestLogMsgProtocol`
    /// `GTestLogMsg` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TestLogMsgProtocol`
    public init<T: TestLogMsgProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GTestLogMsg, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GTestLogMsg`.
    deinit {
        // no reference counting for GTestLogMsg, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogMsgProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogMsgProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTestLogMsg, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogMsgProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogMsgProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTestLogMsg, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogMsgProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogMsgProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTestLogMsg, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogMsgProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogMsgProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTestLogMsg, cannot ref(cast(_ptr))
    }



}

// MARK: - no TestLogMsg properties

// MARK: - no signals


public extension TestLogMsgProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTestLogMsg` instance.
    var _ptr: UnsafeMutablePointer<GTestLogMsg> { return ptr.assumingMemoryBound(to: GTestLogMsg.self) }

    /// Internal function for gtester to free test log messages, no ABI guarantees provided.
    func free() {
        g_test_log_msg_free(cast(_ptr))
    
    }
}



