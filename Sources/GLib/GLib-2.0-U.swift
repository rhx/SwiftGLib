import CGLib

// MARK: - URI Record

/// The `GUri` type and related functions can be used to parse URIs into
/// their components, and build valid URIs from individual components.
/// 
/// Note that `GUri` scope is to help manipulate URIs in various applications,
/// following [RFC 3986](https://tools.ietf.org/html/rfc3986). In particular,
/// it doesn't intend to cover web browser needs, and doesn't implement the
/// [WHATWG URL](https://url.spec.whatwg.org/) standard. No APIs are provided to
/// help prevent
/// [homograph attacks](https://en.wikipedia.org/wiki/IDN_homograph_attack), so
/// `GUri` is not suitable for formatting URIs for display to the user for making
/// security-sensitive decisions.
/// 
/// ## Relative and absolute URIs # <a name="relative-absolute-uris"></a>
/// 
/// As defined in [RFC 3986](https://tools.ietf.org/html/rfc3986`section-4`), the
/// hierarchical nature of URIs means that they can either be ‘relative
/// references’ (sometimes referred to as ‘relative URIs’) or ‘URIs’ (for
/// clarity, ‘URIs’ are referred to in this documentation as
/// ‘absolute URIs’ — although
/// [in constrast to RFC 3986](https://tools.ietf.org/html/rfc3986`section-4.3`),
/// fragment identifiers are always allowed).
/// 
/// Relative references have one or more components of the URI missing. In
/// particular, they have no scheme. Any other component, such as hostname,
/// query, etc. may be missing, apart from a path, which has to be specified (but
/// may be empty). The path may be relative, starting with `./` rather than `/`.
/// 
/// For example, a valid relative reference is `./path?query`,
/// `/?query`fragment`` or `//example.com`.
/// 
/// Absolute URIs have a scheme specified. Any other components of the URI which
/// are missing are specified as explicitly unset in the URI, rather than being
/// resolved relative to a base URI using `g_uri_parse_relative()`.
/// 
/// For example, a valid absolute URI is `file:///home/bob` or
/// `https://search.com?query=string`.
/// 
/// A `GUri` instance is always an absolute URI. A string may be an absolute URI
/// or a relative reference; see the documentation for individual functions as to
/// what forms they accept.
/// 
/// ## Parsing URIs
/// 
/// The most minimalist APIs for parsing URIs are `g_uri_split()` and
/// `g_uri_split_with_user()`. These split a URI into its component
/// parts, and return the parts; the difference between the two is that
/// `g_uri_split()` treats the ‘userinfo’ component of the URI as a
/// single element, while `g_uri_split_with_user()` can (depending on the
/// `GUriFlags` you pass) treat it as containing a username, password,
/// and authentication parameters. Alternatively, `g_uri_split_network()`
/// can be used when you are only interested in the components that are
/// needed to initiate a network connection to the service (scheme,
/// host, and port).
/// 
/// `g_uri_parse()` is similar to `g_uri_split()`, but instead of returning
/// individual strings, it returns a `GUri` structure (and it requires
/// that the URI be an absolute URI).
/// 
/// `g_uri_resolve_relative()` and `g_uri_parse_relative()` allow you to
/// resolve a relative URI relative to a base URI.
/// `g_uri_resolve_relative()` takes two strings and returns a string,
/// and `g_uri_parse_relative()` takes a `GUri` and a string and returns a
/// `GUri`.
/// 
/// All of the parsing functions take a `GUriFlags` argument describing
/// exactly how to parse the URI; see the documentation for that type
/// for more details on the specific flags that you can pass. If you
/// need to choose different flags based on the type of URI, you can
/// use `g_uri_peek_scheme()` on the URI string to check the scheme
/// first, and use that to decide what flags to parse it with.
/// 
/// For example, you might want to use `G_URI_PARAMS_WWW_FORM` when parsing the
/// params for a web URI, so compare the result of `g_uri_peek_scheme()` against
/// `http` and `https`.
/// 
/// ## Building URIs
/// 
/// `g_uri_join()` and `g_uri_join_with_user()` can be used to construct
/// valid URI strings from a set of component strings. They are the
/// inverse of `g_uri_split()` and `g_uri_split_with_user()`.
/// 
/// Similarly, `g_uri_build()` and `g_uri_build_with_user()` can be used to
/// construct a `GUri` from a set of component strings.
/// 
/// As with the parsing functions, the building functions take a
/// `GUriFlags` argument. In particular, it is important to keep in mind
/// whether the URI components you are using are already ````-encoded. If so,
/// you must pass the `G_URI_FLAGS_ENCODED` flag.
/// 
/// ## `file://` URIs
/// 
/// Note that Windows and Unix both define special rules for parsing
/// `file://` URIs (involving non-UTF-8 character sets on Unix, and the
/// interpretation of path separators on Windows). `GUri` does not
/// implement these rules. Use `g_filename_from_uri()` and
/// `g_filename_to_uri()` if you want to properly convert between
/// `file://` URIs and local filenames.
/// 
/// ## URI Equality
/// 
/// Note that there is no `g_uri_equal ()` function, because comparing
/// URIs usefully requires scheme-specific knowledge that `GUri` does
/// not have. `GUri` can help with normalization if you use the various
/// encoded `GUriFlags` as well as `G_URI_FLAGS_SCHEME_NORMALIZE` however
/// it is not comprehensive.
/// For example, `data:,foo` and `data:;base64,Zm9v` resolve to the same
/// thing according to the `data:` URI specification which GLib does not
/// handle.
///
/// The `URIProtocol` protocol exposes the methods and properties of an underlying `GUri` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `URI`.
/// Alternatively, use `URIRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol URIProtocol {
        /// Untyped pointer to the underlying `GUri` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GUri` instance.
    var uri_ptr: UnsafeMutablePointer<GUri>! { get }

    /// Required Initialiser for types conforming to `URIProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `GUri` type and related functions can be used to parse URIs into
