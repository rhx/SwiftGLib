import CGLib

// MARK: - OptionEntry Record

/// The `OptionEntryProtocol` protocol exposes the methods and properties of an underlying `GOptionEntry` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `OptionEntry`.
/// Alternatively, use `OptionEntryRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A GOptionEntry struct defines a single option. To have an effect, they
/// must be added to a `GOptionGroup` with `g_option_context_add_main_entries()`
/// or `g_option_group_add_entries()`.
public protocol OptionEntryProtocol {
    /// Untyped pointer to the underlying `GOptionEntry` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GOptionEntry` instance.
    var _ptr: UnsafeMutablePointer<GOptionEntry> { get }
}

/// The `OptionEntryRef` type acts as a lightweight Swift reference to an underlying `GOptionEntry` instance.
/// It exposes methods that can operate on this data type through `OptionEntryProtocol` conformance.
/// Use `OptionEntryRef` only as an `unowned` reference to an existing `GOptionEntry` instance.
///
/// A GOptionEntry struct defines a single option. To have an effect, they
/// must be added to a `GOptionGroup` with `g_option_context_add_main_entries()`
/// or `g_option_group_add_entries()`.
public struct OptionEntryRef: OptionEntryProtocol {
    /// Untyped pointer to the underlying `GOptionEntry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension OptionEntryRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GOptionEntry>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `OptionEntryProtocol`
    init<T: OptionEntryProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionEntryProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionEntryProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionEntryProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionEntryProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionEntryProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `OptionEntry` type acts as an owner of an underlying `GOptionEntry` instance.
/// It provides the methods that can operate on this data type through `OptionEntryProtocol` conformance.
/// Use `OptionEntry` as a strong reference or owner of a `GOptionEntry` instance.
///
/// A GOptionEntry struct defines a single option. To have an effect, they
/// must be added to a `GOptionGroup` with `g_option_context_add_main_entries()`
/// or `g_option_group_add_entries()`.
open class OptionEntry: OptionEntryProtocol {
    /// Untyped pointer to the underlying `GOptionEntry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OptionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GOptionEntry>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GOptionEntry` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `OptionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GOptionEntry>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GOptionEntry, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `OptionEntryProtocol`
    /// `GOptionEntry` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `OptionEntryProtocol`
    public init<T: OptionEntryProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GOptionEntry, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GOptionEntry`.
    deinit {
        // no reference counting for GOptionEntry, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionEntryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionEntryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GOptionEntry, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionEntryProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionEntryProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GOptionEntry, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionEntryProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionEntryProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GOptionEntry, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionEntryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionEntryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GOptionEntry, cannot ref(cast(_ptr))
    }



}

// MARK: - no OptionEntry properties

// MARK: - no signals


public extension OptionEntryProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GOptionEntry` instance.
    var _ptr: UnsafeMutablePointer<GOptionEntry> { return ptr.assumingMemoryBound(to: GOptionEntry.self) }

}



