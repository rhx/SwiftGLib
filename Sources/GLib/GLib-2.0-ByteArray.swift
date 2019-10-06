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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GByteArray` instance.
    var byte_array_ptr: UnsafeMutablePointer<GByteArray> { get }
}

/// The `ByteArrayRef` type acts as a lightweight Swift reference to an underlying `GByteArray` instance.
/// It exposes methods that can operate on this data type through `ByteArrayProtocol` conformance.
/// Use `ByteArrayRef` only as an `unowned` reference to an existing `GByteArray` instance.
///
/// Contains the public fields of a GByteArray.
public struct ByteArrayRef: ByteArrayProtocol {
    /// Untyped pointer to the underlying `GByteArray` instance.
    /// For type-safe access, use the generated, typed pointer `byte_array_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ByteArrayRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GByteArray>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ByteArrayProtocol`
    init<T: ByteArrayProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Create byte array containing the data. The data will be owned by the array
    /// and will be freed with `g_free()`, i.e. it could be allocated using `g_strdup()`.
    static func new(take data: UnsafeMutablePointer<UInt8>, len: Int) -> ByteArrayRef! {
        let rv = g_byte_array_new_take(cast(data), gsize(len))
        return rv.map { ByteArrayRef(cast($0)) }
    }

    /// Creates a new `GByteArray` with `reserved_size` bytes preallocated.
    /// This avoids frequent reallocation, if you are going to add many
    /// bytes to the array. Note however that the size of the array is still
    /// 0.
    static func sizedNew(sized reserved_size: CUnsignedInt) -> ByteArrayRef! {
        let rv = g_byte_array_sized_new(guint(reserved_size))
        return rv.map { ByteArrayRef(cast($0)) }
    }
}

/// The `ByteArray` type acts as a reference-counted owner of an underlying `GByteArray` instance.
/// It provides the methods that can operate on this data type through `ByteArrayProtocol` conformance.
/// Use `ByteArray` as a strong reference or owner of a `GByteArray` instance.
///
/// Contains the public fields of a GByteArray.
open class ByteArray: ByteArrayProtocol {
    /// Untyped pointer to the underlying `GByteArray` instance.
    /// For type-safe access, use the generated, typed pointer `byte_array_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ByteArray` instance.
    public init(_ op: UnsafeMutablePointer<GByteArray>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ByteArrayProtocol`
    /// Will retain `GByteArray`.
    public convenience init<T: ByteArrayProtocol>(_ other: T) {
        self.init(cast(other.byte_array_ptr))
        g_byte_array_ref(cast(byte_array_ptr))
    }

    /// Releases the underlying `GByteArray` instance using `g_byte_array_unref`.
    deinit {
        g_byte_array_unref(cast(byte_array_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GByteArray.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GByteArray.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GByteArray.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GByteArray>(opaquePointer))
    }


    /// Create byte array containing the data. The data will be owned by the array
    /// and will be freed with `g_free()`, i.e. it could be allocated using `g_strdup()`.
    public static func new(take data: UnsafeMutablePointer<UInt8>, len: Int) -> ByteArray! {
        let rv = g_byte_array_new_take(cast(data), gsize(len))
        return rv.map { ByteArray(cast($0)) }
    }

    /// Creates a new `GByteArray` with `reserved_size` bytes preallocated.
    /// This avoids frequent reallocation, if you are going to add many
    /// bytes to the array. Note however that the size of the array is still
    /// 0.
    public static func sizedNew(sized reserved_size: CUnsignedInt) -> ByteArray! {
        let rv = g_byte_array_sized_new(guint(reserved_size))
        return rv.map { ByteArray(cast($0)) }
    }

}

// MARK: - no ByteArray properties

// MARK: - no signals


