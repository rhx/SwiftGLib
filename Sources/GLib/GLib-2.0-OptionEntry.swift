import CGLib

// MARK: - OptionEntry Record

/// The `OptionEntryProtocol` protocol exposes the methods and properties of an underlying `GOptionEntry` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `OptionEntry`.
/// Alternatively, use `OptionEntryRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A GOptionEntry struct defines a single option. To have an effect, they
/// must be added to a `GOptionGroup` with `g_option_context_add_main_entries()`
/// or `g_option_group_add_entries()`.
public protocol OptionEntryProtocol {
        /// Untyped pointer to the underlying `GOptionEntry` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GOptionEntry` instance.
    var _ptr: UnsafeMutablePointer<GOptionEntry> { get }
}

/// The `OptionEntryRef` type acts as a lightweight Swift reference to an underlying `GOptionEntry` instance.
/// It exposes methods that can operate on this data type through `OptionEntryProtocol` conformance.
/// Use `OptionEntryRef` only as an `unowned` reference to an existing `GOptionEntry` instance.
///
/// A GOptionEntry struct defines a single option. To have an effect, they
/// must be added to a `GOptionGroup` with `g_option_context_add_main_entries()`
/// or `g_option_group_add_entries()`.
public struct OptionEntryRef: OptionEntryProtocol {
        /// Untyped pointer to the underlying `GOptionEntry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension OptionEntryRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GOptionEntry>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `OptionEntryProtocol`
    init<T: OptionEntryProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionEntryProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionEntryProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionEntryProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionEntryProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionEntryProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `OptionEntry` type acts as an owner of an underlying `GOptionEntry` instance.
/// It provides the methods that can operate on this data type through `OptionEntryProtocol` conformance.
/// Use `OptionEntry` as a strong reference or owner of a `GOptionEntry` instance.
///
/// A GOptionEntry struct defines a single option. To have an effect, they
/// must be added to a `GOptionGroup` with `g_option_context_add_main_entries()`
/// or `g_option_group_add_entries()`.
open class OptionEntry: OptionEntryProtocol {
        /// Untyped pointer to the underlying `GOptionEntry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OptionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GOptionEntry>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GOptionEntry` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `OptionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GOptionEntry>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GOptionEntry, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `OptionEntryProtocol`
    /// `GOptionEntry` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `OptionEntryProtocol`
    public init<T: OptionEntryProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GOptionEntry, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GOptionEntry`.
    deinit {
        // no reference counting for GOptionEntry, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionEntryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionEntryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GOptionEntry, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionEntryProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionEntryProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GOptionEntry, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionEntryProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionEntryProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GOptionEntry, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionEntryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionEntryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GOptionEntry, cannot ref(cast(_ptr))
    }



}

// MARK: no OptionEntry properties

// MARK: no OptionEntry signals


// MARK: OptionEntry Record: OptionEntryProtocol extension (methods and fields)
public extension OptionEntryProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GOptionEntry` instance.
    var _ptr: UnsafeMutablePointer<GOptionEntry> { return ptr.assumingMemoryBound(to: GOptionEntry.self) }


    /// The long name of an option can be used to specify it
    ///     in a commandline as `--long_name`. Every option must have a
    ///     long name. To resolve conflicts if multiple option groups contain
    ///     the same long name, it is also possible to specify the option as
    ///     `--groupname-long_name`.
    var longName: UnsafePointer<CChar> {
        /// The long name of an option can be used to specify it
        ///     in a commandline as `--long_name`. Every option must have a
        ///     long name. To resolve conflicts if multiple option groups contain
        ///     the same long name, it is also possible to specify the option as
        ///     `--groupname-long_name`.
        get {
            let rv: UnsafePointer<CChar> = cast(_ptr.pointee.long_name)
            return rv
        }
        /// The long name of an option can be used to specify it
        ///     in a commandline as `--long_name`. Every option must have a
        ///     long name. To resolve conflicts if multiple option groups contain
        ///     the same long name, it is also possible to specify the option as
        ///     `--groupname-long_name`.
         set {
            _ptr.pointee.long_name = cast(newValue)
        }
    }

    /// If an option has a short name, it can be specified
    ///     `-short_name` in a commandline. `short_name` must be  a printable
    ///     ASCII character different from '-', or zero if the option has no
    ///     short name.
    var shortName: gchar {
        /// If an option has a short name, it can be specified
        ///     `-short_name` in a commandline. `short_name` must be  a printable
        ///     ASCII character different from '-', or zero if the option has no
        ///     short name.
        get {
            let rv: gchar = cast(_ptr.pointee.short_name)
            return rv
        }
        /// If an option has a short name, it can be specified
        ///     `-short_name` in a commandline. `short_name` must be  a printable
        ///     ASCII character different from '-', or zero if the option has no
        ///     short name.
         set {
            _ptr.pointee.short_name = cast(newValue)
        }
    }

    /// Flags from `GOptionFlags`
    var flags: Int {
        /// Flags from `GOptionFlags`
        get {
            let rv: Int = cast(_ptr.pointee.flags)
            return rv
        }
        /// Flags from `GOptionFlags`
         set {
            _ptr.pointee.flags = gint(newValue)
        }
    }

    /// The type of the option, as a `GOptionArg`
    var arg: GOptionArg {
        /// The type of the option, as a `GOptionArg`
        get {
            let rv: GOptionArg = cast(_ptr.pointee.arg)
            return rv
        }
        /// The type of the option, as a `GOptionArg`
         set {
            _ptr.pointee.arg = cast(newValue)
        }
    }

