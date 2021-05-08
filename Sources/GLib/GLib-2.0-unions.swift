import CGLib

// MARK: - DoubleIEEE754 Union

/// The `DoubleIEEE754Protocol` protocol exposes the methods and properties of an underlying `GDoubleIEEE754` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DoubleIEEE754`.
/// Alternatively, use `DoubleIEEE754Ref` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GFloatIEEE754` and `GDoubleIEEE754` unions are used to access the sign,
/// mantissa and exponent of IEEE floats and doubles. These unions are defined
/// as appropriate for a given platform. IEEE floats and doubles are supported
/// (used for storage) by at least Intel, PPC and Sparc.
public protocol DoubleIEEE754Protocol {
    typealias Mpn = GDoubleIEEE754.__Unnamed_struct_mpn
    /// Untyped pointer to the underlying `GDoubleIEEE754` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDoubleIEEE754` instance.
    var _ptr: UnsafeMutablePointer<GDoubleIEEE754>! { get }

    /// Required Initialiser for types conforming to `DoubleIEEE754Protocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `DoubleIEEE754Ref` type acts as a lightweight Swift reference to an underlying `GDoubleIEEE754` instance.
/// It exposes methods that can operate on this data type through `DoubleIEEE754Protocol` conformance.
/// Use `DoubleIEEE754Ref` only as an `unowned` reference to an existing `GDoubleIEEE754` instance.
///
/// The `GFloatIEEE754` and `GDoubleIEEE754` unions are used to access the sign,
/// mantissa and exponent of IEEE floats and doubles. These unions are defined
/// as appropriate for a given platform. IEEE floats and doubles are supported
/// (used for storage) by at least Intel, PPC and Sparc.
public struct DoubleIEEE754Ref: DoubleIEEE754Protocol {
    typealias Mpn = GDoubleIEEE754.__Unnamed_struct_mpn
    /// Untyped pointer to the underlying `GDoubleIEEE754` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DoubleIEEE754Ref {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDoubleIEEE754>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDoubleIEEE754>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDoubleIEEE754>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDoubleIEEE754>?) {
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

    /// Reference intialiser for a related type that implements `DoubleIEEE754Protocol`
    @inlinable init<T: DoubleIEEE754Protocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DoubleIEEE754Protocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DoubleIEEE754Protocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DoubleIEEE754Protocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DoubleIEEE754Protocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DoubleIEEE754Protocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DoubleIEEE754` type acts as an owner of an underlying `GDoubleIEEE754` instance.
/// It provides the methods that can operate on this data type through `DoubleIEEE754Protocol` conformance.
/// Use `DoubleIEEE754` as a strong reference or owner of a `GDoubleIEEE754` instance.
///
/// The `GFloatIEEE754` and `GDoubleIEEE754` unions are used to access the sign,
/// mantissa and exponent of IEEE floats and doubles. These unions are defined
/// as appropriate for a given platform. IEEE floats and doubles are supported
/// (used for storage) by at least Intel, PPC and Sparc.
open class DoubleIEEE754: DoubleIEEE754Protocol {
    public typealias Mpn = GDoubleIEEE754.__Unnamed_struct_mpn
    /// Untyped pointer to the underlying `GDoubleIEEE754` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DoubleIEEE754` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GDoubleIEEE754>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DoubleIEEE754` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GDoubleIEEE754>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DoubleIEEE754` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DoubleIEEE754` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DoubleIEEE754` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GDoubleIEEE754>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DoubleIEEE754` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GDoubleIEEE754>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GDoubleIEEE754` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `DoubleIEEE754` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GDoubleIEEE754>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GDoubleIEEE754, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `DoubleIEEE754Protocol`
    /// `GDoubleIEEE754` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `DoubleIEEE754Protocol`
    @inlinable public init<T: DoubleIEEE754Protocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GDoubleIEEE754, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GDoubleIEEE754`.
    deinit {
        // no reference counting for GDoubleIEEE754, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DoubleIEEE754Protocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DoubleIEEE754Protocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GDoubleIEEE754, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DoubleIEEE754Protocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DoubleIEEE754Protocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GDoubleIEEE754, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DoubleIEEE754Protocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DoubleIEEE754Protocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GDoubleIEEE754, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DoubleIEEE754Protocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DoubleIEEE754Protocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GDoubleIEEE754, cannot ref(_ptr)
    }



}

// MARK: no DoubleIEEE754 properties

// MARK: no DoubleIEEE754 signals

// MARK: DoubleIEEE754 has no signals
// MARK: DoubleIEEE754 Union: DoubleIEEE754Protocol extension (methods and fields)
public extension DoubleIEEE754Protocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDoubleIEEE754` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GDoubleIEEE754>! { return ptr?.assumingMemoryBound(to: GDoubleIEEE754.self) }


