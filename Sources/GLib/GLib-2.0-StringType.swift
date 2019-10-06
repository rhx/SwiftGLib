import CGLib

// MARK: - String Record

/// The `StringTypeProtocol` protocol exposes the methods and properties of an underlying `GString` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StringType`.
/// Alternatively, use `StringTypeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The GString struct contains the public fields of a GString.
public protocol StringTypeProtocol {
    /// Untyped pointer to the underlying `GString` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GString` instance.
    var gstring_ptr: UnsafeMutablePointer<GString> { get }
}

/// The `StringRef` type acts as a lightweight Swift reference to an underlying `GString` instance.
/// It exposes methods that can operate on this data type through `StringTypeProtocol` conformance.
/// Use `StringRef` only as an `unowned` reference to an existing `GString` instance.
///
/// The GString struct contains the public fields of a GString.
public struct StringRef: StringTypeProtocol {
    /// Untyped pointer to the underlying `GString` instance.
    /// For type-safe access, use the generated, typed pointer `gstring_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension StringRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GString>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `StringTypeProtocol`
    init<T: StringTypeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringTypeProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringTypeProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringTypeProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringTypeProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringTypeProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `StringType` type acts as an owner of an underlying `GString` instance.
/// It provides the methods that can operate on this data type through `StringTypeProtocol` conformance.
/// Use `StringType` as a strong reference or owner of a `GString` instance.
///
/// The GString struct contains the public fields of a GString.
open class StringType: StringTypeProtocol {
    /// Untyped pointer to the underlying `GString` instance.
    /// For type-safe access, use the generated, typed pointer `gstring_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `StringType` instance.
    public init(_ op: UnsafeMutablePointer<GString>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `StringTypeProtocol`
    /// `GString` does not allow reference counting.
    public convenience init<T: StringTypeProtocol>(_ other: T) {
        self.init(cast(other.gstring_ptr))
        // no reference counting for GString, cannot ref(cast(gstring_ptr))
    }

    /// Do-nothing destructor for`GString`.
    deinit {
        // no reference counting for GString, cannot unref(cast(gstring_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringTypeProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GString.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringTypeProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GString.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringTypeProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GString.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringTypeProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GString>(opaquePointer))
    }



}

// MARK: - no StringType properties

// MARK: - no signals


public extension StringTypeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GString` instance.
    var gstring_ptr: UnsafeMutablePointer<GString> { return ptr.assumingMemoryBound(to: GString.self) }

    /// Adds a string onto the end of a `GString`, expanding
    /// it if necessary.
    func append(val: UnsafePointer<gchar>) -> UnsafeMutablePointer<GString>! {
        let rv = g_string_append(cast(gstring_ptr), val)
        return cast(rv)
    }

    /// Adds a byte onto the end of a `GString`, expanding
    /// it if necessary.
    func append(c: gchar) -> UnsafeMutablePointer<GString>! {
        let rv = g_string_append_c(cast(gstring_ptr), c)
        return cast(rv)
    }

    /// Appends `len` bytes of `val` to `string`.
    /// 
    /// If `len` is positive, `val` may contain embedded nuls and need
    /// not be nul-terminated. It is the caller's responsibility to
    /// ensure that `val` has at least `len` addressable bytes.
    /// 
    /// If `len` is negative, `val` must be nul-terminated and `len`
    /// is considered to request the entire string length. This
    /// makes `g_string_append_len()` equivalent to `g_string_append()`.
    func appendLen(val: UnsafePointer<gchar>, len: gssize) -> UnsafeMutablePointer<GString>! {
        let rv = g_string_append_len(cast(gstring_ptr), val, len)
        return cast(rv)
    }


    // *** appendPrintf() is not available because it has a varargs (...) parameter!


    /// Converts a Unicode character into UTF-8, and appends it
    /// to the string.
    func appendUnichar(wc: gunichar) -> UnsafeMutablePointer<GString>! {
        let rv = g_string_append_unichar(cast(gstring_ptr), wc)
        return cast(rv)
    }

    /// Appends `unescaped` to `string`, escaped any characters that
    /// are reserved in URIs using URI-style escape sequences.
    func appendURIEscaped(unescaped: UnsafePointer<gchar>, reservedCharsAllowed reserved_chars_allowed: UnsafePointer<gchar>, allowUTF8 allow_utf8: Bool) -> UnsafeMutablePointer<GString>! {
        let rv = g_string_append_uri_escaped(cast(gstring_ptr), unescaped, reserved_chars_allowed, gboolean(allow_utf8 ? 1 : 0))
        return cast(rv)
    }

    /// Appends a formatted string onto the end of a `GString`.
    /// This function is similar to `g_string_append_printf()`
    /// except that the arguments to the format string are passed
    /// as a va_list.
    func appendVprintf(format: UnsafePointer<gchar>, args: CVaListPointer) {
        g_string_append_vprintf(cast(gstring_ptr), format, args)
    
    }

    /// Converts all uppercase ASCII letters to lowercase ASCII letters.
    func asciiDown() -> UnsafeMutablePointer<GString>! {
        let rv = g_string_ascii_down(cast(gstring_ptr))
        return cast(rv)
    }

    /// Converts all lowercase ASCII letters to uppercase ASCII letters.
    func asciiUp() -> UnsafeMutablePointer<GString>! {
        let rv = g_string_ascii_up(cast(gstring_ptr))
        return cast(rv)
    }

    /// Copies the bytes from a string into a `GString`,
    /// destroying any previous contents. It is rather like
    /// the standard `strcpy()` function, except that you do not
    /// have to worry about having enough space to copy the string.
    func assign(rval: UnsafePointer<gchar>) -> UnsafeMutablePointer<GString>! {
        let rv = g_string_assign(cast(gstring_ptr), rval)
        return cast(rv)
    }

    /// Converts a `GString` to lowercase.
    ///
    /// **down is deprecated:**
    /// This function uses the locale-specific
    ///     tolower() function, which is almost never the right thing.
    ///     Use g_string_ascii_down() or g_utf8_strdown() instead.
    @available(*, deprecated) func down() -> UnsafeMutablePointer<GString>! {
        let rv = g_string_down(cast(gstring_ptr))
        return cast(rv)
    }

    /// Compares two strings for equality, returning `true` if they are equal.
    /// For use with `GHashTable`.
    func equal(v2: StringTypeProtocol) -> Bool {
        let rv = g_string_equal(cast(gstring_ptr), cast(v2.ptr))
        return Bool(rv != 0)
    }

    /// Removes `len` bytes from a `GString`, starting at position `pos`.
    /// The rest of the `GString` is shifted down to fill the gap.
    func erase(pos: gssize, len: gssize) -> UnsafeMutablePointer<GString>! {
        let rv = g_string_erase(cast(gstring_ptr), pos, len)
        return cast(rv)
    }

    /// Frees the memory allocated for the `GString`.
    /// If `free_segment` is `true` it also frees the character data.  If
    /// it's `false`, the caller gains ownership of the buffer and must
    /// free it after use with `g_free()`.
    func free(freeSegment free_segment: Bool) -> String! {
        let rv = g_string_free(cast(gstring_ptr), gboolean(free_segment ? 1 : 0))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Transfers ownership of the contents of `string` to a newly allocated
    /// `GBytes`.  The `GString` structure itself is deallocated, and it is
    /// therefore invalid to use `string` after invoking this function.
    /// 
    /// Note that while `GString` ensures that its buffer always has a
    /// trailing nul character (not reflected in its "len"), the returned
    /// `GBytes` does not include this extra nul; i.e. it has length exactly
    /// equal to the "len" member.
    func freeToBytes() -> UnsafeMutablePointer<GBytes>! {
        let rv = g_string_free_to_bytes(cast(gstring_ptr))
        return cast(rv)
    }

    /// Creates a hash code for `str`; for use with `GHashTable`.
    func hash() -> CUnsignedInt {
        let rv = g_string_hash(cast(gstring_ptr))
        return CUnsignedInt(rv)
    }

    /// Inserts a copy of a string into a `GString`,
    /// expanding it if necessary.
    func insert(pos: gssize, val: UnsafePointer<gchar>) -> UnsafeMutablePointer<GString>! {
        let rv = g_string_insert(cast(gstring_ptr), pos, val)
        return cast(rv)
    }

    /// Inserts a byte into a `GString`, expanding it if necessary.
    func insertC(pos: gssize, c: gchar) -> UnsafeMutablePointer<GString>! {
        let rv = g_string_insert_c(cast(gstring_ptr), pos, c)
        return cast(rv)
    }

    /// Inserts `len` bytes of `val` into `string` at `pos`.
    /// 
    /// If `len` is positive, `val` may contain embedded nuls and need
    /// not be nul-terminated. It is the caller's responsibility to
    /// ensure that `val` has at least `len` addressable bytes.
    /// 
    /// If `len` is negative, `val` must be nul-terminated and `len`
    /// is considered to request the entire string length.
    /// 
    /// If `pos` is -1, bytes are inserted at the end of the string.
    func insertLen(pos: gssize, val: UnsafePointer<gchar>, len: gssize) -> UnsafeMutablePointer<GString>! {
        let rv = g_string_insert_len(cast(gstring_ptr), pos, val, len)
        return cast(rv)
    }

    /// Converts a Unicode character into UTF-8, and insert it
    /// into the string at the given position.
    func insertUnichar(pos: gssize, wc: gunichar) -> UnsafeMutablePointer<GString>! {
        let rv = g_string_insert_unichar(cast(gstring_ptr), pos, wc)
        return cast(rv)
    }

    /// Overwrites part of a string, lengthening it if necessary.
    func overwrite(pos: Int, val: UnsafePointer<gchar>) -> UnsafeMutablePointer<GString>! {
        let rv = g_string_overwrite(cast(gstring_ptr), gsize(pos), val)
        return cast(rv)
    }

    /// Overwrites part of a string, lengthening it if necessary.
    /// This function will work with embedded nuls.
    func overwriteLen(pos: Int, val: UnsafePointer<gchar>, len: gssize) -> UnsafeMutablePointer<GString>! {
        let rv = g_string_overwrite_len(cast(gstring_ptr), gsize(pos), val, len)
        return cast(rv)
    }

    /// Adds a string on to the start of a `GString`,
    /// expanding it if necessary.
    func prepend(val: UnsafePointer<gchar>) -> UnsafeMutablePointer<GString>! {
        let rv = g_string_prepend(cast(gstring_ptr), val)
        return cast(rv)
    }

    /// Adds a byte onto the start of a `GString`,
    /// expanding it if necessary.
    func prepend(c: gchar) -> UnsafeMutablePointer<GString>! {
        let rv = g_string_prepend_c(cast(gstring_ptr), c)
        return cast(rv)
    }

    /// Prepends `len` bytes of `val` to `string`.
    /// 
    /// If `len` is positive, `val` may contain embedded nuls and need
    /// not be nul-terminated. It is the caller's responsibility to
    /// ensure that `val` has at least `len` addressable bytes.
    /// 
    /// If `len` is negative, `val` must be nul-terminated and `len`
    /// is considered to request the entire string length. This
    /// makes `g_string_prepend_len()` equivalent to `g_string_prepend()`.
    func prependLen(val: UnsafePointer<gchar>, len: gssize) -> UnsafeMutablePointer<GString>! {
        let rv = g_string_prepend_len(cast(gstring_ptr), val, len)
        return cast(rv)
    }

    /// Converts a Unicode character into UTF-8, and prepends it
    /// to the string.
    func prependUnichar(wc: gunichar) -> UnsafeMutablePointer<GString>! {
        let rv = g_string_prepend_unichar(cast(gstring_ptr), wc)
        return cast(rv)
    }


    // *** printf() is not available because it has a varargs (...) parameter!


    /// Sets the length of a `GString`. If the length is less than
    /// the current length, the string will be truncated. If the
    /// length is greater than the current length, the contents
    /// of the newly added area are undefined. (However, as
    /// always, string->str[string->len] will be a nul byte.)
    func setSize(len: Int) -> UnsafeMutablePointer<GString>! {
        let rv = g_string_set_size(cast(gstring_ptr), gsize(len))
        return cast(rv)
    }

    /// Cuts off the end of the GString, leaving the first `len` bytes.
    func truncate(len: Int) -> UnsafeMutablePointer<GString>! {
        let rv = g_string_truncate(cast(gstring_ptr), gsize(len))
        return cast(rv)
    }

    /// Converts a `GString` to uppercase.
    ///
    /// **up is deprecated:**
    /// This function uses the locale-specific
    ///     toupper() function, which is almost never the right thing.
    ///     Use g_string_ascii_up() or g_utf8_strup() instead.
    @available(*, deprecated) func up() -> UnsafeMutablePointer<GString>! {
        let rv = g_string_up(cast(gstring_ptr))
        return cast(rv)
    }

    /// Writes a formatted string into a `GString`.
    /// This function is similar to `g_string_printf()` except that
    /// the arguments to the format string are passed as a va_list.
    func vprintf(format: UnsafePointer<gchar>, args: CVaListPointer) {
        g_string_vprintf(cast(gstring_ptr), format, args)
    
    }
}



