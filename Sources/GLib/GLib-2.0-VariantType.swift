import CGLib

// MARK: - VariantType Record

/// The `VariantTypeProtocol` protocol exposes the methods and properties of an underlying `GVariantType` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VariantType`.
/// Alternatively, use `VariantTypeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
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
/// are of the same form as those found in DBus.  Note, however: D-Bus
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
public protocol VariantTypeProtocol {
        /// Untyped pointer to the underlying `GVariantType` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GVariantType` instance.
    var variant_type_ptr: UnsafeMutablePointer<GVariantType> { get }
}

/// The `VariantTypeRef` type acts as a lightweight Swift reference to an underlying `GVariantType` instance.
/// It exposes methods that can operate on this data type through `VariantTypeProtocol` conformance.
/// Use `VariantTypeRef` only as an `unowned` reference to an existing `GVariantType` instance.
///
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
/// are of the same form as those found in DBus.  Note, however: D-Bus
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
public struct VariantTypeRef: VariantTypeProtocol {
        /// Untyped pointer to the underlying `GVariantType` instance.
    /// For type-safe access, use the generated, typed pointer `variant_type_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension VariantTypeRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GVariantType>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `VariantTypeProtocol`
    init<T: VariantTypeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantTypeProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantTypeProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantTypeProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantTypeProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantTypeProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GVariantType` corresponding to the type string given
    /// by `type_string`.  It is appropriate to call `g_variant_type_free()` on
    /// the return value.
    /// 
    /// It is a programmer error to call this function with an invalid type
    /// string.  Use `g_variant_type_string_is_valid()` if you are unsure.
    init( type_string: UnsafePointer<gchar>) {
        let rv: UnsafeMutablePointer<GVariantType>! = cast(g_variant_type_new(type_string))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }

    /// Constructs a new tuple type, from `items`.
    /// 
    /// `length` is the number of items in `items`, or -1 to indicate that
    /// `items` is `nil`-terminated.
    /// 
    /// It is appropriate to call `g_variant_type_free()` on the return value.
    init(tuple items: UnsafePointer<UnsafePointer<GVariantType>>, length: CInt) {
        let rv: UnsafeMutablePointer<GVariantType>! = cast(g_variant_type_new_tuple(cast(items), gint(length)))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
    /// Constructs a new tuple type, from `items`.
    /// 
    /// `length` is the number of items in `items`, or -1 to indicate that
    /// `items` is `nil`-terminated.
    /// 
    /// It is appropriate to call `g_variant_type_free()` on the return value.
    static func new(tuple items: UnsafePointer<UnsafePointer<GVariantType>>, length: CInt) -> VariantTypeRef! {
        let rv: UnsafeMutablePointer<GVariantType>! = cast(g_variant_type_new_tuple(cast(items), gint(length)))
        return rv.map { VariantTypeRef(cast($0)) }
    }

    static func checked_(arg0: UnsafePointer<gchar>) -> VariantTypeRef! {
        let rv: UnsafePointer<GVariantType>! = cast(g_variant_type_checked_(arg0))
        return rv.map { VariantTypeRef(cast($0)) }
    }
}

/// The `VariantType` type acts as an owner of an underlying `GVariantType` instance.
/// It provides the methods that can operate on this data type through `VariantTypeProtocol` conformance.
/// Use `VariantType` as a strong reference or owner of a `GVariantType` instance.
///
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
/// are of the same form as those found in DBus.  Note, however: D-Bus
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
open class VariantType: VariantTypeProtocol {
        /// Untyped pointer to the underlying `GVariantType` instance.
    /// For type-safe access, use the generated, typed pointer `variant_type_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantType` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GVariantType>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GVariantType` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `VariantType` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GVariantType>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GVariantType, cannot ref(cast(variant_type_ptr))
    }

    /// Reference intialiser for a related type that implements `VariantTypeProtocol`
    /// `GVariantType` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `VariantTypeProtocol`
    public init<T: VariantTypeProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.variant_type_ptr)
        // no reference counting for GVariantType, cannot ref(cast(variant_type_ptr))
    }

    /// Do-nothing destructor for `GVariantType`.
    deinit {
        // no reference counting for GVariantType, cannot unref(cast(variant_type_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantTypeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantTypeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GVariantType, cannot ref(cast(variant_type_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantTypeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantTypeProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GVariantType, cannot ref(cast(variant_type_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantTypeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantTypeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GVariantType, cannot ref(cast(variant_type_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantTypeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantTypeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GVariantType, cannot ref(cast(variant_type_ptr))
    }

    /// Creates a new `GVariantType` corresponding to the type string given
    /// by `type_string`.  It is appropriate to call `g_variant_type_free()` on
    /// the return value.
    /// 
    /// It is a programmer error to call this function with an invalid type
    /// string.  Use `g_variant_type_string_is_valid()` if you are unsure.
    public init( type_string: UnsafePointer<gchar>) {
        let rv: UnsafeMutablePointer<GVariantType>! = cast(g_variant_type_new(type_string))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }

    /// Constructs a new tuple type, from `items`.
    /// 
    /// `length` is the number of items in `items`, or -1 to indicate that
    /// `items` is `nil`-terminated.
    /// 
    /// It is appropriate to call `g_variant_type_free()` on the return value.
    public init(tuple items: UnsafePointer<UnsafePointer<GVariantType>>, length: CInt) {
        let rv: UnsafeMutablePointer<GVariantType>! = cast(g_variant_type_new_tuple(cast(items), gint(length)))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }

    /// Constructs a new tuple type, from `items`.
    /// 
    /// `length` is the number of items in `items`, or -1 to indicate that
    /// `items` is `nil`-terminated.
    /// 
    /// It is appropriate to call `g_variant_type_free()` on the return value.
    public static func new(tuple items: UnsafePointer<UnsafePointer<GVariantType>>, length: CInt) -> VariantType! {
        let rv: UnsafeMutablePointer<GVariantType>! = cast(g_variant_type_new_tuple(cast(items), gint(length)))
        return rv.map { VariantType(cast($0)) }
    }

    public static func checked_(arg0: UnsafePointer<gchar>) -> VariantType! {
        let rv: UnsafePointer<GVariantType>! = cast(g_variant_type_checked_(arg0))
        return rv.map { VariantType(cast($0)) }
    }

}

