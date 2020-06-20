import CGLib

// MARK: - TestConfig Record

/// The `TestConfigProtocol` protocol exposes the methods and properties of an underlying `GTestConfig` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TestConfig`.
/// Alternatively, use `TestConfigRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TestConfigProtocol {
        /// Untyped pointer to the underlying `GTestConfig` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GTestConfig` instance.
    var _ptr: UnsafeMutablePointer<GTestConfig> { get }
}

/// The `TestConfigRef` type acts as a lightweight Swift reference to an underlying `GTestConfig` instance.
/// It exposes methods that can operate on this data type through `TestConfigProtocol` conformance.
/// Use `TestConfigRef` only as an `unowned` reference to an existing `GTestConfig` instance.
///

public struct TestConfigRef: TestConfigProtocol {
        /// Untyped pointer to the underlying `GTestConfig` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TestConfigRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GTestConfig>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TestConfigProtocol`
    init<T: TestConfigProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestConfigProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestConfigProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestConfigProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestConfigProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestConfigProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TestConfig` type acts as an owner of an underlying `GTestConfig` instance.
/// It provides the methods that can operate on this data type through `TestConfigProtocol` conformance.
/// Use `TestConfig` as a strong reference or owner of a `GTestConfig` instance.
///

open class TestConfig: TestConfigProtocol {
        /// Untyped pointer to the underlying `GTestConfig` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TestConfig` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GTestConfig>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTestConfig` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TestConfig` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GTestConfig>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTestConfig, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `TestConfigProtocol`
    /// `GTestConfig` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TestConfigProtocol`
    public init<T: TestConfigProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GTestConfig, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GTestConfig`.
    deinit {
        // no reference counting for GTestConfig, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestConfigProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestConfigProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTestConfig, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestConfigProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestConfigProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTestConfig, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestConfigProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestConfigProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTestConfig, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestConfigProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestConfigProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTestConfig, cannot ref(cast(_ptr))
    }



}

// MARK: no TestConfig properties

// MARK: no TestConfig signals


// MARK: TestConfig Record: TestConfigProtocol extension (methods and fields)
public extension TestConfigProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTestConfig` instance.
    var _ptr: UnsafeMutablePointer<GTestConfig> { return ptr.assumingMemoryBound(to: GTestConfig.self) }


    var testInitialized: Bool {
        get {
            let rv: Bool = cast(_ptr.pointee.test_initialized)
            return rv
        }
         set {
            _ptr.pointee.test_initialized = gboolean(newValue ? 1 : 0)
        }
    }

    var testQuick: Bool {
        get {
            let rv: Bool = cast(_ptr.pointee.test_quick)
            return rv
        }
         set {
            _ptr.pointee.test_quick = gboolean(newValue ? 1 : 0)
        }
    }

    var testPerf: Bool {
        get {
            let rv: Bool = cast(_ptr.pointee.test_perf)
            return rv
        }
         set {
            _ptr.pointee.test_perf = gboolean(newValue ? 1 : 0)
        }
    }

    var testVerbose: Bool {
        get {
            let rv: Bool = cast(_ptr.pointee.test_verbose)
            return rv
        }
         set {
            _ptr.pointee.test_verbose = gboolean(newValue ? 1 : 0)
        }
    }

    var testQuiet: Bool {
        get {
            let rv: Bool = cast(_ptr.pointee.test_quiet)
            return rv
        }
         set {
            _ptr.pointee.test_quiet = gboolean(newValue ? 1 : 0)
        }
    }

    var testUndefined: Bool {
        get {
            let rv: Bool = cast(_ptr.pointee.test_undefined)
            return rv
        }
         set {
            _ptr.pointee.test_undefined = gboolean(newValue ? 1 : 0)
        }
    }

}