    /// the double value
    @inlinable var vDouble: gdouble {
        /// the double value
        get {
            let rv = _ptr.pointee.v_double
            return rv
        }
        /// the double value
         set {
            _ptr.pointee.v_double = newValue
        }
    }

    @inlinable var mpn: Mpn {
        get { _ptr.pointee.mpn }
        set { _ptr.pointee.mpn = newValue }
    }

}



// MARK: - FloatIEEE754 Union

/// The `FloatIEEE754Protocol` protocol exposes the methods and properties of an underlying `GFloatIEEE754` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FloatIEEE754`.
/// Alternatively, use `FloatIEEE754Ref` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GFloatIEEE754` and `GDoubleIEEE754` unions are used to access the sign,
/// mantissa and exponent of IEEE floats and doubles. These unions are defined
/// as appropriate for a given platform. IEEE floats and doubles are supported
/// (used for storage) by at least Intel, PPC and Sparc.
public protocol FloatIEEE754Protocol {
    typealias Mpn = GFloatIEEE754.__Unnamed_struct_mpn
    /// Untyped pointer to the underlying `GFloatIEEE754` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GFloatIEEE754` instance.
    var _ptr: UnsafeMutablePointer<GFloatIEEE754>! { get }

    /// Required Initialiser for types conforming to `FloatIEEE754Protocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `FloatIEEE754Ref` type acts as a lightweight Swift reference to an underlying `GFloatIEEE754` instance.
/// It exposes methods that can operate on this data type through `FloatIEEE754Protocol` conformance.
/// Use `FloatIEEE754Ref` only as an `unowned` reference to an existing `GFloatIEEE754` instance.
///
/// The `GFloatIEEE754` and `GDoubleIEEE754` unions are used to access the sign,
/// mantissa and exponent of IEEE floats and doubles. These unions are defined
/// as appropriate for a given platform. IEEE floats and doubles are supported
/// (used for storage) by at least Intel, PPC and Sparc.
public struct FloatIEEE754Ref: FloatIEEE754Protocol {
    typealias Mpn = GFloatIEEE754.__Unnamed_struct_mpn
    /// Untyped pointer to the underlying `GFloatIEEE754` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FloatIEEE754Ref {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GFloatIEEE754>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GFloatIEEE754>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GFloatIEEE754>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GFloatIEEE754>?) {
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

    /// Reference intialiser for a related type that implements `FloatIEEE754Protocol`
    @inlinable init<T: FloatIEEE754Protocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FloatIEEE754Protocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FloatIEEE754Protocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FloatIEEE754Protocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FloatIEEE754Protocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FloatIEEE754Protocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FloatIEEE754` type acts as an owner of an underlying `GFloatIEEE754` instance.
/// It provides the methods that can operate on this data type through `FloatIEEE754Protocol` conformance.
/// Use `FloatIEEE754` as a strong reference or owner of a `GFloatIEEE754` instance.
///
/// The `GFloatIEEE754` and `GDoubleIEEE754` unions are used to access the sign,
/// mantissa and exponent of IEEE floats and doubles. These unions are defined
/// as appropriate for a given platform. IEEE floats and doubles are supported
/// (used for storage) by at least Intel, PPC and Sparc.
open class FloatIEEE754: FloatIEEE754Protocol {
    public typealias Mpn = GFloatIEEE754.__Unnamed_struct_mpn
    /// Untyped pointer to the underlying `GFloatIEEE754` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FloatIEEE754` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GFloatIEEE754>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FloatIEEE754` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GFloatIEEE754>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FloatIEEE754` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FloatIEEE754` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FloatIEEE754` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GFloatIEEE754>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FloatIEEE754` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GFloatIEEE754>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GFloatIEEE754` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FloatIEEE754` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GFloatIEEE754>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GFloatIEEE754, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `FloatIEEE754Protocol`
    /// `GFloatIEEE754` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FloatIEEE754Protocol`
    @inlinable public init<T: FloatIEEE754Protocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GFloatIEEE754, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GFloatIEEE754`.
    deinit {
        // no reference counting for GFloatIEEE754, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FloatIEEE754Protocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FloatIEEE754Protocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GFloatIEEE754, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FloatIEEE754Protocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FloatIEEE754Protocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GFloatIEEE754, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FloatIEEE754Protocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FloatIEEE754Protocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GFloatIEEE754, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FloatIEEE754Protocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FloatIEEE754Protocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GFloatIEEE754, cannot ref(_ptr)
    }



}

// MARK: no FloatIEEE754 properties

// MARK: no FloatIEEE754 signals

// MARK: FloatIEEE754 has no signals
// MARK: FloatIEEE754 Union: FloatIEEE754Protocol extension (methods and fields)
public extension FloatIEEE754Protocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFloatIEEE754` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GFloatIEEE754>! { return ptr?.assumingMemoryBound(to: GFloatIEEE754.self) }


