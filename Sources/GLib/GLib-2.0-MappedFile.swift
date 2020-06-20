import CGLib

// MARK: - MappedFile Record

/// The `MappedFileProtocol` protocol exposes the methods and properties of an underlying `GMappedFile` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MappedFile`.
/// Alternatively, use `MappedFileRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GMappedFile` represents a file mapping created with
/// `g_mapped_file_new()`. It has only private members and should
/// not be accessed directly.
public protocol MappedFileProtocol {
        /// Untyped pointer to the underlying `GMappedFile` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GMappedFile` instance.
    var mapped_file_ptr: UnsafeMutablePointer<GMappedFile> { get }
}

/// The `MappedFileRef` type acts as a lightweight Swift reference to an underlying `GMappedFile` instance.
/// It exposes methods that can operate on this data type through `MappedFileProtocol` conformance.
/// Use `MappedFileRef` only as an `unowned` reference to an existing `GMappedFile` instance.
///
/// The `GMappedFile` represents a file mapping created with
/// `g_mapped_file_new()`. It has only private members and should
/// not be accessed directly.
public struct MappedFileRef: MappedFileProtocol {
        /// Untyped pointer to the underlying `GMappedFile` instance.
    /// For type-safe access, use the generated, typed pointer `mapped_file_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MappedFileRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GMappedFile>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MappedFileProtocol`
    init<T: MappedFileProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MappedFileProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MappedFileProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MappedFileProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MappedFileProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MappedFileProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Maps a file into memory. On UNIX, this is using the `mmap()` function.
    /// 
    /// If `writable` is `true`, the mapped buffer may be modified, otherwise
    /// it is an error to modify the mapped buffer. Modifications to the buffer
    /// are not visible to other processes mapping the same file, and are not
    /// written back to the file.
    /// 
    /// Note that modifications of the underlying file might affect the contents
    /// of the `GMappedFile`. Therefore, mapping should only be used if the file
    /// will not be modified, or if all modifications of the file are done
    /// atomically (e.g. using `g_file_set_contents()`).
    /// 
    /// If `filename` is the name of an empty, regular file, the function
    /// will successfully return an empty `GMappedFile`. In other cases of
    /// size 0 (e.g. device files such as /dev/null), `error` will be set
    /// to the `GFileError` value `G_FILE_ERROR_INVAL`.
    init( String_: UnsafePointer<gchar>, writable: Bool) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GMappedFile>! = cast(g_mapped_file_new(String_, gboolean(writable ? 1 : 0), &error))
        if let error = error { throw ErrorType(error) }
        ptr = UnsafeMutableRawPointer(cast(rv))
    }

    /// Maps a file into memory. On UNIX, this is using the `mmap()` function.
    /// 
    /// If `writable` is `true`, the mapped buffer may be modified, otherwise
    /// it is an error to modify the mapped buffer. Modifications to the buffer
    /// are not visible to other processes mapping the same file, and are not
    /// written back to the file.
    /// 
    /// Note that modifications of the underlying file might affect the contents
    /// of the `GMappedFile`. Therefore, mapping should only be used if the file
    /// will not be modified, or if all modifications of the file are done
    /// atomically (e.g. using `g_file_set_contents()`).
    init(fd: CInt, writable: Bool) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GMappedFile>! = cast(g_mapped_file_new_from_fd(gint(fd), gboolean(writable ? 1 : 0), &error))
        if let error = error { throw ErrorType(error) }
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
    /// Maps a file into memory. On UNIX, this is using the `mmap()` function.
    /// 
    /// If `writable` is `true`, the mapped buffer may be modified, otherwise
    /// it is an error to modify the mapped buffer. Modifications to the buffer
    /// are not visible to other processes mapping the same file, and are not
    /// written back to the file.
    /// 
    /// Note that modifications of the underlying file might affect the contents
    /// of the `GMappedFile`. Therefore, mapping should only be used if the file
    /// will not be modified, or if all modifications of the file are done
    /// atomically (e.g. using `g_file_set_contents()`).
    static func newFrom(fd: CInt, writable: Bool) throws -> MappedFileRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GMappedFile>! = cast(g_mapped_file_new_from_fd(gint(fd), gboolean(writable ? 1 : 0), &error))
        if let error = error { throw ErrorType(error) }
        return rv.map { MappedFileRef(cast($0)) }
    }
}

