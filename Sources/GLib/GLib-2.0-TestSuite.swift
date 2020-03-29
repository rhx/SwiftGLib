import CGLib

// MARK: - TestSuite Record

/// The `TestSuiteProtocol` protocol exposes the methods and properties of an underlying `GTestSuite` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TestSuite`.
/// Alternatively, use `TestSuiteRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// An opaque structure representing a test suite.
public protocol TestSuiteProtocol {
    /// Untyped pointer to the underlying `GTestSuite` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GTestSuite` instance.
    var _ptr: UnsafeMutablePointer<GTestSuite> { get }
}

/// The `TestSuiteRef` type acts as a lightweight Swift reference to an underlying `GTestSuite` instance.
/// It exposes methods that can operate on this data type through `TestSuiteProtocol` conformance.
/// Use `TestSuiteRef` only as an `unowned` reference to an existing `GTestSuite` instance.
///
/// An opaque structure representing a test suite.
public struct TestSuiteRef: TestSuiteProtocol {
    /// Untyped pointer to the underlying `GTestSuite` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TestSuiteRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GTestSuite>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TestSuiteProtocol`
    init<T: TestSuiteProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestSuiteProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestSuiteProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestSuiteProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestSuiteProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestSuiteProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TestSuite` type acts as an owner of an underlying `GTestSuite` instance.
/// It provides the methods that can operate on this data type through `TestSuiteProtocol` conformance.
/// Use `TestSuite` as a strong reference or owner of a `GTestSuite` instance.
///
/// An opaque structure representing a test suite.
open class TestSuite: TestSuiteProtocol {
    /// Untyped pointer to the underlying `GTestSuite` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TestSuite` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GTestSuite>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTestSuite` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TestSuite` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GTestSuite>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTestSuite, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `TestSuiteProtocol`
    /// `GTestSuite` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TestSuiteProtocol`
    public init<T: TestSuiteProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GTestSuite, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GTestSuite`.
    deinit {
        // no reference counting for GTestSuite, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestSuiteProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestSuiteProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTestSuite, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestSuiteProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestSuiteProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTestSuite, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestSuiteProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestSuiteProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTestSuite, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestSuiteProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestSuiteProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTestSuite, cannot ref(cast(_ptr))
    }



}

// MARK: - no TestSuite properties

// MARK: - no signals


public extension TestSuiteProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTestSuite` instance.
    var _ptr: UnsafeMutablePointer<GTestSuite> { return ptr.assumingMemoryBound(to: GTestSuite.self) }

    /// Adds `test_case` to `suite`.
    func add(testCase test_case: TestCaseProtocol) {
        g_test_suite_add(cast(_ptr), cast(test_case.ptr))
    
    }

    /// Adds `nestedsuite` to `suite`.
    func addSuite(nestedsuite: TestSuiteProtocol) {
        g_test_suite_add_suite(cast(_ptr), cast(nestedsuite.ptr))
    
    }

    /// Execute the tests within `suite` and all nested `GTestSuites`.
    /// The test suites to be executed are filtered according to
    /// test path arguments (`-p testpath` and `-s testpath`) as parsed by
    /// `g_test_init()`. See the `g_test_run()` documentation for more
    /// information on the order that tests are run in.
    /// 
    /// `g_test_run_suite()` or `g_test_run()` may only be called once
    /// in a program.
    func testRunSuite() -> CInt {
        let rv = g_test_run_suite(cast(_ptr))
        return rv
    }
}



