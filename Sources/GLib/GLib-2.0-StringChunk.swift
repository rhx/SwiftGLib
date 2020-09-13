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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GStringChunk` instance.
    var _ptr: UnsafeMutablePointer<GStringChunk>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension StringChunkRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GStringChunk>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GStringChunk>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GStringChunk>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GStringChunk>?) {
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

    /// Reference intialiser for a related type that implements `StringChunkProtocol`
    @inlinable init<T: StringChunkProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringChunkProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringChunkProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringChunkProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringChunkProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringChunkProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StringChunk` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GStringChunk>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StringChunk` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GStringChunk>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StringChunk` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StringChunk` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StringChunk` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GStringChunk>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StringChunk` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GStringChunk>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GStringChunk` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `StringChunk` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GStringChunk>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GStringChunk, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `StringChunkProtocol`
    /// `GStringChunk` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `StringChunkProtocol`
    @inlinable public init<T: StringChunkProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GStringChunk, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GStringChunk`.
    deinit {
        // no reference counting for GStringChunk, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringChunkProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringChunkProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GStringChunk, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringChunkProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringChunkProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GStringChunk, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringChunkProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringChunkProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GStringChunk, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringChunkProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringChunkProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GStringChunk, cannot ref(_ptr)
    }



}

// MARK: no StringChunk properties

// MARK: no StringChunk signals


// MARK: StringChunk Record: StringChunkProtocol extension (methods and fields)
public extension StringChunkProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GStringChunk` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GStringChunk>! { return ptr?.assumingMemoryBound(to: GStringChunk.self) }

    /// Frees all strings contained within the `GStringChunk`.
    /// After calling `g_string_chunk_clear()` it is not safe to
    /// access any of the strings which were contained within it.
    @inlinable func clear() {
        g_string_chunk_clear(_ptr)
    
    }

    /// Frees all memory allocated by the `GStringChunk`.
    /// After calling `g_string_chunk_free()` it is not safe to
    /// access any of the strings which were contained within it.
    @inlinable func free() {
        g_string_chunk_free(_ptr)
    
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
    @inlinable func insert(string: UnsafePointer<gchar>!) -> String! {
        let rv = g_string_chunk_insert(_ptr, string).map({ String(cString: $0) })
        return rv
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
    @inlinable func insertConst(string: UnsafePointer<gchar>!) -> String! {
        let rv = g_string_chunk_insert_const(_ptr, string).map({ String(cString: $0) })
        return rv
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
    @inlinable func insertLen(string: UnsafePointer<gchar>!, len: gssize) -> String! {
        let rv = g_string_chunk_insert_len(_ptr, string, len).map({ String(cString: $0) })
        return rv
    }


}



