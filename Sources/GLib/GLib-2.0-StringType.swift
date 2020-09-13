import CGLib

// MARK: - String Record

/// The `StringProtocol` protocol exposes the methods and properties of an underlying `GString` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StringType`.
/// Alternatively, use `StringRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The GString struct contains the public fields of a GString.
public protocol StringProtocol {
        /// Untyped pointer to the underlying `GString` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GString` instance.
    var gstring_ptr: UnsafeMutablePointer<GString>! { get }

}

/// The `StringRef` type acts as a lightweight Swift reference to an underlying `GString` instance.
/// It exposes methods that can operate on this data type through `StringProtocol` conformance.
/// Use `StringRef` only as an `unowned` reference to an existing `GString` instance.
///
/// The GString struct contains the public fields of a GString.
public struct StringRef: StringProtocol {
        /// Untyped pointer to the underlying `GString` instance.
    /// For type-safe access, use the generated, typed pointer `gstring_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension StringRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GString>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GString>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GString>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GString>?) {
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

    /// Reference intialiser for a related type that implements `StringProtocol`
    @inlinable init<T: StringProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `StringType` type acts as an owner of an underlying `GString` instance.
/// It provides the methods that can operate on this data type through `StringProtocol` conformance.
/// Use `StringType` as a strong reference or owner of a `GString` instance.
///
/// The GString struct contains the public fields of a GString.
open class StringType: StringProtocol {
        /// Untyped pointer to the underlying `GString` instance.
    /// For type-safe access, use the generated, typed pointer `gstring_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StringType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GString>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StringType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GString>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StringType` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StringType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StringType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GString>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StringType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GString>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GString` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `StringType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GString>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GString, cannot ref(gstring_ptr)
    }

    /// Reference intialiser for a related type that implements `StringProtocol`
    /// `GString` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `StringProtocol`
    @inlinable public init<T: StringProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GString, cannot ref(gstring_ptr)
    }

    /// Do-nothing destructor for `GString`.
    deinit {
        // no reference counting for GString, cannot unref(gstring_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GString, cannot ref(gstring_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GString, cannot ref(gstring_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GString, cannot ref(gstring_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GString, cannot ref(gstring_ptr)
    }



}

// MARK: no StringType properties

// MARK: no StringType signals


