import CGLib

// MARK: - Checksum Record

/// The `ChecksumProtocol` protocol exposes the methods and properties of an underlying `GChecksum` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Checksum`.
/// Alternatively, use `ChecksumRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// An opaque structure representing a checksumming operation.
/// To create a new GChecksum, use `g_checksum_new()`. To free
/// a GChecksum, use `g_checksum_free()`.
public protocol ChecksumProtocol {
        /// Untyped pointer to the underlying `GChecksum` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GChecksum` instance.
    var checksum_ptr: UnsafeMutablePointer<GChecksum>! { get }

}

/// The `ChecksumRef` type acts as a lightweight Swift reference to an underlying `GChecksum` instance.
/// It exposes methods that can operate on this data type through `ChecksumProtocol` conformance.
/// Use `ChecksumRef` only as an `unowned` reference to an existing `GChecksum` instance.
///
/// An opaque structure representing a checksumming operation.
/// To create a new GChecksum, use `g_checksum_new()`. To free
/// a GChecksum, use `g_checksum_free()`.
public struct ChecksumRef: ChecksumProtocol {
        /// Untyped pointer to the underlying `GChecksum` instance.
    /// For type-safe access, use the generated, typed pointer `checksum_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ChecksumRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GChecksum>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GChecksum>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GChecksum>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GChecksum>?) {
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

