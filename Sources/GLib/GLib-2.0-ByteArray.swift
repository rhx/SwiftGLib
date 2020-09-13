import CGLib

// MARK: - ByteArray Record

/// The `ByteArrayProtocol` protocol exposes the methods and properties of an underlying `GByteArray` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ByteArray`.
/// Alternatively, use `ByteArrayRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Contains the public fields of a GByteArray.
public protocol ByteArrayProtocol {
        /// Untyped pointer to the underlying `GByteArray` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GByteArray` instance.
    var byte_array_ptr: UnsafeMutablePointer<GByteArray>! { get }

}

/// The `ByteArrayRef` type acts as a lightweight Swift reference to an underlying `GByteArray` instance.
/// It exposes methods that can operate on this data type through `ByteArrayProtocol` conformance.
/// Use `ByteArrayRef` only as an `unowned` reference to an existing `GByteArray` instance.
///
/// Contains the public fields of a GByteArray.
public struct ByteArrayRef: ByteArrayProtocol {
        /// Untyped pointer to the underlying `GByteArray` instance.
    /// For type-safe access, use the generated, typed pointer `byte_array_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ByteArrayRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GByteArray>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GByteArray>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GByteArray>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GByteArray>?) {
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

    /// Reference intialiser for a related type that implements `ByteArrayProtocol`
    @inlinable init<T: ByteArrayProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ByteArray` type acts as an owner of an underlying `GByteArray` instance.
/// It provides the methods that can operate on this data type through `ByteArrayProtocol` conformance.
/// Use `ByteArray` as a strong reference or owner of a `GByteArray` instance.
///
/// Contains the public fields of a GByteArray.
open class ByteArray: ByteArrayProtocol {
        /// Untyped pointer to the underlying `GByteArray` instance.
    /// For type-safe access, use the generated, typed pointer `byte_array_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ByteArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GByteArray>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ByteArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GByteArray>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ByteArray` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ByteArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ByteArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GByteArray>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ByteArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GByteArray>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GByteArray` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ByteArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GByteArray>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GByteArray, cannot ref(byte_array_ptr)
    }

    /// Reference intialiser for a related type that implements `ByteArrayProtocol`
    /// `GByteArray` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ByteArrayProtocol`
    @inlinable public init<T: ByteArrayProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GByteArray, cannot ref(byte_array_ptr)
    }

    /// Do-nothing destructor for `GByteArray`.
    deinit {
        // no reference counting for GByteArray, cannot unref(byte_array_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GByteArray, cannot ref(byte_array_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GByteArray, cannot ref(byte_array_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GByteArray, cannot ref(byte_array_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GByteArray, cannot ref(byte_array_ptr)
    }



}

// MARK: no ByteArray properties

// MARK: no ByteArray signals


// MARK: ByteArray Record: ByteArrayProtocol extension (methods and fields)
public extension ByteArrayProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GByteArray` instance.
    @inlinable var byte_array_ptr: UnsafeMutablePointer<GByteArray>! { return ptr?.assumingMemoryBound(to: GByteArray.self) }


    /// a pointer to the element data. The data may be moved as
    ///     elements are added to the `GByteArray`
    @inlinable var data: UnsafeMutablePointer<guint8>! {
        /// a pointer to the element data. The data may be moved as
        ///     elements are added to the `GByteArray`
        get {
            let rv = byte_array_ptr.pointee.data
            return rv
        }
        /// a pointer to the element data. The data may be moved as
        ///     elements are added to the `GByteArray`
         set {
            byte_array_ptr.pointee.data = newValue
        }
    }

    /// the number of elements in the `GByteArray`
    @inlinable var len: guint {
        /// the number of elements in the `GByteArray`
        get {
            let rv = byte_array_ptr.pointee.len
            return rv
        }
        /// the number of elements in the `GByteArray`
         set {
            byte_array_ptr.pointee.len = newValue
        }
    }

}



