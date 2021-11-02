import CGLib

// MARK: - ByteArray Record

/// Contains the public fields of a GByteArray.
///
/// The `ByteArrayProtocol` protocol exposes the methods and properties of an underlying `GByteArray` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ByteArray`.
/// Alternatively, use `ByteArrayRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ByteArrayProtocol {
        /// Untyped pointer to the underlying `GByteArray` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GByteArray` instance.
    var byte_array_ptr: UnsafeMutablePointer<GByteArray>! { get }

    /// Required Initialiser for types conforming to `ByteArrayProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Contains the public fields of a GByteArray.
///
/// The `ByteArrayRef` type acts as a lightweight Swift reference to an underlying `GByteArray` instance.
/// It exposes methods that can operate on this data type through `ByteArrayProtocol` conformance.
/// Use `ByteArrayRef` only as an `unowned` reference to an existing `GByteArray` instance.
///
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

/// Contains the public fields of a GByteArray.
///
/// The `ByteArray` type acts as an owner of an underlying `GByteArray` instance.
/// It provides the methods that can operate on this data type through `ByteArrayProtocol` conformance.
/// Use `ByteArray` as a strong reference or owner of a `GByteArray` instance.
///
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
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

// MARK: ByteArray has no signals
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



// MARK: - Bytes Record

/// A simple refcounted data type representing an immutable sequence of zero or
/// more bytes from an unspecified origin.
/// 
/// The purpose of a `GBytes` is to keep the memory region that it holds
/// alive for as long as anyone holds a reference to the bytes.  When
/// the last reference count is dropped, the memory is released. Multiple
/// unrelated callers can use byte data in the `GBytes` without coordinating
/// their activities, resting assured that the byte data will not change or
/// move while they hold a reference.
/// 
/// A `GBytes` can come from many different origins that may have
/// different procedures for freeing the memory region.  Examples are
/// memory from `g_malloc()`, from memory slices, from a `GMappedFile` or
/// memory from other allocators.
/// 
/// `GBytes` work well as keys in `GHashTable`. Use `g_bytes_equal()` and
/// `g_bytes_hash()` as parameters to `g_hash_table_new()` or `g_hash_table_new_full()`.
/// `GBytes` can also be used as keys in a `GTree` by passing the `g_bytes_compare()`
/// function to `g_tree_new()`.
/// 
/// The data pointed to by this bytes must not be modified. For a mutable
/// array of bytes see `GByteArray`. Use `g_bytes_unref_to_array()` to create a
/// mutable array for a `GBytes` sequence. To create an immutable `GBytes` from
/// a mutable `GByteArray`, use the `g_byte_array_free_to_bytes()` function.
///
/// The `BytesProtocol` protocol exposes the methods and properties of an underlying `GBytes` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Bytes`.
/// Alternatively, use `BytesRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol BytesProtocol {
        /// Untyped pointer to the underlying `GBytes` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GBytes` instance.
    var bytes_ptr: UnsafeMutablePointer<GBytes>! { get }

    /// Required Initialiser for types conforming to `BytesProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A simple refcounted data type representing an immutable sequence of zero or
/// more bytes from an unspecified origin.
/// 
/// The purpose of a `GBytes` is to keep the memory region that it holds
/// alive for as long as anyone holds a reference to the bytes.  When
/// the last reference count is dropped, the memory is released. Multiple
/// unrelated callers can use byte data in the `GBytes` without coordinating
/// their activities, resting assured that the byte data will not change or
/// move while they hold a reference.
/// 
/// A `GBytes` can come from many different origins that may have
/// different procedures for freeing the memory region.  Examples are
/// memory from `g_malloc()`, from memory slices, from a `GMappedFile` or
/// memory from other allocators.
/// 
/// `GBytes` work well as keys in `GHashTable`. Use `g_bytes_equal()` and
/// `g_bytes_hash()` as parameters to `g_hash_table_new()` or `g_hash_table_new_full()`.
/// `GBytes` can also be used as keys in a `GTree` by passing the `g_bytes_compare()`
/// function to `g_tree_new()`.
/// 
/// The data pointed to by this bytes must not be modified. For a mutable
/// array of bytes see `GByteArray`. Use `g_bytes_unref_to_array()` to create a
/// mutable array for a `GBytes` sequence. To create an immutable `GBytes` from
/// a mutable `GByteArray`, use the `g_byte_array_free_to_bytes()` function.
///
/// The `BytesRef` type acts as a lightweight Swift reference to an underlying `GBytes` instance.
/// It exposes methods that can operate on this data type through `BytesProtocol` conformance.
/// Use `BytesRef` only as an `unowned` reference to an existing `GBytes` instance.
///
public struct BytesRef: BytesProtocol {
        /// Untyped pointer to the underlying `GBytes` instance.
    /// For type-safe access, use the generated, typed pointer `bytes_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BytesRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GBytes>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GBytes>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GBytes>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GBytes>?) {
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

