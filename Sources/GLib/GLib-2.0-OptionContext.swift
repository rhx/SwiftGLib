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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GOptionContext` instance.
    var _ptr: UnsafeMutablePointer<GOptionContext> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension OptionContextRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GOptionContext>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `OptionContextProtocol`
    init<T: OptionContextProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionContextProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionContextProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionContextProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionContextProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionContextProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `OptionContext` instance.
    public init(_ op: UnsafeMutablePointer<GOptionContext>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `OptionContextProtocol`
    /// `GOptionContext` does not allow reference counting.
    public convenience init<T: OptionContextProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GOptionContext, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GOptionContext`.
    deinit {
        // no reference counting for GOptionContext, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionContextProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GOptionContext.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionContextProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GOptionContext.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionContextProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GOptionContext.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionContextProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GOptionContext>(opaquePointer))
    }



}

// MARK: - no OptionContext properties

// MARK: - no signals


public extension OptionContextProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GOptionContext` instance.
    var _ptr: UnsafeMutablePointer<GOptionContext> { return ptr.assumingMemoryBound(to: GOptionContext.self) }

    /// Adds a `GOptionGroup` to the `context`, so that parsing with `context`
    /// will recognize the options in the group. Note that this will take
    /// ownership of the `group` and thus the `group` should not be freed.
    func add(group: OptionGroupProtocol) {
        g_option_context_add_group(cast(_ptr), cast(group.ptr))
    
    }

    /// A convenience function which creates a main group if it doesn't
    /// exist, adds the `entries` to it and sets the translation domain.
    func addMain(entries: OptionEntryProtocol, translationDomain translation_domain: UnsafePointer<gchar>) {
        g_option_context_add_main_entries(cast(_ptr), cast(entries.ptr), translation_domain)
    
    }

    /// Frees context and all the groups which have been
    /// added to it.
    /// 
    /// Please note that parsed arguments need to be freed separately (see
    /// `GOptionEntry`).
    func free() {
        g_option_context_free(cast(_ptr))
    
    }

    /// Returns the description. See g_option_context_set_description().
    func getDescription() -> String! {
        let rv = g_option_context_get_description(cast(_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Returns a formatted, translated help text for the given context.
    /// To obtain the text produced by `--help`, call
    /// `g_option_context_get_help (context, TRUE, NULL)`.
    /// To obtain the text produced by `--help-all`, call
    /// `g_option_context_get_help (context, FALSE, NULL)`.
    /// To obtain the help text for an option group, call
    /// `g_option_context_get_help (context, FALSE, group)`.
    func getHelp(mainHelp main_help: Bool, group: OptionGroupProtocol) -> String! {
        let rv = g_option_context_get_help(cast(_ptr), gboolean(main_help ? 1 : 0), cast(group.ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Returns whether automatic `--help` generation
    /// is turned on for `context`. See g_option_context_set_help_enabled().
    func getHelpEnabled() -> Bool {
        let rv = g_option_context_get_help_enabled(cast(_ptr))
        return Bool(rv != 0)
    }

    /// Returns whether unknown options are ignored or not. See
    /// g_option_context_set_ignore_unknown_options().
    func getIgnoreUnknownOptions() -> Bool {
        let rv = g_option_context_get_ignore_unknown_options(cast(_ptr))
        return Bool(rv != 0)
    }

    /// Returns a pointer to the main group of `context`.
    func getMainGroup() -> UnsafeMutablePointer<GOptionGroup>! {
        let rv = g_option_context_get_main_group(cast(_ptr))
        return cast(rv)
    }

    /// Returns whether strict POSIX code is enabled.
    /// 
    /// See g_option_context_set_strict_posix() for more information.
    func getStrictPosix() -> Bool {
        let rv = g_option_context_get_strict_posix(cast(_ptr))
        return Bool(rv != 0)
    }

    /// Returns the summary. See g_option_context_set_summary().
    func getSummary() -> String! {
        let rv = g_option_context_get_summary(cast(_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Parses the command line arguments, recognizing options
    /// which have been added to `context`. A side-effect of
    /// calling this function is that g_set_prgname() will be
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
    /// (see g_option_context_set_help_enabled()), and the
    /// `argv` array contains one of the recognized help options,
    /// this function will produce help output to stdout and
    /// call `exit (0)`.
    /// 
    /// Note that function depends on the [current locale][setlocale] for
    /// automatic character set conversion of string and filename
    /// arguments.
    func parse(argc: UnsafeMutablePointer<CInt>, argv: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<gchar>>>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_option_context_parse(cast(_ptr), cast(argc), cast(argv), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Parses the command line arguments.
    /// 
    /// This function is similar to g_option_context_parse() except that it
    /// respects the normal memory rules when dealing with a strv instead of
    /// assuming that the passed-in array is the argv of the main function.
    /// 
    /// In particular, strings that are removed from the arguments list will
    /// be freed using g_free().
    /// 
    /// On Windows, the strings are expected to be in UTF-8.  This is in
    /// contrast to g_option_context_parse() which expects them to be in the
    /// system codepage, which is how they are passed as `argv` to main().
    /// See g_win32_get_command_line() for a solution.
    /// 
    /// This function is useful if you are trying to use `GOptionContext` with
    /// `GApplication`.
    func parseStrv(arguments: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<gchar>>>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_option_context_parse_strv(cast(_ptr), cast(arguments), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Adds a string to be displayed in `--help` output after the list
    /// of options. This text often includes a bug reporting address.
    /// 
    /// Note that the summary is translated (see
    /// g_option_context_set_translate_func()).
    func set(description: UnsafePointer<gchar>) {
        g_option_context_set_description(cast(_ptr), description)
    
    }

    /// Enables or disables automatic generation of `--help` output.
    /// By default, g_option_context_parse() recognizes `--help`, `-h`,
    /// `-?`, `--help-all` and `--help-groupname` and creates suitable
    /// output to stdout.
    func set(helpEnabled help_enabled: Bool) {
        g_option_context_set_help_enabled(cast(_ptr), gboolean(help_enabled ? 1 : 0))
    
    }

    /// Sets whether to ignore unknown options or not. If an argument is
    /// ignored, it is left in the `argv` array after parsing. By default,
    /// g_option_context_parse() treats unknown options as error.
    /// 
    /// This setting does not affect non-option arguments (i.e. arguments
    /// which don't start with a dash). But note that GOption cannot reliably
    /// determine whether a non-option belongs to a preceding unknown option.
    func setIgnoreUnknownOptions(ignoreUnknown ignore_unknown: Bool) {
        g_option_context_set_ignore_unknown_options(cast(_ptr), gboolean(ignore_unknown ? 1 : 0))
    
    }

    /// Sets a `GOptionGroup` as main group of the `context`.
    /// This has the same effect as calling g_option_context_add_group(),
    /// the only difference is that the options in the main group are
    /// treated differently when generating `--help` output.
    func setMain(group: OptionGroupProtocol) {
        g_option_context_set_main_group(cast(_ptr), cast(group.ptr))
    
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
    func set(strictPosix strict_posix: Bool) {
        g_option_context_set_strict_posix(cast(_ptr), gboolean(strict_posix ? 1 : 0))
    
    }

    /// Adds a string to be displayed in `--help` output before the list
    /// of options. This is typically a summary of the program functionality.
    /// 
    /// Note that the summary is translated (see
    /// g_option_context_set_translate_func() and
    /// g_option_context_set_translation_domain()).
    func set(summary: UnsafePointer<gchar>) {
        g_option_context_set_summary(cast(_ptr), summary)
    
    }

    /// Sets the function which is used to translate the contexts
    /// user-visible strings, for `--help` output. If `func` is `nil`,
    /// strings are not translated.
    /// 
    /// Note that option groups have their own translation functions,
    /// this function only affects the `parameter_string` (see g_option_context_new()),
    /// the summary (see g_option_context_set_summary()) and the description
    /// (see g_option_context_set_description()).
    /// 
    /// If you are using gettext(), you only need to set the translation
    /// domain, see g_option_context_set_translation_domain().
    func setTranslateFunc(func_: @escaping TranslateFunc, data: UnsafeMutableRawPointer, destroyNotify destroy_notify: @escaping DestroyNotify) {
        g_option_context_set_translate_func(cast(_ptr), func_, cast(data), destroy_notify)
    
    }

    /// A convenience function to use gettext() for translating
    /// user-visible strings.
    func setTranslation(domain: UnsafePointer<gchar>) {
        g_option_context_set_translation_domain(cast(_ptr), domain)
    
    }
    /// Returns the description. See g_option_context_set_description().
    var description: String! {
        /// Returns the description. See g_option_context_set_description().
        get {
            let rv = g_option_context_get_description(cast(_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Adds a string to be displayed in `--help` output after the list
        /// of options. This text often includes a bug reporting address.
        /// 
        /// Note that the summary is translated (see
        /// g_option_context_set_translate_func()).
        nonmutating set {
            g_option_context_set_description(cast(_ptr), newValue)
        }
    }

    /// Returns whether automatic `--help` generation
    /// is turned on for `context`. See g_option_context_set_help_enabled().
    var helpEnabled: Bool {
        /// Returns whether automatic `--help` generation
        /// is turned on for `context`. See g_option_context_set_help_enabled().
        get {
            let rv = g_option_context_get_help_enabled(cast(_ptr))
            return Bool(rv != 0)
        }
        /// Enables or disables automatic generation of `--help` output.
        /// By default, g_option_context_parse() recognizes `--help`, `-h`,
        /// `-?`, `--help-all` and `--help-groupname` and creates suitable
        /// output to stdout.
        nonmutating set {
            g_option_context_set_help_enabled(cast(_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Returns whether unknown options are ignored or not. See
    /// g_option_context_set_ignore_unknown_options().
    var ignoreUnknownOptions: Bool {
        /// Returns whether unknown options are ignored or not. See
        /// g_option_context_set_ignore_unknown_options().
        get {
            let rv = g_option_context_get_ignore_unknown_options(cast(_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether to ignore unknown options or not. If an argument is
        /// ignored, it is left in the `argv` array after parsing. By default,
        /// g_option_context_parse() treats unknown options as error.
        /// 
        /// This setting does not affect non-option arguments (i.e. arguments
        /// which don't start with a dash). But note that GOption cannot reliably
        /// determine whether a non-option belongs to a preceding unknown option.
        nonmutating set {
            g_option_context_set_ignore_unknown_options(cast(_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Returns a pointer to the main group of `context`.
    var mainGroup: UnsafeMutablePointer<GOptionGroup>! {
        /// Returns a pointer to the main group of `context`.
        get {
            let rv = g_option_context_get_main_group(cast(_ptr))
            return cast(rv)
        }
        /// Sets a `GOptionGroup` as main group of the `context`.
        /// This has the same effect as calling g_option_context_add_group(),
        /// the only difference is that the options in the main group are
        /// treated differently when generating `--help` output.
        nonmutating set {
            g_option_context_set_main_group(cast(_ptr), cast(newValue))
        }
    }

    /// Returns whether strict POSIX code is enabled.
    /// 
    /// See g_option_context_set_strict_posix() for more information.
    var strictPosix: Bool {
        /// Returns whether strict POSIX code is enabled.
        /// 
        /// See g_option_context_set_strict_posix() for more information.
        get {
            let rv = g_option_context_get_strict_posix(cast(_ptr))
            return Bool(rv != 0)
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
            g_option_context_set_strict_posix(cast(_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Returns the summary. See g_option_context_set_summary().
    var summary: String! {
        /// Returns the summary. See g_option_context_set_summary().
        get {
            let rv = g_option_context_get_summary(cast(_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Adds a string to be displayed in `--help` output before the list
        /// of options. This is typically a summary of the program functionality.
        /// 
        /// Note that the summary is translated (see
        /// g_option_context_set_translate_func() and
        /// g_option_context_set_translation_domain()).
        nonmutating set {
            g_option_context_set_summary(cast(_ptr), newValue)
        }
    }
}