    /// the double value
    @inlinable var vFloat: gfloat {
        /// the double value
        get {
            let rv = _ptr.pointee.v_float
            return rv
        }
        /// the double value
         set {
            _ptr.pointee.v_float = newValue
        }
    }

    @inlinable var mpn: Mpn {
        get { _ptr.pointee.mpn }
        set { _ptr.pointee.mpn = newValue }
    }

}



// MARK: - Mutex Union

/// The `MutexProtocol` protocol exposes the methods and properties of an underlying `GMutex` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Mutex`.
/// Alternatively, use `MutexRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GMutex` struct is an opaque data structure to represent a mutex
/// (mutual exclusion). It can be used to protect data against shared
/// access.
/// 
/// Take for example the following function:
/// (C Language Example):
/// ```C
///   int
///   give_me_next_number (void)
///   {
///     static int current_number = 0;
/// 
///     // now do a very complicated calculation to calculate the new
///     // number, this might for example be a random number generator
///     current_number = calc_next_number (current_number);
/// 
///     return current_number;
///   }
/// ```
/// It is easy to see that this won't work in a multi-threaded
/// application. There current_number must be protected against shared
/// access. A `GMutex` can be used as a solution to this problem:
/// (C Language Example):
/// ```C
///   int
///   give_me_next_number (void)
///   {
///     static GMutex mutex;
///     static int current_number = 0;
///     int ret_val;
/// 
///     g_mutex_lock (&mutex);
///     ret_val = current_number = calc_next_number (current_number);
///     g_mutex_unlock (&mutex);
/// 
///     return ret_val;
///   }
/// ```
/// Notice that the `GMutex` is not initialised to any particular value.
/// Its placement in static storage ensures that it will be initialised
/// to all-zeros, which is appropriate.
/// 
/// If a `GMutex` is placed in other contexts (eg: embedded in a struct)
/// then it must be explicitly initialised using `g_mutex_init()`.
/// 
/// A `GMutex` should only be accessed via g_mutex_ functions.
public protocol MutexProtocol {
        /// Untyped pointer to the underlying `GMutex` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GMutex` instance.
    var _ptr: UnsafeMutablePointer<GMutex>! { get }