public extension ByteArrayProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GByteArray` instance.
    var byte_array_ptr: UnsafeMutablePointer<GByteArray> { return ptr.assumingMemoryBound(to: GByteArray.self) }

    /// Adds the given bytes to the end of the `GByteArray`.
    /// The array will grow in size automatically if necessary.
    func append(data: UnsafePointer<UInt8>, len: CUnsignedInt) -> UnsafeMutablePointer<GByteArray>! {
        let rv = g_byte_array_append(cast(byte_array_ptr), cast(data), guint(len))
        return cast(rv)
    }

    /// Frees the memory allocated by the `GByteArray`. If `free_segment` is
    /// `true` it frees the actual byte data. If the reference count of
    /// `array` is greater than one, the `GByteArray` wrapper is preserved but
    /// the size of `array` will be set to zero.
    func free(freeSegment free_segment: Bool) -> UnsafeMutablePointer<UInt8>! {
        let rv = g_byte_array_free(cast(byte_array_ptr), gboolean(free_segment ? 1 : 0))
        return cast(rv)
    }

    /// Transfers the data from the `GByteArray` into a new immutable `GBytes`.
    /// 
    /// The `GByteArray` is freed unless the reference count of `array` is greater
    /// than one, the `GByteArray` wrapper is preserved but the size of `array`
    /// will be set to zero.
    /// 
    /// This is identical to using `g_bytes_new_take()` and `g_byte_array_free()`
    /// together.
    func freeToBytes() -> UnsafeMutablePointer<GBytes>! {
        let rv = g_byte_array_free_to_bytes(cast(byte_array_ptr))
        return cast(rv)
    }

    /// Adds the given data to the start of the `GByteArray`.
    /// The array will grow in size automatically if necessary.
    func prepend(data: UnsafePointer<UInt8>, len: CUnsignedInt) -> UnsafeMutablePointer<GByteArray>! {
        let rv = g_byte_array_prepend(cast(byte_array_ptr), cast(data), guint(len))
        return cast(rv)
    }

    /// Atomically increments the reference count of `array` by one.
    /// This function is thread-safe and may be called from any thread.
    func ref() -> UnsafeMutablePointer<GByteArray>! {
        let rv = g_byte_array_ref(cast(byte_array_ptr))
        return cast(rv)
    }

    /// Removes the byte at the given index from a `GByteArray`.
    /// The following bytes are moved down one place.
    func removeIndex(index_: CUnsignedInt) -> UnsafeMutablePointer<GByteArray>! {
        let rv = g_byte_array_remove_index(cast(byte_array_ptr), guint(index_))
        return cast(rv)
    }

    /// Removes the byte at the given index from a `GByteArray`. The last
    /// element in the array is used to fill in the space, so this function
    /// does not preserve the order of the `GByteArray`. But it is faster
    /// than `g_byte_array_remove_index()`.
    func removeIndexFast(index_: CUnsignedInt) -> UnsafeMutablePointer<GByteArray>! {
        let rv = g_byte_array_remove_index_fast(cast(byte_array_ptr), guint(index_))
        return cast(rv)
    }

    /// Removes the given number of bytes starting at the given index from a
    /// `GByteArray`.  The following elements are moved to close the gap.
    func removeRange(index_: CUnsignedInt, length: CUnsignedInt) -> UnsafeMutablePointer<GByteArray>! {
        let rv = g_byte_array_remove_range(cast(byte_array_ptr), guint(index_), guint(length))
        return cast(rv)
    }

    /// Sets the size of the `GByteArray`, expanding it if necessary.
    func setSize(length: CUnsignedInt) -> UnsafeMutablePointer<GByteArray>! {
        let rv = g_byte_array_set_size(cast(byte_array_ptr), guint(length))
        return cast(rv)
    }

    /// Sorts a byte array, using `compare_func` which should be a
    /// `qsort()`-style comparison function (returns less than zero for first
    /// arg is less than second arg, zero for equal, greater than zero if
    /// first arg is greater than second arg).
    /// 
    /// If two array elements compare equal, their order in the sorted array
    /// is undefined. If you want equal elements to keep their order (i.e.
    /// you want a stable sort) you can write a comparison function that,
    /// if two elements would otherwise compare equal, compares them by
    /// their addresses.
    func sort(compareFunc compare_func: @escaping CompareFunc) {
        g_byte_array_sort(cast(byte_array_ptr), compare_func)
    
    }

    /// Like `g_byte_array_sort()`, but the comparison function takes an extra
    /// user data argument.
    func sortWithData(compareFunc compare_func: @escaping CompareDataFunc, userData user_data: UnsafeMutableRawPointer) {
        g_byte_array_sort_with_data(cast(byte_array_ptr), compare_func, cast(user_data))
    
    }

    /// Atomically decrements the reference count of `array` by one. If the
    /// reference count drops to 0, all memory allocated by the array is
    /// released. This function is thread-safe and may be called from any
    /// thread.
    func unref() {
        g_byte_array_unref(cast(byte_array_ptr))
    
    }

    /// Frees the memory allocated by the `GByteArray`. If `free_segment` is
    /// `true` it frees the actual byte data. If the reference count of
    /// `array` is greater than one, the `GByteArray` wrapper is preserved but
    /// the size of `array` will be set to zero.
    func byteArrayFree(freeSegment free_segment: Bool) -> UnsafeMutablePointer<UInt8>! {
        let rv = g_byte_array_free(cast(byte_array_ptr), gboolean(free_segment ? 1 : 0))
        return cast(rv)
    }

    /// Transfers the data from the `GByteArray` into a new immutable `GBytes`.
    /// 
    /// The `GByteArray` is freed unless the reference count of `array` is greater
    /// than one, the `GByteArray` wrapper is preserved but the size of `array`
    /// will be set to zero.
    /// 
    /// This is identical to using `g_bytes_new_take()` and `g_byte_array_free()`
    /// together.
    func byteArrayFreeToBytes() -> UnsafeMutablePointer<GBytes>! {
        let rv = g_byte_array_free_to_bytes(cast(byte_array_ptr))
        return cast(rv)
    }

    /// Atomically decrements the reference count of `array` by one. If the
    /// reference count drops to 0, all memory allocated by the array is
    /// released. This function is thread-safe and may be called from any
    /// thread.
    func byteArrayUnref() {
        g_byte_array_unref(cast(byte_array_ptr))
    
    }
}