/// their components, and build valid URIs from individual components.
/// 
/// Note that `GUri` scope is to help manipulate URIs in various applications,
/// following [RFC 3986](https://tools.ietf.org/html/rfc3986). In particular,
/// it doesn't intend to cover web browser needs, and doesn't implement the
/// [WHATWG URL](https://url.spec.whatwg.org/) standard. No APIs are provided to
/// help prevent
/// [homograph attacks](https://en.wikipedia.org/wiki/IDN_homograph_attack), so
/// `GUri` is not suitable for formatting URIs for display to the user for making
/// security-sensitive decisions.
/// 
/// ## Relative and absolute URIs # <a name="relative-absolute-uris"></a>
/// 
/// As defined in [RFC 3986](https://tools.ietf.org/html/rfc3986`section-4`), the
/// hierarchical nature of URIs means that they can either be ‘relative
/// references’ (sometimes referred to as ‘relative URIs’) or ‘URIs’ (for
/// clarity, ‘URIs’ are referred to in this documentation as
/// ‘absolute URIs’ — although
/// [in constrast to RFC 3986](https://tools.ietf.org/html/rfc3986`section-4.3`),
/// fragment identifiers are always allowed).
/// 
/// Relative references have one or more components of the URI missing. In
/// particular, they have no scheme. Any other component, such as hostname,
/// query, etc. may be missing, apart from a path, which has to be specified (but
/// may be empty). The path may be relative, starting with `./` rather than `/`.
/// 
/// For example, a valid relative reference is `./path?query`,
/// `/?query`fragment`` or `//example.com`.
/// 
/// Absolute URIs have a scheme specified. Any other components of the URI which
/// are missing are specified as explicitly unset in the URI, rather than being
/// resolved relative to a base URI using `g_uri_parse_relative()`.
/// 
/// For example, a valid absolute URI is `file:///home/bob` or
/// `https://search.com?query=string`.
/// 
/// A `GUri` instance is always an absolute URI. A string may be an absolute URI
/// or a relative reference; see the documentation for individual functions as to
/// what forms they accept.
/// 
/// ## Parsing URIs
/// 
/// The most minimalist APIs for parsing URIs are `g_uri_split()` and
/// `g_uri_split_with_user()`. These split a URI into its component
/// parts, and return the parts; the difference between the two is that
/// `g_uri_split()` treats the ‘userinfo’ component of the URI as a
/// single element, while `g_uri_split_with_user()` can (depending on the
/// `GUriFlags` you pass) treat it as containing a username, password,
/// and authentication parameters. Alternatively, `g_uri_split_network()`
/// can be used when you are only interested in the components that are
/// needed to initiate a network connection to the service (scheme,
/// host, and port).
/// 
/// `g_uri_parse()` is similar to `g_uri_split()`, but instead of returning
/// individual strings, it returns a `GUri` structure (and it requires
/// that the URI be an absolute URI).
/// 
/// `g_uri_resolve_relative()` and `g_uri_parse_relative()` allow you to
/// resolve a relative URI relative to a base URI.
/// `g_uri_resolve_relative()` takes two strings and returns a string,
/// and `g_uri_parse_relative()` takes a `GUri` and a string and returns a
/// `GUri`.
/// 
/// All of the parsing functions take a `GUriFlags` argument describing
/// exactly how to parse the URI; see the documentation for that type
/// for more details on the specific flags that you can pass. If you
/// need to choose different flags based on the type of URI, you can
/// use `g_uri_peek_scheme()` on the URI string to check the scheme
/// first, and use that to decide what flags to parse it with.
/// 
/// For example, you might want to use `G_URI_PARAMS_WWW_FORM` when parsing the
/// params for a web URI, so compare the result of `g_uri_peek_scheme()` against
/// `http` and `https`.
/// 
/// ## Building URIs
/// 
/// `g_uri_join()` and `g_uri_join_with_user()` can be used to construct
/// valid URI strings from a set of component strings. They are the
/// inverse of `g_uri_split()` and `g_uri_split_with_user()`.
/// 
/// Similarly, `g_uri_build()` and `g_uri_build_with_user()` can be used to
/// construct a `GUri` from a set of component strings.
/// 
/// As with the parsing functions, the building functions take a
/// `GUriFlags` argument. In particular, it is important to keep in mind
/// whether the URI components you are using are already ````-encoded. If so,
/// you must pass the `G_URI_FLAGS_ENCODED` flag.
/// 
/// ## `file://` URIs
/// 
/// Note that Windows and Unix both define special rules for parsing
/// `file://` URIs (involving non-UTF-8 character sets on Unix, and the
/// interpretation of path separators on Windows). `GUri` does not
/// implement these rules. Use `g_filename_from_uri()` and
/// `g_filename_to_uri()` if you want to properly convert between
/// `file://` URIs and local filenames.
/// 
/// ## URI Equality
/// 
/// Note that there is no `g_uri_equal ()` function, because comparing
/// URIs usefully requires scheme-specific knowledge that `GUri` does
/// not have. `GUri` can help with normalization if you use the various
/// encoded `GUriFlags` as well as `G_URI_FLAGS_SCHEME_NORMALIZE` however
/// it is not comprehensive.
/// For example, `data:,foo` and `data:;base64,Zm9v` resolve to the same
/// thing according to the `data:` URI specification which GLib does not
/// handle.
///
/// The `URIRef` type acts as a lightweight Swift reference to an underlying `GUri` instance.
/// It exposes methods that can operate on this data type through `URIProtocol` conformance.
/// Use `URIRef` only as an `unowned` reference to an existing `GUri` instance.
///
public struct URIRef: URIProtocol {
        /// Untyped pointer to the underlying `GUri` instance.
    /// For type-safe access, use the generated, typed pointer `uri_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension URIRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GUri>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GUri>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GUri>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GUri>?) {
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

