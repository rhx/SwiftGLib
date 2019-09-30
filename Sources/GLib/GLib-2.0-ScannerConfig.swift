import CGLib

// MARK: - ScannerConfig Record

/// The `ScannerConfigProtocol` protocol exposes the methods and properties of an underlying `GScannerConfig` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ScannerConfig`.
/// Alternatively, use `ScannerConfigRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Specifies the `GScanner` parser configuration. Most settings can
/// be changed during the parsing phase and will affect the lexical
/// parsing of the next unpeeked token.
public protocol ScannerConfigProtocol {
    /// Untyped pointer to the underlying `GScannerConfig` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GScannerConfig` instance.
    var _ptr: UnsafeMutablePointer<GScannerConfig> { get }
}

/// The `ScannerConfigRef` type acts as a lightweight Swift reference to an underlying `GScannerConfig` instance.
/// It exposes methods that can operate on this data type through `ScannerConfigProtocol` conformance.
/// Use `ScannerConfigRef` only as an `unowned` reference to an existing `GScannerConfig` instance.
///
/// Specifies the `GScanner` parser configuration. Most settings can
/// be changed during the parsing phase and will affect the lexical
/// parsing of the next unpeeked token.
public struct ScannerConfigRef: ScannerConfigProtocol {
    /// Untyped pointer to the underlying `GScannerConfig` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ScannerConfigRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GScannerConfig>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ScannerConfigProtocol`
    init<T: ScannerConfigProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerConfigProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerConfigProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerConfigProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerConfigProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerConfigProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ScannerConfig` type acts as an owner of an underlying `GScannerConfig` instance.
/// It provides the methods that can operate on this data type through `ScannerConfigProtocol` conformance.
/// Use `ScannerConfig` as a strong reference or owner of a `GScannerConfig` instance.
///
/// Specifies the `GScanner` parser configuration. Most settings can
/// be changed during the parsing phase and will affect the lexical
/// parsing of the next unpeeked token.
open class ScannerConfig: ScannerConfigProtocol {
    /// Untyped pointer to the underlying `GScannerConfig` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ScannerConfig` instance.
    public init(_ op: UnsafeMutablePointer<GScannerConfig>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ScannerConfigProtocol`
    /// `GScannerConfig` does not allow reference counting.
    public convenience init<T: ScannerConfigProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GScannerConfig, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GScannerConfig`.
    deinit {
        // no reference counting for GScannerConfig, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerConfigProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GScannerConfig.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerConfigProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GScannerConfig.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerConfigProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GScannerConfig.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScannerConfigProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GScannerConfig>(opaquePointer))
    }



}

// MARK: - no ScannerConfig properties

// MARK: - no signals


public extension ScannerConfigProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GScannerConfig` instance.
    var _ptr: UnsafeMutablePointer<GScannerConfig> { return ptr.assumingMemoryBound(to: GScannerConfig.self) }

}