    /// If the `arg` type is `G_OPTION_ARG_CALLBACK`, then `arg_data`
    ///     must point to a `GOptionArgFunc` callback function, which will be
    ///     called to handle the extra argument. Otherwise, `arg_data` is a
    ///     pointer to a location to store the value, the required type of
    ///     the location depends on the `arg` type:
    ///     - `G_OPTION_ARG_NONE:` `gboolean`
    ///     - `G_OPTION_ARG_STRING:` `gchar`*
    ///     - `G_OPTION_ARG_INT:` `gint`
    ///     - `G_OPTION_ARG_FILENAME:` `gchar`*
    ///     - `G_OPTION_ARG_STRING_ARRAY:` `gchar`**
    ///     - `G_OPTION_ARG_FILENAME_ARRAY:` `gchar`**
    ///     - `G_OPTION_ARG_DOUBLE:` `gdouble`
    ///     If `arg` type is `G_OPTION_ARG_STRING` or `G_OPTION_ARG_FILENAME`,
    ///     the location will contain a newly allocated string if the option
    ///     was given. That string needs to be freed by the callee using `g_free()`.
    ///     Likewise if `arg` type is `G_OPTION_ARG_STRING_ARRAY` or
    ///     `G_OPTION_ARG_FILENAME_ARRAY`, the data should be freed using `g_strfreev()`.
    var argData: UnsafeMutableRawPointer {
        /// If the `arg` type is `G_OPTION_ARG_CALLBACK`, then `arg_data`
        ///     must point to a `GOptionArgFunc` callback function, which will be
        ///     called to handle the extra argument. Otherwise, `arg_data` is a
        ///     pointer to a location to store the value, the required type of
        ///     the location depends on the `arg` type:
        ///     - `G_OPTION_ARG_NONE:` `gboolean`
        ///     - `G_OPTION_ARG_STRING:` `gchar`*
        ///     - `G_OPTION_ARG_INT:` `gint`
        ///     - `G_OPTION_ARG_FILENAME:` `gchar`*
        ///     - `G_OPTION_ARG_STRING_ARRAY:` `gchar`**
        ///     - `G_OPTION_ARG_FILENAME_ARRAY:` `gchar`**
        ///     - `G_OPTION_ARG_DOUBLE:` `gdouble`
        ///     If `arg` type is `G_OPTION_ARG_STRING` or `G_OPTION_ARG_FILENAME`,
        ///     the location will contain a newly allocated string if the option
        ///     was given. That string needs to be freed by the callee using `g_free()`.
        ///     Likewise if `arg` type is `G_OPTION_ARG_STRING_ARRAY` or
        ///     `G_OPTION_ARG_FILENAME_ARRAY`, the data should be freed using `g_strfreev()`.
        get {
            let rv: UnsafeMutableRawPointer = cast(_ptr.pointee.arg_data)
            return rv
        }
        /// If the `arg` type is `G_OPTION_ARG_CALLBACK`, then `arg_data`
        ///     must point to a `GOptionArgFunc` callback function, which will be
        ///     called to handle the extra argument. Otherwise, `arg_data` is a
        ///     pointer to a location to store the value, the required type of
        ///     the location depends on the `arg` type:
        ///     - `G_OPTION_ARG_NONE:` `gboolean`
        ///     - `G_OPTION_ARG_STRING:` `gchar`*
        ///     - `G_OPTION_ARG_INT:` `gint`
        ///     - `G_OPTION_ARG_FILENAME:` `gchar`*
        ///     - `G_OPTION_ARG_STRING_ARRAY:` `gchar`**
        ///     - `G_OPTION_ARG_FILENAME_ARRAY:` `gchar`**
        ///     - `G_OPTION_ARG_DOUBLE:` `gdouble`
        ///     If `arg` type is `G_OPTION_ARG_STRING` or `G_OPTION_ARG_FILENAME`,
        ///     the location will contain a newly allocated string if the option
        ///     was given. That string needs to be freed by the callee using `g_free()`.
        ///     Likewise if `arg` type is `G_OPTION_ARG_STRING_ARRAY` or
        ///     `G_OPTION_ARG_FILENAME_ARRAY`, the data should be freed using `g_strfreev()`.
         set {
            _ptr.pointee.arg_data = cast(newValue)
        }
    }

    /// the description for the option in `--help`
    ///     output. The `description` is translated using the `translate_func`
    ///     of the group, see `g_option_group_set_translation_domain()`.
    var description: UnsafePointer<CChar> {
        /// the description for the option in `--help`
        ///     output. The `description` is translated using the `translate_func`
        ///     of the group, see `g_option_group_set_translation_domain()`.
        get {
            let rv: UnsafePointer<CChar> = cast(_ptr.pointee.description)
            return rv
        }
        /// the description for the option in `--help`
        ///     output. The `description` is translated using the `translate_func`
        ///     of the group, see `g_option_group_set_translation_domain()`.
         set {
            _ptr.pointee.description = cast(newValue)
        }
    }

    /// The placeholder to use for the extra argument parsed
    ///     by the option in `--help` output. The `arg_description` is translated
    ///     using the `translate_func` of the group, see
    ///     `g_option_group_set_translation_domain()`.
    var argDescription: UnsafePointer<CChar> {
        /// The placeholder to use for the extra argument parsed
        ///     by the option in `--help` output. The `arg_description` is translated
        ///     using the `translate_func` of the group, see
        ///     `g_option_group_set_translation_domain()`.
        get {
            let rv: UnsafePointer<CChar> = cast(_ptr.pointee.arg_description)
            return rv
        }
        /// The placeholder to use for the extra argument parsed
        ///     by the option in `--help` output. The `arg_description` is translated
        ///     using the `translate_func` of the group, see
        ///     `g_option_group_set_translation_domain()`.
         set {
            _ptr.pointee.arg_description = cast(newValue)
        }
    }

}



