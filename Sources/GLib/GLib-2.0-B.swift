import CGLib

// MARK: - BookmarkFile Record

/// An opaque data structure representing a set of bookmarks.
///
/// The `BookmarkFileProtocol` protocol exposes the methods and properties of an underlying `GBookmarkFile` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BookmarkFile`.
/// Alternatively, use `BookmarkFileRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol BookmarkFileProtocol {
        /// Untyped pointer to the underlying `GBookmarkFile` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GBookmarkFile` instance.
    var _ptr: UnsafeMutablePointer<GBookmarkFile>! { get }

    /// Required Initialiser for types conforming to `BookmarkFileProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// An opaque data structure representing a set of bookmarks.
///
/// The `BookmarkFileRef` type acts as a lightweight Swift reference to an underlying `GBookmarkFile` instance.
/// It exposes methods that can operate on this data type through `BookmarkFileProtocol` conformance.
/// Use `BookmarkFileRef` only as an `unowned` reference to an existing `GBookmarkFile` instance.
///
public struct BookmarkFileRef: BookmarkFileProtocol {
        /// Untyped pointer to the underlying `GBookmarkFile` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BookmarkFileRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GBookmarkFile>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GBookmarkFile>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GBookmarkFile>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GBookmarkFile>?) {
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

    /// Reference intialiser for a related type that implements `BookmarkFileProtocol`
    @inlinable init<T: BookmarkFileProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkFileProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkFileProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkFileProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkFileProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkFileProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// An opaque data structure representing a set of bookmarks.
///
/// The `BookmarkFile` type acts as an owner of an underlying `GBookmarkFile` instance.
/// It provides the methods that can operate on this data type through `BookmarkFileProtocol` conformance.
/// Use `BookmarkFile` as a strong reference or owner of a `GBookmarkFile` instance.
///
open class BookmarkFile: BookmarkFileProtocol {
        /// Untyped pointer to the underlying `GBookmarkFile` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BookmarkFile` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GBookmarkFile>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BookmarkFile` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GBookmarkFile>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BookmarkFile` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BookmarkFile` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BookmarkFile` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GBookmarkFile>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BookmarkFile` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GBookmarkFile>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GBookmarkFile` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `BookmarkFile` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GBookmarkFile>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GBookmarkFile, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `BookmarkFileProtocol`
    /// `GBookmarkFile` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `BookmarkFileProtocol`
    @inlinable public init<T: BookmarkFileProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GBookmarkFile, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GBookmarkFile`.
    deinit {
        // no reference counting for GBookmarkFile, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkFileProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkFileProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GBookmarkFile, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkFileProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkFileProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GBookmarkFile, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkFileProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkFileProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GBookmarkFile, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkFileProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkFileProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GBookmarkFile, cannot ref(_ptr)
    }



}

// MARK: no BookmarkFile properties

// MARK: no BookmarkFile signals

// MARK: BookmarkFile has no signals
// MARK: BookmarkFile Record: BookmarkFileProtocol extension (methods and fields)
public extension BookmarkFileProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GBookmarkFile` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GBookmarkFile>! { return ptr?.assumingMemoryBound(to: GBookmarkFile.self) }

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
    @inlinable func addApplication(uri: UnsafePointer<gchar>!, name: UnsafePointer<gchar>? = nil, exec: UnsafePointer<gchar>? = nil) {
        
        g_bookmark_file_add_application(_ptr, uri, name, exec)
        
    }

    /// Adds `group` to the list of groups to which the bookmark for `uri`
    /// belongs to.
    /// 
    /// If no bookmark for `uri` is found then it is created.
    @inlinable func addGroup(uri: UnsafePointer<gchar>!, group: UnsafePointer<gchar>!) {
        
        g_bookmark_file_add_group(_ptr, uri, group)
        
    }

    /// Frees a `GBookmarkFile`.
    @inlinable func free() {
        
        g_bookmark_file_free(_ptr)
        
    }

    /// Gets the time the bookmark for `uri` was added to `bookmark`
    /// 
    /// In the event the URI cannot be found, -1 is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    ///
    /// **get_added is deprecated:**
    /// Use g_bookmark_file_get_added_date_time() instead, as
    ///    `time_t` is deprecated due to the year 2038 problem.
    @available(*, deprecated) @inlinable func getAdded(uri: UnsafePointer<gchar>!) throws -> time_t {
        var error: UnsafeMutablePointer<GError>?
        let result = g_bookmark_file_get_added(_ptr, uri, &error)
        if let error = error { throw GLibError(error) }
        let rv = result
        return rv
    }

    /// Gets the time the bookmark for `uri` was added to `bookmark`
    /// 
    /// In the event the URI cannot be found, `nil` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    @inlinable func getAddedDateTime(uri: UnsafePointer<CChar>!) throws -> DateTimeRef! {
        var error: UnsafeMutablePointer<GError>?
        let result = g_bookmark_file_get_added_date_time(_ptr, uri, &error)
        if let error = error { throw GLibError(error) }
        let rv = DateTimeRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Gets the registration information of `app_name` for the bookmark for
    /// `uri`.  See `g_bookmark_file_set_application_info()` for more information about
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
    ///
    /// **get_app_info is deprecated:**
    /// Use g_bookmark_file_get_application_info() instead, as
    ///    `time_t` is deprecated due to the year 2038 problem.
    @available(*, deprecated) @inlinable func getAppInfo(uri: UnsafePointer<gchar>!, name: UnsafePointer<gchar>!, exec: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! = nil, count: UnsafeMutablePointer<guint>! = nil, stamp: UnsafeMutablePointer<time_t>! = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let result = g_bookmark_file_get_app_info(_ptr, uri, name, exec, count, stamp, &error)
        if let error = error { throw GLibError(error) }
        let rv = ((result) != 0)
        return rv
    }

    /// Gets the registration information of `app_name` for the bookmark for
    /// `uri`.  See `g_bookmark_file_set_application_info()` for more information about
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
    @inlinable func getApplicationInfo(uri: UnsafePointer<CChar>!, name: UnsafePointer<CChar>!, exec: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>! = nil, count: UnsafeMutablePointer<CUnsignedInt>! = nil, stamp: UnsafeMutablePointer<UnsafeMutablePointer<GDateTime>?>! = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let result = g_bookmark_file_get_application_info(_ptr, uri, name, exec, count, stamp, &error)
        if let error = error { throw GLibError(error) }
        let rv = ((result) != 0)
        return rv
    }

    /// Retrieves the names of the applications that have registered the
    /// bookmark for `uri`.
    /// 
    /// In the event the URI cannot be found, `nil` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    @inlinable func getApplications(uri: UnsafePointer<gchar>!, length: UnsafeMutablePointer<gsize>! = nil) throws -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        var error: UnsafeMutablePointer<GError>?
        let result = g_bookmark_file_get_applications(_ptr, uri, length, &error)
        if let error = error { throw GLibError(error) }
        let rv = result
        return rv
    }

