import CGLib

// MARK: - OptionContext Record

/// The `OptionContextProtocol` protocol exposes the methods and properties of an underlying `GOptionContext` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `OptionContext`.
/// Alternatively, use `OptionContextRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GOptionContext` struct defines which options
/// are accepted by the commandline option parser. The struct has only private
/// fields and should not be directly accessed.
public protocol OptionContextProtocol {
        /// Untyped pointer to the underlying `GOptionContext` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GOptionContext` instance.
    var _ptr: UnsafeMutablePointer<GOptionContext>! { get }

}

/// The `OptionContextRef` type acts as a lightweight Swift reference to an underlying `GOptionContext` instance.
/// It exposes methods that can operate on this data type through `OptionContextProtocol` conformance.
/// Use `OptionContextRef` only as an `unowned` reference to an existing `GOptionContext` instance.
///
/// A `GOptionContext` struct defines which options
/// are accepted by the commandline option parser. The struct has only private
/// fields and should not be directly accessed.
public struct OptionContextRef: OptionContextProtocol {
        /// Untyped pointer to the underlying `GOptionContext` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension OptionContextRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GOptionContext>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GOptionContext>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GOptionContext>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GOptionContext>?) {
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

    /// Reference intialiser for a related type that implements `OptionContextProtocol`
    @inlinable init<T: OptionContextProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionContextProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionContextProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionContextProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionContextProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionContextProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `OptionContext` type acts as an owner of an underlying `GOptionContext` instance.
/// It provides the methods that can operate on this data type through `OptionContextProtocol` conformance.
/// Use `OptionContext` as a strong reference or owner of a `GOptionContext` instance.
///
/// A `GOptionContext` struct defines which options
/// are accepted by the commandline option parser. The struct has only private
/// fields and should not be directly accessed.
open class OptionContext: OptionContextProtocol {
        /// Untyped pointer to the underlying `GOptionContext` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OptionContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GOptionContext>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OptionContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GOptionContext>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OptionContext` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OptionContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OptionContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GOptionContext>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OptionContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GOptionContext>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GOptionContext` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `OptionContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GOptionContext>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GOptionContext, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `OptionContextProtocol`
    /// `GOptionContext` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `OptionContextProtocol`
    @inlinable public init<T: OptionContextProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GOptionContext, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GOptionContext`.
    deinit {
        // no reference counting for GOptionContext, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GOptionContext, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionContextProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionContextProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GOptionContext, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionContextProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionContextProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GOptionContext, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GOptionContext, cannot ref(_ptr)
    }



}

// MARK: no OptionContext properties

// MARK: no OptionContext signals


// MARK: OptionContext Record: OptionContextProtocol extension (methods and fields)
public extension OptionContextProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GOptionContext` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GOptionContext>! { return ptr?.assumingMemoryBound(to: GOptionContext.self) }

    /// Adds a `GOptionGroup` to the `context`, so that parsing with `context`
    /// will recognize the options in the group. Note that this will take
    /// ownership of the `group` and thus the `group` should not be freed.
    @inlinable func add<OptionGroupT: OptionGroupProtocol>(group: OptionGroupT) {
        g_option_context_add_group(_ptr, group.option_group_ptr)
    
    }

    /// A convenience function which creates a main group if it doesn't
    /// exist, adds the `entries` to it and sets the translation domain.
    @inlinable func addMain(entries: UnsafePointer<GOptionEntry>!, translationDomain: UnsafePointer<gchar>? = nil) {
        g_option_context_add_main_entries(_ptr, entries, translationDomain)
    
    }

    /// Frees context and all the groups which have been
    /// added to it.
    /// 
    /// Please note that parsed arguments need to be freed separately (see
    /// `GOptionEntry`).
    @inlinable func free() {
        g_option_context_free(_ptr)
    
    }

