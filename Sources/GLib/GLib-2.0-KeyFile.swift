import CGLib

// MARK: - KeyFile Record

/// The `KeyFileProtocol` protocol exposes the methods and properties of an underlying `GKeyFile` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `KeyFile`.
/// Alternatively, use `KeyFileRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The GKeyFile struct contains only private data
/// and should not be accessed directly.
public protocol KeyFileProtocol {
        /// Untyped pointer to the underlying `GKeyFile` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GKeyFile` instance.
    var key_file_ptr: UnsafeMutablePointer<GKeyFile>! { get }

}

/// The `KeyFileRef` type acts as a lightweight Swift reference to an underlying `GKeyFile` instance.
/// It exposes methods that can operate on this data type through `KeyFileProtocol` conformance.
/// Use `KeyFileRef` only as an `unowned` reference to an existing `GKeyFile` instance.
///
/// The GKeyFile struct contains only private data
/// and should not be accessed directly.
public struct KeyFileRef: KeyFileProtocol {
        /// Untyped pointer to the underlying `GKeyFile` instance.
    /// For type-safe access, use the generated, typed pointer `key_file_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension KeyFileRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GKeyFile>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GKeyFile>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GKeyFile>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GKeyFile>?) {
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

    /// Reference intialiser for a related type that implements `KeyFileProtocol`
    @inlinable init<T: KeyFileProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyFileProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyFileProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyFileProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyFileProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyFileProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new empty `GKeyFile` object. Use
    /// `g_key_file_load_from_file()`, `g_key_file_load_from_data()`,
    /// `g_key_file_load_from_dirs()` or `g_key_file_load_from_data_dirs()` to
    /// read an existing key file.
    @inlinable init() {
        let rv = g_key_file_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `KeyFile` type acts as a reference-counted owner of an underlying `GKeyFile` instance.
/// It provides the methods that can operate on this data type through `KeyFileProtocol` conformance.
/// Use `KeyFile` as a strong reference or owner of a `GKeyFile` instance.
///
/// The GKeyFile struct contains only private data
/// and should not be accessed directly.
open class KeyFile: KeyFileProtocol {
        /// Untyped pointer to the underlying `GKeyFile` instance.
    /// For type-safe access, use the generated, typed pointer `key_file_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `KeyFile` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GKeyFile>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `KeyFile` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GKeyFile>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `KeyFile` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `KeyFile` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `KeyFile` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GKeyFile>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `KeyFile` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GKeyFile>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GKeyFile`.
    /// i.e., ownership is transferred to the `KeyFile` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GKeyFile>) {
        ptr = UnsafeMutableRawPointer(op)
        g_key_file_ref(ptr.assumingMemoryBound(to: GKeyFile.self))
    }

    /// Reference intialiser for a related type that implements `KeyFileProtocol`
    /// Will retain `GKeyFile`.
    /// - Parameter other: an instance of a related type that implements `KeyFileProtocol`
    @inlinable public init<T: KeyFileProtocol>(_ other: T) {
        ptr = other.ptr
        g_key_file_ref(ptr.assumingMemoryBound(to: GKeyFile.self))
    }

    /// Releases the underlying `GKeyFile` instance using `g_key_file_unref`.
    deinit {
        g_key_file_unref(ptr.assumingMemoryBound(to: GKeyFile.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyFileProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyFileProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_key_file_ref(ptr.assumingMemoryBound(to: GKeyFile.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyFileProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyFileProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_key_file_ref(ptr.assumingMemoryBound(to: GKeyFile.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyFileProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyFileProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_key_file_ref(ptr.assumingMemoryBound(to: GKeyFile.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyFileProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyFileProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_key_file_ref(ptr.assumingMemoryBound(to: GKeyFile.self))
    }

    /// Creates a new empty `GKeyFile` object. Use
    /// `g_key_file_load_from_file()`, `g_key_file_load_from_data()`,
    /// `g_key_file_load_from_dirs()` or `g_key_file_load_from_data_dirs()` to
    /// read an existing key file.
    @inlinable public init() {
        let rv = g_key_file_new()
        ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no KeyFile properties

// MARK: no KeyFile signals


// MARK: KeyFile Record: KeyFileProtocol extension (methods and fields)
public extension KeyFileProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GKeyFile` instance.
    @inlinable var key_file_ptr: UnsafeMutablePointer<GKeyFile>! { return ptr?.assumingMemoryBound(to: GKeyFile.self) }

    /// Clears all keys and groups from `key_file`, and decreases the
    /// reference count by 1. If the reference count reaches zero,
    /// frees the key file and all its allocated memory.
    @inlinable func free() {
        g_key_file_free(key_file_ptr)
    
    }

    /// Returns the value associated with `key` under `group_name` as a
    /// boolean.
    /// 
    /// If `key` cannot be found then `false` is returned and `error` is set
    /// to `G_KEY_FILE_ERROR_KEY_NOT_FOUND`. Likewise, if the value
    /// associated with `key` cannot be interpreted as a boolean then `false`
    /// is returned and `error` is set to `G_KEY_FILE_ERROR_INVALID_VALUE`.
    @inlinable func getBoolean(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_key_file_get_boolean(key_file_ptr, groupName, key, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Returns the values associated with `key` under `group_name` as
    /// booleans.
    /// 
    /// If `key` cannot be found then `nil` is returned and `error` is set to
    /// `G_KEY_FILE_ERROR_KEY_NOT_FOUND`. Likewise, if the values associated
    /// with `key` cannot be interpreted as booleans then `nil` is returned
    /// and `error` is set to `G_KEY_FILE_ERROR_INVALID_VALUE`.
    @inlinable func getBooleanList(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!, length: UnsafeMutablePointer<gsize>!) throws -> UnsafeMutablePointer<gboolean>! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_key_file_get_boolean_list(key_file_ptr, groupName, key, length, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Retrieves a comment above `key` from `group_name`.
    /// If `key` is `nil` then `comment` will be read from above
    /// `group_name`. If both `key` and `group_name` are `nil`, then
    /// `comment` will be read from above the first group in the file.
    /// 
    /// Note that the returned string does not include the '#' comment markers,
    /// but does include any whitespace after them (on each line). It includes
    /// the line breaks between lines, but does not include the final line break.
    @inlinable func getComment(groupName: UnsafePointer<gchar>? = nil, key: UnsafePointer<gchar>!) throws -> String! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_key_file_get_comment(key_file_ptr, groupName, key, &error).map({ String(cString: $0) })
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Returns the value associated with `key` under `group_name` as a
    /// double. If `group_name` is `nil`, the start_group is used.
    /// 
    /// If `key` cannot be found then 0.0 is returned and `error` is set to
    /// `G_KEY_FILE_ERROR_KEY_NOT_FOUND`. Likewise, if the value associated
    /// with `key` cannot be interpreted as a double then 0.0 is returned
    /// and `error` is set to `G_KEY_FILE_ERROR_INVALID_VALUE`.
    @inlinable func getDouble(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!) throws -> Double {
        var error: UnsafeMutablePointer<GError>?
        let rv = Double(g_key_file_get_double(key_file_ptr, groupName, key, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Returns the values associated with `key` under `group_name` as
    /// doubles.
    /// 
    /// If `key` cannot be found then `nil` is returned and `error` is set to
    /// `G_KEY_FILE_ERROR_KEY_NOT_FOUND`. Likewise, if the values associated
    /// with `key` cannot be interpreted as doubles then `nil` is returned
    /// and `error` is set to `G_KEY_FILE_ERROR_INVALID_VALUE`.
    @inlinable func getDoubleList(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!, length: UnsafeMutablePointer<gsize>!) throws -> UnsafeMutablePointer<gdouble>! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_key_file_get_double_list(key_file_ptr, groupName, key, length, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Returns all groups in the key file loaded with `key_file`.
    /// The array of returned groups will be `nil`-terminated, so
    /// `length` may optionally be `nil`.
    @inlinable func getGroups(length: UnsafeMutablePointer<gsize>! = nil) -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        let rv = g_key_file_get_groups(key_file_ptr, length)
        return rv
    }

    /// Returns the value associated with `key` under `group_name` as a signed
    /// 64-bit integer. This is similar to `g_key_file_get_integer()` but can return
    /// 64-bit results without truncation.
    @inlinable func getInt64(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!) throws -> gint64 {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_key_file_get_int64(key_file_ptr, groupName, key, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Returns the value associated with `key` under `group_name` as an
    /// integer.
    /// 
    /// If `key` cannot be found then 0 is returned and `error` is set to
    /// `G_KEY_FILE_ERROR_KEY_NOT_FOUND`. Likewise, if the value associated
    /// with `key` cannot be interpreted as an integer, or is out of range
    /// for a `gint`, then 0 is returned
    /// and `error` is set to `G_KEY_FILE_ERROR_INVALID_VALUE`.
    @inlinable func getInteger(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!) throws -> Int {
        var error: UnsafeMutablePointer<GError>?
        let rv = Int(g_key_file_get_integer(key_file_ptr, groupName, key, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Returns the values associated with `key` under `group_name` as
    /// integers.
    /// 
    /// If `key` cannot be found then `nil` is returned and `error` is set to
    /// `G_KEY_FILE_ERROR_KEY_NOT_FOUND`. Likewise, if the values associated
    /// with `key` cannot be interpreted as integers, or are out of range for
    /// `gint`, then `nil` is returned
    /// and `error` is set to `G_KEY_FILE_ERROR_INVALID_VALUE`.
    @inlinable func getIntegerList(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!, length: UnsafeMutablePointer<gsize>!) throws -> UnsafeMutablePointer<gint>! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_key_file_get_integer_list(key_file_ptr, groupName, key, length, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Returns all keys for the group name `group_name`.  The array of
    /// returned keys will be `nil`-terminated, so `length` may
    /// optionally be `nil`. In the event that the `group_name` cannot
    /// be found, `nil` is returned and `error` is set to
    /// `G_KEY_FILE_ERROR_GROUP_NOT_FOUND`.
    @inlinable func getKeys(groupName: UnsafePointer<gchar>!, length: UnsafeMutablePointer<gsize>! = nil) throws -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_key_file_get_keys(key_file_ptr, groupName, length, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Returns the actual locale which the result of
    /// `g_key_file_get_locale_string()` or `g_key_file_get_locale_string_list()`
    /// came from.
    /// 
    /// If calling `g_key_file_get_locale_string()` or
    /// `g_key_file_get_locale_string_list()` with exactly the same `key_file`,
    /// `group_name`, `key` and `locale`, the result of those functions will
    /// have originally been tagged with the locale that is the result of
    /// this function.
    @inlinable func getLocaleForKey(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!, locale: UnsafePointer<gchar>? = nil) -> String! {
        let rv = g_key_file_get_locale_for_key(key_file_ptr, groupName, key, locale).map({ String(cString: $0) })
        return rv
    }

    /// Returns the value associated with `key` under `group_name`
    /// translated in the given `locale` if available.  If `locale` is
    /// `nil` then the current locale is assumed.
    /// 
    /// If `locale` is to be non-`nil`, or if the current locale will change over
    /// the lifetime of the `GKeyFile`, it must be loaded with
    /// `G_KEY_FILE_KEEP_TRANSLATIONS` in order to load strings for all locales.
    /// 
    /// If `key` cannot be found then `nil` is returned and `error` is set
    /// to `G_KEY_FILE_ERROR_KEY_NOT_FOUND`. If the value associated
    /// with `key` cannot be interpreted or no suitable translation can
    /// be found then the untranslated value is returned.
    @inlinable func getLocaleString(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!, locale: UnsafePointer<gchar>? = nil) throws -> String! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_key_file_get_locale_string(key_file_ptr, groupName, key, locale, &error).map({ String(cString: $0) })
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Returns the values associated with `key` under `group_name`
    /// translated in the given `locale` if available.  If `locale` is
    /// `nil` then the current locale is assumed.
    /// 
    /// If `locale` is to be non-`nil`, or if the current locale will change over
    /// the lifetime of the `GKeyFile`, it must be loaded with
    /// `G_KEY_FILE_KEEP_TRANSLATIONS` in order to load strings for all locales.
    /// 
    /// If `key` cannot be found then `nil` is returned and `error` is set
    /// to `G_KEY_FILE_ERROR_KEY_NOT_FOUND`. If the values associated
    /// with `key` cannot be interpreted or no suitable translations
    /// can be found then the untranslated values are returned. The
    /// returned array is `nil`-terminated, so `length` may optionally
    /// be `nil`.
    @inlinable func getLocaleStringList(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!, locale: UnsafePointer<gchar>? = nil, length: UnsafeMutablePointer<gsize>! = nil) throws -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_key_file_get_locale_string_list(key_file_ptr, groupName, key, locale, length, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Returns the name of the start group of the file.
    @inlinable func getStartGroup() -> String! {
        let rv = g_key_file_get_start_group(key_file_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns the string value associated with `key` under `group_name`.
    /// Unlike `g_key_file_get_value()`, this function handles escape sequences
    /// like \s.
    /// 
    /// In the event the key cannot be found, `nil` is returned and
    /// `error` is set to `G_KEY_FILE_ERROR_KEY_NOT_FOUND`.  In the
    /// event that the `group_name` cannot be found, `nil` is returned
    /// and `error` is set to `G_KEY_FILE_ERROR_GROUP_NOT_FOUND`.
    @inlinable func getString(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!) throws -> String! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_key_file_get_string(key_file_ptr, groupName, key, &error).map({ String(cString: $0) })
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Returns the values associated with `key` under `group_name`.
    /// 
    /// In the event the key cannot be found, `nil` is returned and
    /// `error` is set to `G_KEY_FILE_ERROR_KEY_NOT_FOUND`.  In the
    /// event that the `group_name` cannot be found, `nil` is returned
    /// and `error` is set to `G_KEY_FILE_ERROR_GROUP_NOT_FOUND`.
    @inlinable func getStringList(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!, length: UnsafeMutablePointer<gsize>! = nil) throws -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_key_file_get_string_list(key_file_ptr, groupName, key, length, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Returns the value associated with `key` under `group_name` as an unsigned
    /// 64-bit integer. This is similar to `g_key_file_get_integer()` but can return
    /// large positive results without truncation.
    @inlinable func getUint64(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!) throws -> guint64 {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_key_file_get_uint64(key_file_ptr, groupName, key, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Returns the raw value associated with `key` under `group_name`.
    /// Use `g_key_file_get_string()` to retrieve an unescaped UTF-8 string.
    /// 
    /// In the event the key cannot be found, `nil` is returned and
    /// `error` is set to `G_KEY_FILE_ERROR_KEY_NOT_FOUND`.  In the
    /// event that the `group_name` cannot be found, `nil` is returned
    /// and `error` is set to `G_KEY_FILE_ERROR_GROUP_NOT_FOUND`.
    @inlinable func getValue(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!) throws -> String! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_key_file_get_value(key_file_ptr, groupName, key, &error).map({ String(cString: $0) })
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Looks whether the key file has the group `group_name`.
    @inlinable func hasGroup(groupName: UnsafePointer<gchar>!) -> Bool {
        let rv = ((g_key_file_has_group(key_file_ptr, groupName)) != 0)
        return rv
    }

    /// Looks whether the key file has the key `key` in the group
    /// `group_name`.
    /// 
    /// Note that this function does not follow the rules for `GError` strictly;
    /// the return value both carries meaning and signals an error.  To use
    /// this function, you must pass a `GError` pointer in `error`, and check
    /// whether it is not `nil` to see if an error occurred.
    /// 
    /// Language bindings should use `g_key_file_get_value()` to test whether
    /// or not a key exists.
    @inlinable func hasKey(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_key_file_has_key(key_file_ptr, groupName, key, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Loads a key file from the data in `bytes` into an empty `GKeyFile` structure.
    /// If the object cannot be created then `error` is set to a `GKeyFileError`.
    @inlinable func loadFrom<BytesT: BytesProtocol>(bytes: BytesT, flags: KeyFileFlags) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_key_file_load_from_bytes(key_file_ptr, bytes.bytes_ptr, flags.value, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Loads a key file from memory into an empty `GKeyFile` structure.
    /// If the object cannot be created then `error` is set to a `GKeyFileError`.
    @inlinable func loadFrom(data: UnsafePointer<gchar>!, length: Int, flags: KeyFileFlags) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_key_file_load_from_data(key_file_ptr, data, gsize(length), flags.value, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// This function looks for a key file named `file` in the paths
    /// returned from `g_get_user_data_dir()` and `g_get_system_data_dirs()`,
    /// loads the file into `key_file` and returns the file's full path in
    /// `full_path`.  If the file could not be loaded then an `error` is
    /// set to either a `GFileError` or `GKeyFileError`.
    @inlinable func loadFromDataDirs(file: UnsafePointer<gchar>!, fullPath: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! = nil, flags: KeyFileFlags) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_key_file_load_from_data_dirs(key_file_ptr, file, fullPath, flags.value, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// This function looks for a key file named `file` in the paths
    /// specified in `search_dirs`, loads the file into `key_file` and
    /// returns the file's full path in `full_path`.
    /// 
    /// If the file could not be found in any of the `search_dirs`,
    /// `G_KEY_FILE_ERROR_NOT_FOUND` is returned. If
    /// the file is found but the OS returns an error when opening or reading the
    /// file, a `G_FILE_ERROR` is returned. If there is a problem parsing the file, a
    /// `G_KEY_FILE_ERROR` is returned.
    @inlinable func loadFromDirs(file: UnsafePointer<gchar>!, searchDirs: UnsafeMutablePointer<UnsafePointer<gchar>?>!, fullPath: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! = nil, flags: KeyFileFlags) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_key_file_load_from_dirs(key_file_ptr, file, searchDirs, fullPath, flags.value, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Loads a key file into an empty `GKeyFile` structure.
    /// 
    /// If the OS returns an error when opening or reading the file, a
    /// `G_FILE_ERROR` is returned. If there is a problem parsing the file, a
    /// `G_KEY_FILE_ERROR` is returned.
    /// 
    /// This function will never return a `G_KEY_FILE_ERROR_NOT_FOUND` error. If the
    /// `file` is not found, `G_FILE_ERROR_NOENT` is returned.
    @inlinable func loadFrom(file: UnsafePointer<gchar>!, flags: KeyFileFlags) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_key_file_load_from_file(key_file_ptr, file, flags.value, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Increases the reference count of `key_file`.
    @discardableResult @inlinable func ref() -> KeyFileRef! {
        guard let rv = KeyFileRef(gconstpointer: gconstpointer(g_key_file_ref(key_file_ptr))) else { return nil }
        return rv
    }

    /// Removes a comment above `key` from `group_name`.
    /// If `key` is `nil` then `comment` will be removed above `group_name`.
    /// If both `key` and `group_name` are `nil`, then `comment` will
    /// be removed above the first group in the file.
    @inlinable func removeComment(groupName: UnsafePointer<gchar>? = nil, key: UnsafePointer<gchar>? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_key_file_remove_comment(key_file_ptr, groupName, key, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Removes the specified group, `group_name`,
    /// from the key file.
    @inlinable func removeGroup(groupName: UnsafePointer<gchar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_key_file_remove_group(key_file_ptr, groupName, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Removes `key` in `group_name` from the key file.
    @inlinable func removeKey(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_key_file_remove_key(key_file_ptr, groupName, key, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Writes the contents of `key_file` to `filename` using
    /// `g_file_set_contents()`.
    /// 
    /// This function can fail for any of the reasons that
    /// `g_file_set_contents()` may fail.
    @inlinable func saveToFile(filename: UnsafePointer<gchar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_key_file_save_to_file(key_file_ptr, filename, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Associates a new boolean value with `key` under `group_name`.
    /// If `key` cannot be found then it is created.
    @inlinable func setBoolean(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!, value: Bool) {
        g_key_file_set_boolean(key_file_ptr, groupName, key, gboolean((value) ? 1 : 0))
    
    }

    /// Associates a list of boolean values with `key` under `group_name`.
    /// If `key` cannot be found then it is created.
    /// If `group_name` is `nil`, the start_group is used.
    @inlinable func setBooleanList(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!, list: UnsafeMutablePointer<gboolean>!, length: Int) {
        g_key_file_set_boolean_list(key_file_ptr, groupName, key, list, gsize(length))
    
    }

    /// Places a comment above `key` from `group_name`.
    /// 
    /// If `key` is `nil` then `comment` will be written above `group_name`.
    /// If both `key` and `group_name`  are `nil`, then `comment` will be
    /// written above the first group in the file.
    /// 
    /// Note that this function prepends a '#' comment marker to
    /// each line of `comment`.
    @inlinable func setComment(groupName: UnsafePointer<gchar>? = nil, key: UnsafePointer<gchar>? = nil, comment: UnsafePointer<gchar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_key_file_set_comment(key_file_ptr, groupName, key, comment, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Associates a new double value with `key` under `group_name`.
    /// If `key` cannot be found then it is created.
    @inlinable func setDouble(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!, value: Double) {
        g_key_file_set_double(key_file_ptr, groupName, key, gdouble(value))
    
    }

    /// Associates a list of double values with `key` under
    /// `group_name`.  If `key` cannot be found then it is created.
    @inlinable func setDoubleList(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!, list: UnsafeMutablePointer<gdouble>!, length: Int) {
        g_key_file_set_double_list(key_file_ptr, groupName, key, list, gsize(length))
    
    }

    /// Associates a new integer value with `key` under `group_name`.
    /// If `key` cannot be found then it is created.
    @inlinable func setInt64(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!, value: gint64) {
        g_key_file_set_int64(key_file_ptr, groupName, key, value)
    
    }

    /// Associates a new integer value with `key` under `group_name`.
    /// If `key` cannot be found then it is created.
    @inlinable func setInteger(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!, value: Int) {
        g_key_file_set_integer(key_file_ptr, groupName, key, gint(value))
    
    }

    /// Associates a list of integer values with `key` under `group_name`.
    /// If `key` cannot be found then it is created.
    @inlinable func setIntegerList(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!, list: UnsafeMutablePointer<gint>!, length: Int) {
        g_key_file_set_integer_list(key_file_ptr, groupName, key, list, gsize(length))
    
    }

    /// Sets the character which is used to separate
    /// values in lists. Typically ';' or ',' are used
    /// as separators. The default list separator is ';'.
    @inlinable func setList(separator: gchar) {
        g_key_file_set_list_separator(key_file_ptr, separator)
    
    }

    /// Associates a string value for `key` and `locale` under `group_name`.
    /// If the translation for `key` cannot be found then it is created.
    @inlinable func setLocaleString(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!, locale: UnsafePointer<gchar>!, string: UnsafePointer<gchar>!) {
        g_key_file_set_locale_string(key_file_ptr, groupName, key, locale, string)
    
    }

    /// Associates a list of string values for `key` and `locale` under
    /// `group_name`.  If the translation for `key` cannot be found then
    /// it is created.
    @inlinable func setLocaleStringList(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!, locale: UnsafePointer<gchar>!, list: UnsafePointer<UnsafePointer<gchar>?>!, length: Int) {
        g_key_file_set_locale_string_list(key_file_ptr, groupName, key, locale, list, gsize(length))
    
    }

    /// Associates a new string value with `key` under `group_name`.
    /// If `key` cannot be found then it is created.
    /// If `group_name` cannot be found then it is created.
    /// Unlike `g_key_file_set_value()`, this function handles characters
    /// that need escaping, such as newlines.
    @inlinable func setString(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!, string: UnsafePointer<gchar>!) {
        g_key_file_set_string(key_file_ptr, groupName, key, string)
    
    }

    /// Associates a list of string values for `key` under `group_name`.
    /// If `key` cannot be found then it is created.
    /// If `group_name` cannot be found then it is created.
    @inlinable func setStringList(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!, list: UnsafePointer<UnsafePointer<gchar>?>!, length: Int) {
        g_key_file_set_string_list(key_file_ptr, groupName, key, list, gsize(length))
    
    }

    /// Associates a new integer value with `key` under `group_name`.
    /// If `key` cannot be found then it is created.
    @inlinable func setUint64(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!, value: guint64) {
        g_key_file_set_uint64(key_file_ptr, groupName, key, value)
    
    }

    /// Associates a new value with `key` under `group_name`.
    /// 
    /// If `key` cannot be found then it is created. If `group_name` cannot
    /// be found then it is created. To set an UTF-8 string which may contain
    /// characters that need escaping (such as newlines or spaces), use
    /// `g_key_file_set_string()`.
    @inlinable func setValue(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!, value: UnsafePointer<gchar>!) {
        g_key_file_set_value(key_file_ptr, groupName, key, value)
    
    }

    /// This function outputs `key_file` as a string.
    /// 
    /// Note that this function never reports an error,
    /// so it is safe to pass `nil` as `error`.
    @inlinable func toData(length: UnsafeMutablePointer<gsize>! = nil) throws -> String! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_key_file_to_data(key_file_ptr, length, &error).map({ String(cString: $0) })
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Decreases the reference count of `key_file` by 1. If the reference count
    /// reaches zero, frees the key file and all its allocated memory.
    @inlinable func unref() {
        g_key_file_unref(key_file_ptr)
    
    }
    /// Returns the name of the start group of the file.
    @inlinable var startGroup: String! {
        /// Returns the name of the start group of the file.
        get {
            let rv = g_key_file_get_start_group(key_file_ptr).map({ String(cString: $0) })
            return rv
        }
    }


}



