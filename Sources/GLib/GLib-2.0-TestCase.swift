import CGLib

// MARK: - TestCase Record

/// The `TestCaseProtocol` protocol exposes the methods and properties of an underlying `GTestCase` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TestCase`.
/// Alternatively, use `TestCaseRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// An opaque structure representing a test case.
public protocol TestCaseProtocol {
        /// Untyped pointer to the underlying `GTestCase` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GTestCase` instance.
    var _ptr: UnsafeMutablePointer<GTestCase> { get }
}

/// The `TestCaseRef` type acts as a lightweight Swift reference to an underlying `GTestCase` instance.
/// It exposes methods that can operate on this data type through `TestCaseProtocol` conformance.
/// Use `TestCaseRef` only as an `unowned` reference to an existing `GTestCase` instance.
///
/// An opaque structure representing a test case.
public struct TestCaseRef: TestCaseProtocol {
        /// Untyped pointer to the underlying `GTestCase` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TestCaseRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GTestCase>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TestCaseProtocol`
    init<T: TestCaseProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestCaseProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestCaseProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestCaseProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestCaseProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestCaseProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TestCase` type acts as an owner of an underlying `GTestCase` instance.
/// It provides the methods that can operate on this data type through `TestCaseProtocol` conformance.
/// Use `TestCase` as a strong reference or owner of a `GTestCase` instance.
///
/// An opaque structure representing a test case.
open class TestCase: TestCaseProtocol {
        /// Untyped pointer to the underlying `GTestCase` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TestCase` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GTestCase>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTestCase` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TestCase` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GTestCase>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTestCase, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `TestCaseProtocol`
    /// `GTestCase` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TestCaseProtocol`
    public init<T: TestCaseProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GTestCase, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GTestCase`.
    deinit {
        // no reference counting for GTestCase, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestCaseProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestCaseProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTestCase, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestCaseProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestCaseProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTestCase, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestCaseProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestCaseProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTestCase, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestCaseProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestCaseProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTestCase, cannot ref(cast(_ptr))
    }



}

// MARK: no TestCase properties

// MARK: no TestCase signals


// MARK: TestCase Record: TestCaseProtocol extension (methods and fields)
public extension TestCaseProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTestCase` instance.
    var _ptr: UnsafeMutablePointer<GTestCase> { return ptr.assumingMemoryBound(to: GTestCase.self) }



}



