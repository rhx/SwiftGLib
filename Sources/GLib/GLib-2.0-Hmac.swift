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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GHmac` instance.
    var _ptr: UnsafeMutablePointer<GHmac> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension HmacRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GHmac>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `HmacProtocol`
    init<T: HmacProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HmacProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HmacProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HmacProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HmacProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HmacProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Hmac` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GHmac>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GHmac`.
    /// i.e., ownership is transferred to the `Hmac` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GHmac>) {
        ptr = UnsafeMutableRawPointer(op)
        g_hmac_ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `HmacProtocol`
    /// Will retain `GHmac`.
    /// - Parameter other: an instance of a related type that implements `HmacProtocol`
    public init<T: HmacProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        g_hmac_ref(cast(_ptr))
    }

    /// Releases the underlying `GHmac` instance using `g_hmac_unref`.
    deinit {
        g_hmac_unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HmacProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HmacProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_hmac_ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HmacProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HmacProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_hmac_ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HmacProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HmacProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_hmac_ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HmacProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HmacProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_hmac_ref(cast(_ptr))
    }



}

// MARK: - no Hmac properties

// MARK: - no signals


public extension HmacProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GHmac` instance.
    var _ptr: UnsafeMutablePointer<GHmac> { return ptr.assumingMemoryBound(to: GHmac.self) }

    /// Copies a `GHmac`. If `hmac` has been closed, by calling
    /// `g_hmac_get_string()` or `g_hmac_get_digest()`, the copied
    /// HMAC will be closed as well.
    func copy() -> UnsafeMutablePointer<GHmac>! {
        let rv = g_hmac_copy(cast(_ptr))
        return cast(rv)
    }

    /// Gets the digest from `checksum` as a raw binary array and places it
    /// into `buffer`. The size of the digest depends on the type of checksum.
    /// 
    /// Once this function has been called, the `GHmac` is closed and can
    /// no longer be updated with `g_checksum_update()`.
    func getDigest(buffer: UnsafeMutablePointer<UInt8>, digestLen digest_len: UnsafeMutablePointer<Int>) {
        g_hmac_get_digest(cast(_ptr), cast(buffer), cast(digest_len))
    
    }

    /// Gets the HMAC as a hexadecimal string.
    /// 
    /// Once this function has been called the `GHmac` can no longer be
    /// updated with `g_hmac_update()`.
    /// 
    /// The hexadecimal characters will be lower case.
    func getString() -> String! {
        let rv = g_hmac_get_string(cast(_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Atomically increments the reference count of `hmac` by one.
    /// 
    /// This function is MT-safe and may be called from any thread.
    func ref() -> UnsafeMutablePointer<GHmac>! {
        let rv = g_hmac_ref(cast(_ptr))
        return cast(rv)
    }

    /// Atomically decrements the reference count of `hmac` by one.
    /// 
    /// If the reference count drops to 0, all keys and values will be
    /// destroyed, and all memory allocated by the hash table is released.
    /// This function is MT-safe and may be called from any thread.
    /// Frees the memory allocated for `hmac`.
    func unref() {
        g_hmac_unref(cast(_ptr))
    
    }

    /// Feeds `data` into an existing `GHmac`.
    /// 
    /// The HMAC must still be open, that is `g_hmac_get_string()` or
    /// `g_hmac_get_digest()` must not have been called on `hmac`.
    func update(data: UnsafePointer<guchar>, length: gssize) {
        g_hmac_update(cast(_ptr), cast(data), length)
    
    }
    /// Gets the HMAC as a hexadecimal string.
    /// 
    /// Once this function has been called the `GHmac` can no longer be
    /// updated with `g_hmac_update()`.
    /// 
    /// The hexadecimal characters will be lower case.
    var string: String! {
        /// Gets the HMAC as a hexadecimal string.
        /// 
        /// Once this function has been called the `GHmac` can no longer be
        /// updated with `g_hmac_update()`.
        /// 
        /// The hexadecimal characters will be lower case.
        get {
            let rv = g_hmac_get_string(cast(_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }
}