    /// Reference intialiser for a related type that implements `URIProtocol`
    @inlinable init<T: URIProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `URIProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `URIProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `URIProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `URIProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `URIProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GUri` from the given components according to `flags`.
    /// 
    /// See also `g_uri_build_with_user()`, which allows specifying the
    /// components of the "userinfo" separately.
    @inlinable static func build(flags: URIFlags, scheme: UnsafePointer<gchar>!, userinfo: UnsafePointer<gchar>? = nil, host: UnsafePointer<gchar>? = nil, port: Int, path: UnsafePointer<gchar>!, query: UnsafePointer<gchar>? = nil, fragment: UnsafePointer<gchar>? = nil) -> URIRef! {
            let result = g_uri_build(flags.value, scheme, userinfo, host, gint(port), path, query, fragment)
        guard let rv = URIRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new `GUri` from the given components according to `flags`
    /// (`G_URI_FLAGS_HAS_PASSWORD` is added unconditionally). The `flags` must be
    /// coherent with the passed values, in particular use ````-encoded values with
    /// `G_URI_FLAGS_ENCODED`.
    /// 
    /// In contrast to `g_uri_build()`, this allows specifying the components
    /// of the ‘userinfo’ field separately. Note that `user` must be non-`nil`
    /// if either `password` or `auth_params` is non-`nil`.
    @inlinable static func buildWith(user flags: URIFlags, scheme: UnsafePointer<gchar>!, user: UnsafePointer<gchar>? = nil, password: UnsafePointer<gchar>? = nil, authParams: UnsafePointer<gchar>? = nil, host: UnsafePointer<gchar>? = nil, port: Int, path: UnsafePointer<gchar>!, query: UnsafePointer<gchar>? = nil, fragment: UnsafePointer<gchar>? = nil) -> URIRef! {
            let result = g_uri_build_with_user(flags.value, scheme, user, password, authParams, host, gint(port), path, query, fragment)
        guard let rv = URIRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Parses `uri_string` according to `flags`. If the result is not a
    /// valid [absolute URI](#relative-absolute-uris), it will be discarded, and an
    /// error returned.
    @inlinable static func parse(uriString: UnsafePointer<gchar>!, flags: URIFlags) throws -> URIRef! {
            var error: UnsafeMutablePointer<GError>?
        let result = g_uri_parse(uriString, flags.value, &error)
        if let error = error { throw GLibError(error) }
        let maybeRV = URIRef(gconstpointer: gconstpointer(result))
        
        guard let rv = maybeRV else { return nil }
        return rv
    }
}

/// The `GUri` type and related functions can be used to parse URIs into
/// their components, and build valid URIs from individual components.
/// 
/// Note that `GUri` scope is to help manipulate URIs in various applications,
/// following [RFC 3986](https://tools.ietf.org/html/rfc3986). In particular,
/// it doesn't intend to cover web browser needs, and doesn't implement the
/// [WHATWG URL](https://url.spec.whatwg.org/) standard. No APIs are provided to
/// help prevent
/// [homograph attacks](https://en.wikipedia.org/wiki/IDN_homograph_attack), so
/// `GUri` is not suitable for formatting URIs for display to the user for making
/// security-sensitive decisions.
/// 
/// ## Relative and absolute URIs # <a name="relative-absolute-uris"></a>
/// 
/// As defined in [RFC 3986](https://tools.ietf.org/html/rfc3986`section-4`), the
/// hierarchical nature of URIs means that they can either be ‘relative
/// references’ (sometimes referred to as ‘relative URIs’) or ‘URIs’ (for
/// clarity, ‘URIs’ are referred to in this documentation as
/// ‘absolute URIs’ — although
/// [in constrast to RFC 3986](https://tools.ietf.org/html/rfc3986`section-4.3`),
/// fragment identifiers are always allowed).
/// 
/// Relative references have one or more components of the URI missing. In
/// particular, they have no scheme. Any other component, such as hostname,
/// query, etc. may be missing, apart from a path, which has to be specified (but
/// may be empty). The path may be relative, starting with `./` rather than `/`.
/// 
/// For example, a valid relative reference is `./path?query`,
/// `/?query`fragment`` or `//example.com`.
/// 
/// Absolute URIs have a scheme specified. Any other components of the URI which
/// are missing are specified as explicitly unset in the URI, rather than being
/// resolved relative to a base URI using `g_uri_parse_relative()`.
/// 
/// For example, a valid absolute URI is `file:///home/bob` or
/// `https://search.com?query=string`.
/// 
/// A `GUri` instance is always an absolute URI. A string may be an absolute URI
/// or a relative reference; see the documentation for individual functions as to
/// what forms they accept.
/// 
/// ## Parsing URIs
/// 
/// The most minimalist APIs for parsing URIs are `g_uri_split()` and
/// `g_uri_split_with_user()`. These split a URI into its component
/// parts, and return the parts; the difference between the two is that
/// `g_uri_split()` treats the ‘userinfo’ component of the URI as a
/// single element, while `g_uri_split_with_user()` can (depending on the
/// `GUriFlags` you pass) treat it as containing a username, password,
/// and authentication parameters. Alternatively, `g_uri_split_network()`
/// can be used when you are only interested in the components that are
/// needed to initiate a network connection to the service (scheme,
/// host, and port).
/// 
/// `g_uri_parse()` is similar to `g_uri_split()`, but instead of returning
/// individual strings, it returns a `GUri` structure (and it requires
/// that the URI be an absolute URI).
/// 
/// `g_uri_resolve_relative()` and `g_uri_parse_relative()` allow you to
/// resolve a relative URI relative to a base URI.
/// `g_uri_resolve_relative()` takes two strings and returns a string,
/// and `g_uri_parse_relative()` takes a `GUri` and a string and returns a
/// `GUri`.
/// 
/// All of the parsing functions take a `GUriFlags` argument describing
/// exactly how to parse the URI; see the documentation for that type
/// for more details on the specific flags that you can pass. If you
/// need to choose different flags based on the type of URI, you can
/// use `g_uri_peek_scheme()` on the URI string to check the scheme
/// first, and use that to decide what flags to parse it with.
/// 
/// For example, you might want to use `G_URI_PARAMS_WWW_FORM` when parsing the
/// params for a web URI, so compare the result of `g_uri_peek_scheme()` against
/// `http` and `https`.
/// 
/// ## Building URIs
/// 
/// `g_uri_join()` and `g_uri_join_with_user()` can be used to construct
/// valid URI strings from a set of component strings. They are the
/// inverse of `g_uri_split()` and `g_uri_split_with_user()`.
/// 
/// Similarly, `g_uri_build()` and `g_uri_build_with_user()` can be used to
/// construct a `GUri` from a set of component strings.
/// 
/// As with the parsing functions, the building functions take a
/// `GUriFlags` argument. In particular, it is important to keep in mind
/// whether the URI components you are using are already ````-encoded. If so,
/// you must pass the `G_URI_FLAGS_ENCODED` flag.
/// 
/// ## `file://` URIs
/// 
/// Note that Windows and Unix both define special rules for parsing
/// `file://` URIs (involving non-UTF-8 character sets on Unix, and the
/// interpretation of path separators on Windows). `GUri` does not
/// implement these rules. Use `g_filename_from_uri()` and
/// `g_filename_to_uri()` if you want to properly convert between
/// `file://` URIs and local filenames.
/// 
/// ## URI Equality
/// 
/// Note that there is no `g_uri_equal ()` function, because comparing
/// URIs usefully requires scheme-specific knowledge that `GUri` does
/// not have. `GUri` can help with normalization if you use the various
/// encoded `GUriFlags` as well as `G_URI_FLAGS_SCHEME_NORMALIZE` however
/// it is not comprehensive.
/// For example, `data:,foo` and `data:;base64,Zm9v` resolve to the same
/// thing according to the `data:` URI specification which GLib does not
/// handle.
///
/// The `URI` type acts as a reference-counted owner of an underlying `GUri` instance.
/// It provides the methods that can operate on this data type through `URIProtocol` conformance.
/// Use `URI` as a strong reference or owner of a `GUri` instance.
///
open class URI: URIProtocol {
        /// Untyped pointer to the underlying `GUri` instance.
    /// For type-safe access, use the generated, typed pointer `uri_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `URI` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GUri>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `URI` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GUri>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `URI` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `URI` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `URI` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GUri>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `URI` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GUri>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GUri`.
    /// i.e., ownership is transferred to the `URI` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GUri>) {
        ptr = UnsafeMutableRawPointer(op)
        g_uri_ref(ptr.assumingMemoryBound(to: GUri.self))
    }

    /// Reference intialiser for a related type that implements `URIProtocol`
    /// Will retain `GUri`.
    /// - Parameter other: an instance of a related type that implements `URIProtocol`
    @inlinable public init<T: URIProtocol>(_ other: T) {
        ptr = other.ptr
        g_uri_ref(ptr.assumingMemoryBound(to: GUri.self))
    }

    /// Releases the underlying `GUri` instance using `g_uri_unref`.
    deinit {
        g_uri_unref(ptr.assumingMemoryBound(to: GUri.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `URIProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `URIProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_uri_ref(ptr.assumingMemoryBound(to: GUri.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `URIProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `URIProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_uri_ref(ptr.assumingMemoryBound(to: GUri.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `URIProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `URIProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_uri_ref(ptr.assumingMemoryBound(to: GUri.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `URIProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `URIProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_uri_ref(ptr.assumingMemoryBound(to: GUri.self))
    }


    /// Creates a new `GUri` from the given components according to `flags`.
    /// 
    /// See also `g_uri_build_with_user()`, which allows specifying the
    /// components of the "userinfo" separately.
    @inlinable public static func build(flags: URIFlags, scheme: UnsafePointer<gchar>!, userinfo: UnsafePointer<gchar>? = nil, host: UnsafePointer<gchar>? = nil, port: Int, path: UnsafePointer<gchar>!, query: UnsafePointer<gchar>? = nil, fragment: UnsafePointer<gchar>? = nil) -> URI! {
            let result = g_uri_build(flags.value, scheme, userinfo, host, gint(port), path, query, fragment)
        guard let rv = URI(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new `GUri` from the given components according to `flags`
    /// (`G_URI_FLAGS_HAS_PASSWORD` is added unconditionally). The `flags` must be
    /// coherent with the passed values, in particular use ````-encoded values with
    /// `G_URI_FLAGS_ENCODED`.
    /// 
    /// In contrast to `g_uri_build()`, this allows specifying the components
    /// of the ‘userinfo’ field separately. Note that `user` must be non-`nil`
    /// if either `password` or `auth_params` is non-`nil`.
    @inlinable public static func buildWith(user flags: URIFlags, scheme: UnsafePointer<gchar>!, user: UnsafePointer<gchar>? = nil, password: UnsafePointer<gchar>? = nil, authParams: UnsafePointer<gchar>? = nil, host: UnsafePointer<gchar>? = nil, port: Int, path: UnsafePointer<gchar>!, query: UnsafePointer<gchar>? = nil, fragment: UnsafePointer<gchar>? = nil) -> URI! {
            let result = g_uri_build_with_user(flags.value, scheme, user, password, authParams, host, gint(port), path, query, fragment)
        guard let rv = URI(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Parses `uri_string` according to `flags`. If the result is not a
    /// valid [absolute URI](#relative-absolute-uris), it will be discarded, and an
    /// error returned.
    @inlinable public static func parse(uriString: UnsafePointer<gchar>!, flags: URIFlags) throws -> URI! {
            var error: UnsafeMutablePointer<GError>?
        let result = g_uri_parse(uriString, flags.value, &error)
        if let error = error { throw GLibError(error) }
        let maybeRV = URI(gconstpointer: gconstpointer(result))
        
        guard let rv = maybeRV else { return nil }
        return rv
    }

}

// MARK: no URI properties

// MARK: no URI signals

// MARK: URI has no signals
// MARK: URI Record: URIProtocol extension (methods and fields)
public extension URIProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUri` instance.
    @inlinable var uri_ptr: UnsafeMutablePointer<GUri>! { return ptr?.assumingMemoryBound(to: GUri.self) }

    /// Gets `uri`'s authentication parameters, which may contain
    /// ````-encoding, depending on the flags with which `uri` was created.
    /// (If `uri` was not created with `G_URI_FLAGS_HAS_AUTH_PARAMS` then this will
    /// be `nil`.)
    /// 
    /// Depending on the URI scheme, `g_uri_parse_params()` may be useful for
    /// further parsing this information.
    @inlinable func getAuthParams() -> String! {
        let result = g_uri_get_auth_params(uri_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Gets `uri`'s flags set upon construction.
    @inlinable func getFlags() -> GLib.URIFlags {
        let result = g_uri_get_flags(uri_ptr)
        let rv = URIFlags(result)
        return rv
    }

    /// Gets `uri`'s fragment, which may contain ````-encoding, depending on
    /// the flags with which `uri` was created.
    @inlinable func getFragment() -> String! {
        let result = g_uri_get_fragment(uri_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Gets `uri`'s host. This will never have ````-encoded characters,
    /// unless it is non-UTF-8 (which can only be the case if `uri` was
    /// created with `G_URI_FLAGS_NON_DNS`).
    /// 
    /// If `uri` contained an IPv6 address literal, this value will be just
    /// that address, without the brackets around it that are necessary in
    /// the string form of the URI. Note that in this case there may also
    /// be a scope ID attached to the address. Eg, `fe80`1234`````em1` (or
    /// `fe80`1234`````25em1` if the string is still encoded).
    @inlinable func getHost() -> String! {
        let result = g_uri_get_host(uri_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Gets `uri`'s password, which may contain ````-encoding, depending on
    /// the flags with which `uri` was created. (If `uri` was not created
    /// with `G_URI_FLAGS_HAS_PASSWORD` then this will be `nil`.)
    @inlinable func getPassword() -> String! {
        let result = g_uri_get_password(uri_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Gets `uri`'s path, which may contain ````-encoding, depending on the
    /// flags with which `uri` was created.
    @inlinable func getPath() -> String! {
        let result = g_uri_get_path(uri_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Gets `uri`'s port.
    @inlinable func getPort() -> Int {
        let result = g_uri_get_port(uri_ptr)
        let rv = Int(result)
        return rv
    }

    /// Gets `uri`'s query, which may contain ````-encoding, depending on the
    /// flags with which `uri` was created.
    /// 
    /// For queries consisting of a series of `name=value` parameters,
    /// `GUriParamsIter` or `g_uri_parse_params()` may be useful.
    @inlinable func getQuery() -> String! {
        let result = g_uri_get_query(uri_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Gets `uri`'s scheme. Note that this will always be all-lowercase,
    /// regardless of the string or strings that `uri` was created from.
    @inlinable func getScheme() -> String! {
        let result = g_uri_get_scheme(uri_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Gets the ‘username’ component of `uri`'s userinfo, which may contain
    /// ````-encoding, depending on the flags with which `uri` was created.
    /// If `uri` was not created with `G_URI_FLAGS_HAS_PASSWORD` or
    /// `G_URI_FLAGS_HAS_AUTH_PARAMS`, this is the same as `g_uri_get_userinfo()`.
    @inlinable func getUser() -> String! {
        let result = g_uri_get_user(uri_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Gets `uri`'s userinfo, which may contain ````-encoding, depending on
    /// the flags with which `uri` was created.
    @inlinable func getUserinfo() -> String! {
        let result = g_uri_get_userinfo(uri_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Parses `uri_ref` according to `flags` and, if it is a
    /// [relative URI](#relative-absolute-uris), resolves it relative to `base_uri`.
    /// If the result is not a valid absolute URI, it will be discarded, and an error
    /// returned.
    @inlinable func parseRelative(uriRef: UnsafePointer<gchar>!, flags: URIFlags) throws -> URIRef! {
        var error: UnsafeMutablePointer<GError>?
        let result = g_uri_parse_relative(uri_ptr, uriRef, flags.value, &error)
        if let error = error { throw GLibError(error) }
        let maybeRV = URIRef(gconstpointer: gconstpointer(result))
        
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Increments the reference count of `uri` by one.
    @discardableResult @inlinable func ref() -> URIRef! {
        let result = g_uri_ref(uri_ptr)
        guard let rv = URIRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Returns a string representing `uri`.
    /// 
    /// This is not guaranteed to return a string which is identical to the
    /// string that `uri` was parsed from. However, if the source URI was
    /// syntactically correct (according to RFC 3986), and it was parsed
    /// with `G_URI_FLAGS_ENCODED`, then `g_uri_to_string()` is guaranteed to return
    /// a string which is at least semantically equivalent to the source
    /// URI (according to RFC 3986).
    /// 
    /// If `uri` might contain sensitive details, such as authentication parameters,
    /// or private data in its query string, and the returned string is going to be
    /// logged, then consider using `g_uri_to_string_partial()` to redact parts.
    @inlinable func toString() -> String! {
        let result = g_uri_to_string(uri_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Returns a string representing `uri`, subject to the options in
    /// `flags`. See `g_uri_to_string()` and `GUriHideFlags` for more details.
    @inlinable func toStringPartial(flags: URIHideFlags) -> String! {
        let result = g_uri_to_string_partial(uri_ptr, flags.value)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Atomically decrements the reference count of `uri` by one.
    /// 
    /// When the reference count reaches zero, the resources allocated by
    /// `uri` are freed
    @inlinable func unref() {
        
        g_uri_unref(uri_ptr)
        
    }
    /// Gets `uri`'s authentication parameters, which may contain
    /// ````-encoding, depending on the flags with which `uri` was created.
    /// (If `uri` was not created with `G_URI_FLAGS_HAS_AUTH_PARAMS` then this will
    /// be `nil`.)
    /// 
    /// Depending on the URI scheme, `g_uri_parse_params()` may be useful for
    /// further parsing this information.
    @inlinable var authParams: String! {
        /// Gets `uri`'s authentication parameters, which may contain
        /// ````-encoding, depending on the flags with which `uri` was created.
        /// (If `uri` was not created with `G_URI_FLAGS_HAS_AUTH_PARAMS` then this will
        /// be `nil`.)
        /// 
        /// Depending on the URI scheme, `g_uri_parse_params()` may be useful for
        /// further parsing this information.
        get {
            let result = g_uri_get_auth_params(uri_ptr)
        let rv = result.map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets `uri`'s flags set upon construction.
    @inlinable var flags: GLib.URIFlags {
        /// Gets `uri`'s flags set upon construction.
        get {
            let result = g_uri_get_flags(uri_ptr)
        let rv = URIFlags(result)
            return rv
        }
    }

    /// Gets `uri`'s fragment, which may contain ````-encoding, depending on
    /// the flags with which `uri` was created.
    @inlinable var fragment: String! {
        /// Gets `uri`'s fragment, which may contain ````-encoding, depending on
        /// the flags with which `uri` was created.
        get {
            let result = g_uri_get_fragment(uri_ptr)
        let rv = result.map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets `uri`'s host. This will never have ````-encoded characters,
    /// unless it is non-UTF-8 (which can only be the case if `uri` was
    /// created with `G_URI_FLAGS_NON_DNS`).
    /// 
    /// If `uri` contained an IPv6 address literal, this value will be just
    /// that address, without the brackets around it that are necessary in
    /// the string form of the URI. Note that in this case there may also
    /// be a scope ID attached to the address. Eg, `fe80`1234`````em1` (or
    /// `fe80`1234`````25em1` if the string is still encoded).
    @inlinable var host: String! {
        /// Gets `uri`'s host. This will never have ````-encoded characters,
        /// unless it is non-UTF-8 (which can only be the case if `uri` was
        /// created with `G_URI_FLAGS_NON_DNS`).
        /// 
        /// If `uri` contained an IPv6 address literal, this value will be just
        /// that address, without the brackets around it that are necessary in
        /// the string form of the URI. Note that in this case there may also
        /// be a scope ID attached to the address. Eg, `fe80`1234`````em1` (or
        /// `fe80`1234`````25em1` if the string is still encoded).
        get {
            let result = g_uri_get_host(uri_ptr)
        let rv = result.map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets `uri`'s password, which may contain ````-encoding, depending on
    /// the flags with which `uri` was created. (If `uri` was not created
    /// with `G_URI_FLAGS_HAS_PASSWORD` then this will be `nil`.)
    @inlinable var password: String! {
        /// Gets `uri`'s password, which may contain ````-encoding, depending on
        /// the flags with which `uri` was created. (If `uri` was not created
        /// with `G_URI_FLAGS_HAS_PASSWORD` then this will be `nil`.)
        get {
            let result = g_uri_get_password(uri_ptr)
        let rv = result.map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets `uri`'s path, which may contain ````-encoding, depending on the
    /// flags with which `uri` was created.
    @inlinable var path: String! {
        /// Gets `uri`'s path, which may contain ````-encoding, depending on the
        /// flags with which `uri` was created.
        get {
            let result = g_uri_get_path(uri_ptr)
        let rv = result.map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets `uri`'s port.
    @inlinable var port: Int {
        /// Gets `uri`'s port.
        get {
            let result = g_uri_get_port(uri_ptr)
        let rv = Int(result)
            return rv
        }
    }

    /// Gets `uri`'s query, which may contain ````-encoding, depending on the
    /// flags with which `uri` was created.
    /// 
    /// For queries consisting of a series of `name=value` parameters,
    /// `GUriParamsIter` or `g_uri_parse_params()` may be useful.
    @inlinable var query: String! {
        /// Gets `uri`'s query, which may contain ````-encoding, depending on the
        /// flags with which `uri` was created.
        /// 
        /// For queries consisting of a series of `name=value` parameters,
        /// `GUriParamsIter` or `g_uri_parse_params()` may be useful.
        get {
            let result = g_uri_get_query(uri_ptr)
        let rv = result.map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets `uri`'s scheme. Note that this will always be all-lowercase,
    /// regardless of the string or strings that `uri` was created from.
    @inlinable var scheme: String! {
        /// Gets `uri`'s scheme. Note that this will always be all-lowercase,
        /// regardless of the string or strings that `uri` was created from.
        get {
            let result = g_uri_get_scheme(uri_ptr)
        let rv = result.map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the ‘username’ component of `uri`'s userinfo, which may contain
    /// ````-encoding, depending on the flags with which `uri` was created.
    /// If `uri` was not created with `G_URI_FLAGS_HAS_PASSWORD` or
    /// `G_URI_FLAGS_HAS_AUTH_PARAMS`, this is the same as `g_uri_get_userinfo()`.
    @inlinable var user: String! {
        /// Gets the ‘username’ component of `uri`'s userinfo, which may contain
        /// ````-encoding, depending on the flags with which `uri` was created.
        /// If `uri` was not created with `G_URI_FLAGS_HAS_PASSWORD` or
        /// `G_URI_FLAGS_HAS_AUTH_PARAMS`, this is the same as `g_uri_get_userinfo()`.
        get {
            let result = g_uri_get_user(uri_ptr)
        let rv = result.map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets `uri`'s userinfo, which may contain ````-encoding, depending on
    /// the flags with which `uri` was created.
    @inlinable var userinfo: String! {
        /// Gets `uri`'s userinfo, which may contain ````-encoding, depending on
        /// the flags with which `uri` was created.
        get {
            let result = g_uri_get_userinfo(uri_ptr)
        let rv = result.map({ String(cString: $0) })
            return rv
        }
    }


}



// MARK: - URIParamsIter Record

/// Many URI schemes include one or more attribute/value pairs as part of the URI
/// value. For example `scheme://server/path?query=string&is=there` has two
/// attributes – `query=string` and `is=there` – in its query part.
/// 
/// A `GUriParamsIter` structure represents an iterator that can be used to
/// iterate over the attribute/value pairs of a URI query string. `GUriParamsIter`
/// structures are typically allocated on the stack and then initialized with
/// `g_uri_params_iter_init()`. See the documentation for `g_uri_params_iter_init()`
/// for a usage example.
///
/// The `URIParamsIterProtocol` protocol exposes the methods and properties of an underlying `GUriParamsIter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `URIParamsIter`.
/// Alternatively, use `URIParamsIterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol URIParamsIterProtocol {
        /// Untyped pointer to the underlying `GUriParamsIter` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GUriParamsIter` instance.
    var _ptr: UnsafeMutablePointer<GUriParamsIter>! { get }

    /// Required Initialiser for types conforming to `URIParamsIterProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Many URI schemes include one or more attribute/value pairs as part of the URI
/// value. For example `scheme://server/path?query=string&is=there` has two
/// attributes – `query=string` and `is=there` – in its query part.
/// 
/// A `GUriParamsIter` structure represents an iterator that can be used to
/// iterate over the attribute/value pairs of a URI query string. `GUriParamsIter`
/// structures are typically allocated on the stack and then initialized with
/// `g_uri_params_iter_init()`. See the documentation for `g_uri_params_iter_init()`
/// for a usage example.
///
/// The `URIParamsIterRef` type acts as a lightweight Swift reference to an underlying `GUriParamsIter` instance.
/// It exposes methods that can operate on this data type through `URIParamsIterProtocol` conformance.
/// Use `URIParamsIterRef` only as an `unowned` reference to an existing `GUriParamsIter` instance.
///
public struct URIParamsIterRef: URIParamsIterProtocol {
        /// Untyped pointer to the underlying `GUriParamsIter` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension URIParamsIterRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GUriParamsIter>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GUriParamsIter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GUriParamsIter>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GUriParamsIter>?) {
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

    /// Reference intialiser for a related type that implements `URIParamsIterProtocol`
    @inlinable init<T: URIParamsIterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `URIParamsIterProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `URIParamsIterProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `URIParamsIterProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `URIParamsIterProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `URIParamsIterProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// Many URI schemes include one or more attribute/value pairs as part of the URI
/// value. For example `scheme://server/path?query=string&is=there` has two
/// attributes – `query=string` and `is=there` – in its query part.
/// 
/// A `GUriParamsIter` structure represents an iterator that can be used to
/// iterate over the attribute/value pairs of a URI query string. `GUriParamsIter`
/// structures are typically allocated on the stack and then initialized with
/// `g_uri_params_iter_init()`. See the documentation for `g_uri_params_iter_init()`
/// for a usage example.
///
/// The `URIParamsIter` type acts as an owner of an underlying `GUriParamsIter` instance.
/// It provides the methods that can operate on this data type through `URIParamsIterProtocol` conformance.
/// Use `URIParamsIter` as a strong reference or owner of a `GUriParamsIter` instance.
///
open class URIParamsIter: URIParamsIterProtocol {
        /// Untyped pointer to the underlying `GUriParamsIter` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `URIParamsIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GUriParamsIter>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `URIParamsIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GUriParamsIter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `URIParamsIter` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `URIParamsIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `URIParamsIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GUriParamsIter>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `URIParamsIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GUriParamsIter>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GUriParamsIter` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `URIParamsIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GUriParamsIter>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GUriParamsIter, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `URIParamsIterProtocol`
    /// `GUriParamsIter` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `URIParamsIterProtocol`
    @inlinable public init<T: URIParamsIterProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GUriParamsIter, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GUriParamsIter`.
    deinit {
        // no reference counting for GUriParamsIter, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `URIParamsIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `URIParamsIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GUriParamsIter, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `URIParamsIterProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `URIParamsIterProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GUriParamsIter, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `URIParamsIterProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `URIParamsIterProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GUriParamsIter, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `URIParamsIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `URIParamsIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GUriParamsIter, cannot ref(_ptr)
    }



}

// MARK: no URIParamsIter properties

// MARK: no URIParamsIter signals

// MARK: URIParamsIter has no signals
// MARK: URIParamsIter Record: URIParamsIterProtocol extension (methods and fields)
public extension URIParamsIterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUriParamsIter` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GUriParamsIter>! { return ptr?.assumingMemoryBound(to: GUriParamsIter.self) }

    /// Initializes an attribute/value pair iterator.
    /// 
    /// The iterator keeps pointers to the `params` and `separators` arguments, those
    /// variables must thus outlive the iterator and not be modified during the
    /// iteration.
    /// 
    /// If `G_URI_PARAMS_WWW_FORM` is passed in `flags`, `+` characters in the param
    /// string will be replaced with spaces in the output. For example, `foo=bar+baz`
    /// will give attribute `foo` with value `bar baz`. This is commonly used on the
    /// web (the `https` and `http` schemes only), but is deprecated in favour of
    /// the equivalent of encoding spaces as ``20``.
    /// 
    /// Unlike with `g_uri_parse_params()`, `G_URI_PARAMS_CASE_INSENSITIVE` has no
    /// effect if passed to `flags` for `g_uri_params_iter_init()`. The caller is
    /// responsible for doing their own case-insensitive comparisons.
    /// 
    /// (C Language Example):
    /// ```C
    /// GUriParamsIter iter;
    /// GError *error = NULL;
    /// gchar *unowned_attr, *unowned_value;
    /// 
    /// g_uri_params_iter_init (&iter, "foo=bar&baz=bar&Foo=frob&baz=bar2", -1, "&", G_URI_PARAMS_NONE);
    /// while (g_uri_params_iter_next (&iter, &unowned_attr, &unowned_value, &error))
    ///   {
    ///     g_autofree gchar *attr = g_steal_pointer (&unowned_attr);
    ///     g_autofree gchar *value = g_steal_pointer (&unowned_value);
    ///     // do something with attr and value; this code will be called 4 times
    ///     // for the params string in this example: once with attr=foo and value=bar,
    ///     // then with baz/bar, then Foo/frob, then baz/bar2.
    ///   }
    /// if (error)
    ///   // handle parsing error
    /// ```
    /// 
    @inlinable func init_(params: UnsafePointer<gchar>!, length: gssize, separators: UnsafePointer<gchar>!, flags: URIParamsFlags) {
        
        g_uri_params_iter_init(_ptr, params, length, separators, flags.value)
        
    }

    /// Advances `iter` and retrieves the next attribute/value. `false` is returned if
    /// an error has occurred (in which case `error` is set), or if the end of the
    /// iteration is reached (in which case `attribute` and `value` are set to `nil`
    /// and the iterator becomes invalid). If `true` is returned,
    /// `g_uri_params_iter_next()` may be called again to receive another
    /// attribute/value pair.
    /// 
    /// Note that the same `attribute` may be returned multiple times, since URIs
    /// allow repeated attributes.
    @inlinable func next(attribute: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>? = nil, value: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let result = g_uri_params_iter_next(_ptr, attribute, value, &error)
        if let error = error { throw GLibError(error) }
        let rv = ((result) != 0)
        return rv
    }

    // var dummy0 is unavailable because dummy0 is private

    // var dummy1 is unavailable because dummy1 is private

    // var dummy2 is unavailable because dummy2 is private

    // var dummy3 is unavailable because dummy3 is private

}



