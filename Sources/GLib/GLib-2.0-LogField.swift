import CGLib

// MARK: - LogField Record

/// The `LogFieldProtocol` protocol exposes the methods and properties of an underlying `GLogField` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LogField`.
/// Alternatively, use `LogFieldRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Structure representing a single field in a structured log entry. See
/// `g_log_structured()` for details.
/// 
/// Log fields may contain arbitrary values, including binary with embedded nul
/// bytes. If the field contains a string, the string must be UTF-8 encoded and
/// have a trailing nul byte. Otherwise, `length` must be set to a non-negative
/// value.
public protocol LogFieldProtocol {
        /// Untyped pointer to the underlying `GLogField` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GLogField` instance.
    var _ptr: UnsafeMutablePointer<GLogField>! { get }

}

/// The `LogFieldRef` type acts as a lightweight Swift reference to an underlying `GLogField` instance.
/// It exposes methods that can operate on this data type through `LogFieldProtocol` conformance.
/// Use `LogFieldRef` only as an `unowned` reference to an existing `GLogField` instance.
///
/// Structure representing a single field in a structured log entry. See
/// `g_log_structured()` for details.
/// 
/// Log fields may contain arbitrary values, including binary with embedded nul
/// bytes. If the field contains a string, the string must be UTF-8 encoded and
/// have a trailing nul byte. Otherwise, `length` must be set to a non-negative
/// value.
public struct LogFieldRef: LogFieldProtocol {
        /// Untyped pointer to the underlying `GLogField` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LogFieldRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GLogField>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GLogField>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GLogField>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GLogField>?) {
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

    /// Reference intialiser for a related type that implements `LogFieldProtocol`
    @inlinable init<T: LogFieldProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `LogField` type acts as an owner of an underlying `GLogField` instance.
/// It provides the methods that can operate on this data type through `LogFieldProtocol` conformance.
/// Use `LogField` as a strong reference or owner of a `GLogField` instance.
///
/// Structure representing a single field in a structured log entry. See
/// `g_log_structured()` for details.
/// 
/// Log fields may contain arbitrary values, including binary with embedded nul
/// bytes. If the field contains a string, the string must be UTF-8 encoded and
/// have a trailing nul byte. Otherwise, `length` must be set to a non-negative
/// value.
open class LogField: LogFieldProtocol {
        /// Untyped pointer to the underlying `GLogField` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LogField` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GLogField>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LogField` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GLogField>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LogField` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LogField` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LogField` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GLogField>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LogField` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GLogField>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GLogField` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `LogField` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GLogField>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GLogField, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `LogFieldProtocol`
    /// `GLogField` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `LogFieldProtocol`
    @inlinable public init<T: LogFieldProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GLogField, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GLogField`.
    deinit {
        // no reference counting for GLogField, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GLogField, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GLogField, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GLogField, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GLogField, cannot ref(_ptr)
    }



}

// MARK: no LogField properties

// MARK: no LogField signals


// MARK: LogField Record: LogFieldProtocol extension (methods and fields)
public extension LogFieldProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GLogField` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GLogField>! { return ptr?.assumingMemoryBound(to: GLogField.self) }


    /// field name (UTF-8 string)
    @inlinable var key: UnsafePointer<gchar>! {
        /// field name (UTF-8 string)
        get {
            let rv = _ptr.pointee.key
            return rv
        }
        /// field name (UTF-8 string)
         set {
            _ptr.pointee.key = newValue
        }
    }

    /// field value (arbitrary bytes)
    @inlinable var value: gconstpointer! {
        /// field value (arbitrary bytes)
        get {
            let rv = _ptr.pointee.value
            return rv
        }
        /// field value (arbitrary bytes)
         set {
            _ptr.pointee.value = newValue
        }
    }

    /// length of `value`, in bytes, or -1 if it is nul-terminated
    @inlinable var length: gssize {
        /// length of `value`, in bytes, or -1 if it is nul-terminated
        get {
            let rv = _ptr.pointee.length
            return rv
        }
        /// length of `value`, in bytes, or -1 if it is nul-terminated
         set {
            _ptr.pointee.length = newValue
        }
    }

}



