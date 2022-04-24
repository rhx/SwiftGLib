import CGLib

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
            let result = g_variant_new_array(childType?.variant_type_ptr, children, gsize(nChildren))
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new boolean `GVariant` instance -- either `true` or `false`.
    @inlinable init(boolean value: Bool) {
            let result = g_variant_new_boolean(gboolean((value) ? 1 : 0))
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new byte `GVariant` instance.
    @inlinable init(byte value: guint8) {
            let result = g_variant_new_byte(value)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates an array-of-bytes `GVariant` with the contents of `string`.
    /// This function is just like `g_variant_new_string()` except that the
    /// string need not be valid UTF-8.
    /// 
    /// The nul terminator character at the end of the string is stored in
    /// the array.
    @inlinable init(bytestring string: UnsafePointer<gchar>!) {
            let result = g_variant_new_bytestring(string)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Constructs an array of bytestring `GVariant` from the given array of
    /// strings.
    /// 
    /// If `length` is -1 then `strv` is `nil`-terminated.
    @inlinable init(bytestring_array strv: UnsafePointer<UnsafePointer<gchar>?>!, length: gssize) {
            let result = g_variant_new_bytestring_array(strv, length)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new double `GVariant` instance.
    @inlinable init(CDouble value: Double) {
            let result = g_variant_new_double(gdouble(value))
        let rv = result
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
    @inlinable init<VariantTypeT: VariantTypeProtocol>(fixed_array elementType: VariantTypeT, elements: gconstpointer? = nil, nElements: Int, elementSize: Int) {
            let result = g_variant_new_fixed_array(elementType.variant_type_ptr, elements, gsize(nElements), gsize(elementSize))
        let rv = result
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
            let result = g_variant_new_from_bytes(type.variant_type_ptr, bytes.bytes_ptr, gboolean((trusted) ? 1 : 0))
        let rv = result
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
    @inlinable init<VariantTypeT: VariantTypeProtocol>(data type: VariantTypeT, data: gconstpointer!, size: Int, trusted: Bool, notify: GDestroyNotify?, userData: gpointer? = nil) {
            let result = g_variant_new_from_data(type.variant_type_ptr, data, gsize(size), gboolean((trusted) ? 1 : 0), notify, userData)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new handle `GVariant` instance.
    /// 
    /// By convention, handles are indexes into an array of file descriptors
    /// that are sent alongside a D-Bus message.  If you're not interacting
    /// with D-Bus, you probably don't need them.
    @inlinable init(handle value: gint32) {
            let result = g_variant_new_handle(value)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new int16 `GVariant` instance.
    @inlinable init(int16 value: gint16) {
            let result = g_variant_new_int16(value)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new int32 `GVariant` instance.
    @inlinable init(int32 value: gint32) {
            let result = g_variant_new_int32(value)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new int64 `GVariant` instance.
    @inlinable init(int64 value: gint64) {
            let result = g_variant_new_int64(value)
        let rv = result
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
            let result = g_variant_new_maybe(childType?.variant_type_ptr, child?.variant_ptr)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a D-Bus object path `GVariant` with the contents of `string`.
    /// `string` must be a valid D-Bus object path.  Use
    /// `g_variant_is_object_path()` if you're not sure.
    @inlinable init(objectPath: UnsafePointer<gchar>!) {
            let result = g_variant_new_object_path(objectPath)
        let rv = result
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
            let result = g_variant_new_objv(strv, length)
        let rv = result
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
            let result = g_variant_new_parsed_va(format, app)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }
#endif


    // *** newPrintf() is not available because it has a varargs (...) parameter!


    /// Creates a D-Bus type signature `GVariant` with the contents of
    /// `string`.  `string` must be a valid D-Bus type signature.  Use
    /// `g_variant_is_signature()` if you're not sure.
    @inlinable init(signature: UnsafePointer<gchar>!) {
            let result = g_variant_new_signature(signature)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a string `GVariant` with the contents of `string`.
    /// 
    /// `string` must be valid UTF-8, and must not be `nil`. To encode
    /// potentially-`nil` strings, use `g_variant_new()` with `ms` as the
    /// [format string](#gvariant-format-strings-maybe-types).
    @inlinable init(string: UnsafePointer<gchar>!) {
            let result = g_variant_new_string(string)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Constructs an array of strings `GVariant` from the given array of
    /// strings.
    /// 
    /// If `length` is -1 then `strv` is `nil`-terminated.
    @inlinable init(strv: UnsafePointer<UnsafePointer<gchar>?>!, length: gssize) {
            let result = g_variant_new_strv(strv, length)
        let rv = result
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
            let result = g_variant_new_take_string(string)
        let rv = result
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
            let result = g_variant_new_tuple(children, gsize(nChildren))
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new uint16 `GVariant` instance.
    @inlinable init(uint16 value: guint16) {
            let result = g_variant_new_uint16(value)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new uint32 `GVariant` instance.
    @inlinable init(uint32 value: guint32) {
            let result = g_variant_new_uint32(value)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new uint64 `GVariant` instance.
    @inlinable init(uint64 value: guint64) {
            let result = g_variant_new_uint64(value)
        let rv = result
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
            let result = g_variant_new_va(formatString, endptr, app)
        let rv = result
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
            let result = g_variant_new_array(childType?.variant_type_ptr, children, gsize(nChildren))
        guard let rv = VariantRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new boolean `GVariant` instance -- either `true` or `false`.
    @inlinable static func new(boolean value: Bool) -> VariantRef! {
            let result = g_variant_new_boolean(gboolean((value) ? 1 : 0))
        guard let rv = VariantRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new byte `GVariant` instance.
    @inlinable static func new(byte value: guint8) -> VariantRef! {
            let result = g_variant_new_byte(value)
        guard let rv = VariantRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates an array-of-bytes `GVariant` with the contents of `string`.
    /// This function is just like `g_variant_new_string()` except that the
    /// string need not be valid UTF-8.
    /// 
    /// The nul terminator character at the end of the string is stored in
    /// the array.
    @inlinable static func newByte(bytestring string: UnsafePointer<gchar>!) -> VariantRef! {
            let result = g_variant_new_bytestring(string)
        guard let rv = VariantRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Constructs an array of bytestring `GVariant` from the given array of
    /// strings.
    /// 
    /// If `length` is -1 then `strv` is `nil`-terminated.
    @inlinable static func newBytestringArray(bytestring_array strv: UnsafePointer<UnsafePointer<gchar>?>!, length: gssize) -> VariantRef! {
            let result = g_variant_new_bytestring_array(strv, length)
        guard let rv = VariantRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new double `GVariant` instance.
    @inlinable static func newDouble(CDouble value: Double) -> VariantRef! {
            let result = g_variant_new_double(gdouble(value))
        guard let rv = VariantRef(gconstpointer: gconstpointer(result)) else { return nil }
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
    @inlinable static func newFixedArray<VariantTypeT: VariantTypeProtocol>(fixed_array elementType: VariantTypeT, elements: gconstpointer? = nil, nElements: Int, elementSize: Int) -> VariantRef! {
            let result = g_variant_new_fixed_array(elementType.variant_type_ptr, elements, gsize(nElements), gsize(elementSize))
        guard let rv = VariantRef(gconstpointer: gconstpointer(result)) else { return nil }
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
            let result = g_variant_new_from_bytes(type.variant_type_ptr, bytes.bytes_ptr, gboolean((trusted) ? 1 : 0))
        guard let rv = VariantRef(gconstpointer: gconstpointer(result)) else { return nil }
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
    @inlinable static func newFrom<VariantTypeT: VariantTypeProtocol>(data type: VariantTypeT, data: gconstpointer!, size: Int, trusted: Bool, notify: GDestroyNotify?, userData: gpointer? = nil) -> VariantRef! {
            let result = g_variant_new_from_data(type.variant_type_ptr, data, gsize(size), gboolean((trusted) ? 1 : 0), notify, userData)
        guard let rv = VariantRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new handle `GVariant` instance.
    /// 
    /// By convention, handles are indexes into an array of file descriptors
    /// that are sent alongside a D-Bus message.  If you're not interacting
    /// with D-Bus, you probably don't need them.
    @inlinable static func new(handle value: gint32) -> VariantRef! {
            let result = g_variant_new_handle(value)
        guard let rv = VariantRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new int16 `GVariant` instance.
    @inlinable static func new(int16 value: gint16) -> VariantRef! {
            let result = g_variant_new_int16(value)
        guard let rv = VariantRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new int32 `GVariant` instance.
    @inlinable static func new(int32 value: gint32) -> VariantRef! {
            let result = g_variant_new_int32(value)
        guard let rv = VariantRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new int64 `GVariant` instance.
    @inlinable static func new(int64 value: gint64) -> VariantRef! {
            let result = g_variant_new_int64(value)
        guard let rv = VariantRef(gconstpointer: gconstpointer(result)) else { return nil }
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
            let result = g_variant_new_maybe(childType?.variant_type_ptr, child?.variant_ptr)
        guard let rv = VariantRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a D-Bus object path `GVariant` with the contents of `string`.
    /// `string` must be a valid D-Bus object path.  Use
    /// `g_variant_is_object_path()` if you're not sure.
    @inlinable static func new(objectPath: UnsafePointer<gchar>!) -> VariantRef! {
            let result = g_variant_new_object_path(objectPath)
        guard let rv = VariantRef(gconstpointer: gconstpointer(result)) else { return nil }
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
            let result = g_variant_new_objv(strv, length)
        guard let rv = VariantRef(gconstpointer: gconstpointer(result)) else { return nil }
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
            let result = g_variant_new_parsed_va(format, app)
        guard let rv = VariantRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }
#endif


    // *** newPrintf() is not available because it has a varargs (...) parameter!


    /// Creates a D-Bus type signature `GVariant` with the contents of
    /// `string`.  `string` must be a valid D-Bus type signature.  Use
    /// `g_variant_is_signature()` if you're not sure.
    @inlinable static func new(signature: UnsafePointer<gchar>!) -> VariantRef! {
            let result = g_variant_new_signature(signature)
        guard let rv = VariantRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a string `GVariant` with the contents of `string`.
    /// 
    /// `string` must be valid UTF-8, and must not be `nil`. To encode
    /// potentially-`nil` strings, use `g_variant_new()` with `ms` as the
    /// [format string](#gvariant-format-strings-maybe-types).
    @inlinable static func new(string: UnsafePointer<gchar>!) -> VariantRef! {
            let result = g_variant_new_string(string)
        guard let rv = VariantRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Constructs an array of strings `GVariant` from the given array of
    /// strings.
    /// 
    /// If `length` is -1 then `strv` is `nil`-terminated.
    @inlinable static func new(strv: UnsafePointer<UnsafePointer<gchar>?>!, length: gssize) -> VariantRef! {
            let result = g_variant_new_strv(strv, length)
        guard let rv = VariantRef(gconstpointer: gconstpointer(result)) else { return nil }
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
            let result = g_variant_new_take_string(string)
        guard let rv = VariantRef(gconstpointer: gconstpointer(result)) else { return nil }
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
            let result = g_variant_new_tuple(children, gsize(nChildren))
        guard let rv = VariantRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new uint16 `GVariant` instance.
    @inlinable static func new(uint16 value: guint16) -> VariantRef! {
            let result = g_variant_new_uint16(value)
        guard let rv = VariantRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new uint32 `GVariant` instance.
    @inlinable static func new(uint32 value: guint32) -> VariantRef! {
            let result = g_variant_new_uint32(value)
        guard let rv = VariantRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new uint64 `GVariant` instance.
    @inlinable static func new(uint64 value: guint64) -> VariantRef! {
            let result = g_variant_new_uint64(value)
        guard let rv = VariantRef(gconstpointer: gconstpointer(result)) else { return nil }
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
            let result = g_variant_new_va(formatString, endptr, app)
        guard let rv = VariantRef(gconstpointer: gconstpointer(result)) else { return nil }
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
        let result = g_variant_parse(type?.variant_type_ptr, text, limit, endptr, &error)
        if let error = error { throw GLibError(error) }
        let maybeRV = VariantRef(gconstpointer: gconstpointer(result))
        
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
            let result = g_variant_new_array(childType?.variant_type_ptr, children, gsize(nChildren))
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new boolean `GVariant` instance -- either `true` or `false`.
    @inlinable public init(boolean value: Bool) {
            let result = g_variant_new_boolean(gboolean((value) ? 1 : 0))
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new byte `GVariant` instance.
    @inlinable public init(byte value: guint8) {
            let result = g_variant_new_byte(value)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates an array-of-bytes `GVariant` with the contents of `string`.
    /// This function is just like `g_variant_new_string()` except that the
    /// string need not be valid UTF-8.
    /// 
    /// The nul terminator character at the end of the string is stored in
    /// the array.
    @inlinable public init(bytestring string: UnsafePointer<gchar>!) {
            let result = g_variant_new_bytestring(string)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Constructs an array of bytestring `GVariant` from the given array of
    /// strings.
    /// 
    /// If `length` is -1 then `strv` is `nil`-terminated.
    @inlinable public init(bytestring_array strv: UnsafePointer<UnsafePointer<gchar>?>!, length: gssize) {
            let result = g_variant_new_bytestring_array(strv, length)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new double `GVariant` instance.
    @inlinable public init(CDouble value: Double) {
            let result = g_variant_new_double(gdouble(value))
        let rv = result
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
    @inlinable public init<VariantTypeT: VariantTypeProtocol>(fixed_array elementType: VariantTypeT, elements: gconstpointer? = nil, nElements: Int, elementSize: Int) {
            let result = g_variant_new_fixed_array(elementType.variant_type_ptr, elements, gsize(nElements), gsize(elementSize))
        let rv = result
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
            let result = g_variant_new_from_bytes(type.variant_type_ptr, bytes.bytes_ptr, gboolean((trusted) ? 1 : 0))
        let rv = result
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
    @inlinable public init<VariantTypeT: VariantTypeProtocol>(data type: VariantTypeT, data: gconstpointer!, size: Int, trusted: Bool, notify: GDestroyNotify?, userData: gpointer? = nil) {
            let result = g_variant_new_from_data(type.variant_type_ptr, data, gsize(size), gboolean((trusted) ? 1 : 0), notify, userData)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new handle `GVariant` instance.
    /// 
    /// By convention, handles are indexes into an array of file descriptors
    /// that are sent alongside a D-Bus message.  If you're not interacting
    /// with D-Bus, you probably don't need them.
    @inlinable public init(handle value: gint32) {
            let result = g_variant_new_handle(value)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new int16 `GVariant` instance.
    @inlinable public init(int16 value: gint16) {
            let result = g_variant_new_int16(value)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new int32 `GVariant` instance.
    @inlinable public init(int32 value: gint32) {
            let result = g_variant_new_int32(value)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new int64 `GVariant` instance.
    @inlinable public init(int64 value: gint64) {
            let result = g_variant_new_int64(value)
        let rv = result
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
            let result = g_variant_new_maybe(childType?.variant_type_ptr, child?.variant_ptr)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a D-Bus object path `GVariant` with the contents of `string`.
    /// `string` must be a valid D-Bus object path.  Use
    /// `g_variant_is_object_path()` if you're not sure.
    @inlinable public init(objectPath: UnsafePointer<gchar>!) {
            let result = g_variant_new_object_path(objectPath)
        let rv = result
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
            let result = g_variant_new_objv(strv, length)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }


    // *** newParsed() is not available because it has a varargs (...) parameter!



    // *** newParsedVa() is currently not available because g_variant_new_parsed_va takes a va_list pointer!



    // *** newPrintf() is not available because it has a varargs (...) parameter!


    /// Creates a D-Bus type signature `GVariant` with the contents of
    /// `string`.  `string` must be a valid D-Bus type signature.  Use
    /// `g_variant_is_signature()` if you're not sure.
    @inlinable public init(signature: UnsafePointer<gchar>!) {
            let result = g_variant_new_signature(signature)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a string `GVariant` with the contents of `string`.
    /// 
    /// `string` must be valid UTF-8, and must not be `nil`. To encode
    /// potentially-`nil` strings, use `g_variant_new()` with `ms` as the
    /// [format string](#gvariant-format-strings-maybe-types).
    @inlinable public init(string: UnsafePointer<gchar>!) {
            let result = g_variant_new_string(string)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Constructs an array of strings `GVariant` from the given array of
    /// strings.
    /// 
    /// If `length` is -1 then `strv` is `nil`-terminated.
    @inlinable public init(strv: UnsafePointer<UnsafePointer<gchar>?>!, length: gssize) {
            let result = g_variant_new_strv(strv, length)
        let rv = result
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
            let result = g_variant_new_take_string(string)
        let rv = result
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
            let result = g_variant_new_tuple(children, gsize(nChildren))
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new uint16 `GVariant` instance.
    @inlinable public init(uint16 value: guint16) {
            let result = g_variant_new_uint16(value)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new uint32 `GVariant` instance.
    @inlinable public init(uint32 value: guint32) {
            let result = g_variant_new_uint32(value)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new uint64 `GVariant` instance.
    @inlinable public init(uint64 value: guint64) {
            let result = g_variant_new_uint64(value)
        let rv = result
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
            let result = g_variant_new_array(childType?.variant_type_ptr, children, gsize(nChildren))
        guard let rv = Variant(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new boolean `GVariant` instance -- either `true` or `false`.
    @inlinable public static func new(boolean value: Bool) -> Variant! {
            let result = g_variant_new_boolean(gboolean((value) ? 1 : 0))
        guard let rv = Variant(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new byte `GVariant` instance.
    @inlinable public static func new(byte value: guint8) -> Variant! {
            let result = g_variant_new_byte(value)
        guard let rv = Variant(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates an array-of-bytes `GVariant` with the contents of `string`.
    /// This function is just like `g_variant_new_string()` except that the
    /// string need not be valid UTF-8.
    /// 
    /// The nul terminator character at the end of the string is stored in
    /// the array.
    @inlinable public static func newByte(bytestring string: UnsafePointer<gchar>!) -> Variant! {
            let result = g_variant_new_bytestring(string)
        guard let rv = Variant(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Constructs an array of bytestring `GVariant` from the given array of
    /// strings.
    /// 
    /// If `length` is -1 then `strv` is `nil`-terminated.
    @inlinable public static func newBytestringArray(bytestring_array strv: UnsafePointer<UnsafePointer<gchar>?>!, length: gssize) -> Variant! {
            let result = g_variant_new_bytestring_array(strv, length)
        guard let rv = Variant(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new double `GVariant` instance.
    @inlinable public static func newDouble(CDouble value: Double) -> Variant! {
            let result = g_variant_new_double(gdouble(value))
        guard let rv = Variant(gconstpointer: gconstpointer(result)) else { return nil }
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
    @inlinable public static func newFixedArray<VariantTypeT: VariantTypeProtocol>(fixed_array elementType: VariantTypeT, elements: gconstpointer? = nil, nElements: Int, elementSize: Int) -> Variant! {
            let result = g_variant_new_fixed_array(elementType.variant_type_ptr, elements, gsize(nElements), gsize(elementSize))
        guard let rv = Variant(gconstpointer: gconstpointer(result)) else { return nil }
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
            let result = g_variant_new_from_bytes(type.variant_type_ptr, bytes.bytes_ptr, gboolean((trusted) ? 1 : 0))
        guard let rv = Variant(gconstpointer: gconstpointer(result)) else { return nil }
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
    @inlinable public static func newFrom<VariantTypeT: VariantTypeProtocol>(data type: VariantTypeT, data: gconstpointer!, size: Int, trusted: Bool, notify: GDestroyNotify?, userData: gpointer? = nil) -> Variant! {
            let result = g_variant_new_from_data(type.variant_type_ptr, data, gsize(size), gboolean((trusted) ? 1 : 0), notify, userData)
        guard let rv = Variant(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new handle `GVariant` instance.
    /// 
    /// By convention, handles are indexes into an array of file descriptors
    /// that are sent alongside a D-Bus message.  If you're not interacting
    /// with D-Bus, you probably don't need them.
    @inlinable public static func new(handle value: gint32) -> Variant! {
            let result = g_variant_new_handle(value)
        guard let rv = Variant(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new int16 `GVariant` instance.
    @inlinable public static func new(int16 value: gint16) -> Variant! {
            let result = g_variant_new_int16(value)
        guard let rv = Variant(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new int32 `GVariant` instance.
    @inlinable public static func new(int32 value: gint32) -> Variant! {
            let result = g_variant_new_int32(value)
        guard let rv = Variant(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new int64 `GVariant` instance.
    @inlinable public static func new(int64 value: gint64) -> Variant! {
            let result = g_variant_new_int64(value)
        guard let rv = Variant(gconstpointer: gconstpointer(result)) else { return nil }
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
            let result = g_variant_new_maybe(childType?.variant_type_ptr, child?.variant_ptr)
        guard let rv = Variant(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a D-Bus object path `GVariant` with the contents of `string`.
    /// `string` must be a valid D-Bus object path.  Use
    /// `g_variant_is_object_path()` if you're not sure.
    @inlinable public static func new(objectPath: UnsafePointer<gchar>!) -> Variant! {
            let result = g_variant_new_object_path(objectPath)
        guard let rv = Variant(gconstpointer: gconstpointer(result)) else { return nil }
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
            let result = g_variant_new_objv(strv, length)
        guard let rv = Variant(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }


    // *** newParsed() is not available because it has a varargs (...) parameter!



    // *** newParsedVa() is currently not available because g_variant_new_parsed_va takes a va_list pointer!



    // *** newPrintf() is not available because it has a varargs (...) parameter!


    /// Creates a D-Bus type signature `GVariant` with the contents of
    /// `string`.  `string` must be a valid D-Bus type signature.  Use
    /// `g_variant_is_signature()` if you're not sure.
    @inlinable public static func new(signature: UnsafePointer<gchar>!) -> Variant! {
            let result = g_variant_new_signature(signature)
        guard let rv = Variant(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a string `GVariant` with the contents of `string`.
    /// 
    /// `string` must be valid UTF-8, and must not be `nil`. To encode
    /// potentially-`nil` strings, use `g_variant_new()` with `ms` as the
    /// [format string](#gvariant-format-strings-maybe-types).
    @inlinable public static func new(string: UnsafePointer<gchar>!) -> Variant! {
            let result = g_variant_new_string(string)
        guard let rv = Variant(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Constructs an array of strings `GVariant` from the given array of
    /// strings.
    /// 
    /// If `length` is -1 then `strv` is `nil`-terminated.
    @inlinable public static func new(strv: UnsafePointer<UnsafePointer<gchar>?>!, length: gssize) -> Variant! {
            let result = g_variant_new_strv(strv, length)
        guard let rv = Variant(gconstpointer: gconstpointer(result)) else { return nil }
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
            let result = g_variant_new_take_string(string)
        guard let rv = Variant(gconstpointer: gconstpointer(result)) else { return nil }
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
            let result = g_variant_new_tuple(children, gsize(nChildren))
        guard let rv = Variant(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new uint16 `GVariant` instance.
    @inlinable public static func new(uint16 value: guint16) -> Variant! {
            let result = g_variant_new_uint16(value)
        guard let rv = Variant(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new uint32 `GVariant` instance.
    @inlinable public static func new(uint32 value: guint32) -> Variant! {
            let result = g_variant_new_uint32(value)
        guard let rv = Variant(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new uint64 `GVariant` instance.
    @inlinable public static func new(uint64 value: guint64) -> Variant! {
            let result = g_variant_new_uint64(value)
        guard let rv = Variant(gconstpointer: gconstpointer(result)) else { return nil }
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
        let result = g_variant_parse(type?.variant_type_ptr, text, limit, endptr, &error)
        if let error = error { throw GLibError(error) }
        let maybeRV = Variant(gconstpointer: gconstpointer(result))
        
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
        let result = g_variant_byteswap(variant_ptr)
        guard let rv = VariantRef(gconstpointer: gconstpointer(result)) else { return nil }
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
        let result = g_variant_check_format_string(variant_ptr, formatString, gboolean((copyOnly) ? 1 : 0))
        let rv = ((result) != 0)
        return rv
    }

    /// Classifies `value` according to its top-level type.
    @inlinable func classify() -> GVariantClass {
        let result = g_variant_classify(variant_ptr)
        let rv = result
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
        let result = g_variant_compare(variant_ptr, two.variant_ptr)
        let rv = Int(result)
        return rv
    }

    /// Similar to `g_variant_get_bytestring()` except that instead of
    /// returning a constant string, the string is duplicated.
    /// 
    /// The return value must be freed using `g_free()`.
    @inlinable func dupBytestring(length: UnsafeMutablePointer<gsize>! = nil) -> String! {
        let result = g_variant_dup_bytestring(variant_ptr, length)
        let rv = result.map({ String(cString: $0) })
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
        let result = g_variant_dup_bytestring_array(variant_ptr, length)
        let rv = result
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
        let result = g_variant_dup_objv(variant_ptr, length)
        let rv = result
        return rv
    }

    /// Similar to `g_variant_get_string()` except that instead of returning
    /// a constant string, the string is duplicated.
    /// 
    /// The string will always be UTF-8 encoded.
    /// 
    /// The return value must be freed using `g_free()`.
    @inlinable func dupString(length: UnsafeMutablePointer<gsize>!) -> String! {
        let result = g_variant_dup_string(variant_ptr, length)
        let rv = result.map({ String(cString: $0) })
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
        let result = g_variant_dup_strv(variant_ptr, length)
        let rv = result
        return rv
    }

    /// Checks if `one` and `two` have the same type and value.
    /// 
    /// The types of `one` and `two` are `gconstpointer` only to allow use of
    /// this function with `GHashTable`.  They must each be a `GVariant`.
    @inlinable func equal<VariantT: VariantProtocol>(two: VariantT) -> Bool {
        let result = g_variant_equal(variant_ptr, two.variant_ptr)
        let rv = ((result) != 0)
        return rv
    }


    // *** get() is not available because it has a varargs (...) parameter!


    /// Returns the boolean value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_BOOLEAN`.
    @inlinable func getBoolean() -> Bool {
        let result = g_variant_get_boolean(variant_ptr)
        let rv = ((result) != 0)
        return rv
    }

    /// Returns the byte value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_BYTE`.
    @inlinable func getByte() -> guint8 {
        let result = g_variant_get_byte(variant_ptr)
        let rv = result
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
        let result = g_variant_get_bytestring(variant_ptr)
        let rv = result.map({ String(cString: $0) })
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
        let result = g_variant_get_bytestring_array(variant_ptr, length)
        let rv = result
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
        let result = g_variant_get_child_value(variant_ptr, gsize(index))
        guard let rv = VariantRef(gconstpointer: gconstpointer(result)) else { return nil }
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
    @inlinable func getData() -> gconstpointer? {
        let result = g_variant_get_data(variant_ptr)
        let rv = result
        return rv
    }

    /// Returns a pointer to the serialized form of a `GVariant` instance.
    /// The semantics of this function are exactly the same as
    /// `g_variant_get_data()`, except that the returned `GBytes` holds
    /// a reference to the variant data.
    @inlinable func getDataAsBytes() -> BytesRef! {
        let result = g_variant_get_data_as_bytes(variant_ptr)
        let rv = BytesRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Returns the double precision floating point value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_DOUBLE`.
    @inlinable func getDouble() -> Double {
        let result = g_variant_get_double(variant_ptr)
        let rv = Double(result)
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
        let result = g_variant_get_fixed_array(variant_ptr, nElements, gsize(elementSize))
        let rv = gconstpointer(result)
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
        let result = g_variant_get_handle(variant_ptr)
        let rv = result
        return rv
    }

    /// Returns the 16-bit signed integer value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_INT16`.
    @inlinable func getInt16() -> gint16 {
        let result = g_variant_get_int16(variant_ptr)
        let rv = result
        return rv
    }

    /// Returns the 32-bit signed integer value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_INT32`.
    @inlinable func getInt32() -> gint32 {
        let result = g_variant_get_int32(variant_ptr)
        let rv = result
        return rv
    }

    /// Returns the 64-bit signed integer value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_INT64`.
    @inlinable func getInt64() -> gint64 {
        let result = g_variant_get_int64(variant_ptr)
        let rv = result
        return rv
    }

    /// Given a maybe-typed `GVariant` instance, extract its value.  If the
    /// value is Nothing, then this function returns `nil`.
    @inlinable func getMaybe() -> VariantRef! {
        let result = g_variant_get_maybe(variant_ptr)
        guard let rv = VariantRef(gconstpointer: gconstpointer(result)) else { return nil }
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
        let result = g_variant_get_normal_form(variant_ptr)
        guard let rv = VariantRef(gconstpointer: gconstpointer(result)) else { return nil }
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
        let result = g_variant_get_objv(variant_ptr, length)
        let rv = result
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
        let result = g_variant_get_size(variant_ptr)
        let rv = Int(result)
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
        let result = g_variant_get_string(variant_ptr, length)
        let rv = result.map({ String(cString: $0) })
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
        let result = g_variant_get_strv(variant_ptr, length)
        let rv = result
        return rv
    }

    /// Determines the type of `value`.
    /// 
    /// The return value is valid for the lifetime of `value` and must not
    /// be freed.
    @inlinable func getType() -> VariantTypeRef! {
        let result = g_variant_get_type(variant_ptr)
        let rv = VariantTypeRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Returns the type string of `value`.  Unlike the result of calling
    /// `g_variant_type_peek_string()`, this string is nul-terminated.  This
    /// string belongs to `GVariant` and must not be freed.
    @inlinable func getTypeString() -> String! {
        let result = g_variant_get_type_string(variant_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Returns the 16-bit unsigned integer value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_UINT16`.
    @inlinable func getUint16() -> guint16 {
        let result = g_variant_get_uint16(variant_ptr)
        let rv = result
        return rv
    }

    /// Returns the 32-bit unsigned integer value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_UINT32`.
    @inlinable func getUint32() -> guint32 {
        let result = g_variant_get_uint32(variant_ptr)
        let rv = result
        return rv
    }

    /// Returns the 64-bit unsigned integer value of `value`.
    /// 
    /// It is an error to call this function with a `value` of any type
    /// other than `G_VARIANT_TYPE_UINT64`.
    @inlinable func getUint64() -> guint64 {
        let result = g_variant_get_uint64(variant_ptr)
        let rv = result
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
        let result = g_variant_get_variant(variant_ptr)
        guard let rv = VariantRef(gconstpointer: gconstpointer(result)) else { return nil }
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
        let result = g_variant_hash(variant_ptr)
        let rv = Int(result)
        return rv
    }

    /// Checks if a value has a type matching the provided type.
    @inlinable func isOf<VariantTypeT: VariantTypeProtocol>(type: VariantTypeT) -> Bool {
        let result = g_variant_is_of_type(variant_ptr, type.variant_type_ptr)
        let rv = ((result) != 0)
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
        let result = g_variant_iter_new(variant_ptr)
        let rv = VariantIterRef(gconstpointer: gconstpointer(result))
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
            let result = g_variant_lookup_value(variant_ptr, key, expectedType?.variant_type_ptr)
        guard let rv = VariantRef(gconstpointer: gconstpointer(result)) else { return nil }
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
        let result = g_variant_lookup_value(variant_ptr, key, expectedType?.variant_type_ptr)
        guard let rv = VariantRef(gconstpointer: gconstpointer(result)) else { return nil }
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
        let result = g_variant_n_children(variant_ptr)
        let rv = Int(result)
        return rv
    }

    /// Pretty-prints `value` in the format understood by `g_variant_parse()`.
    /// 
    /// The format is described [here](#gvariant-text).
    /// 
    /// If `type_annotate` is `true`, then type information is included in
    /// the output.
    @inlinable func print(typeAnnotate: Bool) -> String! {
        let result = g_variant_print(variant_ptr, gboolean((typeAnnotate) ? 1 : 0))
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Behaves as `g_variant_print()`, but operates on a `GString`.
    /// 
    /// If `string` is non-`nil` then it is appended to and returned.  Else,
    /// a new empty `GString` is allocated and it is returned.
    @inlinable func print(string: StringRef? = nil, typeAnnotate: Bool) -> StringRef! {
            let result = g_variant_print_string(variant_ptr, string?.gstring_ptr, gboolean((typeAnnotate) ? 1 : 0))
        let rv = StringRef(gconstpointer: gconstpointer(result))
            return rv
    }
    /// Behaves as `g_variant_print()`, but operates on a `GString`.
    /// 
    /// If `string` is non-`nil` then it is appended to and returned.  Else,
    /// a new empty `GString` is allocated and it is returned.
    @inlinable func print<StringTypeT: StringProtocol>(string: StringTypeT?, typeAnnotate: Bool) -> StringRef! {
        let result = g_variant_print_string(variant_ptr, string?.gstring_ptr, gboolean((typeAnnotate) ? 1 : 0))
        let rv = StringRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Increases the reference count of `value`.
    @discardableResult @inlinable func ref() -> VariantRef! {
        let result = g_variant_ref(variant_ptr)
        guard let rv = VariantRef(gconstpointer: gconstpointer(result)) else { return nil }
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
        let result = g_variant_ref_sink(variant_ptr)
        guard let rv = VariantRef(gconstpointer: gconstpointer(result)) else { return nil }
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
        let result = g_variant_take_ref(variant_ptr)
        guard let rv = VariantRef(gconstpointer: gconstpointer(result)) else { return nil }
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
            let result = g_variant_get_boolean(variant_ptr)
        let rv = ((result) != 0)
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
            let result = g_variant_get_byte(variant_ptr)
        let rv = result
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
            let result = g_variant_get_bytestring(variant_ptr)
        let rv = result.map({ String(cString: $0) })
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
    @inlinable var data: gconstpointer? {
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
            let result = g_variant_get_data(variant_ptr)
        let rv = result
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
            let result = g_variant_get_data_as_bytes(variant_ptr)
        let rv = BytesRef(gconstpointer: gconstpointer(result))
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
            let result = g_variant_get_double(variant_ptr)
        let rv = Double(result)
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
            let result = g_variant_get_handle(variant_ptr)
        let rv = result
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
            let result = g_variant_get_int16(variant_ptr)
        let rv = result
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
            let result = g_variant_get_int32(variant_ptr)
        let rv = result
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
            let result = g_variant_get_int64(variant_ptr)
        let rv = result
            return rv
        }
    }

    /// Checks if `value` is a container.
    @inlinable var isContainer: Bool {
        /// Checks if `value` is a container.
        get {
            let result = g_variant_is_container(variant_ptr)
        let rv = ((result) != 0)
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
            let result = g_variant_is_floating(variant_ptr)
        let rv = ((result) != 0)
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
            let result = g_variant_is_normal_form(variant_ptr)
        let rv = ((result) != 0)
            return rv
        }
    }

    /// Given a maybe-typed `GVariant` instance, extract its value.  If the
    /// value is Nothing, then this function returns `nil`.
    @inlinable var maybe: VariantRef! {
        /// Given a maybe-typed `GVariant` instance, extract its value.  If the
        /// value is Nothing, then this function returns `nil`.
        get {
            let result = g_variant_get_maybe(variant_ptr)
        guard let rv = VariantRef(gconstpointer: gconstpointer(result)) else { return nil }
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
            let result = g_variant_get_normal_form(variant_ptr)
        guard let rv = VariantRef(gconstpointer: gconstpointer(result)) else { return nil }
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
            let result = g_variant_get_size(variant_ptr)
        let rv = Int(result)
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
            let result = g_variant_get_type(variant_ptr)
        let rv = VariantTypeRef(gconstpointer: gconstpointer(result))
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
            let result = g_variant_get_type_string(variant_ptr)
        let rv = result.map({ String(cString: $0) })
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
            let result = g_variant_get_uint16(variant_ptr)
        let rv = result
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
            let result = g_variant_get_uint32(variant_ptr)
        let rv = result
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
            let result = g_variant_get_uint64(variant_ptr)
        let rv = result
            return rv
        }
    }

    /// Unboxes `value`.  The result is the `GVariant` instance that was
    /// contained in `value`.
    @inlinable var variant: VariantRef! {
        /// Unboxes `value`.  The result is the `GVariant` instance that was
        /// contained in `value`.
        get {
            let result = g_variant_get_variant(variant_ptr)
        guard let rv = VariantRef(gconstpointer: gconstpointer(result)) else { return nil }
            return rv
        }
    }


}



// MARK: - VariantBuilder Record

/// A utility type for constructing container-type `GVariant` instances.
/// 
/// This is an opaque structure and may only be accessed using the
/// following functions.
/// 
/// `GVariantBuilder` is not threadsafe in any way.  Do not attempt to
/// access it from more than one thread.
///
/// The `VariantBuilderProtocol` protocol exposes the methods and properties of an underlying `GVariantBuilder` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VariantBuilder`.
/// Alternatively, use `VariantBuilderRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol VariantBuilderProtocol {
        /// Untyped pointer to the underlying `GVariantBuilder` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GVariantBuilder` instance.
    var variant_builder_ptr: UnsafeMutablePointer<GVariantBuilder>! { get }

    /// Required Initialiser for types conforming to `VariantBuilderProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A utility type for constructing container-type `GVariant` instances.
/// 
/// This is an opaque structure and may only be accessed using the
/// following functions.
/// 
/// `GVariantBuilder` is not threadsafe in any way.  Do not attempt to
/// access it from more than one thread.
///
/// The `VariantBuilderRef` type acts as a lightweight Swift reference to an underlying `GVariantBuilder` instance.
/// It exposes methods that can operate on this data type through `VariantBuilderProtocol` conformance.
/// Use `VariantBuilderRef` only as an `unowned` reference to an existing `GVariantBuilder` instance.
///
public struct VariantBuilderRef: VariantBuilderProtocol {
        /// Untyped pointer to the underlying `GVariantBuilder` instance.
    /// For type-safe access, use the generated, typed pointer `variant_builder_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension VariantBuilderRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GVariantBuilder>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GVariantBuilder>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GVariantBuilder>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GVariantBuilder>?) {
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

    /// Reference intialiser for a related type that implements `VariantBuilderProtocol`
    @inlinable init<T: VariantBuilderProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Allocates and initialises a new `GVariantBuilder`.
    /// 
    /// You should call `g_variant_builder_unref()` on the return value when it
    /// is no longer needed.  The memory will not be automatically freed by
    /// any other call.
    /// 
    /// In most cases it is easier to place a `GVariantBuilder` directly on
    /// the stack of the calling function and initialise it with
    /// `g_variant_builder_init()`.
    @inlinable init<VariantTypeT: VariantTypeProtocol>( type: VariantTypeT) {
            let result = g_variant_builder_new(type.variant_type_ptr)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }
}

/// A utility type for constructing container-type `GVariant` instances.
/// 
/// This is an opaque structure and may only be accessed using the
/// following functions.
/// 
/// `GVariantBuilder` is not threadsafe in any way.  Do not attempt to
/// access it from more than one thread.
///
/// The `VariantBuilder` type acts as a reference-counted owner of an underlying `GVariantBuilder` instance.
/// It provides the methods that can operate on this data type through `VariantBuilderProtocol` conformance.
/// Use `VariantBuilder` as a strong reference or owner of a `GVariantBuilder` instance.
///
open class VariantBuilder: VariantBuilderProtocol {
        /// Untyped pointer to the underlying `GVariantBuilder` instance.
    /// For type-safe access, use the generated, typed pointer `variant_builder_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantBuilder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GVariantBuilder>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantBuilder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GVariantBuilder>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantBuilder` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantBuilder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantBuilder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GVariantBuilder>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantBuilder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GVariantBuilder>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GVariantBuilder`.
    /// i.e., ownership is transferred to the `VariantBuilder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GVariantBuilder>) {
        ptr = UnsafeMutableRawPointer(op)
        g_variant_builder_ref(ptr.assumingMemoryBound(to: GVariantBuilder.self))
    }

    /// Reference intialiser for a related type that implements `VariantBuilderProtocol`
    /// Will retain `GVariantBuilder`.
    /// - Parameter other: an instance of a related type that implements `VariantBuilderProtocol`
    @inlinable public init<T: VariantBuilderProtocol>(_ other: T) {
        ptr = other.ptr
        g_variant_builder_ref(ptr.assumingMemoryBound(to: GVariantBuilder.self))
    }

    /// Releases the underlying `GVariantBuilder` instance using `g_variant_builder_unref`.
    deinit {
        g_variant_builder_unref(ptr.assumingMemoryBound(to: GVariantBuilder.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_variant_builder_ref(ptr.assumingMemoryBound(to: GVariantBuilder.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_variant_builder_ref(ptr.assumingMemoryBound(to: GVariantBuilder.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_variant_builder_ref(ptr.assumingMemoryBound(to: GVariantBuilder.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_variant_builder_ref(ptr.assumingMemoryBound(to: GVariantBuilder.self))
    }

    /// Allocates and initialises a new `GVariantBuilder`.
    /// 
    /// You should call `g_variant_builder_unref()` on the return value when it
    /// is no longer needed.  The memory will not be automatically freed by
    /// any other call.
    /// 
    /// In most cases it is easier to place a `GVariantBuilder` directly on
    /// the stack of the calling function and initialise it with
    /// `g_variant_builder_init()`.
    @inlinable public init<VariantTypeT: VariantTypeProtocol>( type: VariantTypeT) {
            let result = g_variant_builder_new(type.variant_type_ptr)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no VariantBuilder properties

// MARK: no VariantBuilder signals

// MARK: VariantBuilder has no signals
// MARK: VariantBuilder Record: VariantBuilderProtocol extension (methods and fields)
public extension VariantBuilderProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GVariantBuilder` instance.
    @inlinable var variant_builder_ptr: UnsafeMutablePointer<GVariantBuilder>! { return ptr?.assumingMemoryBound(to: GVariantBuilder.self) }


    // *** add() is not available because it has a varargs (...) parameter!



    // *** addParsed() is not available because it has a varargs (...) parameter!


    /// Adds `value` to `builder`.
    /// 
    /// It is an error to call this function in any way that would create an
    /// inconsistent value to be constructed.  Some examples of this are
    /// putting different types of items into an array, putting the wrong
    /// types or number of items in a tuple, putting more than one value into
    /// a variant, etc.
    /// 
    /// If `value` is a floating reference (see `g_variant_ref_sink()`),
    /// the `builder` instance takes ownership of `value`.
    @inlinable func add<VariantT: VariantProtocol>(value: VariantT) {
        
        g_variant_builder_add_value(variant_builder_ptr, value.variant_ptr)
        
    }

    /// Releases all memory associated with a `GVariantBuilder` without
    /// freeing the `GVariantBuilder` structure itself.
    /// 
    /// It typically only makes sense to do this on a stack-allocated
    /// `GVariantBuilder` if you want to abort building the value part-way
    /// through.  This function need not be called if you call
    /// `g_variant_builder_end()` and it also doesn't need to be called on
    /// builders allocated with `g_variant_builder_new()` (see
    /// `g_variant_builder_unref()` for that).
    /// 
    /// This function leaves the `GVariantBuilder` structure set to all-zeros.
    /// It is valid to call this function on either an initialised
    /// `GVariantBuilder` or one that is set to all-zeros but it is not valid
    /// to call this function on uninitialised memory.
    @inlinable func clear() {
        
        g_variant_builder_clear(variant_builder_ptr)
        
    }

    /// Closes the subcontainer inside the given `builder` that was opened by
    /// the most recent call to `g_variant_builder_open()`.
    /// 
    /// It is an error to call this function in any way that would create an
    /// inconsistent value to be constructed (ie: too few values added to the
    /// subcontainer).
    @inlinable func close() {
        
        g_variant_builder_close(variant_builder_ptr)
        
    }

    /// Ends the builder process and returns the constructed value.
    /// 
    /// It is not permissible to use `builder` in any way after this call
    /// except for reference counting operations (in the case of a
    /// heap-allocated `GVariantBuilder`) or by reinitialising it with
    /// `g_variant_builder_init()` (in the case of stack-allocated). This
    /// means that for the stack-allocated builders there is no need to
    /// call `g_variant_builder_clear()` after the call to
    /// `g_variant_builder_end()`.
    /// 
    /// It is an error to call this function in any way that would create an
    /// inconsistent value to be constructed (ie: insufficient number of
    /// items added to a container with a specific number of children
    /// required).  It is also an error to call this function if the builder
    /// was created with an indefinite array or maybe type and no children
    /// have been added; in this case it is impossible to infer the type of
    /// the empty array.
    @inlinable func end() -> VariantRef! {
        let result = g_variant_builder_end(variant_builder_ptr)
        let rv = VariantRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Initialises a `GVariantBuilder` structure.
    /// 
    /// `type` must be non-`nil`.  It specifies the type of container to
    /// construct.  It can be an indefinite type such as
    /// `G_VARIANT_TYPE_ARRAY` or a definite type such as "as" or "(ii)".
    /// Maybe, array, tuple, dictionary entry and variant-typed values may be
    /// constructed.
    /// 
    /// After the builder is initialised, values are added using
    /// `g_variant_builder_add_value()` or `g_variant_builder_add()`.
    /// 
    /// After all the child values are added, `g_variant_builder_end()` frees
    /// the memory associated with the builder and returns the `GVariant` that
    /// was created.
    /// 
    /// This function completely ignores the previous contents of `builder`.
    /// On one hand this means that it is valid to pass in completely
    /// uninitialised memory.  On the other hand, this means that if you are
    /// initialising over top of an existing `GVariantBuilder` you need to
    /// first call `g_variant_builder_clear()` in order to avoid leaking
    /// memory.
    /// 
    /// You must not call `g_variant_builder_ref()` or
    /// `g_variant_builder_unref()` on a `GVariantBuilder` that was initialised
    /// with this function.  If you ever pass a reference to a
    /// `GVariantBuilder` outside of the control of your own code then you
    /// should assume that the person receiving that reference may try to use
    /// reference counting; you should use `g_variant_builder_new()` instead of
    /// this function.
    @inlinable func init_<VariantTypeT: VariantTypeProtocol>(type: VariantTypeT) {
        
        g_variant_builder_init(variant_builder_ptr, type.variant_type_ptr)
        
    }

    /// Opens a subcontainer inside the given `builder`.  When done adding
    /// items to the subcontainer, `g_variant_builder_close()` must be called. `type`
    /// is the type of the container: so to build a tuple of several values, `type`
    /// must include the tuple itself.
    /// 
    /// It is an error to call this function in any way that would cause an
    /// inconsistent value to be constructed (ie: adding too many values or
    /// a value of an incorrect type).
    /// 
    /// Example of building a nested variant:
    /// (C Language Example):
    /// ```C
    /// GVariantBuilder builder;
    /// guint32 some_number = get_number ();
    /// g_autoptr (GHashTable) some_dict = get_dict ();
    /// GHashTableIter iter;
    /// const gchar *key;
    /// const GVariant *value;
    /// g_autoptr (GVariant) output = NULL;
    /// 
    /// g_variant_builder_init (&builder, G_VARIANT_TYPE ("(ua{sv})"));
    /// g_variant_builder_add (&builder, "u", some_number);
    /// g_variant_builder_open (&builder, G_VARIANT_TYPE ("a{sv}"));
    /// 
    /// g_hash_table_iter_init (&iter, some_dict);
    /// while (g_hash_table_iter_next (&iter, (gpointer *) &key, (gpointer *) &value))
    ///   {
    ///     g_variant_builder_open (&builder, G_VARIANT_TYPE ("{sv}"));
    ///     g_variant_builder_add (&builder, "s", key);
    ///     g_variant_builder_add (&builder, "v", value);
    ///     g_variant_builder_close (&builder);
    ///   }
    /// 
    /// g_variant_builder_close (&builder);
    /// 
    /// output = g_variant_builder_end (&builder);
    /// ```
    /// 
    @inlinable func open<VariantTypeT: VariantTypeProtocol>(type: VariantTypeT) {
        
        g_variant_builder_open(variant_builder_ptr, type.variant_type_ptr)
        
    }

    /// Increases the reference count on `builder`.
    /// 
    /// Don't call this on stack-allocated `GVariantBuilder` instances or bad
    /// things will happen.
    @discardableResult @inlinable func ref() -> VariantBuilderRef! {
        let result = g_variant_builder_ref(variant_builder_ptr)
        guard let rv = VariantBuilderRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Decreases the reference count on `builder`.
    /// 
    /// In the event that there are no more references, releases all memory
    /// associated with the `GVariantBuilder`.
    /// 
    /// Don't call this on stack-allocated `GVariantBuilder` instances or bad
    /// things will happen.
    @inlinable func unref() {
        
        g_variant_builder_unref(variant_builder_ptr)
        
    }


}



// MARK: - VariantDict Record

/// `GVariantDict` is a mutable interface to `GVariant` dictionaries.
/// 
/// It can be used for doing a sequence of dictionary lookups in an
/// efficient way on an existing `GVariant` dictionary or it can be used
/// to construct new dictionaries with a hashtable-like interface.  It
/// can also be used for taking existing dictionaries and modifying them
/// in order to create new ones.
/// 
/// `GVariantDict` can only be used with `G_VARIANT_TYPE_VARDICT`
/// dictionaries.
/// 
/// It is possible to use `GVariantDict` allocated on the stack or on the
/// heap.  When using a stack-allocated `GVariantDict`, you begin with a
/// call to `g_variant_dict_init()` and free the resources with a call to
/// `g_variant_dict_clear()`.
/// 
/// Heap-allocated `GVariantDict` follows normal refcounting rules: you
/// allocate it with `g_variant_dict_new()` and use `g_variant_dict_ref()`
/// and `g_variant_dict_unref()`.
/// 
/// `g_variant_dict_end()` is used to convert the `GVariantDict` back into a
/// dictionary-type `GVariant`.  When used with stack-allocated instances,
/// this also implicitly frees all associated memory, but for
/// heap-allocated instances, you must still call `g_variant_dict_unref()`
/// afterwards.
/// 
/// You will typically want to use a heap-allocated `GVariantDict` when
/// you expose it as part of an API.  For most other uses, the
/// stack-allocated form will be more convenient.
/// 
/// Consider the following two examples that do the same thing in each
/// style: take an existing dictionary and look up the "count" uint32
/// key, adding 1 to it if it is found, or returning an error if the
/// key is not found.  Each returns the new dictionary as a floating
/// `GVariant`.
/// 
/// ## Using a stack-allocated GVariantDict
/// 
/// (C Language Example):
/// ```C
///   GVariant *
///   add_to_count (GVariant  *orig,
///                 GError   **error)
///   {
///     GVariantDict dict;
///     guint32 count;
/// 
///     g_variant_dict_init (&dict, orig);
///     if (!g_variant_dict_lookup (&dict, "count", "u", &count))
///       {
///         g_set_error (...);
///         g_variant_dict_clear (&dict);
///         return NULL;
///       }
/// 
///     g_variant_dict_insert (&dict, "count", "u", count + 1);
/// 
///     return g_variant_dict_end (&dict);
///   }
/// ```
/// 
/// ## Using heap-allocated GVariantDict
/// 
/// (C Language Example):
/// ```C
///   GVariant *
///   add_to_count (GVariant  *orig,
///                 GError   **error)
///   {
///     GVariantDict *dict;
///     GVariant *result;
///     guint32 count;
/// 
///     dict = g_variant_dict_new (orig);
/// 
///     if (g_variant_dict_lookup (dict, "count", "u", &count))
///       {
///         g_variant_dict_insert (dict, "count", "u", count + 1);
///         result = g_variant_dict_end (dict);
///       }
///     else
///       {
///         g_set_error (...);
///         result = NULL;
///       }
/// 
///     g_variant_dict_unref (dict);
/// 
///     return result;
///   }
/// ```
/// 
///
/// The `VariantDictProtocol` protocol exposes the methods and properties of an underlying `GVariantDict` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VariantDict`.
/// Alternatively, use `VariantDictRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol VariantDictProtocol {
        /// Untyped pointer to the underlying `GVariantDict` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GVariantDict` instance.
    var variant_dict_ptr: UnsafeMutablePointer<GVariantDict>! { get }

    /// Required Initialiser for types conforming to `VariantDictProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GVariantDict` is a mutable interface to `GVariant` dictionaries.
/// 
/// It can be used for doing a sequence of dictionary lookups in an
/// efficient way on an existing `GVariant` dictionary or it can be used
/// to construct new dictionaries with a hashtable-like interface.  It
/// can also be used for taking existing dictionaries and modifying them
/// in order to create new ones.
/// 
/// `GVariantDict` can only be used with `G_VARIANT_TYPE_VARDICT`
/// dictionaries.
/// 
/// It is possible to use `GVariantDict` allocated on the stack or on the
/// heap.  When using a stack-allocated `GVariantDict`, you begin with a
/// call to `g_variant_dict_init()` and free the resources with a call to
/// `g_variant_dict_clear()`.
/// 
/// Heap-allocated `GVariantDict` follows normal refcounting rules: you
/// allocate it with `g_variant_dict_new()` and use `g_variant_dict_ref()`
/// and `g_variant_dict_unref()`.
/// 
/// `g_variant_dict_end()` is used to convert the `GVariantDict` back into a
/// dictionary-type `GVariant`.  When used with stack-allocated instances,
/// this also implicitly frees all associated memory, but for
/// heap-allocated instances, you must still call `g_variant_dict_unref()`
/// afterwards.
/// 
/// You will typically want to use a heap-allocated `GVariantDict` when
/// you expose it as part of an API.  For most other uses, the
/// stack-allocated form will be more convenient.
/// 
/// Consider the following two examples that do the same thing in each
/// style: take an existing dictionary and look up the "count" uint32
/// key, adding 1 to it if it is found, or returning an error if the
/// key is not found.  Each returns the new dictionary as a floating
/// `GVariant`.
/// 
/// ## Using a stack-allocated GVariantDict
/// 
/// (C Language Example):
/// ```C
///   GVariant *
///   add_to_count (GVariant  *orig,
///                 GError   **error)
///   {
///     GVariantDict dict;
///     guint32 count;
/// 
///     g_variant_dict_init (&dict, orig);
///     if (!g_variant_dict_lookup (&dict, "count", "u", &count))
///       {
///         g_set_error (...);
///         g_variant_dict_clear (&dict);
///         return NULL;
///       }
/// 
///     g_variant_dict_insert (&dict, "count", "u", count + 1);
/// 
///     return g_variant_dict_end (&dict);
///   }
/// ```
/// 
/// ## Using heap-allocated GVariantDict
/// 
/// (C Language Example):
/// ```C
///   GVariant *
///   add_to_count (GVariant  *orig,
///                 GError   **error)
///   {
///     GVariantDict *dict;
///     GVariant *result;
///     guint32 count;
/// 
///     dict = g_variant_dict_new (orig);
/// 
///     if (g_variant_dict_lookup (dict, "count", "u", &count))
///       {
///         g_variant_dict_insert (dict, "count", "u", count + 1);
///         result = g_variant_dict_end (dict);
///       }
///     else
///       {
///         g_set_error (...);
///         result = NULL;
///       }
/// 
///     g_variant_dict_unref (dict);
/// 
///     return result;
///   }
/// ```
/// 
///
/// The `VariantDictRef` type acts as a lightweight Swift reference to an underlying `GVariantDict` instance.
/// It exposes methods that can operate on this data type through `VariantDictProtocol` conformance.
/// Use `VariantDictRef` only as an `unowned` reference to an existing `GVariantDict` instance.
///
public struct VariantDictRef: VariantDictProtocol {
        /// Untyped pointer to the underlying `GVariantDict` instance.
    /// For type-safe access, use the generated, typed pointer `variant_dict_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension VariantDictRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GVariantDict>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GVariantDict>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GVariantDict>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GVariantDict>?) {
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

    /// Reference intialiser for a related type that implements `VariantDictProtocol`
    @inlinable init<T: VariantDictProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantDictProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantDictProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantDictProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantDictProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantDictProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Allocates and initialises a new `GVariantDict`.
    /// 
    /// You should call `g_variant_dict_unref()` on the return value when it
    /// is no longer needed.  The memory will not be automatically freed by
    /// any other call.
    /// 
    /// In some cases it may be easier to place a `GVariantDict` directly on
    /// the stack of the calling function and initialise it with
    /// `g_variant_dict_init()`.  This is particularly useful when you are
    /// using `GVariantDict` to construct a `GVariant`.
    @inlinable init<VariantT: VariantProtocol>( asv: VariantT?) {
            let result = g_variant_dict_new(asv?.variant_ptr)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }
}

/// `GVariantDict` is a mutable interface to `GVariant` dictionaries.
/// 
/// It can be used for doing a sequence of dictionary lookups in an
/// efficient way on an existing `GVariant` dictionary or it can be used
/// to construct new dictionaries with a hashtable-like interface.  It
/// can also be used for taking existing dictionaries and modifying them
/// in order to create new ones.
/// 
/// `GVariantDict` can only be used with `G_VARIANT_TYPE_VARDICT`
/// dictionaries.
/// 
/// It is possible to use `GVariantDict` allocated on the stack or on the
/// heap.  When using a stack-allocated `GVariantDict`, you begin with a
/// call to `g_variant_dict_init()` and free the resources with a call to
/// `g_variant_dict_clear()`.
/// 
/// Heap-allocated `GVariantDict` follows normal refcounting rules: you
/// allocate it with `g_variant_dict_new()` and use `g_variant_dict_ref()`
/// and `g_variant_dict_unref()`.
/// 
/// `g_variant_dict_end()` is used to convert the `GVariantDict` back into a
/// dictionary-type `GVariant`.  When used with stack-allocated instances,
/// this also implicitly frees all associated memory, but for
/// heap-allocated instances, you must still call `g_variant_dict_unref()`
/// afterwards.
/// 
/// You will typically want to use a heap-allocated `GVariantDict` when
/// you expose it as part of an API.  For most other uses, the
/// stack-allocated form will be more convenient.
/// 
/// Consider the following two examples that do the same thing in each
/// style: take an existing dictionary and look up the "count" uint32
/// key, adding 1 to it if it is found, or returning an error if the
/// key is not found.  Each returns the new dictionary as a floating
/// `GVariant`.
/// 
/// ## Using a stack-allocated GVariantDict
/// 
/// (C Language Example):
/// ```C
///   GVariant *
///   add_to_count (GVariant  *orig,
///                 GError   **error)
///   {
///     GVariantDict dict;
///     guint32 count;
/// 
///     g_variant_dict_init (&dict, orig);
///     if (!g_variant_dict_lookup (&dict, "count", "u", &count))
///       {
///         g_set_error (...);
///         g_variant_dict_clear (&dict);
///         return NULL;
///       }
/// 
///     g_variant_dict_insert (&dict, "count", "u", count + 1);
/// 
///     return g_variant_dict_end (&dict);
///   }
/// ```
/// 
/// ## Using heap-allocated GVariantDict
/// 
/// (C Language Example):
/// ```C
///   GVariant *
///   add_to_count (GVariant  *orig,
///                 GError   **error)
///   {
///     GVariantDict *dict;
///     GVariant *result;
///     guint32 count;
/// 
///     dict = g_variant_dict_new (orig);
/// 
///     if (g_variant_dict_lookup (dict, "count", "u", &count))
///       {
///         g_variant_dict_insert (dict, "count", "u", count + 1);
///         result = g_variant_dict_end (dict);
///       }
///     else
///       {
///         g_set_error (...);
///         result = NULL;
///       }
/// 
///     g_variant_dict_unref (dict);
/// 
///     return result;
///   }
/// ```
/// 
///
/// The `VariantDict` type acts as a reference-counted owner of an underlying `GVariantDict` instance.
/// It provides the methods that can operate on this data type through `VariantDictProtocol` conformance.
/// Use `VariantDict` as a strong reference or owner of a `GVariantDict` instance.
///
open class VariantDict: VariantDictProtocol {
        /// Untyped pointer to the underlying `GVariantDict` instance.
    /// For type-safe access, use the generated, typed pointer `variant_dict_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantDict` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GVariantDict>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantDict` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GVariantDict>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantDict` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantDict` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantDict` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GVariantDict>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantDict` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GVariantDict>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GVariantDict`.
    /// i.e., ownership is transferred to the `VariantDict` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GVariantDict>) {
        ptr = UnsafeMutableRawPointer(op)
        g_variant_dict_ref(ptr.assumingMemoryBound(to: GVariantDict.self))
    }

    /// Reference intialiser for a related type that implements `VariantDictProtocol`
    /// Will retain `GVariantDict`.
    /// - Parameter other: an instance of a related type that implements `VariantDictProtocol`
    @inlinable public init<T: VariantDictProtocol>(_ other: T) {
        ptr = other.ptr
        g_variant_dict_ref(ptr.assumingMemoryBound(to: GVariantDict.self))
    }

    /// Releases the underlying `GVariantDict` instance using `g_variant_dict_unref`.
    deinit {
        g_variant_dict_unref(ptr.assumingMemoryBound(to: GVariantDict.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantDictProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantDictProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_variant_dict_ref(ptr.assumingMemoryBound(to: GVariantDict.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantDictProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantDictProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_variant_dict_ref(ptr.assumingMemoryBound(to: GVariantDict.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantDictProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantDictProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_variant_dict_ref(ptr.assumingMemoryBound(to: GVariantDict.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantDictProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantDictProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_variant_dict_ref(ptr.assumingMemoryBound(to: GVariantDict.self))
    }

    /// Allocates and initialises a new `GVariantDict`.
    /// 
    /// You should call `g_variant_dict_unref()` on the return value when it
    /// is no longer needed.  The memory will not be automatically freed by
    /// any other call.
    /// 
    /// In some cases it may be easier to place a `GVariantDict` directly on
    /// the stack of the calling function and initialise it with
    /// `g_variant_dict_init()`.  This is particularly useful when you are
    /// using `GVariantDict` to construct a `GVariant`.
    @inlinable public init<VariantT: VariantProtocol>( asv: VariantT?) {
            let result = g_variant_dict_new(asv?.variant_ptr)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no VariantDict properties

// MARK: no VariantDict signals

// MARK: VariantDict has no signals
// MARK: VariantDict Record: VariantDictProtocol extension (methods and fields)
public extension VariantDictProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GVariantDict` instance.
    @inlinable var variant_dict_ptr: UnsafeMutablePointer<GVariantDict>! { return ptr?.assumingMemoryBound(to: GVariantDict.self) }

    /// Releases all memory associated with a `GVariantDict` without freeing
    /// the `GVariantDict` structure itself.
    /// 
    /// It typically only makes sense to do this on a stack-allocated
    /// `GVariantDict` if you want to abort building the value part-way
    /// through.  This function need not be called if you call
    /// `g_variant_dict_end()` and it also doesn't need to be called on dicts
    /// allocated with g_variant_dict_new (see `g_variant_dict_unref()` for
    /// that).
    /// 
    /// It is valid to call this function on either an initialised
    /// `GVariantDict` or one that was previously cleared by an earlier call
    /// to `g_variant_dict_clear()` but it is not valid to call this function
    /// on uninitialised memory.
    @inlinable func clear() {
        
        g_variant_dict_clear(variant_dict_ptr)
        
    }

    /// Checks if `key` exists in `dict`.
    @inlinable func contains(key: UnsafePointer<gchar>!) -> Bool {
        let result = g_variant_dict_contains(variant_dict_ptr, key)
        let rv = ((result) != 0)
        return rv
    }

    /// Returns the current value of `dict` as a `GVariant` of type
    /// `G_VARIANT_TYPE_VARDICT`, clearing it in the process.
    /// 
    /// It is not permissible to use `dict` in any way after this call except
    /// for reference counting operations (in the case of a heap-allocated
    /// `GVariantDict`) or by reinitialising it with `g_variant_dict_init()` (in
    /// the case of stack-allocated).
    @inlinable func end() -> VariantRef! {
        let result = g_variant_dict_end(variant_dict_ptr)
        let rv = VariantRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Initialises a `GVariantDict` structure.
    /// 
    /// If `from_asv` is given, it is used to initialise the dictionary.
    /// 
    /// This function completely ignores the previous contents of `dict`.  On
    /// one hand this means that it is valid to pass in completely
    /// uninitialised memory.  On the other hand, this means that if you are
    /// initialising over top of an existing `GVariantDict` you need to first
    /// call `g_variant_dict_clear()` in order to avoid leaking memory.
    /// 
    /// You must not call `g_variant_dict_ref()` or `g_variant_dict_unref()` on a
    /// `GVariantDict` that was initialised with this function.  If you ever
    /// pass a reference to a `GVariantDict` outside of the control of your
    /// own code then you should assume that the person receiving that
    /// reference may try to use reference counting; you should use
    /// `g_variant_dict_new()` instead of this function.
    @inlinable func init_(from asv: VariantRef? = nil) {
            
        g_variant_dict_init(variant_dict_ptr, asv?.variant_ptr)
            
    }
    /// Initialises a `GVariantDict` structure.
    /// 
    /// If `from_asv` is given, it is used to initialise the dictionary.
    /// 
    /// This function completely ignores the previous contents of `dict`.  On
    /// one hand this means that it is valid to pass in completely
    /// uninitialised memory.  On the other hand, this means that if you are
    /// initialising over top of an existing `GVariantDict` you need to first
    /// call `g_variant_dict_clear()` in order to avoid leaking memory.
    /// 
    /// You must not call `g_variant_dict_ref()` or `g_variant_dict_unref()` on a
    /// `GVariantDict` that was initialised with this function.  If you ever
    /// pass a reference to a `GVariantDict` outside of the control of your
    /// own code then you should assume that the person receiving that
    /// reference may try to use reference counting; you should use
    /// `g_variant_dict_new()` instead of this function.
    @inlinable func init_<VariantT: VariantProtocol>(from asv: VariantT?) {
        
        g_variant_dict_init(variant_dict_ptr, asv?.variant_ptr)
        
    }


    // *** insert() is not available because it has a varargs (...) parameter!


    /// Inserts (or replaces) a key in a `GVariantDict`.
    /// 
    /// `value` is consumed if it is floating.
    @inlinable func insertValue<VariantT: VariantProtocol>(key: UnsafePointer<gchar>!, value: VariantT) {
        
        g_variant_dict_insert_value(variant_dict_ptr, key, value.variant_ptr)
        
    }


    // *** lookup() is not available because it has a varargs (...) parameter!


    /// Looks up a value in a `GVariantDict`.
    /// 
    /// If `key` is not found in `dictionary`, `nil` is returned.
    /// 
    /// The `expected_type` string specifies what type of value is expected.
    /// If the value associated with `key` has a different type then `nil` is
    /// returned.
    /// 
    /// If the key is found and the value has the correct type, it is
    /// returned.  If `expected_type` was specified then any non-`nil` return
    /// value will have this type.
    @inlinable func lookupValue(key: UnsafePointer<gchar>!, expectedType: VariantTypeRef? = nil) -> VariantRef! {
            let result = g_variant_dict_lookup_value(variant_dict_ptr, key, expectedType?.variant_type_ptr)
        let rv = VariantRef(gconstpointer: gconstpointer(result))
            return rv
    }
    /// Looks up a value in a `GVariantDict`.
    /// 
    /// If `key` is not found in `dictionary`, `nil` is returned.
    /// 
    /// The `expected_type` string specifies what type of value is expected.
    /// If the value associated with `key` has a different type then `nil` is
    /// returned.
    /// 
    /// If the key is found and the value has the correct type, it is
    /// returned.  If `expected_type` was specified then any non-`nil` return
    /// value will have this type.
    @inlinable func lookupValue<VariantTypeT: VariantTypeProtocol>(key: UnsafePointer<gchar>!, expectedType: VariantTypeT?) -> VariantRef! {
        let result = g_variant_dict_lookup_value(variant_dict_ptr, key, expectedType?.variant_type_ptr)
        let rv = VariantRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Increases the reference count on `dict`.
    /// 
    /// Don't call this on stack-allocated `GVariantDict` instances or bad
    /// things will happen.
    @discardableResult @inlinable func ref() -> VariantDictRef! {
        let result = g_variant_dict_ref(variant_dict_ptr)
        guard let rv = VariantDictRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Removes a key and its associated value from a `GVariantDict`.
    @inlinable func remove(key: UnsafePointer<gchar>!) -> Bool {
        let result = g_variant_dict_remove(variant_dict_ptr, key)
        let rv = ((result) != 0)
        return rv
    }

    /// Decreases the reference count on `dict`.
    /// 
    /// In the event that there are no more references, releases all memory
    /// associated with the `GVariantDict`.
    /// 
    /// Don't call this on stack-allocated `GVariantDict` instances or bad
    /// things will happen.
    @inlinable func unref() {
        
        g_variant_dict_unref(variant_dict_ptr)
        
    }


}



// MARK: - VariantIter Record

/// `GVariantIter` is an opaque data structure and can only be accessed
/// using the following functions.
///
/// The `VariantIterProtocol` protocol exposes the methods and properties of an underlying `GVariantIter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VariantIter`.
/// Alternatively, use `VariantIterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol VariantIterProtocol {
        /// Untyped pointer to the underlying `GVariantIter` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GVariantIter` instance.
    var _ptr: UnsafeMutablePointer<GVariantIter>! { get }

    /// Required Initialiser for types conforming to `VariantIterProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GVariantIter` is an opaque data structure and can only be accessed
/// using the following functions.
///
/// The `VariantIterRef` type acts as a lightweight Swift reference to an underlying `GVariantIter` instance.
/// It exposes methods that can operate on this data type through `VariantIterProtocol` conformance.
/// Use `VariantIterRef` only as an `unowned` reference to an existing `GVariantIter` instance.
///
public struct VariantIterRef: VariantIterProtocol {
        /// Untyped pointer to the underlying `GVariantIter` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension VariantIterRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GVariantIter>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GVariantIter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GVariantIter>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GVariantIter>?) {
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

    /// Reference intialiser for a related type that implements `VariantIterProtocol`
    @inlinable init<T: VariantIterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantIterProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantIterProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantIterProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantIterProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantIterProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// `GVariantIter` is an opaque data structure and can only be accessed
/// using the following functions.
///
/// The `VariantIter` type acts as an owner of an underlying `GVariantIter` instance.
/// It provides the methods that can operate on this data type through `VariantIterProtocol` conformance.
/// Use `VariantIter` as a strong reference or owner of a `GVariantIter` instance.
///
open class VariantIter: VariantIterProtocol {
        /// Untyped pointer to the underlying `GVariantIter` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GVariantIter>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GVariantIter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantIter` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GVariantIter>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GVariantIter>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GVariantIter` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `VariantIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GVariantIter>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GVariantIter, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `VariantIterProtocol`
    /// `GVariantIter` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `VariantIterProtocol`
    @inlinable public init<T: VariantIterProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GVariantIter, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GVariantIter`.
    deinit {
        // no reference counting for GVariantIter, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GVariantIter, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantIterProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantIterProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GVariantIter, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantIterProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantIterProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GVariantIter, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GVariantIter, cannot ref(_ptr)
    }



}

// MARK: no VariantIter properties

// MARK: no VariantIter signals

// MARK: VariantIter has no signals
// MARK: VariantIter Record: VariantIterProtocol extension (methods and fields)
public extension VariantIterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GVariantIter` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GVariantIter>! { return ptr?.assumingMemoryBound(to: GVariantIter.self) }

    /// Creates a new heap-allocated `GVariantIter` to iterate over the
    /// container that was being iterated over by `iter`.  Iteration begins on
    /// the new iterator from the current position of the old iterator but
    /// the two copies are independent past that point.
    /// 
    /// Use `g_variant_iter_free()` to free the return value when you no longer
    /// need it.
    /// 
    /// A reference is taken to the container that `iter` is iterating over
    /// and will be related only when `g_variant_iter_free()` is called.
    @inlinable func copy() -> VariantIterRef! {
        let result = g_variant_iter_copy(_ptr)
        guard let rv = VariantIterRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Frees a heap-allocated `GVariantIter`.  Only call this function on
    /// iterators that were returned by `g_variant_iter_new()` or
    /// `g_variant_iter_copy()`.
    @inlinable func free() {
        
        g_variant_iter_free(_ptr)
        
    }

    /// Initialises (without allocating) a `GVariantIter`.  `iter` may be
    /// completely uninitialised prior to this call; its old value is
    /// ignored.
    /// 
    /// The iterator remains valid for as long as `value` exists, and need not
    /// be freed in any way.
    @inlinable func init_<VariantT: VariantProtocol>(value: VariantT) -> Int {
        let result = g_variant_iter_init(_ptr, value.variant_ptr)
        let rv = Int(result)
        return rv
    }


    // *** loop() is not available because it has a varargs (...) parameter!


    /// Queries the number of child items in the container that we are
    /// iterating over.  This is the total number of items -- not the number
    /// of items remaining.
    /// 
    /// This function might be useful for preallocation of arrays.
    @inlinable func nChildren() -> Int {
        let result = g_variant_iter_n_children(_ptr)
        let rv = Int(result)
        return rv
    }


    // *** next() is not available because it has a varargs (...) parameter!


    /// Gets the next item in the container.  If no more items remain then
    /// `nil` is returned.
    /// 
    /// Use `g_variant_unref()` to drop your reference on the return value when
    /// you no longer need it.
    /// 
    /// Here is an example for iterating with `g_variant_iter_next_value()`:
    /// (C Language Example):
    /// ```C
    ///   // recursively iterate a container
    ///   void
    ///   iterate_container_recursive (GVariant *container)
    ///   {
    ///     GVariantIter iter;
    ///     GVariant *child;
    /// 
    ///     g_variant_iter_init (&iter, container);
    ///     while ((child = g_variant_iter_next_value (&iter)))
    ///       {
    ///         g_print ("type '%s'\n", g_variant_get_type_string (child));
    /// 
    ///         if (g_variant_is_container (child))
    ///           iterate_container_recursive (child);
    /// 
    ///         g_variant_unref (child);
    ///       }
    ///   }
    /// ```
    /// 
    @inlinable func nextValue() -> VariantRef! {
        let result = g_variant_iter_next_value(_ptr)
        let rv = VariantRef(gconstpointer: gconstpointer(result))
        return rv
    }

    // var x is unavailable because x is private

}



// MARK: - VariantType Record

/// This section introduces the GVariant type system. It is based, in
/// large part, on the D-Bus type system, with two major changes and
/// some minor lifting of restrictions. The
/// [D-Bus specification](http://dbus.freedesktop.org/doc/dbus-specification.html),
/// therefore, provides a significant amount of
/// information that is useful when working with GVariant.
/// 
/// The first major change with respect to the D-Bus type system is the
/// introduction of maybe (or "nullable") types.  Any type in GVariant can be
/// converted to a maybe type, in which case, "nothing" (or "null") becomes a
/// valid value.  Maybe types have been added by introducing the
/// character "m" to type strings.
/// 
/// The second major change is that the GVariant type system supports the
/// concept of "indefinite types" -- types that are less specific than
/// the normal types found in D-Bus.  For example, it is possible to speak
/// of "an array of any type" in GVariant, where the D-Bus type system
/// would require you to speak of "an array of integers" or "an array of
/// strings".  Indefinite types have been added by introducing the
/// characters "*", "?" and "r" to type strings.
/// 
/// Finally, all arbitrary restrictions relating to the complexity of
/// types are lifted along with the restriction that dictionary entries
/// may only appear nested inside of arrays.
/// 
/// Just as in D-Bus, GVariant types are described with strings ("type
/// strings").  Subject to the differences mentioned above, these strings
/// are of the same form as those found in D-Bus.  Note, however: D-Bus
/// always works in terms of messages and therefore individual type
/// strings appear nowhere in its interface.  Instead, "signatures"
/// are a concatenation of the strings of the type of each argument in a
/// message.  GVariant deals with single values directly so GVariant type
/// strings always describe the type of exactly one value.  This means
/// that a D-Bus signature string is generally not a valid GVariant type
/// string -- except in the case that it is the signature of a message
/// containing exactly one argument.
/// 
/// An indefinite type is similar in spirit to what may be called an
/// abstract type in other type systems.  No value can exist that has an
/// indefinite type as its type, but values can exist that have types
/// that are subtypes of indefinite types.  That is to say,
/// `g_variant_get_type()` will never return an indefinite type, but
/// calling `g_variant_is_of_type()` with an indefinite type may return
/// `true`.  For example, you cannot have a value that represents "an
/// array of no particular type", but you can have an "array of integers"
/// which certainly matches the type of "an array of no particular type",
/// since "array of integers" is a subtype of "array of no particular
/// type".
/// 
/// This is similar to how instances of abstract classes may not
/// directly exist in other type systems, but instances of their
/// non-abstract subtypes may.  For example, in GTK, no object that has
/// the type of `GtkBin` can exist (since `GtkBin` is an abstract class),
/// but a `GtkWindow` can certainly be instantiated, and you would say
/// that the `GtkWindow` is a `GtkBin` (since `GtkWindow` is a subclass of
/// `GtkBin`).
/// 
/// ## GVariant Type Strings
/// 
/// A GVariant type string can be any of the following:
/// 
/// - any basic type string (listed below)
/// 
/// - "v", "r" or "*"
/// 
/// - one of the characters 'a' or 'm', followed by another type string
/// 
/// - the character '(', followed by a concatenation of zero or more other
///   type strings, followed by the character ')'
/// 
/// - the character '{', followed by a basic type string (see below),
///   followed by another type string, followed by the character '}'
/// 
/// A basic type string describes a basic type (as per
/// `g_variant_type_is_basic()`) and is always a single character in length.
/// The valid basic type strings are "b", "y", "n", "q", "i", "u", "x", "t",
/// "h", "d", "s", "o", "g" and "?".
/// 
/// The above definition is recursive to arbitrary depth. "aaaaai" and
/// "(`ui(nq((y)`))s)" are both valid type strings, as is
/// `"a(aa(ui)`(qna{`ya(yd)`}))". In order to not hit memory limits, `GVariant`
/// imposes a limit on recursion depth of 65 nested containers. This is the
/// limit in the D-Bus specification (64) plus one to allow a `GDBusMessage` to
/// be nested in a top-level tuple.
/// 
/// The meaning of each of the characters is as follows:
/// - `b`: the type string of `G_VARIANT_TYPE_BOOLEAN`; a boolean value.
/// - `y`: the type string of `G_VARIANT_TYPE_BYTE`; a byte.
/// - `n`: the type string of `G_VARIANT_TYPE_INT16`; a signed 16 bit integer.
/// - `q`: the type string of `G_VARIANT_TYPE_UINT16`; an unsigned 16 bit integer.
/// - `i`: the type string of `G_VARIANT_TYPE_INT32`; a signed 32 bit integer.
/// - `u`: the type string of `G_VARIANT_TYPE_UINT32`; an unsigned 32 bit integer.
/// - `x`: the type string of `G_VARIANT_TYPE_INT64`; a signed 64 bit integer.
/// - `t`: the type string of `G_VARIANT_TYPE_UINT64`; an unsigned 64 bit integer.
/// - `h`: the type string of `G_VARIANT_TYPE_HANDLE`; a signed 32 bit value
///   that, by convention, is used as an index into an array of file
///   descriptors that are sent alongside a D-Bus message.
/// - `d`: the type string of `G_VARIANT_TYPE_DOUBLE`; a double precision
///   floating point value.
/// - `s`: the type string of `G_VARIANT_TYPE_STRING`; a string.
/// - `o`: the type string of `G_VARIANT_TYPE_OBJECT_PATH`; a string in the form
///   of a D-Bus object path.
/// - `g`: the type string of `G_VARIANT_TYPE_SIGNATURE`; a string in the form of
///   a D-Bus type signature.
/// - `?`: the type string of `G_VARIANT_TYPE_BASIC`; an indefinite type that
///   is a supertype of any of the basic types.
/// - `v`: the type string of `G_VARIANT_TYPE_VARIANT`; a container type that
///   contain any other type of value.
/// - `a`: used as a prefix on another type string to mean an array of that
///   type; the type string "ai", for example, is the type of an array of
///   signed 32-bit integers.
/// - `m`: used as a prefix on another type string to mean a "maybe", or
///   "nullable", version of that type; the type string "ms", for example,
///   is the type of a value that maybe contains a string, or maybe contains
///   nothing.
/// - `()`: used to enclose zero or more other concatenated type strings to
///   create a tuple type; the type string "(is)", for example, is the type of
///   a pair of an integer and a string.
/// - `r`: the type string of `G_VARIANT_TYPE_TUPLE`; an indefinite type that is
///   a supertype of any tuple type, regardless of the number of items.
/// - `{}`: used to enclose a basic type string concatenated with another type
///   string to create a dictionary entry type, which usually appears inside of
///   an array to form a dictionary; the type string "a{sd}", for example, is
///   the type of a dictionary that maps strings to double precision floating
///   point values.
/// 
///   The first type (the basic type) is the key type and the second type is
///   the value type. The reason that the first type is restricted to being a
///   basic type is so that it can easily be hashed.
/// - `*`: the type string of `G_VARIANT_TYPE_ANY`; the indefinite type that is
///   a supertype of all types.  Note that, as with all type strings, this
///   character represents exactly one type. It cannot be used inside of tuples
///   to mean "any number of items".
/// 
/// Any type string of a container that contains an indefinite type is,
/// itself, an indefinite type. For example, the type string "a*"
/// (corresponding to `G_VARIANT_TYPE_ARRAY`) is an indefinite type
/// that is a supertype of every array type. "(*s)" is a supertype
/// of all tuples that contain exactly two items where the second
/// item is a string.
/// 
/// "a{?*}" is an indefinite type that is a supertype of all arrays
/// containing dictionary entries where the key is any basic type and
/// the value is any type at all.  This is, by definition, a dictionary,
/// so this type string corresponds to `G_VARIANT_TYPE_DICTIONARY`. Note
/// that, due to the restriction that the key of a dictionary entry must
/// be a basic type, "{**}" is not a valid type string.
///
/// The `VariantTypeProtocol` protocol exposes the methods and properties of an underlying `GVariantType` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VariantType`.
/// Alternatively, use `VariantTypeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol VariantTypeProtocol {
        /// Untyped pointer to the underlying `GVariantType` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GVariantType` instance.
    var variant_type_ptr: UnsafeMutablePointer<GVariantType>! { get }

    /// Required Initialiser for types conforming to `VariantTypeProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// This section introduces the GVariant type system. It is based, in
/// large part, on the D-Bus type system, with two major changes and
/// some minor lifting of restrictions. The
/// [D-Bus specification](http://dbus.freedesktop.org/doc/dbus-specification.html),
/// therefore, provides a significant amount of
/// information that is useful when working with GVariant.
/// 
/// The first major change with respect to the D-Bus type system is the
/// introduction of maybe (or "nullable") types.  Any type in GVariant can be
/// converted to a maybe type, in which case, "nothing" (or "null") becomes a
/// valid value.  Maybe types have been added by introducing the
/// character "m" to type strings.
/// 
/// The second major change is that the GVariant type system supports the
/// concept of "indefinite types" -- types that are less specific than
/// the normal types found in D-Bus.  For example, it is possible to speak
/// of "an array of any type" in GVariant, where the D-Bus type system
/// would require you to speak of "an array of integers" or "an array of
/// strings".  Indefinite types have been added by introducing the
/// characters "*", "?" and "r" to type strings.
/// 
/// Finally, all arbitrary restrictions relating to the complexity of
/// types are lifted along with the restriction that dictionary entries
/// may only appear nested inside of arrays.
/// 
/// Just as in D-Bus, GVariant types are described with strings ("type
/// strings").  Subject to the differences mentioned above, these strings
/// are of the same form as those found in D-Bus.  Note, however: D-Bus
/// always works in terms of messages and therefore individual type
/// strings appear nowhere in its interface.  Instead, "signatures"
/// are a concatenation of the strings of the type of each argument in a
/// message.  GVariant deals with single values directly so GVariant type
/// strings always describe the type of exactly one value.  This means
/// that a D-Bus signature string is generally not a valid GVariant type
/// string -- except in the case that it is the signature of a message
/// containing exactly one argument.
/// 
/// An indefinite type is similar in spirit to what may be called an
/// abstract type in other type systems.  No value can exist that has an
/// indefinite type as its type, but values can exist that have types
/// that are subtypes of indefinite types.  That is to say,
/// `g_variant_get_type()` will never return an indefinite type, but
/// calling `g_variant_is_of_type()` with an indefinite type may return
/// `true`.  For example, you cannot have a value that represents "an
/// array of no particular type", but you can have an "array of integers"
/// which certainly matches the type of "an array of no particular type",
/// since "array of integers" is a subtype of "array of no particular
/// type".
/// 
/// This is similar to how instances of abstract classes may not
/// directly exist in other type systems, but instances of their
/// non-abstract subtypes may.  For example, in GTK, no object that has
/// the type of `GtkBin` can exist (since `GtkBin` is an abstract class),
/// but a `GtkWindow` can certainly be instantiated, and you would say
/// that the `GtkWindow` is a `GtkBin` (since `GtkWindow` is a subclass of
/// `GtkBin`).
/// 
/// ## GVariant Type Strings
/// 
/// A GVariant type string can be any of the following:
/// 
/// - any basic type string (listed below)
/// 
/// - "v", "r" or "*"
/// 
/// - one of the characters 'a' or 'm', followed by another type string
/// 
/// - the character '(', followed by a concatenation of zero or more other
///   type strings, followed by the character ')'
/// 
/// - the character '{', followed by a basic type string (see below),
///   followed by another type string, followed by the character '}'
/// 
/// A basic type string describes a basic type (as per
/// `g_variant_type_is_basic()`) and is always a single character in length.
/// The valid basic type strings are "b", "y", "n", "q", "i", "u", "x", "t",
/// "h", "d", "s", "o", "g" and "?".
/// 
/// The above definition is recursive to arbitrary depth. "aaaaai" and
/// "(`ui(nq((y)`))s)" are both valid type strings, as is
/// `"a(aa(ui)`(qna{`ya(yd)`}))". In order to not hit memory limits, `GVariant`
/// imposes a limit on recursion depth of 65 nested containers. This is the
/// limit in the D-Bus specification (64) plus one to allow a `GDBusMessage` to
/// be nested in a top-level tuple.
/// 
/// The meaning of each of the characters is as follows:
/// - `b`: the type string of `G_VARIANT_TYPE_BOOLEAN`; a boolean value.
/// - `y`: the type string of `G_VARIANT_TYPE_BYTE`; a byte.
/// - `n`: the type string of `G_VARIANT_TYPE_INT16`; a signed 16 bit integer.
/// - `q`: the type string of `G_VARIANT_TYPE_UINT16`; an unsigned 16 bit integer.
/// - `i`: the type string of `G_VARIANT_TYPE_INT32`; a signed 32 bit integer.
/// - `u`: the type string of `G_VARIANT_TYPE_UINT32`; an unsigned 32 bit integer.
/// - `x`: the type string of `G_VARIANT_TYPE_INT64`; a signed 64 bit integer.
/// - `t`: the type string of `G_VARIANT_TYPE_UINT64`; an unsigned 64 bit integer.
/// - `h`: the type string of `G_VARIANT_TYPE_HANDLE`; a signed 32 bit value
///   that, by convention, is used as an index into an array of file
///   descriptors that are sent alongside a D-Bus message.
/// - `d`: the type string of `G_VARIANT_TYPE_DOUBLE`; a double precision
///   floating point value.
/// - `s`: the type string of `G_VARIANT_TYPE_STRING`; a string.
/// - `o`: the type string of `G_VARIANT_TYPE_OBJECT_PATH`; a string in the form
///   of a D-Bus object path.
/// - `g`: the type string of `G_VARIANT_TYPE_SIGNATURE`; a string in the form of
///   a D-Bus type signature.
/// - `?`: the type string of `G_VARIANT_TYPE_BASIC`; an indefinite type that
///   is a supertype of any of the basic types.
/// - `v`: the type string of `G_VARIANT_TYPE_VARIANT`; a container type that
///   contain any other type of value.
/// - `a`: used as a prefix on another type string to mean an array of that
///   type; the type string "ai", for example, is the type of an array of
///   signed 32-bit integers.
/// - `m`: used as a prefix on another type string to mean a "maybe", or
///   "nullable", version of that type; the type string "ms", for example,
///   is the type of a value that maybe contains a string, or maybe contains
///   nothing.
/// - `()`: used to enclose zero or more other concatenated type strings to
///   create a tuple type; the type string "(is)", for example, is the type of
///   a pair of an integer and a string.
/// - `r`: the type string of `G_VARIANT_TYPE_TUPLE`; an indefinite type that is
///   a supertype of any tuple type, regardless of the number of items.
/// - `{}`: used to enclose a basic type string concatenated with another type
///   string to create a dictionary entry type, which usually appears inside of
///   an array to form a dictionary; the type string "a{sd}", for example, is
///   the type of a dictionary that maps strings to double precision floating
///   point values.
/// 
///   The first type (the basic type) is the key type and the second type is
///   the value type. The reason that the first type is restricted to being a
///   basic type is so that it can easily be hashed.
/// - `*`: the type string of `G_VARIANT_TYPE_ANY`; the indefinite type that is
///   a supertype of all types.  Note that, as with all type strings, this
///   character represents exactly one type. It cannot be used inside of tuples
///   to mean "any number of items".
/// 
/// Any type string of a container that contains an indefinite type is,
/// itself, an indefinite type. For example, the type string "a*"
/// (corresponding to `G_VARIANT_TYPE_ARRAY`) is an indefinite type
/// that is a supertype of every array type. "(*s)" is a supertype
/// of all tuples that contain exactly two items where the second
/// item is a string.
/// 
/// "a{?*}" is an indefinite type that is a supertype of all arrays
/// containing dictionary entries where the key is any basic type and
/// the value is any type at all.  This is, by definition, a dictionary,
/// so this type string corresponds to `G_VARIANT_TYPE_DICTIONARY`. Note
/// that, due to the restriction that the key of a dictionary entry must
/// be a basic type, "{**}" is not a valid type string.
///
/// The `VariantTypeRef` type acts as a lightweight Swift reference to an underlying `GVariantType` instance.
/// It exposes methods that can operate on this data type through `VariantTypeProtocol` conformance.
/// Use `VariantTypeRef` only as an `unowned` reference to an existing `GVariantType` instance.
///
public struct VariantTypeRef: VariantTypeProtocol {
        /// Untyped pointer to the underlying `GVariantType` instance.
    /// For type-safe access, use the generated, typed pointer `variant_type_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension VariantTypeRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GVariantType>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GVariantType>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GVariantType>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GVariantType>?) {
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

    /// Reference intialiser for a related type that implements `VariantTypeProtocol`
    @inlinable init<T: VariantTypeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantTypeProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantTypeProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantTypeProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantTypeProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantTypeProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GVariantType` corresponding to the type string given
    /// by `type_string`.  It is appropriate to call `g_variant_type_free()` on
    /// the return value.
    /// 
    /// It is a programmer error to call this function with an invalid type
    /// string.  Use `g_variant_type_string_is_valid()` if you are unsure.
    @inlinable init( typeString: UnsafePointer<gchar>!) {
            let result = g_variant_type_new(typeString)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }
    @inlinable static func checked(arg0: UnsafePointer<gchar>!) -> VariantTypeRef! {
            let result = g_variant_type_checked_(arg0)
        guard let rv = VariantTypeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }
}

/// This section introduces the GVariant type system. It is based, in
/// large part, on the D-Bus type system, with two major changes and
/// some minor lifting of restrictions. The
/// [D-Bus specification](http://dbus.freedesktop.org/doc/dbus-specification.html),
/// therefore, provides a significant amount of
/// information that is useful when working with GVariant.
/// 
/// The first major change with respect to the D-Bus type system is the
/// introduction of maybe (or "nullable") types.  Any type in GVariant can be
/// converted to a maybe type, in which case, "nothing" (or "null") becomes a
/// valid value.  Maybe types have been added by introducing the
/// character "m" to type strings.
/// 
/// The second major change is that the GVariant type system supports the
/// concept of "indefinite types" -- types that are less specific than
/// the normal types found in D-Bus.  For example, it is possible to speak
/// of "an array of any type" in GVariant, where the D-Bus type system
/// would require you to speak of "an array of integers" or "an array of
/// strings".  Indefinite types have been added by introducing the
/// characters "*", "?" and "r" to type strings.
/// 
/// Finally, all arbitrary restrictions relating to the complexity of
/// types are lifted along with the restriction that dictionary entries
/// may only appear nested inside of arrays.
/// 
/// Just as in D-Bus, GVariant types are described with strings ("type
/// strings").  Subject to the differences mentioned above, these strings
/// are of the same form as those found in D-Bus.  Note, however: D-Bus
/// always works in terms of messages and therefore individual type
/// strings appear nowhere in its interface.  Instead, "signatures"
/// are a concatenation of the strings of the type of each argument in a
/// message.  GVariant deals with single values directly so GVariant type
/// strings always describe the type of exactly one value.  This means
/// that a D-Bus signature string is generally not a valid GVariant type
/// string -- except in the case that it is the signature of a message
/// containing exactly one argument.
/// 
/// An indefinite type is similar in spirit to what may be called an
/// abstract type in other type systems.  No value can exist that has an
/// indefinite type as its type, but values can exist that have types
/// that are subtypes of indefinite types.  That is to say,
/// `g_variant_get_type()` will never return an indefinite type, but
/// calling `g_variant_is_of_type()` with an indefinite type may return
/// `true`.  For example, you cannot have a value that represents "an
/// array of no particular type", but you can have an "array of integers"
/// which certainly matches the type of "an array of no particular type",
/// since "array of integers" is a subtype of "array of no particular
/// type".
/// 
/// This is similar to how instances of abstract classes may not
/// directly exist in other type systems, but instances of their
/// non-abstract subtypes may.  For example, in GTK, no object that has
/// the type of `GtkBin` can exist (since `GtkBin` is an abstract class),
/// but a `GtkWindow` can certainly be instantiated, and you would say
/// that the `GtkWindow` is a `GtkBin` (since `GtkWindow` is a subclass of
/// `GtkBin`).
/// 
/// ## GVariant Type Strings
/// 
/// A GVariant type string can be any of the following:
/// 
/// - any basic type string (listed below)
/// 
/// - "v", "r" or "*"
/// 
/// - one of the characters 'a' or 'm', followed by another type string
/// 
/// - the character '(', followed by a concatenation of zero or more other
///   type strings, followed by the character ')'
/// 
/// - the character '{', followed by a basic type string (see below),
///   followed by another type string, followed by the character '}'
/// 
/// A basic type string describes a basic type (as per
/// `g_variant_type_is_basic()`) and is always a single character in length.
/// The valid basic type strings are "b", "y", "n", "q", "i", "u", "x", "t",
/// "h", "d", "s", "o", "g" and "?".
/// 
/// The above definition is recursive to arbitrary depth. "aaaaai" and
/// "(`ui(nq((y)`))s)" are both valid type strings, as is
/// `"a(aa(ui)`(qna{`ya(yd)`}))". In order to not hit memory limits, `GVariant`
/// imposes a limit on recursion depth of 65 nested containers. This is the
/// limit in the D-Bus specification (64) plus one to allow a `GDBusMessage` to
/// be nested in a top-level tuple.
/// 
/// The meaning of each of the characters is as follows:
/// - `b`: the type string of `G_VARIANT_TYPE_BOOLEAN`; a boolean value.
/// - `y`: the type string of `G_VARIANT_TYPE_BYTE`; a byte.
/// - `n`: the type string of `G_VARIANT_TYPE_INT16`; a signed 16 bit integer.
/// - `q`: the type string of `G_VARIANT_TYPE_UINT16`; an unsigned 16 bit integer.
/// - `i`: the type string of `G_VARIANT_TYPE_INT32`; a signed 32 bit integer.
/// - `u`: the type string of `G_VARIANT_TYPE_UINT32`; an unsigned 32 bit integer.
/// - `x`: the type string of `G_VARIANT_TYPE_INT64`; a signed 64 bit integer.
/// - `t`: the type string of `G_VARIANT_TYPE_UINT64`; an unsigned 64 bit integer.
/// - `h`: the type string of `G_VARIANT_TYPE_HANDLE`; a signed 32 bit value
///   that, by convention, is used as an index into an array of file
///   descriptors that are sent alongside a D-Bus message.
/// - `d`: the type string of `G_VARIANT_TYPE_DOUBLE`; a double precision
///   floating point value.
/// - `s`: the type string of `G_VARIANT_TYPE_STRING`; a string.
/// - `o`: the type string of `G_VARIANT_TYPE_OBJECT_PATH`; a string in the form
///   of a D-Bus object path.
/// - `g`: the type string of `G_VARIANT_TYPE_SIGNATURE`; a string in the form of
///   a D-Bus type signature.
/// - `?`: the type string of `G_VARIANT_TYPE_BASIC`; an indefinite type that
///   is a supertype of any of the basic types.
/// - `v`: the type string of `G_VARIANT_TYPE_VARIANT`; a container type that
///   contain any other type of value.
/// - `a`: used as a prefix on another type string to mean an array of that
///   type; the type string "ai", for example, is the type of an array of
///   signed 32-bit integers.
/// - `m`: used as a prefix on another type string to mean a "maybe", or
///   "nullable", version of that type; the type string "ms", for example,
///   is the type of a value that maybe contains a string, or maybe contains
///   nothing.
/// - `()`: used to enclose zero or more other concatenated type strings to
///   create a tuple type; the type string "(is)", for example, is the type of
///   a pair of an integer and a string.
/// - `r`: the type string of `G_VARIANT_TYPE_TUPLE`; an indefinite type that is
///   a supertype of any tuple type, regardless of the number of items.
/// - `{}`: used to enclose a basic type string concatenated with another type
///   string to create a dictionary entry type, which usually appears inside of
///   an array to form a dictionary; the type string "a{sd}", for example, is
///   the type of a dictionary that maps strings to double precision floating
///   point values.
/// 
///   The first type (the basic type) is the key type and the second type is
///   the value type. The reason that the first type is restricted to being a
///   basic type is so that it can easily be hashed.
/// - `*`: the type string of `G_VARIANT_TYPE_ANY`; the indefinite type that is
///   a supertype of all types.  Note that, as with all type strings, this
///   character represents exactly one type. It cannot be used inside of tuples
///   to mean "any number of items".
/// 
/// Any type string of a container that contains an indefinite type is,
/// itself, an indefinite type. For example, the type string "a*"
/// (corresponding to `G_VARIANT_TYPE_ARRAY`) is an indefinite type
/// that is a supertype of every array type. "(*s)" is a supertype
/// of all tuples that contain exactly two items where the second
/// item is a string.
/// 
/// "a{?*}" is an indefinite type that is a supertype of all arrays
/// containing dictionary entries where the key is any basic type and
/// the value is any type at all.  This is, by definition, a dictionary,
/// so this type string corresponds to `G_VARIANT_TYPE_DICTIONARY`. Note
/// that, due to the restriction that the key of a dictionary entry must
/// be a basic type, "{**}" is not a valid type string.
///
/// The `VariantType` type acts as an owner of an underlying `GVariantType` instance.
/// It provides the methods that can operate on this data type through `VariantTypeProtocol` conformance.
/// Use `VariantType` as a strong reference or owner of a `GVariantType` instance.
///
open class VariantType: VariantTypeProtocol {
        /// Untyped pointer to the underlying `GVariantType` instance.
    /// For type-safe access, use the generated, typed pointer `variant_type_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GVariantType>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GVariantType>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantType` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GVariantType>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GVariantType>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GVariantType` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `VariantType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GVariantType>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GVariantType, cannot ref(variant_type_ptr)
    }

    /// Reference intialiser for a related type that implements `VariantTypeProtocol`
    /// `GVariantType` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `VariantTypeProtocol`
    @inlinable public init<T: VariantTypeProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GVariantType, cannot ref(variant_type_ptr)
    }

    /// Do-nothing destructor for `GVariantType`.
    deinit {
        // no reference counting for GVariantType, cannot unref(variant_type_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantTypeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantTypeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GVariantType, cannot ref(variant_type_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantTypeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantTypeProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GVariantType, cannot ref(variant_type_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantTypeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantTypeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GVariantType, cannot ref(variant_type_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantTypeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantTypeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GVariantType, cannot ref(variant_type_ptr)
    }

    /// Creates a new `GVariantType` corresponding to the type string given
    /// by `type_string`.  It is appropriate to call `g_variant_type_free()` on
    /// the return value.
    /// 
    /// It is a programmer error to call this function with an invalid type
    /// string.  Use `g_variant_type_string_is_valid()` if you are unsure.
    @inlinable public init( typeString: UnsafePointer<gchar>!) {
            let result = g_variant_type_new(typeString)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    @inlinable public static func checked(arg0: UnsafePointer<gchar>!) -> VariantType! {
            let result = g_variant_type_checked_(arg0)
        guard let rv = VariantType(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

}

// MARK: no VariantType properties

// MARK: no VariantType signals

// MARK: VariantType has no signals
// MARK: VariantType Record: VariantTypeProtocol extension (methods and fields)
public extension VariantTypeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GVariantType` instance.
    @inlinable var variant_type_ptr: UnsafeMutablePointer<GVariantType>! { return ptr?.assumingMemoryBound(to: GVariantType.self) }

    /// Makes a copy of a `GVariantType`.  It is appropriate to call
    /// `g_variant_type_free()` on the return value.  `type` may not be `nil`.
    @inlinable func copy() -> VariantTypeRef! {
        let result = g_variant_type_copy(variant_type_ptr)
        guard let rv = VariantTypeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Returns a newly-allocated copy of the type string corresponding to
    /// `type`.  The returned string is nul-terminated.  It is appropriate to
    /// call `g_free()` on the return value.
    @inlinable func dupString() -> String! {
        let result = g_variant_type_dup_string(variant_type_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Determines the element type of an array or maybe type.
    /// 
    /// This function may only be used with array or maybe types.
    @inlinable func element() -> VariantTypeRef! {
        let result = g_variant_type_element(variant_type_ptr)
        guard let rv = VariantTypeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Compares `type1` and `type2` for equality.
    /// 
    /// Only returns `true` if the types are exactly equal.  Even if one type
    /// is an indefinite type and the other is a subtype of it, `false` will
    /// be returned if they are not exactly equal.  If you want to check for
    /// subtypes, use `g_variant_type_is_subtype_of()`.
    /// 
    /// The argument types of `type1` and `type2` are only `gconstpointer` to
    /// allow use with `GHashTable` without function pointer casting.  For
    /// both arguments, a valid `GVariantType` must be provided.
    @inlinable func equal<VariantTypeT: VariantTypeProtocol>(type2: VariantTypeT) -> Bool {
        let result = g_variant_type_equal(variant_type_ptr, type2.variant_type_ptr)
        let rv = ((result) != 0)
        return rv
    }

    /// Determines the first item type of a tuple or dictionary entry
    /// type.
    /// 
    /// This function may only be used with tuple or dictionary entry types,
    /// but must not be used with the generic tuple type
    /// `G_VARIANT_TYPE_TUPLE`.
    /// 
    /// In the case of a dictionary entry type, this returns the type of
    /// the key.
    /// 
    /// `nil` is returned in case of `type` being `G_VARIANT_TYPE_UNIT`.
    /// 
    /// This call, together with `g_variant_type_next()` provides an iterator
    /// interface over tuple and dictionary entry types.
    @inlinable func first() -> VariantTypeRef! {
        let result = g_variant_type_first(variant_type_ptr)
        guard let rv = VariantTypeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Frees a `GVariantType` that was allocated with
    /// `g_variant_type_copy()`, `g_variant_type_new()` or one of the container
    /// type constructor functions.
    /// 
    /// In the case that `type` is `nil`, this function does nothing.
    /// 
    /// Since 2.24
    @inlinable func free() {
        
        g_variant_type_free(variant_type_ptr)
        
    }

    /// Returns the length of the type string corresponding to the given
    /// `type`.  This function must be used to determine the valid extent of
    /// the memory region returned by `g_variant_type_peek_string()`.
    @inlinable func getStringLength() -> Int {
        let result = g_variant_type_get_string_length(variant_type_ptr)
        let rv = Int(result)
        return rv
    }

    /// Hashes `type`.
    /// 
    /// The argument type of `type` is only `gconstpointer` to allow use with
    /// `GHashTable` without function pointer casting.  A valid
    /// `GVariantType` must be provided.
    @inlinable func hash() -> Int {
        let result = g_variant_type_hash(variant_type_ptr)
        let rv = Int(result)
        return rv
    }

    /// Checks if `type` is a subtype of `supertype`.
    /// 
    /// This function returns `true` if `type` is a subtype of `supertype`.  All
    /// types are considered to be subtypes of themselves.  Aside from that,
    /// only indefinite types can have subtypes.
    @inlinable func isSubtypeOf<VariantTypeT: VariantTypeProtocol>(supertype: VariantTypeT) -> Bool {
        let result = g_variant_type_is_subtype_of(variant_type_ptr, supertype.variant_type_ptr)
        let rv = ((result) != 0)
        return rv
    }

    /// Determines the key type of a dictionary entry type.
    /// 
    /// This function may only be used with a dictionary entry type.  Other
    /// than the additional restriction, this call is equivalent to
    /// `g_variant_type_first()`.
    @inlinable func key() -> VariantTypeRef! {
        let result = g_variant_type_key(variant_type_ptr)
        guard let rv = VariantTypeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Determines the number of items contained in a tuple or
    /// dictionary entry type.
    /// 
    /// This function may only be used with tuple or dictionary entry types,
    /// but must not be used with the generic tuple type
    /// `G_VARIANT_TYPE_TUPLE`.
    /// 
    /// In the case of a dictionary entry type, this function will always
    /// return 2.
    @inlinable func nItems() -> Int {
        let result = g_variant_type_n_items(variant_type_ptr)
        let rv = Int(result)
        return rv
    }

    /// Determines the next item type of a tuple or dictionary entry
    /// type.
    /// 
    /// `type` must be the result of a previous call to
    /// `g_variant_type_first()` or `g_variant_type_next()`.
    /// 
    /// If called on the key type of a dictionary entry then this call
    /// returns the value type.  If called on the value type of a dictionary
    /// entry then this call returns `nil`.
    /// 
    /// For tuples, `nil` is returned when `type` is the last item in a tuple.
    @inlinable func next() -> VariantTypeRef! {
        let result = g_variant_type_next(variant_type_ptr)
        guard let rv = VariantTypeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Returns the type string corresponding to the given `type`.  The
    /// result is not nul-terminated; in order to determine its length you
    /// must call `g_variant_type_get_string_length()`.
    /// 
    /// To get a nul-terminated string, see `g_variant_type_dup_string()`.
    @inlinable func peekString() -> String! {
        let result = g_variant_type_peek_string(variant_type_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Determines the value type of a dictionary entry type.
    /// 
    /// This function may only be used with a dictionary entry type.
    @inlinable func value() -> VariantTypeRef! {
        let result = g_variant_type_value(variant_type_ptr)
        guard let rv = VariantTypeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
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
    /// 
    /// There may be implementation specific restrictions on deeply nested values,
    /// which would result in a `G_VARIANT_PARSE_ERROR_RECURSION` error. `GVariant` is
    /// guaranteed to handle nesting up to at least 64 levels.
    @inlinable func variantParse(text: UnsafePointer<gchar>!, limit: UnsafePointer<gchar>? = nil, endptr: UnsafeMutablePointer<UnsafePointer<gchar>?>? = nil) throws -> VariantRef! {
        var error: UnsafeMutablePointer<GError>?
        let result = g_variant_parse(variant_type_ptr, text, limit, endptr, &error)
        if let error = error { throw GLibError(error) }
        let rv = VariantRef(gconstpointer: gconstpointer(result))
        return rv
    }
    /// Determines if the given `type` is an array type.  This is true if the
    /// type string for `type` starts with an 'a'.
    /// 
    /// This function returns `true` for any indefinite type for which every
    /// definite subtype is an array type -- `G_VARIANT_TYPE_ARRAY`, for
    /// example.
    @inlinable var isArray: Bool {
        /// Determines if the given `type` is an array type.  This is true if the
        /// type string for `type` starts with an 'a'.
        /// 
        /// This function returns `true` for any indefinite type for which every
        /// definite subtype is an array type -- `G_VARIANT_TYPE_ARRAY`, for
        /// example.
        get {
            let result = g_variant_type_is_array(variant_type_ptr)
        let rv = ((result) != 0)
            return rv
        }
    }

    /// Determines if the given `type` is a basic type.
    /// 
    /// Basic types are booleans, bytes, integers, doubles, strings, object
    /// paths and signatures.
    /// 
    /// Only a basic type may be used as the key of a dictionary entry.
    /// 
    /// This function returns `false` for all indefinite types except
    /// `G_VARIANT_TYPE_BASIC`.
    @inlinable var isBasic: Bool {
        /// Determines if the given `type` is a basic type.
        /// 
        /// Basic types are booleans, bytes, integers, doubles, strings, object
        /// paths and signatures.
        /// 
        /// Only a basic type may be used as the key of a dictionary entry.
        /// 
        /// This function returns `false` for all indefinite types except
        /// `G_VARIANT_TYPE_BASIC`.
        get {
            let result = g_variant_type_is_basic(variant_type_ptr)
        let rv = ((result) != 0)
            return rv
        }
    }

    /// Determines if the given `type` is a container type.
    /// 
    /// Container types are any array, maybe, tuple, or dictionary
    /// entry types plus the variant type.
    /// 
    /// This function returns `true` for any indefinite type for which every
    /// definite subtype is a container -- `G_VARIANT_TYPE_ARRAY`, for
    /// example.
    @inlinable var isContainer: Bool {
        /// Determines if the given `type` is a container type.
        /// 
        /// Container types are any array, maybe, tuple, or dictionary
        /// entry types plus the variant type.
        /// 
        /// This function returns `true` for any indefinite type for which every
        /// definite subtype is a container -- `G_VARIANT_TYPE_ARRAY`, for
        /// example.
        get {
            let result = g_variant_type_is_container(variant_type_ptr)
        let rv = ((result) != 0)
            return rv
        }
    }

    /// Determines if the given `type` is definite (ie: not indefinite).
    /// 
    /// A type is definite if its type string does not contain any indefinite
    /// type characters ('*', '?', or 'r').
    /// 
    /// A `GVariant` instance may not have an indefinite type, so calling
    /// this function on the result of `g_variant_get_type()` will always
    /// result in `true` being returned.  Calling this function on an
    /// indefinite type like `G_VARIANT_TYPE_ARRAY`, however, will result in
    /// `false` being returned.
    @inlinable var isDefinite: Bool {
        /// Determines if the given `type` is definite (ie: not indefinite).
        /// 
        /// A type is definite if its type string does not contain any indefinite
        /// type characters ('*', '?', or 'r').
        /// 
        /// A `GVariant` instance may not have an indefinite type, so calling
        /// this function on the result of `g_variant_get_type()` will always
        /// result in `true` being returned.  Calling this function on an
        /// indefinite type like `G_VARIANT_TYPE_ARRAY`, however, will result in
        /// `false` being returned.
        get {
            let result = g_variant_type_is_definite(variant_type_ptr)
        let rv = ((result) != 0)
            return rv
        }
    }

    /// Determines if the given `type` is a dictionary entry type.  This is
    /// true if the type string for `type` starts with a '{'.
    /// 
    /// This function returns `true` for any indefinite type for which every
    /// definite subtype is a dictionary entry type --
    /// `G_VARIANT_TYPE_DICT_ENTRY`, for example.
    @inlinable var isDictEntry: Bool {
        /// Determines if the given `type` is a dictionary entry type.  This is
        /// true if the type string for `type` starts with a '{'.
        /// 
        /// This function returns `true` for any indefinite type for which every
        /// definite subtype is a dictionary entry type --
        /// `G_VARIANT_TYPE_DICT_ENTRY`, for example.
        get {
            let result = g_variant_type_is_dict_entry(variant_type_ptr)
        let rv = ((result) != 0)
            return rv
        }
    }

    /// Determines if the given `type` is a maybe type.  This is true if the
    /// type string for `type` starts with an 'm'.
    /// 
    /// This function returns `true` for any indefinite type for which every
    /// definite subtype is a maybe type -- `G_VARIANT_TYPE_MAYBE`, for
    /// example.
    @inlinable var isMaybe: Bool {
        /// Determines if the given `type` is a maybe type.  This is true if the
        /// type string for `type` starts with an 'm'.
        /// 
        /// This function returns `true` for any indefinite type for which every
        /// definite subtype is a maybe type -- `G_VARIANT_TYPE_MAYBE`, for
        /// example.
        get {
            let result = g_variant_type_is_maybe(variant_type_ptr)
        let rv = ((result) != 0)
            return rv
        }
    }

    /// Determines if the given `type` is a tuple type.  This is true if the
    /// type string for `type` starts with a '(' or if `type` is
    /// `G_VARIANT_TYPE_TUPLE`.
    /// 
    /// This function returns `true` for any indefinite type for which every
    /// definite subtype is a tuple type -- `G_VARIANT_TYPE_TUPLE`, for
    /// example.
    @inlinable var isTuple: Bool {
        /// Determines if the given `type` is a tuple type.  This is true if the
        /// type string for `type` starts with a '(' or if `type` is
        /// `G_VARIANT_TYPE_TUPLE`.
        /// 
        /// This function returns `true` for any indefinite type for which every
        /// definite subtype is a tuple type -- `G_VARIANT_TYPE_TUPLE`, for
        /// example.
        get {
            let result = g_variant_type_is_tuple(variant_type_ptr)
        let rv = ((result) != 0)
            return rv
        }
    }

    /// Determines if the given `type` is the variant type.
    @inlinable var isVariant: Bool {
        /// Determines if the given `type` is the variant type.
        get {
            let result = g_variant_type_is_variant(variant_type_ptr)
        let rv = ((result) != 0)
            return rv
        }
    }

    /// Returns the length of the type string corresponding to the given
    /// `type`.  This function must be used to determine the valid extent of
    /// the memory region returned by `g_variant_type_peek_string()`.
    @inlinable var stringLength: Int {
        /// Returns the length of the type string corresponding to the given
        /// `type`.  This function must be used to determine the valid extent of
        /// the memory region returned by `g_variant_type_peek_string()`.
        get {
            let result = g_variant_type_get_string_length(variant_type_ptr)
        let rv = Int(result)
            return rv
        }
    }


}