    /// Reference intialiser for a related type that implements `ChecksumProtocol`
    @inlinable init<T: ChecksumProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ChecksumProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ChecksumProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ChecksumProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ChecksumProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ChecksumProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GChecksum`, using the checksum algorithm `checksum_type`.
    /// If the `checksum_type` is not known, `nil` is returned.
    /// A `GChecksum` can be used to compute the checksum, or digest, of an
    /// arbitrary binary blob, using different hashing algorithms.
    /// 
    /// A `GChecksum` works by feeding a binary blob through `g_checksum_update()`
    /// until there is data to be checked; the digest can then be extracted
    /// using `g_checksum_get_string()`, which will return the checksum as a
    /// hexadecimal string; or `g_checksum_get_digest()`, which will return a
    /// vector of raw bytes. Once either `g_checksum_get_string()` or
    /// `g_checksum_get_digest()` have been called on a `GChecksum`, the checksum
    /// will be closed and it won't be possible to call `g_checksum_update()`
    /// on it anymore.
    @inlinable init( checksumType: GChecksumType) {
        let rv = g_checksum_new(checksumType)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `Checksum` type acts as an owner of an underlying `GChecksum` instance.
/// It provides the methods that can operate on this data type through `ChecksumProtocol` conformance.
/// Use `Checksum` as a strong reference or owner of a `GChecksum` instance.
///
/// An opaque structure representing a checksumming operation.
/// To create a new GChecksum, use `g_checksum_new()`. To free
/// a GChecksum, use `g_checksum_free()`.
open class Checksum: ChecksumProtocol {
        /// Untyped pointer to the underlying `GChecksum` instance.
    /// For type-safe access, use the generated, typed pointer `checksum_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Checksum` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GChecksum>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Checksum` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GChecksum>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Checksum` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Checksum` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Checksum` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GChecksum>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Checksum` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GChecksum>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GChecksum` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Checksum` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GChecksum>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GChecksum, cannot ref(checksum_ptr)
    }

    /// Reference intialiser for a related type that implements `ChecksumProtocol`
    /// `GChecksum` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ChecksumProtocol`
    @inlinable public init<T: ChecksumProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GChecksum, cannot ref(checksum_ptr)
    }

    /// Do-nothing destructor for `GChecksum`.
    deinit {
        // no reference counting for GChecksum, cannot unref(checksum_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ChecksumProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ChecksumProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GChecksum, cannot ref(checksum_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ChecksumProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ChecksumProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GChecksum, cannot ref(checksum_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ChecksumProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ChecksumProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GChecksum, cannot ref(checksum_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ChecksumProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ChecksumProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GChecksum, cannot ref(checksum_ptr)
    }

    /// Creates a new `GChecksum`, using the checksum algorithm `checksum_type`.
    /// If the `checksum_type` is not known, `nil` is returned.
    /// A `GChecksum` can be used to compute the checksum, or digest, of an
    /// arbitrary binary blob, using different hashing algorithms.
    /// 
    /// A `GChecksum` works by feeding a binary blob through `g_checksum_update()`
    /// until there is data to be checked; the digest can then be extracted
    /// using `g_checksum_get_string()`, which will return the checksum as a
    /// hexadecimal string; or `g_checksum_get_digest()`, which will return a
    /// vector of raw bytes. Once either `g_checksum_get_string()` or
    /// `g_checksum_get_digest()` have been called on a `GChecksum`, the checksum
    /// will be closed and it won't be possible to call `g_checksum_update()`
    /// on it anymore.
    @inlinable public init( checksumType: GChecksumType) {
        let rv = g_checksum_new(checksumType)
        ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no Checksum properties

// MARK: no Checksum signals


// MARK: Checksum Record: ChecksumProtocol extension (methods and fields)
public extension ChecksumProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GChecksum` instance.
    @inlinable var checksum_ptr: UnsafeMutablePointer<GChecksum>! { return ptr?.assumingMemoryBound(to: GChecksum.self) }

    /// Copies a `GChecksum`. If `checksum` has been closed, by calling
    /// `g_checksum_get_string()` or `g_checksum_get_digest()`, the copied
    /// checksum will be closed as well.
    @inlinable func copy() -> ChecksumRef! {
        guard let rv = ChecksumRef(gconstpointer: gconstpointer(g_checksum_copy(checksum_ptr))) else { return nil }
        return rv
    }

    /// Frees the memory allocated for `checksum`.
    @inlinable func free() {
        g_checksum_free(checksum_ptr)
    
    }

    /// Gets the digest from `checksum` as a raw binary vector and places it
    /// into `buffer`. The size of the digest depends on the type of checksum.
    /// 
    /// Once this function has been called, the `GChecksum` is closed and can
    /// no longer be updated with `g_checksum_update()`.
    @inlinable func getDigest(buffer: UnsafeMutablePointer<guint8>!, digestLen: UnsafeMutablePointer<gsize>!) {
        g_checksum_get_digest(checksum_ptr, buffer, digestLen)
    
    }

    /// Gets the digest as a hexadecimal string.
    /// 
    /// Once this function has been called the `GChecksum` can no longer be
    /// updated with `g_checksum_update()`.
    /// 
    /// The hexadecimal characters will be lower case.
    @inlinable func getString() -> String! {
        let rv = g_checksum_get_string(checksum_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Resets the state of the `checksum` back to its initial state.
    @inlinable func reset() {
        g_checksum_reset(checksum_ptr)
    
    }

    /// Feeds `data` into an existing `GChecksum`. The checksum must still be
    /// open, that is `g_checksum_get_string()` or `g_checksum_get_digest()` must
    /// not have been called on `checksum`.
    @inlinable func update(data: UnsafePointer<guchar>!, length: gssize) {
        g_checksum_update(checksum_ptr, data, length)
    
    }
    /// Gets the digest as a hexadecimal string.
    /// 
    /// Once this function has been called the `GChecksum` can no longer be
    /// updated with `g_checksum_update()`.
    /// 
    /// The hexadecimal characters will be lower case.
    @inlinable var string: String! {
        /// Gets the digest as a hexadecimal string.
        /// 
        /// Once this function has been called the `GChecksum` can no longer be
        /// updated with `g_checksum_update()`.
        /// 
        /// The hexadecimal characters will be lower case.
        get {
            let rv = g_checksum_get_string(checksum_ptr).map({ String(cString: $0) })
            return rv
        }
    }


}



