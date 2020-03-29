import CGLib

// MARK: - BookmarkFile Record

/// The `BookmarkFileProtocol` protocol exposes the methods and properties of an underlying `GBookmarkFile` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BookmarkFile`.
/// Alternatively, use `BookmarkFileRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GBookmarkFile` structure contains only
/// private data and should not be directly accessed.
public protocol BookmarkFileProtocol {
    /// Untyped pointer to the underlying `GBookmarkFile` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GBookmarkFile` instance.
    var _ptr: UnsafeMutablePointer<GBookmarkFile> { get }
}

/// The `BookmarkFileRef` type acts as a lightweight Swift reference to an underlying `GBookmarkFile` instance.
/// It exposes methods that can operate on this data type through `BookmarkFileProtocol` conformance.
/// Use `BookmarkFileRef` only as an `unowned` reference to an existing `GBookmarkFile` instance.
///
/// The `GBookmarkFile` structure contains only
/// private data and should not be directly accessed.
public struct BookmarkFileRef: BookmarkFileProtocol {
    /// Untyped pointer to the underlying `GBookmarkFile` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension BookmarkFileRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GBookmarkFile>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `BookmarkFileProtocol`
    init<T: BookmarkFileProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkFileProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkFileProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkFileProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkFileProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkFileProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `BookmarkFile` type acts as an owner of an underlying `GBookmarkFile` instance.
/// It provides the methods that can operate on this data type through `BookmarkFileProtocol` conformance.
/// Use `BookmarkFile` as a strong reference or owner of a `GBookmarkFile` instance.
///
/// The `GBookmarkFile` structure contains only
/// private data and should not be directly accessed.
open class BookmarkFile: BookmarkFileProtocol {
    /// Untyped pointer to the underlying `GBookmarkFile` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BookmarkFile` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GBookmarkFile>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GBookmarkFile` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `BookmarkFile` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GBookmarkFile>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GBookmarkFile, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `BookmarkFileProtocol`
    /// `GBookmarkFile` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `BookmarkFileProtocol`
    public init<T: BookmarkFileProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GBookmarkFile, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GBookmarkFile`.
    deinit {
        // no reference counting for GBookmarkFile, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkFileProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkFileProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GBookmarkFile, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkFileProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkFileProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GBookmarkFile, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkFileProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkFileProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GBookmarkFile, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkFileProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkFileProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GBookmarkFile, cannot ref(cast(_ptr))
    }



}

// MARK: - no BookmarkFile properties

// MARK: - no signals


public extension BookmarkFileProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GBookmarkFile` instance.
    var _ptr: UnsafeMutablePointer<GBookmarkFile> { return ptr.assumingMemoryBound(to: GBookmarkFile.self) }

    /// Adds the application with `name` and `exec` to the list of
    /// applications that have registered a bookmark for `uri` into
    /// `bookmark`.
    /// 
    /// Every bookmark inside a `GBookmarkFile` must have at least an
    /// application registered.  Each application must provide a name, a
    /// command line useful for launching the bookmark, the number of times
    /// the bookmark has been registered by the application and the last
    /// time the application registered this bookmark.
    /// 
    /// If `name` is `nil`, the name of the application will be the
    /// same returned by `g_get_application_name()`; if `exec` is `nil`, the
    /// command line will be a composition of the program name as
    /// returned by `g_get_prgname()` and the "\`u`" modifier, which will be
    /// expanded to the bookmark's URI.
    /// 
    /// This function will automatically take care of updating the
    /// registrations count and timestamping in case an application
    /// with the same `name` had already registered a bookmark for
    /// `uri` inside `bookmark`.
    /// 
    /// If no bookmark for `uri` is found, one is created.
    func addApplication(uri: UnsafePointer<gchar>, name: UnsafePointer<gchar>, exec: UnsafePointer<gchar>) {
        g_bookmark_file_add_application(cast(_ptr), uri, name, exec)
    
    }

    /// Adds `group` to the list of groups to which the bookmark for `uri`
    /// belongs to.
    /// 
    /// If no bookmark for `uri` is found then it is created.
    func addGroup(uri: UnsafePointer<gchar>, group: UnsafePointer<gchar>) {
        g_bookmark_file_add_group(cast(_ptr), uri, group)
    
    }

    /// Frees a `GBookmarkFile`.
    func free() {
        g_bookmark_file_free(cast(_ptr))
    
    }

    /// Gets the time the bookmark for `uri` was added to `bookmark`
    /// 
    /// In the event the URI cannot be found, -1 is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    func getAdded(uri: UnsafePointer<gchar>) throws -> time_t {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_get_added(cast(_ptr), uri, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv
    }