// MARK: no VariantType properties

// MARK: no VariantType signals


// MARK: VariantType Record: VariantTypeProtocol extension (methods and fields)
public extension VariantTypeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GVariantType` instance.
    var variant_type_ptr: UnsafeMutablePointer<GVariantType> { return ptr.assumingMemoryBound(to: GVariantType.self) }

    /// Makes a copy of a `GVariantType`.  It is appropriate to call
    /// `g_variant_type_free()` on the return value.  `type` may not be `nil`.
    func copy() -> UnsafeMutablePointer<GVariantType>! {
        let rv: UnsafeMutablePointer<GVariantType>! = cast(g_variant_type_copy(cast(variant_type_ptr)))
        return cast(rv)
    }

    /// Returns a newly-allocated copy of the type string corresponding to
    /// `type`.  The returned string is nul-terminated.  It is appropriate to
    /// call `g_free()` on the return value.
    func dupString() -> String! {
        let rv: String! = cast(g_variant_type_dup_string(cast(variant_type_ptr)))
        return cast(rv)
    }

    /// Determines the element type of an array or maybe type.
    /// 
    /// This function may only be used with array or maybe types.
    func element() -> UnsafePointer<GVariantType>! {
        let rv: UnsafePointer<GVariantType>! = cast(g_variant_type_element(cast(variant_type_ptr)))
        return cast(rv)
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
    func equal(type2: VariantTypeProtocol) -> Bool {
        let rv = g_variant_type_equal(cast(variant_type_ptr), cast(type2.ptr))
        return Bool(rv != 0)
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
    func first() -> UnsafePointer<GVariantType>! {
        let rv: UnsafePointer<GVariantType>! = cast(g_variant_type_first(cast(variant_type_ptr)))
        return cast(rv)
    }

    /// Frees a `GVariantType` that was allocated with
    /// `g_variant_type_copy()`, `g_variant_type_new()` or one of the container
    /// type constructor functions.
    /// 
    /// In the case that `type` is `nil`, this function does nothing.
    /// 
    /// Since 2.24
    func free() {
        g_variant_type_free(cast(variant_type_ptr))
    
    }

    /// Returns the length of the type string corresponding to the given
    /// `type`.  This function must be used to determine the valid extent of
    /// the memory region returned by `g_variant_type_peek_string()`.
    func getStringLength() -> Int {
        let rv = g_variant_type_get_string_length(cast(variant_type_ptr))
        return Int(rv)
    }

    /// Hashes `type`.
    /// 
    /// The argument type of `type` is only `gconstpointer` to allow use with
    /// `GHashTable` without function pointer casting.  A valid
    /// `GVariantType` must be provided.
    func hash() -> Int {
        let rv: Int = cast(g_variant_type_hash(cast(variant_type_ptr)))
        return Int(rv)
    }

    /// Checks if `type` is a subtype of `supertype`.
    /// 
    /// This function returns `true` if `type` is a subtype of `supertype`.  All
    /// types are considered to be subtypes of themselves.  Aside from that,
    /// only indefinite types can have subtypes.
    func isSubtypeOf(supertype: VariantTypeProtocol) -> Bool {
        let rv = g_variant_type_is_subtype_of(cast(variant_type_ptr), cast(supertype.ptr))
        return Bool(rv != 0)
    }

    /// Determines the key type of a dictionary entry type.
    /// 
    /// This function may only be used with a dictionary entry type.  Other
    /// than the additional restriction, this call is equivalent to
    /// `g_variant_type_first()`.
    func key() -> UnsafePointer<GVariantType>! {
        let rv: UnsafePointer<GVariantType>! = cast(g_variant_type_key(cast(variant_type_ptr)))
        return cast(rv)
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
    func nItems() -> Int {
        let rv = g_variant_type_n_items(cast(variant_type_ptr))
        return Int(rv)
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
    func next() -> UnsafePointer<GVariantType>! {
        let rv: UnsafePointer<GVariantType>! = cast(g_variant_type_next(cast(variant_type_ptr)))
        return cast(rv)
    }

    /// Returns the type string corresponding to the given `type`.  The
    /// result is not nul-terminated; in order to determine its length you
    /// must call `g_variant_type_get_string_length()`.
    /// 
    /// To get a nul-terminated string, see `g_variant_type_dup_string()`.
    func peekString() -> String! {
        let rv: String! = cast(g_variant_type_peek_string(cast(variant_type_ptr)))
        return cast(rv)
    }

    /// Determines the value type of a dictionary entry type.
    /// 
    /// This function may only be used with a dictionary entry type.
    func value() -> UnsafePointer<GVariantType>! {
        let rv: UnsafePointer<GVariantType>! = cast(g_variant_type_value(cast(variant_type_ptr)))
        return cast(rv)
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
    func variantParse(text: UnsafePointer<gchar>, limit: UnsafePointer<gchar>, endptr: UnsafePointer<UnsafePointer<gchar>>) throws -> UnsafeMutablePointer<GVariant>! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GVariant>! = cast(g_variant_parse(cast(variant_type_ptr), text, limit, cast(endptr), &error))
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }
    /// Determines if the given `type` is an array type.  This is true if the
    /// type string for `type` starts with an 'a'.
    /// 
    /// This function returns `true` for any indefinite type for which every
    /// definite subtype is an array type -- `G_VARIANT_TYPE_ARRAY`, for
    /// example.
    var isArray: Bool {
        /// Determines if the given `type` is an array type.  This is true if the
        /// type string for `type` starts with an 'a'.
        /// 
        /// This function returns `true` for any indefinite type for which every
        /// definite subtype is an array type -- `G_VARIANT_TYPE_ARRAY`, for
        /// example.
        get {
            let rv = g_variant_type_is_array(cast(variant_type_ptr))
            return Bool(rv != 0)
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
    var isBasic: Bool {
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
            let rv = g_variant_type_is_basic(cast(variant_type_ptr))
            return Bool(rv != 0)
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
    var isContainer: Bool {
        /// Determines if the given `type` is a container type.
        /// 
        /// Container types are any array, maybe, tuple, or dictionary
        /// entry types plus the variant type.
        /// 
        /// This function returns `true` for any indefinite type for which every
        /// definite subtype is a container -- `G_VARIANT_TYPE_ARRAY`, for
        /// example.
        get {
            let rv = g_variant_type_is_container(cast(variant_type_ptr))
            return Bool(rv != 0)
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
    var isDefinite: Bool {
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
            let rv = g_variant_type_is_definite(cast(variant_type_ptr))
            return Bool(rv != 0)
        }
    }

    /// Determines if the given `type` is a dictionary entry type.  This is
    /// true if the type string for `type` starts with a '{'.
    /// 
    /// This function returns `true` for any indefinite type for which every
    /// definite subtype is a dictionary entry type --
    /// `G_VARIANT_TYPE_DICT_ENTRY`, for example.
    var isDictEntry: Bool {
        /// Determines if the given `type` is a dictionary entry type.  This is
        /// true if the type string for `type` starts with a '{'.
        /// 
        /// This function returns `true` for any indefinite type for which every
        /// definite subtype is a dictionary entry type --
        /// `G_VARIANT_TYPE_DICT_ENTRY`, for example.
        get {
            let rv = g_variant_type_is_dict_entry(cast(variant_type_ptr))
            return Bool(rv != 0)
        }
    }

    /// Determines if the given `type` is a maybe type.  This is true if the
    /// type string for `type` starts with an 'm'.
    /// 
    /// This function returns `true` for any indefinite type for which every
    /// definite subtype is a maybe type -- `G_VARIANT_TYPE_MAYBE`, for
    /// example.
    var isMaybe: Bool {
        /// Determines if the given `type` is a maybe type.  This is true if the
        /// type string for `type` starts with an 'm'.
        /// 
        /// This function returns `true` for any indefinite type for which every
        /// definite subtype is a maybe type -- `G_VARIANT_TYPE_MAYBE`, for
        /// example.
        get {
            let rv = g_variant_type_is_maybe(cast(variant_type_ptr))
            return Bool(rv != 0)
        }
    }

    /// Determines if the given `type` is a tuple type.  This is true if the
    /// type string for `type` starts with a '(' or if `type` is
    /// `G_VARIANT_TYPE_TUPLE`.
    /// 
    /// This function returns `true` for any indefinite type for which every
    /// definite subtype is a tuple type -- `G_VARIANT_TYPE_TUPLE`, for
    /// example.
    var isTuple: Bool {
        /// Determines if the given `type` is a tuple type.  This is true if the
        /// type string for `type` starts with a '(' or if `type` is
        /// `G_VARIANT_TYPE_TUPLE`.
        /// 
        /// This function returns `true` for any indefinite type for which every
        /// definite subtype is a tuple type -- `G_VARIANT_TYPE_TUPLE`, for
        /// example.
        get {
            let rv = g_variant_type_is_tuple(cast(variant_type_ptr))
            return Bool(rv != 0)
        }
    }

    /// Determines if the given `type` is the variant type.
    var isVariant: Bool {
        /// Determines if the given `type` is the variant type.
        get {
            let rv = g_variant_type_is_variant(cast(variant_type_ptr))
            return Bool(rv != 0)
        }
    }

    /// Returns the length of the type string corresponding to the given
    /// `type`.  This function must be used to determine the valid extent of
    /// the memory region returned by `g_variant_type_peek_string()`.
    var stringLength: Int {
        /// Returns the length of the type string corresponding to the given
        /// `type`.  This function must be used to determine the valid extent of
        /// the memory region returned by `g_variant_type_peek_string()`.
        get {
            let rv = g_variant_type_get_string_length(cast(variant_type_ptr))
            return Int(rv)
        }
    }


}



