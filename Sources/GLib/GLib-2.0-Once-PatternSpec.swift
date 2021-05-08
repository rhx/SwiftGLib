import CGLib

// MARK: - Once Record

/// The `OnceProtocol` protocol exposes the methods and properties of an underlying `GOnce` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Once`.
/// Alternatively, use `OnceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GOnce` struct controls a one-time initialization function. Any
/// one-time initialization function must have its own unique `GOnce`
/// struct.
public protocol OnceProtocol {
        /// Untyped pointer to the underlying `GOnce` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GOnce` instance.
    var _ptr: UnsafeMutablePointer<GOnce>! { get }

    /// Required Initialiser for types conforming to `OnceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `OnceRef` type acts as a lightweight Swift reference to an underlying `GOnce` instance.
/// It exposes methods that can operate on this data type through `OnceProtocol` conformance.
/// Use `OnceRef` only as an `unowned` reference to an existing `GOnce` instance.
///
/// A `GOnce` struct controls a one-time initialization function. Any
/// one-time initialization function must have its own unique `GOnce`
/// struct.
public struct OnceRef: OnceProtocol {
        /// Untyped pointer to the underlying `GOnce` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension OnceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GOnce>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GOnce>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GOnce>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GOnce>?) {
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

    /// Reference intialiser for a related type that implements `OnceProtocol`
    @inlinable init<T: OnceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OnceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OnceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OnceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OnceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OnceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Once` type acts as an owner of an underlying `GOnce` instance.
/// It provides the methods that can operate on this data type through `OnceProtocol` conformance.
/// Use `Once` as a strong reference or owner of a `GOnce` instance.
///
/// A `GOnce` struct controls a one-time initialization function. Any
/// one-time initialization function must have its own unique `GOnce`
/// struct.
open class Once: OnceProtocol {
        /// Untyped pointer to the underlying `GOnce` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Once` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GOnce>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Once` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GOnce>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Once` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Once` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Once` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GOnce>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Once` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GOnce>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GOnce` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Once` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GOnce>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GOnce, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `OnceProtocol`
    /// `GOnce` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `OnceProtocol`
    @inlinable public init<T: OnceProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GOnce, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GOnce`.
    deinit {
        // no reference counting for GOnce, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OnceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OnceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GOnce, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OnceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OnceProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GOnce, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OnceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OnceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GOnce, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OnceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OnceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GOnce, cannot ref(_ptr)
    }



}

// MARK: no Once properties

// MARK: no Once signals

// MARK: Once has no signals
// MARK: Once Record: OnceProtocol extension (methods and fields)
public extension OnceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GOnce` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GOnce>! { return ptr?.assumingMemoryBound(to: GOnce.self) }

    @inlinable func impl(`func`: GThreadFunc?, arg: gpointer! = nil) -> gpointer! {
        let rv = g_once_impl(_ptr, `func`, arg)
        return rv
    }

    /// the status of the `GOnce`
    @inlinable var status: GOnceStatus {
        /// the status of the `GOnce`
        get {
            let rv = _ptr.pointee.status
            return rv
        }
        /// the status of the `GOnce`
         set {
            _ptr.pointee.status = newValue
        }
    }

    /// the value returned by the call to the function, if `status`
    ///          is `G_ONCE_STATUS_READY`
    @inlinable var retval: gpointer! {
        /// the value returned by the call to the function, if `status`
        ///          is `G_ONCE_STATUS_READY`
        get {
            let rv = _ptr.pointee.retval
            return rv
        }
        /// the value returned by the call to the function, if `status`
        ///          is `G_ONCE_STATUS_READY`
         set {
            _ptr.pointee.retval = newValue
        }
    }

}



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

    /// Required Initialiser for types conforming to `OptionContextProtocol`
    init(raw: UnsafeMutableRawPointer)
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
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

// MARK: OptionContext has no signals
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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GOptionEntry` instance.
    var _ptr: UnsafeMutablePointer<GOptionEntry>! { get }

    /// Required Initialiser for types conforming to `OptionEntryProtocol`
    init(raw: UnsafeMutableRawPointer)
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
    public let ptr: UnsafeMutableRawPointer!
}

public extension OptionEntryRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GOptionEntry>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GOptionEntry>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GOptionEntry>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GOptionEntry>?) {
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

    /// Reference intialiser for a related type that implements `OptionEntryProtocol`
    @inlinable init<T: OptionEntryProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionEntryProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionEntryProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionEntryProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionEntryProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionEntryProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OptionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GOptionEntry>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OptionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GOptionEntry>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OptionEntry` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OptionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OptionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GOptionEntry>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OptionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GOptionEntry>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GOptionEntry` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `OptionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GOptionEntry>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GOptionEntry, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `OptionEntryProtocol`
    /// `GOptionEntry` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `OptionEntryProtocol`
    @inlinable public init<T: OptionEntryProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GOptionEntry, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GOptionEntry`.
    deinit {
        // no reference counting for GOptionEntry, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionEntryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionEntryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GOptionEntry, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionEntryProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionEntryProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GOptionEntry, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionEntryProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionEntryProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GOptionEntry, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionEntryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OptionEntryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GOptionEntry, cannot ref(_ptr)
    }



}

