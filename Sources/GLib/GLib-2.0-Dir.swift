import CGLib

// MARK: - Dir Record

/// The `DirProtocol` protocol exposes the methods and properties of an underlying `GDir` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Dir`.
/// Alternatively, use `DirRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// An opaque structure representing an opened directory.
public protocol DirProtocol {
        /// Untyped pointer to the underlying `GDir` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDir` instance.
    var _ptr: UnsafeMutablePointer<GDir> { get }
}

/// The `DirRef` type acts as a lightweight Swift reference to an underlying `GDir` instance.
/// It exposes methods that can operate on this data type through `DirProtocol` conformance.
/// Use `DirRef` only as an `unowned` reference to an existing `GDir` instance.
///
/// An opaque structure representing an opened directory.
public struct DirRef: DirProtocol {
        /// Untyped pointer to the underlying `GDir` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DirRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDir>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DirProtocol`
    init<T: DirProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Opens a directory for reading. The names of the files in the
    /// directory can then be retrieved using `g_dir_read_name()`.  Note
    /// that the ordering is not defined.
    static func open(path: UnsafePointer<gchar>, flags: CUnsignedInt) throws -> DirRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GDir>! = cast(g_dir_open(path, guint(flags), &error))
        if let error = error { throw ErrorType(error) }
        return rv.map { DirRef(cast($0)) }
    }
}

/// The `Dir` type acts as an owner of an underlying `GDir` instance.
/// It provides the methods that can operate on this data type through `DirProtocol` conformance.
/// Use `Dir` as a strong reference or owner of a `GDir` instance.
///
/// An opaque structure representing an opened directory.
open class Dir: DirProtocol {
        /// Untyped pointer to the underlying `GDir` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Dir` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GDir>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GDir` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Dir` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GDir>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GDir, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `DirProtocol`
    /// `GDir` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `DirProtocol`
    public init<T: DirProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GDir, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GDir`.
    deinit {
        // no reference counting for GDir, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GDir, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GDir, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GDir, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GDir, cannot ref(cast(_ptr))
    }


    /// Opens a directory for reading. The names of the files in the
    /// directory can then be retrieved using `g_dir_read_name()`.  Note
    /// that the ordering is not defined.
    public static func open(path: UnsafePointer<gchar>, flags: CUnsignedInt) throws -> Dir! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GDir>! = cast(g_dir_open(path, guint(flags), &error))
        if let error = error { throw ErrorType(error) }
        return rv.map { Dir(cast($0)) }
    }

}

// MARK: no Dir properties

// MARK: no Dir signals


// MARK: Dir Record: DirProtocol extension (methods and fields)
public extension DirProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDir` instance.
    var _ptr: UnsafeMutablePointer<GDir> { return ptr.assumingMemoryBound(to: GDir.self) }

    /// Closes the directory and deallocates all related resources.
    func close() {
        g_dir_close(cast(_ptr))
    
    }

    /// Retrieves the name of another entry in the directory, or `nil`.
    /// The order of entries returned from this function is not defined,
    /// and may vary by file system or other operating-system dependent
    /// factors.
    /// 
    /// `nil` may also be returned in case of errors. On Unix, you can
    /// check `errno` to find out if `nil` was returned because of an error.
    /// 
    /// On Unix, the '.' and '..' entries are omitted, and the returned
    /// name is in the on-disk encoding.
    /// 
    /// On Windows, as is true of all GLib functions which operate on
    /// filenames, the returned name is in UTF-8.
    func readName() -> String! {
        let rv: String! = cast(g_dir_read_name(cast(_ptr)))
        return cast(rv)
    }

    /// Resets the given directory. The next call to `g_dir_read_name()`
    /// will return the first entry again.
    func rewind() {
        g_dir_rewind(cast(_ptr))
    
    }


}



