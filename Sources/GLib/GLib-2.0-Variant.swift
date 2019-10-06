import CGLib

// MARK: - Variant Record

/// The `VariantProtocol` protocol exposes the methods and properties of an underlying `GVariant` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Variant`.
/// Alternatively, use `VariantRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GVariant` is a variant datatype; it can contain one or more values
/// along with information about the type of the values.
/// 
/// A `GVariant` may contain simple types, like an integer, or a boolean value;
/// or complex types, like an array of two strings, or a dictionary of key
/// value pairs. A `GVariant` is also immutable: once it's been created neither
/// its type nor its content can be modified further.
/// 
/// GVariant is useful whenever data needs to be serialized, for example when
/// sending method parameters in DBus, or when saving settings using GSettings.
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
/// `GVariant` is heavily optimised for dealing with data in serialised
/// form.  It works particularly well with data located in memory-mapped
/// files.  It can perform nearly all deserialisation operations in a
/// small constant time, usually touching only a single memory page.
/// Serialised `GVariant` data can also be sent over the network.
/// 
/// `GVariant` is largely compatible with D-Bus.  Almost all types of
/// `GVariant` instances can be sent over D-Bus.  See `GVariantType` for
/// exceptions.  (However, `GVariant`'s serialisation format is not the same
/// as the serialisation format of a D-Bus message body: use `GDBusMessage`,
/// in the gio library, for those.)
/// 
/// For space-efficiency, the `GVariant` serialisation format does not
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
/// purposes: memory for serialised data, memory for the type
/// information cache, buffer management memory and memory for the
/// `GVariant` structure itself.
/// 
/// ## Serialised Data Memory
/// 
/// This is the memory that is used for storing GVariant data in
/// serialised form.  This is what would be sent over the network or
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
/// the serialisation.
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
/// type information structure is required for rapid deserialisation.
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
/// with the various different possible sources of serialised data
/// that it uses.  The buffer is responsible for ensuring that the
/// correct call is made when the data is no longer in use by
/// `GVariant`.  This may involve a `g_free()` or a `g_slice_free()` or
/// even `g_mapped_file_unref()`.
/// 
/// One buffer management structure is used for each chunk of
/// serialised data.  The size of the buffer management structure
/// is 4 * (void *).  On 32-bit systems, that's 16 bytes.
/// 
/// ## GVariant structure
/// 
/// The size of a `GVariant` structure is 6 * (void *).  On 32-bit
/// systems, that's 24 bytes.
/// 
/// `GVariant` structures only exist if they are explicitly created
/// with API calls.  For example, if a `GVariant` is constructed out of
/// serialised data for the example given above (with the dictionary)
/// then although there are 9 individual values that comprise the
/// entire dictionary (two keys, two values, two variants containing
/// the values, two dictionary entries, plus the dictionary itself),
/// only 1 `GVariant` instance exists -- the one referring to the
/// dictionary.
/// 
/// If calls are made to start accessing the other values then
/// `GVariant` instances will exist for those values only for as long
/// as they are in use (ie: until you call `g_variant_unref()`).  The
/// type information is shared.  The serialised data and the buffer
/// management structure for that serialised data is shared by the
/// child.
/// 
/// ## Summary
/// 
/// To put the entire example together, for our dictionary mapping
/// strings to variants (with two entries, as given above), we are
/// using 91 bytes of memory for type information, 29 bytes of memory
/// for the serialised data, 16 bytes for buffer management and 24
/// bytes for the `GVariant` instance, or a total of 160 bytes, plus
/// malloc overhead.  If we were to use `g_variant_get_child_value()` to
/// access the two dictionary entries, we would use an additional 48
/// bytes.  If we were to have other dictionaries of the same type, we
/// would use more memory for the serialised data and buffer
/// management for those dictionaries, but the type information would
/// be shared.
public protocol VariantProtocol {
    /// Untyped pointer to the underlying `GVariant` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GVariant` instance.
    var variant_ptr: UnsafeMutablePointer<GVariant> { get }
}

/// The `VariantRef` type acts as a lightweight Swift reference to an underlying `GVariant` instance.
/// It exposes methods that can operate on this data type through `VariantProtocol` conformance.
/// Use `VariantRef` only as an `unowned` reference to an existing `GVariant` instance.
///
/// `GVariant` is a variant datatype; it can contain one or more values
/// along with information about the type of the values.
/// 
/// A `GVariant` may contain simple types, like an integer, or a boolean value;
/// or complex types, like an array of two strings, or a dictionary of key
/// value pairs. A `GVariant` is also immutable: once it's been created neither
/// its type nor its content can be modified further.
/// 
/// GVariant is useful whenever data needs to be serialized, for example when
/// sending method parameters in DBus, or when saving settings using GSettings.
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
/// `GVariant` is heavily optimised for dealing with data in serialised
/// form.  It works particularly well with data located in memory-mapped
/// files.  It can perform nearly all deserialisation operations in a
/// small constant time, usually touching only a single memory page.
/// Serialised `GVariant` data can also be sent over the network.
/// 
/// `GVariant` is largely compatible with D-Bus.  Almost all types of
/// `GVariant` instances can be sent over D-Bus.  See `GVariantType` for
/// exceptions.  (However, `GVariant`'s serialisation format is not the same
/// as the serialisation format of a D-Bus message body: use `GDBusMessage`,
/// in the gio library, for those.)
/// 
/// For space-efficiency, the `GVariant` serialisation format does not
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
/// purposes: memory for serialised data, memory for the type
/// information cache, buffer management memory and memory for the
/// `GVariant` structure itself.
/// 
/// ## Serialised Data Memory
/// 
/// This is the memory that is used for storing GVariant data in
/// serialised form.  This is what would be sent over the network or
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
/// the serialisation.
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
/// type information structure is required for rapid deserialisation.
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
/// with the various different possible sources of serialised data
/// that it uses.  The buffer is responsible for ensuring that the
/// correct call is made when the data is no longer in use by
/// `GVariant`.  This may involve a `g_free()` or a `g_slice_free()` or
/// even `g_mapped_file_unref()`.
/// 
/// One buffer management structure is used for each chunk of
/// serialised data.  The size of the buffer management structure
/// is 4 * (void *).  On 32-bit systems, that's 16 bytes.
/// 
/// ## GVariant structure
/// 
/// The size of a `GVariant` structure is 6 * (void *).  On 32-bit
/// systems, that's 24 bytes.
/// 
/// `GVariant` structures only exist if they are explicitly created
/// with API calls.  For example, if a `GVariant` is constructed out of
/// serialised data for the example given above (with the dictionary)
/// then although there are 9 individual values that comprise the
/// entire dictionary (two keys, two values, two variants containing
/// the values, two dictionary entries, plus the dictionary itself),
/// only 1 `GVariant` instance exists -- the one referring to the
/// dictionary.
/// 
/// If calls are made to start accessing the other values then
/// `GVariant` instances will exist for those values only for as long
/// as they are in use (ie: until you call `g_variant_unref()`).  The
/// type information is shared.  The serialised data and the buffer
/// management structure for that serialised data is shared by the
/// child.
/// 
/// ## Summary
/// 
/// To put the entire example together, for our dictionary mapping
/// strings to variants (with two entries, as given above), we are
/// using 91 bytes of memory for type information, 29 bytes of memory
/// for the serialised data, 16 bytes for buffer management and 24
/// bytes for the `GVariant` instance, or a total of 160 bytes, plus
/// malloc overhead.  If we were to use `g_variant_get_child_value()` to
/// access the two dictionary entries, we would use an additional 48
/// bytes.  If we were to have other dictionaries of the same type, we
/// would use more memory for the serialised data and buffer
/// management for those dictionaries, but the type information would
/// be shared.
public struct VariantRef: VariantProtocol {
    /// Untyped pointer to the underlying `GVariant` instance.
    /// For type-safe access, use the generated, typed pointer `variant_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension VariantRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GVariant>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `VariantProtocol`
    init<T: VariantProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    init(array child_type: VariantTypeProtocol, children: UnsafePointer<UnsafePointer<GVariant>>, nChildren n_children: Int) {
        let rv = g_variant_new_array(cast(child_type.ptr), cast(children), gsize(n_children))
        self.init(cast(rv))
    }

    /// Creates a new boolean `GVariant` instance -- either `true` or `false`.
    init(boolean value: Bool) {
        let rv = g_variant_new_boolean(gboolean(value ? 1 : 0))
        self.init(cast(rv))
    }

    /// Creates a new byte `GVariant` instance.
    init(byte value: UInt8) {
        let rv = g_variant_new_byte(guint8(value))
        self.init(cast(rv))
    }

    /// Creates an array-of-bytes `GVariant` with the contents of `string`.
    /// This function is just like `g_variant_new_string()` except that the
    /// string need not be valid UTF-8.
    /// 
    /// The nul terminator character at the end of the string is stored in
    /// the array.
    init(bytestring string: UnsafePointer<gchar>) {
        let rv = g_variant_new_bytestring(cast(string))
        self.init(cast(rv))
    }

    /// Constructs an array of bytestring `GVariant` from the given array of
    /// strings.
    /// 
    /// If `length` is -1 then `strv` is `nil`-terminated.
    init(bytestring_array strv: UnsafePointer<UnsafePointer<gchar>>, length: gssize) {
        let rv = g_variant_new_bytestring_array(cast(strv), length)
        self.init(cast(rv))
    }