    /// Returns the description. See `g_option_context_set_description()`.
    @inlinable func getDescription() -> String! {
        let rv = g_option_context_get_description(_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns a formatted, translated help text for the given context.
    /// To obtain the text produced by `--help`, call
    /// `g_option_context_get_help (context, TRUE, NULL)`.
    /// To obtain the text produced by `--help-all`, call
    /// `g_option_context_get_help (context, FALSE, NULL)`.
    /// To obtain the help text for an option group, call
    /// `g_option_context_get_help (context, FALSE, group)`.
    @inlinable func getHelp(mainHelp: Bool, group: OptionGroupRef? = nil) -> String! {
        let rv = g_option_context_get_help(_ptr, gboolean((mainHelp) ? 1 : 0), group?.option_group_ptr).map({ String(cString: $0) })
        return rv
    }
    /// Returns a formatted, translated help text for the given context.
    /// To obtain the text produced by `--help`, call
    /// `g_option_context_get_help (context, TRUE, NULL)`.
    /// To obtain the text produced by `--help-all`, call
    /// `g_option_context_get_help (context, FALSE, NULL)`.
    /// To obtain the help text for an option group, call
    /// `g_option_context_get_help (context, FALSE, group)`.
    @inlinable func getHelp<OptionGroupT: OptionGroupProtocol>(mainHelp: Bool, group: OptionGroupT?) -> String! {
        let rv = g_option_context_get_help(_ptr, gboolean((mainHelp) ? 1 : 0), group?.option_group_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns whether automatic `--help` generation
    /// is turned on for `context`. See `g_option_context_set_help_enabled()`.
    @inlinable func getHelpEnabled() -> Bool {
        let rv = ((g_option_context_get_help_enabled(_ptr)) != 0)
        return rv
    }

    /// Returns whether unknown options are ignored or not. See
    /// `g_option_context_set_ignore_unknown_options()`.
    @inlinable func getIgnoreUnknownOptions() -> Bool {
        let rv = ((g_option_context_get_ignore_unknown_options(_ptr)) != 0)
        return rv
    }

    /// Returns a pointer to the main group of `context`.
    @inlinable func getMainGroup() -> OptionGroupRef! {
        let rv = OptionGroupRef(gconstpointer: gconstpointer(g_option_context_get_main_group(_ptr)))
        return rv
    }

    /// Returns whether strict POSIX code is enabled.
    /// 
    /// See `g_option_context_set_strict_posix()` for more information.
    @inlinable func getStrictPosix() -> Bool {
        let rv = ((g_option_context_get_strict_posix(_ptr)) != 0)
        return rv
    }

    /// Returns the summary. See `g_option_context_set_summary()`.
    @inlinable func getSummary() -> String! {
        let rv = g_option_context_get_summary(_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Parses the command line arguments, recognizing options
    /// which have been added to `context`. A side-effect of
    /// calling this function is that `g_set_prgname()` will be
    /// called.
    /// 
    /// If the parsing is successful, any parsed arguments are
    /// removed from the array and `argc` and `argv` are updated
    /// accordingly. A '--' option is stripped from `argv`
    /// unless there are unparsed options before and after it,
    /// or some of the options after it start with '-'. In case
    /// of an error, `argc` and `argv` are left unmodified.
    /// 
    /// If automatic `--help` support is enabled
    /// (see `g_option_context_set_help_enabled()`), and the
    /// `argv` array contains one of the recognized help options,
    /// this function will produce help output to stdout and
    /// call `exit (0)`.
    /// 
    /// Note that function depends on the [current locale](#setlocale) for
    /// automatic character set conversion of string and filename
    /// arguments.
    @inlinable func parse(argc: UnsafeMutablePointer<gint>!, argv: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>?>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_option_context_parse(_ptr, argc, argv, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Parses the command line arguments.
    /// 
    /// This function is similar to `g_option_context_parse()` except that it
    /// respects the normal memory rules when dealing with a strv instead of
    /// assuming that the passed-in array is the argv of the main function.
    /// 
    /// In particular, strings that are removed from the arguments list will
    /// be freed using `g_free()`.
    /// 
    /// On Windows, the strings are expected to be in UTF-8.  This is in
    /// contrast to `g_option_context_parse()` which expects them to be in the
    /// system codepage, which is how they are passed as `argv` to `main()`.
    /// See `g_win32_get_command_line()` for a solution.
    /// 
    /// This function is useful if you are trying to use `GOptionContext` with
    /// `GApplication`.
    @inlinable func parseStrv(arguments: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>?>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_option_context_parse_strv(_ptr, arguments, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Adds a string to be displayed in `--help` output after the list
    /// of options. This text often includes a bug reporting address.
    /// 
    /// Note that the summary is translated (see
    /// `g_option_context_set_translate_func()`).
    @inlinable func set(description: UnsafePointer<gchar>? = nil) {
        g_option_context_set_description(_ptr, description)
    
    }

    /// Enables or disables automatic generation of `--help` output.
    /// By default, `g_option_context_parse()` recognizes `--help`, `-h`,
    /// `-?`, `--help-all` and `--help-groupname` and creates suitable
    /// output to stdout.
    @inlinable func set(helpEnabled: Bool) {
        g_option_context_set_help_enabled(_ptr, gboolean((helpEnabled) ? 1 : 0))
    
    }

    /// Sets whether to ignore unknown options or not. If an argument is
    /// ignored, it is left in the `argv` array after parsing. By default,
    /// `g_option_context_parse()` treats unknown options as error.
    /// 
    /// This setting does not affect non-option arguments (i.e. arguments
    /// which don't start with a dash). But note that GOption cannot reliably
    /// determine whether a non-option belongs to a preceding unknown option.
    @inlinable func setIgnoreUnknownOptions(ignoreUnknown: Bool) {
        g_option_context_set_ignore_unknown_options(_ptr, gboolean((ignoreUnknown) ? 1 : 0))
    
    }

    /// Sets a `GOptionGroup` as main group of the `context`.
    /// This has the same effect as calling `g_option_context_add_group()`,
    /// the only difference is that the options in the main group are
    /// treated differently when generating `--help` output.
    @inlinable func setMain<OptionGroupT: OptionGroupProtocol>(group: OptionGroupT) {
        g_option_context_set_main_group(_ptr, group.option_group_ptr)
    
    }

    /// Sets strict POSIX mode.
    /// 
    /// By default, this mode is disabled.
    /// 
    /// In strict POSIX mode, the first non-argument parameter encountered
    /// (eg: filename) terminates argument processing.  Remaining arguments
    /// are treated as non-options and are not attempted to be parsed.
    /// 
    /// If strict POSIX mode is disabled then parsing is done in the GNU way
    /// where option arguments can be freely mixed with non-options.
    /// 
    /// As an example, consider "ls foo -l".  With GNU style parsing, this
    /// will list "foo" in long mode.  In strict POSIX style, this will list
    /// the files named "foo" and "-l".
    /// 
    /// It may be useful to force strict POSIX mode when creating "verb
    /// style" command line tools.  For example, the "gsettings" command line
    /// tool supports the global option "--schemadir" as well as many
    /// subcommands ("get", "set", etc.) which each have their own set of
    /// arguments.  Using strict POSIX mode will allow parsing the global
    /// options up to the verb name while leaving the remaining options to be
    /// parsed by the relevant subcommand (which can be determined by
    /// examining the verb name, which should be present in argv[1] after
    /// parsing).
    @inlinable func set(strictPosix: Bool) {
        g_option_context_set_strict_posix(_ptr, gboolean((strictPosix) ? 1 : 0))
    
    }

    /// Adds a string to be displayed in `--help` output before the list
    /// of options. This is typically a summary of the program functionality.
    /// 
    /// Note that the summary is translated (see
    /// `g_option_context_set_translate_func()` and
    /// `g_option_context_set_translation_domain()`).
    @inlinable func set(summary: UnsafePointer<gchar>? = nil) {
        g_option_context_set_summary(_ptr, summary)
    
    }

    /// Sets the function which is used to translate the contexts
    /// user-visible strings, for `--help` output. If `func` is `nil`,
    /// strings are not translated.
    /// 
    /// Note that option groups have their own translation functions,
    /// this function only affects the `parameter_string` (see `g_option_context_new()`),
    /// the summary (see `g_option_context_set_summary()`) and the description
    /// (see `g_option_context_set_description()`).
    /// 
    /// If you are using `gettext()`, you only need to set the translation
    /// domain, see `g_option_context_set_translation_domain()`.
    @inlinable func setTranslateFunc(`func`: GTranslateFunc? = nil, data: gpointer! = nil, destroyNotify: GDestroyNotify? = nil) {
        g_option_context_set_translate_func(_ptr, `func`, data, destroyNotify)
    
    }

    /// A convenience function to use `gettext()` for translating
    /// user-visible strings.
    @inlinable func setTranslation(domain: UnsafePointer<gchar>!) {
        g_option_context_set_translation_domain(_ptr, domain)
    
    }
    /// Returns the description. See `g_option_context_set_description()`.
    @inlinable var description: String! {
        /// Returns the description. See `g_option_context_set_description()`.
        get {
            let rv = g_option_context_get_description(_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Adds a string to be displayed in `--help` output after the list
        /// of options. This text often includes a bug reporting address.
        /// 
        /// Note that the summary is translated (see
        /// `g_option_context_set_translate_func()`).
        nonmutating set {
            g_option_context_set_description(_ptr, newValue)
        }
    }

    /// Returns whether automatic `--help` generation
    /// is turned on for `context`. See `g_option_context_set_help_enabled()`.
    @inlinable var helpEnabled: Bool {
        /// Returns whether automatic `--help` generation
        /// is turned on for `context`. See `g_option_context_set_help_enabled()`.
        get {
            let rv = ((g_option_context_get_help_enabled(_ptr)) != 0)
            return rv
        }
        /// Enables or disables automatic generation of `--help` output.
        /// By default, `g_option_context_parse()` recognizes `--help`, `-h`,
        /// `-?`, `--help-all` and `--help-groupname` and creates suitable
        /// output to stdout.
        nonmutating set {
            g_option_context_set_help_enabled(_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns whether unknown options are ignored or not. See
    /// `g_option_context_set_ignore_unknown_options()`.
    @inlinable var ignoreUnknownOptions: Bool {
        /// Returns whether unknown options are ignored or not. See
        /// `g_option_context_set_ignore_unknown_options()`.
        get {
            let rv = ((g_option_context_get_ignore_unknown_options(_ptr)) != 0)
            return rv
        }
        /// Sets whether to ignore unknown options or not. If an argument is
        /// ignored, it is left in the `argv` array after parsing. By default,
        /// `g_option_context_parse()` treats unknown options as error.
        /// 
        /// This setting does not affect non-option arguments (i.e. arguments
        /// which don't start with a dash). But note that GOption cannot reliably
        /// determine whether a non-option belongs to a preceding unknown option.
        nonmutating set {
            g_option_context_set_ignore_unknown_options(_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns a pointer to the main group of `context`.
    @inlinable var mainGroup: OptionGroupRef! {
        /// Returns a pointer to the main group of `context`.
        get {
            let rv = OptionGroupRef(gconstpointer: gconstpointer(g_option_context_get_main_group(_ptr)))
            return rv
        }
        /// Sets a `GOptionGroup` as main group of the `context`.
        /// This has the same effect as calling `g_option_context_add_group()`,
        /// the only difference is that the options in the main group are
        /// treated differently when generating `--help` output.
        nonmutating set {
            g_option_context_set_main_group(_ptr, UnsafeMutablePointer<GOptionGroup>(newValue?.option_group_ptr))
        }
    }

    /// Returns whether strict POSIX code is enabled.
    /// 
    /// See `g_option_context_set_strict_posix()` for more information.
    @inlinable var strictPosix: Bool {
        /// Returns whether strict POSIX code is enabled.
        /// 
        /// See `g_option_context_set_strict_posix()` for more information.
        get {
            let rv = ((g_option_context_get_strict_posix(_ptr)) != 0)
            return rv
        }
        /// Sets strict POSIX mode.
        /// 
        /// By default, this mode is disabled.
        /// 
        /// In strict POSIX mode, the first non-argument parameter encountered
        /// (eg: filename) terminates argument processing.  Remaining arguments
        /// are treated as non-options and are not attempted to be parsed.
        /// 
        /// If strict POSIX mode is disabled then parsing is done in the GNU way
        /// where option arguments can be freely mixed with non-options.
        /// 
        /// As an example, consider "ls foo -l".  With GNU style parsing, this
        /// will list "foo" in long mode.  In strict POSIX style, this will list
        /// the files named "foo" and "-l".
        /// 
        /// It may be useful to force strict POSIX mode when creating "verb
        /// style" command line tools.  For example, the "gsettings" command line
        /// tool supports the global option "--schemadir" as well as many
        /// subcommands ("get", "set", etc.) which each have their own set of
        /// arguments.  Using strict POSIX mode will allow parsing the global
        /// options up to the verb name while leaving the remaining options to be
        /// parsed by the relevant subcommand (which can be determined by
        /// examining the verb name, which should be present in argv[1] after
        /// parsing).
        nonmutating set {
            g_option_context_set_strict_posix(_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns the summary. See `g_option_context_set_summary()`.
    @inlinable var summary: String! {
        /// Returns the summary. See `g_option_context_set_summary()`.
        get {
            let rv = g_option_context_get_summary(_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Adds a string to be displayed in `--help` output before the list
        /// of options. This is typically a summary of the program functionality.
        /// 
        /// Note that the summary is translated (see
        /// `g_option_context_set_translate_func()` and
        /// `g_option_context_set_translation_domain()`).
        nonmutating set {
            g_option_context_set_summary(_ptr, newValue)
        }
    }


}