    /// Reference intialiser for a related type that implements `BytesProtocol`
    @inlinable init<T: BytesProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GBytes` from `data`.
    /// 
    /// `data` is copied. If `size` is 0, `data` may be `nil`.
    @inlinable init( data: gconstpointer! = nil, size: Int) {
        let rv = g_bytes_new(data, gsize(size))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GBytes` from static data.
    /// 
    /// `data` must be static (ie: never modified or freed). It may be `nil` if `size`
    /// is 0.
    @inlinable init(static_ data: gconstpointer! = nil, size: Int) {
        let rv = g_bytes_new_static(data, gsize(size))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GBytes` from `data`.
    /// 
    /// After this call, `data` belongs to the bytes and may no longer be
    /// modified by the caller.  `g_free()` will be called on `data` when the
    /// bytes is no longer in use. Because of this `data` must have been created by
    /// a call to `g_malloc()`, `g_malloc0()` or `g_realloc()` or by one of the many
    /// functions that wrap these calls (such as `g_new()`, `g_strdup()`, etc).
    /// 
    /// For creating `GBytes` with memory from other allocators, see
    /// `g_bytes_new_with_free_func()`.
    /// 
    /// `data` may be `nil` if `size` is 0.
    @inlinable init(take data: gpointer! = nil, size: Int) {
        let rv = g_bytes_new_take(data, gsize(size))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GBytes` from `data`.
    /// 
    /// When the last reference is dropped, `free_func` will be called with the
    /// `user_data` argument.
    /// 
    /// `data` must not be modified after this call is made until `free_func` has
    /// been called to indicate that the bytes is no longer in use.
    /// 
    /// `data` may be `nil` if `size` is 0.
    @inlinable init(freeFunc data: gconstpointer! = nil, size: Int, freeFunc: GDestroyNotify?, userData: gpointer! = nil) {
        let rv = g_bytes_new_with_free_func(data, gsize(size), freeFunc, userData)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GBytes` from static data.
    /// 
    /// `data` must be static (ie: never modified or freed). It may be `nil` if `size`
    /// is 0.
    @inlinable static func newStatic(static_ data: gconstpointer! = nil, size: Int) -> BytesRef! {
        guard let rv = BytesRef(gconstpointer: gconstpointer(g_bytes_new_static(data, gsize(size)))) else { return nil }
        return rv
    }

    /// Creates a new `GBytes` from `data`.
    /// 
    /// After this call, `data` belongs to the bytes and may no longer be
    /// modified by the caller.  `g_free()` will be called on `data` when the
    /// bytes is no longer in use. Because of this `data` must have been created by
    /// a call to `g_malloc()`, `g_malloc0()` or `g_realloc()` or by one of the many
    /// functions that wrap these calls (such as `g_new()`, `g_strdup()`, etc).
    /// 
    /// For creating `GBytes` with memory from other allocators, see
    /// `g_bytes_new_with_free_func()`.
    /// 
    /// `data` may be `nil` if `size` is 0.
    @inlinable static func new(take data: gpointer! = nil, size: Int) -> BytesRef! {
        guard let rv = BytesRef(gconstpointer: gconstpointer(g_bytes_new_take(data, gsize(size)))) else { return nil }
        return rv
    }

    /// Creates a `GBytes` from `data`.
    /// 
    /// When the last reference is dropped, `free_func` will be called with the
    /// `user_data` argument.
    /// 
    /// `data` must not be modified after this call is made until `free_func` has
    /// been called to indicate that the bytes is no longer in use.
    /// 
    /// `data` may be `nil` if `size` is 0.
    @inlinable static func newWith(freeFunc data: gconstpointer! = nil, size: Int, freeFunc: GDestroyNotify?, userData: gpointer! = nil) -> BytesRef! {
        guard let rv = BytesRef(gconstpointer: gconstpointer(g_bytes_new_with_free_func(data, gsize(size), freeFunc, userData))) else { return nil }
        return rv
    }
}

/// A simple refcounted data type representing an immutable sequence of zero or
/// more bytes from an unspecified origin.
/// 
/// The purpose of a `GBytes` is to keep the memory region that it holds
/// alive for as long as anyone holds a reference to the bytes.  When
/// the last reference count is dropped, the memory is released. Multiple
/// unrelated callers can use byte data in the `GBytes` without coordinating
/// their activities, resting assured that the byte data will not change or
/// move while they hold a reference.
/// 
/// A `GBytes` can come from many different origins that may have
/// different procedures for freeing the memory region.  Examples are
/// memory from `g_malloc()`, from memory slices, from a `GMappedFile` or
/// memory from other allocators.
/// 
/// `GBytes` work well as keys in `GHashTable`. Use `g_bytes_equal()` and
/// `g_bytes_hash()` as parameters to `g_hash_table_new()` or `g_hash_table_new_full()`.
/// `GBytes` can also be used as keys in a `GTree` by passing the `g_bytes_compare()`
/// function to `g_tree_new()`.
/// 
/// The data pointed to by this bytes must not be modified. For a mutable
/// array of bytes see `GByteArray`. Use `g_bytes_unref_to_array()` to create a
/// mutable array for a `GBytes` sequence. To create an immutable `GBytes` from
/// a mutable `GByteArray`, use the `g_byte_array_free_to_bytes()` function.
///
/// The `Bytes` type acts as a reference-counted owner of an underlying `GBytes` instance.
/// It provides the methods that can operate on this data type through `BytesProtocol` conformance.
/// Use `Bytes` as a strong reference or owner of a `GBytes` instance.
///
open class Bytes: BytesProtocol {
        /// Untyped pointer to the underlying `GBytes` instance.
    /// For type-safe access, use the generated, typed pointer `bytes_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Bytes` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GBytes>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Bytes` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GBytes>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Bytes` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Bytes` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Bytes` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GBytes>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Bytes` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GBytes>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GBytes`.
    /// i.e., ownership is transferred to the `Bytes` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GBytes>) {
        ptr = UnsafeMutableRawPointer(op)
        g_bytes_ref(ptr.assumingMemoryBound(to: GBytes.self))
    }

    /// Reference intialiser for a related type that implements `BytesProtocol`
    /// Will retain `GBytes`.
    /// - Parameter other: an instance of a related type that implements `BytesProtocol`
    @inlinable public init<T: BytesProtocol>(_ other: T) {
        ptr = other.ptr
        g_bytes_ref(ptr.assumingMemoryBound(to: GBytes.self))
    }

    /// Releases the underlying `GBytes` instance using `g_bytes_unref`.
    deinit {
        g_bytes_unref(ptr.assumingMemoryBound(to: GBytes.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_bytes_ref(ptr.assumingMemoryBound(to: GBytes.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_bytes_ref(ptr.assumingMemoryBound(to: GBytes.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_bytes_ref(ptr.assumingMemoryBound(to: GBytes.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_bytes_ref(ptr.assumingMemoryBound(to: GBytes.self))
    }

    /// Creates a new `GBytes` from `data`.
    /// 
    /// `data` is copied. If `size` is 0, `data` may be `nil`.
    @inlinable public init( data: gconstpointer! = nil, size: Int) {
        let rv = g_bytes_new(data, gsize(size))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GBytes` from static data.
    /// 
    /// `data` must be static (ie: never modified or freed). It may be `nil` if `size`
    /// is 0.
    @inlinable public init(static_ data: gconstpointer! = nil, size: Int) {
        let rv = g_bytes_new_static(data, gsize(size))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GBytes` from `data`.
    /// 
    /// After this call, `data` belongs to the bytes and may no longer be
    /// modified by the caller.  `g_free()` will be called on `data` when the
    /// bytes is no longer in use. Because of this `data` must have been created by
    /// a call to `g_malloc()`, `g_malloc0()` or `g_realloc()` or by one of the many
    /// functions that wrap these calls (such as `g_new()`, `g_strdup()`, etc).
    /// 
    /// For creating `GBytes` with memory from other allocators, see
    /// `g_bytes_new_with_free_func()`.
    /// 
    /// `data` may be `nil` if `size` is 0.
    @inlinable public init(take data: gpointer! = nil, size: Int) {
        let rv = g_bytes_new_take(data, gsize(size))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GBytes` from `data`.
    /// 
    /// When the last reference is dropped, `free_func` will be called with the
    /// `user_data` argument.
    /// 
    /// `data` must not be modified after this call is made until `free_func` has
    /// been called to indicate that the bytes is no longer in use.
    /// 
    /// `data` may be `nil` if `size` is 0.
    @inlinable public init(freeFunc data: gconstpointer! = nil, size: Int, freeFunc: GDestroyNotify?, userData: gpointer! = nil) {
        let rv = g_bytes_new_with_free_func(data, gsize(size), freeFunc, userData)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GBytes` from static data.
    /// 
    /// `data` must be static (ie: never modified or freed). It may be `nil` if `size`
    /// is 0.
    @inlinable public static func newStatic(static_ data: gconstpointer! = nil, size: Int) -> Bytes! {
        guard let rv = Bytes(gconstpointer: gconstpointer(g_bytes_new_static(data, gsize(size)))) else { return nil }
        return rv
    }

    /// Creates a new `GBytes` from `data`.
    /// 
    /// After this call, `data` belongs to the bytes and may no longer be
    /// modified by the caller.  `g_free()` will be called on `data` when the
    /// bytes is no longer in use. Because of this `data` must have been created by
    /// a call to `g_malloc()`, `g_malloc0()` or `g_realloc()` or by one of the many
    /// functions that wrap these calls (such as `g_new()`, `g_strdup()`, etc).
    /// 
    /// For creating `GBytes` with memory from other allocators, see
    /// `g_bytes_new_with_free_func()`.
    /// 
    /// `data` may be `nil` if `size` is 0.
    @inlinable public static func new(take data: gpointer! = nil, size: Int) -> Bytes! {
        guard let rv = Bytes(gconstpointer: gconstpointer(g_bytes_new_take(data, gsize(size)))) else { return nil }
        return rv
    }

    /// Creates a `GBytes` from `data`.
    /// 
    /// When the last reference is dropped, `free_func` will be called with the
    /// `user_data` argument.
    /// 
    /// `data` must not be modified after this call is made until `free_func` has
    /// been called to indicate that the bytes is no longer in use.
    /// 
    /// `data` may be `nil` if `size` is 0.
    @inlinable public static func newWith(freeFunc data: gconstpointer! = nil, size: Int, freeFunc: GDestroyNotify?, userData: gpointer! = nil) -> Bytes! {
        guard let rv = Bytes(gconstpointer: gconstpointer(g_bytes_new_with_free_func(data, gsize(size), freeFunc, userData))) else { return nil }
        return rv
    }

}

// MARK: no Bytes properties

// MARK: no Bytes signals

// MARK: Bytes has no signals
// MARK: Bytes Record: BytesProtocol extension (methods and fields)
public extension BytesProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GBytes` instance.
    @inlinable var bytes_ptr: UnsafeMutablePointer<GBytes>! { return ptr?.assumingMemoryBound(to: GBytes.self) }

    /// Compares the two `GBytes` values.
    /// 
    /// This function can be used to sort GBytes instances in lexicographical order.
    /// 
    /// If `bytes1` and `bytes2` have different length but the shorter one is a
    /// prefix of the longer one then the shorter one is considered to be less than
    /// the longer one. Otherwise the first byte where both differ is used for
    /// comparison. If `bytes1` has a smaller value at that position it is
    /// considered less, otherwise greater than `bytes2`.
    @inlinable func compare<BytesT: BytesProtocol>(bytes2: BytesT) -> Int {
        let rv = Int(g_bytes_compare(bytes_ptr, bytes2.bytes_ptr))
        return rv
    }

    /// Compares the two `GBytes` values being pointed to and returns
    /// `true` if they are equal.
    /// 
    /// This function can be passed to `g_hash_table_new()` as the `key_equal_func`
    /// parameter, when using non-`nil` `GBytes` pointers as keys in a `GHashTable`.
    @inlinable func equal<BytesT: BytesProtocol>(bytes2: BytesT) -> Bool {
        let rv = ((g_bytes_equal(bytes_ptr, bytes2.bytes_ptr)) != 0)
        return rv
    }

    /// Get the byte data in the `GBytes`. This data should not be modified.
    /// 
    /// This function will always return the same pointer for a given `GBytes`.
    /// 
    /// `nil` may be returned if `size` is 0. This is not guaranteed, as the `GBytes`
    /// may represent an empty string with `data` non-`nil` and `size` as 0. `nil` will
    /// not be returned if `size` is non-zero.
    @inlinable func getData(size: UnsafeMutablePointer<gsize>! = nil) -> gconstpointer! {
        let rv = gconstpointer?(g_bytes_get_data(bytes_ptr, size))
        return rv
    }

    /// Gets a pointer to a region in `bytes`.
    /// 
    /// The region starts at `offset` many bytes from the start of the data
    /// and contains `n_elements` many elements of `element_size` size.
    /// 
    /// `n_elements` may be zero, but `element_size` must always be non-zero.
    /// IDeally, `element_size` is a static constant (eg: sizeof a struct).
    /// 
    /// This function does careful bounds checking (including checking for
    /// arithmetic overflows) and returns a non-`nil` pointer if the
    /// specified region lies entirely within the `bytes`. If the region is
    /// in some way out of range, or if an overflow has occurred, then `nil`
    /// is returned.
    /// 
    /// Note: it is possible to have a valid zero-size region. In this case,
    /// the returned pointer will be equal to the base pointer of the data of
    /// `bytes`, plus `offset`.  This will be non-`nil` except for the case
    /// where `bytes` itself was a zero-sized region.  Since it is unlikely
    /// that you will be using this function to check for a zero-sized region
    /// in a zero-sized `bytes`, `nil` effectively always means "error".
    @inlinable func getRegion(elementSize: Int, offset: Int, nElements: Int) -> gconstpointer! {
        let rv = g_bytes_get_region(bytes_ptr, gsize(elementSize), gsize(offset), gsize(nElements))
        return rv
    }

    /// Get the size of the byte data in the `GBytes`.
    /// 
    /// This function will always return the same value for a given `GBytes`.
    @inlinable func getSize() -> Int {
        let rv = Int(g_bytes_get_size(bytes_ptr))
        return rv
    }

    /// Creates an integer hash code for the byte data in the `GBytes`.
    /// 
    /// This function can be passed to `g_hash_table_new()` as the `key_hash_func`
    /// parameter, when using non-`nil` `GBytes` pointers as keys in a `GHashTable`.
    @inlinable func hash() -> Int {
        let rv = Int(g_bytes_hash(bytes_ptr))
        return rv
    }

    /// Creates a `GBytes` which is a subsection of another `GBytes`. The `offset` +
    /// `length` may not be longer than the size of `bytes`.
    /// 
    /// A reference to `bytes` will be held by the newly created `GBytes` until
    /// the byte data is no longer needed.
    /// 
    /// Since 2.56, if `offset` is 0 and `length` matches the size of `bytes`, then
    /// `bytes` will be returned with the reference count incremented by 1. If `bytes`
    /// is a slice of another `GBytes`, then the resulting `GBytes` will reference
    /// the same `GBytes` instead of `bytes`. This allows consumers to simplify the
    /// usage of `GBytes` when asynchronously writing to streams.
    @inlinable func newFromBytes(offset: Int, length: Int) -> BytesRef! {
        guard let rv = BytesRef(gconstpointer: gconstpointer(g_bytes_new_from_bytes(bytes_ptr, gsize(offset), gsize(length)))) else { return nil }
        return rv
    }

    /// Increase the reference count on `bytes`.
    @discardableResult @inlinable func ref() -> BytesRef! {
        guard let rv = BytesRef(gconstpointer: gconstpointer(g_bytes_ref(bytes_ptr))) else { return nil }
        return rv
    }

    /// Releases a reference on `bytes`.  This may result in the bytes being
    /// freed. If `bytes` is `nil`, it will return immediately.
    @inlinable func unref() {
        g_bytes_unref(bytes_ptr)
    
    }

    /// Unreferences the bytes, and returns a new mutable `GByteArray` containing
    /// the same byte data.
    /// 
    /// As an optimization, the byte data is transferred to the array without copying
    /// if this was the last reference to bytes and bytes was created with
    /// `g_bytes_new()`, `g_bytes_new_take()` or `g_byte_array_free_to_bytes()`. In all
    /// other cases the data is copied.
    /// 
    /// Do not use it if `bytes` contains more than `G_MAXUINT`
    /// bytes. `GByteArray` stores the length of its data in `guint`, which
    /// may be shorter than `gsize`, that `bytes` is using.
    @inlinable func unrefToArray() -> GLib.ByteArrayRef! {
        let rv = GLib.ByteArrayRef(g_bytes_unref_to_array(bytes_ptr))
        return rv
    }

    /// Unreferences the bytes, and returns a pointer the same byte data
    /// contents.
    /// 
    /// As an optimization, the byte data is returned without copying if this was
    /// the last reference to bytes and bytes was created with `g_bytes_new()`,
    /// `g_bytes_new_take()` or `g_byte_array_free_to_bytes()`. In all other cases the
    /// data is copied.
    @inlinable func unrefToData(size: UnsafeMutablePointer<gsize>!) -> gpointer! {
        let rv = gpointer?(g_bytes_unref_to_data(bytes_ptr, size))
        return rv
    }

    /// Computes the checksum for a binary `data`. This is a
    /// convenience wrapper for `g_checksum_new()`, `g_checksum_get_string()`
    /// and `g_checksum_free()`.
    /// 
    /// The hexadecimal string returned will be in lower case.
    @inlinable func computeChecksumForBytes(checksumType: GChecksumType) -> String! {
        let rv = g_compute_checksum_for_bytes(checksumType, bytes_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Computes the HMAC for a binary `data`. This is a
    /// convenience wrapper for `g_hmac_new()`, `g_hmac_get_string()`
    /// and `g_hmac_unref()`.
    /// 
    /// The hexadecimal string returned will be in lower case.
    @inlinable func computeHmacForBytes<BytesT: BytesProtocol>(digestType: GChecksumType, data: BytesT) -> String! {
        let rv = g_compute_hmac_for_bytes(digestType, bytes_ptr, data.bytes_ptr).map({ String(cString: $0) })
        return rv
    }
    /// Get the size of the byte data in the `GBytes`.
    /// 
    /// This function will always return the same value for a given `GBytes`.
    @inlinable var size: Int {
        /// Get the size of the byte data in the `GBytes`.
        /// 
        /// This function will always return the same value for a given `GBytes`.
        get {
            let rv = Int(g_bytes_get_size(bytes_ptr))
            return rv
        }
    }


}



// MARK: - Checksum Record

/// An opaque structure representing a checksumming operation.
/// 
/// To create a new GChecksum, use `g_checksum_new()`. To free
/// a GChecksum, use `g_checksum_free()`.
///
/// The `ChecksumProtocol` protocol exposes the methods and properties of an underlying `GChecksum` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Checksum`.
/// Alternatively, use `ChecksumRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ChecksumProtocol {
        /// Untyped pointer to the underlying `GChecksum` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GChecksum` instance.
    var checksum_ptr: UnsafeMutablePointer<GChecksum>! { get }

    /// Required Initialiser for types conforming to `ChecksumProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// An opaque structure representing a checksumming operation.
/// 
/// To create a new GChecksum, use `g_checksum_new()`. To free
/// a GChecksum, use `g_checksum_free()`.
///
/// The `ChecksumRef` type acts as a lightweight Swift reference to an underlying `GChecksum` instance.
/// It exposes methods that can operate on this data type through `ChecksumProtocol` conformance.
/// Use `ChecksumRef` only as an `unowned` reference to an existing `GChecksum` instance.
///
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

/// An opaque structure representing a checksumming operation.
/// 
/// To create a new GChecksum, use `g_checksum_new()`. To free
/// a GChecksum, use `g_checksum_free()`.
///
/// The `Checksum` type acts as an owner of an underlying `GChecksum` instance.
/// It provides the methods that can operate on this data type through `ChecksumProtocol` conformance.
/// Use `Checksum` as a strong reference or owner of a `GChecksum` instance.
///
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
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

// MARK: Checksum has no signals
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



