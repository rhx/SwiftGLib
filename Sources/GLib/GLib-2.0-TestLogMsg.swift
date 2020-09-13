import CGLib

// MARK: - TestLogMsg Record

/// The `TestLogMsgProtocol` protocol exposes the methods and properties of an underlying `GTestLogMsg` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TestLogMsg`.
/// Alternatively, use `TestLogMsgRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TestLogMsgProtocol {
        /// Untyped pointer to the underlying `GTestLogMsg` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTestLogMsg` instance.
    var _ptr: UnsafeMutablePointer<GTestLogMsg>! { get }

}

/// The `TestLogMsgRef` type acts as a lightweight Swift reference to an underlying `GTestLogMsg` instance.
/// It exposes methods that can operate on this data type through `TestLogMsgProtocol` conformance.
/// Use `TestLogMsgRef` only as an `unowned` reference to an existing `GTestLogMsg` instance.
///

public struct TestLogMsgRef: TestLogMsgProtocol {
        /// Untyped pointer to the underlying `GTestLogMsg` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TestLogMsgRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTestLogMsg>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTestLogMsg>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTestLogMsg>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTestLogMsg>?) {
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

    /// Reference intialiser for a related type that implements `TestLogMsgProtocol`
    @inlinable init<T: TestLogMsgProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogMsgProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogMsgProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogMsgProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogMsgProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogMsgProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TestLogMsg` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTestLogMsg>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TestLogMsg` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTestLogMsg>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TestLogMsg` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TestLogMsg` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TestLogMsg` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTestLogMsg>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TestLogMsg` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTestLogMsg>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTestLogMsg` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TestLogMsg` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTestLogMsg>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTestLogMsg, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TestLogMsgProtocol`
    /// `GTestLogMsg` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TestLogMsgProtocol`
    @inlinable public init<T: TestLogMsgProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GTestLogMsg, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GTestLogMsg`.
    deinit {
        // no reference counting for GTestLogMsg, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogMsgProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogMsgProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTestLogMsg, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogMsgProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogMsgProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTestLogMsg, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogMsgProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogMsgProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTestLogMsg, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogMsgProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogMsgProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTestLogMsg, cannot ref(_ptr)
    }



}

// MARK: no TestLogMsg properties

// MARK: no TestLogMsg signals


// MARK: TestLogMsg Record: TestLogMsgProtocol extension (methods and fields)
public extension TestLogMsgProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTestLogMsg` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTestLogMsg>! { return ptr?.assumingMemoryBound(to: GTestLogMsg.self) }

    /// Internal function for gtester to free test log messages, no ABI guarantees provided.
    @inlinable func free() {
        g_test_log_msg_free(_ptr)
    
    }

    @inlinable var logType: GTestLogType {
        get {
            let rv = _ptr.pointee.log_type
            return rv
        }
         set {
            _ptr.pointee.log_type = newValue
        }
    }

    @inlinable var nStrings: guint {
        get {
            let rv = _ptr.pointee.n_strings
            return rv
        }
         set {
            _ptr.pointee.n_strings = newValue
        }
    }

    @inlinable var strings: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        get {
            let rv = _ptr.pointee.strings
            return rv
        }
         set {
            _ptr.pointee.strings = newValue
        }
    }

    @inlinable var nNums: guint {
        get {
            let rv = _ptr.pointee.n_nums
            return rv
        }
         set {
            _ptr.pointee.n_nums = newValue
        }
    }

    @inlinable var nums: UnsafeMutablePointer<CLongDouble>! {
        get {
            let rv = _ptr.pointee.nums
            return rv
        }
         set {
            _ptr.pointee.nums = newValue
        }
    }

}



