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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GKeyFile` instance.
    var key_file_ptr: UnsafeMutablePointer<GKeyFile> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension KeyFileRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GKeyFile>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `KeyFileProtocol`
    init<T: KeyFileProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyFileProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyFileProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyFileProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyFileProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyFileProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new empty `GKeyFile` object. Use
    /// `g_key_file_load_from_file()`, `g_key_file_load_from_data()`,
    /// `g_key_file_load_from_dirs()` or `g_key_file_load_from_data_dirs()` to
    /// read an existing key file.
    init() {
        let rv = g_key_file_new()
        ptr = UnsafeMutableRawPointer(cast(rv))
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `KeyFile` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GKeyFile>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GKeyFile`.
    /// i.e., ownership is transferred to the `KeyFile` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GKeyFile>) {
        ptr = UnsafeMutableRawPointer(op)
        g_key_file_ref(cast(key_file_ptr))
    }

    /// Reference intialiser for a related type that implements `KeyFileProtocol`
    /// Will retain `GKeyFile`.
    /// - Parameter other: an instance of a related type that implements `KeyFileProtocol`
    public init<T: KeyFileProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.key_file_ptr)
        g_key_file_ref(cast(key_file_ptr))
    }

    /// Releases the underlying `GKeyFile` instance using `g_key_file_unref`.
    deinit {
        g_key_file_unref(cast(key_file_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyFileProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyFileProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_key_file_ref(cast(key_file_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyFileProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyFileProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_key_file_ref(cast(key_file_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyFileProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyFileProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_key_file_ref(cast(key_file_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyFileProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyFileProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_key_file_ref(cast(key_file_ptr))
    }

    /// Creates a new empty `GKeyFile` object. Use
    /// `g_key_file_load_from_file()`, `g_key_file_load_from_data()`,
    /// `g_key_file_load_from_dirs()` or `g_key_file_load_from_data_dirs()` to
    /// read an existing key file.
    public init() {
        let rv = g_key_file_new()
        ptr = UnsafeMutableRawPointer(cast(rv))
    }


}

// MARK: - no KeyFile properties

// MARK: - no signals


public extension KeyFileProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GKeyFile` instance.
    var key_file_ptr: UnsafeMutablePointer<GKeyFile> { return ptr.assumingMemoryBound(to: GKeyFile.self) }

    /// Clears all keys and groups from `key_file`, and decreases the
    /// reference count by 1. If the reference count reaches zero,
    /// frees the key file and all its allocated memory.
    func free() {
        g_key_file_free(cast(key_file_ptr))
    
    }

    /// Returns the value associated with `key` under `group_name` as a
    /// boolean.
    /// 
    /// If `key` cannot be found then `false` is returned and `error` is set
    /// to `G_KEY_FILE_ERROR_KEY_NOT_FOUND`. Likewise, if the value
    /// associated with `key` cannot be interpreted as a boolean then `false`
    /// is returned and `error` is set to `G_KEY_FILE_ERROR_INVALID_VALUE`.
    func getBoolean(groupName group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_get_boolean(cast(key_file_ptr), group_name, key, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Returns the values associated with `key` under `group_name` as
    /// booleans.
    /// 
    /// If `key` cannot be found then `nil` is returned and `error` is set to
    /// `G_KEY_FILE_ERROR_KEY_NOT_FOUND`. Likewise, if the values associated
    /// with `key` cannot be interpreted as booleans then `nil` is returned
    /// and `error` is set to `G_KEY_FILE_ERROR_INVALID_VALUE`.
    func getBooleanList(groupName group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>, length: UnsafeMutablePointer<Int>) throws -> UnsafeMutablePointer<Bool>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_get_boolean_list(cast(key_file_ptr), group_name, key, cast(length), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Retrieves a comment above `key` from `group_name`.
    /// If `key` is `nil` then `comment` will be read from above
    /// `group_name`. If both `key` and `group_name` are `nil`, then
    /// `comment` will be read from above the first group in the file.
    /// 
    /// Note that the returned string does not include the '#' comment markers,
    /// but does include any whitespace after them (on each line). It includes
    /// the line breaks between lines, but does not include the final line break.
    func getComment(groupName group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>) throws -> String! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_get_comment(cast(key_file_ptr), group_name, key, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Returns the value associated with `key` under `group_name` as a
    /// double. If `group_name` is `nil`, the start_group is used.
    /// 
    /// If `key` cannot be found then 0.0 is returned and `error` is set to
    /// `G_KEY_FILE_ERROR_KEY_NOT_FOUND`. Likewise, if the value associated
    /// with `key` cannot be interpreted as a double then 0.0 is returned
    /// and `error` is set to `G_KEY_FILE_ERROR_INVALID_VALUE`.
    func getDouble(groupName group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>) throws -> gdouble {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_get_double(cast(key_file_ptr), group_name, key, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv
    }

    /// Returns the values associated with `key` under `group_name` as
    /// doubles.
    /// 
    /// If `key` cannot be found then `nil` is returned and `error` is set to
    /// `G_KEY_FILE_ERROR_KEY_NOT_FOUND`. Likewise, if the values associated
    /// with `key` cannot be interpreted as doubles then `nil` is returned
    /// and `error` is set to `G_KEY_FILE_ERROR_INVALID_VALUE`.
    func getDoubleList(groupName group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>, length: UnsafeMutablePointer<Int>) throws -> UnsafeMutablePointer<gdouble>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_get_double_list(cast(key_file_ptr), group_name, key, cast(length), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Returns all groups in the key file loaded with `key_file`.
    /// The array of returned groups will be `nil`-terminated, so
    /// `length` may optionally be `nil`.
    func getGroups(length: UnsafeMutablePointer<Int>) -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        let rv = g_key_file_get_groups(cast(key_file_ptr), cast(length))
        return cast(rv)
    }

    /// Returns the value associated with `key` under `group_name` as a signed
    /// 64-bit integer. This is similar to `g_key_file_get_integer()` but can return
    /// 64-bit results without truncation.
    func getInt64(groupName group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>) throws -> Int64 {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_get_int64(cast(key_file_ptr), group_name, key, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Int64(rv)
    }

    /// Returns the value associated with `key` under `group_name` as an
    /// integer.
    /// 
    /// If `key` cannot be found then 0 is returned and `error` is set to
    /// `G_KEY_FILE_ERROR_KEY_NOT_FOUND`. Likewise, if the value associated
    /// with `key` cannot be interpreted as an integer, or is out of range
    /// for a `gint`, then 0 is returned
    /// and `error` is set to `G_KEY_FILE_ERROR_INVALID_VALUE`.
    func getInteger(groupName group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>) throws -> CInt {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_get_integer(cast(key_file_ptr), group_name, key, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return CInt(rv)
    }

    /// Returns the values associated with `key` under `group_name` as
    /// integers.
    /// 
    /// If `key` cannot be found then `nil` is returned and `error` is set to
    /// `G_KEY_FILE_ERROR_KEY_NOT_FOUND`. Likewise, if the values associated
    /// with `key` cannot be interpreted as integers, or are out of range for
    /// `gint`, then `nil` is returned
    /// and `error` is set to `G_KEY_FILE_ERROR_INVALID_VALUE`.
    func getIntegerList(groupName group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>, length: UnsafeMutablePointer<Int>) throws -> UnsafeMutablePointer<CInt>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_get_integer_list(cast(key_file_ptr), group_name, key, cast(length), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Returns all keys for the group name `group_name`.  The array of
    /// returned keys will be `nil`-terminated, so `length` may
    /// optionally be `nil`. In the event that the `group_name` cannot
    /// be found, `nil` is returned and `error` is set to
    /// `G_KEY_FILE_ERROR_GROUP_NOT_FOUND`.
    func getKeys(groupName group_name: UnsafePointer<gchar>, length: UnsafeMutablePointer<Int>) throws -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_get_keys(cast(key_file_ptr), group_name, cast(length), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
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
    func getLocaleForKey(groupName group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>, locale: UnsafePointer<gchar>) -> String! {
        let rv = g_key_file_get_locale_for_key(cast(key_file_ptr), group_name, key, locale)
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
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
    func getLocaleString(groupName group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>, locale: UnsafePointer<gchar>) throws -> String! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_get_locale_string(cast(key_file_ptr), group_name, key, locale, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
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
    func getLocaleStringList(groupName group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>, locale: UnsafePointer<gchar>, length: UnsafeMutablePointer<Int>) throws -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_get_locale_string_list(cast(key_file_ptr), group_name, key, locale, cast(length), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Returns the name of the start group of the file.
    func getStartGroup() -> String! {
        let rv = g_key_file_get_start_group(cast(key_file_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Returns the string value associated with `key` under `group_name`.
    /// Unlike `g_key_file_get_value()`, this function handles escape sequences
    /// like \s.
    /// 
    /// In the event the key cannot be found, `nil` is returned and
    /// `error` is set to `G_KEY_FILE_ERROR_KEY_NOT_FOUND`.  In the
    /// event that the `group_name` cannot be found, `nil` is returned
    /// and `error` is set to `G_KEY_FILE_ERROR_GROUP_NOT_FOUND`.
    func getString(groupName group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>) throws -> String! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_get_string(cast(key_file_ptr), group_name, key, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Returns the values associated with `key` under `group_name`.
    /// 
    /// In the event the key cannot be found, `nil` is returned and
    /// `error` is set to `G_KEY_FILE_ERROR_KEY_NOT_FOUND`.  In the
    /// event that the `group_name` cannot be found, `nil` is returned
    /// and `error` is set to `G_KEY_FILE_ERROR_GROUP_NOT_FOUND`.
    func getStringList(groupName group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>, length: UnsafeMutablePointer<Int>) throws -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_get_string_list(cast(key_file_ptr), group_name, key, cast(length), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Returns the value associated with `key` under `group_name` as an unsigned
    /// 64-bit integer. This is similar to `g_key_file_get_integer()` but can return
    /// large positive results without truncation.
    func getUint64(groupName group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>) throws -> UInt64 {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_get_uint64(cast(key_file_ptr), group_name, key, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return UInt64(rv)
    }

    /// Returns the raw value associated with `key` under `group_name`.
    /// Use `g_key_file_get_string()` to retrieve an unescaped UTF-8 string.
    /// 
    /// In the event the key cannot be found, `nil` is returned and
    /// `error` is set to `G_KEY_FILE_ERROR_KEY_NOT_FOUND`.  In the
    /// event that the `group_name` cannot be found, `nil` is returned
    /// and `error` is set to `G_KEY_FILE_ERROR_GROUP_NOT_FOUND`.
    func getValue(groupName group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>) throws -> String! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_get_value(cast(key_file_ptr), group_name, key, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Looks whether the key file has the group `group_name`.
    func hasGroup(groupName group_name: UnsafePointer<gchar>) -> Bool {
        let rv = g_key_file_has_group(cast(key_file_ptr), group_name)
        return Bool(rv != 0)
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
    func hasKey(groupName group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_has_key(cast(key_file_ptr), group_name, key, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Loads a key file from the data in `bytes` into an empty `GKeyFile` structure.
    /// If the object cannot be created then `error` is set to a `GKeyFileError`.
    func loadFrom(bytes: BytesProtocol, flags: KeyFileFlags) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_load_from_bytes(cast(key_file_ptr), cast(bytes.ptr), flags, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Loads a key file from memory into an empty `GKeyFile` structure.
    /// If the object cannot be created then `error` is set to a `GKeyFileError`.
    func loadFrom(data: UnsafePointer<gchar>, length: Int, flags: KeyFileFlags) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_load_from_data(cast(key_file_ptr), data, gsize(length), flags, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// This function looks for a key file named `file` in the paths
    /// returned from `g_get_user_data_dir()` and `g_get_system_data_dirs()`,
    /// loads the file into `key_file` and returns the file's full path in
    /// `full_path`.  If the file could not be loaded then an `error` is
    /// set to either a `GFileError` or `GKeyFileError`.
    func loadFromDataDirs(file: UnsafePointer<gchar>, fullPath full_path: UnsafeMutablePointer<UnsafeMutablePointer<gchar>>, flags: KeyFileFlags) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_load_from_data_dirs(cast(key_file_ptr), file, cast(full_path), flags, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
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
    func loadFromDirs(file: UnsafePointer<gchar>, searchDirs search_dirs: UnsafePointer<UnsafePointer<gchar>>, fullPath full_path: UnsafeMutablePointer<UnsafeMutablePointer<gchar>>, flags: KeyFileFlags) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_load_from_dirs(cast(key_file_ptr), file, cast(search_dirs), cast(full_path), flags, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Loads a key file into an empty `GKeyFile` structure.
    /// 
    /// If the OS returns an error when opening or reading the file, a
    /// `G_FILE_ERROR` is returned. If there is a problem parsing the file, a
    /// `G_KEY_FILE_ERROR` is returned.
    /// 
    /// This function will never return a `G_KEY_FILE_ERROR_NOT_FOUND` error. If the
    /// `file` is not found, `G_FILE_ERROR_NOENT` is returned.
    func loadFrom(file: UnsafePointer<gchar>, flags: KeyFileFlags) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_load_from_file(cast(key_file_ptr), file, flags, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Increases the reference count of `key_file`.
    func ref() -> UnsafeMutablePointer<GKeyFile>! {
        let rv = g_key_file_ref(cast(key_file_ptr))
        return cast(rv)
    }

    /// Removes a comment above `key` from `group_name`.
    /// If `key` is `nil` then `comment` will be removed above `group_name`.
    /// If both `key` and `group_name` are `nil`, then `comment` will
    /// be removed above the first group in the file.
    func removeComment(groupName group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_remove_comment(cast(key_file_ptr), group_name, key, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Removes the specified group, `group_name`,
    /// from the key file.
    func removeGroup(groupName group_name: UnsafePointer<gchar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_remove_group(cast(key_file_ptr), group_name, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Removes `key` in `group_name` from the key file.
    func removeKey(groupName group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_remove_key(cast(key_file_ptr), group_name, key, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Writes the contents of `key_file` to `filename` using
    /// `g_file_set_contents()`.
    /// 
    /// This function can fail for any of the reasons that
    /// `g_file_set_contents()` may fail.
    func saveToFile(String_: UnsafePointer<gchar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_save_to_file(cast(key_file_ptr), String_, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Associates a new boolean value with `key` under `group_name`.
    /// If `key` cannot be found then it is created.
    func setBoolean(groupName group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>, value: Bool) {
        g_key_file_set_boolean(cast(key_file_ptr), group_name, key, gboolean(value ? 1 : 0))
    
    }

    /// Associates a list of boolean values with `key` under `group_name`.
    /// If `key` cannot be found then it is created.
    /// If `group_name` is `nil`, the start_group is used.
    func setBooleanList(groupName group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>, list: UnsafeMutablePointer<Bool>, length: Int) {
        g_key_file_set_boolean_list(cast(key_file_ptr), group_name, key, cast(list), gsize(length))
    
    }

    /// Places a comment above `key` from `group_name`.
    /// 
    /// If `key` is `nil` then `comment` will be written above `group_name`.
    /// If both `key` and `group_name`  are `nil`, then `comment` will be
    /// written above the first group in the file.
    /// 
    /// Note that this function prepends a '#' comment marker to
    /// each line of `comment`.
    func setComment(groupName group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>, comment: UnsafePointer<gchar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_set_comment(cast(key_file_ptr), group_name, key, comment, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Associates a new double value with `key` under `group_name`.
    /// If `key` cannot be found then it is created.
    func setDouble(groupName group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>, value: gdouble) {
        g_key_file_set_double(cast(key_file_ptr), group_name, key, value)
    
    }

    /// Associates a list of double values with `key` under
    /// `group_name`.  If `key` cannot be found then it is created.
    func setDoubleList(groupName group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>, list: UnsafeMutablePointer<gdouble>, length: Int) {
        g_key_file_set_double_list(cast(key_file_ptr), group_name, key, cast(list), gsize(length))
    
    }

    /// Associates a new integer value with `key` under `group_name`.
    /// If `key` cannot be found then it is created.
    func setInt64(groupName group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>, value: Int64) {
        g_key_file_set_int64(cast(key_file_ptr), group_name, key, gint64(value))
    
    }

    /// Associates a new integer value with `key` under `group_name`.
    /// If `key` cannot be found then it is created.
    func setInteger(groupName group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>, value: CInt) {
        g_key_file_set_integer(cast(key_file_ptr), group_name, key, gint(value))
    
    }

    /// Associates a list of integer values with `key` under `group_name`.
    /// If `key` cannot be found then it is created.
    func setIntegerList(groupName group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>, list: UnsafeMutablePointer<CInt>, length: Int) {
        g_key_file_set_integer_list(cast(key_file_ptr), group_name, key, cast(list), gsize(length))
    
    }

    /// Sets the character which is used to separate
    /// values in lists. Typically ';' or ',' are used
    /// as separators. The default list separator is ';'.
    func setList(separator: gchar) {
        g_key_file_set_list_separator(cast(key_file_ptr), separator)
    
    }

    /// Associates a string value for `key` and `locale` under `group_name`.
    /// If the translation for `key` cannot be found then it is created.
    func setLocaleString(groupName group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>, locale: UnsafePointer<gchar>, string: UnsafePointer<gchar>) {
        g_key_file_set_locale_string(cast(key_file_ptr), group_name, key, locale, string)
    
    }

    /// Associates a list of string values for `key` and `locale` under
    /// `group_name`.  If the translation for `key` cannot be found then
    /// it is created.
    func setLocaleStringList(groupName group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>, locale: UnsafePointer<gchar>, list: UnsafePointer<UnsafePointer<gchar>>, length: Int) {
        g_key_file_set_locale_string_list(cast(key_file_ptr), group_name, key, locale, cast(list), gsize(length))
    
    }

    /// Associates a new string value with `key` under `group_name`.
    /// If `key` cannot be found then it is created.
    /// If `group_name` cannot be found then it is created.
    /// Unlike `g_key_file_set_value()`, this function handles characters
    /// that need escaping, such as newlines.
    func setString(groupName group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>, string: UnsafePointer<gchar>) {
        g_key_file_set_string(cast(key_file_ptr), group_name, key, string)
    
    }

    /// Associates a list of string values for `key` under `group_name`.
    /// If `key` cannot be found then it is created.
    /// If `group_name` cannot be found then it is created.
    func setStringList(groupName group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>, list: UnsafePointer<UnsafePointer<gchar>>, length: Int) {
        g_key_file_set_string_list(cast(key_file_ptr), group_name, key, cast(list), gsize(length))
    
    }

    /// Associates a new integer value with `key` under `group_name`.
    /// If `key` cannot be found then it is created.
    func setUint64(groupName group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>, value: UInt64) {
        g_key_file_set_uint64(cast(key_file_ptr), group_name, key, guint64(value))
    
    }

    /// Associates a new value with `key` under `group_name`.
    /// 
    /// If `key` cannot be found then it is created. If `group_name` cannot
    /// be found then it is created. To set an UTF-8 string which may contain
    /// characters that need escaping (such as newlines or spaces), use
    /// `g_key_file_set_string()`.
    func setValue(groupName group_name: UnsafePointer<gchar>, key: UnsafePointer<gchar>, value: UnsafePointer<gchar>) {
        g_key_file_set_value(cast(key_file_ptr), group_name, key, value)
    
    }

    /// This function outputs `key_file` as a string.
    /// 
    /// Note that this function never reports an error,
    /// so it is safe to pass `nil` as `error`.
    func toData(length: UnsafeMutablePointer<Int>) throws -> String! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_key_file_to_data(cast(key_file_ptr), cast(length), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Decreases the reference count of `key_file` by 1. If the reference count
    /// reaches zero, frees the key file and all its allocated memory.
    func unref() {
        g_key_file_unref(cast(key_file_ptr))
    
    }
    /// Returns the name of the start group of the file.
    var startGroup: String! {
        /// Returns the name of the start group of the file.
        get {
            let rv = g_key_file_get_start_group(cast(key_file_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }
}