// MARK: no OptionEntry properties

// MARK: no OptionEntry signals

// MARK: OptionEntry has no signals
// MARK: OptionEntry Record: OptionEntryProtocol extension (methods and fields)
public extension OptionEntryProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GOptionEntry` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GOptionEntry>! { return ptr?.assumingMemoryBound(to: GOptionEntry.self) }


    /// The long name of an option can be used to specify it
    ///     in a commandline as `--long_name`. Every option must have a
    ///     long name. To resolve conflicts if multiple option groups contain
    ///     the same long name, it is also possible to specify the option as
    ///     `--groupname-long_name`.
    @inlinable var longName: UnsafePointer<gchar>! {
        /// The long name of an option can be used to specify it
        ///     in a commandline as `--long_name`. Every option must have a
        ///     long name. To resolve conflicts if multiple option groups contain
        ///     the same long name, it is also possible to specify the option as
        ///     `--groupname-long_name`.
        get {
            let rv = _ptr.pointee.long_name
            return rv
        }
        /// The long name of an option can be used to specify it
        ///     in a commandline as `--long_name`. Every option must have a
        ///     long name. To resolve conflicts if multiple option groups contain
        ///     the same long name, it is also possible to specify the option as
        ///     `--groupname-long_name`.
         set {
            _ptr.pointee.long_name = newValue
        }
    }

    /// If an option has a short name, it can be specified
    ///     `-short_name` in a commandline. `short_name` must be  a printable
    ///     ASCII character different from '-', or zero if the option has no
    ///     short name.
    @inlinable var shortName: gchar {
        /// If an option has a short name, it can be specified
        ///     `-short_name` in a commandline. `short_name` must be  a printable
        ///     ASCII character different from '-', or zero if the option has no
        ///     short name.
        get {
            let rv = _ptr.pointee.short_name
            return rv
        }
        /// If an option has a short name, it can be specified
        ///     `-short_name` in a commandline. `short_name` must be  a printable
        ///     ASCII character different from '-', or zero if the option has no
        ///     short name.
         set {
            _ptr.pointee.short_name = newValue
        }
    }

    /// Flags from `GOptionFlags`
    @inlinable var flags: gint {
        /// Flags from `GOptionFlags`
        get {
            let rv = _ptr.pointee.flags
            return rv
        }
        /// Flags from `GOptionFlags`
         set {
            _ptr.pointee.flags = newValue
        }
    }

    /// The type of the option, as a `GOptionArg`
    @inlinable var arg: GOptionArg {
        /// The type of the option, as a `GOptionArg`
        get {
            let rv = _ptr.pointee.arg
            return rv
        }
        /// The type of the option, as a `GOptionArg`
         set {
            _ptr.pointee.arg = newValue
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
    @inlinable var argData: gpointer! {
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
            let rv = _ptr.pointee.arg_data
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
            _ptr.pointee.arg_data = newValue
        }
    }

    /// the description for the option in `--help`
    ///     output. The `description` is translated using the `translate_func`
    ///     of the group, see `g_option_group_set_translation_domain()`.
    @inlinable var description: UnsafePointer<gchar>! {
        /// the description for the option in `--help`
        ///     output. The `description` is translated using the `translate_func`
        ///     of the group, see `g_option_group_set_translation_domain()`.
        get {
            let rv = _ptr.pointee.description
            return rv
        }
        /// the description for the option in `--help`
        ///     output. The `description` is translated using the `translate_func`
        ///     of the group, see `g_option_group_set_translation_domain()`.
         set {
            _ptr.pointee.description = newValue
        }
    }

    /// The placeholder to use for the extra argument parsed
    ///     by the option in `--help` output. The `arg_description` is translated
    ///     using the `translate_func` of the group, see
    ///     `g_option_group_set_translation_domain()`.
    @inlinable var argDescription: UnsafePointer<gchar>! {
        /// The placeholder to use for the extra argument parsed
        ///     by the option in `--help` output. The `arg_description` is translated
        ///     using the `translate_func` of the group, see
        ///     `g_option_group_set_translation_domain()`.
        get {
            let rv = _ptr.pointee.arg_description
            return rv
        }
        /// The placeholder to use for the extra argument parsed
        ///     by the option in `--help` output. The `arg_description` is translated
        ///     using the `translate_func` of the group, see
        ///     `g_option_group_set_translation_domain()`.
         set {
            _ptr.pointee.arg_description = newValue
        }
    }

}



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

    /// Required Initialiser for types conforming to `OptionGroupProtocol`
    init(raw: UnsafeMutableRawPointer)
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
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

// MARK: OptionGroup has no signals
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



// MARK: - PatternSpec Record

/// The `PatternSpecProtocol` protocol exposes the methods and properties of an underlying `GPatternSpec` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PatternSpec`.
/// Alternatively, use `PatternSpecRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A GPatternSpec struct is the 'compiled' form of a pattern. This
/// structure is opaque and its fields cannot be accessed directly.
public protocol PatternSpecProtocol {
        /// Untyped pointer to the underlying `GPatternSpec` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GPatternSpec` instance.
    var _ptr: UnsafeMutablePointer<GPatternSpec>! { get }