// MARK: String Record: StringProtocol extension (methods and fields)
public extension StringProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GString` instance.
    @inlinable var gstring_ptr: UnsafeMutablePointer<GString>! { return ptr?.assumingMemoryBound(to: GString.self) }

    /// Adds a string onto the end of a `GString`, expanding
    /// it if necessary.
    @inlinable func append(val: UnsafePointer<gchar>!) -> StringRef! {
        guard let rv = StringRef(gconstpointer: gconstpointer(g_string_append(gstring_ptr, val))) else { return nil }
        return rv
    }

    /// Adds a byte onto the end of a `GString`, expanding
    /// it if necessary.
    @inlinable func append(c: gchar) -> StringRef! {
        guard let rv = StringRef(gconstpointer: gconstpointer(g_string_append_c(gstring_ptr, c))) else { return nil }
        return rv
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
    @inlinable func appendLen(val: UnsafePointer<gchar>!, len: gssize) -> StringRef! {
        guard let rv = StringRef(gconstpointer: gconstpointer(g_string_append_len(gstring_ptr, val, len))) else { return nil }
        return rv
    }


    // *** appendPrintf() is not available because it has a varargs (...) parameter!


    /// Converts a Unicode character into UTF-8, and appends it
    /// to the string.
    @inlinable func appendUnichar(wc: gunichar) -> StringRef! {
        guard let rv = StringRef(gconstpointer: gconstpointer(g_string_append_unichar(gstring_ptr, wc))) else { return nil }
        return rv
    }

    /// Appends `unescaped` to `string`, escaped any characters that
    /// are reserved in URIs using URI-style escape sequences.
    @inlinable func appendURIEscaped(unescaped: UnsafePointer<gchar>!, reservedCharsAllowed: UnsafePointer<gchar>!, allowUTF8: Bool) -> StringRef! {
        guard let rv = StringRef(gconstpointer: gconstpointer(g_string_append_uri_escaped(gstring_ptr, unescaped, reservedCharsAllowed, gboolean((allowUTF8) ? 1 : 0)))) else { return nil }
        return rv
    }

    /// Appends a formatted string onto the end of a `GString`.
    /// This function is similar to `g_string_append_printf()`
    /// except that the arguments to the format string are passed
    /// as a va_list.
    @inlinable func appendVprintf(format: UnsafePointer<gchar>!, args: CVaListPointer) {
        g_string_append_vprintf(gstring_ptr, format, args)
    
    }

    /// Converts all uppercase ASCII letters to lowercase ASCII letters.
    @inlinable func asciiDown() -> StringRef! {
        guard let rv = StringRef(gconstpointer: gconstpointer(g_string_ascii_down(gstring_ptr))) else { return nil }
        return rv
    }

    /// Converts all lowercase ASCII letters to uppercase ASCII letters.
    @inlinable func asciiUp() -> StringRef! {
        guard let rv = StringRef(gconstpointer: gconstpointer(g_string_ascii_up(gstring_ptr))) else { return nil }
        return rv
    }

    /// Copies the bytes from a string into a `GString`,
    /// destroying any previous contents. It is rather like
    /// the standard `strcpy()` function, except that you do not
    /// have to worry about having enough space to copy the string.
    @inlinable func assign(rval: UnsafePointer<gchar>!) -> StringRef! {
        guard let rv = StringRef(gconstpointer: gconstpointer(g_string_assign(gstring_ptr, rval))) else { return nil }
        return rv
    }

    /// Converts a `GString` to lowercase.
    ///
    /// **down is deprecated:**
    /// This function uses the locale-specific
    ///     tolower() function, which is almost never the right thing.
    ///     Use g_string_ascii_down() or g_utf8_strdown() instead.
    @available(*, deprecated) @inlinable func down() -> StringRef! {
        guard let rv = StringRef(gconstpointer: gconstpointer(g_string_down(gstring_ptr))) else { return nil }
        return rv
    }

    /// Compares two strings for equality, returning `true` if they are equal.
    /// For use with `GHashTable`.
    @inlinable func equal<StringTypeT: StringProtocol>(v2: StringTypeT) -> Bool {
        let rv = ((g_string_equal(gstring_ptr, v2.gstring_ptr)) != 0)
        return rv
    }

    /// Removes `len` bytes from a `GString`, starting at position `pos`.
    /// The rest of the `GString` is shifted down to fill the gap.
    @inlinable func erase(pos: gssize, len: gssize) -> StringRef! {
        guard let rv = StringRef(gconstpointer: gconstpointer(g_string_erase(gstring_ptr, pos, len))) else { return nil }
        return rv
    }

    /// Frees the memory allocated for the `GString`.
    /// If `free_segment` is `true` it also frees the character data.  If
    /// it's `false`, the caller gains ownership of the buffer and must
    /// free it after use with `g_free()`.
    @inlinable func free(freeSegment: Bool) -> String! {
        let rv = g_string_free(gstring_ptr, gboolean((freeSegment) ? 1 : 0)).map({ String(cString: $0) })
        return rv
    }

    /// Transfers ownership of the contents of `string` to a newly allocated
    /// `GBytes`.  The `GString` structure itself is deallocated, and it is
    /// therefore invalid to use `string` after invoking this function.
    /// 
    /// Note that while `GString` ensures that its buffer always has a
    /// trailing nul character (not reflected in its "len"), the returned
    /// `GBytes` does not include this extra nul; i.e. it has length exactly
    /// equal to the "len" member.
    @inlinable func freeToBytes() -> BytesRef! {
        let rv = BytesRef(gconstpointer: gconstpointer(g_string_free_to_bytes(gstring_ptr)))
        return rv
    }

    /// Creates a hash code for `str`; for use with `GHashTable`.
    @inlinable func hash() -> Int {
        let rv = Int(g_string_hash(gstring_ptr))
        return rv
    }

    /// Inserts a copy of a string into a `GString`,
    /// expanding it if necessary.
    @inlinable func insert(pos: gssize, val: UnsafePointer<gchar>!) -> StringRef! {
        guard let rv = StringRef(gconstpointer: gconstpointer(g_string_insert(gstring_ptr, pos, val))) else { return nil }
        return rv
    }

    /// Inserts a byte into a `GString`, expanding it if necessary.
    @inlinable func insertC(pos: gssize, c: gchar) -> StringRef! {
        guard let rv = StringRef(gconstpointer: gconstpointer(g_string_insert_c(gstring_ptr, pos, c))) else { return nil }
        return rv
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
    @inlinable func insertLen(pos: gssize, val: UnsafePointer<gchar>!, len: gssize) -> StringRef! {
        guard let rv = StringRef(gconstpointer: gconstpointer(g_string_insert_len(gstring_ptr, pos, val, len))) else { return nil }
        return rv
    }

    /// Converts a Unicode character into UTF-8, and insert it
    /// into the string at the given position.
    @inlinable func insertUnichar(pos: gssize, wc: gunichar) -> StringRef! {
        guard let rv = StringRef(gconstpointer: gconstpointer(g_string_insert_unichar(gstring_ptr, pos, wc))) else { return nil }
        return rv
    }

    /// Overwrites part of a string, lengthening it if necessary.
    @inlinable func overwrite(pos: Int, val: UnsafePointer<gchar>!) -> StringRef! {
        guard let rv = StringRef(gconstpointer: gconstpointer(g_string_overwrite(gstring_ptr, gsize(pos), val))) else { return nil }
        return rv
    }

    /// Overwrites part of a string, lengthening it if necessary.
    /// This function will work with embedded nuls.
    @inlinable func overwriteLen(pos: Int, val: UnsafePointer<gchar>!, len: gssize) -> StringRef! {
        guard let rv = StringRef(gconstpointer: gconstpointer(g_string_overwrite_len(gstring_ptr, gsize(pos), val, len))) else { return nil }
        return rv
    }

    /// Adds a string on to the start of a `GString`,
    /// expanding it if necessary.
    @inlinable func prepend(val: UnsafePointer<gchar>!) -> StringRef! {
        guard let rv = StringRef(gconstpointer: gconstpointer(g_string_prepend(gstring_ptr, val))) else { return nil }
        return rv
    }

    /// Adds a byte onto the start of a `GString`,
    /// expanding it if necessary.
    @inlinable func prepend(c: gchar) -> StringRef! {
        guard let rv = StringRef(gconstpointer: gconstpointer(g_string_prepend_c(gstring_ptr, c))) else { return nil }
        return rv
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
    @inlinable func prependLen(val: UnsafePointer<gchar>!, len: gssize) -> StringRef! {
        guard let rv = StringRef(gconstpointer: gconstpointer(g_string_prepend_len(gstring_ptr, val, len))) else { return nil }
        return rv
    }

    /// Converts a Unicode character into UTF-8, and prepends it
    /// to the string.
    @inlinable func prependUnichar(wc: gunichar) -> StringRef! {
        guard let rv = StringRef(gconstpointer: gconstpointer(g_string_prepend_unichar(gstring_ptr, wc))) else { return nil }
        return rv
    }


    // *** printf() is not available because it has a varargs (...) parameter!


    /// Sets the length of a `GString`. If the length is less than
    /// the current length, the string will be truncated. If the
    /// length is greater than the current length, the contents
    /// of the newly added area are undefined. (However, as
    /// always, string->str[string->len] will be a nul byte.)
    @inlinable func setSize(len: Int) -> StringRef! {
        guard let rv = StringRef(gconstpointer: gconstpointer(g_string_set_size(gstring_ptr, gsize(len)))) else { return nil }
        return rv
    }

    /// Cuts off the end of the GString, leaving the first `len` bytes.
    @inlinable func truncate(len: Int) -> StringRef! {
        guard let rv = StringRef(gconstpointer: gconstpointer(g_string_truncate(gstring_ptr, gsize(len)))) else { return nil }
        return rv
    }

    /// Converts a `GString` to uppercase.
    ///
    /// **up is deprecated:**
    /// This function uses the locale-specific
    ///     toupper() function, which is almost never the right thing.
    ///     Use g_string_ascii_up() or g_utf8_strup() instead.
    @available(*, deprecated) @inlinable func up() -> StringRef! {
        guard let rv = StringRef(gconstpointer: gconstpointer(g_string_up(gstring_ptr))) else { return nil }
        return rv
    }

    /// Writes a formatted string into a `GString`.
    /// This function is similar to `g_string_printf()` except that
    /// the arguments to the format string are passed as a va_list.
    @inlinable func vprintf(format: UnsafePointer<gchar>!, args: CVaListPointer) {
        g_string_vprintf(gstring_ptr, format, args)
    
    }

    /// points to the character data. It may move as text is added.
    ///   The `str` field is null-terminated and so
    ///   can be used as an ordinary C string.
    @inlinable var str: UnsafeMutablePointer<gchar>! {
        /// points to the character data. It may move as text is added.
        ///   The `str` field is null-terminated and so
        ///   can be used as an ordinary C string.
        get {
            let rv = gstring_ptr.pointee.str
            return rv
        }
        /// points to the character data. It may move as text is added.
        ///   The `str` field is null-terminated and so
        ///   can be used as an ordinary C string.
         set {
            gstring_ptr.pointee.str = newValue
        }
    }

    /// contains the length of the string, not including the
    ///   terminating nul byte.
    @inlinable var len: gsize {
        /// contains the length of the string, not including the
        ///   terminating nul byte.
        get {
            let rv = gstring_ptr.pointee.len
            return rv
        }
        /// contains the length of the string, not including the
        ///   terminating nul byte.
         set {
            gstring_ptr.pointee.len = newValue
        }
    }

    /// the number of bytes that can be stored in the
    ///   string before it needs to be reallocated. May be larger than `len`.
    @inlinable var allocatedLen: gsize {
        /// the number of bytes that can be stored in the
        ///   string before it needs to be reallocated. May be larger than `len`.
        get {
            let rv = gstring_ptr.pointee.allocated_len
            return rv
        }
        /// the number of bytes that can be stored in the
        ///   string before it needs to be reallocated. May be larger than `len`.
         set {
            gstring_ptr.pointee.allocated_len = newValue
        }
    }

}



