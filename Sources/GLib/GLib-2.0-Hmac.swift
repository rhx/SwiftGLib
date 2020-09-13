import CGLib

// MARK: - Hmac Record

/// The `HmacProtocol` protocol exposes the methods and properties of an underlying `GHmac` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Hmac`.
/// Alternatively, use `HmacRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// An opaque structure representing a HMAC operation.
/// To create a new GHmac, use `g_hmac_new()`. To free
/// a GHmac, use `g_hmac_unref()`.
public protocol HmacProtocol {
        /// Untyped pointer to the underlying `GHmac` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GHmac` instance.
    var _ptr: UnsafeMutablePointer<GHmac>! { get }

}

/// The `HmacRef` type acts as a lightweight Swift reference to an underlying `GHmac` instance.
/// It exposes methods that can operate on this data type through `HmacProtocol` conformance.
/// Use `HmacRef` only as an `unowned` reference to an existing `GHmac` instance.
///
/// An opaque structure representing a HMAC operation.
/// To create a new GHmac, use `g_hmac_new()`. To free
/// a GHmac, use `g_hmac_unref()`.
public struct HmacRef: HmacProtocol {
        /// Untyped pointer to the underlying `GHmac` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension HmacRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GHmac>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GHmac>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GHmac>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GHmac>?) {
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

    /// Reference intialiser for a related type that implements `HmacProtocol`
    @inlinable init<T: HmacProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HmacProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HmacProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HmacProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HmacProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HmacProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Hmac` type acts as a reference-counted owner of an underlying `GHmac` instance.
/// It provides the methods that can operate on this data type through `HmacProtocol` conformance.
/// Use `Hmac` as a strong reference or owner of a `GHmac` instance.
///
/// An opaque structure representing a HMAC operation.
/// To create a new GHmac, use `g_hmac_new()`. To free
/// a GHmac, use `g_hmac_unref()`.
open class Hmac: HmacProtocol {
        /// Untyped pointer to the underlying `GHmac` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Hmac` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GHmac>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Hmac` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GHmac>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Hmac` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Hmac` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Hmac` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GHmac>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Hmac` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GHmac>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GHmac`.
    /// i.e., ownership is transferred to the `Hmac` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GHmac>) {
        ptr = UnsafeMutableRawPointer(op)
        g_hmac_ref(ptr.assumingMemoryBound(to: GHmac.self))
    }

    /// Reference intialiser for a related type that implements `HmacProtocol`
    /// Will retain `GHmac`.
    /// - Parameter other: an instance of a related type that implements `HmacProtocol`
    @inlinable public init<T: HmacProtocol>(_ other: T) {
        ptr = other.ptr
        g_hmac_ref(ptr.assumingMemoryBound(to: GHmac.self))
    }

    /// Releases the underlying `GHmac` instance using `g_hmac_unref`.
    deinit {
        g_hmac_unref(ptr.assumingMemoryBound(to: GHmac.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HmacProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HmacProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_hmac_ref(ptr.assumingMemoryBound(to: GHmac.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HmacProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HmacProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_hmac_ref(ptr.assumingMemoryBound(to: GHmac.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HmacProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HmacProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_hmac_ref(ptr.assumingMemoryBound(to: GHmac.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HmacProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HmacProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_hmac_ref(ptr.assumingMemoryBound(to: GHmac.self))
    }



}

// MARK: no Hmac properties

// MARK: no Hmac signals


// MARK: Hmac Record: HmacProtocol extension (methods and fields)
public extension HmacProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GHmac` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GHmac>! { return ptr?.assumingMemoryBound(to: GHmac.self) }

    /// Copies a `GHmac`. If `hmac` has been closed, by calling
    /// `g_hmac_get_string()` or `g_hmac_get_digest()`, the copied
    /// HMAC will be closed as well.
    @inlinable func copy() -> HmacRef! {
        guard let rv = HmacRef(gconstpointer: gconstpointer(g_hmac_copy(_ptr))) else { return nil }
        return rv
    }

    /// Gets the digest from `checksum` as a raw binary array and places it
    /// into `buffer`. The size of the digest depends on the type of checksum.
    /// 
    /// Once this function has been called, the `GHmac` is closed and can
    /// no longer be updated with `g_checksum_update()`.
    @inlinable func getDigest(buffer: UnsafeMutablePointer<guint8>!, digestLen: UnsafeMutablePointer<gsize>!) {
        g_hmac_get_digest(_ptr, buffer, digestLen)
    
    }

    /// Gets the HMAC as a hexadecimal string.
    /// 
    /// Once this function has been called the `GHmac` can no longer be
    /// updated with `g_hmac_update()`.
    /// 
    /// The hexadecimal characters will be lower case.
    @inlinable func getString() -> String! {
        let rv = g_hmac_get_string(_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Atomically increments the reference count of `hmac` by one.
    /// 
    /// This function is MT-safe and may be called from any thread.
    @discardableResult @inlinable func ref() -> HmacRef! {
        guard let rv = HmacRef(gconstpointer: gconstpointer(g_hmac_ref(_ptr))) else { return nil }
        return rv
    }

    /// Atomically decrements the reference count of `hmac` by one.
    /// 
    /// If the reference count drops to 0, all keys and values will be
    /// destroyed, and all memory allocated by the hash table is released.
    /// This function is MT-safe and may be called from any thread.
    /// Frees the memory allocated for `hmac`.
    @inlinable func unref() {
        g_hmac_unref(_ptr)
    
    }

    /// Feeds `data` into an existing `GHmac`.
    /// 
    /// The HMAC must still be open, that is `g_hmac_get_string()` or
    /// `g_hmac_get_digest()` must not have been called on `hmac`.
    @inlinable func update(data: UnsafePointer<guchar>!, length: gssize) {
        g_hmac_update(_ptr, data, length)
    
    }
    /// Gets the HMAC as a hexadecimal string.
    /// 
    /// Once this function has been called the `GHmac` can no longer be
    /// updated with `g_hmac_update()`.
    /// 
    /// The hexadecimal characters will be lower case.
    @inlinable var string: String! {
        /// Gets the HMAC as a hexadecimal string.
        /// 
        /// Once this function has been called the `GHmac` can no longer be
        /// updated with `g_hmac_update()`.
        /// 
        /// The hexadecimal characters will be lower case.
        get {
            let rv = g_hmac_get_string(_ptr).map({ String(cString: $0) })
            return rv
        }
    }


}



