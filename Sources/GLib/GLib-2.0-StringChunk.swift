import CGLib

// MARK: - StringChunk Record

/// The `StringChunkProtocol` protocol exposes the methods and properties of an underlying `GStringChunk` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StringChunk`.
/// Alternatively, use `StringChunkRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// An opaque data structure representing String Chunks.
/// It should only be accessed by using the following functions.
public protocol StringChunkProtocol {
    /// Untyped pointer to the underlying `GStringChunk` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GStringChunk` instance.
    var _ptr: UnsafeMutablePointer<GStringChunk> { get }
}

/// The `StringChunkRef` type acts as a lightweight Swift reference to an underlying `GStringChunk` instance.
/// It exposes methods that can operate on this data type through `StringChunkProtocol` conformance.
/// Use `StringChunkRef` only as an `unowned` reference to an existing `GStringChunk` instance.
///
/// An opaque data structure representing String Chunks.
/// It should only be accessed by using the following functions.
public struct StringChunkRef: StringChunkProtocol {
    /// Untyped pointer to the underlying `GStringChunk` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension StringChunkRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GStringChunk>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `StringChunkProtocol`
    init<T: StringChunkProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringChunkProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringChunkProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringChunkProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringChunkProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringChunkProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `StringChunk` type acts as an owner of an underlying `GStringChunk` instance.
/// It provides the methods that can operate on this data type through `StringChunkProtocol` conformance.
/// Use `StringChunk` as a strong reference or owner of a `GStringChunk` instance.
///
/// An opaque data structure representing String Chunks.
/// It should only be accessed by using the following functions.
open class StringChunk: StringChunkProtocol {
    /// Untyped pointer to the underlying `GStringChunk` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `StringChunk` instance.
    public init(_ op: UnsafeMutablePointer<GStringChunk>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `StringChunkProtocol`
    /// `GStringChunk` does not allow reference counting.
    public convenience init<T: StringChunkProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GStringChunk, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GStringChunk`.
    deinit {
        // no reference counting for GStringChunk, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringChunkProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GStringChunk.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringChunkProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GStringChunk.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringChunkProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GStringChunk.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringChunkProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GStringChunk>(opaquePointer))
    }



}

// MARK: - no StringChunk properties

// MARK: - no signals


public extension StringChunkProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GStringChunk` instance.
    var _ptr: UnsafeMutablePointer<GStringChunk> { return ptr.assumingMemoryBound(to: GStringChunk.self) }

    /// Frees all strings contained within the `GStringChunk`.
    /// After calling `g_string_chunk_clear()` it is not safe to
    /// access any of the strings which were contained within it.
    func clear() {
        g_string_chunk_clear(cast(_ptr))
    
    }

    /// Frees all memory allocated by the `GStringChunk`.
    /// After calling `g_string_chunk_free()` it is not safe to
    /// access any of the strings which were contained within it.
    func free() {
        g_string_chunk_free(cast(_ptr))
    
    }

    /// Adds a copy of `string` to the `GStringChunk`.
    /// It returns a pointer to the new copy of the string
    /// in the `GStringChunk`. The characters in the string
    /// can be changed, if necessary, though you should not
    /// change anything after the end of the string.
    /// 
    /// Unlike `g_string_chunk_insert_const()`, this function
    /// does not check for duplicates. Also strings added
    /// with `g_string_chunk_insert()` will not be searched
    /// by `g_string_chunk_insert_const()` when looking for
    /// duplicates.
    func insert(string: UnsafePointer<gchar>) -> String! {
        let rv = g_string_chunk_insert(cast(_ptr), string)
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Adds a copy of `string` to the `GStringChunk`, unless the same
    /// string has already been added to the `GStringChunk` with
    /// `g_string_chunk_insert_const()`.
    /// 
    /// This function is useful if you need to copy a large number
    /// of strings but do not want to waste space storing duplicates.
    /// But you must remember that there may be several pointers to
    /// the same string, and so any changes made to the strings
    /// should be done very carefully.
    /// 
    /// Note that `g_string_chunk_insert_const()` will not return a
    /// pointer to a string added with `g_string_chunk_insert()`, even
    /// if they do match.
    func insertConst(string: UnsafePointer<gchar>) -> String! {
        let rv = g_string_chunk_insert_const(cast(_ptr), string)
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Adds a copy of the first `len` bytes of `string` to the `GStringChunk`.
    /// The copy is nul-terminated.
    /// 
    /// Since this function does not stop at nul bytes, it is the caller's
    /// responsibility to ensure that `string` has at least `len` addressable
    /// bytes.
    /// 
    /// The characters in the returned string can be changed, if necessary,
    /// though you should not change anything after the end of the string.
    func insertLen(string: UnsafePointer<gchar>, len: gssize) -> String! {
        let rv = g_string_chunk_insert_len(cast(_ptr), string, len)
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }
}