    /// Gets the registration information of `app_name` for the bookmark for
    /// `uri`.  See `g_bookmark_file_set_app_info()` for more information about
    /// the returned data.
    /// 
    /// The string returned in `app_exec` must be freed.
    /// 
    /// In the event the URI cannot be found, `false` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.  In the
    /// event that no application with name `app_name` has registered a bookmark
    /// for `uri`,  `false` is returned and error is set to
    /// `G_BOOKMARK_FILE_ERROR_APP_NOT_REGISTERED`. In the event that unquoting
    /// the command line fails, an error of the `G_SHELL_ERROR` domain is
    /// set and `false` is returned.
    func getAppInfo(uri: UnsafePointer<gchar>, name: UnsafePointer<gchar>, exec: UnsafeMutablePointer<UnsafeMutablePointer<gchar>>, count: UnsafeMutablePointer<CUnsignedInt>, stamp: UnsafeMutablePointer<time_t>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_get_app_info(cast(_ptr), uri, name, cast(exec), cast(count), cast(stamp), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Retrieves the names of the applications that have registered the
    /// bookmark for `uri`.
    /// 
    /// In the event the URI cannot be found, `nil` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    func getApplications(uri: UnsafePointer<gchar>, length: UnsafeMutablePointer<Int>) throws -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_get_applications(cast(_ptr), uri, cast(length), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Retrieves the description of the bookmark for `uri`.
    /// 
    /// In the event the URI cannot be found, `nil` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    func getDescription(uri: UnsafePointer<gchar>) throws -> String! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_get_description(cast(_ptr), uri, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Retrieves the list of group names of the bookmark for `uri`.
    /// 
    /// In the event the URI cannot be found, `nil` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    /// 
    /// The returned array is `nil` terminated, so `length` may optionally
    /// be `nil`.
    func getGroups(uri: UnsafePointer<gchar>, length: UnsafeMutablePointer<Int>) throws -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_get_groups(cast(_ptr), uri, cast(length), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Gets the icon of the bookmark for `uri`.
    /// 
    /// In the event the URI cannot be found, `false` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    func getIcon(uri: UnsafePointer<gchar>, href: UnsafeMutablePointer<UnsafeMutablePointer<gchar>>, mimeType mime_type: UnsafeMutablePointer<UnsafeMutablePointer<gchar>>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_get_icon(cast(_ptr), uri, cast(href), cast(mime_type), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Gets whether the private flag of the bookmark for `uri` is set.
    /// 
    /// In the event the URI cannot be found, `false` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.  In the
    /// event that the private flag cannot be found, `false` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_INVALID_VALUE`.
    func getIsPrivate(uri: UnsafePointer<gchar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_get_is_private(cast(_ptr), uri, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Retrieves the MIME type of the resource pointed by `uri`.
    /// 
    /// In the event the URI cannot be found, `nil` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.  In the
    /// event that the MIME type cannot be found, `nil` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_INVALID_VALUE`.
    func getMimeType(uri: UnsafePointer<gchar>) throws -> String! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_get_mime_type(cast(_ptr), uri, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the time when the bookmark for `uri` was last modified.
    /// 
    /// In the event the URI cannot be found, -1 is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    func getModified(uri: UnsafePointer<gchar>) throws -> time_t {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_get_modified(cast(_ptr), uri, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv
    }

    /// Gets the number of bookmarks inside `bookmark`.
    func getSize() -> CInt {
        let rv = g_bookmark_file_get_size(cast(_ptr))
        return CInt(rv)
    }

    /// Returns the title of the bookmark for `uri`.
    /// 
    /// If `uri` is `nil`, the title of `bookmark` is returned.
    /// 
    /// In the event the URI cannot be found, `nil` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    func getTitle(uri: UnsafePointer<gchar>) throws -> String! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_get_title(cast(_ptr), uri, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Returns all URIs of the bookmarks in the bookmark file `bookmark`.
    /// The array of returned URIs will be `nil`-terminated, so `length` may
    /// optionally be `nil`.
    func getURIs(length: UnsafeMutablePointer<Int>) -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        let rv = g_bookmark_file_get_uris(cast(_ptr), cast(length))
        return cast(rv)
    }

    /// Gets the time the bookmark for `uri` was last visited.
    /// 
    /// In the event the URI cannot be found, -1 is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    func getVisited(uri: UnsafePointer<gchar>) throws -> time_t {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_get_visited(cast(_ptr), uri, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv
    }

    /// Checks whether the bookmark for `uri` inside `bookmark` has been
    /// registered by application `name`.
    /// 
    /// In the event the URI cannot be found, `false` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    func hasApplication(uri: UnsafePointer<gchar>, name: UnsafePointer<gchar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_has_application(cast(_ptr), uri, name, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Checks whether `group` appears in the list of groups to which
    /// the bookmark for `uri` belongs to.
    /// 
    /// In the event the URI cannot be found, `false` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    func hasGroup(uri: UnsafePointer<gchar>, group: UnsafePointer<gchar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_has_group(cast(_ptr), uri, group, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Looks whether the desktop bookmark has an item with its URI set to `uri`.
    func hasItem(uri: UnsafePointer<gchar>) -> Bool {
        let rv = g_bookmark_file_has_item(cast(_ptr), uri)
        return Bool(rv != 0)
    }

    /// Loads a bookmark file from memory into an empty `GBookmarkFile`
    /// structure.  If the object cannot be created then `error` is set to a
    /// `GBookmarkFileError`.
    func loadFrom(data: UnsafePointer<gchar>, length: Int) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_load_from_data(cast(_ptr), cast(data), gsize(length), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// This function looks for a desktop bookmark file named `file` in the
    /// paths returned from `g_get_user_data_dir()` and `g_get_system_data_dirs()`,
    /// loads the file into `bookmark` and returns the file's full path in
    /// `full_path`.  If the file could not be loaded then `error` is
    /// set to either a `GFileError` or `GBookmarkFileError`.
    func loadFromDataDirs(file: UnsafePointer<gchar>, fullPath full_path: UnsafeMutablePointer<UnsafeMutablePointer<gchar>>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_load_from_data_dirs(cast(_ptr), file, cast(full_path), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Loads a desktop bookmark file into an empty `GBookmarkFile` structure.
    /// If the file could not be loaded then `error` is set to either a `GFileError`
    /// or `GBookmarkFileError`.
    func loadFromFile(String_: UnsafePointer<gchar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_load_from_file(cast(_ptr), String_, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Changes the URI of a bookmark item from `old_uri` to `new_uri`.  Any
    /// existing bookmark for `new_uri` will be overwritten.  If `new_uri` is
    /// `nil`, then the bookmark is removed.
    /// 
    /// In the event the URI cannot be found, `false` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    func moveItem(oldURI old_uri: UnsafePointer<gchar>, newURI new_uri: UnsafePointer<gchar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_move_item(cast(_ptr), old_uri, new_uri, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Removes application registered with `name` from the list of applications
    /// that have registered a bookmark for `uri` inside `bookmark`.
    /// 
    /// In the event the URI cannot be found, `false` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    /// In the event that no application with name `app_name` has registered
    /// a bookmark for `uri`,  `false` is returned and error is set to
    /// `G_BOOKMARK_FILE_ERROR_APP_NOT_REGISTERED`.
    func removeApplication(uri: UnsafePointer<gchar>, name: UnsafePointer<gchar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_remove_application(cast(_ptr), uri, name, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Removes `group` from the list of groups to which the bookmark
    /// for `uri` belongs to.
    /// 
    /// In the event the URI cannot be found, `false` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    /// In the event no group was defined, `false` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_INVALID_VALUE`.
    func removeGroup(uri: UnsafePointer<gchar>, group: UnsafePointer<gchar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_remove_group(cast(_ptr), uri, group, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Removes the bookmark for `uri` from the bookmark file `bookmark`.
    func removeItem(uri: UnsafePointer<gchar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_remove_item(cast(_ptr), uri, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Sets the time the bookmark for `uri` was added into `bookmark`.
    /// 
    /// If no bookmark for `uri` is found then it is created.
    func setAdded(uri: UnsafePointer<gchar>, added: CLong) {
        g_bookmark_file_set_added(cast(_ptr), uri, added)
    
    }

    /// Sets the meta-data of application `name` inside the list of
    /// applications that have registered a bookmark for `uri` inside
    /// `bookmark`.
    /// 
    /// You should rarely use this function; use `g_bookmark_file_add_application()`
    /// and `g_bookmark_file_remove_application()` instead.
    /// 
    /// `name` can be any UTF-8 encoded string used to identify an
    /// application.
    /// `exec` can have one of these two modifiers: "\`f`", which will
    /// be expanded as the local file name retrieved from the bookmark's
    /// URI; "\`u`", which will be expanded as the bookmark's URI.
    /// The expansion is done automatically when retrieving the stored
    /// command line using the `g_bookmark_file_get_app_info()` function.
    /// `count` is the number of times the application has registered the
    /// bookmark; if is < 0, the current registration count will be increased
    /// by one, if is 0, the application with `name` will be removed from
    /// the list of registered applications.
    /// `stamp` is the Unix time of the last registration; if it is -1, the
    /// current time will be used.
    /// 
    /// If you try to remove an application by setting its registration count to
    /// zero, and no bookmark for `uri` is found, `false` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`; similarly,
    /// in the event that no application `name` has registered a bookmark
    /// for `uri`,  `false` is returned and error is set to
    /// `G_BOOKMARK_FILE_ERROR_APP_NOT_REGISTERED`.  Otherwise, if no bookmark
    /// for `uri` is found, one is created.
    func setAppInfo(uri: UnsafePointer<gchar>, name: UnsafePointer<gchar>, exec: UnsafePointer<gchar>, count: CInt, stamp: CLong) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_set_app_info(cast(_ptr), uri, name, exec, gint(count), stamp, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Sets `description` as the description of the bookmark for `uri`.
    /// 
    /// If `uri` is `nil`, the description of `bookmark` is set.
    /// 
    /// If a bookmark for `uri` cannot be found then it is created.
    func setDescription(uri: UnsafePointer<gchar>, description: UnsafePointer<gchar>) {
        g_bookmark_file_set_description(cast(_ptr), uri, description)
    
    }

    /// Sets a list of group names for the item with URI `uri`.  Each previously
    /// set group name list is removed.
    /// 
    /// If `uri` cannot be found then an item for it is created.
    func setGroups(uri: UnsafePointer<gchar>, groups: UnsafePointer<UnsafePointer<gchar>>, length: Int) {
        g_bookmark_file_set_groups(cast(_ptr), uri, cast(groups), gsize(length))
    
    }

    /// Sets the icon for the bookmark for `uri`. If `href` is `nil`, unsets
    /// the currently set icon. `href` can either be a full URL for the icon
    /// file or the icon name following the Icon Naming specification.
    /// 
    /// If no bookmark for `uri` is found one is created.
    func setIcon(uri: UnsafePointer<gchar>, href: UnsafePointer<gchar>, mimeType mime_type: UnsafePointer<gchar>) {
        g_bookmark_file_set_icon(cast(_ptr), uri, href, mime_type)
    
    }

    /// Sets the private flag of the bookmark for `uri`.
    /// 
    /// If a bookmark for `uri` cannot be found then it is created.
    func setIsPrivate(uri: UnsafePointer<gchar>, isPrivate is_private: Bool) {
        g_bookmark_file_set_is_private(cast(_ptr), uri, gboolean(is_private ? 1 : 0))
    
    }

    /// Sets `mime_type` as the MIME type of the bookmark for `uri`.
    /// 
    /// If a bookmark for `uri` cannot be found then it is created.
    func setMimeType(uri: UnsafePointer<gchar>, mimeType mime_type: UnsafePointer<gchar>) {
        g_bookmark_file_set_mime_type(cast(_ptr), uri, mime_type)
    
    }

    /// Sets the last time the bookmark for `uri` was last modified.
    /// 
    /// If no bookmark for `uri` is found then it is created.
    /// 
    /// The "modified" time should only be set when the bookmark's meta-data
    /// was actually changed.  Every function of `GBookmarkFile` that
    /// modifies a bookmark also changes the modification time, except for
    /// `g_bookmark_file_set_visited()`.
    func setModified(uri: UnsafePointer<gchar>, modified: CLong) {
        g_bookmark_file_set_modified(cast(_ptr), uri, modified)
    
    }

    /// Sets `title` as the title of the bookmark for `uri` inside the
    /// bookmark file `bookmark`.
    /// 
    /// If `uri` is `nil`, the title of `bookmark` is set.
    /// 
    /// If a bookmark for `uri` cannot be found then it is created.
    func setTitle(uri: UnsafePointer<gchar>, title: UnsafePointer<gchar>) {
        g_bookmark_file_set_title(cast(_ptr), uri, title)
    
    }

    /// Sets the time the bookmark for `uri` was last visited.
    /// 
    /// If no bookmark for `uri` is found then it is created.
    /// 
    /// The "visited" time should only be set if the bookmark was launched,
    /// either using the command line retrieved by `g_bookmark_file_get_app_info()`
    /// or by the default application for the bookmark's MIME type, retrieved
    /// using `g_bookmark_file_get_mime_type()`.  Changing the "visited" time
    /// does not affect the "modified" time.
    func setVisited(uri: UnsafePointer<gchar>, visited: CLong) {
        g_bookmark_file_set_visited(cast(_ptr), uri, visited)
    
    }

    /// This function outputs `bookmark` as a string.
    func toData(length: UnsafeMutablePointer<Int>) throws -> UnsafeMutablePointer<gchar>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_to_data(cast(_ptr), cast(length), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// This function outputs `bookmark` into a file.  The write process is
    /// guaranteed to be atomic by using `g_file_set_contents()` internally.
    func toFile(String_: UnsafePointer<gchar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bookmark_file_to_file(cast(_ptr), String_, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }
    /// Gets the number of bookmarks inside `bookmark`.
    var size: CInt {
        /// Gets the number of bookmarks inside `bookmark`.
        get {
            let rv = g_bookmark_file_get_size(cast(_ptr))
            return CInt(rv)
        }
    }
}



