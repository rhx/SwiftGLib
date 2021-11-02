import CGLib

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
        let rv = ((g_uri_params_iter_next(_ptr, attribute, value, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    // var dummy0 is unavailable because dummy0 is private

    // var dummy1 is unavailable because dummy1 is private

    // var dummy2 is unavailable because dummy2 is private

    // var dummy3 is unavailable because dummy3 is private

}



// MARK: - Variant Record

/// `GVariant` is a variant datatype; it can contain one or more values
/// along with information about the type of the values.
/// 
/// A `GVariant` may contain simple types, like an integer, or a boolean value;
/// or complex types, like an array of two strings, or a dictionary of key
/// value pairs. A `GVariant` is also immutable: once it's been created neither
/// its type nor its content can be modified further.
/// 
/// GVariant is useful whenever data needs to be serialized, for example when
/// sending method parameters in D-Bus, or when saving settings using GSettings.
/// 
/// When creating a new `GVariant`, you pass the data you want to store in it
/// along with a string representing the type of data you wish to pass to it.
/// 
/// For instance, if you want to create a `GVariant` holding an integer value you
/// can use:
/// 
/// (C Language Example):
/// ```C
///   GVariant *v = g_variant_new ("u", 40);
/// ```
/// 
/// The string "u" in the first argument tells `GVariant` that the data passed to
/// the constructor (40) is going to be an unsigned integer.
/// 
/// More advanced examples of `GVariant` in use can be found in documentation for
/// [GVariant format strings](#gvariant-format-strings-pointers).
/// 
/// The range of possible values is determined by the type.
/// 
/// The type system used by `GVariant` is `GVariantType`.
/// 
/// `GVariant` instances always have a type and a value (which are given
/// at construction time).  The type and value of a `GVariant` instance
/// can never change other than by the `GVariant` itself being
/// destroyed.  A `GVariant` cannot contain a pointer.
/// 
/// `GVariant` is reference counted using `g_variant_ref()` and
/// `g_variant_unref()`.  `GVariant` also has floating reference counts --
/// see `g_variant_ref_sink()`.
/// 
/// `GVariant` is completely threadsafe.  A `GVariant` instance can be
/// concurrently accessed in any way from any number of threads without
/// problems.
/// 
/// `GVariant` is heavily optimised for dealing with data in serialized
/// form.  It works particularly well with data located in memory-mapped
/// files.  It can perform nearly all deserialization operations in a
/// small constant time, usually touching only a single memory page.
/// Serialized `GVariant` data can also be sent over the network.
/// 
/// `GVariant` is largely compatible with D-Bus.  Almost all types of
/// `GVariant` instances can be sent over D-Bus.  See `GVariantType` for
/// exceptions.  (However, `GVariant`'s serialization format is not the same
/// as the serialization format of a D-Bus message body: use `GDBusMessage`,
/// in the gio library, for those.)
/// 
/// For space-efficiency, the `GVariant` serialization format does not
/// automatically include the variant's length, type or endianness,
/// which must either be implied from context (such as knowledge that a
/// particular file format always contains a little-endian
/// `G_VARIANT_TYPE_VARIANT` which occupies the whole length of the file)
/// or supplied out-of-band (for instance, a length, type and/or endianness
/// indicator could be placed at the beginning of a file, network message
/// or network stream).
/// 
/// A `GVariant`'s size is limited mainly by any lower level operating
/// system constraints, such as the number of bits in `gsize`.  For
/// example, it is reasonable to have a 2GB file mapped into memory
/// with `GMappedFile`, and call `g_variant_new_from_data()` on it.
/// 
/// For convenience to C programmers, `GVariant` features powerful
/// varargs-based value construction and destruction.  This feature is
/// designed to be embedded in other libraries.
/// 
/// There is a Python-inspired text language for describing `GVariant`
/// values.  `GVariant` includes a printer for this language and a parser
/// with type inferencing.
/// 
/// ## Memory Use
/// 
/// `GVariant` tries to be quite efficient with respect to memory use.
/// This section gives a rough idea of how much memory is used by the
/// current implementation.  The information here is subject to change
/// in the future.
/// 
/// The memory allocated by `GVariant` can be grouped into 4 broad
/// purposes: memory for serialized data, memory for the type
/// information cache, buffer management memory and memory for the
/// `GVariant` structure itself.
/// 
/// ## Serialized Data Memory
/// 
/// This is the memory that is used for storing GVariant data in
/// serialized form.  This is what would be sent over the network or
/// what would end up on disk, not counting any indicator of the
/// endianness, or of the length or type of the top-level variant.
/// 
/// The amount of memory required to store a boolean is 1 byte. 16,
/// 32 and 64 bit integers and double precision floating point numbers
/// use their "natural" size.  Strings (including object path and
/// signature strings) are stored with a nul terminator, and as such
/// use the length of the string plus 1 byte.
/// 
/// Maybe types use no space at all to represent the null value and
/// use the same amount of space (sometimes plus one byte) as the
/// equivalent non-maybe-typed value to represent the non-null case.
/// 
/// Arrays use the amount of space required to store each of their
/// members, concatenated.  Additionally, if the items stored in an
/// array are not of a fixed-size (ie: strings, other arrays, etc)
/// then an additional framing offset is stored for each item.  The
/// size of this offset is either 1, 2 or 4 bytes depending on the
/// overall size of the container.  Additionally, extra padding bytes
/// are added as required for alignment of child values.
/// 
/// Tuples (including dictionary entries) use the amount of space
/// required to store each of their members, concatenated, plus one
/// framing offset (as per arrays) for each non-fixed-sized item in
/// the tuple, except for the last one.  Additionally, extra padding
/// bytes are added as required for alignment of child values.
/// 
/// Variants use the same amount of space as the item inside of the
/// variant, plus 1 byte, plus the length of the type string for the
/// item inside the variant.
/// 
/// As an example, consider a dictionary mapping strings to variants.
/// In the case that the dictionary is empty, 0 bytes are required for
/// the serialization.
/// 
/// If we add an item "width" that maps to the int32 value of 500 then
/// we will use 4 byte to store the int32 (so 6 for the variant
/// containing it) and 6 bytes for the string.  The variant must be
/// aligned to 8 after the 6 bytes of the string, so that's 2 extra
/// bytes.  6 (string) + 2 (padding) + 6 (variant) is 14 bytes used
/// for the dictionary entry.  An additional 1 byte is added to the
/// array as a framing offset making a total of 15 bytes.
/// 
/// If we add another entry, "title" that maps to a nullable string
/// that happens to have a value of null, then we use 0 bytes for the
/// null value (and 3 bytes for the variant to contain it along with
/// its type string) plus 6 bytes for the string.  Again, we need 2
/// padding bytes.  That makes a total of 6 + 2 + 3 = 11 bytes.
/// 
/// We now require extra padding between the two items in the array.
/// After the 14 bytes of the first item, that's 2 bytes required.
/// We now require 2 framing offsets for an extra two
/// bytes. 14 + 2 + 11 + 2 = 29 bytes to encode the entire two-item
/// dictionary.
/// 
/// ## Type Information Cache
/// 
/// For each GVariant type that currently exists in the program a type
/// information structure is kept in the type information cache.  The
/// type information structure is required for rapid deserialization.
/// 
/// Continuing with the above example, if a `GVariant` exists with the
/// type "a{sv}" then a type information struct will exist for
/// "a{sv}", "{sv}", "s", and "v".  Multiple uses of the same type
/// will share the same type information.  Additionally, all
/// single-digit types are stored in read-only static memory and do
/// not contribute to the writable memory footprint of a program using
/// `GVariant`.
/// 
/// Aside from the type information structures stored in read-only
/// memory, there are two forms of type information.  One is used for
/// container types where there is a single element type: arrays and
/// maybe types.  The other is used for container types where there
/// are multiple element types: tuples and dictionary entries.
/// 
/// Array type info structures are 6 * sizeof (void *), plus the
/// memory required to store the type string itself.  This means that
/// on 32-bit systems, the cache entry for "a{sv}" would require 30
/// bytes of memory (plus malloc overhead).
/// 
/// Tuple type info structures are 6 * sizeof (void *), plus 4 *
/// sizeof (void *) for each item in the tuple, plus the memory
/// required to store the type string itself.  A 2-item tuple, for
/// example, would have a type information structure that consumed
/// writable memory in the size of 14 * sizeof (void *) (plus type
/// string)  This means that on 32-bit systems, the cache entry for
/// "{sv}" would require 61 bytes of memory (plus malloc overhead).
/// 
/// This means that in total, for our "a{sv}" example, 91 bytes of
/// type information would be allocated.
/// 
/// The type information cache, additionally, uses a `GHashTable` to
/// store and look up the cached items and stores a pointer to this
/// hash table in static storage.  The hash table is freed when there
/// are zero items in the type cache.
/// 
/// Although these sizes may seem large it is important to remember
/// that a program will probably only have a very small number of
/// different types of values in it and that only one type information
/// structure is required for many different values of the same type.
/// 
/// ## Buffer Management Memory
/// 
/// `GVariant` uses an internal buffer management structure to deal
/// with the various different possible sources of serialized data
/// that it uses.  The buffer is responsible for ensuring that the
/// correct call is made when the data is no longer in use by
/// `GVariant`.  This may involve a `g_free()` or a `g_slice_free()` or
/// even `g_mapped_file_unref()`.
/// 
/// One buffer management structure is used for each chunk of
/// serialized data.  The size of the buffer management structure
/// is 4 * (void *).  On 32-bit systems, that's 16 bytes.
/// 
/// ## GVariant structure
/// 
/// The size of a `GVariant` structure is 6 * (void *).  On 32-bit
/// systems, that's 24 bytes.
/// 
/// `GVariant` structures only exist if they are explicitly created
/// with API calls.  For example, if a `GVariant` is constructed out of
/// serialized data for the example given above (with the dictionary)
/// then although there are 9 individual values that comprise the
/// entire dictionary (two keys, two values, two variants containing
/// the values, two dictionary entries, plus the dictionary itself),
/// only 1 `GVariant` instance exists -- the one referring to the
/// dictionary.
/// 
/// If calls are made to start accessing the other values then
/// `GVariant` instances will exist for those values only for as long
/// as they are in use (ie: until you call `g_variant_unref()`).  The
/// type information is shared.  The serialized data and the buffer
/// management structure for that serialized data is shared by the
/// child.
/// 
/// ## Summary
/// 
/// To put the entire example together, for our dictionary mapping
/// strings to variants (with two entries, as given above), we are
/// using 91 bytes of memory for type information, 29 bytes of memory
/// for the serialized data, 16 bytes for buffer management and 24
/// bytes for the `GVariant` instance, or a total of 160 bytes, plus
/// malloc overhead.  If we were to use `g_variant_get_child_value()` to
/// access the two dictionary entries, we would use an additional 48
/// bytes.  If we were to have other dictionaries of the same type, we
/// would use more memory for the serialized data and buffer
/// management for those dictionaries, but the type information would
/// be shared.
///
/// The `VariantProtocol` protocol exposes the methods and properties of an underlying `GVariant` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Variant`.
/// Alternatively, use `VariantRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol VariantProtocol {
        /// Untyped pointer to the underlying `GVariant` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GVariant` instance.
    var variant_ptr: UnsafeMutablePointer<GVariant>! { get }

    /// Required Initialiser for types conforming to `VariantProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GVariant` is a variant datatype; it can contain one or more values
/// along with information about the type of the values.
/// 
/// A `GVariant` may contain simple types, like an integer, or a boolean value;
/// or complex types, like an array of two strings, or a dictionary of key
/// value pairs. A `GVariant` is also immutable: once it's been created neither
/// its type nor its content can be modified further.
/// 
/// GVariant is useful whenever data needs to be serialized, for example when
/// sending method parameters in D-Bus, or when saving settings using GSettings.
/// 
/// When creating a new `GVariant`, you pass the data you want to store in it
/// along with a string representing the type of data you wish to pass to it.
/// 
/// For instance, if you want to create a `GVariant` holding an integer value you
/// can use:
/// 
/// (C Language Example):
/// ```C
///   GVariant *v = g_variant_new ("u", 40);
/// ```
/// 
/// The string "u" in the first argument tells `GVariant` that the data passed to
/// the constructor (40) is going to be an unsigned integer.
/// 
/// More advanced examples of `GVariant` in use can be found in documentation for
/// [GVariant format strings](#gvariant-format-strings-pointers).
/// 
/// The range of possible values is determined by the type.
/// 
/// The type system used by `GVariant` is `GVariantType`.
/// 
/// `GVariant` instances always have a type and a value (which are given
/// at construction time).  The type and value of a `GVariant` instance
/// can never change other than by the `GVariant` itself being
/// destroyed.  A `GVariant` cannot contain a pointer.
/// 
/// `GVariant` is reference counted using `g_variant_ref()` and
/// `g_variant_unref()`.  `GVariant` also has floating reference counts --
/// see `g_variant_ref_sink()`.
/// 
/// `GVariant` is completely threadsafe.  A `GVariant` instance can be
/// concurrently accessed in any way from any number of threads without
/// problems.
/// 
/// `GVariant` is heavily optimised for dealing with data in serialized
/// form.  It works particularly well with data located in memory-mapped
/// files.  It can perform nearly all deserialization operations in a
/// small constant time, usually touching only a single memory page.
/// Serialized `GVariant` data can also be sent over the network.
/// 
/// `GVariant` is largely compatible with D-Bus.  Almost all types of
/// `GVariant` instances can be sent over D-Bus.  See `GVariantType` for
/// exceptions.  (However, `GVariant`'s serialization format is not the same
/// as the serialization format of a D-Bus message body: use `GDBusMessage`,
/// in the gio library, for those.)
/// 
/// For space-efficiency, the `GVariant` serialization format does not
/// automatically include the variant's length, type or endianness,
/// which must either be implied from context (such as knowledge that a
/// particular file format always contains a little-endian
/// `G_VARIANT_TYPE_VARIANT` which occupies the whole length of the file)
/// or supplied out-of-band (for instance, a length, type and/or endianness
/// indicator could be placed at the beginning of a file, network message
/// or network stream).
/// 
/// A `GVariant`'s size is limited mainly by any lower level operating
/// system constraints, such as the number of bits in `gsize`.  For
/// example, it is reasonable to have a 2GB file mapped into memory
/// with `GMappedFile`, and call `g_variant_new_from_data()` on it.
/// 
/// For convenience to C programmers, `GVariant` features powerful
/// varargs-based value construction and destruction.  This feature is
/// designed to be embedded in other libraries.
/// 
/// There is a Python-inspired text language for describing `GVariant`
/// values.  `GVariant` includes a printer for this language and a parser
/// with type inferencing.
/// 
/// ## Memory Use
/// 
/// `GVariant` tries to be quite efficient with respect to memory use.
/// This section gives a rough idea of how much memory is used by the
/// current implementation.  The information here is subject to change
/// in the future.
/// 
/// The memory allocated by `GVariant` can be grouped into 4 broad
/// purposes: memory for serialized data, memory for the type
/// information cache, buffer management memory and memory for the
/// `GVariant` structure itself.
/// 
/// ## Serialized Data Memory
/// 
/// This is the memory that is used for storing GVariant data in
/// serialized form.  This is what would be sent over the network or
/// what would end up on disk, not counting any indicator of the
/// endianness, or of the length or type of the top-level variant.
/// 
/// The amount of memory required to store a boolean is 1 byte. 16,
/// 32 and 64 bit integers and double precision floating point numbers
/// use their "natural" size.  Strings (including object path and
/// signature strings) are stored with a nul terminator, and as such
/// use the length of the string plus 1 byte.
/// 
/// Maybe types use no space at all to represent the null value and
/// use the same amount of space (sometimes plus one byte) as the
/// equivalent non-maybe-typed value to represent the non-null case.
/// 
/// Arrays use the amount of space required to store each of their
/// members, concatenated.  Additionally, if the items stored in an
/// array are not of a fixed-size (ie: strings, other arrays, etc)
/// then an additional framing offset is stored for each item.  The
/// size of this offset is either 1, 2 or 4 bytes depending on the
/// overall size of the container.  Additionally, extra padding bytes
/// are added as required for alignment of child values.
/// 
/// Tuples (including dictionary entries) use the amount of space
/// required to store each of their members, concatenated, plus one
/// framing offset (as per arrays) for each non-fixed-sized item in
/// the tuple, except for the last one.  Additionally, extra padding
/// bytes are added as required for alignment of child values.
/// 
/// Variants use the same amount of space as the item inside of the
/// variant, plus 1 byte, plus the length of the type string for the
/// item inside the variant.
/// 
/// As an example, consider a dictionary mapping strings to variants.
/// In the case that the dictionary is empty, 0 bytes are required for
/// the serialization.
/// 
/// If we add an item "width" that maps to the int32 value of 500 then
/// we will use 4 byte to store the int32 (so 6 for the variant
/// containing it) and 6 bytes for the string.  The variant must be
/// aligned to 8 after the 6 bytes of the string, so that's 2 extra
/// bytes.  6 (string) + 2 (padding) + 6 (variant) is 14 bytes used
/// for the dictionary entry.  An additional 1 byte is added to the
/// array as a framing offset making a total of 15 bytes.
/// 
/// If we add another entry, "title" that maps to a nullable string
/// that happens to have a value of null, then we use 0 bytes for the
/// null value (and 3 bytes for the variant to contain it along with
/// its type string) plus 6 bytes for the string.  Again, we need 2
/// padding bytes.  That makes a total of 6 + 2 + 3 = 11 bytes.
/// 
/// We now require extra padding between the two items in the array.
/// After the 14 bytes of the first item, that's 2 bytes required.
/// We now require 2 framing offsets for an extra two
/// bytes. 14 + 2 + 11 + 2 = 29 bytes to encode the entire two-item
/// dictionary.
/// 
/// ## Type Information Cache
/// 
/// For each GVariant type that currently exists in the program a type
/// information structure is kept in the type information cache.  The
/// type information structure is required for rapid deserialization.
/// 
/// Continuing with the above example, if a `GVariant` exists with the
/// type "a{sv}" then a type information struct will exist for
/// "a{sv}", "{sv}", "s", and "v".  Multiple uses of the same type
/// will share the same type information.  Additionally, all
/// single-digit types are stored in read-only static memory and do
/// not contribute to the writable memory footprint of a program using
/// `GVariant`.
/// 
/// Aside from the type information structures stored in read-only
/// memory, there are two forms of type information.  One is used for
/// container types where there is a single element type: arrays and
/// maybe types.  The other is used for container types where there
/// are multiple element types: tuples and dictionary entries.
/// 
/// Array type info structures are 6 * sizeof (void *), plus the
/// memory required to store the type string itself.  This means that
/// on 32-bit systems, the cache entry for "a{sv}" would require 30
/// bytes of memory (plus malloc overhead).
/// 
/// Tuple type info structures are 6 * sizeof (void *), plus 4 *
/// sizeof (void *) for each item in the tuple, plus the memory
/// required to store the type string itself.  A 2-item tuple, for
/// example, would have a type information structure that consumed
/// writable memory in the size of 14 * sizeof (void *) (plus type
/// string)  This means that on 32-bit systems, the cache entry for
/// "{sv}" would require 61 bytes of memory (plus malloc overhead).
/// 
/// This means that in total, for our "a{sv}" example, 91 bytes of
/// type information would be allocated.
/// 
/// The type information cache, additionally, uses a `GHashTable` to
/// store and look up the cached items and stores a pointer to this
/// hash table in static storage.  The hash table is freed when there
/// are zero items in the type cache.
/// 
/// Although these sizes may seem large it is important to remember
/// that a program will probably only have a very small number of
/// different types of values in it and that only one type information
/// structure is required for many different values of the same type.
/// 
/// ## Buffer Management Memory
/// 
/// `GVariant` uses an internal buffer management structure to deal
/// with the various different possible sources of serialized data
/// that it uses.  The buffer is responsible for ensuring that the
/// correct call is made when the data is no longer in use by
/// `GVariant`.  This may involve a `g_free()` or a `g_slice_free()` or
/// even `g_mapped_file_unref()`.
/// 
/// One buffer management structure is used for each chunk of
/// serialized data.  The size of the buffer management structure
/// is 4 * (void *).  On 32-bit systems, that's 16 bytes.
/// 
/// ## GVariant structure
/// 
/// The size of a `GVariant` structure is 6 * (void *).  On 32-bit
/// systems, that's 24 bytes.
/// 
/// `GVariant` structures only exist if they are explicitly created
/// with API calls.  For example, if a `GVariant` is constructed out of
/// serialized data for the example given above (with the dictionary)
/// then although there are 9 individual values that comprise the
/// entire dictionary (two keys, two values, two variants containing
/// the values, two dictionary entries, plus the dictionary itself),
/// only 1 `GVariant` instance exists -- the one referring to the
/// dictionary.
/// 
/// If calls are made to start accessing the other values then
/// `GVariant` instances will exist for those values only for as long
/// as they are in use (ie: until you call `g_variant_unref()`).  The
/// type information is shared.  The serialized data and the buffer
/// management structure for that serialized data is shared by the
/// child.
/// 
/// ## Summary
/// 
/// To put the entire example together, for our dictionary mapping
/// strings to variants (with two entries, as given above), we are
/// using 91 bytes of memory for type information, 29 bytes of memory
/// for the serialized data, 16 bytes for buffer management and 24
/// bytes for the `GVariant` instance, or a total of 160 bytes, plus
/// malloc overhead.  If we were to use `g_variant_get_child_value()` to
/// access the two dictionary entries, we would use an additional 48
/// bytes.  If we were to have other dictionaries of the same type, we
/// would use more memory for the serialized data and buffer
/// management for those dictionaries, but the type information would
/// be shared.
///
/// The `VariantRef` type acts as a lightweight Swift reference to an underlying `GVariant` instance.
/// It exposes methods that can operate on this data type through `VariantProtocol` conformance.
/// Use `VariantRef` only as an `unowned` reference to an existing `GVariant` instance.
///
public struct VariantRef: VariantProtocol {
        /// Untyped pointer to the underlying `GVariant` instance.
    /// For type-safe access, use the generated, typed pointer `variant_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension VariantRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GVariant>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GVariant>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GVariant>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GVariant>?) {
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

    /// Reference intialiser for a related type that implements `VariantProtocol`
    @inlinable init<T: VariantProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    
    // *** new() is not available because it has a varargs (...) parameter!


    /// Creates a new `GVariant` array from `children`.
    /// 
    /// `child_type` must be non-`nil` if `n_children` is zero.  Otherwise, the
    /// child type is determined by inspecting the first element of the
    /// `children` array.  If `child_type` is non-`nil` then it must be a
    /// definite type.
    /// 
    /// The items of the array are taken from the `children` array.  No entry
    /// in the `children` array may be `nil`.
    /// 
    /// All items in the array must have the same type, which must be the
    /// same as `child_type`, if given.
    /// 
    /// If the `children` are floating references (see `g_variant_ref_sink()`), the
    /// new instance takes ownership of them as if via `g_variant_ref_sink()`.
    @inlinable init<VariantTypeT: VariantTypeProtocol>(array childType: VariantTypeT?, children: UnsafePointer<UnsafeMutablePointer<GVariant>?>! = nil, nChildren: Int) {
        let rv = g_variant_new_array(childType?.variant_type_ptr, children, gsize(nChildren))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new boolean `GVariant` instance -- either `true` or `false`.
    @inlinable init(boolean value: Bool) {
        let rv = g_variant_new_boolean(gboolean((value) ? 1 : 0))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new byte `GVariant` instance.
    @inlinable init(byte value: guint8) {
        let rv = g_variant_new_byte(value)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates an array-of-bytes `GVariant` with the contents of `string`.
    /// This function is just like `g_variant_new_string()` except that the
    /// string need not be valid UTF-8.
    /// 
    /// The nul terminator character at the end of the string is stored in
    /// the array.
    @inlinable init(bytestring string: UnsafePointer<gchar>!) {
        let rv = g_variant_new_bytestring(string)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Constructs an array of bytestring `GVariant` from the given array of
    /// strings.
    /// 
    /// If `length` is -1 then `strv` is `nil`-terminated.
    @inlinable init(bytestring_array strv: UnsafePointer<UnsafePointer<gchar>?>!, length: gssize) {
        let rv = g_variant_new_bytestring_array(strv, length)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new double `GVariant` instance.
    @inlinable init(CDouble value: Double) {
        let rv = g_variant_new_double(gdouble(value))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Constructs a new array `GVariant` instance, where the elements are
    /// of `element_type` type.
    /// 
    /// `elements` must be an array with fixed-sized elements.  Numeric types are
    /// fixed-size as are tuples containing only other fixed-sized types.
    /// 
    /// `element_size` must be the size of a single element in the array.
    /// For example, if calling this function for an array of 32-bit integers,
    /// you might say `sizeof(gint32)`. This value isn't used except for the purpose
    /// of a double-check that the form of the serialized data matches the caller's
    /// expectation.
    /// 
    /// `n_elements` must be the length of the `elements` array.
    @inlinable init<VariantTypeT: VariantTypeProtocol>(fixed_array elementType: VariantTypeT, elements: gconstpointer! = nil, nElements: Int, elementSize: Int) {
        let rv = g_variant_new_fixed_array(elementType.variant_type_ptr, elements, gsize(nElements), gsize(elementSize))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Constructs a new serialized-mode `GVariant` instance.  This is the
    /// inner interface for creation of new serialized values that gets
    /// called from various functions in gvariant.c.
    /// 
    /// A reference is taken on `bytes`.
    /// 
    /// The data in `bytes` must be aligned appropriately for the `type` being loaded.
    /// Otherwise this function will internally create a copy of the memory (since
    /// GLib 2.60) or (in older versions) fail and exit the process.
    @inlinable init<BytesT: BytesProtocol, VariantTypeT: VariantTypeProtocol>(bytes type: VariantTypeT, bytes: BytesT, trusted: Bool) {
        let rv = g_variant_new_from_bytes(type.variant_type_ptr, bytes.bytes_ptr, gboolean((trusted) ? 1 : 0))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GVariant` instance from serialized data.
    /// 
    /// `type` is the type of `GVariant` instance that will be constructed.
    /// The interpretation of `data` depends on knowing the type.
    /// 
    /// `data` is not modified by this function and must remain valid with an
    /// unchanging value until such a time as `notify` is called with
    /// `user_data`.  If the contents of `data` change before that time then
    /// the result is undefined.
    /// 
    /// If `data` is trusted to be serialized data in normal form then
    /// `trusted` should be `true`.  This applies to serialized data created
    /// within this process or read from a trusted location on the disk (such
    /// as a file installed in /usr/lib alongside your application).  You
    /// should set trusted to `false` if `data` is read from the network, a
    /// file in the user's home directory, etc.
    /// 
    /// If `data` was not stored in this machine's native endianness, any multi-byte
    /// numeric values in the returned variant will also be in non-native
    /// endianness. `g_variant_byteswap()` can be used to recover the original values.
    /// 
    /// `notify` will be called with `user_data` when `data` is no longer
    /// needed.  The exact time of this call is unspecified and might even be
    /// before this function returns.
    /// 
    /// Note: `data` must be backed by memory that is aligned appropriately for the
    /// `type` being loaded. Otherwise this function will internally create a copy of
    /// the memory (since GLib 2.60) or (in older versions) fail and exit the
    /// process.
    @inlinable init<VariantTypeT: VariantTypeProtocol>(data type: VariantTypeT, data: gconstpointer!, size: Int, trusted: Bool, notify: GDestroyNotify?, userData: gpointer! = nil) {
        let rv = g_variant_new_from_data(type.variant_type_ptr, data, gsize(size), gboolean((trusted) ? 1 : 0), notify, userData)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new handle `GVariant` instance.
    /// 
    /// By convention, handles are indexes into an array of file descriptors
    /// that are sent alongside a D-Bus message.  If you're not interacting
    /// with D-Bus, you probably don't need them.
    @inlinable init(handle value: gint32) {
        let rv = g_variant_new_handle(value)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new int16 `GVariant` instance.
    @inlinable init(int16 value: gint16) {
        let rv = g_variant_new_int16(value)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new int32 `GVariant` instance.
    @inlinable init(int32 value: gint32) {
        let rv = g_variant_new_int32(value)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new int64 `GVariant` instance.
    @inlinable init(int64 value: gint64) {
        let rv = g_variant_new_int64(value)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Depending on if `child` is `nil`, either wraps `child` inside of a
    /// maybe container or creates a Nothing instance for the given `type`.
    /// 
    /// At least one of `child_type` and `child` must be non-`nil`.
    /// If `child_type` is non-`nil` then it must be a definite type.
    /// If they are both non-`nil` then `child_type` must be the type
    /// of `child`.
    /// 
    /// If `child` is a floating reference (see `g_variant_ref_sink()`), the new
    /// instance takes ownership of `child`.
    @inlinable init<VariantT: VariantProtocol, VariantTypeT: VariantTypeProtocol>(maybe childType: VariantTypeT?, child: VariantT?) {
        let rv = g_variant_new_maybe(childType?.variant_type_ptr, child?.variant_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a D-Bus object path `GVariant` with the contents of `string`.
    /// `string` must be a valid D-Bus object path.  Use
    /// `g_variant_is_object_path()` if you're not sure.
    @inlinable init(objectPath: UnsafePointer<gchar>!) {
        let rv = g_variant_new_object_path(objectPath)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Constructs an array of object paths `GVariant` from the given array of
    /// strings.
    /// 
    /// Each string must be a valid `GVariant` object path; see
    /// `g_variant_is_object_path()`.
    /// 
    /// If `length` is -1 then `strv` is `nil`-terminated.
    @inlinable init(objv strv: UnsafePointer<UnsafePointer<gchar>?>!, length: gssize) {
        let rv = g_variant_new_objv(strv, length)
        ptr = UnsafeMutableRawPointer(rv)
    }


    // *** newParsed() is not available because it has a varargs (...) parameter!


    /// Parses `format` and returns the result.
    /// 
    /// This is the version of `g_variant_new_parsed()` intended to be used
    /// from libraries.
    /// 
    /// The return value will be floating if it was a newly created GVariant
    /// instance.  In the case that `format` simply specified the collection
    /// of a `GVariant` pointer (eg: `format` was "``*") then the collected
    /// `GVariant` pointer will be returned unmodified, without adding any
    /// additional references.
    /// 
    /// Note that the arguments in `app` must be of the correct width for their types
    /// specified in `format` when collected into the `va_list`. See
    /// the [GVariant varargs documentation](#gvariant-varargs).
    /// 
    /// In order to behave correctly in all cases it is necessary for the
    /// calling function to `g_variant_ref_sink()` the return result before
    /// returning control to the user that originally provided the pointer.
    /// At this point, the caller will have their own full reference to the
    /// result.  This can also be done by adding the result to a container,
    /// or by passing it to another `g_variant_new()` call.
#if !os(Linux) && !arch(arm64)
    @inlinable init(parsed_va format: UnsafePointer<gchar>!, app: UnsafeMutablePointer<va_list>!) {
        let rv = g_variant_new_parsed_va(format, app)
        ptr = UnsafeMutableRawPointer(rv)
    }
#endif


    // *** newPrintf() is not available because it has a varargs (...) parameter!


    /// Creates a D-Bus type signature `GVariant` with the contents of
    /// `string`.  `string` must be a valid D-Bus type signature.  Use
    /// `g_variant_is_signature()` if you're not sure.
    @inlinable init(signature: UnsafePointer<gchar>!) {
        let rv = g_variant_new_signature(signature)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a string `GVariant` with the contents of `string`.
    /// 
    /// `string` must be valid UTF-8, and must not be `nil`. To encode
    /// potentially-`nil` strings, use `g_variant_new()` with `ms` as the
    /// [format string](#gvariant-format-strings-maybe-types).
    @inlinable init(string: UnsafePointer<gchar>!) {
        let rv = g_variant_new_string(string)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Constructs an array of strings `GVariant` from the given array of
    /// strings.
    /// 
    /// If `length` is -1 then `strv` is `nil`-terminated.
    @inlinable init(strv: UnsafePointer<UnsafePointer<gchar>?>!, length: gssize) {
        let rv = g_variant_new_strv(strv, length)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a string `GVariant` with the contents of `string`.
    /// 
    /// `string` must be valid UTF-8, and must not be `nil`. To encode
    /// potentially-`nil` strings, use this with `g_variant_new_maybe()`.
    /// 
    /// This function consumes `string`.  `g_free()` will be called on `string`
    /// when it is no longer required.
    /// 
    /// You must not modify or access `string` in any other way after passing
    /// it to this function.  It is even possible that `string` is immediately
    /// freed.
    @inlinable init(take_string string: UnsafeMutablePointer<gchar>!) {
        let rv = g_variant_new_take_string(string)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new tuple `GVariant` out of the items in `children`.  The
    /// type is determined from the types of `children`.  No entry in the
    /// `children` array may be `nil`.
    /// 
    /// If `n_children` is 0 then the unit tuple is constructed.
    /// 
    /// If the `children` are floating references (see `g_variant_ref_sink()`), the
    /// new instance takes ownership of them as if via `g_variant_ref_sink()`.
    @inlinable init(tuple children: UnsafePointer<UnsafeMutablePointer<GVariant>?>!, nChildren: Int) {
        let rv = g_variant_new_tuple(children, gsize(nChildren))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new uint16 `GVariant` instance.
    @inlinable init(uint16 value: guint16) {
        let rv = g_variant_new_uint16(value)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new uint32 `GVariant` instance.
    @inlinable init(uint32 value: guint32) {
        let rv = g_variant_new_uint32(value)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new uint64 `GVariant` instance.
    @inlinable init(uint64 value: guint64) {
        let rv = g_variant_new_uint64(value)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// This function is intended to be used by libraries based on
    /// `GVariant` that want to provide `g_variant_new()`-like functionality
    /// to their users.
    /// 
    /// The API is more general than `g_variant_new()` to allow a wider range
    /// of possible uses.
    /// 
    /// `format_string` must still point to a valid format string, but it only
    /// needs to be nul-terminated if `endptr` is `nil`.  If `endptr` is
    /// non-`nil` then it is updated to point to the first character past the
    /// end of the format string.
    /// 
    /// `app` is a pointer to a `va_list`.  The arguments, according to
    /// `format_string`, are collected from this `va_list` and the list is left
    /// pointing to the argument following the last.
    /// 
    /// Note that the arguments in `app` must be of the correct width for their
    /// types specified in `format_string` when collected into the `va_list`.
    /// See the [GVariant varargs documentation](#gvariant-varargs).
    /// 
    /// These two generalisations allow mixing of multiple calls to
    /// `g_variant_new_va()` and `g_variant_get_va()` within a single actual
    /// varargs call by the user.
    /// 
    /// The return value will be floating if it was a newly created GVariant
    /// instance (for example, if the format string was "(ii)").  In the case
    /// that the format_string was '*', '?', 'r', or a format starting with
    /// '@' then the collected `GVariant` pointer will be returned unmodified,
    /// without adding any additional references.
    /// 
    /// In order to behave correctly in all cases it is necessary for the
    /// calling function to `g_variant_ref_sink()` the return result before
    /// returning control to the user that originally provided the pointer.
    /// At this point, the caller will have their own full reference to the
    /// result.  This can also be done by adding the result to a container,
    /// or by passing it to another `g_variant_new()` call.
#if !os(Linux) && !arch(arm64)
    @inlinable init(va formatString: UnsafePointer<gchar>!, endptr: UnsafeMutablePointer<UnsafePointer<gchar>?>? = nil, app: UnsafeMutablePointer<va_list>!) {
        let rv = g_variant_new_va(formatString, endptr, app)
        ptr = UnsafeMutableRawPointer(rv)
    }
#endif
    /// Creates a new `GVariant` array from `children`.
    /// 
    /// `child_type` must be non-`nil` if `n_children` is zero.  Otherwise, the
    /// child type is determined by inspecting the first element of the
    /// `children` array.  If `child_type` is non-`nil` then it must be a
    /// definite type.
    /// 
    /// The items of the array are taken from the `children` array.  No entry
    /// in the `children` array may be `nil`.
    /// 
    /// All items in the array must have the same type, which must be the
    /// same as `child_type`, if given.
    /// 
    /// If the `children` are floating references (see `g_variant_ref_sink()`), the
    /// new instance takes ownership of them as if via `g_variant_ref_sink()`.
    @inlinable static func new<VariantTypeT: VariantTypeProtocol>(array childType: VariantTypeT?, children: UnsafePointer<UnsafeMutablePointer<GVariant>?>! = nil, nChildren: Int) -> VariantRef! {
        guard let rv = VariantRef(gconstpointer: gconstpointer(g_variant_new_array(childType?.variant_type_ptr, children, gsize(nChildren)))) else { return nil }
        return rv
    }

    /// Creates a new boolean `GVariant` instance -- either `true` or `false`.
    @inlinable static func new(boolean value: Bool) -> VariantRef! {
        guard let rv = VariantRef(gconstpointer: gconstpointer(g_variant_new_boolean(gboolean((value) ? 1 : 0)))) else { return nil }
        return rv
    }

    /// Creates a new byte `GVariant` instance.
    @inlinable static func new(byte value: guint8) -> VariantRef! {
        guard let rv = VariantRef(gconstpointer: gconstpointer(g_variant_new_byte(value))) else { return nil }
        return rv
    }

    /// Creates an array-of-bytes `GVariant` with the contents of `string`.
    /// This function is just like `g_variant_new_string()` except that the
    /// string need not be valid UTF-8.
    /// 
    /// The nul terminator character at the end of the string is stored in
    /// the array.
    @inlinable static func newByte(bytestring string: UnsafePointer<gchar>!) -> VariantRef! {
        guard let rv = VariantRef(gconstpointer: gconstpointer(g_variant_new_bytestring(string))) else { return nil }
        return rv
    }

    /// Constructs an array of bytestring `GVariant` from the given array of
    /// strings.
    /// 
    /// If `length` is -1 then `strv` is `nil`-terminated.
    @inlinable static func newBytestringArray(bytestring_array strv: UnsafePointer<UnsafePointer<gchar>?>!, length: gssize) -> VariantRef! {
        guard let rv = VariantRef(gconstpointer: gconstpointer(g_variant_new_bytestring_array(strv, length))) else { return nil }
        return rv
    }

    /// Creates a new double `GVariant` instance.
    @inlinable static func newDouble(CDouble value: Double) -> VariantRef! {
        guard let rv = VariantRef(gconstpointer: gconstpointer(g_variant_new_double(gdouble(value)))) else { return nil }
        return rv
    }

    /// Constructs a new array `GVariant` instance, where the elements are
    /// of `element_type` type.
    /// 
    /// `elements` must be an array with fixed-sized elements.  Numeric types are
    /// fixed-size as are tuples containing only other fixed-sized types.
    /// 
    /// `element_size` must be the size of a single element in the array.
    /// For example, if calling this function for an array of 32-bit integers,
    /// you might say `sizeof(gint32)`. This value isn't used except for the purpose
    /// of a double-check that the form of the serialized data matches the caller's
    /// expectation.
    /// 
    /// `n_elements` must be the length of the `elements` array.
    @inlinable static func newFixedArray<VariantTypeT: VariantTypeProtocol>(fixed_array elementType: VariantTypeT, elements: gconstpointer! = nil, nElements: Int, elementSize: Int) -> VariantRef! {
        guard let rv = VariantRef(gconstpointer: gconstpointer(g_variant_new_fixed_array(elementType.variant_type_ptr, elements, gsize(nElements), gsize(elementSize)))) else { return nil }
        return rv
    }

    /// Constructs a new serialized-mode `GVariant` instance.  This is the
    /// inner interface for creation of new serialized values that gets
    /// called from various functions in gvariant.c.
    /// 
    /// A reference is taken on `bytes`.
    /// 
    /// The data in `bytes` must be aligned appropriately for the `type` being loaded.
    /// Otherwise this function will internally create a copy of the memory (since
    /// GLib 2.60) or (in older versions) fail and exit the process.
    @inlinable static func newFrom<BytesT: BytesProtocol, VariantTypeT: VariantTypeProtocol>(bytes type: VariantTypeT, bytes: BytesT, trusted: Bool) -> VariantRef! {
        guard let rv = VariantRef(gconstpointer: gconstpointer(g_variant_new_from_bytes(type.variant_type_ptr, bytes.bytes_ptr, gboolean((trusted) ? 1 : 0)))) else { return nil }
        return rv
    }

    /// Creates a new `GVariant` instance from serialized data.
    /// 
    /// `type` is the type of `GVariant` instance that will be constructed.
    /// The interpretation of `data` depends on knowing the type.
    /// 
    /// `data` is not modified by this function and must remain valid with an
    /// unchanging value until such a time as `notify` is called with
    /// `user_data`.  If the contents of `data` change before that time then
    /// the result is undefined.
    /// 
    /// If `data` is trusted to be serialized data in normal form then
    /// `trusted` should be `true`.  This applies to serialized data created
    /// within this process or read from a trusted location on the disk (such
    /// as a file installed in /usr/lib alongside your application).  You
    /// should set trusted to `false` if `data` is read from the network, a
    /// file in the user's home directory, etc.
    /// 
    /// If `data` was not stored in this machine's native endianness, any multi-byte
    /// numeric values in the returned variant will also be in non-native
    /// endianness. `g_variant_byteswap()` can be used to recover the original values.
    /// 
    /// `notify` will be called with `user_data` when `data` is no longer
    /// needed.  The exact time of this call is unspecified and might even be
    /// before this function returns.
    /// 
    /// Note: `data` must be backed by memory that is aligned appropriately for the
    /// `type` being loaded. Otherwise this function will internally create a copy of
    /// the memory (since GLib 2.60) or (in older versions) fail and exit the
    /// process.
    @inlinable static func newFrom<VariantTypeT: VariantTypeProtocol>(data type: VariantTypeT, data: gconstpointer!, size: Int, trusted: Bool, notify: GDestroyNotify?, userData: gpointer! = nil) -> VariantRef! {
        guard let rv = VariantRef(gconstpointer: gconstpointer(g_variant_new_from_data(type.variant_type_ptr, data, gsize(size), gboolean((trusted) ? 1 : 0), notify, userData))) else { return nil }
        return rv
    }

    /// Creates a new handle `GVariant` instance.
    /// 
    /// By convention, handles are indexes into an array of file descriptors
    /// that are sent alongside a D-Bus message.  If you're not interacting
    /// with D-Bus, you probably don't need them.
    @inlinable static func new(handle value: gint32) -> VariantRef! {
        guard let rv = VariantRef(gconstpointer: gconstpointer(g_variant_new_handle(value))) else { return nil }
        return rv
    }

    /// Creates a new int16 `GVariant` instance.
    @inlinable static func new(int16 value: gint16) -> VariantRef! {
        guard let rv = VariantRef(gconstpointer: gconstpointer(g_variant_new_int16(value))) else { return nil }
        return rv
    }

    /// Creates a new int32 `GVariant` instance.
    @inlinable static func new(int32 value: gint32) -> VariantRef! {
        guard let rv = VariantRef(gconstpointer: gconstpointer(g_variant_new_int32(value))) else { return nil }
        return rv
    }

    /// Creates a new int64 `GVariant` instance.
    @inlinable static func new(int64 value: gint64) -> VariantRef! {
        guard let rv = VariantRef(gconstpointer: gconstpointer(g_variant_new_int64(value))) else { return nil }
        return rv
    }

    /// Depending on if `child` is `nil`, either wraps `child` inside of a
    /// maybe container or creates a Nothing instance for the given `type`.
    /// 
    /// At least one of `child_type` and `child` must be non-`nil`.
    /// If `child_type` is non-`nil` then it must be a definite type.
    /// If they are both non-`nil` then `child_type` must be the type
    /// of `child`.
    /// 
    /// If `child` is a floating reference (see `g_variant_ref_sink()`), the new
    /// instance takes ownership of `child`.
    @inlinable static func new<VariantT: VariantProtocol, VariantTypeT: VariantTypeProtocol>(maybe childType: VariantTypeT?, child: VariantT?) -> VariantRef! {
        guard let rv = VariantRef(gconstpointer: gconstpointer(g_variant_new_maybe(childType?.variant_type_ptr, child?.variant_ptr))) else { return nil }
        return rv
    }

    /// Creates a D-Bus object path `GVariant` with the contents of `string`.
    /// `string` must be a valid D-Bus object path.  Use
    /// `g_variant_is_object_path()` if you're not sure.
    @inlinable static func new(objectPath: UnsafePointer<gchar>!) -> VariantRef! {
        guard let rv = VariantRef(gconstpointer: gconstpointer(g_variant_new_object_path(objectPath))) else { return nil }
        return rv
    }

    /// Constructs an array of object paths `GVariant` from the given array of
    /// strings.
    /// 
    /// Each string must be a valid `GVariant` object path; see
    /// `g_variant_is_object_path()`.
    /// 
    /// If `length` is -1 then `strv` is `nil`-terminated.
    @inlinable static func new(objv strv: UnsafePointer<UnsafePointer<gchar>?>!, length: gssize) -> VariantRef! {
        guard let rv = VariantRef(gconstpointer: gconstpointer(g_variant_new_objv(strv, length))) else { return nil }
        return rv
    }


    // *** newParsed() is not available because it has a varargs (...) parameter!


    /// Parses `format` and returns the result.
    /// 
    /// This is the version of `g_variant_new_parsed()` intended to be used
    /// from libraries.
    /// 
    /// The return value will be floating if it was a newly created GVariant
    /// instance.  In the case that `format` simply specified the collection
    /// of a `GVariant` pointer (eg: `format` was "``*") then the collected
    /// `GVariant` pointer will be returned unmodified, without adding any
    /// additional references.
    /// 
    /// Note that the arguments in `app` must be of the correct width for their types
    /// specified in `format` when collected into the `va_list`. See
    /// the [GVariant varargs documentation](#gvariant-varargs).
    /// 
    /// In order to behave correctly in all cases it is necessary for the
    /// calling function to `g_variant_ref_sink()` the return result before
    /// returning control to the user that originally provided the pointer.
    /// At this point, the caller will have their own full reference to the
    /// result.  This can also be done by adding the result to a container,
    /// or by passing it to another `g_variant_new()` call.
#if !os(Linux) && !arch(arm64)
    @inlinable static func newParsedVa(parsed_va format: UnsafePointer<gchar>!, app: UnsafeMutablePointer<va_list>!) -> VariantRef! {
        guard let rv = VariantRef(gconstpointer: gconstpointer(g_variant_new_parsed_va(format, app))) else { return nil }
        return rv
    }
#endif


    // *** newPrintf() is not available because it has a varargs (...) parameter!


    /// Creates a D-Bus type signature `GVariant` with the contents of
    /// `string`.  `string` must be a valid D-Bus type signature.  Use
    /// `g_variant_is_signature()` if you're not sure.
    @inlinable static func new(signature: UnsafePointer<gchar>!) -> VariantRef! {
        guard let rv = VariantRef(gconstpointer: gconstpointer(g_variant_new_signature(signature))) else { return nil }
        return rv
    }

    /// Creates a string `GVariant` with the contents of `string`.
    /// 
    /// `string` must be valid UTF-8, and must not be `nil`. To encode
    /// potentially-`nil` strings, use `g_variant_new()` with `ms` as the
    /// [format string](#gvariant-format-strings-maybe-types).
    @inlinable static func new(string: UnsafePointer<gchar>!) -> VariantRef! {
        guard let rv = VariantRef(gconstpointer: gconstpointer(g_variant_new_string(string))) else { return nil }
        return rv
    }

    /// Constructs an array of strings `GVariant` from the given array of
    /// strings.
    /// 
    /// If `length` is -1 then `strv` is `nil`-terminated.
    @inlinable static func new(strv: UnsafePointer<UnsafePointer<gchar>?>!, length: gssize) -> VariantRef! {
        guard let rv = VariantRef(gconstpointer: gconstpointer(g_variant_new_strv(strv, length))) else { return nil }
        return rv
    }

    /// Creates a string `GVariant` with the contents of `string`.
    /// 
    /// `string` must be valid UTF-8, and must not be `nil`. To encode
    /// potentially-`nil` strings, use this with `g_variant_new_maybe()`.
    /// 
    /// This function consumes `string`.  `g_free()` will be called on `string`
    /// when it is no longer required.
    /// 
    /// You must not modify or access `string` in any other way after passing
    /// it to this function.  It is even possible that `string` is immediately
    /// freed.
    @inlinable static func newTake(take_string string: UnsafeMutablePointer<gchar>!) -> VariantRef! {
        guard let rv = VariantRef(gconstpointer: gconstpointer(g_variant_new_take_string(string))) else { return nil }
        return rv
    }

    /// Creates a new tuple `GVariant` out of the items in `children`.  The
    /// type is determined from the types of `children`.  No entry in the
    /// `children` array may be `nil`.
    /// 
    /// If `n_children` is 0 then the unit tuple is constructed.
    /// 
    /// If the `children` are floating references (see `g_variant_ref_sink()`), the
    /// new instance takes ownership of them as if via `g_variant_ref_sink()`.
    @inlinable static func new(tuple children: UnsafePointer<UnsafeMutablePointer<GVariant>?>!, nChildren: Int) -> VariantRef! {
        guard let rv = VariantRef(gconstpointer: gconstpointer(g_variant_new_tuple(children, gsize(nChildren)))) else { return nil }
        return rv
    }

    /// Creates a new uint16 `GVariant` instance.
    @inlinable static func new(uint16 value: guint16) -> VariantRef! {
        guard let rv = VariantRef(gconstpointer: gconstpointer(g_variant_new_uint16(value))) else { return nil }
        return rv
    }

    /// Creates a new uint32 `GVariant` instance.
    @inlinable static func new(uint32 value: guint32) -> VariantRef! {
        guard let rv = VariantRef(gconstpointer: gconstpointer(g_variant_new_uint32(value))) else { return nil }
        return rv
    }

    /// Creates a new uint64 `GVariant` instance.
    @inlinable static func new(uint64 value: guint64) -> VariantRef! {
        guard let rv = VariantRef(gconstpointer: gconstpointer(g_variant_new_uint64(value))) else { return nil }
        return rv
    }

    /// This function is intended to be used by libraries based on
    /// `GVariant` that want to provide `g_variant_new()`-like functionality
    /// to their users.
    /// 
    /// The API is more general than `g_variant_new()` to allow a wider range
    /// of possible uses.
    /// 
    /// `format_string` must still point to a valid format string, but it only
    /// needs to be nul-terminated if `endptr` is `nil`.  If `endptr` is
    /// non-`nil` then it is updated to point to the first character past the
    /// end of the format string.
    /// 
    /// `app` is a pointer to a `va_list`.  The arguments, according to
    /// `format_string`, are collected from this `va_list` and the list is left
    /// pointing to the argument following the last.
    /// 
    /// Note that the arguments in `app` must be of the correct width for their
    /// types specified in `format_string` when collected into the `va_list`.
    /// See the [GVariant varargs documentation](#gvariant-varargs).
    /// 
    /// These two generalisations allow mixing of multiple calls to
    /// `g_variant_new_va()` and `g_variant_get_va()` within a single actual
    /// varargs call by the user.
    /// 
    /// The return value will be floating if it was a newly created GVariant
    /// instance (for example, if the format string was "(ii)").  In the case
    /// that the format_string was '*', '?', 'r', or a format starting with
    /// '@' then the collected `GVariant` pointer will be returned unmodified,
    /// without adding any additional references.
    /// 
    /// In order to behave correctly in all cases it is necessary for the
    /// calling function to `g_variant_ref_sink()` the return result before
    /// returning control to the user that originally provided the pointer.
    /// At this point, the caller will have their own full reference to the
    /// result.  This can also be done by adding the result to a container,
    /// or by passing it to another `g_variant_new()` call.
#if !os(Linux) && !arch(arm64)
    @inlinable static func new(va formatString: UnsafePointer<gchar>!, endptr: UnsafeMutablePointer<UnsafePointer<gchar>?>? = nil, app: UnsafeMutablePointer<va_list>!) -> VariantRef! {
        guard let rv = VariantRef(gconstpointer: gconstpointer(g_variant_new_va(formatString, endptr, app))) else { return nil }
        return rv
    }
#endif

    /// Parses a `GVariant` from a text representation.
    /// 
    /// A single `GVariant` is parsed from the content of `text`.
    /// 
    /// The format is described [here](#gvariant-text).
    /// 
    /// The memory at `limit` will never be accessed and the parser behaves as
    /// if the character at `limit` is the nul terminator.  This has the
    /// effect of bounding `text`.
    /// 
    /// If `endptr` is non-`nil` then `text` is permitted to contain data
    /// following the value that this function parses and `endptr` will be
    /// updated to point to the first character past the end of the text
    /// parsed by this function.  If `endptr` is `nil` and there is extra data
    /// then an error is returned.
    /// 
    /// If `type` is non-`nil` then the value will be parsed to have that
    /// type.  This may result in additional parse errors (in the case that
    /// the parsed value doesn't fit the type) but may also result in fewer
    /// errors (in the case that the type would have been ambiguous, such as
    /// with empty arrays).
    /// 
    /// In the event that the parsing is successful, the resulting `GVariant`
    /// is returned. It is never floating, and must be freed with
    /// `g_variant_unref()`.
    /// 
    /// In case of any error, `nil` will be returned.  If `error` is non-`nil`
    /// then it will be set to reflect the error that occurred.
    /// 
    /// Officially, the language understood by the parser is "any string
    /// produced by `g_variant_print()`".
    /// 
    /// There may be implementation specific restrictions on deeply nested values,
    /// which would result in a `G_VARIANT_PARSE_ERROR_RECURSION` error. `GVariant` is
    /// guaranteed to handle nesting up to at least 64 levels.
    @inlinable static func parse<VariantTypeT: VariantTypeProtocol>(type: VariantTypeT?, text: UnsafePointer<gchar>!, limit: UnsafePointer<gchar>? = nil, endptr: UnsafeMutablePointer<UnsafePointer<gchar>?>? = nil) throws -> VariantRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = VariantRef(gconstpointer: gconstpointer(g_variant_parse(type?.variant_type_ptr, text, limit, endptr, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }
}

/// `GVariant` is a variant datatype; it can contain one or more values
/// along with information about the type of the values.
/// 
/// A `GVariant` may contain simple types, like an integer, or a boolean value;
/// or complex types, like an array of two strings, or a dictionary of key
/// value pairs. A `GVariant` is also immutable: once it's been created neither
/// its type nor its content can be modified further.
/// 
/// GVariant is useful whenever data needs to be serialized, for example when
/// sending method parameters in D-Bus, or when saving settings using GSettings.
/// 
/// When creating a new `GVariant`, you pass the data you want to store in it
/// along with a string representing the type of data you wish to pass to it.
/// 
/// For instance, if you want to create a `GVariant` holding an integer value you
/// can use:
/// 
/// (C Language Example):
/// ```C
///   GVariant *v = g_variant_new ("u", 40);
/// ```
/// 
/// The string "u" in the first argument tells `GVariant` that the data passed to
/// the constructor (40) is going to be an unsigned integer.
/// 
/// More advanced examples of `GVariant` in use can be found in documentation for
/// [GVariant format strings](#gvariant-format-strings-pointers).
/// 
/// The range of possible values is determined by the type.
/// 
/// The type system used by `GVariant` is `GVariantType`.
/// 
/// `GVariant` instances always have a type and a value (which are given
/// at construction time).  The type and value of a `GVariant` instance
/// can never change other than by the `GVariant` itself being
/// destroyed.  A `GVariant` cannot contain a pointer.
/// 
/// `GVariant` is reference counted using `g_variant_ref()` and
/// `g_variant_unref()`.  `GVariant` also has floating reference counts --
/// see `g_variant_ref_sink()`.
/// 
/// `GVariant` is completely threadsafe.  A `GVariant` instance can be
/// concurrently accessed in any way from any number of threads without
/// problems.
/// 
/// `GVariant` is heavily optimised for dealing with data in serialized
/// form.  It works particularly well with data located in memory-mapped
/// files.  It can perform nearly all deserialization operations in a
/// small constant time, usually touching only a single memory page.
/// Serialized `GVariant` data can also be sent over the network.
/// 
/// `GVariant` is largely compatible with D-Bus.  Almost all types of
/// `GVariant` instances can be sent over D-Bus.  See `GVariantType` for
/// exceptions.  (However, `GVariant`'s serialization format is not the same
/// as the serialization format of a D-Bus message body: use `GDBusMessage`,
/// in the gio library, for those.)
/// 
/// For space-efficiency, the `GVariant` serialization format does not
/// automatically include the variant's length, type or endianness,
/// which must either be implied from context (such as knowledge that a
/// particular file format always contains a little-endian
/// `G_VARIANT_TYPE_VARIANT` which occupies the whole length of the file)
/// or supplied out-of-band (for instance, a length, type and/or endianness
/// indicator could be placed at the beginning of a file, network message
/// or network stream).
/// 
/// A `GVariant`'s size is limited mainly by any lower level operating
/// system constraints, such as the number of bits in `gsize`.  For
/// example, it is reasonable to have a 2GB file mapped into memory
/// with `GMappedFile`, and call `g_variant_new_from_data()` on it.
/// 
/// For convenience to C programmers, `GVariant` features powerful
/// varargs-based value construction and destruction.  This feature is
/// designed to be embedded in other libraries.
/// 
/// There is a Python-inspired text language for describing `GVariant`
/// values.  `GVariant` includes a printer for this language and a parser
/// with type inferencing.
/// 
/// ## Memory Use
/// 
/// `GVariant` tries to be quite efficient with respect to memory use.
/// This section gives a rough idea of how much memory is used by the
/// current implementation.  The information here is subject to change
/// in the future.
/// 
/// The memory allocated by `GVariant` can be grouped into 4 broad
/// purposes: memory for serialized data, memory for the type
/// information cache, buffer management memory and memory for the
/// `GVariant` structure itself.
/// 
/// ## Serialized Data Memory
/// 
/// This is the memory that is used for storing GVariant data in
/// serialized form.  This is what would be sent over the network or
/// what would end up on disk, not counting any indicator of the
/// endianness, or of the length or type of the top-level variant.
/// 
/// The amount of memory required to store a boolean is 1 byte. 16,
/// 32 and 64 bit integers and double precision floating point numbers
/// use their "natural" size.  Strings (including object path and
/// signature strings) are stored with a nul terminator, and as such
/// use the length of the string plus 1 byte.
/// 
/// Maybe types use no space at all to represent the null value and
/// use the same amount of space (sometimes plus one byte) as the
/// equivalent non-maybe-typed value to represent the non-null case.
/// 
/// Arrays use the amount of space required to store each of their
/// members, concatenated.  Additionally, if the items stored in an
/// array are not of a fixed-size (ie: strings, other arrays, etc)
/// then an additional framing offset is stored for each item.  The
/// size of this offset is either 1, 2 or 4 bytes depending on the
/// overall size of the container.  Additionally, extra padding bytes
/// are added as required for alignment of child values.
/// 
/// Tuples (including dictionary entries) use the amount of space
/// required to store each of their members, concatenated, plus one
/// framing offset (as per arrays) for each non-fixed-sized item in
/// the tuple, except for the last one.  Additionally, extra padding
/// bytes are added as required for alignment of child values.
/// 
/// Variants use the same amount of space as the item inside of the
/// variant, plus 1 byte, plus the length of the type string for the
/// item inside the variant.
/// 
/// As an example, consider a dictionary mapping strings to variants.
/// In the case that the dictionary is empty, 0 bytes are required for
/// the serialization.
/// 
/// If we add an item "width" that maps to the int32 value of 500 then
/// we will use 4 byte to store the int32 (so 6 for the variant
/// containing it) and 6 bytes for the string.  The variant must be
/// aligned to 8 after the 6 bytes of the string, so that's 2 extra
/// bytes.  6 (string) + 2 (padding) + 6 (variant) is 14 bytes used
/// for the dictionary entry.  An additional 1 byte is added to the
/// array as a framing offset making a total of 15 bytes.
/// 
/// If we add another entry, "title" that maps to a nullable string
/// that happens to have a value of null, then we use 0 bytes for the
/// null value (and 3 bytes for the variant to contain it along with
/// its type string) plus 6 bytes for the string.  Again, we need 2
/// padding bytes.  That makes a total of 6 + 2 + 3 = 11 bytes.
/// 
/// We now require extra padding between the two items in the array.
/// After the 14 bytes of the first item, that's 2 bytes required.
/// We now require 2 framing offsets for an extra two
/// bytes. 14 + 2 + 11 + 2 = 29 bytes to encode the entire two-item
/// dictionary.
/// 
/// ## Type Information Cache
/// 
/// For each GVariant type that currently exists in the program a type
/// information structure is kept in the type information cache.  The
/// type information structure is required for rapid deserialization.
/// 
/// Continuing with the above example, if a `GVariant` exists with the
/// type "a{sv}" then a type information struct will exist for
/// "a{sv}", "{sv}", "s", and "v".  Multiple uses of the same type
/// will share the same type information.  Additionally, all
/// single-digit types are stored in read-only static memory and do
/// not contribute to the writable memory footprint of a program using
/// `GVariant`.
/// 
/// Aside from the type information structures stored in read-only
/// memory, there are two forms of type information.  One is used for
/// container types where there is a single element type: arrays and
/// maybe types.  The other is used for container types where there
/// are multiple element types: tuples and dictionary entries.
/// 
/// Array type info structures are 6 * sizeof (void *), plus the
/// memory required to store the type string itself.  This means that
/// on 32-bit systems, the cache entry for "a{sv}" would require 30
/// bytes of memory (plus malloc overhead).
/// 
/// Tuple type info structures are 6 * sizeof (void *), plus 4 *
/// sizeof (void *) for each item in the tuple, plus the memory
/// required to store the type string itself.  A 2-item tuple, for
/// example, would have a type information structure that consumed
/// writable memory in the size of 14 * sizeof (void *) (plus type
/// string)  This means that on 32-bit systems, the cache entry for
/// "{sv}" would require 61 bytes of memory (plus malloc overhead).
/// 
/// This means that in total, for our "a{sv}" example, 91 bytes of
/// type information would be allocated.
/// 
/// The type information cache, additionally, uses a `GHashTable` to
/// store and look up the cached items and stores a pointer to this
/// hash table in static storage.  The hash table is freed when there
/// are zero items in the type cache.
/// 
/// Although these sizes may seem large it is important to remember
/// that a program will probably only have a very small number of
/// different types of values in it and that only one type information
/// structure is required for many different values of the same type.
/// 
/// ## Buffer Management Memory
/// 
/// `GVariant` uses an internal buffer management structure to deal
/// with the various different possible sources of serialized data
/// that it uses.  The buffer is responsible for ensuring that the
/// correct call is made when the data is no longer in use by
/// `GVariant`.  This may involve a `g_free()` or a `g_slice_free()` or
/// even `g_mapped_file_unref()`.
/// 
/// One buffer management structure is used for each chunk of
/// serialized data.  The size of the buffer management structure
/// is 4 * (void *).  On 32-bit systems, that's 16 bytes.
/// 
/// ## GVariant structure
/// 
/// The size of a `GVariant` structure is 6 * (void *).  On 32-bit
/// systems, that's 24 bytes.
/// 
/// `GVariant` structures only exist if they are explicitly created
/// with API calls.  For example, if a `GVariant` is constructed out of
/// serialized data for the example given above (with the dictionary)
/// then although there are 9 individual values that comprise the
/// entire dictionary (two keys, two values, two variants containing
/// the values, two dictionary entries, plus the dictionary itself),
/// only 1 `GVariant` instance exists -- the one referring to the
/// dictionary.
/// 
/// If calls are made to start accessing the other values then
/// `GVariant` instances will exist for those values only for as long
/// as they are in use (ie: until you call `g_variant_unref()`).  The
/// type information is shared.  The serialized data and the buffer
/// management structure for that serialized data is shared by the
/// child.
/// 
/// ## Summary
/// 
/// To put the entire example together, for our dictionary mapping
/// strings to variants (with two entries, as given above), we are
/// using 91 bytes of memory for type information, 29 bytes of memory
/// for the serialized data, 16 bytes for buffer management and 24
/// bytes for the `GVariant` instance, or a total of 160 bytes, plus
/// malloc overhead.  If we were to use `g_variant_get_child_value()` to
/// access the two dictionary entries, we would use an additional 48
/// bytes.  If we were to have other dictionaries of the same type, we
/// would use more memory for the serialized data and buffer
/// management for those dictionaries, but the type information would
/// be shared.
///
/// The `Variant` type acts as a reference-counted owner of an underlying `GVariant` instance.
/// It provides the methods that can operate on this data type through `VariantProtocol` conformance.
/// Use `Variant` as a strong reference or owner of a `GVariant` instance.
///
open class Variant: VariantProtocol {
        /// Untyped pointer to the underlying `GVariant` instance.
    /// For type-safe access, use the generated, typed pointer `variant_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Variant` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GVariant>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Variant` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GVariant>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Variant` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Variant` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Variant` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GVariant>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Variant` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GVariant>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GVariant`.
    /// i.e., ownership is transferred to the `Variant` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GVariant>) {
        ptr = UnsafeMutableRawPointer(op)
        g_variant_ref(ptr.assumingMemoryBound(to: GVariant.self))
    }

    /// Reference intialiser for a related type that implements `VariantProtocol`
    /// Will retain `GVariant`.
    /// - Parameter other: an instance of a related type that implements `VariantProtocol`
    @inlinable public init<T: VariantProtocol>(_ other: T) {
        ptr = other.ptr
        g_variant_ref(ptr.assumingMemoryBound(to: GVariant.self))
    }

    /// Releases the underlying `GVariant` instance using `g_variant_unref`.
    deinit {
        g_variant_unref(ptr.assumingMemoryBound(to: GVariant.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_variant_ref(ptr.assumingMemoryBound(to: GVariant.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_variant_ref(ptr.assumingMemoryBound(to: GVariant.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_variant_ref(ptr.assumingMemoryBound(to: GVariant.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_variant_ref(ptr.assumingMemoryBound(to: GVariant.self))
    }


    // *** new() is not available because it has a varargs (...) parameter!


    /// Creates a new `GVariant` array from `children`.
    /// 
    /// `child_type` must be non-`nil` if `n_children` is zero.  Otherwise, the
    /// child type is determined by inspecting the first element of the
    /// `children` array.  If `child_type` is non-`nil` then it must be a
    /// definite type.
    /// 
    /// The items of the array are taken from the `children` array.  No entry
    /// in the `children` array may be `nil`.
    /// 
    /// All items in the array must have the same type, which must be the
    /// same as `child_type`, if given.
    /// 
    /// If the `children` are floating references (see `g_variant_ref_sink()`), the
    /// new instance takes ownership of them as if via `g_variant_ref_sink()`.
    @inlinable public init<VariantTypeT: VariantTypeProtocol>(array childType: VariantTypeT?, children: UnsafePointer<UnsafeMutablePointer<GVariant>?>! = nil, nChildren: Int) {
        let rv = g_variant_new_array(childType?.variant_type_ptr, children, gsize(nChildren))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new boolean `GVariant` instance -- either `true` or `false`.
    @inlinable public init(boolean value: Bool) {
        let rv = g_variant_new_boolean(gboolean((value) ? 1 : 0))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new byte `GVariant` instance.
    @inlinable public init(byte value: guint8) {
        let rv = g_variant_new_byte(value)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates an array-of-bytes `GVariant` with the contents of `string`.
    /// This function is just like `g_variant_new_string()` except that the
    /// string need not be valid UTF-8.
    /// 
    /// The nul terminator character at the end of the string is stored in
    /// the array.
    @inlinable public init(bytestring string: UnsafePointer<gchar>!) {
        let rv = g_variant_new_bytestring(string)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Constructs an array of bytestring `GVariant` from the given array of
    /// strings.
    /// 
    /// If `length` is -1 then `strv` is `nil`-terminated.
    @inlinable public init(bytestring_array strv: UnsafePointer<UnsafePointer<gchar>?>!, length: gssize) {
        let rv = g_variant_new_bytestring_array(strv, length)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new double `GVariant` instance.
    @inlinable public init(CDouble value: Double) {
        let rv = g_variant_new_double(gdouble(value))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Constructs a new array `GVariant` instance, where the elements are
    /// of `element_type` type.
    /// 
    /// `elements` must be an array with fixed-sized elements.  Numeric types are
    /// fixed-size as are tuples containing only other fixed-sized types.
    /// 
    /// `element_size` must be the size of a single element in the array.
    /// For example, if calling this function for an array of 32-bit integers,
    /// you might say `sizeof(gint32)`. This value isn't used except for the purpose
    /// of a double-check that the form of the serialized data matches the caller's
    /// expectation.
    /// 
    /// `n_elements` must be the length of the `elements` array.
    @inlinable public init<VariantTypeT: VariantTypeProtocol>(fixed_array elementType: VariantTypeT, elements: gconstpointer! = nil, nElements: Int, elementSize: Int) {
        let rv = g_variant_new_fixed_array(elementType.variant_type_ptr, elements, gsize(nElements), gsize(elementSize))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Constructs a new serialized-mode `GVariant` instance.  This is the
    /// inner interface for creation of new serialized values that gets
    /// called from various functions in gvariant.c.
    /// 
    /// A reference is taken on `bytes`.
    /// 
    /// The data in `bytes` must be aligned appropriately for the `type` being loaded.
    /// Otherwise this function will internally create a copy of the memory (since
    /// GLib 2.60) or (in older versions) fail and exit the process.
    @inlinable public init<BytesT: BytesProtocol, VariantTypeT: VariantTypeProtocol>(bytes type: VariantTypeT, bytes: BytesT, trusted: Bool) {
        let rv = g_variant_new_from_bytes(type.variant_type_ptr, bytes.bytes_ptr, gboolean((trusted) ? 1 : 0))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GVariant` instance from serialized data.
    /// 
    /// `type` is the type of `GVariant` instance that will be constructed.
    /// The interpretation of `data` depends on knowing the type.
    /// 
    /// `data` is not modified by this function and must remain valid with an
    /// unchanging value until such a time as `notify` is called with
    /// `user_data`.  If the contents of `data` change before that time then
    /// the result is undefined.
    /// 
    /// If `data` is trusted to be serialized data in normal form then
    /// `trusted` should be `true`.  This applies to serialized data created
    /// within this process or read from a trusted location on the disk (such
    /// as a file installed in /usr/lib alongside your application).  You
    /// should set trusted to `false` if `data` is read from the network, a
    /// file in the user's home directory, etc.
    /// 
    /// If `data` was not stored in this machine's native endianness, any multi-byte
    /// numeric values in the returned variant will also be in non-native
    /// endianness. `g_variant_byteswap()` can be used to recover the original values.
    /// 
    /// `notify` will be called with `user_data` when `data` is no longer
    /// needed.  The exact time of this call is unspecified and might even be
    /// before this function returns.
    /// 
    /// Note: `data` must be backed by memory that is aligned appropriately for the
    /// `type` being loaded. Otherwise this function will internally create a copy of
    /// the memory (since GLib 2.60) or (in older versions) fail and exit the
    /// process.
    @inlinable public init<VariantTypeT: VariantTypeProtocol>(data type: VariantTypeT, data: gconstpointer!, size: Int, trusted: Bool, notify: GDestroyNotify?, userData: gpointer! = nil) {
        let rv = g_variant_new_from_data(type.variant_type_ptr, data, gsize(size), gboolean((trusted) ? 1 : 0), notify, userData)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new handle `GVariant` instance.
    /// 
    /// By convention, handles are indexes into an array of file descriptors
    /// that are sent alongside a D-Bus message.  If you're not interacting
    /// with D-Bus, you probably don't need them.
    @inlinable public init(handle value: gint32) {
        let rv = g_variant_new_handle(value)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new int16 `GVariant` instance.
    @inlinable public init(int16 value: gint16) {
        let rv = g_variant_new_int16(value)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new int32 `GVariant` instance.
    @inlinable public init(int32 value: gint32) {
        let rv = g_variant_new_int32(value)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new int64 `GVariant` instance.
    @inlinable public init(int64 value: gint64) {
        let rv = g_variant_new_int64(value)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Depending on if `child` is `nil`, either wraps `child` inside of a
    /// maybe container or creates a Nothing instance for the given `type`.
    /// 
    /// At least one of `child_type` and `child` must be non-`nil`.
    /// If `child_type` is non-`nil` then it must be a definite type.
    /// If they are both non-`nil` then `child_type` must be the type
    /// of `child`.
    /// 
    /// If `child` is a floating reference (see `g_variant_ref_sink()`), the new
    /// instance takes ownership of `child`.
    @inlinable public init<VariantT: VariantProtocol, VariantTypeT: VariantTypeProtocol>(maybe childType: VariantTypeT?, child: VariantT?) {
        let rv = g_variant_new_maybe(childType?.variant_type_ptr, child?.variant_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a D-Bus object path `GVariant` with the contents of `string`.
    /// `string` must be a valid D-Bus object path.  Use
    /// `g_variant_is_object_path()` if you're not sure.
    @inlinable public init(objectPath: UnsafePointer<gchar>!) {
        let rv = g_variant_new_object_path(objectPath)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Constructs an array of object paths `GVariant` from the given array of
    /// strings.
    /// 
    /// Each string must be a valid `GVariant` object path; see
    /// `g_variant_is_object_path()`.
    /// 
    /// If `length` is -1 then `strv` is `nil`-terminated.
    @inlinable public init(objv strv: UnsafePointer<UnsafePointer<gchar>?>!, length: gssize) {
        let rv = g_variant_new_objv(strv, length)
        ptr = UnsafeMutableRawPointer(rv)
    }


    // *** newParsed() is not available because it has a varargs (...) parameter!



    // *** newParsedVa() is currently not available because g_variant_new_parsed_va takes a va_list pointer!



    // *** newPrintf() is not available because it has a varargs (...) parameter!


    /// Creates a D-Bus type signature `GVariant` with the contents of
    /// `string`.  `string` must be a valid D-Bus type signature.  Use
    /// `g_variant_is_signature()` if you're not sure.
    @inlinable public init(signature: UnsafePointer<gchar>!) {
        let rv = g_variant_new_signature(signature)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a string `GVariant` with the contents of `string`.
    /// 
    /// `string` must be valid UTF-8, and must not be `nil`. To encode
    /// potentially-`nil` strings, use `g_variant_new()` with `ms` as the
    /// [format string](#gvariant-format-strings-maybe-types).
    @inlinable public init(string: UnsafePointer<gchar>!) {
        let rv = g_variant_new_string(string)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Constructs an array of strings `GVariant` from the given array of
    /// strings.
    /// 
    /// If `length` is -1 then `strv` is `nil`-terminated.
    @inlinable public init(strv: UnsafePointer<UnsafePointer<gchar>?>!, length: gssize) {
        let rv = g_variant_new_strv(strv, length)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a string `GVariant` with the contents of `string`.
    /// 
    /// `string` must be valid UTF-8, and must not be `nil`. To encode
    /// potentially-`nil` strings, use this with `g_variant_new_maybe()`.
    /// 
    /// This function consumes `string`.  `g_free()` will be called on `string`
    /// when it is no longer required.
    /// 
    /// You must not modify or access `string` in any other way after passing
    /// it to this function.  It is even possible that `string` is immediately
    /// freed.
    @inlinable public init(take_string string: UnsafeMutablePointer<gchar>!) {
        let rv = g_variant_new_take_string(string)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new tuple `GVariant` out of the items in `children`.  The
    /// type is determined from the types of `children`.  No entry in the
    /// `children` array may be `nil`.
    /// 
    /// If `n_children` is 0 then the unit tuple is constructed.
    /// 
    /// If the `children` are floating references (see `g_variant_ref_sink()`), the
    /// new instance takes ownership of them as if via `g_variant_ref_sink()`.
    @inlinable public init(tuple children: UnsafePointer<UnsafeMutablePointer<GVariant>?>!, nChildren: Int) {
        let rv = g_variant_new_tuple(children, gsize(nChildren))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new uint16 `GVariant` instance.
    @inlinable public init(uint16 value: guint16) {
        let rv = g_variant_new_uint16(value)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new uint32 `GVariant` instance.
    @inlinable public init(uint32 value: guint32) {
        let rv = g_variant_new_uint32(value)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new uint64 `GVariant` instance.
    @inlinable public init(uint64 value: guint64) {
        let rv = g_variant_new_uint64(value)
        ptr = UnsafeMutableRawPointer(rv)
    }


    // *** newVa() is currently not available because g_variant_new_va takes a va_list pointer!


    /// Creates a new `GVariant` array from `children`.
    /// 
    /// `child_type` must be non-`nil` if `n_children` is zero.  Otherwise, the
    /// child type is determined by inspecting the first element of the
    /// `children` array.  If `child_type` is non-`nil` then it must be a
    /// definite type.
    /// 
    /// The items of the array are taken from the `children` array.  No entry
    /// in the `children` array may be `nil`.
    /// 
    /// All items in the array must have the same type, which must be the
    /// same as `child_type`, if given.
    /// 
    /// If the `children` are floating references (see `g_variant_ref_sink()`), the
    /// new instance takes ownership of them as if via `g_variant_ref_sink()`.
    @inlinable public static func new<VariantTypeT: VariantTypeProtocol>(array childType: VariantTypeT?, children: UnsafePointer<UnsafeMutablePointer<GVariant>?>! = nil, nChildren: Int) -> Variant! {
        guard let rv = Variant(gconstpointer: gconstpointer(g_variant_new_array(childType?.variant_type_ptr, children, gsize(nChildren)))) else { return nil }
        return rv
    }

    /// Creates a new boolean `GVariant` instance -- either `true` or `false`.
    @inlinable public static func new(boolean value: Bool) -> Variant! {
        guard let rv = Variant(gconstpointer: gconstpointer(g_variant_new_boolean(gboolean((value) ? 1 : 0)))) else { return nil }
        return rv
    }

    /// Creates a new byte `GVariant` instance.
    @inlinable public static func new(byte value: guint8) -> Variant! {
        guard let rv = Variant(gconstpointer: gconstpointer(g_variant_new_byte(value))) else { return nil }
        return rv
    }

    /// Creates an array-of-bytes `GVariant` with the contents of `string`.
    /// This function is just like `g_variant_new_string()` except that the
    /// string need not be valid UTF-8.
    /// 
    /// The nul terminator character at the end of the string is stored in
    /// the array.
    @inlinable public static func newByte(bytestring string: UnsafePointer<gchar>!) -> Variant! {
        guard let rv = Variant(gconstpointer: gconstpointer(g_variant_new_bytestring(string))) else { return nil }
        return rv
    }

    /// Constructs an array of bytestring `GVariant` from the given array of
    /// strings.
    /// 
    /// If `length` is -1 then `strv` is `nil`-terminated.
    @inlinable public static func newBytestringArray(bytestring_array strv: UnsafePointer<UnsafePointer<gchar>?>!, length: gssize) -> Variant! {
        guard let rv = Variant(gconstpointer: gconstpointer(g_variant_new_bytestring_array(strv, length))) else { return nil }
        return rv
    }

    /// Creates a new double `GVariant` instance.
    @inlinable public static func newDouble(CDouble value: Double) -> Variant! {
        guard let rv = Variant(gconstpointer: gconstpointer(g_variant_new_double(gdouble(value)))) else { return nil }
        return rv
    }

    /// Constructs a new array `GVariant` instance, where the elements are
    /// of `element_type` type.
    /// 
    /// `elements` must be an array with fixed-sized elements.  Numeric types are
    /// fixed-size as are tuples containing only other fixed-sized types.
    /// 
    /// `element_size` must be the size of a single element in the array.
    /// For example, if calling this function for an array of 32-bit integers,
    /// you might say `sizeof(gint32)`. This value isn't used except for the purpose
    /// of a double-check that the form of the serialized data matches the caller's
    /// expectation.
    /// 
    /// `n_elements` must be the length of the `elements` array.
    @inlinable public static func newFixedArray<VariantTypeT: VariantTypeProtocol>(fixed_array elementType: VariantTypeT, elements: gconstpointer! = nil, nElements: Int, elementSize: Int) -> Variant! {
        guard let rv = Variant(gconstpointer: gconstpointer(g_variant_new_fixed_array(elementType.variant_type_ptr, elements, gsize(nElements), gsize(elementSize)))) else { return nil }
        return rv
    }

    /// Constructs a new serialized-mode `GVariant` instance.  This is the
    /// inner interface for creation of new serialized values that gets
    /// called from various functions in gvariant.c.
    /// 
    /// A reference is taken on `bytes`.
    /// 
    /// The data in `bytes` must be aligned appropriately for the `type` being loaded.
    /// Otherwise this function will internally create a copy of the memory (since
    /// GLib 2.60) or (in older versions) fail and exit the process.
    @inlinable public static func newFrom<BytesT: BytesProtocol, VariantTypeT: VariantTypeProtocol>(bytes type: VariantTypeT, bytes: BytesT, trusted: Bool) -> Variant! {
        guard let rv = Variant(gconstpointer: gconstpointer(g_variant_new_from_bytes(type.variant_type_ptr, bytes.bytes_ptr, gboolean((trusted) ? 1 : 0)))) else { return nil }
        return rv
    }

    /// Creates a new `GVariant` instance from serialized data.
    /// 
    /// `type` is the type of `GVariant` instance that will be constructed.
    /// The interpretation of `data` depends on knowing the type.
    /// 
    /// `data` is not modified by this function and must remain valid with an
    /// unchanging value until such a time as `notify` is called with
    /// `user_data`.  If the contents of `data` change before that time then
    /// the result is undefined.
    /// 
    /// If `data` is trusted to be serialized data in normal form then
    /// `trusted` should be `true`.  This applies to serialized data created
    /// within this process or read from a trusted location on the disk (such
    /// as a file installed in /usr/lib alongside your application).  You
    /// should set trusted to `false` if `data` is read from the network, a
    /// file in the user's home directory, etc.
    /// 
    /// If `data` was not stored in this machine's native endianness, any multi-byte
    /// numeric values in the returned variant will also be in non-native
    /// endianness. `g_variant_byteswap()` can be used to recover the original values.
    /// 
    /// `notify` will be called with `user_data` when `data` is no longer
    /// needed.  The exact time of this call is unspecified and might even be
    /// before this function returns.
    /// 
    /// Note: `data` must be backed by memory that is aligned appropriately for the
    /// `type` being loaded. Otherwise this function will internally create a copy of
    /// the memory (since GLib 2.60) or (in older versions) fail and exit the
    /// process.
    @inlinable public static func newFrom<VariantTypeT: VariantTypeProtocol>(data type: VariantTypeT, data: gconstpointer!, size: Int, trusted: Bool, notify: GDestroyNotify?, userData: gpointer! = nil) -> Variant! {
        guard let rv = Variant(gconstpointer: gconstpointer(g_variant_new_from_data(type.variant_type_ptr, data, gsize(size), gboolean((trusted) ? 1 : 0), notify, userData))) else { return nil }
        return rv
    }

    /// Creates a new handle `GVariant` instance.
    /// 
    /// By convention, handles are indexes into an array of file descriptors
    /// that are sent alongside a D-Bus message.  If you're not interacting
    /// with D-Bus, you probably don't need them.
    @inlinable public static func new(handle value: gint32) -> Variant! {
        guard let rv = Variant(gconstpointer: gconstpointer(g_variant_new_handle(value))) else { return nil }
        return rv
    }

    /// Creates a new int16 `GVariant` instance.
    @inlinable public static func new(int16 value: gint16) -> Variant! {
        guard let rv = Variant(gconstpointer: gconstpointer(g_variant_new_int16(value))) else { return nil }
        return rv
    }

    /// Creates a new int32 `GVariant` instance.
    @inlinable public static func new(int32 value: gint32) -> Variant! {
        guard let rv = Variant(gconstpointer: gconstpointer(g_variant_new_int32(value))) else { return nil }
        return rv
    }

    /// Creates a new int64 `GVariant` instance.
    @inlinable public static func new(int64 value: gint64) -> Variant! {
        guard let rv = Variant(gconstpointer: gconstpointer(g_variant_new_int64(value))) else { return nil }
        return rv
    }

    /// Depending on if `child` is `nil`, either wraps `child` inside of a
    /// maybe container or creates a Nothing instance for the given `type`.
    /// 
    /// At least one of `child_type` and `child` must be non-`nil`.
    /// If `child_type` is non-`nil` then it must be a definite type.
    /// If they are both non-`nil` then `child_type` must be the type
    /// of `child`.
    /// 
    /// If `child` is a floating reference (see `g_variant_ref_sink()`), the new
    /// instance takes ownership of `child`.
    @inlinable public static func new<VariantT: VariantProtocol, VariantTypeT: VariantTypeProtocol>(maybe childType: VariantTypeT?, child: VariantT?) -> Variant! {
        guard let rv = Variant(gconstpointer: gconstpointer(g_variant_new_maybe(childType?.variant_type_ptr, child?.variant_ptr))) else { return nil }
        return rv
    }

    /// Creates a D-Bus object path `GVariant` with the contents of `string`.
    /// `string` must be a valid D-Bus object path.  Use
    /// `g_variant_is_object_path()` if you're not sure.
    @inlinable public static func new(objectPath: UnsafePointer<gchar>!) -> Variant! {
        guard let rv = Variant(gconstpointer: gconstpointer(g_variant_new_object_path(objectPath))) else { return nil }
        return rv
    }

    /// Constructs an array of object paths `GVariant` from the given array of
    /// strings.
    /// 
    /// Each string must be a valid `GVariant` object path; see
    /// `g_variant_is_object_path()`.
    /// 
    /// If `length` is -1 then `strv` is `nil`-terminated.
    @inlinable public static func new(objv strv: UnsafePointer<UnsafePointer<gchar>?>!, length: gssize) -> Variant! {
        guard let rv = Variant(gconstpointer: gconstpointer(g_variant_new_objv(strv, length))) else { return nil }
        return rv
    }


    // *** newParsed() is not available because it has a varargs (...) parameter!



    // *** newParsedVa() is currently not available because g_variant_new_parsed_va takes a va_list pointer!



    // *** newPrintf() is not available because it has a varargs (...) parameter!


    /// Creates a D-Bus type signature `GVariant` with the contents of
    /// `string`.  `string` must be a valid D-Bus type signature.  Use
    /// `g_variant_is_signature()` if you're not sure.
    @inlinable public static func new(signature: UnsafePointer<gchar>!) -> Variant! {
        guard let rv = Variant(gconstpointer: gconstpointer(g_variant_new_signature(signature))) else { return nil }
        return rv
    }

    /// Creates a string `GVariant` with the contents of `string`.
    /// 
    /// `string` must be valid UTF-8, and must not be `nil`. To encode
    /// potentially-`nil` strings, use `g_variant_new()` with `ms` as the
    /// [format string](#gvariant-format-strings-maybe-types).
    @inlinable public static func new(string: UnsafePointer<gchar>!) -> Variant! {
        guard let rv = Variant(gconstpointer: gconstpointer(g_variant_new_string(string))) else { return nil }
        return rv
    }

    /// Constructs an array of strings `GVariant` from the given array of
    /// strings.
    /// 
    /// If `length` is -1 then `strv` is `nil`-terminated.
    @inlinable public static func new(strv: UnsafePointer<UnsafePointer<gchar>?>!, length: gssize) -> Variant! {
        guard let rv = Variant(gconstpointer: gconstpointer(g_variant_new_strv(strv, length))) else { return nil }
        return rv
    }

    /// Creates a string `GVariant` with the contents of `string`.
    /// 
    /// `string` must be valid UTF-8, and must not be `nil`. To encode
    /// potentially-`nil` strings, use this with `g_variant_new_maybe()`.
    /// 
    /// This function consumes `string`.  `g_free()` will be called on `string`
    /// when it is no longer required.
    /// 
    /// You must not modify or access `string` in any other way after passing
    /// it to this function.  It is even possible that `string` is immediately
    /// freed.
    @inlinable public static func newTake(take_string string: UnsafeMutablePointer<gchar>!) -> Variant! {
        guard let rv = Variant(gconstpointer: gconstpointer(g_variant_new_take_string(string))) else { return nil }
        return rv
    }

    /// Creates a new tuple `GVariant` out of the items in `children`.  The
    /// type is determined from the types of `children`.  No entry in the
    /// `children` array may be `nil`.
    /// 
    /// If `n_children` is 0 then the unit tuple is constructed.
    /// 
    /// If the `children` are floating references (see `g_variant_ref_sink()`), the
    /// new instance takes ownership of them as if via `g_variant_ref_sink()`.
    @inlinable public static func new(tuple children: UnsafePointer<UnsafeMutablePointer<GVariant>?>!, nChildren: Int) -> Variant! {
        guard let rv = Variant(gconstpointer: gconstpointer(g_variant_new_tuple(children, gsize(nChildren)))) else { return nil }
        return rv
    }

    /// Creates a new uint16 `GVariant` instance.
    @inlinable public static func new(uint16 value: guint16) -> Variant! {
        guard let rv = Variant(gconstpointer: gconstpointer(g_variant_new_uint16(value))) else { return nil }
        return rv
    }

    /// Creates a new uint32 `GVariant` instance.
    @inlinable public static func new(uint32 value: guint32) -> Variant! {
        guard let rv = Variant(gconstpointer: gconstpointer(g_variant_new_uint32(value))) else { return nil }
        return rv
    }

    /// Creates a new uint64 `GVariant` instance.
    @inlinable public static func new(uint64 value: guint64) -> Variant! {
        guard let rv = Variant(gconstpointer: gconstpointer(g_variant_new_uint64(value))) else { return nil }
        return rv
    }


    // *** newVa() is currently not available because g_variant_new_va takes a va_list pointer!


    /// Parses a `GVariant` from a text representation.
    /// 
    /// A single `GVariant` is parsed from the content of `text`.
    /// 
    /// The format is described [here](#gvariant-text).
    /// 
    /// The memory at `limit` will never be accessed and the parser behaves as
    /// if the character at `limit` is the nul terminator.  This has the
    /// effect of bounding `text`.
    /// 
    /// If `endptr` is non-`nil` then `text` is permitted to contain data
    /// following the value that this function parses and `endptr` will be
    /// updated to point to the first character past the end of the text
    /// parsed by this function.  If `endptr` is `nil` and there is extra data
    /// then an error is returned.
    /// 
    /// If `type` is non-`nil` then the value will be parsed to have that
    /// type.  This may result in additional parse errors (in the case that
    /// the parsed value doesn't fit the type) but may also result in fewer
    /// errors (in the case that the type would have been ambiguous, such as
    /// with empty arrays).
    /// 
    /// In the event that the parsing is successful, the resulting `GVariant`
    /// is returned. It is never floating, and must be freed with
    /// `g_variant_unref()`.
    /// 
    /// In case of any error, `nil` will be returned.  If `error` is non-`nil`
    /// then it will be set to reflect the error that occurred.
    /// 
    /// Officially, the language understood by the parser is "any string
    /// produced by `g_variant_print()`".
    /// 
    /// There may be implementation specific restrictions on deeply nested values,
    /// which would result in a `G_VARIANT_PARSE_ERROR_RECURSION` error. `GVariant` is
    /// guaranteed to handle nesting up to at least 64 levels.
    @inlinable public static func parse<VariantTypeT: VariantTypeProtocol>(type: VariantTypeT?, text: UnsafePointer<gchar>!, limit: UnsafePointer<gchar>? = nil, endptr: UnsafeMutablePointer<UnsafePointer<gchar>?>? = nil) throws -> Variant! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = Variant(gconstpointer: gconstpointer(g_variant_parse(type?.variant_type_ptr, text, limit, endptr, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

}

// MARK: no Variant properties

// MARK: no Variant signals

// MARK: Variant has no signals
// MARK: Variant Record: VariantProtocol extension (methods and fields)
public extension VariantProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GVariant` instance.
    @inlinable var variant_ptr: UnsafeMutablePointer<GVariant>! { return ptr?.assumingMemoryBound(to: GVariant.self) }

    /// Performs a byteswapping operation on the contents of `value`.  The
    /// result is that all multi-byte numeric data contained in `value` is
    /// byteswapped.  That includes 16, 32, and 64bit signed and unsigned
    /// integers as well as file handles and double precision floating point
    /// values.
    /// 
    /// This function is an identity mapping on any value that does not
    /// contain multi-byte numeric data.  That include strings, booleans,
    /// bytes and containers containing only these things (recursively).
    /// 
    /// The returned value is always in normal form and is marked as trusted.
    @inlinable func byteswap() -> VariantRef! {
        guard let rv = VariantRef(gconstpointer: gconstpointer(g_variant_byteswap(variant_ptr))) else { return nil }
        return rv
    }

    /// Checks if calling `g_variant_get()` with `format_string` on `value` would
    /// be valid from a type-compatibility standpoint.  `format_string` is
    /// assumed to be a valid format string (from a syntactic standpoint).
    /// 
    /// If `copy_only` is `true` then this function additionally checks that it
    /// would be safe to call `g_variant_unref()` on `value` immediately after
    /// the call to `g_variant_get()` without invalidating the result.  This is
    /// only possible if deep copies are made (ie: there are no pointers to
    /// the data inside of the soon-to-be-freed `GVariant` instance).  If this
    /// check fails then a `g_critical()` is printed and `false` is returned.
    /// 
    /// This function is meant to be used by functions that wish to provide
    /// varargs accessors to `GVariant` values of uncertain values (eg:
    /// `g_variant_lookup()` or `g_menu_model_get_item_attribute()`).
    @inlinable func check(formatString: UnsafePointer<gchar>!, copyOnly: Bool) -> Bool {
        let rv = ((g_variant_check_format_string(variant_ptr, formatString, gboolean((copyOnly) ? 1 : 0))) != 0)
        return rv
    }

    /// Classifies `value` according to its top-level type.
    @inlinable func classify() -> GVariantClass {
        let rv = g_variant_classify(variant_ptr)
        return rv
    }

    /// Compares `one` and `two`.
    /// 
    /// The types of `one` and `two` are `gconstpointer` only to allow use of
    /// this function with `GTree`, `GPtrArray`, etc.  They must each be a
    /// `GVariant`.
    /// 
    /// Comparison is only defined for basic types (ie: booleans, numbers,
    /// strings).  For booleans, `false` is less than `true`.  Numbers are
    /// ordered in the usual way.  Strings are in ASCII lexographical order.
    /// 
    /// It is a programmer error to attempt to compare container values or
    /// two values that have types that are not exactly equal.  For example,
    /// you cannot compare a 32-bit signed integer with a 32-bit unsigned
    /// integer.  Also note that this function is not particularly
    /// well-behaved when it comes to comparison of doubles; in particular,
    /// the handling of incomparable values (ie: NaN) is undefined.
    /// 
    /// If you only require an equality comparison, `g_variant_equal()` is more
    /// general.
    @inlinable func compare<VariantT: VariantProtocol>(two: VariantT) -> Int {
        let rv = Int(g_variant_compare(variant_ptr, two.variant_ptr))
        return rv
    }

    /// Similar to `g_variant_get_bytestring()` except that instead of
    /// returning a constant string, the string is duplicated.
    /// 
    /// The return value must be freed using `g_free()`.
    @inlinable func dupBytestring(length: UnsafeMutablePointer<gsize>! = nil) -> String! {
        let rv = g_variant_dup_bytestring(variant_ptr, length).map({ String(cString: $0) })
        return rv
    }

    /// Gets the contents of an array of array of bytes `GVariant`.  This call
    /// makes a deep copy; the return result should be released with
    /// `g_strfreev()`.
    /// 
    /// If `length` is non-`nil` then the number of elements in the result is
    /// stored there.  In any case, the resulting array will be
    /// `nil`-terminated.
    /// 
    /// For an empty array, `length` will be set to 0 and a pointer to a
    /// `nil` pointer will be returned.
    @inlinable func dupBytestringArray(length: UnsafeMutablePointer<gsize>! = nil) -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        let rv = g_variant_dup_bytestring_array(variant_ptr, length)
        return rv
    }

    /// Gets the contents of an array of object paths `GVariant`.  This call
    /// makes a deep copy; the return result should be released with
    /// `g_strfreev()`.
    /// 
    /// If `length` is non-`nil` then the number of elements in the result
    /// is stored there.  In any case, the resulting array will be
    /// `nil`-terminated.
    /// 
    /// For an empty array, `length` will be set to 0 and a pointer to a
    /// `nil` pointer will be returned.
    @inlinable func dupObjv(length: UnsafeMutablePointer<gsize>! = nil) -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        let rv = g_variant_dup_objv(variant_ptr, length)
        return rv
    }

    /// Similar to `g_variant_get_string()` except that instead of returning
    /// a constant string, the string is duplicated.
    /// 
    /// The string will always be UTF-8 encoded.
    /// 
    /// The return value must be freed using `g_free()`.
    @inlinable func dupString(length: UnsafeMutablePointer<gsize>!) -> String! {
        let rv = g_variant_dup_string(variant_ptr, length).map({ String(cString: $0) })
        return rv
    }

    /// Gets the contents of an array of strings `GVariant`.  This call
    /// makes a deep copy; the return result should be released with
    /// `g_strfreev()`.
    /// 
    /// If `length` is non-`nil` then the number of elements in the result
    /// is stored there.  In any case, the resulting array will be
    /// `nil`-terminated.
    /// 
    /// For an empty array, `length` will be set to 0 and a pointer to a
    /// `nil` pointer will be returned.
    @inlinable func dupStrv(length: UnsafeMutablePointer<gsize>! = nil) -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        let rv = g_variant_dup_strv(variant_ptr, length)
        return rv
    }

    /// Checks if `one` and `two` have the same type and value.
    /// 
    /// The types of `one` and `two` are `gconstpointer` only to allow use of
    /// this function with `GHashTable`.  They must each be a `GVariant`.
    @inlinable func equal<VariantT: VariantProtocol>(two: VariantT) -> Bool {
        let rv = ((g_variant_equal(variant_ptr, two.variant_ptr)) != 0)
        return rv
    }


    // *** get() is not available because it has a varargs (...) parameter!


    /// Returns the boolean value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_BOOLEAN`.
    @inlinable func getBoolean() -> Bool {
        let rv = ((g_variant_get_boolean(variant_ptr)) != 0)
        return rv
    }

    /// Returns the byte value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_BYTE`.
    @inlinable func getByte() -> guint8 {
        let rv = g_variant_get_byte(variant_ptr)
        return rv
    }

    /// Returns the string value of a `GVariant` instance with an
    /// array-of-bytes type.  The string has no particular encoding.
    /// 
    /// If the array does not end with a nul terminator character, the empty
    /// string is returned.  For this reason, you can always trust that a
    /// non-`nil` nul-terminated string will be returned by this function.
    /// 
    /// If the array contains a nul terminator character somewhere other than
    /// the last byte then the returned string is the string, up to the first
    /// such nul character.
    /// 
    /// `g_variant_get_fixed_array()` should be used instead if the array contains
    /// arbitrary data that could not be nul-terminated or could contain nul bytes.
    /// 
    /// It is an error to call this function with a `value` that is not an
    /// array of bytes.
    /// 
    /// The return value remains valid as long as `value` exists.
    @inlinable func getBytestring() -> String! {
        let rv = g_variant_get_bytestring(variant_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the contents of an array of array of bytes `GVariant`.  This call
    /// makes a shallow copy; the return result should be released with
    /// `g_free()`, but the individual strings must not be modified.
    /// 
    /// If `length` is non-`nil` then the number of elements in the result is
    /// stored there.  In any case, the resulting array will be
    /// `nil`-terminated.
    /// 
    /// For an empty array, `length` will be set to 0 and a pointer to a
    /// `nil` pointer will be returned.
    @inlinable func getBytestringArray(length: UnsafeMutablePointer<gsize>! = nil) -> UnsafeMutablePointer<UnsafePointer<gchar>?>! {
        let rv = g_variant_get_bytestring_array(variant_ptr, length)
        return rv
    }


    // *** getChild() is not available because it has a varargs (...) parameter!


    /// Reads a child item out of a container `GVariant` instance.  This
    /// includes variants, maybes, arrays, tuples and dictionary
    /// entries.  It is an error to call this function on any other type of
    /// `GVariant`.
    /// 
    /// It is an error if `index_` is greater than the number of child items
    /// in the container.  See `g_variant_n_children()`.
    /// 
    /// The returned value is never floating.  You should free it with
    /// `g_variant_unref()` when you're done with it.
    /// 
    /// Note that values borrowed from the returned child are not guaranteed to
    /// still be valid after the child is freed even if you still hold a reference
    /// to `value`, if `value` has not been serialized at the time this function is
    /// called. To avoid this, you can serialize `value` by calling
    /// `g_variant_get_data()` and optionally ignoring the return value.
    /// 
    /// There may be implementation specific restrictions on deeply nested values,
    /// which would result in the unit tuple being returned as the child value,
    /// instead of further nested children. `GVariant` is guaranteed to handle
    /// nesting up to at least 64 levels.
    /// 
    /// This function is `O(1)`.
    @inlinable func getChildValue(index: Int) -> VariantRef! {
        guard let rv = VariantRef(gconstpointer: gconstpointer(g_variant_get_child_value(variant_ptr, gsize(index)))) else { return nil }
        return rv
    }

    /// Returns a pointer to the serialized form of a `GVariant` instance.
    /// The returned data may not be in fully-normalised form if read from an
    /// untrusted source.  The returned data must not be freed; it remains
    /// valid for as long as `value` exists.
    /// 
    /// If `value` is a fixed-sized value that was deserialized from a
    /// corrupted serialized container then `nil` may be returned.  In this
    /// case, the proper thing to do is typically to use the appropriate
    /// number of nul bytes in place of `value`.  If `value` is not fixed-sized
    /// then `nil` is never returned.
    /// 
    /// In the case that `value` is already in serialized form, this function
    /// is `O(1)`.  If the value is not already in serialized form,
    /// serialization occurs implicitly and is approximately `O(n)` in the size
    /// of the result.
    /// 
    /// To deserialize the data returned by this function, in addition to the
    /// serialized data, you must know the type of the `GVariant`, and (if the
    /// machine might be different) the endianness of the machine that stored
    /// it. As a result, file formats or network messages that incorporate
    /// serialized `GVariants` must include this information either
    /// implicitly (for instance "the file always contains a
    /// `G_VARIANT_TYPE_VARIANT` and it is always in little-endian order") or
    /// explicitly (by storing the type and/or endianness in addition to the
    /// serialized data).
    @inlinable func getData() -> gconstpointer! {
        let rv = g_variant_get_data(variant_ptr)
        return rv
    }

    /// Returns a pointer to the serialized form of a `GVariant` instance.
    /// The semantics of this function are exactly the same as
    /// `g_variant_get_data()`, except that the returned `GBytes` holds
    /// a reference to the variant data.
    @inlinable func getDataAsBytes() -> BytesRef! {
        let rv = BytesRef(gconstpointer: gconstpointer(g_variant_get_data_as_bytes(variant_ptr)))
        return rv
    }

    /// Returns the double precision floating point value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_DOUBLE`.
    @inlinable func getDouble() -> Double {
        let rv = Double(g_variant_get_double(variant_ptr))
        return rv
    }

    /// Provides access to the serialized data for an array of fixed-sized
    /// items.
    /// 
    /// `value` must be an array with fixed-sized elements.  Numeric types are
    /// fixed-size, as are tuples containing only other fixed-sized types.
    /// 
    /// `element_size` must be the size of a single element in the array,
    /// as given by the section on
    /// [serialized data memory](#gvariant-serialized-data-memory).
    /// 
    /// In particular, arrays of these fixed-sized types can be interpreted
    /// as an array of the given C type, with `element_size` set to the size
    /// the appropriate type:
    /// - `G_VARIANT_TYPE_INT16` (etc.): `gint16` (etc.)
    /// - `G_VARIANT_TYPE_BOOLEAN:` `guchar` (not `gboolean`!)
    /// - `G_VARIANT_TYPE_BYTE:` `guint8`
    /// - `G_VARIANT_TYPE_HANDLE:` `guint32`
    /// - `G_VARIANT_TYPE_DOUBLE:` `gdouble`
    /// 
    /// For example, if calling this function for an array of 32-bit integers,
    /// you might say ``sizeof(gint32)``. This value isn't used except for the purpose
    /// of a double-check that the form of the serialized data matches the caller's
    /// expectation.
    /// 
    /// `n_elements`, which must be non-`nil`, is set equal to the number of
    /// items in the array.
    @inlinable func getFixedArray(nElements: UnsafeMutablePointer<gsize>!, elementSize: Int) -> gconstpointer! {
        let rv = gconstpointer?(g_variant_get_fixed_array(variant_ptr, nElements, gsize(elementSize)))
        return rv
    }

    /// Returns the 32-bit signed integer value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type other
    /// than `G_VARIANT_TYPE_HANDLE`.
    /// 
    /// By convention, handles are indexes into an array of file descriptors
    /// that are sent alongside a D-Bus message.  If you're not interacting
    /// with D-Bus, you probably don't need them.
    @inlinable func getHandle() -> gint32 {
        let rv = g_variant_get_handle(variant_ptr)
        return rv
    }

    /// Returns the 16-bit signed integer value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_INT16`.
    @inlinable func getInt16() -> gint16 {
        let rv = g_variant_get_int16(variant_ptr)
        return rv
    }

    /// Returns the 32-bit signed integer value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_INT32`.
    @inlinable func getInt32() -> gint32 {
        let rv = g_variant_get_int32(variant_ptr)
        return rv
    }

    /// Returns the 64-bit signed integer value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_INT64`.
    @inlinable func getInt64() -> gint64 {
        let rv = g_variant_get_int64(variant_ptr)
        return rv
    }

    /// Given a maybe-typed `GVariant` instance, extract its value.  If the
    /// value is Nothing, then this function returns `nil`.
    @inlinable func getMaybe() -> VariantRef! {
        guard let rv = VariantRef(gconstpointer: gconstpointer(g_variant_get_maybe(variant_ptr))) else { return nil }
        return rv
    }

    /// Gets a `GVariant` instance that has the same value as `value` and is
    /// trusted to be in normal form.
    /// 
    /// If `value` is already trusted to be in normal form then a new
    /// reference to `value` is returned.
    /// 
    /// If `value` is not already trusted, then it is scanned to check if it
    /// is in normal form.  If it is found to be in normal form then it is
    /// marked as trusted and a new reference to it is returned.
    /// 
    /// If `value` is found not to be in normal form then a new trusted
    /// `GVariant` is created with the same value as `value`.
    /// 
    /// It makes sense to call this function if you've received `GVariant`
    /// data from untrusted sources and you want to ensure your serialized
    /// output is definitely in normal form.
    /// 
    /// If `value` is already in normal form, a new reference will be returned
    /// (which will be floating if `value` is floating). If it is not in normal form,
    /// the newly created `GVariant` will be returned with a single non-floating
    /// reference. Typically, `g_variant_take_ref()` should be called on the return
    /// value from this function to guarantee ownership of a single non-floating
    /// reference to it.
    @inlinable func getNormalForm() -> VariantRef! {
        guard let rv = VariantRef(gconstpointer: gconstpointer(g_variant_get_normal_form(variant_ptr))) else { return nil }
        return rv
    }

    /// Gets the contents of an array of object paths `GVariant`.  This call
    /// makes a shallow copy; the return result should be released with
    /// `g_free()`, but the individual strings must not be modified.
    /// 
    /// If `length` is non-`nil` then the number of elements in the result
    /// is stored there.  In any case, the resulting array will be
    /// `nil`-terminated.
    /// 
    /// For an empty array, `length` will be set to 0 and a pointer to a
    /// `nil` pointer will be returned.
    @inlinable func getObjv(length: UnsafeMutablePointer<gsize>! = nil) -> UnsafeMutablePointer<UnsafePointer<gchar>?>! {
        let rv = g_variant_get_objv(variant_ptr, length)
        return rv
    }

    /// Determines the number of bytes that would be required to store `value`
    /// with `g_variant_store()`.
    /// 
    /// If `value` has a fixed-sized type then this function always returned
    /// that fixed size.
    /// 
    /// In the case that `value` is already in serialized form or the size has
    /// already been calculated (ie: this function has been called before)
    /// then this function is `O(1)`.  Otherwise, the size is calculated, an
    /// operation which is approximately `O(n)` in the number of values
    /// involved.
    @inlinable func getSize() -> Int {
        let rv = Int(g_variant_get_size(variant_ptr))
        return rv
    }

    /// Returns the string value of a `GVariant` instance with a string
    /// type.  This includes the types `G_VARIANT_TYPE_STRING`,
    /// `G_VARIANT_TYPE_OBJECT_PATH` and `G_VARIANT_TYPE_SIGNATURE`.
    /// 
    /// The string will always be UTF-8 encoded, will never be `nil`, and will never
    /// contain nul bytes.
    /// 
    /// If `length` is non-`nil` then the length of the string (in bytes) is
    /// returned there.  For trusted values, this information is already
    /// known.  Untrusted values will be validated and, if valid, a `strlen()` will be
    /// performed. If invalid, a default value will be returned — for
    /// `G_VARIANT_TYPE_OBJECT_PATH`, this is `"/"`, and for other types it is the
    /// empty string.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than those three.
    /// 
    /// The return value remains valid as long as `value` exists.
    @inlinable func getString(length: UnsafeMutablePointer<gsize>! = nil) -> String! {
        let rv = g_variant_get_string(variant_ptr, length).map({ String(cString: $0) })
        return rv
    }

    /// Gets the contents of an array of strings `GVariant`.  This call
    /// makes a shallow copy; the return result should be released with
    /// `g_free()`, but the individual strings must not be modified.
    /// 
    /// If `length` is non-`nil` then the number of elements in the result
    /// is stored there.  In any case, the resulting array will be
    /// `nil`-terminated.
    /// 
    /// For an empty array, `length` will be set to 0 and a pointer to a
    /// `nil` pointer will be returned.
    @inlinable func getStrv(length: UnsafeMutablePointer<gsize>! = nil) -> UnsafeMutablePointer<UnsafePointer<gchar>?>! {
        let rv = g_variant_get_strv(variant_ptr, length)
        return rv
    }

    /// Determines the type of `value`.
    /// 
    /// The return value is valid for the lifetime of `value` and must not
    /// be freed.
    @inlinable func getType() -> VariantTypeRef! {
        let rv = VariantTypeRef(gconstpointer: gconstpointer(g_variant_get_type(variant_ptr)))
        return rv
    }

    /// Returns the type string of `value`.  Unlike the result of calling
    /// `g_variant_type_peek_string()`, this string is nul-terminated.  This
    /// string belongs to `GVariant` and must not be freed.
    @inlinable func getTypeString() -> String! {
        let rv = g_variant_get_type_string(variant_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns the 16-bit unsigned integer value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_UINT16`.
    @inlinable func getUint16() -> guint16 {
        let rv = g_variant_get_uint16(variant_ptr)
        return rv
    }

    /// Returns the 32-bit unsigned integer value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_UINT32`.
    @inlinable func getUint32() -> guint32 {
        let rv = g_variant_get_uint32(variant_ptr)
        return rv
    }

    /// Returns the 64-bit unsigned integer value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_UINT64`.
    @inlinable func getUint64() -> guint64 {
        let rv = g_variant_get_uint64(variant_ptr)
        return rv
    }

    /// This function is intended to be used by libraries based on `GVariant`
    /// that want to provide `g_variant_get()`-like functionality to their
    /// users.
    /// 
    /// The API is more general than `g_variant_get()` to allow a wider range
    /// of possible uses.
    /// 
    /// `format_string` must still point to a valid format string, but it only
    /// need to be nul-terminated if `endptr` is `nil`.  If `endptr` is
    /// non-`nil` then it is updated to point to the first character past the
    /// end of the format string.
    /// 
    /// `app` is a pointer to a `va_list`.  The arguments, according to
    /// `format_string`, are collected from this `va_list` and the list is left
    /// pointing to the argument following the last.
    /// 
    /// These two generalisations allow mixing of multiple calls to
    /// `g_variant_new_va()` and `g_variant_get_va()` within a single actual
    /// varargs call by the user.
    /// 
    /// `format_string` determines the C types that are used for unpacking
    /// the values and also determines if the values are copied or borrowed,
    /// see the section on
    /// [GVariant format strings](#gvariant-format-strings-pointers).
#if !os(Linux) && !arch(arm64)
    @inlinable func getVa(formatString: UnsafePointer<gchar>!, endptr: UnsafeMutablePointer<UnsafePointer<gchar>?>? = nil, app: UnsafeMutablePointer<va_list>!) {
        g_variant_get_va(variant_ptr, formatString, endptr, app)
    
    }
#endif

    /// Unboxes `value`.  The result is the `GVariant` instance that was
    /// contained in `value`.
    @inlinable func getVariant() -> VariantRef! {
        guard let rv = VariantRef(gconstpointer: gconstpointer(g_variant_get_variant(variant_ptr))) else { return nil }
        return rv
    }

    /// Generates a hash value for a `GVariant` instance.
    /// 
    /// The output of this function is guaranteed to be the same for a given
    /// value only per-process.  It may change between different processor
    /// architectures or even different versions of GLib.  Do not use this
    /// function as a basis for building protocols or file formats.
    /// 
    /// The type of `value` is `gconstpointer` only to allow use of this
    /// function with `GHashTable`.  `value` must be a `GVariant`.
    @inlinable func hash() -> Int {
        let rv = Int(g_variant_hash(variant_ptr))
        return rv
    }

    /// Checks if a value has a type matching the provided type.
    @inlinable func isOf<VariantTypeT: VariantTypeProtocol>(type: VariantTypeT) -> Bool {
        let rv = ((g_variant_is_of_type(variant_ptr, type.variant_type_ptr)) != 0)
        return rv
    }

    /// Creates a heap-allocated `GVariantIter` for iterating over the items
    /// in `value`.
    /// 
    /// Use `g_variant_iter_free()` to free the return value when you no longer
    /// need it.
    /// 
    /// A reference is taken to `value` and will be released only when
    /// `g_variant_iter_free()` is called.
    @inlinable func iterNew() -> VariantIterRef! {
        let rv = VariantIterRef(gconstpointer: gconstpointer(g_variant_iter_new(variant_ptr)))
        return rv
    }


    // *** lookup() is not available because it has a varargs (...) parameter!


    /// Looks up a value in a dictionary `GVariant`.
    /// 
    /// This function works with dictionaries of the type a{s*} (and equally
    /// well with type a{o*}, but we only further discuss the string case
    /// for sake of clarity).
    /// 
    /// In the event that `dictionary` has the type a{sv}, the `expected_type`
    /// string specifies what type of value is expected to be inside of the
    /// variant. If the value inside the variant has a different type then
    /// `nil` is returned. In the event that `dictionary` has a value type other
    /// than v then `expected_type` must directly match the value type and it is
    /// used to unpack the value directly or an error occurs.
    /// 
    /// In either case, if `key` is not found in `dictionary`, `nil` is returned.
    /// 
    /// If the key is found and the value has the correct type, it is
    /// returned.  If `expected_type` was specified then any non-`nil` return
    /// value will have this type.
    /// 
    /// This function is currently implemented with a linear scan.  If you
    /// plan to do many lookups then `GVariantDict` may be more efficient.
    @inlinable func lookupValue(key: UnsafePointer<gchar>!, expectedType: VariantTypeRef? = nil) -> VariantRef! {
        guard let rv = VariantRef(gconstpointer: gconstpointer(g_variant_lookup_value(variant_ptr, key, expectedType?.variant_type_ptr))) else { return nil }
        return rv
    }
    /// Looks up a value in a dictionary `GVariant`.
    /// 
    /// This function works with dictionaries of the type a{s*} (and equally
    /// well with type a{o*}, but we only further discuss the string case
    /// for sake of clarity).
    /// 
    /// In the event that `dictionary` has the type a{sv}, the `expected_type`
    /// string specifies what type of value is expected to be inside of the
    /// variant. If the value inside the variant has a different type then
    /// `nil` is returned. In the event that `dictionary` has a value type other
    /// than v then `expected_type` must directly match the value type and it is
    /// used to unpack the value directly or an error occurs.
    /// 
    /// In either case, if `key` is not found in `dictionary`, `nil` is returned.
    /// 
    /// If the key is found and the value has the correct type, it is
    /// returned.  If `expected_type` was specified then any non-`nil` return
    /// value will have this type.
    /// 
    /// This function is currently implemented with a linear scan.  If you
    /// plan to do many lookups then `GVariantDict` may be more efficient.
    @inlinable func lookupValue<VariantTypeT: VariantTypeProtocol>(key: UnsafePointer<gchar>!, expectedType: VariantTypeT?) -> VariantRef! {
        guard let rv = VariantRef(gconstpointer: gconstpointer(g_variant_lookup_value(variant_ptr, key, expectedType?.variant_type_ptr))) else { return nil }
        return rv
    }

    /// Determines the number of children in a container `GVariant` instance.
    /// This includes variants, maybes, arrays, tuples and dictionary
    /// entries.  It is an error to call this function on any other type of
    /// `GVariant`.
    /// 
    /// For variants, the return value is always 1.  For values with maybe
    /// types, it is always zero or one.  For arrays, it is the length of the
    /// array.  For tuples it is the number of tuple items (which depends
    /// only on the type).  For dictionary entries, it is always 2
    /// 
    /// This function is `O(1)`.
    @inlinable func nChildren() -> Int {
        let rv = Int(g_variant_n_children(variant_ptr))
        return rv
    }

    /// Pretty-prints `value` in the format understood by `g_variant_parse()`.
    /// 
    /// The format is described [here](#gvariant-text).
    /// 
    /// If `type_annotate` is `true`, then type information is included in
    /// the output.
    @inlinable func print(typeAnnotate: Bool) -> String! {
        let rv = g_variant_print(variant_ptr, gboolean((typeAnnotate) ? 1 : 0)).map({ String(cString: $0) })
        return rv
    }

    /// Behaves as `g_variant_print()`, but operates on a `GString`.
    /// 
    /// If `string` is non-`nil` then it is appended to and returned.  Else,
    /// a new empty `GString` is allocated and it is returned.
    @inlinable func print(string: StringRef? = nil, typeAnnotate: Bool) -> StringRef! {
        let rv = StringRef(gconstpointer: gconstpointer(g_variant_print_string(variant_ptr, string?.gstring_ptr, gboolean((typeAnnotate) ? 1 : 0))))
        return rv
    }
    /// Behaves as `g_variant_print()`, but operates on a `GString`.
    /// 
    /// If `string` is non-`nil` then it is appended to and returned.  Else,
    /// a new empty `GString` is allocated and it is returned.
    @inlinable func print<StringTypeT: StringProtocol>(string: StringTypeT?, typeAnnotate: Bool) -> StringRef! {
        let rv = StringRef(gconstpointer: gconstpointer(g_variant_print_string(variant_ptr, string?.gstring_ptr, gboolean((typeAnnotate) ? 1 : 0))))
        return rv
    }

    /// Increases the reference count of `value`.
    @discardableResult @inlinable func ref() -> VariantRef! {
        guard let rv = VariantRef(gconstpointer: gconstpointer(g_variant_ref(variant_ptr))) else { return nil }
        return rv
    }

    /// `GVariant` uses a floating reference count system.  All functions with
    /// names starting with `g_variant_new_` return floating
    /// references.
    /// 
    /// Calling `g_variant_ref_sink()` on a `GVariant` with a floating reference
    /// will convert the floating reference into a full reference.  Calling
    /// `g_variant_ref_sink()` on a non-floating `GVariant` results in an
    /// additional normal reference being added.
    /// 
    /// In other words, if the `value` is floating, then this call "assumes
    /// ownership" of the floating reference, converting it to a normal
    /// reference.  If the `value` is not floating, then this call adds a
    /// new normal reference increasing the reference count by one.
    /// 
    /// All calls that result in a `GVariant` instance being inserted into a
    /// container will call `g_variant_ref_sink()` on the instance.  This means
    /// that if the value was just created (and has only its floating
    /// reference) then the container will assume sole ownership of the value
    /// at that point and the caller will not need to unreference it.  This
    /// makes certain common styles of programming much easier while still
    /// maintaining normal refcounting semantics in situations where values
    /// are not floating.
    @inlinable func refSink() -> VariantRef! {
        guard let rv = VariantRef(gconstpointer: gconstpointer(g_variant_ref_sink(variant_ptr))) else { return nil }
        return rv
    }

    /// Stores the serialized form of `value` at `data`.  `data` should be
    /// large enough.  See `g_variant_get_size()`.
    /// 
    /// The stored data is in machine native byte order but may not be in
    /// fully-normalised form if read from an untrusted source.  See
    /// `g_variant_get_normal_form()` for a solution.
    /// 
    /// As with `g_variant_get_data()`, to be able to deserialize the
    /// serialized variant successfully, its type and (if the destination
    /// machine might be different) its endianness must also be available.
    /// 
    /// This function is approximately `O(n)` in the size of `data`.
    @inlinable func store(data: gpointer!) {
        g_variant_store(variant_ptr, data)
    
    }

    /// If `value` is floating, sink it.  Otherwise, do nothing.
    /// 
    /// Typically you want to use `g_variant_ref_sink()` in order to
    /// automatically do the correct thing with respect to floating or
    /// non-floating references, but there is one specific scenario where
    /// this function is helpful.
    /// 
    /// The situation where this function is helpful is when creating an API
    /// that allows the user to provide a callback function that returns a
    /// `GVariant`.  We certainly want to allow the user the flexibility to
    /// return a non-floating reference from this callback (for the case
    /// where the value that is being returned already exists).
    /// 
    /// At the same time, the style of the `GVariant` API makes it likely that
    /// for newly-created `GVariant` instances, the user can be saved some
    /// typing if they are allowed to return a `GVariant` with a floating
    /// reference.
    /// 
    /// Using this function on the return value of the user's callback allows
    /// the user to do whichever is more convenient for them.  The caller
    /// will always receives exactly one full reference to the value: either
    /// the one that was returned in the first place, or a floating reference
    /// that has been converted to a full reference.
    /// 
    /// This function has an odd interaction when combined with
    /// `g_variant_ref_sink()` running at the same time in another thread on
    /// the same `GVariant` instance.  If `g_variant_ref_sink()` runs first then
    /// the result will be that the floating reference is converted to a hard
    /// reference.  If `g_variant_take_ref()` runs first then the result will
    /// be that the floating reference is converted to a hard reference and
    /// an additional reference on top of that one is added.  It is best to
    /// avoid this situation.
    @inlinable func takeRef() -> VariantRef! {
        guard let rv = VariantRef(gconstpointer: gconstpointer(g_variant_take_ref(variant_ptr))) else { return nil }
        return rv
    }

    /// Decreases the reference count of `value`.  When its reference count
    /// drops to 0, the memory used by the variant is freed.
    @inlinable func unref() {
        g_variant_unref(variant_ptr)
    
    }

    /// Log a message with structured data, accepting the data within a `GVariant`. This
    /// version is especially useful for use in other languages, via introspection.
    /// 
    /// The only mandatory item in the `fields` dictionary is the "MESSAGE" which must
    /// contain the text shown to the user.
    /// 
    /// The values in the `fields` dictionary are likely to be of type String
    /// (`G_VARIANT_TYPE_STRING`). Array of bytes (`G_VARIANT_TYPE_BYTESTRING`) is also
    /// supported. In this case the message is handled as binary and will be forwarded
    /// to the log writer as such. The size of the array should not be higher than
    /// `G_MAXSSIZE`. Otherwise it will be truncated to this size. For other types
    /// `g_variant_print()` will be used to convert the value into a string.
    /// 
    /// For more details on its usage and about the parameters, see `g_log_structured()`.
    @inlinable func logVariant(logDomain: UnsafePointer<gchar>? = nil, logLevel: LogLevelFlags) {
        g_log_variant(logDomain, logLevel.value, variant_ptr)
    
    }
    /// Returns the boolean value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_BOOLEAN`.
    @inlinable var boolean: Bool {
        /// Returns the boolean value of `value`.
        /// 
        /// It is an error to call this function with a `value` of any type
        /// other than `G_VARIANT_TYPE_BOOLEAN`.
        get {
            let rv = ((g_variant_get_boolean(variant_ptr)) != 0)
            return rv
        }
    }

    /// Returns the byte value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_BYTE`.
    @inlinable var byte: guint8 {
        /// Returns the byte value of `value`.
        /// 
        /// It is an error to call this function with a `value` of any type
        /// other than `G_VARIANT_TYPE_BYTE`.
        get {
            let rv = g_variant_get_byte(variant_ptr)
            return rv
        }
    }

    /// Returns the string value of a `GVariant` instance with an
    /// array-of-bytes type.  The string has no particular encoding.
    /// 
    /// If the array does not end with a nul terminator character, the empty
    /// string is returned.  For this reason, you can always trust that a
    /// non-`nil` nul-terminated string will be returned by this function.
    /// 
    /// If the array contains a nul terminator character somewhere other than
    /// the last byte then the returned string is the string, up to the first
    /// such nul character.
    /// 
    /// `g_variant_get_fixed_array()` should be used instead if the array contains
    /// arbitrary data that could not be nul-terminated or could contain nul bytes.
    /// 
    /// It is an error to call this function with a `value` that is not an
    /// array of bytes.
    /// 
    /// The return value remains valid as long as `value` exists.
    @inlinable var bytestring: String! {
        /// Returns the string value of a `GVariant` instance with an
        /// array-of-bytes type.  The string has no particular encoding.
        /// 
        /// If the array does not end with a nul terminator character, the empty
        /// string is returned.  For this reason, you can always trust that a
        /// non-`nil` nul-terminated string will be returned by this function.
        /// 
        /// If the array contains a nul terminator character somewhere other than
        /// the last byte then the returned string is the string, up to the first
        /// such nul character.
        /// 
        /// `g_variant_get_fixed_array()` should be used instead if the array contains
        /// arbitrary data that could not be nul-terminated or could contain nul bytes.
        /// 
        /// It is an error to call this function with a `value` that is not an
        /// array of bytes.
        /// 
        /// The return value remains valid as long as `value` exists.
        get {
            let rv = g_variant_get_bytestring(variant_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Returns a pointer to the serialized form of a `GVariant` instance.
    /// The returned data may not be in fully-normalised form if read from an
    /// untrusted source.  The returned data must not be freed; it remains
    /// valid for as long as `value` exists.
    /// 
    /// If `value` is a fixed-sized value that was deserialized from a
    /// corrupted serialized container then `nil` may be returned.  In this
    /// case, the proper thing to do is typically to use the appropriate
    /// number of nul bytes in place of `value`.  If `value` is not fixed-sized
    /// then `nil` is never returned.
    /// 
    /// In the case that `value` is already in serialized form, this function
    /// is `O(1)`.  If the value is not already in serialized form,
    /// serialization occurs implicitly and is approximately `O(n)` in the size
    /// of the result.
    /// 
    /// To deserialize the data returned by this function, in addition to the
    /// serialized data, you must know the type of the `GVariant`, and (if the
    /// machine might be different) the endianness of the machine that stored
    /// it. As a result, file formats or network messages that incorporate
    /// serialized `GVariants` must include this information either
    /// implicitly (for instance "the file always contains a
    /// `G_VARIANT_TYPE_VARIANT` and it is always in little-endian order") or
    /// explicitly (by storing the type and/or endianness in addition to the
    /// serialized data).
    @inlinable var data: gconstpointer! {
        /// Returns a pointer to the serialized form of a `GVariant` instance.
        /// The returned data may not be in fully-normalised form if read from an
        /// untrusted source.  The returned data must not be freed; it remains
        /// valid for as long as `value` exists.
        /// 
        /// If `value` is a fixed-sized value that was deserialized from a
        /// corrupted serialized container then `nil` may be returned.  In this
        /// case, the proper thing to do is typically to use the appropriate
        /// number of nul bytes in place of `value`.  If `value` is not fixed-sized
        /// then `nil` is never returned.
        /// 
        /// In the case that `value` is already in serialized form, this function
        /// is `O(1)`.  If the value is not already in serialized form,
        /// serialization occurs implicitly and is approximately `O(n)` in the size
        /// of the result.
        /// 
        /// To deserialize the data returned by this function, in addition to the
        /// serialized data, you must know the type of the `GVariant`, and (if the
        /// machine might be different) the endianness of the machine that stored
        /// it. As a result, file formats or network messages that incorporate
        /// serialized `GVariants` must include this information either
        /// implicitly (for instance "the file always contains a
        /// `G_VARIANT_TYPE_VARIANT` and it is always in little-endian order") or
        /// explicitly (by storing the type and/or endianness in addition to the
        /// serialized data).
        get {
            let rv = g_variant_get_data(variant_ptr)
            return rv
        }
    }

    /// Returns a pointer to the serialized form of a `GVariant` instance.
    /// The semantics of this function are exactly the same as
    /// `g_variant_get_data()`, except that the returned `GBytes` holds
    /// a reference to the variant data.
    @inlinable var dataAsBytes: BytesRef! {
        /// Returns a pointer to the serialized form of a `GVariant` instance.
        /// The semantics of this function are exactly the same as
        /// `g_variant_get_data()`, except that the returned `GBytes` holds
        /// a reference to the variant data.
        get {
            let rv = BytesRef(gconstpointer: gconstpointer(g_variant_get_data_as_bytes(variant_ptr)))
            return rv
        }
    }

    /// Returns the double precision floating point value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_DOUBLE`.
    @inlinable var double: Double {
        /// Returns the double precision floating point value of `value`.
        /// 
        /// It is an error to call this function with a `value` of any type
        /// other than `G_VARIANT_TYPE_DOUBLE`.
        get {
            let rv = Double(g_variant_get_double(variant_ptr))
            return rv
        }
    }

    /// Returns the 32-bit signed integer value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type other
    /// than `G_VARIANT_TYPE_HANDLE`.
    /// 
    /// By convention, handles are indexes into an array of file descriptors
    /// that are sent alongside a D-Bus message.  If you're not interacting
    /// with D-Bus, you probably don't need them.
    @inlinable var handle: gint32 {
        /// Returns the 32-bit signed integer value of `value`.
        /// 
        /// It is an error to call this function with a `value` of any type other
        /// than `G_VARIANT_TYPE_HANDLE`.
        /// 
        /// By convention, handles are indexes into an array of file descriptors
        /// that are sent alongside a D-Bus message.  If you're not interacting
        /// with D-Bus, you probably don't need them.
        get {
            let rv = g_variant_get_handle(variant_ptr)
            return rv
        }
    }

    /// Returns the 16-bit signed integer value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_INT16`.
    @inlinable var int16: gint16 {
        /// Returns the 16-bit signed integer value of `value`.
        /// 
        /// It is an error to call this function with a `value` of any type
        /// other than `G_VARIANT_TYPE_INT16`.
        get {
            let rv = g_variant_get_int16(variant_ptr)
            return rv
        }
    }

    /// Returns the 32-bit signed integer value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_INT32`.
    @inlinable var int32: gint32 {
        /// Returns the 32-bit signed integer value of `value`.
        /// 
        /// It is an error to call this function with a `value` of any type
        /// other than `G_VARIANT_TYPE_INT32`.
        get {
            let rv = g_variant_get_int32(variant_ptr)
            return rv
        }
    }

    /// Returns the 64-bit signed integer value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_INT64`.
    @inlinable var int64: gint64 {
        /// Returns the 64-bit signed integer value of `value`.
        /// 
        /// It is an error to call this function with a `value` of any type
        /// other than `G_VARIANT_TYPE_INT64`.
        get {
            let rv = g_variant_get_int64(variant_ptr)
            return rv
        }
    }

    /// Checks if `value` is a container.
    @inlinable var isContainer: Bool {
        /// Checks if `value` is a container.
        get {
            let rv = ((g_variant_is_container(variant_ptr)) != 0)
            return rv
        }
    }

    /// Checks whether `value` has a floating reference count.
    /// 
    /// This function should only ever be used to assert that a given variant
    /// is or is not floating, or for debug purposes. To acquire a reference
    /// to a variant that might be floating, always use `g_variant_ref_sink()`
    /// or `g_variant_take_ref()`.
    /// 
    /// See `g_variant_ref_sink()` for more information about floating reference
    /// counts.
    @inlinable var isFloating: Bool {
        /// Checks whether `value` has a floating reference count.
        /// 
        /// This function should only ever be used to assert that a given variant
        /// is or is not floating, or for debug purposes. To acquire a reference
        /// to a variant that might be floating, always use `g_variant_ref_sink()`
        /// or `g_variant_take_ref()`.
        /// 
        /// See `g_variant_ref_sink()` for more information about floating reference
        /// counts.
        get {
            let rv = ((g_variant_is_floating(variant_ptr)) != 0)
            return rv
        }
    }

    /// Checks if `value` is in normal form.
    /// 
    /// The main reason to do this is to detect if a given chunk of
    /// serialized data is in normal form: load the data into a `GVariant`
    /// using `g_variant_new_from_data()` and then use this function to
    /// check.
    /// 
    /// If `value` is found to be in normal form then it will be marked as
    /// being trusted.  If the value was already marked as being trusted then
    /// this function will immediately return `true`.
    /// 
    /// There may be implementation specific restrictions on deeply nested values.
    /// GVariant is guaranteed to handle nesting up to at least 64 levels.
    @inlinable var isNormalForm: Bool {
        /// Checks if `value` is in normal form.
        /// 
        /// The main reason to do this is to detect if a given chunk of
        /// serialized data is in normal form: load the data into a `GVariant`
        /// using `g_variant_new_from_data()` and then use this function to
        /// check.
        /// 
        /// If `value` is found to be in normal form then it will be marked as
        /// being trusted.  If the value was already marked as being trusted then
        /// this function will immediately return `true`.
        /// 
        /// There may be implementation specific restrictions on deeply nested values.
        /// GVariant is guaranteed to handle nesting up to at least 64 levels.
        get {
            let rv = ((g_variant_is_normal_form(variant_ptr)) != 0)
            return rv
        }
    }

    /// Given a maybe-typed `GVariant` instance, extract its value.  If the
    /// value is Nothing, then this function returns `nil`.
    @inlinable var maybe: VariantRef! {
        /// Given a maybe-typed `GVariant` instance, extract its value.  If the
        /// value is Nothing, then this function returns `nil`.
        get {
            guard let rv = VariantRef(gconstpointer: gconstpointer(g_variant_get_maybe(variant_ptr))) else { return nil }
            return rv
        }
    }

    /// Gets a `GVariant` instance that has the same value as `value` and is
    /// trusted to be in normal form.
    /// 
    /// If `value` is already trusted to be in normal form then a new
    /// reference to `value` is returned.
    /// 
    /// If `value` is not already trusted, then it is scanned to check if it
    /// is in normal form.  If it is found to be in normal form then it is
    /// marked as trusted and a new reference to it is returned.
    /// 
    /// If `value` is found not to be in normal form then a new trusted
    /// `GVariant` is created with the same value as `value`.
    /// 
    /// It makes sense to call this function if you've received `GVariant`
    /// data from untrusted sources and you want to ensure your serialized
    /// output is definitely in normal form.
    /// 
    /// If `value` is already in normal form, a new reference will be returned
    /// (which will be floating if `value` is floating). If it is not in normal form,
    /// the newly created `GVariant` will be returned with a single non-floating
    /// reference. Typically, `g_variant_take_ref()` should be called on the return
    /// value from this function to guarantee ownership of a single non-floating
    /// reference to it.
    @inlinable var normalForm: VariantRef! {
        /// Gets a `GVariant` instance that has the same value as `value` and is
        /// trusted to be in normal form.
        /// 
        /// If `value` is already trusted to be in normal form then a new
        /// reference to `value` is returned.
        /// 
        /// If `value` is not already trusted, then it is scanned to check if it
        /// is in normal form.  If it is found to be in normal form then it is
        /// marked as trusted and a new reference to it is returned.
        /// 
        /// If `value` is found not to be in normal form then a new trusted
        /// `GVariant` is created with the same value as `value`.
        /// 
        /// It makes sense to call this function if you've received `GVariant`
        /// data from untrusted sources and you want to ensure your serialized
        /// output is definitely in normal form.
        /// 
        /// If `value` is already in normal form, a new reference will be returned
        /// (which will be floating if `value` is floating). If it is not in normal form,
        /// the newly created `GVariant` will be returned with a single non-floating
        /// reference. Typically, `g_variant_take_ref()` should be called on the return
        /// value from this function to guarantee ownership of a single non-floating
        /// reference to it.
        get {
            guard let rv = VariantRef(gconstpointer: gconstpointer(g_variant_get_normal_form(variant_ptr))) else { return nil }
            return rv
        }
    }

    /// Determines the number of bytes that would be required to store `value`
    /// with `g_variant_store()`.
    /// 
    /// If `value` has a fixed-sized type then this function always returned
    /// that fixed size.
    /// 
    /// In the case that `value` is already in serialized form or the size has
    /// already been calculated (ie: this function has been called before)
    /// then this function is `O(1)`.  Otherwise, the size is calculated, an
    /// operation which is approximately `O(n)` in the number of values
    /// involved.
    @inlinable var size: Int {
        /// Determines the number of bytes that would be required to store `value`
        /// with `g_variant_store()`.
        /// 
        /// If `value` has a fixed-sized type then this function always returned
        /// that fixed size.
        /// 
        /// In the case that `value` is already in serialized form or the size has
        /// already been calculated (ie: this function has been called before)
        /// then this function is `O(1)`.  Otherwise, the size is calculated, an
        /// operation which is approximately `O(n)` in the number of values
        /// involved.
        get {
            let rv = Int(g_variant_get_size(variant_ptr))
            return rv
        }
    }

    /// Determines the type of `value`.
    /// 
    /// The return value is valid for the lifetime of `value` and must not
    /// be freed.
    @inlinable var type: VariantTypeRef! {
        /// Determines the type of `value`.
        /// 
        /// The return value is valid for the lifetime of `value` and must not
        /// be freed.
        get {
            let rv = VariantTypeRef(gconstpointer: gconstpointer(g_variant_get_type(variant_ptr)))
            return rv
        }
    }

    /// Returns the type string of `value`.  Unlike the result of calling
    /// `g_variant_type_peek_string()`, this string is nul-terminated.  This
    /// string belongs to `GVariant` and must not be freed.
    @inlinable var typeString: String! {
        /// Returns the type string of `value`.  Unlike the result of calling
        /// `g_variant_type_peek_string()`, this string is nul-terminated.  This
        /// string belongs to `GVariant` and must not be freed.
        get {
            let rv = g_variant_get_type_string(variant_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Returns the 16-bit unsigned integer value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_UINT16`.
    @inlinable var uint16: guint16 {
        /// Returns the 16-bit unsigned integer value of `value`.
        /// 
        /// It is an error to call this function with a `value` of any type
        /// other than `G_VARIANT_TYPE_UINT16`.
        get {
            let rv = g_variant_get_uint16(variant_ptr)
            return rv
        }
    }

    /// Returns the 32-bit unsigned integer value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_UINT32`.
    @inlinable var uint32: guint32 {
        /// Returns the 32-bit unsigned integer value of `value`.
        /// 
        /// It is an error to call this function with a `value` of any type
        /// other than `G_VARIANT_TYPE_UINT32`.
        get {
            let rv = g_variant_get_uint32(variant_ptr)
            return rv
        }
    }

    /// Returns the 64-bit unsigned integer value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_UINT64`.
    @inlinable var uint64: guint64 {
        /// Returns the 64-bit unsigned integer value of `value`.
        /// 
        /// It is an error to call this function with a `value` of any type
        /// other than `G_VARIANT_TYPE_UINT64`.
        get {
            let rv = g_variant_get_uint64(variant_ptr)
            return rv
        }
    }

    /// Unboxes `value`.  The result is the `GVariant` instance that was
    /// contained in `value`.
    @inlinable var variant: VariantRef! {
        /// Unboxes `value`.  The result is the `GVariant` instance that was
        /// contained in `value`.
        get {
            guard let rv = VariantRef(gconstpointer: gconstpointer(g_variant_get_variant(variant_ptr))) else { return nil }
            return rv
        }
    }


}