    /// Required Initialiser for types conforming to `PatternSpecProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `PatternSpecRef` type acts as a lightweight Swift reference to an underlying `GPatternSpec` instance.
/// It exposes methods that can operate on this data type through `PatternSpecProtocol` conformance.
/// Use `PatternSpecRef` only as an `unowned` reference to an existing `GPatternSpec` instance.
///
/// A GPatternSpec struct is the 'compiled' form of a pattern. This
/// structure is opaque and its fields cannot be accessed directly.
public struct PatternSpecRef: PatternSpecProtocol {
        /// Untyped pointer to the underlying `GPatternSpec` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PatternSpecRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GPatternSpec>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GPatternSpec>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GPatternSpec>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GPatternSpec>?) {
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

    /// Reference intialiser for a related type that implements `PatternSpecProtocol`
    @inlinable init<T: PatternSpecProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PatternSpecProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PatternSpecProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PatternSpecProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PatternSpecProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PatternSpecProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PatternSpec` type acts as an owner of an underlying `GPatternSpec` instance.
/// It provides the methods that can operate on this data type through `PatternSpecProtocol` conformance.
/// Use `PatternSpec` as a strong reference or owner of a `GPatternSpec` instance.
///
/// A GPatternSpec struct is the 'compiled' form of a pattern. This
/// structure is opaque and its fields cannot be accessed directly.
open class PatternSpec: PatternSpecProtocol {
        /// Untyped pointer to the underlying `GPatternSpec` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PatternSpec` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GPatternSpec>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PatternSpec` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GPatternSpec>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PatternSpec` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PatternSpec` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PatternSpec` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GPatternSpec>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PatternSpec` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GPatternSpec>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GPatternSpec` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `PatternSpec` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GPatternSpec>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GPatternSpec, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `PatternSpecProtocol`
    /// `GPatternSpec` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `PatternSpecProtocol`
    @inlinable public init<T: PatternSpecProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GPatternSpec, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GPatternSpec`.
    deinit {
        // no reference counting for GPatternSpec, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PatternSpecProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PatternSpecProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GPatternSpec, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PatternSpecProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PatternSpecProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GPatternSpec, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PatternSpecProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PatternSpecProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GPatternSpec, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PatternSpecProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PatternSpecProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GPatternSpec, cannot ref(_ptr)
    }



}

// MARK: no PatternSpec properties

// MARK: no PatternSpec signals

// MARK: PatternSpec has no signals
// MARK: PatternSpec Record: PatternSpecProtocol extension (methods and fields)
public extension PatternSpecProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GPatternSpec` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GPatternSpec>! { return ptr?.assumingMemoryBound(to: GPatternSpec.self) }

    /// Compares two compiled pattern specs and returns whether they will
    /// match the same set of strings.
    @inlinable func equal<PatternSpecT: PatternSpecProtocol>(pspec2: PatternSpecT) -> Bool {
        let rv = ((g_pattern_spec_equal(_ptr, pspec2._ptr)) != 0)
        return rv
    }

    /// Frees the memory allocated for the `GPatternSpec`.
    @inlinable func free() {
        g_pattern_spec_free(_ptr)
    
    }

    /// Matches a string against a compiled pattern. Passing the correct
    /// length of the string given is mandatory. The reversed string can be
    /// omitted by passing `nil`, this is more efficient if the reversed
    /// version of the string to be matched is not at hand, as
    /// `g_pattern_match()` will only construct it if the compiled pattern
    /// requires reverse matches.
    /// 
    /// Note that, if the user code will (possibly) match a string against a
    /// multitude of patterns containing wildcards, chances are high that
    /// some patterns will require a reversed string. In this case, it's
    /// more efficient to provide the reversed string to avoid multiple
    /// constructions thereof in the various calls to `g_pattern_match()`.
    /// 
    /// Note also that the reverse of a UTF-8 encoded string can in general
    /// not be obtained by `g_strreverse()`. This works only if the string
    /// does not contain any multibyte characters. GLib offers the
    /// `g_utf8_strreverse()` function to reverse UTF-8 encoded strings.
    @inlinable func patternMatch(stringLength: Int, string: UnsafePointer<gchar>!, stringReversed: UnsafePointer<gchar>? = nil) -> Bool {
        let rv = ((g_pattern_match(_ptr, guint(stringLength), string, stringReversed)) != 0)
        return rv
    }

    /// Matches a string against a compiled pattern. If the string is to be
    /// matched against more than one pattern, consider using
    /// `g_pattern_match()` instead while supplying the reversed string.
    @inlinable func patternMatch(string: UnsafePointer<gchar>!) -> Bool {
        let rv = ((g_pattern_match_string(_ptr, string)) != 0)
        return rv
    }


}