    /// Required Initialiser for types conforming to `MutexProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `MutexRef` type acts as a lightweight Swift reference to an underlying `GMutex` instance.
/// It exposes methods that can operate on this data type through `MutexProtocol` conformance.
/// Use `MutexRef` only as an `unowned` reference to an existing `GMutex` instance.
///
/// The `GMutex` struct is an opaque data structure to represent a mutex
/// (mutual exclusion). It can be used to protect data against shared
/// access.
/// 
/// Take for example the following function:
/// (C Language Example):
/// ```C
///   int
///   give_me_next_number (void)
///   {
///     static int current_number = 0;
/// 
///     // now do a very complicated calculation to calculate the new
///     // number, this might for example be a random number generator
///     current_number = calc_next_number (current_number);
/// 
///     return current_number;
///   }
/// ```
/// It is easy to see that this won't work in a multi-threaded
/// application. There current_number must be protected against shared
/// access. A `GMutex` can be used as a solution to this problem:
/// (C Language Example):
/// ```C
///   int
///   give_me_next_number (void)
///   {
///     static GMutex mutex;
///     static int current_number = 0;
///     int ret_val;
/// 
///     g_mutex_lock (&mutex);
///     ret_val = current_number = calc_next_number (current_number);
///     g_mutex_unlock (&mutex);
/// 
///     return ret_val;
///   }
/// ```
/// Notice that the `GMutex` is not initialised to any particular value.
/// Its placement in static storage ensures that it will be initialised
/// to all-zeros, which is appropriate.
/// 
/// If a `GMutex` is placed in other contexts (eg: embedded in a struct)
/// then it must be explicitly initialised using `g_mutex_init()`.
/// 
/// A `GMutex` should only be accessed via g_mutex_ functions.
public struct MutexRef: MutexProtocol {
        /// Untyped pointer to the underlying `GMutex` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MutexRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GMutex>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GMutex>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GMutex>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GMutex>?) {
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

    /// Reference intialiser for a related type that implements `MutexProtocol`
    @inlinable init<T: MutexProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MutexProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MutexProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MutexProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MutexProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MutexProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Mutex` type acts as an owner of an underlying `GMutex` instance.
/// It provides the methods that can operate on this data type through `MutexProtocol` conformance.
/// Use `Mutex` as a strong reference or owner of a `GMutex` instance.
///
/// The `GMutex` struct is an opaque data structure to represent a mutex
/// (mutual exclusion). It can be used to protect data against shared
/// access.
/// 
/// Take for example the following function:
/// (C Language Example):
/// ```C
///   int
///   give_me_next_number (void)
///   {
///     static int current_number = 0;
/// 
///     // now do a very complicated calculation to calculate the new
///     // number, this might for example be a random number generator
///     current_number = calc_next_number (current_number);
/// 
///     return current_number;
///   }
/// ```
/// It is easy to see that this won't work in a multi-threaded
/// application. There current_number must be protected against shared
/// access. A `GMutex` can be used as a solution to this problem:
/// (C Language Example):
/// ```C
///   int
///   give_me_next_number (void)
///   {
///     static GMutex mutex;
///     static int current_number = 0;
///     int ret_val;
/// 
///     g_mutex_lock (&mutex);
///     ret_val = current_number = calc_next_number (current_number);
///     g_mutex_unlock (&mutex);
/// 
///     return ret_val;
///   }
/// ```
/// Notice that the `GMutex` is not initialised to any particular value.
/// Its placement in static storage ensures that it will be initialised
/// to all-zeros, which is appropriate.
/// 
/// If a `GMutex` is placed in other contexts (eg: embedded in a struct)
/// then it must be explicitly initialised using `g_mutex_init()`.
/// 
/// A `GMutex` should only be accessed via g_mutex_ functions.
open class Mutex: MutexProtocol {
        /// Untyped pointer to the underlying `GMutex` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Mutex` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GMutex>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Mutex` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GMutex>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Mutex` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Mutex` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Mutex` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GMutex>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Mutex` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GMutex>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GMutex` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Mutex` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GMutex>) {
        ptr = UnsafeMutableRawPointer(op)
        g_mutex_init(_ptr)
    }

    /// Reference intialiser for a related type that implements `MutexProtocol`
    /// `GMutex` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `MutexProtocol`
    @inlinable public init<T: MutexProtocol>(_ other: T) {
        ptr = other.ptr
        g_mutex_init(_ptr)
    }

