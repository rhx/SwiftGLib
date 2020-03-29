import CGLib

// MARK: - OptionGroup Record

/// The `OptionGroupProtocol` protocol exposes the methods and properties of an underlying `GOptionGroup` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `OptionGroup`.
/// Alternatively, use `OptionGroupRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GOptionGroup` struct defines the options in a single
/// group. The struct has only private fields and should not be directly accessed.
/// 
/// All options in a group share the same translation function. Libraries which
/// need to parse commandline options are expected to provide a function for
/// getting a `GOptionGroup` holding their options, which
/// the application can then add to its `GOptionContext`.
public protocol OptionGroupProtocol {
    /// Untyped pointer to the underlying `GOptionGroup` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GOptionGroup` instance.
    var option_group_ptr: UnsafeMutablePointer<GOptionGroup> { get }
}

/// The `OptionGroupRef` type acts as a lightweight Swift reference to an underlying `GOptionGroup` instance.
/// It exposes methods that can operate on this data type through `OptionGroupProtocol` conformance.
/// Use `OptionGroupRef` only as an `unowned` reference to an existing `GOptionGroup` instance.
///
/// A `GOptionGroup` struct defines the options in a single
/// group. The struct has only private fields and should not be directly accessed.
/// 
/// All options in a group share the same translation function. Libraries which
/// need to parse commandline options are expected to provide a function for
/// getting a `GOptionGroup` holding their options, which
/// the application can then add to its `GOptionContext`.
public struct OptionGroupRef: OptionGroupProtocol {
    /// Untyped pointer to the underlying `GOptionGroup` instance.
    /// For type-safe access, use the generated, typed pointer `option_group_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension OptionGroupRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GOptionGroup>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `OptionGroupProtocol`
    init<T: OptionGroupProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionGroupProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionGroupProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionGroupProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionGroupProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionGroupProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GOptionGroup`.
    init( name: UnsafePointer<gchar>, description: UnsafePointer<gchar>, helpDescription help_description: UnsafePointer<gchar>, userData user_data: UnsafeMutableRawPointer, destroy: @escaping DestroyNotify) {
        let rv = g_option_group_new(name, description, help_description, cast(user_data), destroy)
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
}

/// The `OptionGroup` type acts as a reference-counted owner of an underlying `GOptionGroup` instance.
/// It provides the methods that can operate on this data type through `OptionGroupProtocol` conformance.
/// Use `OptionGroup` as a strong reference or owner of a `GOptionGroup` instance.
///
/// A `GOptionGroup` struct defines the options in a single
/// group. The struct has only private fields and should not be directly accessed.
/// 
/// All options in a group share the same translation function. Libraries which
/// need to parse commandline options are expected to provide a function for
/// getting a `GOptionGroup` holding their options, which
/// the application can then add to its `GOptionContext`.
open class OptionGroup: OptionGroupProtocol {
    /// Untyped pointer to the underlying `GOptionGroup` instance.
    /// For type-safe access, use the generated, typed pointer `option_group_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OptionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GOptionGroup>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GOptionGroup`.
    /// i.e., ownership is transferred to the `OptionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GOptionGroup>) {
        ptr = UnsafeMutableRawPointer(op)
        g_option_group_ref(cast(option_group_ptr))
    }

    /// Reference intialiser for a related type that implements `OptionGroupProtocol`
    /// Will retain `GOptionGroup`.
    /// - Parameter other: an instance of a related type that implements `OptionGroupProtocol`
    public init<T: OptionGroupProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.option_group_ptr)
        g_option_group_ref(cast(option_group_ptr))
    }

    /// Releases the underlying `GOptionGroup` instance using `g_option_group_unref`.
    deinit {
        g_option_group_unref(cast(option_group_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionGroupProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionGroupProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_option_group_ref(cast(option_group_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionGroupProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionGroupProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_option_group_ref(cast(option_group_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionGroupProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionGroupProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_option_group_ref(cast(option_group_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionGroupProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionGroupProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_option_group_ref(cast(option_group_ptr))
    }

    /// Creates a new `GOptionGroup`.
    public init( name: UnsafePointer<gchar>, description: UnsafePointer<gchar>, helpDescription help_description: UnsafePointer<gchar>, userData user_data: UnsafeMutableRawPointer, destroy: @escaping DestroyNotify) {
        let rv = g_option_group_new(name, description, help_description, cast(user_data), destroy)
        ptr = UnsafeMutableRawPointer(cast(rv))
    }


}

// MARK: - no OptionGroup properties

// MARK: - no signals


public extension OptionGroupProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GOptionGroup` instance.
    var option_group_ptr: UnsafeMutablePointer<GOptionGroup> { return ptr.assumingMemoryBound(to: GOptionGroup.self) }

    /// Adds the options specified in `entries` to `group`.
    func add(entries: UnsafePointer<GOptionEntry>) {
        g_option_group_add_entries(cast(option_group_ptr), cast(entries))
    
    }

    /// Frees a `GOptionGroup`. Note that you must not free groups
    /// which have been added to a `GOptionContext`.
    ///
    /// **free is deprecated:**
    /// Use g_option_group_unref() instead.
    @available(*, deprecated) func free() {
        g_option_group_free(cast(option_group_ptr))
    
    }

    /// Increments the reference count of `group` by one.
    func ref() -> UnsafeMutablePointer<GOptionGroup>! {
        let rv = g_option_group_ref(cast(option_group_ptr))
        return cast(rv)
    }

    /// Associates a function with `group` which will be called
    /// from `g_option_context_parse()` when an error occurs.
    /// 
    /// Note that the user data to be passed to `error_func` can be
    /// specified when constructing the group with `g_option_group_new()`.
    func setErrorHook(errorFunc error_func: @escaping OptionErrorFunc) {
        g_option_group_set_error_hook(cast(option_group_ptr), error_func)
    
    }

    /// Associates two functions with `group` which will be called
    /// from `g_option_context_parse()` before the first option is parsed
    /// and after the last option has been parsed, respectively.
    /// 
    /// Note that the user data to be passed to `pre_parse_func` and
    /// `post_parse_func` can be specified when constructing the group
    /// with `g_option_group_new()`.
    func setParseHooks(preParseFunc pre_parse_func: @escaping OptionParseFunc, postParseFunc post_parse_func: @escaping OptionParseFunc) {
        g_option_group_set_parse_hooks(cast(option_group_ptr), pre_parse_func, post_parse_func)
    
    }

    /// Sets the function which is used to translate user-visible strings,
    /// for `--help` output. Different groups can use different
    /// `GTranslateFuncs`. If `func` is `nil`, strings are not translated.
    /// 
    /// If you are using `gettext()`, you only need to set the translation
    /// domain, see `g_option_group_set_translation_domain()`.
    func setTranslateFunc(func_: @escaping TranslateFunc, data: UnsafeMutableRawPointer, destroyNotify destroy_notify: @escaping DestroyNotify) {
        g_option_group_set_translate_func(cast(option_group_ptr), func_, cast(data), destroy_notify)
    
    }

    /// A convenience function to use `gettext()` for translating
    /// user-visible strings.
    func setTranslation(domain: UnsafePointer<gchar>) {
        g_option_group_set_translation_domain(cast(option_group_ptr), domain)
    
    }

    /// Decrements the reference count of `group` by one.
    /// If the reference count drops to 0, the `group` will be freed.
    /// and all memory allocated by the `group` is released.
    func unref() {
        g_option_group_unref(cast(option_group_ptr))
    
    }
}