    /// Creates a new double `GVariant` instance.
    init(CDouble value: gdouble) {
        let rv = g_variant_new_double(value)
        self.init(cast(rv))
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
    /// of a double-check that the form of the serialised data matches the caller's
    /// expectation.
    /// 
    /// `n_elements` must be the length of the `elements` array.
    init(fixed_array element_type: VariantTypeProtocol, elements: gconstpointer, nElements n_elements: Int, elementSize element_size: Int) {
        let rv = g_variant_new_fixed_array(cast(element_type.ptr), cast(elements), gsize(n_elements), gsize(element_size))
        self.init(cast(rv))
    }

    /// Constructs a new serialised-mode `GVariant` instance.  This is the
    /// inner interface for creation of new serialised values that gets
    /// called from various functions in gvariant.c.
    /// 
    /// A reference is taken on `bytes`.
    /// 
    /// The data in `bytes` must be aligned appropriately for the `type` being loaded.
    /// Otherwise this function will internally create a copy of the memory (since
    /// GLib 2.60) or (in older versions) fail and exit the process.
    init(bytes type: VariantTypeProtocol, bytes: BytesProtocol, trusted: Bool) {
        let rv = g_variant_new_from_bytes(cast(type.ptr), cast(bytes.ptr), gboolean(trusted ? 1 : 0))
        self.init(cast(rv))
    }

    /// Creates a new `GVariant` instance from serialised data.
    /// 
    /// `type` is the type of `GVariant` instance that will be constructed.
    /// The interpretation of `data` depends on knowing the type.
    /// 
    /// `data` is not modified by this function and must remain valid with an
    /// unchanging value until such a time as `notify` is called with
    /// `user_data`.  If the contents of `data` change before that time then
    /// the result is undefined.
    /// 
    /// If `data` is trusted to be serialised data in normal form then
    /// `trusted` should be `true`.  This applies to serialised data created
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
    init(data type: VariantTypeProtocol, data: gconstpointer, size: Int, trusted: Bool, notify: @escaping DestroyNotify, userData user_data: UnsafeMutableRawPointer) {
        let rv = g_variant_new_from_data(cast(type.ptr), cast(data), gsize(size), gboolean(trusted ? 1 : 0), notify, cast(user_data))
        self.init(cast(rv))
    }

    /// Creates a new handle `GVariant` instance.
    /// 
    /// By convention, handles are indexes into an array of file descriptors
    /// that are sent alongside a D-Bus message.  If you're not interacting
    /// with D-Bus, you probably don't need them.
    init(handle value: Int32) {
        let rv = g_variant_new_handle(gint32(value))
        self.init(cast(rv))
    }

    /// Creates a new int16 `GVariant` instance.
    init(int16 value: Int16) {
        let rv = g_variant_new_int16(gint16(value))
        self.init(cast(rv))
    }

    /// Creates a new int32 `GVariant` instance.
    init(int32 value: Int32) {
        let rv = g_variant_new_int32(gint32(value))
        self.init(cast(rv))
    }

    /// Creates a new int64 `GVariant` instance.
    init(int64 value: Int64) {
        let rv = g_variant_new_int64(gint64(value))
        self.init(cast(rv))
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
    init(maybe child_type: VariantTypeProtocol, child: VariantProtocol) {
        let rv = g_variant_new_maybe(cast(child_type.ptr), cast(child.ptr))
        self.init(cast(rv))
    }

    /// Creates a D-Bus object path `GVariant` with the contents of `string`.
    /// `string` must be a valid D-Bus object path.  Use
    /// `g_variant_is_object_path()` if you're not sure.
    init(objectPath object_path: UnsafePointer<gchar>) {
        let rv = g_variant_new_object_path(object_path)
        self.init(cast(rv))
    }

    /// Constructs an array of object paths `GVariant` from the given array of
    /// strings.
    /// 
    /// Each string must be a valid `GVariant` object path; see
    /// `g_variant_is_object_path()`.
    /// 
    /// If `length` is -1 then `strv` is `nil`-terminated.
    init(objv strv: UnsafePointer<UnsafePointer<gchar>>, length: gssize) {
        let rv = g_variant_new_objv(cast(strv), length)
        self.init(cast(rv))
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
    init(parsed_va format: UnsafePointer<gchar>, app: UnsafeMutablePointer<CVaListPointer>) {
        let rv = g_variant_new_parsed_va(format, cast(app))
        self.init(cast(rv))
    }


    // *** newPrintf() is not available because it has a varargs (...) parameter!


    /// Creates a D-Bus type signature `GVariant` with the contents of
    /// `string`.  `string` must be a valid D-Bus type signature.  Use
    /// `g_variant_is_signature()` if you're not sure.
    init(signature: UnsafePointer<gchar>) {
        let rv = g_variant_new_signature(signature)
        self.init(cast(rv))
    }

    /// Creates a string `GVariant` with the contents of `string`.
    /// 
    /// `string` must be valid UTF-8, and must not be `nil`. To encode
    /// potentially-`nil` strings, use `g_variant_new()` with `ms` as the
    /// [format string](#gvariant-format-strings-maybe-types).
    init(string: UnsafePointer<gchar>) {
        let rv = g_variant_new_string(string)
        self.init(cast(rv))
    }

    /// Constructs an array of strings `GVariant` from the given array of
    /// strings.
    /// 
    /// If `length` is -1 then `strv` is `nil`-terminated.
    init(strv: UnsafePointer<UnsafePointer<gchar>>, length: gssize) {
        let rv = g_variant_new_strv(cast(strv), length)
        self.init(cast(rv))
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
    init(take_string string: UnsafeMutablePointer<gchar>) {
        let rv = g_variant_new_take_string(string)
        self.init(cast(rv))
    }

    /// Creates a new tuple `GVariant` out of the items in `children`.  The
    /// type is determined from the types of `children`.  No entry in the
    /// `children` array may be `nil`.
    /// 
    /// If `n_children` is 0 then the unit tuple is constructed.
    /// 
    /// If the `children` are floating references (see `g_variant_ref_sink()`), the
    /// new instance takes ownership of them as if via `g_variant_ref_sink()`.
    init(tuple children: UnsafePointer<UnsafePointer<GVariant>>, nChildren n_children: Int) {
        let rv = g_variant_new_tuple(cast(children), gsize(n_children))
        self.init(cast(rv))
    }

    /// Creates a new uint16 `GVariant` instance.
    init(uint16 value: UInt16) {
        let rv = g_variant_new_uint16(guint16(value))
        self.init(cast(rv))
    }

    /// Creates a new uint32 `GVariant` instance.
    init(uint32 value: UInt32) {
        let rv = g_variant_new_uint32(guint32(value))
        self.init(cast(rv))
    }

    /// Creates a new uint64 `GVariant` instance.
    init(uint64 value: UInt64) {
        let rv = g_variant_new_uint64(guint64(value))
        self.init(cast(rv))
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
    init(va format_string: UnsafePointer<gchar>, endptr: UnsafePointer<UnsafePointer<gchar>>, app: UnsafeMutablePointer<CVaListPointer>) {
        let rv = g_variant_new_va(format_string, cast(endptr), cast(app))
        self.init(cast(rv))
    }
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
    static func new(array child_type: VariantTypeProtocol, children: UnsafePointer<UnsafePointer<GVariant>>, nChildren n_children: Int) -> VariantRef! {
        let rv = g_variant_new_array(cast(child_type.ptr), cast(children), gsize(n_children))
        return rv.map { VariantRef(cast($0)) }
    }

    /// Creates a new boolean `GVariant` instance -- either `true` or `false`.
    static func new(boolean value: Bool) -> VariantRef! {
        let rv = g_variant_new_boolean(gboolean(value ? 1 : 0))
        return rv.map { VariantRef(cast($0)) }
    }

    /// Creates a new byte `GVariant` instance.
    static func new(byte value: UInt8) -> VariantRef! {
        let rv = g_variant_new_byte(guint8(value))
        return rv.map { VariantRef(cast($0)) }
    }

    /// Creates an array-of-bytes `GVariant` with the contents of `string`.
    /// This function is just like `g_variant_new_string()` except that the
    /// string need not be valid UTF-8.
    /// 
    /// The nul terminator character at the end of the string is stored in
    /// the array.
    static func newByte(bytestring string: UnsafePointer<gchar>) -> VariantRef! {
        let rv = g_variant_new_bytestring(cast(string))
        return rv.map { VariantRef(cast($0)) }
    }

    /// Constructs an array of bytestring `GVariant` from the given array of
    /// strings.
    /// 
    /// If `length` is -1 then `strv` is `nil`-terminated.
    static func newBytestringArray(bytestring_array strv: UnsafePointer<UnsafePointer<gchar>>, length: gssize) -> VariantRef! {
        let rv = g_variant_new_bytestring_array(cast(strv), length)
        return rv.map { VariantRef(cast($0)) }
    }

    /// Creates a new double `GVariant` instance.
    static func newDouble(CDouble value: gdouble) -> VariantRef! {
        let rv = g_variant_new_double(value)
        return rv.map { VariantRef(cast($0)) }
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
    /// of a double-check that the form of the serialised data matches the caller's
    /// expectation.
    /// 
    /// `n_elements` must be the length of the `elements` array.
    static func newFixedArray(fixed_array element_type: VariantTypeProtocol, elements: gconstpointer, nElements n_elements: Int, elementSize element_size: Int) -> VariantRef! {
        let rv = g_variant_new_fixed_array(cast(element_type.ptr), cast(elements), gsize(n_elements), gsize(element_size))
        return rv.map { VariantRef(cast($0)) }
    }

    /// Constructs a new serialised-mode `GVariant` instance.  This is the
    /// inner interface for creation of new serialised values that gets
    /// called from various functions in gvariant.c.
    /// 
    /// A reference is taken on `bytes`.
    /// 
    /// The data in `bytes` must be aligned appropriately for the `type` being loaded.
    /// Otherwise this function will internally create a copy of the memory (since
    /// GLib 2.60) or (in older versions) fail and exit the process.
    static func newFrom(bytes type: VariantTypeProtocol, bytes: BytesProtocol, trusted: Bool) -> VariantRef! {
        let rv = g_variant_new_from_bytes(cast(type.ptr), cast(bytes.ptr), gboolean(trusted ? 1 : 0))
        return rv.map { VariantRef(cast($0)) }
    }

    /// Creates a new `GVariant` instance from serialised data.
    /// 
    /// `type` is the type of `GVariant` instance that will be constructed.
    /// The interpretation of `data` depends on knowing the type.
    /// 
    /// `data` is not modified by this function and must remain valid with an
    /// unchanging value until such a time as `notify` is called with
    /// `user_data`.  If the contents of `data` change before that time then
    /// the result is undefined.
    /// 
    /// If `data` is trusted to be serialised data in normal form then
    /// `trusted` should be `true`.  This applies to serialised data created
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
    static func newFrom(data type: VariantTypeProtocol, data: gconstpointer, size: Int, trusted: Bool, notify: @escaping DestroyNotify, userData user_data: UnsafeMutableRawPointer) -> VariantRef! {
        let rv = g_variant_new_from_data(cast(type.ptr), cast(data), gsize(size), gboolean(trusted ? 1 : 0), notify, cast(user_data))
        return rv.map { VariantRef(cast($0)) }
    }

    /// Creates a new handle `GVariant` instance.
    /// 
    /// By convention, handles are indexes into an array of file descriptors
    /// that are sent alongside a D-Bus message.  If you're not interacting
    /// with D-Bus, you probably don't need them.
    static func new(handle value: Int32) -> VariantRef! {
        let rv = g_variant_new_handle(gint32(value))
        return rv.map { VariantRef(cast($0)) }
    }

    /// Creates a new int16 `GVariant` instance.
    static func new(int16 value: Int16) -> VariantRef! {
        let rv = g_variant_new_int16(gint16(value))
        return rv.map { VariantRef(cast($0)) }
    }

    /// Creates a new int32 `GVariant` instance.
    static func new(int32 value: Int32) -> VariantRef! {
        let rv = g_variant_new_int32(gint32(value))
        return rv.map { VariantRef(cast($0)) }
    }

    /// Creates a new int64 `GVariant` instance.
    static func new(int64 value: Int64) -> VariantRef! {
        let rv = g_variant_new_int64(gint64(value))
        return rv.map { VariantRef(cast($0)) }
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
    static func new(maybe child_type: VariantTypeProtocol, child: VariantProtocol) -> VariantRef! {
        let rv = g_variant_new_maybe(cast(child_type.ptr), cast(child.ptr))
        return rv.map { VariantRef(cast($0)) }
    }

    /// Creates a D-Bus object path `GVariant` with the contents of `string`.
    /// `string` must be a valid D-Bus object path.  Use
    /// `g_variant_is_object_path()` if you're not sure.
    static func new(objectPath object_path: UnsafePointer<gchar>) -> VariantRef! {
        let rv = g_variant_new_object_path(object_path)
        return rv.map { VariantRef(cast($0)) }
    }

    /// Constructs an array of object paths `GVariant` from the given array of
    /// strings.
    /// 
    /// Each string must be a valid `GVariant` object path; see
    /// `g_variant_is_object_path()`.
    /// 
    /// If `length` is -1 then `strv` is `nil`-terminated.
    static func new(objv strv: UnsafePointer<UnsafePointer<gchar>>, length: gssize) -> VariantRef! {
        let rv = g_variant_new_objv(cast(strv), length)
        return rv.map { VariantRef(cast($0)) }
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
    static func newParsedVa(parsed_va format: UnsafePointer<gchar>, app: UnsafeMutablePointer<CVaListPointer>) -> VariantRef! {
        let rv = g_variant_new_parsed_va(format, cast(app))
        return rv.map { VariantRef(cast($0)) }
    }


    // *** newPrintf() is not available because it has a varargs (...) parameter!


    /// Creates a D-Bus type signature `GVariant` with the contents of
    /// `string`.  `string` must be a valid D-Bus type signature.  Use
    /// `g_variant_is_signature()` if you're not sure.
    static func new(signature: UnsafePointer<gchar>) -> VariantRef! {
        let rv = g_variant_new_signature(signature)
        return rv.map { VariantRef(cast($0)) }
    }

    /// Creates a string `GVariant` with the contents of `string`.
    /// 
    /// `string` must be valid UTF-8, and must not be `nil`. To encode
    /// potentially-`nil` strings, use `g_variant_new()` with `ms` as the
    /// [format string](#gvariant-format-strings-maybe-types).
    static func new(string: UnsafePointer<gchar>) -> VariantRef! {
        let rv = g_variant_new_string(string)
        return rv.map { VariantRef(cast($0)) }
    }

    /// Constructs an array of strings `GVariant` from the given array of
    /// strings.
    /// 
    /// If `length` is -1 then `strv` is `nil`-terminated.
    static func new(strv: UnsafePointer<UnsafePointer<gchar>>, length: gssize) -> VariantRef! {
        let rv = g_variant_new_strv(cast(strv), length)
        return rv.map { VariantRef(cast($0)) }
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
    static func newTake(take_string string: UnsafeMutablePointer<gchar>) -> VariantRef! {
        let rv = g_variant_new_take_string(string)
        return rv.map { VariantRef(cast($0)) }
    }

    /// Creates a new tuple `GVariant` out of the items in `children`.  The
    /// type is determined from the types of `children`.  No entry in the
    /// `children` array may be `nil`.
    /// 
    /// If `n_children` is 0 then the unit tuple is constructed.
    /// 
    /// If the `children` are floating references (see `g_variant_ref_sink()`), the
    /// new instance takes ownership of them as if via `g_variant_ref_sink()`.
    static func new(tuple children: UnsafePointer<UnsafePointer<GVariant>>, nChildren n_children: Int) -> VariantRef! {
        let rv = g_variant_new_tuple(cast(children), gsize(n_children))
        return rv.map { VariantRef(cast($0)) }
    }

    /// Creates a new uint16 `GVariant` instance.
    static func new(uint16 value: UInt16) -> VariantRef! {
        let rv = g_variant_new_uint16(guint16(value))
        return rv.map { VariantRef(cast($0)) }
    }

    /// Creates a new uint32 `GVariant` instance.
    static func new(uint32 value: UInt32) -> VariantRef! {
        let rv = g_variant_new_uint32(guint32(value))
        return rv.map { VariantRef(cast($0)) }
    }

    /// Creates a new uint64 `GVariant` instance.
    static func new(uint64 value: UInt64) -> VariantRef! {
        let rv = g_variant_new_uint64(guint64(value))
        return rv.map { VariantRef(cast($0)) }
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
    static func new(va format_string: UnsafePointer<gchar>, endptr: UnsafePointer<UnsafePointer<gchar>>, app: UnsafeMutablePointer<CVaListPointer>) -> VariantRef! {
        let rv = g_variant_new_va(format_string, cast(endptr), cast(app))
        return rv.map { VariantRef(cast($0)) }
    }

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
    static func parse(type: VariantTypeProtocol, text: UnsafePointer<gchar>, limit: UnsafePointer<gchar>, endptr: UnsafePointer<UnsafePointer<gchar>>) throws -> VariantRef! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_variant_parse(cast(type.ptr), text, limit, cast(endptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { VariantRef(cast($0)) }
    }
}

/// The `Variant` type acts as a reference-counted owner of an underlying `GVariant` instance.
/// It provides the methods that can operate on this data type through `VariantProtocol` conformance.
/// Use `Variant` as a strong reference or owner of a `GVariant` instance.
///
/// `GVariant` is a variant datatype; it can contain one or more values
/// along with information about the type of the values.
/// 
/// A `GVariant` may contain simple types, like an integer, or a boolean value;
/// or complex types, like an array of two strings, or a dictionary of key
/// value pairs. A `GVariant` is also immutable: once it's been created neither
/// its type nor its content can be modified further.
/// 
/// GVariant is useful whenever data needs to be serialized, for example when
/// sending method parameters in DBus, or when saving settings using GSettings.
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
/// `GVariant` is heavily optimised for dealing with data in serialised
/// form.  It works particularly well with data located in memory-mapped
/// files.  It can perform nearly all deserialisation operations in a
/// small constant time, usually touching only a single memory page.
/// Serialised `GVariant` data can also be sent over the network.
/// 
/// `GVariant` is largely compatible with D-Bus.  Almost all types of
/// `GVariant` instances can be sent over D-Bus.  See `GVariantType` for
/// exceptions.  (However, `GVariant`'s serialisation format is not the same
/// as the serialisation format of a D-Bus message body: use `GDBusMessage`,
/// in the gio library, for those.)
/// 
/// For space-efficiency, the `GVariant` serialisation format does not
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
/// purposes: memory for serialised data, memory for the type
/// information cache, buffer management memory and memory for the
/// `GVariant` structure itself.
/// 
/// ## Serialised Data Memory
/// 
/// This is the memory that is used for storing GVariant data in
/// serialised form.  This is what would be sent over the network or
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
/// the serialisation.
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
/// type information structure is required for rapid deserialisation.
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
/// with the various different possible sources of serialised data
/// that it uses.  The buffer is responsible for ensuring that the
/// correct call is made when the data is no longer in use by
/// `GVariant`.  This may involve a `g_free()` or a `g_slice_free()` or
/// even `g_mapped_file_unref()`.
/// 
/// One buffer management structure is used for each chunk of
/// serialised data.  The size of the buffer management structure
/// is 4 * (void *).  On 32-bit systems, that's 16 bytes.
/// 
/// ## GVariant structure
/// 
/// The size of a `GVariant` structure is 6 * (void *).  On 32-bit
/// systems, that's 24 bytes.
/// 
/// `GVariant` structures only exist if they are explicitly created
/// with API calls.  For example, if a `GVariant` is constructed out of
/// serialised data for the example given above (with the dictionary)
/// then although there are 9 individual values that comprise the
/// entire dictionary (two keys, two values, two variants containing
/// the values, two dictionary entries, plus the dictionary itself),
/// only 1 `GVariant` instance exists -- the one referring to the
/// dictionary.
/// 
/// If calls are made to start accessing the other values then
/// `GVariant` instances will exist for those values only for as long
/// as they are in use (ie: until you call `g_variant_unref()`).  The
/// type information is shared.  The serialised data and the buffer
/// management structure for that serialised data is shared by the
/// child.
/// 
/// ## Summary
/// 
/// To put the entire example together, for our dictionary mapping
/// strings to variants (with two entries, as given above), we are
/// using 91 bytes of memory for type information, 29 bytes of memory
/// for the serialised data, 16 bytes for buffer management and 24
/// bytes for the `GVariant` instance, or a total of 160 bytes, plus
/// malloc overhead.  If we were to use `g_variant_get_child_value()` to
/// access the two dictionary entries, we would use an additional 48
/// bytes.  If we were to have other dictionaries of the same type, we
/// would use more memory for the serialised data and buffer
/// management for those dictionaries, but the type information would
/// be shared.
open class Variant: VariantProtocol {
    /// Untyped pointer to the underlying `GVariant` instance.
    /// For type-safe access, use the generated, typed pointer `variant_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Variant` instance.
    public init(_ op: UnsafeMutablePointer<GVariant>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `VariantProtocol`
    /// Will retain `GVariant`.
    public convenience init<T: VariantProtocol>(_ other: T) {
        self.init(cast(other.variant_ptr))
        g_variant_ref(cast(variant_ptr))
    }

    /// Releases the underlying `GVariant` instance using `g_variant_unref`.
    deinit {
        g_variant_unref(cast(variant_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GVariant.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GVariant.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GVariant.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GVariant>(opaquePointer))
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
    public convenience init(array child_type: VariantTypeProtocol, children: UnsafePointer<UnsafePointer<GVariant>>, nChildren n_children: Int) {
        let rv = g_variant_new_array(cast(child_type.ptr), cast(children), gsize(n_children))
        self.init(cast(rv))
    }

    /// Creates a new boolean `GVariant` instance -- either `true` or `false`.
    public convenience init(boolean value: Bool) {
        let rv = g_variant_new_boolean(gboolean(value ? 1 : 0))
        self.init(cast(rv))
    }

    /// Creates a new byte `GVariant` instance.
    public convenience init(byte value: UInt8) {
        let rv = g_variant_new_byte(guint8(value))
        self.init(cast(rv))
    }

    /// Creates an array-of-bytes `GVariant` with the contents of `string`.
    /// This function is just like `g_variant_new_string()` except that the
    /// string need not be valid UTF-8.
    /// 
    /// The nul terminator character at the end of the string is stored in
    /// the array.
    public convenience init(bytestring string: UnsafePointer<gchar>) {
        let rv = g_variant_new_bytestring(cast(string))
        self.init(cast(rv))
    }

    /// Constructs an array of bytestring `GVariant` from the given array of
    /// strings.
    /// 
    /// If `length` is -1 then `strv` is `nil`-terminated.
    public convenience init(bytestring_array strv: UnsafePointer<UnsafePointer<gchar>>, length: gssize) {
        let rv = g_variant_new_bytestring_array(cast(strv), length)
        self.init(cast(rv))
    }

    /// Creates a new double `GVariant` instance.
    public convenience init(CDouble value: gdouble) {
        let rv = g_variant_new_double(value)
        self.init(cast(rv))
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
    /// of a double-check that the form of the serialised data matches the caller's
    /// expectation.
    /// 
    /// `n_elements` must be the length of the `elements` array.
    public convenience init(fixed_array element_type: VariantTypeProtocol, elements: gconstpointer, nElements n_elements: Int, elementSize element_size: Int) {
        let rv = g_variant_new_fixed_array(cast(element_type.ptr), cast(elements), gsize(n_elements), gsize(element_size))
        self.init(cast(rv))
    }

    /// Constructs a new serialised-mode `GVariant` instance.  This is the
    /// inner interface for creation of new serialised values that gets
    /// called from various functions in gvariant.c.
    /// 
    /// A reference is taken on `bytes`.
    /// 
    /// The data in `bytes` must be aligned appropriately for the `type` being loaded.
    /// Otherwise this function will internally create a copy of the memory (since
    /// GLib 2.60) or (in older versions) fail and exit the process.
    public convenience init(bytes type: VariantTypeProtocol, bytes: BytesProtocol, trusted: Bool) {
        let rv = g_variant_new_from_bytes(cast(type.ptr), cast(bytes.ptr), gboolean(trusted ? 1 : 0))
        self.init(cast(rv))
    }

    /// Creates a new `GVariant` instance from serialised data.
    /// 
    /// `type` is the type of `GVariant` instance that will be constructed.
    /// The interpretation of `data` depends on knowing the type.
    /// 
    /// `data` is not modified by this function and must remain valid with an
    /// unchanging value until such a time as `notify` is called with
    /// `user_data`.  If the contents of `data` change before that time then
    /// the result is undefined.
    /// 
    /// If `data` is trusted to be serialised data in normal form then
    /// `trusted` should be `true`.  This applies to serialised data created
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
    public convenience init(data type: VariantTypeProtocol, data: gconstpointer, size: Int, trusted: Bool, notify: @escaping DestroyNotify, userData user_data: UnsafeMutableRawPointer) {
        let rv = g_variant_new_from_data(cast(type.ptr), cast(data), gsize(size), gboolean(trusted ? 1 : 0), notify, cast(user_data))
        self.init(cast(rv))
    }

    /// Creates a new handle `GVariant` instance.
    /// 
    /// By convention, handles are indexes into an array of file descriptors
    /// that are sent alongside a D-Bus message.  If you're not interacting
    /// with D-Bus, you probably don't need them.
    public convenience init(handle value: Int32) {
        let rv = g_variant_new_handle(gint32(value))
        self.init(cast(rv))
    }

    /// Creates a new int16 `GVariant` instance.
    public convenience init(int16 value: Int16) {
        let rv = g_variant_new_int16(gint16(value))
        self.init(cast(rv))
    }

    /// Creates a new int32 `GVariant` instance.
    public convenience init(int32 value: Int32) {
        let rv = g_variant_new_int32(gint32(value))
        self.init(cast(rv))
    }

    /// Creates a new int64 `GVariant` instance.
    public convenience init(int64 value: Int64) {
        let rv = g_variant_new_int64(gint64(value))
        self.init(cast(rv))
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
    public convenience init(maybe child_type: VariantTypeProtocol, child: VariantProtocol) {
        let rv = g_variant_new_maybe(cast(child_type.ptr), cast(child.ptr))
        self.init(cast(rv))
    }

    /// Creates a D-Bus object path `GVariant` with the contents of `string`.
    /// `string` must be a valid D-Bus object path.  Use
    /// `g_variant_is_object_path()` if you're not sure.
    public convenience init(objectPath object_path: UnsafePointer<gchar>) {
        let rv = g_variant_new_object_path(object_path)
        self.init(cast(rv))
    }

    /// Constructs an array of object paths `GVariant` from the given array of
    /// strings.
    /// 
    /// Each string must be a valid `GVariant` object path; see
    /// `g_variant_is_object_path()`.
    /// 
    /// If `length` is -1 then `strv` is `nil`-terminated.
    public convenience init(objv strv: UnsafePointer<UnsafePointer<gchar>>, length: gssize) {
        let rv = g_variant_new_objv(cast(strv), length)
        self.init(cast(rv))
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
    public convenience init(parsed_va format: UnsafePointer<gchar>, app: UnsafeMutablePointer<CVaListPointer>) {
        let rv = g_variant_new_parsed_va(format, cast(app))
        self.init(cast(rv))
    }


    // *** newPrintf() is not available because it has a varargs (...) parameter!


    /// Creates a D-Bus type signature `GVariant` with the contents of
    /// `string`.  `string` must be a valid D-Bus type signature.  Use
    /// `g_variant_is_signature()` if you're not sure.
    public convenience init(signature: UnsafePointer<gchar>) {
        let rv = g_variant_new_signature(signature)
        self.init(cast(rv))
    }

    /// Creates a string `GVariant` with the contents of `string`.
    /// 
    /// `string` must be valid UTF-8, and must not be `nil`. To encode
    /// potentially-`nil` strings, use `g_variant_new()` with `ms` as the
    /// [format string](#gvariant-format-strings-maybe-types).
    public convenience init(string: UnsafePointer<gchar>) {
        let rv = g_variant_new_string(string)
        self.init(cast(rv))
    }

    /// Constructs an array of strings `GVariant` from the given array of
    /// strings.
    /// 
    /// If `length` is -1 then `strv` is `nil`-terminated.
    public convenience init(strv: UnsafePointer<UnsafePointer<gchar>>, length: gssize) {
        let rv = g_variant_new_strv(cast(strv), length)
        self.init(cast(rv))
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
    public convenience init(take_string string: UnsafeMutablePointer<gchar>) {
        let rv = g_variant_new_take_string(string)
        self.init(cast(rv))
    }

    /// Creates a new tuple `GVariant` out of the items in `children`.  The
    /// type is determined from the types of `children`.  No entry in the
    /// `children` array may be `nil`.
    /// 
    /// If `n_children` is 0 then the unit tuple is constructed.
    /// 
    /// If the `children` are floating references (see `g_variant_ref_sink()`), the
    /// new instance takes ownership of them as if via `g_variant_ref_sink()`.
    public convenience init(tuple children: UnsafePointer<UnsafePointer<GVariant>>, nChildren n_children: Int) {
        let rv = g_variant_new_tuple(cast(children), gsize(n_children))
        self.init(cast(rv))
    }

    /// Creates a new uint16 `GVariant` instance.
    public convenience init(uint16 value: UInt16) {
        let rv = g_variant_new_uint16(guint16(value))
        self.init(cast(rv))
    }

    /// Creates a new uint32 `GVariant` instance.
    public convenience init(uint32 value: UInt32) {
        let rv = g_variant_new_uint32(guint32(value))
        self.init(cast(rv))
    }

    /// Creates a new uint64 `GVariant` instance.
    public convenience init(uint64 value: UInt64) {
        let rv = g_variant_new_uint64(guint64(value))
        self.init(cast(rv))
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
    public convenience init(va format_string: UnsafePointer<gchar>, endptr: UnsafePointer<UnsafePointer<gchar>>, app: UnsafeMutablePointer<CVaListPointer>) {
        let rv = g_variant_new_va(format_string, cast(endptr), cast(app))
        self.init(cast(rv))
    }

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
    public static func new(array child_type: VariantTypeProtocol, children: UnsafePointer<UnsafePointer<GVariant>>, nChildren n_children: Int) -> Variant! {
        let rv = g_variant_new_array(cast(child_type.ptr), cast(children), gsize(n_children))
        return rv.map { Variant(cast($0)) }
    }

    /// Creates a new boolean `GVariant` instance -- either `true` or `false`.
    public static func new(boolean value: Bool) -> Variant! {
        let rv = g_variant_new_boolean(gboolean(value ? 1 : 0))
        return rv.map { Variant(cast($0)) }
    }

    /// Creates a new byte `GVariant` instance.
    public static func new(byte value: UInt8) -> Variant! {
        let rv = g_variant_new_byte(guint8(value))
        return rv.map { Variant(cast($0)) }
    }

    /// Creates an array-of-bytes `GVariant` with the contents of `string`.
    /// This function is just like `g_variant_new_string()` except that the
    /// string need not be valid UTF-8.
    /// 
    /// The nul terminator character at the end of the string is stored in
    /// the array.
    public static func newByte(bytestring string: UnsafePointer<gchar>) -> Variant! {
        let rv = g_variant_new_bytestring(cast(string))
        return rv.map { Variant(cast($0)) }
    }

    /// Constructs an array of bytestring `GVariant` from the given array of
    /// strings.
    /// 
    /// If `length` is -1 then `strv` is `nil`-terminated.
    public static func newBytestringArray(bytestring_array strv: UnsafePointer<UnsafePointer<gchar>>, length: gssize) -> Variant! {
        let rv = g_variant_new_bytestring_array(cast(strv), length)
        return rv.map { Variant(cast($0)) }
    }

    /// Creates a new double `GVariant` instance.
    public static func newDouble(CDouble value: gdouble) -> Variant! {
        let rv = g_variant_new_double(value)
        return rv.map { Variant(cast($0)) }
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
    /// of a double-check that the form of the serialised data matches the caller's
    /// expectation.
    /// 
    /// `n_elements` must be the length of the `elements` array.
    public static func newFixedArray(fixed_array element_type: VariantTypeProtocol, elements: gconstpointer, nElements n_elements: Int, elementSize element_size: Int) -> Variant! {
        let rv = g_variant_new_fixed_array(cast(element_type.ptr), cast(elements), gsize(n_elements), gsize(element_size))
        return rv.map { Variant(cast($0)) }
    }

    /// Constructs a new serialised-mode `GVariant` instance.  This is the
    /// inner interface for creation of new serialised values that gets
    /// called from various functions in gvariant.c.
    /// 
    /// A reference is taken on `bytes`.
    /// 
    /// The data in `bytes` must be aligned appropriately for the `type` being loaded.
    /// Otherwise this function will internally create a copy of the memory (since
    /// GLib 2.60) or (in older versions) fail and exit the process.
    public static func newFrom(bytes type: VariantTypeProtocol, bytes: BytesProtocol, trusted: Bool) -> Variant! {
        let rv = g_variant_new_from_bytes(cast(type.ptr), cast(bytes.ptr), gboolean(trusted ? 1 : 0))
        return rv.map { Variant(cast($0)) }
    }

    /// Creates a new `GVariant` instance from serialised data.
    /// 
    /// `type` is the type of `GVariant` instance that will be constructed.
    /// The interpretation of `data` depends on knowing the type.
    /// 
    /// `data` is not modified by this function and must remain valid with an
    /// unchanging value until such a time as `notify` is called with
    /// `user_data`.  If the contents of `data` change before that time then
    /// the result is undefined.
    /// 
    /// If `data` is trusted to be serialised data in normal form then
    /// `trusted` should be `true`.  This applies to serialised data created
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
    public static func newFrom(data type: VariantTypeProtocol, data: gconstpointer, size: Int, trusted: Bool, notify: @escaping DestroyNotify, userData user_data: UnsafeMutableRawPointer) -> Variant! {
        let rv = g_variant_new_from_data(cast(type.ptr), cast(data), gsize(size), gboolean(trusted ? 1 : 0), notify, cast(user_data))
        return rv.map { Variant(cast($0)) }
    }

    /// Creates a new handle `GVariant` instance.
    /// 
    /// By convention, handles are indexes into an array of file descriptors
    /// that are sent alongside a D-Bus message.  If you're not interacting
    /// with D-Bus, you probably don't need them.
    public static func new(handle value: Int32) -> Variant! {
        let rv = g_variant_new_handle(gint32(value))
        return rv.map { Variant(cast($0)) }
    }

    /// Creates a new int16 `GVariant` instance.
    public static func new(int16 value: Int16) -> Variant! {
        let rv = g_variant_new_int16(gint16(value))
        return rv.map { Variant(cast($0)) }
    }

    /// Creates a new int32 `GVariant` instance.
    public static func new(int32 value: Int32) -> Variant! {
        let rv = g_variant_new_int32(gint32(value))
        return rv.map { Variant(cast($0)) }
    }

    /// Creates a new int64 `GVariant` instance.
    public static func new(int64 value: Int64) -> Variant! {
        let rv = g_variant_new_int64(gint64(value))
        return rv.map { Variant(cast($0)) }
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
    public static func new(maybe child_type: VariantTypeProtocol, child: VariantProtocol) -> Variant! {
        let rv = g_variant_new_maybe(cast(child_type.ptr), cast(child.ptr))
        return rv.map { Variant(cast($0)) }
    }

    /// Creates a D-Bus object path `GVariant` with the contents of `string`.
    /// `string` must be a valid D-Bus object path.  Use
    /// `g_variant_is_object_path()` if you're not sure.
    public static func new(objectPath object_path: UnsafePointer<gchar>) -> Variant! {
        let rv = g_variant_new_object_path(object_path)
        return rv.map { Variant(cast($0)) }
    }

    /// Constructs an array of object paths `GVariant` from the given array of
    /// strings.
    /// 
    /// Each string must be a valid `GVariant` object path; see
    /// `g_variant_is_object_path()`.
    /// 
    /// If `length` is -1 then `strv` is `nil`-terminated.
    public static func new(objv strv: UnsafePointer<UnsafePointer<gchar>>, length: gssize) -> Variant! {
        let rv = g_variant_new_objv(cast(strv), length)
        return rv.map { Variant(cast($0)) }
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
    public static func newParsedVa(parsed_va format: UnsafePointer<gchar>, app: UnsafeMutablePointer<CVaListPointer>) -> Variant! {
        let rv = g_variant_new_parsed_va(format, cast(app))
        return rv.map { Variant(cast($0)) }
    }


    // *** newPrintf() is not available because it has a varargs (...) parameter!


    /// Creates a D-Bus type signature `GVariant` with the contents of
    /// `string`.  `string` must be a valid D-Bus type signature.  Use
    /// `g_variant_is_signature()` if you're not sure.
    public static func new(signature: UnsafePointer<gchar>) -> Variant! {
        let rv = g_variant_new_signature(signature)
        return rv.map { Variant(cast($0)) }
    }

    /// Creates a string `GVariant` with the contents of `string`.
    /// 
    /// `string` must be valid UTF-8, and must not be `nil`. To encode
    /// potentially-`nil` strings, use `g_variant_new()` with `ms` as the
    /// [format string](#gvariant-format-strings-maybe-types).
    public static func new(string: UnsafePointer<gchar>) -> Variant! {
        let rv = g_variant_new_string(string)
        return rv.map { Variant(cast($0)) }
    }

    /// Constructs an array of strings `GVariant` from the given array of
    /// strings.
    /// 
    /// If `length` is -1 then `strv` is `nil`-terminated.
    public static func new(strv: UnsafePointer<UnsafePointer<gchar>>, length: gssize) -> Variant! {
        let rv = g_variant_new_strv(cast(strv), length)
        return rv.map { Variant(cast($0)) }
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
    public static func newTake(take_string string: UnsafeMutablePointer<gchar>) -> Variant! {
        let rv = g_variant_new_take_string(string)
        return rv.map { Variant(cast($0)) }
    }

    /// Creates a new tuple `GVariant` out of the items in `children`.  The
    /// type is determined from the types of `children`.  No entry in the
    /// `children` array may be `nil`.
    /// 
    /// If `n_children` is 0 then the unit tuple is constructed.
    /// 
    /// If the `children` are floating references (see `g_variant_ref_sink()`), the
    /// new instance takes ownership of them as if via `g_variant_ref_sink()`.
    public static func new(tuple children: UnsafePointer<UnsafePointer<GVariant>>, nChildren n_children: Int) -> Variant! {
        let rv = g_variant_new_tuple(cast(children), gsize(n_children))
        return rv.map { Variant(cast($0)) }
    }

    /// Creates a new uint16 `GVariant` instance.
    public static func new(uint16 value: UInt16) -> Variant! {
        let rv = g_variant_new_uint16(guint16(value))
        return rv.map { Variant(cast($0)) }
    }

    /// Creates a new uint32 `GVariant` instance.
    public static func new(uint32 value: UInt32) -> Variant! {
        let rv = g_variant_new_uint32(guint32(value))
        return rv.map { Variant(cast($0)) }
    }

    /// Creates a new uint64 `GVariant` instance.
    public static func new(uint64 value: UInt64) -> Variant! {
        let rv = g_variant_new_uint64(guint64(value))
        return rv.map { Variant(cast($0)) }
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
    public static func new(va format_string: UnsafePointer<gchar>, endptr: UnsafePointer<UnsafePointer<gchar>>, app: UnsafeMutablePointer<CVaListPointer>) -> Variant! {
        let rv = g_variant_new_va(format_string, cast(endptr), cast(app))
        return rv.map { Variant(cast($0)) }
    }

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
    public static func parse(type: VariantTypeProtocol, text: UnsafePointer<gchar>, limit: UnsafePointer<gchar>, endptr: UnsafePointer<UnsafePointer<gchar>>) throws -> Variant! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_variant_parse(cast(type.ptr), text, limit, cast(endptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { Variant(cast($0)) }
    }

}

// MARK: - no Variant properties

// MARK: - no signals


public extension VariantProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GVariant` instance.
    var variant_ptr: UnsafeMutablePointer<GVariant> { return ptr.assumingMemoryBound(to: GVariant.self) }

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
    func byteswap() -> UnsafeMutablePointer<GVariant>! {
        let rv = g_variant_byteswap(cast(variant_ptr))
        return cast(rv)
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
    func check(formatString format_string: UnsafePointer<gchar>, copyOnly copy_only: Bool) -> Bool {
        let rv = g_variant_check_format_string(cast(variant_ptr), format_string, gboolean(copy_only ? 1 : 0))
        return Bool(rv != 0)
    }

    /// Classifies `value` according to its top-level type.
    func classify() -> GVariantClass {
        let rv = g_variant_classify(cast(variant_ptr))
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
    func compare(two: VariantProtocol) -> CInt {
        let rv = g_variant_compare(cast(variant_ptr), cast(two.ptr))
        return CInt(rv)
    }

    /// Similar to `g_variant_get_bytestring()` except that instead of
    /// returning a constant string, the string is duplicated.
    /// 
    /// The return value must be freed using `g_free()`.
    func dupBytestring(length: UnsafeMutablePointer<Int>) -> UnsafeMutablePointer<gchar>! {
        let rv = g_variant_dup_bytestring(cast(variant_ptr), cast(length))
        return cast(rv)
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
    func dupBytestringArray(length: UnsafeMutablePointer<Int>) -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        let rv = g_variant_dup_bytestring_array(cast(variant_ptr), cast(length))
        return cast(rv)
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
    func dupObjv(length: UnsafeMutablePointer<Int>) -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        let rv = g_variant_dup_objv(cast(variant_ptr), cast(length))
        return cast(rv)
    }

    /// Similar to `g_variant_get_string()` except that instead of returning
    /// a constant string, the string is duplicated.
    /// 
    /// The string will always be UTF-8 encoded.
    /// 
    /// The return value must be freed using `g_free()`.
    func dupString(length: UnsafeMutablePointer<Int>) -> String! {
        let rv = g_variant_dup_string(cast(variant_ptr), cast(length))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
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
    func dupStrv(length: UnsafeMutablePointer<Int>) -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        let rv = g_variant_dup_strv(cast(variant_ptr), cast(length))
        return cast(rv)
    }

    /// Checks if `one` and `two` have the same type and value.
    /// 
    /// The types of `one` and `two` are `gconstpointer` only to allow use of
    /// this function with `GHashTable`.  They must each be a `GVariant`.
    func equal(two: VariantProtocol) -> Bool {
        let rv = g_variant_equal(cast(variant_ptr), cast(two.ptr))
        return Bool(rv != 0)
    }


    // *** get() is not available because it has a varargs (...) parameter!


    /// Returns the boolean value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_BOOLEAN`.
    func getBoolean() -> Bool {
        let rv = g_variant_get_boolean(cast(variant_ptr))
        return Bool(rv != 0)
    }

    /// Returns the byte value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_BYTE`.
    func getByte() -> UInt8 {
        let rv = g_variant_get_byte(cast(variant_ptr))
        return UInt8(rv)
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
    func getBytestring() -> UnsafePointer<gchar>! {
        let rv = g_variant_get_bytestring(cast(variant_ptr))
        return cast(rv)
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
    func getBytestringArray(length: UnsafeMutablePointer<Int>) -> UnsafePointer<UnsafePointer<gchar>>! {
        let rv = g_variant_get_bytestring_array(cast(variant_ptr), cast(length))
        return cast(rv)
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
    /// There may be implementation specific restrictions on deeply nested values,
    /// which would result in the unit tuple being returned as the child value,
    /// instead of further nested children. `GVariant` is guaranteed to handle
    /// nesting up to at least 64 levels.
    /// 
    /// This function is `O(1)`.
    func getChildValue(index_: Int) -> UnsafeMutablePointer<GVariant>! {
        let rv = g_variant_get_child_value(cast(variant_ptr), gsize(index_))
        return cast(rv)
    }

    /// Returns a pointer to the serialised form of a `GVariant` instance.
    /// The returned data may not be in fully-normalised form if read from an
    /// untrusted source.  The returned data must not be freed; it remains
    /// valid for as long as `value` exists.
    /// 
    /// If `value` is a fixed-sized value that was deserialised from a
    /// corrupted serialised container then `nil` may be returned.  In this
    /// case, the proper thing to do is typically to use the appropriate
    /// number of nul bytes in place of `value`.  If `value` is not fixed-sized
    /// then `nil` is never returned.
    /// 
    /// In the case that `value` is already in serialised form, this function
    /// is `O(1)`.  If the value is not already in serialised form,
    /// serialisation occurs implicitly and is approximately `O(n)` in the size
    /// of the result.
    /// 
    /// To deserialise the data returned by this function, in addition to the
    /// serialised data, you must know the type of the `GVariant`, and (if the
    /// machine might be different) the endianness of the machine that stored
    /// it. As a result, file formats or network messages that incorporate
    /// serialised `GVariants` must include this information either
    /// implicitly (for instance "the file always contains a
    /// `G_VARIANT_TYPE_VARIANT` and it is always in little-endian order") or
    /// explicitly (by storing the type and/or endianness in addition to the
    /// serialised data).
    func getData() -> gconstpointer! {
        let rv = g_variant_get_data(cast(variant_ptr))
        return cast(rv)
    }

    /// Returns a pointer to the serialised form of a `GVariant` instance.
    /// The semantics of this function are exactly the same as
    /// `g_variant_get_data()`, except that the returned `GBytes` holds
    /// a reference to the variant data.
    func getDataAsBytes() -> UnsafeMutablePointer<GBytes>! {
        let rv = g_variant_get_data_as_bytes(cast(variant_ptr))
        return cast(rv)
    }

    /// Returns the double precision floating point value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_DOUBLE`.
    func getDouble() -> gdouble {
        let rv = g_variant_get_double(cast(variant_ptr))
        return rv
    }

    /// Provides access to the serialised data for an array of fixed-sized
    /// items.
    /// 
    /// `value` must be an array with fixed-sized elements.  Numeric types are
    /// fixed-size, as are tuples containing only other fixed-sized types.
    /// 
    /// `element_size` must be the size of a single element in the array,
    /// as given by the section on
    /// [serialized data memory](#gvariant-serialised-data-memory).
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
    /// of a double-check that the form of the serialised data matches the caller's
    /// expectation.
    /// 
    /// `n_elements`, which must be non-`nil`, is set equal to the number of
    /// items in the array.
    func getFixedArray(nElements n_elements: UnsafeMutablePointer<Int>, elementSize element_size: Int) -> gconstpointer! {
        let rv = g_variant_get_fixed_array(cast(variant_ptr), cast(n_elements), gsize(element_size))
        return cast(rv)
    }

    /// Returns the 32-bit signed integer value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type other
    /// than `G_VARIANT_TYPE_HANDLE`.
    /// 
    /// By convention, handles are indexes into an array of file descriptors
    /// that are sent alongside a D-Bus message.  If you're not interacting
    /// with D-Bus, you probably don't need them.
    func getHandle() -> Int32 {
        let rv = g_variant_get_handle(cast(variant_ptr))
        return Int32(rv)
    }

    /// Returns the 16-bit signed integer value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_INT16`.
    func getInt16() -> Int16 {
        let rv = g_variant_get_int16(cast(variant_ptr))
        return Int16(rv)
    }

    /// Returns the 32-bit signed integer value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_INT32`.
    func getInt32() -> Int32 {
        let rv = g_variant_get_int32(cast(variant_ptr))
        return Int32(rv)
    }

    /// Returns the 64-bit signed integer value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_INT64`.
    func getInt64() -> Int64 {
        let rv = g_variant_get_int64(cast(variant_ptr))
        return Int64(rv)
    }

    /// Given a maybe-typed `GVariant` instance, extract its value.  If the
    /// value is Nothing, then this function returns `nil`.
    func getMaybe() -> UnsafeMutablePointer<GVariant>! {
        let rv = g_variant_get_maybe(cast(variant_ptr))
        return cast(rv)
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
    /// data from untrusted sources and you want to ensure your serialised
    /// output is definitely in normal form.
    /// 
    /// If `value` is already in normal form, a new reference will be returned
    /// (which will be floating if `value` is floating). If it is not in normal form,
    /// the newly created `GVariant` will be returned with a single non-floating
    /// reference. Typically, `g_variant_take_ref()` should be called on the return
    /// value from this function to guarantee ownership of a single non-floating
    /// reference to it.
    func getNormalForm() -> UnsafeMutablePointer<GVariant>! {
        let rv = g_variant_get_normal_form(cast(variant_ptr))
        return cast(rv)
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
    func getObjv(length: UnsafeMutablePointer<Int>) -> UnsafePointer<UnsafePointer<gchar>>! {
        let rv = g_variant_get_objv(cast(variant_ptr), cast(length))
        return cast(rv)
    }

    /// Determines the number of bytes that would be required to store `value`
    /// with `g_variant_store()`.
    /// 
    /// If `value` has a fixed-sized type then this function always returned
    /// that fixed size.
    /// 
    /// In the case that `value` is already in serialised form or the size has
    /// already been calculated (ie: this function has been called before)
    /// then this function is `O(1)`.  Otherwise, the size is calculated, an
    /// operation which is approximately `O(n)` in the number of values
    /// involved.
    func getSize() -> Int {
        let rv = g_variant_get_size(cast(variant_ptr))
        return Int(rv)
    }

    /// Returns the string value of a `GVariant` instance with a string
    /// type.  This includes the types `G_VARIANT_TYPE_STRING`,
    /// `G_VARIANT_TYPE_OBJECT_PATH` and `G_VARIANT_TYPE_SIGNATURE`.
    /// 
    /// The string will always be UTF-8 encoded, and will never be `nil`.
    /// 
    /// If `length` is non-`nil` then the length of the string (in bytes) is
    /// returned there.  For trusted values, this information is already
    /// known.  For untrusted values, a `strlen()` will be performed.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than those three.
    /// 
    /// The return value remains valid as long as `value` exists.
    func getString(length: UnsafeMutablePointer<Int>) -> String! {
        let rv = g_variant_get_string(cast(variant_ptr), cast(length))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
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
    func getStrv(length: UnsafeMutablePointer<Int>) -> UnsafePointer<UnsafePointer<gchar>>! {
        let rv = g_variant_get_strv(cast(variant_ptr), cast(length))
        return cast(rv)
    }

    /// Determines the type of `value`.
    /// 
    /// The return value is valid for the lifetime of `value` and must not
    /// be freed.
    func getType() -> UnsafePointer<GVariantType>! {
        let rv = g_variant_get_type(cast(variant_ptr))
        return cast(rv)
    }

    /// Returns the type string of `value`.  Unlike the result of calling
    /// `g_variant_type_peek_string()`, this string is nul-terminated.  This
    /// string belongs to `GVariant` and must not be freed.
    func getTypeString() -> String! {
        let rv = g_variant_get_type_string(cast(variant_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Returns the 16-bit unsigned integer value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_UINT16`.
    func getUint16() -> UInt16 {
        let rv = g_variant_get_uint16(cast(variant_ptr))
        return UInt16(rv)
    }

    /// Returns the 32-bit unsigned integer value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_UINT32`.
    func getUint32() -> UInt32 {
        let rv = g_variant_get_uint32(cast(variant_ptr))
        return UInt32(rv)
    }

    /// Returns the 64-bit unsigned integer value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_UINT64`.
    func getUint64() -> UInt64 {
        let rv = g_variant_get_uint64(cast(variant_ptr))
        return UInt64(rv)
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
    func getVa(formatString format_string: UnsafePointer<gchar>, endptr: UnsafePointer<UnsafePointer<gchar>>, app: UnsafeMutablePointer<CVaListPointer>) {
        g_variant_get_va(cast(variant_ptr), format_string, cast(endptr), cast(app))
    
    }

    /// Unboxes `value`.  The result is the `GVariant` instance that was
    /// contained in `value`.
    func getVariant() -> UnsafeMutablePointer<GVariant>! {
        let rv = g_variant_get_variant(cast(variant_ptr))
        return cast(rv)
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
    func hash() -> CUnsignedInt {
        let rv = g_variant_hash(cast(variant_ptr))
        return CUnsignedInt(rv)
    }

    /// Checks if a value has a type matching the provided type.
    func isOf(type: VariantTypeProtocol) -> Bool {
        let rv = g_variant_is_of_type(cast(variant_ptr), cast(type.ptr))
        return Bool(rv != 0)
    }

    /// Creates a heap-allocated `GVariantIter` for iterating over the items
    /// in `value`.
    /// 
    /// Use `g_variant_iter_free()` to free the return value when you no longer
    /// need it.
    /// 
    /// A reference is taken to `value` and will be released only when
    /// `g_variant_iter_free()` is called.
    func iterNew() -> UnsafeMutablePointer<GVariantIter>! {
        let rv = g_variant_iter_new(cast(variant_ptr))
        return cast(rv)
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
    func lookupValue(key: UnsafePointer<gchar>, expectedType expected_type: VariantTypeProtocol) -> UnsafeMutablePointer<GVariant>! {
        let rv = g_variant_lookup_value(cast(variant_ptr), key, cast(expected_type.ptr))
        return cast(rv)
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
    func nChildren() -> Int {
        let rv = g_variant_n_children(cast(variant_ptr))
        return Int(rv)
    }

    /// Pretty-prints `value` in the format understood by `g_variant_parse()`.
    /// 
    /// The format is described [here](#gvariant-text).
    /// 
    /// If `type_annotate` is `true`, then type information is included in
    /// the output.
    func print(typeAnnotate type_annotate: Bool) -> String! {
        let rv = g_variant_print(cast(variant_ptr), gboolean(type_annotate ? 1 : 0))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Behaves as `g_variant_print()`, but operates on a `GString`.
    /// 
    /// If `string` is non-`nil` then it is appended to and returned.  Else,
    /// a new empty `GString` is allocated and it is returned.
    func print(string: StringTypeProtocol, typeAnnotate type_annotate: Bool) -> UnsafeMutablePointer<GString>! {
        let rv = g_variant_print_string(cast(variant_ptr), cast(string.ptr), gboolean(type_annotate ? 1 : 0))
        return cast(rv)
    }

    /// Increases the reference count of `value`.
    func ref() -> UnsafeMutablePointer<GVariant>! {
        let rv = g_variant_ref(cast(variant_ptr))
        return cast(rv)
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
    func refSink() -> UnsafeMutablePointer<GVariant>! {
        let rv = g_variant_ref_sink(cast(variant_ptr))
        return cast(rv)
    }

    /// Stores the serialised form of `value` at `data`.  `data` should be
    /// large enough.  See `g_variant_get_size()`.
    /// 
    /// The stored data is in machine native byte order but may not be in
    /// fully-normalised form if read from an untrusted source.  See
    /// `g_variant_get_normal_form()` for a solution.
    /// 
    /// As with `g_variant_get_data()`, to be able to deserialise the
    /// serialised variant successfully, its type and (if the destination
    /// machine might be different) its endianness must also be available.
    /// 
    /// This function is approximately `O(n)` in the size of `data`.
    func store(data: UnsafeMutableRawPointer) {
        g_variant_store(cast(variant_ptr), cast(data))
    
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
    /// will alway receives exactly one full reference to the value: either
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
    func takeRef() -> UnsafeMutablePointer<GVariant>! {
        let rv = g_variant_take_ref(cast(variant_ptr))
        return cast(rv)
    }

    /// Decreases the reference count of `value`.  When its reference count
    /// drops to 0, the memory used by the variant is freed.
    func unref() {
        g_variant_unref(cast(variant_ptr))
    
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
    func logVariant(logDomain log_domain: UnsafePointer<gchar>, logLevel log_level: LogLevelFlags) {
        g_log_variant(log_domain, log_level, cast(variant_ptr))
    
    }
    /// Returns the boolean value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_BOOLEAN`.
    var boolean: Bool {
        /// Returns the boolean value of `value`.
        /// 
        /// It is an error to call this function with a `value` of any type
        /// other than `G_VARIANT_TYPE_BOOLEAN`.
        get {
            let rv = g_variant_get_boolean(cast(variant_ptr))
            return Bool(rv != 0)
        }
    }

    /// Returns the byte value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_BYTE`.
    var byte: UInt8 {
        /// Returns the byte value of `value`.
        /// 
        /// It is an error to call this function with a `value` of any type
        /// other than `G_VARIANT_TYPE_BYTE`.
        get {
            let rv = g_variant_get_byte(cast(variant_ptr))
            return UInt8(rv)
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
    var bytestring: UnsafePointer<gchar>! {
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
            let rv = g_variant_get_bytestring(cast(variant_ptr))
            return cast(rv)
        }
    }

    /// Returns a pointer to the serialised form of a `GVariant` instance.
    /// The returned data may not be in fully-normalised form if read from an
    /// untrusted source.  The returned data must not be freed; it remains
    /// valid for as long as `value` exists.
    /// 
    /// If `value` is a fixed-sized value that was deserialised from a
    /// corrupted serialised container then `nil` may be returned.  In this
    /// case, the proper thing to do is typically to use the appropriate
    /// number of nul bytes in place of `value`.  If `value` is not fixed-sized
    /// then `nil` is never returned.
    /// 
    /// In the case that `value` is already in serialised form, this function
    /// is `O(1)`.  If the value is not already in serialised form,
    /// serialisation occurs implicitly and is approximately `O(n)` in the size
    /// of the result.
    /// 
    /// To deserialise the data returned by this function, in addition to the
    /// serialised data, you must know the type of the `GVariant`, and (if the
    /// machine might be different) the endianness of the machine that stored
    /// it. As a result, file formats or network messages that incorporate
    /// serialised `GVariants` must include this information either
    /// implicitly (for instance "the file always contains a
    /// `G_VARIANT_TYPE_VARIANT` and it is always in little-endian order") or
    /// explicitly (by storing the type and/or endianness in addition to the
    /// serialised data).
    var data: gconstpointer! {
        /// Returns a pointer to the serialised form of a `GVariant` instance.
        /// The returned data may not be in fully-normalised form if read from an
        /// untrusted source.  The returned data must not be freed; it remains
        /// valid for as long as `value` exists.
        /// 
        /// If `value` is a fixed-sized value that was deserialised from a
        /// corrupted serialised container then `nil` may be returned.  In this
        /// case, the proper thing to do is typically to use the appropriate
        /// number of nul bytes in place of `value`.  If `value` is not fixed-sized
        /// then `nil` is never returned.
        /// 
        /// In the case that `value` is already in serialised form, this function
        /// is `O(1)`.  If the value is not already in serialised form,
        /// serialisation occurs implicitly and is approximately `O(n)` in the size
        /// of the result.
        /// 
        /// To deserialise the data returned by this function, in addition to the
        /// serialised data, you must know the type of the `GVariant`, and (if the
        /// machine might be different) the endianness of the machine that stored
        /// it. As a result, file formats or network messages that incorporate
        /// serialised `GVariants` must include this information either
        /// implicitly (for instance "the file always contains a
        /// `G_VARIANT_TYPE_VARIANT` and it is always in little-endian order") or
        /// explicitly (by storing the type and/or endianness in addition to the
        /// serialised data).
        get {
            let rv = g_variant_get_data(cast(variant_ptr))
            return cast(rv)
        }
    }

    /// Returns a pointer to the serialised form of a `GVariant` instance.
    /// The semantics of this function are exactly the same as
    /// `g_variant_get_data()`, except that the returned `GBytes` holds
    /// a reference to the variant data.
    var dataAsBytes: UnsafeMutablePointer<GBytes>! {
        /// Returns a pointer to the serialised form of a `GVariant` instance.
        /// The semantics of this function are exactly the same as
        /// `g_variant_get_data()`, except that the returned `GBytes` holds
        /// a reference to the variant data.
        get {
            let rv = g_variant_get_data_as_bytes(cast(variant_ptr))
            return cast(rv)
        }
    }

    /// Returns the double precision floating point value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_DOUBLE`.
    var double: gdouble {
        /// Returns the double precision floating point value of `value`.
        /// 
        /// It is an error to call this function with a `value` of any type
        /// other than `G_VARIANT_TYPE_DOUBLE`.
        get {
            let rv = g_variant_get_double(cast(variant_ptr))
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
    var handle: Int32 {
        /// Returns the 32-bit signed integer value of `value`.
        /// 
        /// It is an error to call this function with a `value` of any type other
        /// than `G_VARIANT_TYPE_HANDLE`.
        /// 
        /// By convention, handles are indexes into an array of file descriptors
        /// that are sent alongside a D-Bus message.  If you're not interacting
        /// with D-Bus, you probably don't need them.
        get {
            let rv = g_variant_get_handle(cast(variant_ptr))
            return Int32(rv)
        }
    }

    /// Returns the 16-bit signed integer value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_INT16`.
    var int16: Int16 {
        /// Returns the 16-bit signed integer value of `value`.
        /// 
        /// It is an error to call this function with a `value` of any type
        /// other than `G_VARIANT_TYPE_INT16`.
        get {
            let rv = g_variant_get_int16(cast(variant_ptr))
            return Int16(rv)
        }
    }

    /// Returns the 32-bit signed integer value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_INT32`.
    var int32: Int32 {
        /// Returns the 32-bit signed integer value of `value`.
        /// 
        /// It is an error to call this function with a `value` of any type
        /// other than `G_VARIANT_TYPE_INT32`.
        get {
            let rv = g_variant_get_int32(cast(variant_ptr))
            return Int32(rv)
        }
    }

    /// Returns the 64-bit signed integer value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_INT64`.
    var int64: Int64 {
        /// Returns the 64-bit signed integer value of `value`.
        /// 
        /// It is an error to call this function with a `value` of any type
        /// other than `G_VARIANT_TYPE_INT64`.
        get {
            let rv = g_variant_get_int64(cast(variant_ptr))
            return Int64(rv)
        }
    }

    /// Checks if `value` is a container.
    var isContainer: Bool {
        /// Checks if `value` is a container.
        get {
            let rv = g_variant_is_container(cast(variant_ptr))
            return Bool(rv != 0)
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
    var isFloating: Bool {
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
            let rv = g_variant_is_floating(cast(variant_ptr))
            return Bool(rv != 0)
        }
    }

    /// Checks if `value` is in normal form.
    /// 
    /// The main reason to do this is to detect if a given chunk of
    /// serialised data is in normal form: load the data into a `GVariant`
    /// using `g_variant_new_from_data()` and then use this function to
    /// check.
    /// 
    /// If `value` is found to be in normal form then it will be marked as
    /// being trusted.  If the value was already marked as being trusted then
    /// this function will immediately return `true`.
    /// 
    /// There may be implementation specific restrictions on deeply nested values.
    /// GVariant is guaranteed to handle nesting up to at least 64 levels.
    var isNormalForm: Bool {
        /// Checks if `value` is in normal form.
        /// 
        /// The main reason to do this is to detect if a given chunk of
        /// serialised data is in normal form: load the data into a `GVariant`
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
            let rv = g_variant_is_normal_form(cast(variant_ptr))
            return Bool(rv != 0)
        }
    }

    /// Given a maybe-typed `GVariant` instance, extract its value.  If the
    /// value is Nothing, then this function returns `nil`.
    var maybe: UnsafeMutablePointer<GVariant>! {
        /// Given a maybe-typed `GVariant` instance, extract its value.  If the
        /// value is Nothing, then this function returns `nil`.
        get {
            let rv = g_variant_get_maybe(cast(variant_ptr))
            return cast(rv)
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
    /// data from untrusted sources and you want to ensure your serialised
    /// output is definitely in normal form.
    /// 
    /// If `value` is already in normal form, a new reference will be returned
    /// (which will be floating if `value` is floating). If it is not in normal form,
    /// the newly created `GVariant` will be returned with a single non-floating
    /// reference. Typically, `g_variant_take_ref()` should be called on the return
    /// value from this function to guarantee ownership of a single non-floating
    /// reference to it.
    var normalForm: UnsafeMutablePointer<GVariant>! {
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
        /// data from untrusted sources and you want to ensure your serialised
        /// output is definitely in normal form.
        /// 
        /// If `value` is already in normal form, a new reference will be returned
        /// (which will be floating if `value` is floating). If it is not in normal form,
        /// the newly created `GVariant` will be returned with a single non-floating
        /// reference. Typically, `g_variant_take_ref()` should be called on the return
        /// value from this function to guarantee ownership of a single non-floating
        /// reference to it.
        get {
            let rv = g_variant_get_normal_form(cast(variant_ptr))
            return cast(rv)
        }
    }

    /// Determines the number of bytes that would be required to store `value`
    /// with `g_variant_store()`.
    /// 
    /// If `value` has a fixed-sized type then this function always returned
    /// that fixed size.
    /// 
    /// In the case that `value` is already in serialised form or the size has
    /// already been calculated (ie: this function has been called before)
    /// then this function is `O(1)`.  Otherwise, the size is calculated, an
    /// operation which is approximately `O(n)` in the number of values
    /// involved.
    var size: Int {
        /// Determines the number of bytes that would be required to store `value`
        /// with `g_variant_store()`.
        /// 
        /// If `value` has a fixed-sized type then this function always returned
        /// that fixed size.
        /// 
        /// In the case that `value` is already in serialised form or the size has
        /// already been calculated (ie: this function has been called before)
        /// then this function is `O(1)`.  Otherwise, the size is calculated, an
        /// operation which is approximately `O(n)` in the number of values
        /// involved.
        get {
            let rv = g_variant_get_size(cast(variant_ptr))
            return Int(rv)
        }
    }

    /// Determines the type of `value`.
    /// 
    /// The return value is valid for the lifetime of `value` and must not
    /// be freed.
    var type: UnsafePointer<GVariantType>! {
        /// Determines the type of `value`.
        /// 
        /// The return value is valid for the lifetime of `value` and must not
        /// be freed.
        get {
            let rv = g_variant_get_type(cast(variant_ptr))
            return cast(rv)
        }
    }

    /// Returns the type string of `value`.  Unlike the result of calling
    /// `g_variant_type_peek_string()`, this string is nul-terminated.  This
    /// string belongs to `GVariant` and must not be freed.
    var typeString: String! {
        /// Returns the type string of `value`.  Unlike the result of calling
        /// `g_variant_type_peek_string()`, this string is nul-terminated.  This
        /// string belongs to `GVariant` and must not be freed.
        get {
            let rv = g_variant_get_type_string(cast(variant_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Returns the 16-bit unsigned integer value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_UINT16`.
    var uint16: UInt16 {
        /// Returns the 16-bit unsigned integer value of `value`.
        /// 
        /// It is an error to call this function with a `value` of any type
        /// other than `G_VARIANT_TYPE_UINT16`.
        get {
            let rv = g_variant_get_uint16(cast(variant_ptr))
            return UInt16(rv)
        }
    }

    /// Returns the 32-bit unsigned integer value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_UINT32`.
    var uint32: UInt32 {
        /// Returns the 32-bit unsigned integer value of `value`.
        /// 
        /// It is an error to call this function with a `value` of any type
        /// other than `G_VARIANT_TYPE_UINT32`.
        get {
            let rv = g_variant_get_uint32(cast(variant_ptr))
            return UInt32(rv)
        }
    }

    /// Returns the 64-bit unsigned integer value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_UINT64`.
    var uint64: UInt64 {
        /// Returns the 64-bit unsigned integer value of `value`.
        /// 
        /// It is an error to call this function with a `value` of any type
        /// other than `G_VARIANT_TYPE_UINT64`.
        get {
            let rv = g_variant_get_uint64(cast(variant_ptr))
            return UInt64(rv)
        }
    }

    /// Unboxes `value`.  The result is the `GVariant` instance that was
    /// contained in `value`.
    var variant: UnsafeMutablePointer<GVariant>! {
        /// Unboxes `value`.  The result is the `GVariant` instance that was
        /// contained in `value`.
        get {
            let rv = g_variant_get_variant(cast(variant_ptr))
            return cast(rv)
        }
    }
}