    /// Retrieves the description of the bookmark for `uri`.
    /// 
    /// In the event the URI cannot be found, `nil` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    @inlinable func getDescription(uri: UnsafePointer<gchar>!) throws -> String! {
        var error: UnsafeMutablePointer<GError>?
        let result = g_bookmark_file_get_description(_ptr, uri, &error)
        if let error = error { throw GLibError(error) }
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Retrieves the list of group names of the bookmark for `uri`.
    /// 
    /// In the event the URI cannot be found, `nil` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    /// 
    /// The returned array is `nil` terminated, so `length` may optionally
    /// be `nil`.
    @inlinable func getGroups(uri: UnsafePointer<gchar>!, length: UnsafeMutablePointer<gsize>! = nil) throws -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        var error: UnsafeMutablePointer<GError>?
        let result = g_bookmark_file_get_groups(_ptr, uri, length, &error)
        if let error = error { throw GLibError(error) }
        let rv = result
        return rv
    }

    /// Gets the icon of the bookmark for `uri`.
    /// 
    /// In the event the URI cannot be found, `false` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    @inlinable func getIcon(uri: UnsafePointer<gchar>!, href: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! = nil, mimeType: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let result = g_bookmark_file_get_icon(_ptr, uri, href, mimeType, &error)
        if let error = error { throw GLibError(error) }
        let rv = ((result) != 0)
        return rv
    }

    /// Gets whether the private flag of the bookmark for `uri` is set.
    /// 
    /// In the event the URI cannot be found, `false` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.  In the
    /// event that the private flag cannot be found, `false` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_INVALID_VALUE`.
    @inlinable func getIsPrivate(uri: UnsafePointer<gchar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let result = g_bookmark_file_get_is_private(_ptr, uri, &error)
        if let error = error { throw GLibError(error) }
        let rv = ((result) != 0)
        return rv
    }

    /// Retrieves the MIME type of the resource pointed by `uri`.
    /// 
    /// In the event the URI cannot be found, `nil` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.  In the
    /// event that the MIME type cannot be found, `nil` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_INVALID_VALUE`.
    @inlinable func getMimeType(uri: UnsafePointer<gchar>!) throws -> String! {
        var error: UnsafeMutablePointer<GError>?
        let result = g_bookmark_file_get_mime_type(_ptr, uri, &error)
        if let error = error { throw GLibError(error) }
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Gets the time when the bookmark for `uri` was last modified.
    /// 
    /// In the event the URI cannot be found, -1 is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    ///
    /// **get_modified is deprecated:**
    /// Use g_bookmark_file_get_modified_date_time() instead, as
    ///    `time_t` is deprecated due to the year 2038 problem.
    @available(*, deprecated) @inlinable func getModified(uri: UnsafePointer<gchar>!) throws -> time_t {
        var error: UnsafeMutablePointer<GError>?
        let result = g_bookmark_file_get_modified(_ptr, uri, &error)
        if let error = error { throw GLibError(error) }
        let rv = result
        return rv
    }

    /// Gets the time when the bookmark for `uri` was last modified.
    /// 
    /// In the event the URI cannot be found, `nil` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    @inlinable func getModifiedDateTime(uri: UnsafePointer<CChar>!) throws -> DateTimeRef! {
        var error: UnsafeMutablePointer<GError>?
        let result = g_bookmark_file_get_modified_date_time(_ptr, uri, &error)
        if let error = error { throw GLibError(error) }
        let rv = DateTimeRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Gets the number of bookmarks inside `bookmark`.
    @inlinable func getSize() -> Int {
        let result = g_bookmark_file_get_size(_ptr)
        let rv = Int(result)
        return rv
    }

    /// Returns the title of the bookmark for `uri`.
    /// 
    /// If `uri` is `nil`, the title of `bookmark` is returned.
    /// 
    /// In the event the URI cannot be found, `nil` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    @inlinable func getTitle(uri: UnsafePointer<gchar>? = nil) throws -> String! {
        var error: UnsafeMutablePointer<GError>?
        let result = g_bookmark_file_get_title(_ptr, uri, &error)
        if let error = error { throw GLibError(error) }
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Returns all URIs of the bookmarks in the bookmark file `bookmark`.
    /// The array of returned URIs will be `nil`-terminated, so `length` may
    /// optionally be `nil`.
    @inlinable func getURIs(length: UnsafeMutablePointer<gsize>! = nil) -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        let result = g_bookmark_file_get_uris(_ptr, length)
        let rv = result
        return rv
    }

    /// Gets the time the bookmark for `uri` was last visited.
    /// 
    /// In the event the URI cannot be found, -1 is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    ///
    /// **get_visited is deprecated:**
    /// Use g_bookmark_file_get_visited_date_time() instead, as
    ///    `time_t` is deprecated due to the year 2038 problem.
    @available(*, deprecated) @inlinable func getVisited(uri: UnsafePointer<gchar>!) throws -> time_t {
        var error: UnsafeMutablePointer<GError>?
        let result = g_bookmark_file_get_visited(_ptr, uri, &error)
        if let error = error { throw GLibError(error) }
        let rv = result
        return rv
    }

    /// Gets the time the bookmark for `uri` was last visited.
    /// 
    /// In the event the URI cannot be found, `nil` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    @inlinable func getVisitedDateTime(uri: UnsafePointer<CChar>!) throws -> DateTimeRef! {
        var error: UnsafeMutablePointer<GError>?
        let result = g_bookmark_file_get_visited_date_time(_ptr, uri, &error)
        if let error = error { throw GLibError(error) }
        let rv = DateTimeRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Checks whether the bookmark for `uri` inside `bookmark` has been
    /// registered by application `name`.
    /// 
    /// In the event the URI cannot be found, `false` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    @inlinable func hasApplication(uri: UnsafePointer<gchar>!, name: UnsafePointer<gchar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let result = g_bookmark_file_has_application(_ptr, uri, name, &error)
        if let error = error { throw GLibError(error) }
        let rv = ((result) != 0)
        return rv
    }

    /// Checks whether `group` appears in the list of groups to which
    /// the bookmark for `uri` belongs to.
    /// 
    /// In the event the URI cannot be found, `false` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    @inlinable func hasGroup(uri: UnsafePointer<gchar>!, group: UnsafePointer<gchar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let result = g_bookmark_file_has_group(_ptr, uri, group, &error)
        if let error = error { throw GLibError(error) }
        let rv = ((result) != 0)
        return rv
    }

    /// Looks whether the desktop bookmark has an item with its URI set to `uri`.
    @inlinable func hasItem(uri: UnsafePointer<gchar>!) -> Bool {
        let result = g_bookmark_file_has_item(_ptr, uri)
        let rv = ((result) != 0)
        return rv
    }

    /// Loads a bookmark file from memory into an empty `GBookmarkFile`
    /// structure.  If the object cannot be created then `error` is set to a
    /// `GBookmarkFileError`.
    @inlinable func loadFrom(data: UnsafePointer<gchar>!, length: Int) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let result = g_bookmark_file_load_from_data(_ptr, data, gsize(length), &error)
        if let error = error { throw GLibError(error) }
        let rv = ((result) != 0)
        return rv
    }

    /// This function looks for a desktop bookmark file named `file` in the
    /// paths returned from `g_get_user_data_dir()` and `g_get_system_data_dirs()`,
    /// loads the file into `bookmark` and returns the file's full path in
    /// `full_path`.  If the file could not be loaded then `error` is
    /// set to either a `GFileError` or `GBookmarkFileError`.
    @inlinable func loadFromDataDirs(file: UnsafePointer<gchar>!, fullPath: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let result = g_bookmark_file_load_from_data_dirs(_ptr, file, fullPath, &error)
        if let error = error { throw GLibError(error) }
        let rv = ((result) != 0)
        return rv
    }

    /// Loads a desktop bookmark file into an empty `GBookmarkFile` structure.
    /// If the file could not be loaded then `error` is set to either a `GFileError`
    /// or `GBookmarkFileError`.
    @inlinable func loadFromFile(filename: UnsafePointer<gchar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let result = g_bookmark_file_load_from_file(_ptr, filename, &error)
        if let error = error { throw GLibError(error) }
        let rv = ((result) != 0)
        return rv
    }

    /// Changes the URI of a bookmark item from `old_uri` to `new_uri`.  Any
    /// existing bookmark for `new_uri` will be overwritten.  If `new_uri` is
    /// `nil`, then the bookmark is removed.
    /// 
    /// In the event the URI cannot be found, `false` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    @inlinable func moveItem(oldURI: UnsafePointer<gchar>!, newURI: UnsafePointer<gchar>? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let result = g_bookmark_file_move_item(_ptr, oldURI, newURI, &error)
        if let error = error { throw GLibError(error) }
        let rv = ((result) != 0)
        return rv
    }

    /// Removes application registered with `name` from the list of applications
    /// that have registered a bookmark for `uri` inside `bookmark`.
    /// 
    /// In the event the URI cannot be found, `false` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    /// In the event that no application with name `app_name` has registered
    /// a bookmark for `uri`,  `false` is returned and error is set to
    /// `G_BOOKMARK_FILE_ERROR_APP_NOT_REGISTERED`.
    @inlinable func removeApplication(uri: UnsafePointer<gchar>!, name: UnsafePointer<gchar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let result = g_bookmark_file_remove_application(_ptr, uri, name, &error)
        if let error = error { throw GLibError(error) }
        let rv = ((result) != 0)
        return rv
    }

    /// Removes `group` from the list of groups to which the bookmark
    /// for `uri` belongs to.
    /// 
    /// In the event the URI cannot be found, `false` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`.
    /// In the event no group was defined, `false` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_INVALID_VALUE`.
    @inlinable func removeGroup(uri: UnsafePointer<gchar>!, group: UnsafePointer<gchar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let result = g_bookmark_file_remove_group(_ptr, uri, group, &error)
        if let error = error { throw GLibError(error) }
        let rv = ((result) != 0)
        return rv
    }

    /// Removes the bookmark for `uri` from the bookmark file `bookmark`.
    @inlinable func removeItem(uri: UnsafePointer<gchar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let result = g_bookmark_file_remove_item(_ptr, uri, &error)
        if let error = error { throw GLibError(error) }
        let rv = ((result) != 0)
        return rv
    }

    /// Sets the time the bookmark for `uri` was added into `bookmark`.
    /// 
    /// If no bookmark for `uri` is found then it is created.
    ///
    /// **set_added is deprecated:**
    /// Use g_bookmark_file_set_added_date_time() instead, as
    ///    `time_t` is deprecated due to the year 2038 problem.
    @available(*, deprecated) @inlinable func setAdded(uri: UnsafePointer<gchar>!, added: time_t) {
        
        g_bookmark_file_set_added(_ptr, uri, added)
        
    }

    /// Sets the time the bookmark for `uri` was added into `bookmark`.
    /// 
    /// If no bookmark for `uri` is found then it is created.
    @inlinable func setAddedDateTime<DateTimeT: DateTimeProtocol>(uri: UnsafePointer<CChar>!, added: DateTimeT) {
        
        g_bookmark_file_set_added_date_time(_ptr, uri, added.date_time_ptr)
        
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
    /// command line using the `g_bookmark_file_get_application_info()` function.
    /// `count` is the number of times the application has registered the
    /// bookmark; if is &lt; 0, the current registration count will be increased
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
    ///
    /// **set_app_info is deprecated:**
    /// Use g_bookmark_file_set_application_info() instead, as
    ///    `time_t` is deprecated due to the year 2038 problem.
    @available(*, deprecated) @inlinable func setAppInfo(uri: UnsafePointer<gchar>!, name: UnsafePointer<gchar>!, exec: UnsafePointer<gchar>!, count: Int, stamp: time_t) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let result = g_bookmark_file_set_app_info(_ptr, uri, name, exec, gint(count), stamp, &error)
        if let error = error { throw GLibError(error) }
        let rv = ((result) != 0)
        return rv
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
    /// command line using the `g_bookmark_file_get_application_info()` function.
    /// `count` is the number of times the application has registered the
    /// bookmark; if is &lt; 0, the current registration count will be increased
    /// by one, if is 0, the application with `name` will be removed from
    /// the list of registered applications.
    /// `stamp` is the Unix time of the last registration.
    /// 
    /// If you try to remove an application by setting its registration count to
    /// zero, and no bookmark for `uri` is found, `false` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`; similarly,
    /// in the event that no application `name` has registered a bookmark
    /// for `uri`,  `false` is returned and error is set to
    /// `G_BOOKMARK_FILE_ERROR_APP_NOT_REGISTERED`.  Otherwise, if no bookmark
    /// for `uri` is found, one is created.
    @inlinable func setApplicationInfo(uri: UnsafePointer<CChar>!, name: UnsafePointer<CChar>!, exec: UnsafePointer<CChar>!, count: Int, stamp: DateTimeRef? = nil) throws -> Bool {
            var error: UnsafeMutablePointer<GError>?
        let result = g_bookmark_file_set_application_info(_ptr, uri, name, exec, gint(count), stamp?.date_time_ptr, &error)
        if let error = error { throw GLibError(error) }
        let rv = ((result) != 0)
            return rv
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
    /// command line using the `g_bookmark_file_get_application_info()` function.
    /// `count` is the number of times the application has registered the
    /// bookmark; if is &lt; 0, the current registration count will be increased
    /// by one, if is 0, the application with `name` will be removed from
    /// the list of registered applications.
    /// `stamp` is the Unix time of the last registration.
    /// 
    /// If you try to remove an application by setting its registration count to
    /// zero, and no bookmark for `uri` is found, `false` is returned and
    /// `error` is set to `G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND`; similarly,
    /// in the event that no application `name` has registered a bookmark
    /// for `uri`,  `false` is returned and error is set to
    /// `G_BOOKMARK_FILE_ERROR_APP_NOT_REGISTERED`.  Otherwise, if no bookmark
    /// for `uri` is found, one is created.
    @inlinable func setApplicationInfo<DateTimeT: DateTimeProtocol>(uri: UnsafePointer<CChar>!, name: UnsafePointer<CChar>!, exec: UnsafePointer<CChar>!, count: Int, stamp: DateTimeT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let result = g_bookmark_file_set_application_info(_ptr, uri, name, exec, gint(count), stamp?.date_time_ptr, &error)
        if let error = error { throw GLibError(error) }
        let rv = ((result) != 0)
        return rv
    }

    /// Sets `description` as the description of the bookmark for `uri`.
    /// 
    /// If `uri` is `nil`, the description of `bookmark` is set.
    /// 
    /// If a bookmark for `uri` cannot be found then it is created.
    @inlinable func setDescription(uri: UnsafePointer<gchar>? = nil, description: UnsafePointer<gchar>!) {
        
        g_bookmark_file_set_description(_ptr, uri, description)
        
    }

    /// Sets a list of group names for the item with URI `uri`.  Each previously
    /// set group name list is removed.
    /// 
    /// If `uri` cannot be found then an item for it is created.
    @inlinable func setGroups(uri: UnsafePointer<gchar>!, groups: UnsafeMutablePointer<UnsafePointer<gchar>?>! = nil, length: Int) {
        
        g_bookmark_file_set_groups(_ptr, uri, groups, gsize(length))
        
    }

    /// Sets the icon for the bookmark for `uri`. If `href` is `nil`, unsets
    /// the currently set icon. `href` can either be a full URL for the icon
    /// file or the icon name following the Icon Naming specification.
    /// 
    /// If no bookmark for `uri` is found one is created.
    @inlinable func setIcon(uri: UnsafePointer<gchar>!, href: UnsafePointer<gchar>? = nil, mimeType: UnsafePointer<gchar>!) {
        
        g_bookmark_file_set_icon(_ptr, uri, href, mimeType)
        
    }

    /// Sets the private flag of the bookmark for `uri`.
    /// 
    /// If a bookmark for `uri` cannot be found then it is created.
    @inlinable func setIsPrivate(uri: UnsafePointer<gchar>!, isPrivate: Bool) {
        
        g_bookmark_file_set_is_private(_ptr, uri, gboolean((isPrivate) ? 1 : 0))
        
    }

    /// Sets `mime_type` as the MIME type of the bookmark for `uri`.
    /// 
    /// If a bookmark for `uri` cannot be found then it is created.
    @inlinable func setMimeType(uri: UnsafePointer<gchar>!, mimeType: UnsafePointer<gchar>!) {
        
        g_bookmark_file_set_mime_type(_ptr, uri, mimeType)
        
    }

    /// Sets the last time the bookmark for `uri` was last modified.
    /// 
    /// If no bookmark for `uri` is found then it is created.
    /// 
    /// The "modified" time should only be set when the bookmark's meta-data
    /// was actually changed.  Every function of `GBookmarkFile` that
    /// modifies a bookmark also changes the modification time, except for
    /// `g_bookmark_file_set_visited_date_time()`.
    ///
    /// **set_modified is deprecated:**
    /// Use g_bookmark_file_set_modified_date_time() instead, as
    ///    `time_t` is deprecated due to the year 2038 problem.
    @available(*, deprecated) @inlinable func setModified(uri: UnsafePointer<gchar>!, modified: time_t) {
        
        g_bookmark_file_set_modified(_ptr, uri, modified)
        
    }

    /// Sets the last time the bookmark for `uri` was last modified.
    /// 
    /// If no bookmark for `uri` is found then it is created.
    /// 
    /// The "modified" time should only be set when the bookmark's meta-data
    /// was actually changed.  Every function of `GBookmarkFile` that
    /// modifies a bookmark also changes the modification time, except for
    /// `g_bookmark_file_set_visited_date_time()`.
    @inlinable func setModifiedDateTime<DateTimeT: DateTimeProtocol>(uri: UnsafePointer<CChar>!, modified: DateTimeT) {
        
        g_bookmark_file_set_modified_date_time(_ptr, uri, modified.date_time_ptr)
        
    }

    /// Sets `title` as the title of the bookmark for `uri` inside the
    /// bookmark file `bookmark`.
    /// 
    /// If `uri` is `nil`, the title of `bookmark` is set.
    /// 
    /// If a bookmark for `uri` cannot be found then it is created.
    @inlinable func setTitle(uri: UnsafePointer<gchar>? = nil, title: UnsafePointer<gchar>!) {
        
        g_bookmark_file_set_title(_ptr, uri, title)
        
    }

    /// Sets the time the bookmark for `uri` was last visited.
    /// 
    /// If no bookmark for `uri` is found then it is created.
    /// 
    /// The "visited" time should only be set if the bookmark was launched,
    /// either using the command line retrieved by `g_bookmark_file_get_application_info()`
    /// or by the default application for the bookmark's MIME type, retrieved
    /// using `g_bookmark_file_get_mime_type()`.  Changing the "visited" time
    /// does not affect the "modified" time.
    ///
    /// **set_visited is deprecated:**
    /// Use g_bookmark_file_set_visited_date_time() instead, as
    ///    `time_t` is deprecated due to the year 2038 problem.
    @available(*, deprecated) @inlinable func setVisited(uri: UnsafePointer<gchar>!, visited: time_t) {
        
        g_bookmark_file_set_visited(_ptr, uri, visited)
        
    }

    /// Sets the time the bookmark for `uri` was last visited.
    /// 
    /// If no bookmark for `uri` is found then it is created.
    /// 
    /// The "visited" time should only be set if the bookmark was launched,
    /// either using the command line retrieved by `g_bookmark_file_get_application_info()`
    /// or by the default application for the bookmark's MIME type, retrieved
    /// using `g_bookmark_file_get_mime_type()`.  Changing the "visited" time
    /// does not affect the "modified" time.
    @inlinable func setVisitedDateTime<DateTimeT: DateTimeProtocol>(uri: UnsafePointer<CChar>!, visited: DateTimeT) {
        
        g_bookmark_file_set_visited_date_time(_ptr, uri, visited.date_time_ptr)
        
    }

    /// This function outputs `bookmark` as a string.
    @inlinable func toData(length: UnsafeMutablePointer<gsize>! = nil) throws -> String! {
        var error: UnsafeMutablePointer<GError>?
        let result = g_bookmark_file_to_data(_ptr, length, &error)
        if let error = error { throw GLibError(error) }
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// This function outputs `bookmark` into a file.  The write process is
    /// guaranteed to be atomic by using `g_file_set_contents()` internally.
    @inlinable func toFile(filename: UnsafePointer<gchar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let result = g_bookmark_file_to_file(_ptr, filename, &error)
        if let error = error { throw GLibError(error) }
        let rv = ((result) != 0)
        return rv
    }
    /// Gets the number of bookmarks inside `bookmark`.
    @inlinable var size: Int {
        /// Gets the number of bookmarks inside `bookmark`.
        get {
            let result = g_bookmark_file_get_size(_ptr)
        let rv = Int(result)
            return rv
        }
    }


}



// MARK: - ByteArray Record

/// Contains the public fields of a GByteArray.
///
/// The `ByteArrayProtocol` protocol exposes the methods and properties of an underlying `GByteArray` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ByteArray`.
/// Alternatively, use `ByteArrayRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ByteArrayProtocol {
        /// Untyped pointer to the underlying `GByteArray` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GByteArray` instance.
    var byte_array_ptr: UnsafeMutablePointer<GByteArray>! { get }

    /// Required Initialiser for types conforming to `ByteArrayProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Contains the public fields of a GByteArray.
///
/// The `ByteArrayRef` type acts as a lightweight Swift reference to an underlying `GByteArray` instance.
/// It exposes methods that can operate on this data type through `ByteArrayProtocol` conformance.
/// Use `ByteArrayRef` only as an `unowned` reference to an existing `GByteArray` instance.
///
public struct ByteArrayRef: ByteArrayProtocol {
        /// Untyped pointer to the underlying `GByteArray` instance.
    /// For type-safe access, use the generated, typed pointer `byte_array_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ByteArrayRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GByteArray>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GByteArray>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GByteArray>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GByteArray>?) {
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

    /// Reference intialiser for a related type that implements `ByteArrayProtocol`
    @inlinable init<T: ByteArrayProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Create byte array containing the data. The data will be owned by the array
    /// and will be freed with `g_free()`, i.e. it could be allocated using `g_strdup()`.
    /// 
    /// Do not use it if `len` is greater than `G_MAXUINT`. `GByteArray`
    /// stores the length of its data in `guint`, which may be shorter than
    /// `gsize`.
    @inlinable static func new(take data: UnsafeMutablePointer<guint8>!, len: Int) -> ByteArrayRef! {
            let result = g_byte_array_new_take(data, gsize(len))
        guard let rv = ByteArrayRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new `GByteArray` with `reserved_size` bytes preallocated.
    /// This avoids frequent reallocation, if you are going to add many
    /// bytes to the array. Note however that the size of the array is still
    /// 0.
    @inlinable static func sizedNew(sized reservedSize: Int) -> ByteArrayRef! {
            let result = g_byte_array_sized_new(guint(reservedSize))
        guard let rv = ByteArrayRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }
}

/// Contains the public fields of a GByteArray.
///
/// The `ByteArray` type acts as a reference-counted owner of an underlying `GByteArray` instance.
/// It provides the methods that can operate on this data type through `ByteArrayProtocol` conformance.
/// Use `ByteArray` as a strong reference or owner of a `GByteArray` instance.
///
open class ByteArray: ByteArrayProtocol {
        /// Untyped pointer to the underlying `GByteArray` instance.
    /// For type-safe access, use the generated, typed pointer `byte_array_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ByteArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GByteArray>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ByteArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GByteArray>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ByteArray` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ByteArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ByteArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GByteArray>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ByteArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GByteArray>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GByteArray`.
    /// i.e., ownership is transferred to the `ByteArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GByteArray>) {
        ptr = UnsafeMutableRawPointer(op)
        g_byte_array_ref(ptr.assumingMemoryBound(to: GByteArray.self))
    }

    /// Reference intialiser for a related type that implements `ByteArrayProtocol`
    /// Will retain `GByteArray`.
    /// - Parameter other: an instance of a related type that implements `ByteArrayProtocol`
    @inlinable public init<T: ByteArrayProtocol>(_ other: T) {
        ptr = other.ptr
        g_byte_array_ref(ptr.assumingMemoryBound(to: GByteArray.self))
    }

    /// Releases the underlying `GByteArray` instance using `g_byte_array_unref`.
    deinit {
        g_byte_array_unref(ptr.assumingMemoryBound(to: GByteArray.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_byte_array_ref(ptr.assumingMemoryBound(to: GByteArray.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_byte_array_ref(ptr.assumingMemoryBound(to: GByteArray.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_byte_array_ref(ptr.assumingMemoryBound(to: GByteArray.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_byte_array_ref(ptr.assumingMemoryBound(to: GByteArray.self))
    }


    /// Create byte array containing the data. The data will be owned by the array
    /// and will be freed with `g_free()`, i.e. it could be allocated using `g_strdup()`.
    /// 
    /// Do not use it if `len` is greater than `G_MAXUINT`. `GByteArray`
    /// stores the length of its data in `guint`, which may be shorter than
    /// `gsize`.
    @inlinable public static func new(take data: UnsafeMutablePointer<guint8>!, len: Int) -> ByteArray! {
            let result = g_byte_array_new_take(data, gsize(len))
        guard let rv = ByteArray(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new `GByteArray` with `reserved_size` bytes preallocated.
    /// This avoids frequent reallocation, if you are going to add many
    /// bytes to the array. Note however that the size of the array is still
    /// 0.
    @inlinable public static func sizedNew(sized reservedSize: Int) -> ByteArray! {
            let result = g_byte_array_sized_new(guint(reservedSize))
        guard let rv = ByteArray(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

}

// MARK: no ByteArray properties

// MARK: no ByteArray signals

// MARK: ByteArray has no signals
// MARK: ByteArray Record: ByteArrayProtocol extension (methods and fields)
public extension ByteArrayProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GByteArray` instance.
    @inlinable var byte_array_ptr: UnsafeMutablePointer<GByteArray>! { return ptr?.assumingMemoryBound(to: GByteArray.self) }

    /// Adds the given bytes to the end of the `GByteArray`.
    /// The array will grow in size automatically if necessary.
    @inlinable func append(data: UnsafePointer<guint8>!, len: Int) -> ByteArrayRef! {
        let result = g_byte_array_append(byte_array_ptr, data, guint(len))
        guard let rv = ByteArrayRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Frees the memory allocated by the `GByteArray`. If `free_segment` is
    /// `true` it frees the actual byte data. If the reference count of
    /// `array` is greater than one, the `GByteArray` wrapper is preserved but
    /// the size of `array` will be set to zero.
    @inlinable func free(freeSegment: Bool) -> UnsafeMutablePointer<guint8>! {
        let result = g_byte_array_free(byte_array_ptr, gboolean((freeSegment) ? 1 : 0))
        let rv = result
        return rv
    }

    /// Transfers the data from the `GByteArray` into a new immutable `GBytes`.
    /// 
    /// The `GByteArray` is freed unless the reference count of `array` is greater
    /// than one, the `GByteArray` wrapper is preserved but the size of `array`
    /// will be set to zero.
    /// 
    /// This is identical to using `g_bytes_new_take()` and `g_byte_array_free()`
    /// together.
    @inlinable func freeToBytes() -> BytesRef! {
        let result = g_byte_array_free_to_bytes(byte_array_ptr)
        let rv = BytesRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Adds the given data to the start of the `GByteArray`.
    /// The array will grow in size automatically if necessary.
    @inlinable func prepend(data: UnsafePointer<guint8>!, len: Int) -> ByteArrayRef! {
        let result = g_byte_array_prepend(byte_array_ptr, data, guint(len))
        guard let rv = ByteArrayRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Atomically increments the reference count of `array` by one.
    /// This function is thread-safe and may be called from any thread.
    @discardableResult @inlinable func ref() -> ByteArrayRef! {
        let result = g_byte_array_ref(byte_array_ptr)
        guard let rv = ByteArrayRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Removes the byte at the given index from a `GByteArray`.
    /// The following bytes are moved down one place.
    @inlinable func remove(index: Int) -> ByteArrayRef! {
        let result = g_byte_array_remove_index(byte_array_ptr, guint(index))
        guard let rv = ByteArrayRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Removes the byte at the given index from a `GByteArray`. The last
    /// element in the array is used to fill in the space, so this function
    /// does not preserve the order of the `GByteArray`. But it is faster
    /// than `g_byte_array_remove_index()`.
    @inlinable func removeIndexFast(index: Int) -> ByteArrayRef! {
        let result = g_byte_array_remove_index_fast(byte_array_ptr, guint(index))
        guard let rv = ByteArrayRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Removes the given number of bytes starting at the given index from a
    /// `GByteArray`.  The following elements are moved to close the gap.
    @inlinable func removeRange(index: Int, length: Int) -> ByteArrayRef! {
        let result = g_byte_array_remove_range(byte_array_ptr, guint(index), guint(length))
        guard let rv = ByteArrayRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Sets the size of the `GByteArray`, expanding it if necessary.
    @inlinable func setSize(length: Int) -> ByteArrayRef! {
        let result = g_byte_array_set_size(byte_array_ptr, guint(length))
        guard let rv = ByteArrayRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Sorts a byte array, using `compare_func` which should be a
    /// `qsort()`-style comparison function (returns less than zero for first
    /// arg is less than second arg, zero for equal, greater than zero if
    /// first arg is greater than second arg).
    /// 
    /// If two array elements compare equal, their order in the sorted array
    /// is undefined. If you want equal elements to keep their order (i.e.
    /// you want a stable sort) you can write a comparison function that,
    /// if two elements would otherwise compare equal, compares them by
    /// their addresses.
    @inlinable func sort(compareFunc: GCompareFunc?) {
        
        g_byte_array_sort(byte_array_ptr, compareFunc)
        
    }

    /// Like `g_byte_array_sort()`, but the comparison function takes an extra
    /// user data argument.
    @inlinable func sortWithData(compareFunc: GCompareDataFunc?, userData: gpointer? = nil) {
        
        g_byte_array_sort_with_data(byte_array_ptr, compareFunc, userData)
        
    }

    /// Frees the data in the array and resets the size to zero, while
    /// the underlying array is preserved for use elsewhere and returned
    /// to the caller.
    @inlinable func steal(len: UnsafeMutablePointer<gsize>! = nil) -> UnsafeMutablePointer<guint8>! {
        let result = g_byte_array_steal(byte_array_ptr, len)
        let rv = result
        return rv
    }

    /// Atomically decrements the reference count of `array` by one. If the
    /// reference count drops to 0, all memory allocated by the array is
    /// released. This function is thread-safe and may be called from any
    /// thread.
    @inlinable func unref() {
        
        g_byte_array_unref(byte_array_ptr)
        
    }

    /// Frees the memory allocated by the `GByteArray`. If `free_segment` is
    /// `true` it frees the actual byte data. If the reference count of
    /// `array` is greater than one, the `GByteArray` wrapper is preserved but
    /// the size of `array` will be set to zero.
    @inlinable func byteArrayFree(freeSegment: Bool) -> UnsafeMutablePointer<guint8>! {
        let result = g_byte_array_free(byte_array_ptr, gboolean((freeSegment) ? 1 : 0))
        let rv = result
        return rv
    }

    /// Transfers the data from the `GByteArray` into a new immutable `GBytes`.
    /// 
    /// The `GByteArray` is freed unless the reference count of `array` is greater
    /// than one, the `GByteArray` wrapper is preserved but the size of `array`
    /// will be set to zero.
    /// 
    /// This is identical to using `g_bytes_new_take()` and `g_byte_array_free()`
    /// together.
    @inlinable func byteArrayFreeToBytes() -> BytesRef! {
        let result = g_byte_array_free_to_bytes(byte_array_ptr)
        let rv = BytesRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Frees the data in the array and resets the size to zero, while
    /// the underlying array is preserved for use elsewhere and returned
    /// to the caller.
    @inlinable func byteArraySteal(len: UnsafeMutablePointer<gsize>! = nil) -> UnsafeMutablePointer<guint8>! {
        let result = g_byte_array_steal(byte_array_ptr, len)
        let rv = result
        return rv
    }

    /// Atomically decrements the reference count of `array` by one. If the
    /// reference count drops to 0, all memory allocated by the array is
    /// released. This function is thread-safe and may be called from any
    /// thread.
    @inlinable func byteArrayUnref() {
        
        g_byte_array_unref(byte_array_ptr)
        
    }

    /// a pointer to the element data. The data may be moved as
    ///     elements are added to the `GByteArray`
    @inlinable var data: UnsafeMutablePointer<guint8>! {
        /// a pointer to the element data. The data may be moved as
        ///     elements are added to the `GByteArray`
        get {
            let rv = byte_array_ptr.pointee.data
    return rv
        }
        /// a pointer to the element data. The data may be moved as
        ///     elements are added to the `GByteArray`
         set {
            byte_array_ptr.pointee.data = newValue
        }
    }

    /// the number of elements in the `GByteArray`
    @inlinable var len: guint {
        /// the number of elements in the `GByteArray`
        get {
            let rv = byte_array_ptr.pointee.len
    return rv
        }
        /// the number of elements in the `GByteArray`
         set {
            byte_array_ptr.pointee.len = newValue
        }
    }

}



// MARK: - Bytes Record

/// A simple refcounted data type representing an immutable sequence of zero or
/// more bytes from an unspecified origin.
/// 
/// The purpose of a `GBytes` is to keep the memory region that it holds
/// alive for as long as anyone holds a reference to the bytes.  When
/// the last reference count is dropped, the memory is released. Multiple
/// unrelated callers can use byte data in the `GBytes` without coordinating
/// their activities, resting assured that the byte data will not change or
/// move while they hold a reference.
/// 
/// A `GBytes` can come from many different origins that may have
/// different procedures for freeing the memory region.  Examples are
/// memory from `g_malloc()`, from memory slices, from a `GMappedFile` or
/// memory from other allocators.
/// 
/// `GBytes` work well as keys in `GHashTable`. Use `g_bytes_equal()` and
/// `g_bytes_hash()` as parameters to `g_hash_table_new()` or `g_hash_table_new_full()`.
/// `GBytes` can also be used as keys in a `GTree` by passing the `g_bytes_compare()`
/// function to `g_tree_new()`.
/// 
/// The data pointed to by this bytes must not be modified. For a mutable
/// array of bytes see `GByteArray`. Use `g_bytes_unref_to_array()` to create a
/// mutable array for a `GBytes` sequence. To create an immutable `GBytes` from
/// a mutable `GByteArray`, use the `g_byte_array_free_to_bytes()` function.
///
/// The `BytesProtocol` protocol exposes the methods and properties of an underlying `GBytes` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Bytes`.
/// Alternatively, use `BytesRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol BytesProtocol {
        /// Untyped pointer to the underlying `GBytes` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GBytes` instance.
    var bytes_ptr: UnsafeMutablePointer<GBytes>! { get }

    /// Required Initialiser for types conforming to `BytesProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A simple refcounted data type representing an immutable sequence of zero or
/// more bytes from an unspecified origin.
/// 
/// The purpose of a `GBytes` is to keep the memory region that it holds
/// alive for as long as anyone holds a reference to the bytes.  When
/// the last reference count is dropped, the memory is released. Multiple
/// unrelated callers can use byte data in the `GBytes` without coordinating
/// their activities, resting assured that the byte data will not change or
/// move while they hold a reference.
/// 
/// A `GBytes` can come from many different origins that may have
/// different procedures for freeing the memory region.  Examples are
/// memory from `g_malloc()`, from memory slices, from a `GMappedFile` or
/// memory from other allocators.
/// 
/// `GBytes` work well as keys in `GHashTable`. Use `g_bytes_equal()` and
/// `g_bytes_hash()` as parameters to `g_hash_table_new()` or `g_hash_table_new_full()`.
/// `GBytes` can also be used as keys in a `GTree` by passing the `g_bytes_compare()`
/// function to `g_tree_new()`.
/// 
/// The data pointed to by this bytes must not be modified. For a mutable
/// array of bytes see `GByteArray`. Use `g_bytes_unref_to_array()` to create a
/// mutable array for a `GBytes` sequence. To create an immutable `GBytes` from
/// a mutable `GByteArray`, use the `g_byte_array_free_to_bytes()` function.
///
/// The `BytesRef` type acts as a lightweight Swift reference to an underlying `GBytes` instance.
/// It exposes methods that can operate on this data type through `BytesProtocol` conformance.
/// Use `BytesRef` only as an `unowned` reference to an existing `GBytes` instance.
///
public struct BytesRef: BytesProtocol {
        /// Untyped pointer to the underlying `GBytes` instance.
    /// For type-safe access, use the generated, typed pointer `bytes_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BytesRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GBytes>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GBytes>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GBytes>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GBytes>?) {
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

    /// Reference intialiser for a related type that implements `BytesProtocol`
    @inlinable init<T: BytesProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GBytes` from `data`.
    /// 
    /// `data` is copied. If `size` is 0, `data` may be `nil`.
    @inlinable init( data: gconstpointer! = nil, size: Int) {
            let result = g_bytes_new(data, gsize(size))
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GBytes` from static data.
    /// 
    /// `data` must be static (ie: never modified or freed). It may be `nil` if `size`
    /// is 0.
    @inlinable init(static_ data: gconstpointer! = nil, size: Int) {
            let result = g_bytes_new_static(data, gsize(size))
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GBytes` from `data`.
    /// 
    /// After this call, `data` belongs to the bytes and may no longer be
    /// modified by the caller.  `g_free()` will be called on `data` when the
    /// bytes is no longer in use. Because of this `data` must have been created by
    /// a call to `g_malloc()`, `g_malloc0()` or `g_realloc()` or by one of the many
    /// functions that wrap these calls (such as `g_new()`, `g_strdup()`, etc).
    /// 
    /// For creating `GBytes` with memory from other allocators, see
    /// `g_bytes_new_with_free_func()`.
    /// 
    /// `data` may be `nil` if `size` is 0.
    @inlinable init(take data: gpointer! = nil, size: Int) {
            let result = g_bytes_new_take(data, gsize(size))
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GBytes` from `data`.
    /// 
    /// When the last reference is dropped, `free_func` will be called with the
    /// `user_data` argument.
    /// 
    /// `data` must not be modified after this call is made until `free_func` has
    /// been called to indicate that the bytes is no longer in use.
    /// 
    /// `data` may be `nil` if `size` is 0.
    @inlinable init(freeFunc data: gconstpointer! = nil, size: Int, freeFunc: GDestroyNotify?, userData: gpointer? = nil) {
            let result = g_bytes_new_with_free_func(data, gsize(size), freeFunc, userData)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GBytes` from static data.
    /// 
    /// `data` must be static (ie: never modified or freed). It may be `nil` if `size`
    /// is 0.
    @inlinable static func newStatic(static_ data: gconstpointer! = nil, size: Int) -> BytesRef! {
            let result = g_bytes_new_static(data, gsize(size))
        guard let rv = BytesRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new `GBytes` from `data`.
    /// 
    /// After this call, `data` belongs to the bytes and may no longer be
    /// modified by the caller.  `g_free()` will be called on `data` when the
    /// bytes is no longer in use. Because of this `data` must have been created by
    /// a call to `g_malloc()`, `g_malloc0()` or `g_realloc()` or by one of the many
    /// functions that wrap these calls (such as `g_new()`, `g_strdup()`, etc).
    /// 
    /// For creating `GBytes` with memory from other allocators, see
    /// `g_bytes_new_with_free_func()`.
    /// 
    /// `data` may be `nil` if `size` is 0.
    @inlinable static func new(take data: gpointer! = nil, size: Int) -> BytesRef! {
            let result = g_bytes_new_take(data, gsize(size))
        guard let rv = BytesRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a `GBytes` from `data`.
    /// 
    /// When the last reference is dropped, `free_func` will be called with the
    /// `user_data` argument.
    /// 
    /// `data` must not be modified after this call is made until `free_func` has
    /// been called to indicate that the bytes is no longer in use.
    /// 
    /// `data` may be `nil` if `size` is 0.
    @inlinable static func newWith(freeFunc data: gconstpointer! = nil, size: Int, freeFunc: GDestroyNotify?, userData: gpointer? = nil) -> BytesRef! {
            let result = g_bytes_new_with_free_func(data, gsize(size), freeFunc, userData)
        guard let rv = BytesRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }
}

/// A simple refcounted data type representing an immutable sequence of zero or
/// more bytes from an unspecified origin.
/// 
/// The purpose of a `GBytes` is to keep the memory region that it holds
/// alive for as long as anyone holds a reference to the bytes.  When
/// the last reference count is dropped, the memory is released. Multiple
/// unrelated callers can use byte data in the `GBytes` without coordinating
/// their activities, resting assured that the byte data will not change or
/// move while they hold a reference.
/// 
/// A `GBytes` can come from many different origins that may have
/// different procedures for freeing the memory region.  Examples are
/// memory from `g_malloc()`, from memory slices, from a `GMappedFile` or
/// memory from other allocators.
/// 
/// `GBytes` work well as keys in `GHashTable`. Use `g_bytes_equal()` and
/// `g_bytes_hash()` as parameters to `g_hash_table_new()` or `g_hash_table_new_full()`.
/// `GBytes` can also be used as keys in a `GTree` by passing the `g_bytes_compare()`
/// function to `g_tree_new()`.
/// 
/// The data pointed to by this bytes must not be modified. For a mutable
/// array of bytes see `GByteArray`. Use `g_bytes_unref_to_array()` to create a
/// mutable array for a `GBytes` sequence. To create an immutable `GBytes` from
/// a mutable `GByteArray`, use the `g_byte_array_free_to_bytes()` function.
///
/// The `Bytes` type acts as a reference-counted owner of an underlying `GBytes` instance.
/// It provides the methods that can operate on this data type through `BytesProtocol` conformance.
/// Use `Bytes` as a strong reference or owner of a `GBytes` instance.
///
open class Bytes: BytesProtocol {
        /// Untyped pointer to the underlying `GBytes` instance.
    /// For type-safe access, use the generated, typed pointer `bytes_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Bytes` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GBytes>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Bytes` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GBytes>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Bytes` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Bytes` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Bytes` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GBytes>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Bytes` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GBytes>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GBytes`.
    /// i.e., ownership is transferred to the `Bytes` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GBytes>) {
        ptr = UnsafeMutableRawPointer(op)
        g_bytes_ref(ptr.assumingMemoryBound(to: GBytes.self))
    }

    /// Reference intialiser for a related type that implements `BytesProtocol`
    /// Will retain `GBytes`.
    /// - Parameter other: an instance of a related type that implements `BytesProtocol`
    @inlinable public init<T: BytesProtocol>(_ other: T) {
        ptr = other.ptr
        g_bytes_ref(ptr.assumingMemoryBound(to: GBytes.self))
    }

    /// Releases the underlying `GBytes` instance using `g_bytes_unref`.
    deinit {
        g_bytes_unref(ptr.assumingMemoryBound(to: GBytes.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_bytes_ref(ptr.assumingMemoryBound(to: GBytes.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_bytes_ref(ptr.assumingMemoryBound(to: GBytes.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_bytes_ref(ptr.assumingMemoryBound(to: GBytes.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_bytes_ref(ptr.assumingMemoryBound(to: GBytes.self))
    }

    /// Creates a new `GBytes` from `data`.
    /// 
    /// `data` is copied. If `size` is 0, `data` may be `nil`.
    @inlinable public init( data: gconstpointer! = nil, size: Int) {
            let result = g_bytes_new(data, gsize(size))
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GBytes` from static data.
    /// 
    /// `data` must be static (ie: never modified or freed). It may be `nil` if `size`
    /// is 0.
    @inlinable public init(static_ data: gconstpointer! = nil, size: Int) {
            let result = g_bytes_new_static(data, gsize(size))
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GBytes` from `data`.
    /// 
    /// After this call, `data` belongs to the bytes and may no longer be
    /// modified by the caller.  `g_free()` will be called on `data` when the
    /// bytes is no longer in use. Because of this `data` must have been created by
    /// a call to `g_malloc()`, `g_malloc0()` or `g_realloc()` or by one of the many
    /// functions that wrap these calls (such as `g_new()`, `g_strdup()`, etc).
    /// 
    /// For creating `GBytes` with memory from other allocators, see
    /// `g_bytes_new_with_free_func()`.
    /// 
    /// `data` may be `nil` if `size` is 0.
    @inlinable public init(take data: gpointer! = nil, size: Int) {
            let result = g_bytes_new_take(data, gsize(size))
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GBytes` from `data`.
    /// 
    /// When the last reference is dropped, `free_func` will be called with the
    /// `user_data` argument.
    /// 
    /// `data` must not be modified after this call is made until `free_func` has
    /// been called to indicate that the bytes is no longer in use.
    /// 
    /// `data` may be `nil` if `size` is 0.
    @inlinable public init(freeFunc data: gconstpointer! = nil, size: Int, freeFunc: GDestroyNotify?, userData: gpointer? = nil) {
            let result = g_bytes_new_with_free_func(data, gsize(size), freeFunc, userData)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GBytes` from static data.
    /// 
    /// `data` must be static (ie: never modified or freed). It may be `nil` if `size`
    /// is 0.
    @inlinable public static func newStatic(static_ data: gconstpointer! = nil, size: Int) -> Bytes! {
            let result = g_bytes_new_static(data, gsize(size))
        guard let rv = Bytes(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new `GBytes` from `data`.
    /// 
    /// After this call, `data` belongs to the bytes and may no longer be
    /// modified by the caller.  `g_free()` will be called on `data` when the
    /// bytes is no longer in use. Because of this `data` must have been created by
    /// a call to `g_malloc()`, `g_malloc0()` or `g_realloc()` or by one of the many
    /// functions that wrap these calls (such as `g_new()`, `g_strdup()`, etc).
    /// 
    /// For creating `GBytes` with memory from other allocators, see
    /// `g_bytes_new_with_free_func()`.
    /// 
    /// `data` may be `nil` if `size` is 0.
    @inlinable public static func new(take data: gpointer! = nil, size: Int) -> Bytes! {
            let result = g_bytes_new_take(data, gsize(size))
        guard let rv = Bytes(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a `GBytes` from `data`.
    /// 
    /// When the last reference is dropped, `free_func` will be called with the
    /// `user_data` argument.
    /// 
    /// `data` must not be modified after this call is made until `free_func` has
    /// been called to indicate that the bytes is no longer in use.
    /// 
    /// `data` may be `nil` if `size` is 0.
    @inlinable public static func newWith(freeFunc data: gconstpointer! = nil, size: Int, freeFunc: GDestroyNotify?, userData: gpointer? = nil) -> Bytes! {
            let result = g_bytes_new_with_free_func(data, gsize(size), freeFunc, userData)
        guard let rv = Bytes(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

}

// MARK: no Bytes properties

// MARK: no Bytes signals

// MARK: Bytes has no signals
// MARK: Bytes Record: BytesProtocol extension (methods and fields)
public extension BytesProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GBytes` instance.
    @inlinable var bytes_ptr: UnsafeMutablePointer<GBytes>! { return ptr?.assumingMemoryBound(to: GBytes.self) }

    /// Compares the two `GBytes` values.
    /// 
    /// This function can be used to sort GBytes instances in lexicographical order.
    /// 
    /// If `bytes1` and `bytes2` have different length but the shorter one is a
    /// prefix of the longer one then the shorter one is considered to be less than
    /// the longer one. Otherwise the first byte where both differ is used for
    /// comparison. If `bytes1` has a smaller value at that position it is
    /// considered less, otherwise greater than `bytes2`.
    @inlinable func compare<BytesT: BytesProtocol>(bytes2: BytesT) -> Int {
        let result = g_bytes_compare(bytes_ptr, bytes2.bytes_ptr)
        let rv = Int(result)
        return rv
    }

    /// Compares the two `GBytes` values being pointed to and returns
    /// `true` if they are equal.
    /// 
    /// This function can be passed to `g_hash_table_new()` as the `key_equal_func`
    /// parameter, when using non-`nil` `GBytes` pointers as keys in a `GHashTable`.
    @inlinable func equal<BytesT: BytesProtocol>(bytes2: BytesT) -> Bool {
        let result = g_bytes_equal(bytes_ptr, bytes2.bytes_ptr)
        let rv = ((result) != 0)
        return rv
    }

    /// Get the byte data in the `GBytes`. This data should not be modified.
    /// 
    /// This function will always return the same pointer for a given `GBytes`.
    /// 
    /// `nil` may be returned if `size` is 0. This is not guaranteed, as the `GBytes`
    /// may represent an empty string with `data` non-`nil` and `size` as 0. `nil` will
    /// not be returned if `size` is non-zero.
    @inlinable func getData(size: UnsafeMutablePointer<gsize>! = nil) -> gconstpointer? {
        let result = g_bytes_get_data(bytes_ptr, size)
        let rv = result
        return rv
    }

    /// Gets a pointer to a region in `bytes`.
    /// 
    /// The region starts at `offset` many bytes from the start of the data
    /// and contains `n_elements` many elements of `element_size` size.
    /// 
    /// `n_elements` may be zero, but `element_size` must always be non-zero.
    /// IDeally, `element_size` is a static constant (eg: sizeof a struct).
    /// 
    /// This function does careful bounds checking (including checking for
    /// arithmetic overflows) and returns a non-`nil` pointer if the
    /// specified region lies entirely within the `bytes`. If the region is
    /// in some way out of range, or if an overflow has occurred, then `nil`
    /// is returned.
    /// 
    /// Note: it is possible to have a valid zero-size region. In this case,
    /// the returned pointer will be equal to the base pointer of the data of
    /// `bytes`, plus `offset`.  This will be non-`nil` except for the case
    /// where `bytes` itself was a zero-sized region.  Since it is unlikely
    /// that you will be using this function to check for a zero-sized region
    /// in a zero-sized `bytes`, `nil` effectively always means "error".
    @inlinable func getRegion(elementSize: Int, offset: Int, nElements: Int) -> gconstpointer? {
        let result = g_bytes_get_region(bytes_ptr, gsize(elementSize), gsize(offset), gsize(nElements))
        let rv = result
        return rv
    }

    /// Get the size of the byte data in the `GBytes`.
    /// 
    /// This function will always return the same value for a given `GBytes`.
    @inlinable func getSize() -> Int {
        let result = g_bytes_get_size(bytes_ptr)
        let rv = Int(result)
        return rv
    }

    /// Creates an integer hash code for the byte data in the `GBytes`.
    /// 
    /// This function can be passed to `g_hash_table_new()` as the `key_hash_func`
    /// parameter, when using non-`nil` `GBytes` pointers as keys in a `GHashTable`.
    @inlinable func hash() -> Int {
        let result = g_bytes_hash(bytes_ptr)
        let rv = Int(result)
        return rv
    }

    /// Creates a `GBytes` which is a subsection of another `GBytes`. The `offset` +
    /// `length` may not be longer than the size of `bytes`.
    /// 
    /// A reference to `bytes` will be held by the newly created `GBytes` until
    /// the byte data is no longer needed.
    /// 
    /// Since 2.56, if `offset` is 0 and `length` matches the size of `bytes`, then
    /// `bytes` will be returned with the reference count incremented by 1. If `bytes`
    /// is a slice of another `GBytes`, then the resulting `GBytes` will reference
    /// the same `GBytes` instead of `bytes`. This allows consumers to simplify the
    /// usage of `GBytes` when asynchronously writing to streams.
    @inlinable func newFromBytes(offset: Int, length: Int) -> BytesRef! {
        let result = g_bytes_new_from_bytes(bytes_ptr, gsize(offset), gsize(length))
        guard let rv = BytesRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Increase the reference count on `bytes`.
    @discardableResult @inlinable func ref() -> BytesRef! {
        let result = g_bytes_ref(bytes_ptr)
        guard let rv = BytesRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Releases a reference on `bytes`.  This may result in the bytes being
    /// freed. If `bytes` is `nil`, it will return immediately.
    @inlinable func unref() {
        
        g_bytes_unref(bytes_ptr)
        
    }

    /// Unreferences the bytes, and returns a new mutable `GByteArray` containing
    /// the same byte data.
    /// 
    /// As an optimization, the byte data is transferred to the array without copying
    /// if this was the last reference to bytes and bytes was created with
    /// `g_bytes_new()`, `g_bytes_new_take()` or `g_byte_array_free_to_bytes()`. In all
    /// other cases the data is copied.
    /// 
    /// Do not use it if `bytes` contains more than `G_MAXUINT`
    /// bytes. `GByteArray` stores the length of its data in `guint`, which
    /// may be shorter than `gsize`, that `bytes` is using.
    @inlinable func unrefToArray() -> ByteArrayRef! {
        let result = g_bytes_unref_to_array(bytes_ptr)
        let rv = ByteArrayRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Unreferences the bytes, and returns a pointer the same byte data
    /// contents.
    /// 
    /// As an optimization, the byte data is returned without copying if this was
    /// the last reference to bytes and bytes was created with `g_bytes_new()`,
    /// `g_bytes_new_take()` or `g_byte_array_free_to_bytes()`. In all other cases the
    /// data is copied.
    @inlinable func unrefToData(size: UnsafeMutablePointer<gsize>!) -> gpointer! {
        let result = g_bytes_unref_to_data(bytes_ptr, size)
        let rv = gpointer(result)
        return rv
    }

    /// Computes the checksum for a binary `data`. This is a
    /// convenience wrapper for `g_checksum_new()`, `g_checksum_get_string()`
    /// and `g_checksum_free()`.
    /// 
    /// The hexadecimal string returned will be in lower case.
    @inlinable func computeChecksumForBytes(checksumType: GChecksumType) -> String! {
        let result = g_compute_checksum_for_bytes(checksumType, bytes_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Computes the HMAC for a binary `data`. This is a
    /// convenience wrapper for `g_hmac_new()`, `g_hmac_get_string()`
    /// and `g_hmac_unref()`.
    /// 
    /// The hexadecimal string returned will be in lower case.
    @inlinable func computeHmacForBytes<BytesT: BytesProtocol>(digestType: GChecksumType, data: BytesT) -> String! {
        let result = g_compute_hmac_for_bytes(digestType, bytes_ptr, data.bytes_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }
    /// Get the size of the byte data in the `GBytes`.
    /// 
    /// This function will always return the same value for a given `GBytes`.
    @inlinable var size: Int {
        /// Get the size of the byte data in the `GBytes`.
        /// 
        /// This function will always return the same value for a given `GBytes`.
        get {
            let result = g_bytes_get_size(bytes_ptr)
        let rv = Int(result)
            return rv
        }
    }


}