    /// `GMutex` destructor.  **Please note that deinitialising a locked mutex leads to undefined behaviour!**
    deinit {
        g_mutex_clear(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MutexProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MutexProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_mutex_init(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MutexProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MutexProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_mutex_init(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MutexProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MutexProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_mutex_init(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MutexProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MutexProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_mutex_init(_ptr)
    }



}

// MARK: no Mutex properties

// MARK: no Mutex signals

// MARK: Mutex has no signals
// MARK: Mutex Union: MutexProtocol extension (methods and fields)
public extension MutexProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMutex` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GMutex>! { return ptr?.assumingMemoryBound(to: GMutex.self) }

    /// Frees the resources allocated to a mutex with `g_mutex_init()`.
    /// 
    /// This function should not be used with a `GMutex` that has been
    /// statically allocated.
    /// 
    /// Calling `g_mutex_clear()` on a locked mutex leads to undefined
    /// behaviour.
    /// 
    /// Sine: 2.32
    @inlinable func clear() {
        g_mutex_clear(_ptr)
    
    }

    /// Initializes a `GMutex` so that it can be used.
    /// 
    /// This function is useful to initialize a mutex that has been
    /// allocated on the stack, or as part of a larger structure.
    /// It is not necessary to initialize a mutex that has been
    /// statically allocated.
    /// 
    /// (C Language Example):
    /// ```C
    ///   typedef struct {
    ///     GMutex m;
    ///     ...
    ///   } Blob;
    /// 
    /// Blob *b;
    /// 
    /// b = g_new (Blob, 1);
    /// g_mutex_init (&b->m);
    /// ```
    /// 
    /// To undo the effect of `g_mutex_init()` when a mutex is no longer
    /// needed, use `g_mutex_clear()`.
    /// 
    /// Calling `g_mutex_init()` on an already initialized `GMutex` leads
    /// to undefined behaviour.
    @inlinable func init_() {
        g_mutex_init(_ptr)
    
    }

    /// Locks `mutex`. If `mutex` is already locked by another thread, the
    /// current thread will block until `mutex` is unlocked by the other
    /// thread.
    /// 
    /// `GMutex` is neither guaranteed to be recursive nor to be
    /// non-recursive.  As such, calling `g_mutex_lock()` on a `GMutex` that has
    /// already been locked by the same thread results in undefined behaviour
    /// (including but not limited to deadlocks).
    @inlinable func lock() {
        g_mutex_lock(_ptr)
    
    }

    /// Tries to lock `mutex`. If `mutex` is already locked by another thread,
    /// it immediately returns `false`. Otherwise it locks `mutex` and returns
    /// `true`.
    /// 
    /// `GMutex` is neither guaranteed to be recursive nor to be
    /// non-recursive.  As such, calling `g_mutex_lock()` on a `GMutex` that has
    /// already been locked by the same thread results in undefined behaviour
    /// (including but not limited to deadlocks or arbitrary return values).
    @inlinable func trylock() -> Bool {
        let rv = ((g_mutex_trylock(_ptr)) != 0)
        return rv
    }

    /// Unlocks `mutex`. If another thread is blocked in a `g_mutex_lock()`
    /// call for `mutex`, it will become unblocked and can lock `mutex` itself.
    /// 
    /// Calling `g_mutex_unlock()` on a mutex that is not locked by the
    /// current thread leads to undefined behaviour.
    @inlinable func unlock() {
        g_mutex_unlock(_ptr)
    
    }

    // var p is unavailable because p is private

    // var i is unavailable because i is private

}



// MARK: - TokenValue Union

/// The `TokenValueProtocol` protocol exposes the methods and properties of an underlying `GTokenValue` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TokenValue`.
/// Alternatively, use `TokenValueRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A union holding the value of the token.
public protocol TokenValueProtocol {
        /// Untyped pointer to the underlying `GTokenValue` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTokenValue` instance.
    var _ptr: UnsafeMutablePointer<GTokenValue>! { get }

    /// Required Initialiser for types conforming to `TokenValueProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `TokenValueRef` type acts as a lightweight Swift reference to an underlying `GTokenValue` instance.
/// It exposes methods that can operate on this data type through `TokenValueProtocol` conformance.
/// Use `TokenValueRef` only as an `unowned` reference to an existing `GTokenValue` instance.
///
/// A union holding the value of the token.
public struct TokenValueRef: TokenValueProtocol {
        /// Untyped pointer to the underlying `GTokenValue` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TokenValueRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTokenValue>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTokenValue>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTokenValue>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTokenValue>?) {
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

    /// Reference intialiser for a related type that implements `TokenValueProtocol`
    @inlinable init<T: TokenValueProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TokenValueProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TokenValueProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TokenValueProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TokenValueProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TokenValueProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TokenValue` type acts as an owner of an underlying `GTokenValue` instance.
/// It provides the methods that can operate on this data type through `TokenValueProtocol` conformance.
/// Use `TokenValue` as a strong reference or owner of a `GTokenValue` instance.
///
/// A union holding the value of the token.
open class TokenValue: TokenValueProtocol {
        /// Untyped pointer to the underlying `GTokenValue` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TokenValue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTokenValue>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TokenValue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTokenValue>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TokenValue` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TokenValue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TokenValue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTokenValue>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TokenValue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTokenValue>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTokenValue` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TokenValue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTokenValue>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTokenValue, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TokenValueProtocol`
    /// `GTokenValue` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TokenValueProtocol`
    @inlinable public init<T: TokenValueProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GTokenValue, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GTokenValue`.
    deinit {
        // no reference counting for GTokenValue, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TokenValueProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TokenValueProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTokenValue, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TokenValueProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TokenValueProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTokenValue, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TokenValueProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TokenValueProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTokenValue, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TokenValueProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TokenValueProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTokenValue, cannot ref(_ptr)
    }



}

// MARK: no TokenValue properties

// MARK: no TokenValue signals

// MARK: TokenValue has no signals
// MARK: TokenValue Union: TokenValueProtocol extension (methods and fields)
public extension TokenValueProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTokenValue` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTokenValue>! { return ptr?.assumingMemoryBound(to: GTokenValue.self) }


    /// token symbol value
    @inlinable var vSymbol: gpointer! {
        /// token symbol value
        get {
            let rv = _ptr.pointee.v_symbol
            return rv
        }
        /// token symbol value
         set {
            _ptr.pointee.v_symbol = newValue
        }
    }

    /// token identifier value
    @inlinable var vIDentifier: UnsafeMutablePointer<gchar>! {
        /// token identifier value
        get {
            let rv = _ptr.pointee.v_identifier
            return rv
        }
        /// token identifier value
         set {
            _ptr.pointee.v_identifier = newValue
        }
    }

    /// token binary integer value
    @inlinable var vBinary: gulong {
        /// token binary integer value
        get {
            let rv = _ptr.pointee.v_binary
            return rv
        }
        /// token binary integer value
         set {
            _ptr.pointee.v_binary = newValue
        }
    }

    /// octal integer value
    @inlinable var vOctal: gulong {
        /// octal integer value
        get {
            let rv = _ptr.pointee.v_octal
            return rv
        }
        /// octal integer value
         set {
            _ptr.pointee.v_octal = newValue
        }
    }

    /// integer value
    @inlinable var vInt: gulong {
        /// integer value
        get {
            let rv = _ptr.pointee.v_int
            return rv
        }
        /// integer value
         set {
            _ptr.pointee.v_int = newValue
        }
    }

    /// 64-bit integer value
    @inlinable var vInt64: guint64 {
        /// 64-bit integer value
        get {
            let rv = _ptr.pointee.v_int64
            return rv
        }
        /// 64-bit integer value
         set {
            _ptr.pointee.v_int64 = newValue
        }
    }

    /// floating point value
    @inlinable var vFloat: gdouble {
        /// floating point value
        get {
            let rv = _ptr.pointee.v_float
            return rv
        }
        /// floating point value
         set {
            _ptr.pointee.v_float = newValue
        }
    }

    /// hex integer value
    @inlinable var vHex: gulong {
        /// hex integer value
        get {
            let rv = _ptr.pointee.v_hex
            return rv
        }
        /// hex integer value
         set {
            _ptr.pointee.v_hex = newValue
        }
    }

    /// string value
    @inlinable var vString: UnsafeMutablePointer<gchar>! {
        /// string value
        get {
            let rv = _ptr.pointee.v_string
            return rv
        }
        /// string value
         set {
            _ptr.pointee.v_string = newValue
        }
    }

    /// comment value
    @inlinable var vComment: UnsafeMutablePointer<gchar>! {
        /// comment value
        get {
            let rv = _ptr.pointee.v_comment
            return rv
        }
        /// comment value
         set {
            _ptr.pointee.v_comment = newValue
        }
    }

    /// character value
    @inlinable var vChar: guchar {
        /// character value
        get {
            let rv = _ptr.pointee.v_char
            return rv
        }
        /// character value
         set {
            _ptr.pointee.v_char = newValue
        }
    }

    /// error value
    @inlinable var vError: guint {
        /// error value
        get {
            let rv = _ptr.pointee.v_error
            return rv
        }
        /// error value
         set {
            _ptr.pointee.v_error = newValue
        }
    }

}

