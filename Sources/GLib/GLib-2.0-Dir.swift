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
    /// directory can then be retrieved using g_dir_read_name().  Note
    /// that the ordering is not defined.
    static func open(path: UnsafePointer<gchar>, flags: CUnsignedInt) throws -> DirRef! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dir_open(path, guint(flags), &error)
        if let error = error {
                throw ErrorType(error)
        }
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
    /// Ownership is transferred to the `Dir` instance.
    public init(_ op: UnsafeMutablePointer<GDir>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DirProtocol`
    /// `GDir` does not allow reference counting.
    public convenience init<T: DirProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GDir, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GDir`.
    deinit {
        // no reference counting for GDir, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDir.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDir.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDir.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDir>(opaquePointer))
    }


    /// Opens a directory for reading. The names of the files in the
    /// directory can then be retrieved using g_dir_read_name().  Note
    /// that the ordering is not defined.
    public static func open(path: UnsafePointer<gchar>, flags: CUnsignedInt) throws -> Dir! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dir_open(path, guint(flags), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { Dir(cast($0)) }
    }

}

// MARK: - no Dir properties

// MARK: - no signals


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
        let rv = g_dir_read_name(cast(_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Resets the given directory. The next call to g_dir_read_name()
    /// will return the first entry again.
    func rewind() {
        g_dir_rewind(cast(_ptr))
    
    }
}



