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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GOptionGroup` instance.
    var option_group_ptr: UnsafeMutablePointer<GOptionGroup>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension OptionGroupRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GOptionGroup>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GOptionGroup>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GOptionGroup>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GOptionGroup>?) {
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

    /// Reference intialiser for a related type that implements `OptionGroupProtocol`
    @inlinable init<T: OptionGroupProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionGroupProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionGroupProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionGroupProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionGroupProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionGroupProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GOptionGroup`.
    @inlinable init( name: UnsafePointer<gchar>!, description: UnsafePointer<gchar>!, helpDescription: UnsafePointer<gchar>!, userData: gpointer! = nil, destroy: GDestroyNotify? = nil) {
        let rv = g_option_group_new(name, description, helpDescription, userData, destroy)
        ptr = UnsafeMutableRawPointer(rv)
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
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OptionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GOptionGroup>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OptionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GOptionGroup>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OptionGroup` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OptionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OptionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GOptionGroup>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OptionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GOptionGroup>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GOptionGroup`.
    /// i.e., ownership is transferred to the `OptionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GOptionGroup>) {
        ptr = UnsafeMutableRawPointer(op)
        g_option_group_ref(ptr.assumingMemoryBound(to: GOptionGroup.self))
    }

    /// Reference intialiser for a related type that implements `OptionGroupProtocol`
    /// Will retain `GOptionGroup`.
    /// - Parameter other: an instance of a related type that implements `OptionGroupProtocol`
    @inlinable public init<T: OptionGroupProtocol>(_ other: T) {
        ptr = other.ptr
        g_option_group_ref(ptr.assumingMemoryBound(to: GOptionGroup.self))
    }

    /// Releases the underlying `GOptionGroup` instance using `g_option_group_unref`.
    deinit {
        g_option_group_unref(ptr.assumingMemoryBound(to: GOptionGroup.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionGroupProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionGroupProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_option_group_ref(ptr.assumingMemoryBound(to: GOptionGroup.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionGroupProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionGroupProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_option_group_ref(ptr.assumingMemoryBound(to: GOptionGroup.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionGroupProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionGroupProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_option_group_ref(ptr.assumingMemoryBound(to: GOptionGroup.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionGroupProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionGroupProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_option_group_ref(ptr.assumingMemoryBound(to: GOptionGroup.self))
    }

    /// Creates a new `GOptionGroup`.
    @inlinable public init( name: UnsafePointer<gchar>!, description: UnsafePointer<gchar>!, helpDescription: UnsafePointer<gchar>!, userData: gpointer! = nil, destroy: GDestroyNotify? = nil) {
        let rv = g_option_group_new(name, description, helpDescription, userData, destroy)
        ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no OptionGroup properties

// MARK: no OptionGroup signals


// MARK: OptionGroup Record: OptionGroupProtocol extension (methods and fields)
public extension OptionGroupProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GOptionGroup` instance.
    @inlinable var option_group_ptr: UnsafeMutablePointer<GOptionGroup>! { return ptr?.assumingMemoryBound(to: GOptionGroup.self) }

    /// Adds the options specified in `entries` to `group`.
    @inlinable func add(entries: UnsafePointer<GOptionEntry>!) {
        g_option_group_add_entries(option_group_ptr, entries)
    
    }

    /// Frees a `GOptionGroup`. Note that you must not free groups
    /// which have been added to a `GOptionContext`.
    ///
    /// **free is deprecated:**
    /// Use g_option_group_unref() instead.
    @available(*, deprecated) @inlinable func free() {
        g_option_group_free(option_group_ptr)
    
    }

    /// Increments the reference count of `group` by one.
    @discardableResult @inlinable func ref() -> OptionGroupRef! {
        guard let rv = OptionGroupRef(gconstpointer: gconstpointer(g_option_group_ref(option_group_ptr))) else { return nil }
        return rv
    }

    /// Associates a function with `group` which will be called
    /// from `g_option_context_parse()` when an error occurs.
    /// 
    /// Note that the user data to be passed to `error_func` can be
    /// specified when constructing the group with `g_option_group_new()`.
    @inlinable func setErrorHook(errorFunc: GOptionErrorFunc?) {
        g_option_group_set_error_hook(option_group_ptr, errorFunc)
    
    }

    /// Associates two functions with `group` which will be called
    /// from `g_option_context_parse()` before the first option is parsed
    /// and after the last option has been parsed, respectively.
    /// 
    /// Note that the user data to be passed to `pre_parse_func` and
    /// `post_parse_func` can be specified when constructing the group
    /// with `g_option_group_new()`.
    @inlinable func setParseHooks(preParseFunc: GOptionParseFunc? = nil, postParseFunc: GOptionParseFunc? = nil) {
        g_option_group_set_parse_hooks(option_group_ptr, preParseFunc, postParseFunc)
    
    }

    /// Sets the function which is used to translate user-visible strings,
    /// for `--help` output. Different groups can use different
    /// `GTranslateFuncs`. If `func` is `nil`, strings are not translated.
    /// 
    /// If you are using `gettext()`, you only need to set the translation
    /// domain, see `g_option_group_set_translation_domain()`.
    @inlinable func setTranslateFunc(`func`: GTranslateFunc? = nil, data: gpointer! = nil, destroyNotify: GDestroyNotify? = nil) {
        g_option_group_set_translate_func(option_group_ptr, `func`, data, destroyNotify)
    
    }

    /// A convenience function to use `gettext()` for translating
    /// user-visible strings.
    @inlinable func setTranslation(domain: UnsafePointer<gchar>!) {
        g_option_group_set_translation_domain(option_group_ptr, domain)
    
    }

    /// Decrements the reference count of `group` by one.
    /// If the reference count drops to 0, the `group` will be freed.
    /// and all memory allocated by the `group` is released.
    @inlinable func unref() {
        g_option_group_unref(option_group_ptr)
    
    }


}



