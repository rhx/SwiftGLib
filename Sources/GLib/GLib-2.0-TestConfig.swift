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
    /// Ownership is transferred to the `TestConfig` instance.
    public init(_ op: UnsafeMutablePointer<GTestConfig>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TestConfigProtocol`
    /// `GTestConfig` does not allow reference counting.
    public convenience init<T: TestConfigProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GTestConfig, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GTestConfig`.
    deinit {
        // no reference counting for GTestConfig, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestConfigProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GTestConfig.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestConfigProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GTestConfig.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestConfigProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GTestConfig.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestConfigProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GTestConfig>(opaquePointer))
    }



}

// MARK: - no TestConfig properties

// MARK: - no signals


public extension TestConfigProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTestConfig` instance.
    var _ptr: UnsafeMutablePointer<GTestConfig> { return ptr.assumingMemoryBound(to: GTestConfig.self) }

}