/// The `MappedFile` type acts as a reference-counted owner of an underlying `GMappedFile` instance.
/// It provides the methods that can operate on this data type through `MappedFileProtocol` conformance.
/// Use `MappedFile` as a strong reference or owner of a `GMappedFile` instance.
///
/// The `GMappedFile` represents a file mapping created with
/// `g_mapped_file_new()`. It has only private members and should
/// not be accessed directly.
open class MappedFile: MappedFileProtocol {
        /// Untyped pointer to the underlying `GMappedFile` instance.
    /// For type-safe access, use the generated, typed pointer `mapped_file_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MappedFile` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GMappedFile>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GMappedFile`.
    /// i.e., ownership is transferred to the `MappedFile` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GMappedFile>) {
        ptr = UnsafeMutableRawPointer(op)
        g_mapped_file_ref(cast(mapped_file_ptr))
    }

    /// Reference intialiser for a related type that implements `MappedFileProtocol`
    /// Will retain `GMappedFile`.
    /// - Parameter other: an instance of a related type that implements `MappedFileProtocol`
    public init<T: MappedFileProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.mapped_file_ptr)
        g_mapped_file_ref(cast(mapped_file_ptr))
    }

    /// Releases the underlying `GMappedFile` instance using `g_mapped_file_unref`.
    deinit {
        g_mapped_file_unref(cast(mapped_file_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MappedFileProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MappedFileProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_mapped_file_ref(cast(mapped_file_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MappedFileProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MappedFileProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_mapped_file_ref(cast(mapped_file_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MappedFileProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MappedFileProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_mapped_file_ref(cast(mapped_file_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MappedFileProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MappedFileProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_mapped_file_ref(cast(mapped_file_ptr))
    }

    /// Maps a file into memory. On UNIX, this is using the `mmap()` function.
    /// 
    /// If `writable` is `true`, the mapped buffer may be modified, otherwise
    /// it is an error to modify the mapped buffer. Modifications to the buffer
    /// are not visible to other processes mapping the same file, and are not
    /// written back to the file.
    /// 
    /// Note that modifications of the underlying file might affect the contents
    /// of the `GMappedFile`. Therefore, mapping should only be used if the file
    /// will not be modified, or if all modifications of the file are done
    /// atomically (e.g. using `g_file_set_contents()`).
    /// 
    /// If `filename` is the name of an empty, regular file, the function
    /// will successfully return an empty `GMappedFile`. In other cases of
    /// size 0 (e.g. device files such as /dev/null), `error` will be set
    /// to the `GFileError` value `G_FILE_ERROR_INVAL`.
    public init( String_: UnsafePointer<gchar>, writable: Bool) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GMappedFile>! = cast(g_mapped_file_new(String_, gboolean(writable ? 1 : 0), &error))
        if let error = error { throw ErrorType(error) }
        ptr = UnsafeMutableRawPointer(cast(rv))
    }

    /// Maps a file into memory. On UNIX, this is using the `mmap()` function.
    /// 
    /// If `writable` is `true`, the mapped buffer may be modified, otherwise
    /// it is an error to modify the mapped buffer. Modifications to the buffer
    /// are not visible to other processes mapping the same file, and are not
    /// written back to the file.
    /// 
    /// Note that modifications of the underlying file might affect the contents
    /// of the `GMappedFile`. Therefore, mapping should only be used if the file
    /// will not be modified, or if all modifications of the file are done
    /// atomically (e.g. using `g_file_set_contents()`).
    public init(fd: CInt, writable: Bool) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GMappedFile>! = cast(g_mapped_file_new_from_fd(gint(fd), gboolean(writable ? 1 : 0), &error))
        if let error = error { throw ErrorType(error) }
        ptr = UnsafeMutableRawPointer(cast(rv))
    }

    /// Maps a file into memory. On UNIX, this is using the `mmap()` function.
    /// 
    /// If `writable` is `true`, the mapped buffer may be modified, otherwise
    /// it is an error to modify the mapped buffer. Modifications to the buffer
    /// are not visible to other processes mapping the same file, and are not
    /// written back to the file.
    /// 
    /// Note that modifications of the underlying file might affect the contents
    /// of the `GMappedFile`. Therefore, mapping should only be used if the file
    /// will not be modified, or if all modifications of the file are done
    /// atomically (e.g. using `g_file_set_contents()`).
    public static func newFrom(fd: CInt, writable: Bool) throws -> MappedFile! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GMappedFile>! = cast(g_mapped_file_new_from_fd(gint(fd), gboolean(writable ? 1 : 0), &error))
        if let error = error { throw ErrorType(error) }
        return rv.map { MappedFile(cast($0)) }
    }

}

// MARK: no MappedFile properties

// MARK: no MappedFile signals


// MARK: MappedFile Record: MappedFileProtocol extension (methods and fields)
public extension MappedFileProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMappedFile` instance.
    var mapped_file_ptr: UnsafeMutablePointer<GMappedFile> { return ptr.assumingMemoryBound(to: GMappedFile.self) }

    /// This call existed before `GMappedFile` had refcounting and is currently
    /// exactly the same as `g_mapped_file_unref()`.
    ///
    /// **free is deprecated:**
    /// Use g_mapped_file_unref() instead.
    @available(*, deprecated) func free() {
        g_mapped_file_free(cast(mapped_file_ptr))
    
    }

    /// Creates a new `GBytes` which references the data mapped from `file`.
    /// The mapped contents of the file must not be modified after creating this
    /// bytes object, because a `GBytes` should be immutable.
    func getBytes() -> UnsafeMutablePointer<GBytes>! {
        let rv: UnsafeMutablePointer<GBytes>! = cast(g_mapped_file_get_bytes(cast(mapped_file_ptr)))
        return cast(rv)
    }

    /// Returns the contents of a `GMappedFile`.
    /// 
    /// Note that the contents may not be zero-terminated,
    /// even if the `GMappedFile` is backed by a text file.
    /// 
    /// If the file is empty then `nil` is returned.
    func getContents() -> String! {
        let rv: String! = cast(g_mapped_file_get_contents(cast(mapped_file_ptr)))
        return cast(rv)
    }

    /// Returns the length of the contents of a `GMappedFile`.
    func getLength() -> Int {
        let rv = g_mapped_file_get_length(cast(mapped_file_ptr))
        return Int(rv)
    }

    /// Increments the reference count of `file` by one.  It is safe to call
    /// this function from any thread.
    @discardableResult func ref() -> UnsafeMutablePointer<GMappedFile>! {
        let rv: UnsafeMutablePointer<GMappedFile>! = cast(g_mapped_file_ref(cast(mapped_file_ptr)))
        return cast(rv)
    }

    /// Decrements the reference count of `file` by one.  If the reference count
    /// drops to 0, unmaps the buffer of `file` and frees it.
    /// 
    /// It is safe to call this function from any thread.
    /// 
    /// Since 2.22
    func unref() {
        g_mapped_file_unref(cast(mapped_file_ptr))
    
    }
    /// Creates a new `GBytes` which references the data mapped from `file`.
    /// The mapped contents of the file must not be modified after creating this
    /// bytes object, because a `GBytes` should be immutable.
    var bytes: UnsafeMutablePointer<GBytes>! {
        /// Creates a new `GBytes` which references the data mapped from `file`.
        /// The mapped contents of the file must not be modified after creating this
        /// bytes object, because a `GBytes` should be immutable.
        get {
            let rv: UnsafeMutablePointer<GBytes>! = cast(g_mapped_file_get_bytes(cast(mapped_file_ptr)))
            return cast(rv)
        }
    }

    /// Returns the contents of a `GMappedFile`.
    /// 
    /// Note that the contents may not be zero-terminated,
    /// even if the `GMappedFile` is backed by a text file.
    /// 
    /// If the file is empty then `nil` is returned.
    var contents: String! {
        /// Returns the contents of a `GMappedFile`.
        /// 
        /// Note that the contents may not be zero-terminated,
        /// even if the `GMappedFile` is backed by a text file.
        /// 
        /// If the file is empty then `nil` is returned.
        get {
            let rv: String! = cast(g_mapped_file_get_contents(cast(mapped_file_ptr)))
            return cast(rv)
        }
    }

    /// Returns the length of the contents of a `GMappedFile`.
    var length: Int {
        /// Returns the length of the contents of a `GMappedFile`.
        get {
            let rv = g_mapped_file_get_length(cast(mapped_file_ptr))
            return Int(rv)
        }
    }


}



