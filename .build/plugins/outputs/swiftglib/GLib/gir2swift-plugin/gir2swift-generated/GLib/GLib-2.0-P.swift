import CGLib

// MARK: - PatternSpec Record

/// A GPatternSpec struct is the 'compiled' form of a pattern. This
/// structure is opaque and its fields cannot be accessed directly.
///
/// The `PatternSpecProtocol` protocol exposes the methods and properties of an underlying `GPatternSpec` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PatternSpec`.
/// Alternatively, use `PatternSpecRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol PatternSpecProtocol {
        /// Untyped pointer to the underlying `GPatternSpec` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GPatternSpec` instance.
    var pattern_spec_ptr: UnsafeMutablePointer<GPatternSpec>! { get }

    /// Required Initialiser for types conforming to `PatternSpecProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A GPatternSpec struct is the 'compiled' form of a pattern. This
/// structure is opaque and its fields cannot be accessed directly.
///
/// The `PatternSpecRef` type acts as a lightweight Swift reference to an underlying `GPatternSpec` instance.
/// It exposes methods that can operate on this data type through `PatternSpecProtocol` conformance.
/// Use `PatternSpecRef` only as an `unowned` reference to an existing `GPatternSpec` instance.
///
public struct PatternSpecRef: PatternSpecProtocol {
        /// Untyped pointer to the underlying `GPatternSpec` instance.
    /// For type-safe access, use the generated, typed pointer `pattern_spec_ptr` property instead.
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

        /// Compiles a pattern to a `GPatternSpec`.
    @inlinable init( pattern: UnsafePointer<gchar>!) {
            let result = g_pattern_spec_new(pattern)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }
}

/// A GPatternSpec struct is the 'compiled' form of a pattern. This
/// structure is opaque and its fields cannot be accessed directly.
///
/// The `PatternSpec` type acts as an owner of an underlying `GPatternSpec` instance.
/// It provides the methods that can operate on this data type through `PatternSpecProtocol` conformance.
/// Use `PatternSpec` as a strong reference or owner of a `GPatternSpec` instance.
///
open class PatternSpec: PatternSpecProtocol {
        /// Untyped pointer to the underlying `GPatternSpec` instance.
    /// For type-safe access, use the generated, typed pointer `pattern_spec_ptr` property instead.
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
        // no reference counting for GPatternSpec, cannot ref(pattern_spec_ptr)
    }

    /// Reference intialiser for a related type that implements `PatternSpecProtocol`
    /// `GPatternSpec` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `PatternSpecProtocol`
    @inlinable public init<T: PatternSpecProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GPatternSpec, cannot ref(pattern_spec_ptr)
    }

    /// Do-nothing destructor for `GPatternSpec`.
    deinit {
        // no reference counting for GPatternSpec, cannot unref(pattern_spec_ptr)
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
        // no reference counting for GPatternSpec, cannot ref(pattern_spec_ptr)
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
        // no reference counting for GPatternSpec, cannot ref(pattern_spec_ptr)
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
        // no reference counting for GPatternSpec, cannot ref(pattern_spec_ptr)
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
        // no reference counting for GPatternSpec, cannot ref(pattern_spec_ptr)
    }

    /// Compiles a pattern to a `GPatternSpec`.
    @inlinable public init( pattern: UnsafePointer<gchar>!) {
            let result = g_pattern_spec_new(pattern)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no PatternSpec properties

// MARK: no PatternSpec signals

// MARK: PatternSpec has no signals
// MARK: PatternSpec Record: PatternSpecProtocol extension (methods and fields)
public extension PatternSpecProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GPatternSpec` instance.
    @inlinable var pattern_spec_ptr: UnsafeMutablePointer<GPatternSpec>! { return ptr?.assumingMemoryBound(to: GPatternSpec.self) }

    /// Copies `pspec` in a new `GPatternSpec`.
    @inlinable func copy() -> PatternSpecRef! {
        let result = g_pattern_spec_copy(pattern_spec_ptr)
        guard let rv = PatternSpecRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Compares two compiled pattern specs and returns whether they will
    /// match the same set of strings.
    @inlinable func equal<PatternSpecT: PatternSpecProtocol>(pspec2: PatternSpecT) -> Bool {
        let result = g_pattern_spec_equal(pattern_spec_ptr, pspec2.pattern_spec_ptr)
        let rv = ((result) != 0)
        return rv
    }

    /// Frees the memory allocated for the `GPatternSpec`.
    @inlinable func free() {
        
        g_pattern_spec_free(pattern_spec_ptr)
        
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
    @inlinable func match(stringLength: Int, string: UnsafePointer<gchar>!, stringReversed: UnsafePointer<gchar>? = nil) -> Bool {
        let result = g_pattern_spec_match(pattern_spec_ptr, gsize(stringLength), string, stringReversed)
        let rv = ((result) != 0)
        return rv
    }

    /// Matches a string against a compiled pattern. If the string is to be
    /// matched against more than one pattern, consider using
    /// `g_pattern_match()` instead while supplying the reversed string.
    @inlinable func match(string: UnsafePointer<gchar>!) -> Bool {
        let result = g_pattern_spec_match_string(pattern_spec_ptr, string)
        let rv = ((result) != 0)
        return rv
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
    ///
    /// **pattern_match is deprecated:**
    /// Use g_pattern_spec_match() instead
    @available(*, deprecated) @inlinable func patternMatch(stringLength: Int, string: UnsafePointer<gchar>!, stringReversed: UnsafePointer<gchar>? = nil) -> Bool {
        let result = g_pattern_match(pattern_spec_ptr, guint(stringLength), string, stringReversed)
        let rv = ((result) != 0)
        return rv
    }

    /// Matches a string against a compiled pattern. If the string is to be
    /// matched against more than one pattern, consider using
    /// `g_pattern_match()` instead while supplying the reversed string.
    ///
    /// **pattern_match_string is deprecated:**
    /// Use g_pattern_spec_match_string() instead
    @available(*, deprecated) @inlinable func patternMatch(string: UnsafePointer<gchar>!) -> Bool {
        let result = g_pattern_match_string(pattern_spec_ptr, string)
        let rv = ((result) != 0)
        return rv
    }


}



// MARK: - PollFD Record

/// Represents a file descriptor, which events to poll for, and which events
/// occurred.
///
/// The `PollFDProtocol` protocol exposes the methods and properties of an underlying `GPollFD` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PollFD`.
/// Alternatively, use `PollFDRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol PollFDProtocol {
        /// Untyped pointer to the underlying `GPollFD` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GPollFD` instance.
    var pollfd_ptr: UnsafeMutablePointer<GPollFD>! { get }

    /// Required Initialiser for types conforming to `PollFDProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Represents a file descriptor, which events to poll for, and which events
/// occurred.
///
/// The `PollFDRef` type acts as a lightweight Swift reference to an underlying `GPollFD` instance.
/// It exposes methods that can operate on this data type through `PollFDProtocol` conformance.
/// Use `PollFDRef` only as an `unowned` reference to an existing `GPollFD` instance.
///
public struct PollFDRef: PollFDProtocol {
        /// Untyped pointer to the underlying `GPollFD` instance.
    /// For type-safe access, use the generated, typed pointer `pollfd_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PollFDRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GPollFD>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GPollFD>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GPollFD>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GPollFD>?) {
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

    /// Reference intialiser for a related type that implements `PollFDProtocol`
    @inlinable init<T: PollFDProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollFDProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollFDProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollFDProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollFDProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollFDProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// Represents a file descriptor, which events to poll for, and which events
/// occurred.
///
/// The `PollFD` type acts as an owner of an underlying `GPollFD` instance.
/// It provides the methods that can operate on this data type through `PollFDProtocol` conformance.
/// Use `PollFD` as a strong reference or owner of a `GPollFD` instance.
///
open class PollFD: PollFDProtocol {
        /// Untyped pointer to the underlying `GPollFD` instance.
    /// For type-safe access, use the generated, typed pointer `pollfd_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PollFD` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GPollFD>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PollFD` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GPollFD>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PollFD` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PollFD` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PollFD` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GPollFD>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PollFD` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GPollFD>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GPollFD` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `PollFD` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GPollFD>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GPollFD, cannot ref(pollfd_ptr)
    }

    /// Reference intialiser for a related type that implements `PollFDProtocol`
    /// `GPollFD` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `PollFDProtocol`
    @inlinable public init<T: PollFDProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GPollFD, cannot ref(pollfd_ptr)
    }

    /// Do-nothing destructor for `GPollFD`.
    deinit {
        // no reference counting for GPollFD, cannot unref(pollfd_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollFDProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollFDProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GPollFD, cannot ref(pollfd_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollFDProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollFDProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GPollFD, cannot ref(pollfd_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollFDProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollFDProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GPollFD, cannot ref(pollfd_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollFDProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollFDProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GPollFD, cannot ref(pollfd_ptr)
    }



}

// MARK: no PollFD properties

// MARK: no PollFD signals

// MARK: PollFD has no signals
// MARK: PollFD Record: PollFDProtocol extension (methods and fields)
public extension PollFDProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GPollFD` instance.
    @inlinable var pollfd_ptr: UnsafeMutablePointer<GPollFD>! { return ptr?.assumingMemoryBound(to: GPollFD.self) }

    /// Polls `fds`, as with the `poll()` system call, but portably. (On
    /// systems that don't have `poll()`, it is emulated using `select()`.)
    /// This is used internally by `GMainContext`, but it can be called
    /// directly if you need to block until a file descriptor is ready, but
    /// don't want to run the full main loop.
    /// 
    /// Each element of `fds` is a `GPollFD` describing a single file
    /// descriptor to poll. The `fd` field indicates the file descriptor,
    /// and the `events` field indicates the events to poll for. On return,
    /// the `revents` fields will be filled with the events that actually
    /// occurred.
    /// 
    /// On POSIX systems, the file descriptors in `fds` can be any sort of
    /// file descriptor, but the situation is much more complicated on
    /// Windows. If you need to use `g_poll()` in code that has to run on
    /// Windows, the easiest solution is to construct all of your
    /// `GPollFDs` with `g_io_channel_win32_make_pollfd()`.
    @inlinable func poll(nfds: Int, timeout: Int) -> Int {
        let result = g_poll(pollfd_ptr, guint(nfds), gint(timeout))
        let rv = Int(result)
        return rv
    }

    /// the file descriptor to poll (or a HANDLE on Win32)
    @inlinable var fd: gint {
        /// the file descriptor to poll (or a HANDLE on Win32)
        get {
            let rv = pollfd_ptr.pointee.fd
    return rv
        }
        /// the file descriptor to poll (or a HANDLE on Win32)
         set {
            pollfd_ptr.pointee.fd = newValue
        }
    }

    /// a bitwise combination from `GIOCondition`, specifying which
    ///     events should be polled for. Typically for reading from a file
    ///     descriptor you would use `G_IO_IN` | `G_IO_HUP` | `G_IO_ERR`, and
    ///     for writing you would use `G_IO_OUT` | `G_IO_ERR`.
    @inlinable var events: gushort {
        /// a bitwise combination from `GIOCondition`, specifying which
        ///     events should be polled for. Typically for reading from a file
        ///     descriptor you would use `G_IO_IN` | `G_IO_HUP` | `G_IO_ERR`, and
        ///     for writing you would use `G_IO_OUT` | `G_IO_ERR`.
        get {
            let rv = pollfd_ptr.pointee.events
    return rv
        }
        /// a bitwise combination from `GIOCondition`, specifying which
        ///     events should be polled for. Typically for reading from a file
        ///     descriptor you would use `G_IO_IN` | `G_IO_HUP` | `G_IO_ERR`, and
        ///     for writing you would use `G_IO_OUT` | `G_IO_ERR`.
         set {
            pollfd_ptr.pointee.events = newValue
        }
    }

    /// a bitwise combination of flags from `GIOCondition`, returned
    ///     from the `poll()` function to indicate which events occurred.
    @inlinable var revents: gushort {
        /// a bitwise combination of flags from `GIOCondition`, returned
        ///     from the `poll()` function to indicate which events occurred.
        get {
            let rv = pollfd_ptr.pointee.revents
    return rv
        }
        /// a bitwise combination of flags from `GIOCondition`, returned
        ///     from the `poll()` function to indicate which events occurred.
         set {
            pollfd_ptr.pointee.revents = newValue
        }
    }

}



// MARK: - Private Record

/// The `GPrivate` struct is an opaque data structure to represent a
/// thread-local data key. It is approximately equivalent to the
/// `pthread_setspecific()``/pthread_getspecific()` APIs on POSIX and to
/// `TlsSetValue()``/TlsGetValue()` on Windows.
/// 
/// If you don't already know why you might want this functionality,
/// then you probably don't need it.
/// 
/// `GPrivate` is a very limited resource (as far as 128 per program,
/// shared between all libraries). It is also not possible to destroy a
/// `GPrivate` after it has been used. As such, it is only ever acceptable
/// to use `GPrivate` in static scope, and even then sparingly so.
/// 
/// See `G_PRIVATE_INIT()` for a couple of examples.
/// 
/// The `GPrivate` structure should be considered opaque.  It should only
/// be accessed via the g_private_ functions.
///
/// The `PrivateProtocol` protocol exposes the methods and properties of an underlying `GPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Private`.
/// Alternatively, use `PrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol PrivateProtocol {
        /// Untyped pointer to the underlying `GPrivate` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GPrivate` instance.
    var _ptr: UnsafeMutablePointer<GPrivate>! { get }

    /// Required Initialiser for types conforming to `PrivateProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `GPrivate` struct is an opaque data structure to represent a
/// thread-local data key. It is approximately equivalent to the
/// `pthread_setspecific()``/pthread_getspecific()` APIs on POSIX and to
/// `TlsSetValue()``/TlsGetValue()` on Windows.
/// 
/// If you don't already know why you might want this functionality,
/// then you probably don't need it.
/// 
/// `GPrivate` is a very limited resource (as far as 128 per program,
/// shared between all libraries). It is also not possible to destroy a
/// `GPrivate` after it has been used. As such, it is only ever acceptable
/// to use `GPrivate` in static scope, and even then sparingly so.
/// 
/// See `G_PRIVATE_INIT()` for a couple of examples.
/// 
/// The `GPrivate` structure should be considered opaque.  It should only
/// be accessed via the g_private_ functions.
///
/// The `PrivateRef` type acts as a lightweight Swift reference to an underlying `GPrivate` instance.
/// It exposes methods that can operate on this data type through `PrivateProtocol` conformance.
/// Use `PrivateRef` only as an `unowned` reference to an existing `GPrivate` instance.
///
public struct PrivateRef: PrivateProtocol {
        /// Untyped pointer to the underlying `GPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PrivateRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GPrivate>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GPrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GPrivate>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GPrivate>?) {
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

    /// Reference intialiser for a related type that implements `PrivateProtocol`
    @inlinable init<T: PrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrivateProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrivateProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrivateProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrivateProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrivateProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `GPrivate` struct is an opaque data structure to represent a
/// thread-local data key. It is approximately equivalent to the
/// `pthread_setspecific()``/pthread_getspecific()` APIs on POSIX and to
/// `TlsSetValue()``/TlsGetValue()` on Windows.
/// 
/// If you don't already know why you might want this functionality,
/// then you probably don't need it.
/// 
/// `GPrivate` is a very limited resource (as far as 128 per program,
/// shared between all libraries). It is also not possible to destroy a
/// `GPrivate` after it has been used. As such, it is only ever acceptable
/// to use `GPrivate` in static scope, and even then sparingly so.
/// 
/// See `G_PRIVATE_INIT()` for a couple of examples.
/// 
/// The `GPrivate` structure should be considered opaque.  It should only
/// be accessed via the g_private_ functions.
///
/// The `Private` type acts as an owner of an underlying `GPrivate` instance.
/// It provides the methods that can operate on this data type through `PrivateProtocol` conformance.
/// Use `Private` as a strong reference or owner of a `GPrivate` instance.
///
open class Private: PrivateProtocol {
        /// Untyped pointer to the underlying `GPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Private` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Private` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GPrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Private` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Private` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Private` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GPrivate>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Private` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GPrivate>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Private` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GPrivate, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `PrivateProtocol`
    /// `GPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `PrivateProtocol`
    @inlinable public init<T: PrivateProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GPrivate, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GPrivate`.
    deinit {
        // no reference counting for GPrivate, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrivateProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GPrivate, cannot ref(_ptr)
    }



}

// MARK: no Private properties

// MARK: no Private signals

// MARK: Private has no signals
// MARK: Private Record: PrivateProtocol extension (methods and fields)
public extension PrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GPrivate` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GPrivate>! { return ptr?.assumingMemoryBound(to: GPrivate.self) }

    /// Returns the current value of the thread local variable `key`.
    /// 
    /// If the value has not yet been set in this thread, `nil` is returned.
    /// Values are never copied between threads (when a new thread is
    /// created, for example).
    @inlinable func get() -> gpointer? {
        let result = g_private_get(_ptr)
        let rv = result
        return rv
    }

    /// Sets the thread local variable `key` to have the value `value` in the
    /// current thread.
    /// 
    /// This function differs from `g_private_set()` in the following way: if
    /// the previous value was non-`nil` then the `GDestroyNotify` handler for
    /// `key` is run on it.
    @inlinable func replace(value: gpointer? = nil) {
        
        g_private_replace(_ptr, value)
        
    }

    /// Sets the thread local variable `key` to have the value `value` in the
    /// current thread.
    /// 
    /// This function differs from `g_private_replace()` in the following way:
    /// the `GDestroyNotify` for `key` is not called on the old value.
    @inlinable func set(value: gpointer? = nil) {
        
        g_private_set(_ptr, value)
        
    }

    // var p is unavailable because p is private

    // var notify is unavailable because notify is private

    // var future is unavailable because future is private

}



// MARK: - PtrArray Record

/// Contains the public fields of a pointer array.
///
/// The `PtrArrayProtocol` protocol exposes the methods and properties of an underlying `GPtrArray` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PtrArray`.
/// Alternatively, use `PtrArrayRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol PtrArrayProtocol {
        /// Untyped pointer to the underlying `GPtrArray` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GPtrArray` instance.
    var ptr_array_ptr: UnsafeMutablePointer<GPtrArray>! { get }

    /// Required Initialiser for types conforming to `PtrArrayProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Contains the public fields of a pointer array.
///
/// The `PtrArrayRef` type acts as a lightweight Swift reference to an underlying `GPtrArray` instance.
/// It exposes methods that can operate on this data type through `PtrArrayProtocol` conformance.
/// Use `PtrArrayRef` only as an `unowned` reference to an existing `GPtrArray` instance.
///
public struct PtrArrayRef: PtrArrayProtocol {
        /// Untyped pointer to the underlying `GPtrArray` instance.
    /// For type-safe access, use the generated, typed pointer `ptr_array_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PtrArrayRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GPtrArray>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GPtrArray>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GPtrArray>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GPtrArray>?) {
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

    /// Reference intialiser for a related type that implements `PtrArrayProtocol`
    @inlinable init<T: PtrArrayProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GPtrArray` with `reserved_size` pointers preallocated
    /// and a reference count of 1. This avoids frequent reallocation, if
    /// you are going to add many pointers to the array. Note however that
    /// the size of the array is still 0. It also set `element_free_func`
    /// for freeing each element when the array is destroyed either via
    /// `g_ptr_array_unref()`, when `g_ptr_array_free()` is called with
    /// `free_segment` set to `true` or when removing elements.
    @inlinable static func new(full reservedSize: Int, elementFreeFunc: GDestroyNotify? = nil) -> PtrArrayRef! {
            let result = g_ptr_array_new_full(guint(reservedSize), elementFreeFunc)
        guard let rv = PtrArrayRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new `GPtrArray` with a reference count of 1 and use
    /// `element_free_func` for freeing each element when the array is destroyed
    /// either via `g_ptr_array_unref()`, when `g_ptr_array_free()` is called with
    /// `free_segment` set to `true` or when removing elements.
    @inlinable static func newWith(freeFunc elementFreeFunc: GDestroyNotify? = nil) -> PtrArrayRef! {
            let result = g_ptr_array_new_with_free_func(elementFreeFunc)
        guard let rv = PtrArrayRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new `GPtrArray` with `reserved_size` pointers preallocated
    /// and a reference count of 1. This avoids frequent reallocation, if
    /// you are going to add many pointers to the array. Note however that
    /// the size of the array is still 0.
    @inlinable static func sizedNew(sized reservedSize: Int) -> PtrArrayRef! {
            let result = g_ptr_array_sized_new(guint(reservedSize))
        guard let rv = PtrArrayRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }
}

/// Contains the public fields of a pointer array.
///
/// The `PtrArray` type acts as a reference-counted owner of an underlying `GPtrArray` instance.
/// It provides the methods that can operate on this data type through `PtrArrayProtocol` conformance.
/// Use `PtrArray` as a strong reference or owner of a `GPtrArray` instance.
///
open class PtrArray: PtrArrayProtocol {
        /// Untyped pointer to the underlying `GPtrArray` instance.
    /// For type-safe access, use the generated, typed pointer `ptr_array_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PtrArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GPtrArray>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PtrArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GPtrArray>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PtrArray` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PtrArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PtrArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GPtrArray>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PtrArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GPtrArray>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GPtrArray`.
    /// i.e., ownership is transferred to the `PtrArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GPtrArray>) {
        ptr = UnsafeMutableRawPointer(op)
        g_ptr_array_ref(ptr.assumingMemoryBound(to: GPtrArray.self))
    }

    /// Reference intialiser for a related type that implements `PtrArrayProtocol`
    /// Will retain `GPtrArray`.
    /// - Parameter other: an instance of a related type that implements `PtrArrayProtocol`
    @inlinable public init<T: PtrArrayProtocol>(_ other: T) {
        ptr = other.ptr
        g_ptr_array_ref(ptr.assumingMemoryBound(to: GPtrArray.self))
    }

    /// Releases the underlying `GPtrArray` instance using `g_ptr_array_unref`.
    deinit {
        g_ptr_array_unref(ptr.assumingMemoryBound(to: GPtrArray.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_ptr_array_ref(ptr.assumingMemoryBound(to: GPtrArray.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_ptr_array_ref(ptr.assumingMemoryBound(to: GPtrArray.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_ptr_array_ref(ptr.assumingMemoryBound(to: GPtrArray.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_ptr_array_ref(ptr.assumingMemoryBound(to: GPtrArray.self))
    }


    /// Creates a new `GPtrArray` with `reserved_size` pointers preallocated
    /// and a reference count of 1. This avoids frequent reallocation, if
    /// you are going to add many pointers to the array. Note however that
    /// the size of the array is still 0. It also set `element_free_func`
    /// for freeing each element when the array is destroyed either via
    /// `g_ptr_array_unref()`, when `g_ptr_array_free()` is called with
    /// `free_segment` set to `true` or when removing elements.
    @inlinable public static func new(full reservedSize: Int, elementFreeFunc: GDestroyNotify? = nil) -> PtrArray! {
            let result = g_ptr_array_new_full(guint(reservedSize), elementFreeFunc)
        guard let rv = PtrArray(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new `GPtrArray` with a reference count of 1 and use
    /// `element_free_func` for freeing each element when the array is destroyed
    /// either via `g_ptr_array_unref()`, when `g_ptr_array_free()` is called with
    /// `free_segment` set to `true` or when removing elements.
    @inlinable public static func newWith(freeFunc elementFreeFunc: GDestroyNotify? = nil) -> PtrArray! {
            let result = g_ptr_array_new_with_free_func(elementFreeFunc)
        guard let rv = PtrArray(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new `GPtrArray` with `reserved_size` pointers preallocated
    /// and a reference count of 1. This avoids frequent reallocation, if
    /// you are going to add many pointers to the array. Note however that
    /// the size of the array is still 0.
    @inlinable public static func sizedNew(sized reservedSize: Int) -> PtrArray! {
            let result = g_ptr_array_sized_new(guint(reservedSize))
        guard let rv = PtrArray(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

}

// MARK: no PtrArray properties

// MARK: no PtrArray signals

// MARK: PtrArray has no signals
// MARK: PtrArray Record: PtrArrayProtocol extension (methods and fields)
public extension PtrArrayProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GPtrArray` instance.
    @inlinable var ptr_array_ptr: UnsafeMutablePointer<GPtrArray>! { return ptr?.assumingMemoryBound(to: GPtrArray.self) }

    /// Adds a pointer to the end of the pointer array. The array will grow
    /// in size automatically if necessary.
    @inlinable func add(data: gpointer? = nil) {
        
        g_ptr_array_add(ptr_array_ptr, data)
        
    }

    /// Makes a full (deep) copy of a `GPtrArray`.
    /// 
    /// `func`, as a `GCopyFunc`, takes two arguments, the data to be copied
    /// and a `user_data` pointer. On common processor architectures, it's safe to
    /// pass `nil` as `user_data` if the copy function takes only one argument. You
    /// may get compiler warnings from this though if compiling with GCC’s
    /// `-Wcast-function-type` warning.
    /// 
    /// If `func` is `nil`, then only the pointers (and not what they are
    /// pointing to) are copied to the new `GPtrArray`.
    /// 
    /// The copy of `array` will have the same `GDestroyNotify` for its elements as
    /// `array`.
    @inlinable func copy(`func`: GCopyFunc? = nil, userData: gpointer? = nil) -> PtrArrayRef! {
        let result = g_ptr_array_copy(ptr_array_ptr, `func`, userData)
        guard let rv = PtrArrayRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Adds all pointers of `array` to the end of the array `array_to_extend`.
    /// The array will grow in size automatically if needed. `array_to_extend` is
    /// modified in-place.
    /// 
    /// `func`, as a `GCopyFunc`, takes two arguments, the data to be copied
    /// and a `user_data` pointer. On common processor architectures, it's safe to
    /// pass `nil` as `user_data` if the copy function takes only one argument. You
    /// may get compiler warnings from this though if compiling with GCC’s
    /// `-Wcast-function-type` warning.
    /// 
    /// If `func` is `nil`, then only the pointers (and not what they are
    /// pointing to) are copied to the new `GPtrArray`.
    @inlinable func extend<PtrArrayT: PtrArrayProtocol>(array: PtrArrayT, `func`: GCopyFunc? = nil, userData: gpointer? = nil) {
        
        g_ptr_array_extend(ptr_array_ptr, array.ptr_array_ptr, `func`, userData)
        
    }

    /// Adds all the pointers in `array` to the end of `array_to_extend`, transferring
    /// ownership of each element from `array` to `array_to_extend` and modifying
    /// `array_to_extend` in-place. `array` is then freed.
    /// 
    /// As with `g_ptr_array_free()`, `array` will be destroyed if its reference count
    /// is 1. If its reference count is higher, it will be decremented and the
    /// length of `array` set to zero.
    @inlinable func extendAndSteal<PtrArrayT: PtrArrayProtocol>(array: PtrArrayT) {
        
        g_ptr_array_extend_and_steal(ptr_array_ptr, array.ptr_array_ptr)
        
    }

    /// Checks whether `needle` exists in `haystack`. If the element is found, `true` is
    /// returned and the element’s index is returned in `index_` (if non-`nil`).
    /// Otherwise, `false` is returned and `index_` is undefined. If `needle` exists
    /// multiple times in `haystack`, the index of the first instance is returned.
    /// 
    /// This does pointer comparisons only. If you want to use more complex equality
    /// checks, such as string comparisons, use `g_ptr_array_find_with_equal_func()`.
    @inlinable func find(needle: gconstpointer? = nil, index: UnsafeMutablePointer<guint>! = nil) -> Bool {
        let result = g_ptr_array_find(ptr_array_ptr, needle, index)
        let rv = ((result) != 0)
        return rv
    }

    /// Checks whether `needle` exists in `haystack`, using the given `equal_func`.
    /// If the element is found, `true` is returned and the element’s index is
    /// returned in `index_` (if non-`nil`). Otherwise, `false` is returned and `index_`
    /// is undefined. If `needle` exists multiple times in `haystack`, the index of
    /// the first instance is returned.
    /// 
    /// `equal_func` is called with the element from the array as its first parameter,
    /// and `needle` as its second parameter. If `equal_func` is `nil`, pointer
    /// equality is used.
    @inlinable func findWithEqualFunc(needle: gconstpointer? = nil, equalFunc: GEqualFunc? = nil, index: UnsafeMutablePointer<guint>! = nil) -> Bool {
        let result = g_ptr_array_find_with_equal_func(ptr_array_ptr, needle, equalFunc, index)
        let rv = ((result) != 0)
        return rv
    }

    /// Calls a function for each element of a `GPtrArray`. `func` must not
    /// add elements to or remove elements from the array.
    @inlinable func foreach(`func`: GFunc?, userData: gpointer? = nil) {
        
        g_ptr_array_foreach(ptr_array_ptr, `func`, userData)
        
    }

    /// Frees the memory allocated for the `GPtrArray`. If `free_seg` is `true`
    /// it frees the memory block holding the elements as well. Pass `false`
    /// if you want to free the `GPtrArray` wrapper but preserve the
    /// underlying array for use elsewhere. If the reference count of `array`
    /// is greater than one, the `GPtrArray` wrapper is preserved but the
    /// size of `array` will be set to zero.
    /// 
    /// If array contents point to dynamically-allocated memory, they should
    /// be freed separately if `free_seg` is `true` and no `GDestroyNotify`
    /// function has been set for `array`.
    /// 
    /// This function is not thread-safe. If using a `GPtrArray` from multiple
    /// threads, use only the atomic `g_ptr_array_ref()` and `g_ptr_array_unref()`
    /// functions.
    @inlinable func free(freeSeg: Bool) -> UnsafeMutablePointer<gpointer?>? {
        let result = g_ptr_array_free(ptr_array_ptr, gboolean((freeSeg) ? 1 : 0))
        let rv = result
        return rv
    }

    /// Inserts an element into the pointer array at the given index. The
    /// array will grow in size automatically if necessary.
    @inlinable func insert(index: Int, data: gpointer? = nil) {
        
        g_ptr_array_insert(ptr_array_ptr, gint(index), data)
        
    }

    /// Atomically increments the reference count of `array` by one.
    /// This function is thread-safe and may be called from any thread.
    @discardableResult @inlinable func ref() -> PtrArrayRef! {
        let result = g_ptr_array_ref(ptr_array_ptr)
        guard let rv = PtrArrayRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Removes the first occurrence of the given pointer from the pointer
    /// array. The following elements are moved down one place. If `array`
    /// has a non-`nil` `GDestroyNotify` function it is called for the
    /// removed element.
    /// 
    /// It returns `true` if the pointer was removed, or `false` if the
    /// pointer was not found.
    @inlinable func remove(data: gpointer? = nil) -> Bool {
        let result = g_ptr_array_remove(ptr_array_ptr, data)
        let rv = ((result) != 0)
        return rv
    }

    /// Removes the first occurrence of the given pointer from the pointer
    /// array. The last element in the array is used to fill in the space,
    /// so this function does not preserve the order of the array. But it
    /// is faster than `g_ptr_array_remove()`. If `array` has a non-`nil`
    /// `GDestroyNotify` function it is called for the removed element.
    /// 
    /// It returns `true` if the pointer was removed, or `false` if the
    /// pointer was not found.
    @inlinable func removeFast(data: gpointer? = nil) -> Bool {
        let result = g_ptr_array_remove_fast(ptr_array_ptr, data)
        let rv = ((result) != 0)
        return rv
    }

    /// Removes the pointer at the given index from the pointer array.
    /// The following elements are moved down one place. If `array` has
    /// a non-`nil` `GDestroyNotify` function it is called for the removed
    /// element. If so, the return value from this function will potentially point
    /// to freed memory (depending on the `GDestroyNotify` implementation).
    @inlinable func remove(index: Int) -> gpointer? {
        let result = g_ptr_array_remove_index(ptr_array_ptr, guint(index))
        let rv = result
        return rv
    }

    /// Removes the pointer at the given index from the pointer array.
    /// The last element in the array is used to fill in the space, so
    /// this function does not preserve the order of the array. But it
    /// is faster than `g_ptr_array_remove_index()`. If `array` has a non-`nil`
    /// `GDestroyNotify` function it is called for the removed element. If so, the
    /// return value from this function will potentially point to freed memory
    /// (depending on the `GDestroyNotify` implementation).
    @inlinable func removeIndexFast(index: Int) -> gpointer? {
        let result = g_ptr_array_remove_index_fast(ptr_array_ptr, guint(index))
        let rv = result
        return rv
    }

    /// Removes the given number of pointers starting at the given index
    /// from a `GPtrArray`. The following elements are moved to close the
    /// gap. If `array` has a non-`nil` `GDestroyNotify` function it is
    /// called for the removed elements.
    @inlinable func removeRange(index: Int, length: Int) -> PtrArrayRef! {
        let result = g_ptr_array_remove_range(ptr_array_ptr, guint(index), guint(length))
        guard let rv = PtrArrayRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Sets a function for freeing each element when `array` is destroyed
    /// either via `g_ptr_array_unref()`, when `g_ptr_array_free()` is called
    /// with `free_segment` set to `true` or when removing elements.
    @inlinable func setFreeFunc(elementFreeFunc: GDestroyNotify? = nil) {
        
        g_ptr_array_set_free_func(ptr_array_ptr, elementFreeFunc)
        
    }

    /// Sets the size of the array. When making the array larger,
    /// newly-added elements will be set to `nil`. When making it smaller,
    /// if `array` has a non-`nil` `GDestroyNotify` function then it will be
    /// called for the removed elements.
    @inlinable func setSize(length: Int) {
        
        g_ptr_array_set_size(ptr_array_ptr, gint(length))
        
    }

    /// Sorts the array, using `compare_func` which should be a `qsort()`-style
    /// comparison function (returns less than zero for first arg is less
    /// than second arg, zero for equal, greater than zero if irst arg is
    /// greater than second arg).
    /// 
    /// Note that the comparison function for `g_ptr_array_sort()` doesn't
    /// take the pointers from the array as arguments, it takes pointers to
    /// the pointers in the array. Here is a full example of usage:
    /// 
    /// (C Language Example):
    /// ```C
    /// typedef struct
    /// {
    ///   gchar *name;
    ///   gint size;
    /// } FileListEntry;
    /// 
    /// static gint
    /// sort_filelist (gconstpointer a, gconstpointer b)
    /// {
    ///   const FileListEntry *entry1 = *((FileListEntry **) a);
    ///   const FileListEntry *entry2 = *((FileListEntry **) b);
    /// 
    ///   return g_ascii_strcasecmp (entry1->name, entry2->name);
    /// }
    /// 
    /// …
    /// g_autoptr (GPtrArray) file_list = NULL;
    /// 
    /// // initialize file_list array and load with many FileListEntry entries
    /// ...
    /// // now sort it with
    /// g_ptr_array_sort (file_list, sort_filelist);
    /// ```
    /// 
    /// This is guaranteed to be a stable sort since version 2.32.
    @inlinable func sort(compareFunc: GCompareFunc?) {
        
        g_ptr_array_sort(ptr_array_ptr, compareFunc)
        
    }

    /// Like `g_ptr_array_sort()`, but the comparison function has an extra
    /// user data argument.
    /// 
    /// Note that the comparison function for `g_ptr_array_sort_with_data()`
    /// doesn't take the pointers from the array as arguments, it takes
    /// pointers to the pointers in the array. Here is a full example of use:
    /// 
    /// (C Language Example):
    /// ```C
    /// typedef enum { SORT_NAME, SORT_SIZE } SortMode;
    /// 
    /// typedef struct
    /// {
    ///   gchar *name;
    ///   gint size;
    /// } FileListEntry;
    /// 
    /// static gint
    /// sort_filelist (gconstpointer a, gconstpointer b, gpointer user_data)
    /// {
    ///   gint order;
    ///   const SortMode sort_mode = GPOINTER_TO_INT (user_data);
    ///   const FileListEntry *entry1 = *((FileListEntry **) a);
    ///   const FileListEntry *entry2 = *((FileListEntry **) b);
    /// 
    ///   switch (sort_mode)
    ///     {
    ///     case SORT_NAME:
    ///       order = g_ascii_strcasecmp (entry1->name, entry2->name);
    ///       break;
    ///     case SORT_SIZE:
    ///       order = entry1->size - entry2->size;
    ///       break;
    ///     default:
    ///       order = 0;
    ///       break;
    ///     }
    ///   return order;
    /// }
    /// 
    /// ...
    /// g_autoptr (GPtrArray) file_list = NULL;
    /// SortMode sort_mode;
    /// 
    /// // initialize file_list array and load with many FileListEntry entries
    /// ...
    /// // now sort it with
    /// sort_mode = SORT_NAME;
    /// g_ptr_array_sort_with_data (file_list,
    ///                             sort_filelist,
    ///                             GINT_TO_POINTER (sort_mode));
    /// ```
    /// 
    /// This is guaranteed to be a stable sort since version 2.32.
    @inlinable func sortWithData(compareFunc: GCompareDataFunc?, userData: gpointer? = nil) {
        
        g_ptr_array_sort_with_data(ptr_array_ptr, compareFunc, userData)
        
    }

    /// Frees the data in the array and resets the size to zero, while
    /// the underlying array is preserved for use elsewhere and returned
    /// to the caller.
    /// 
    /// Even if set, the `GDestroyNotify` function will never be called
    /// on the current contents of the array and the caller is
    /// responsible for freeing the array elements.
    /// 
    /// An example of use:
    /// (C Language Example):
    /// ```C
    /// g_autoptr(GPtrArray) chunk_buffer = g_ptr_array_new_with_free_func (g_bytes_unref);
    /// 
    /// // Some part of your application appends a number of chunks to the pointer array.
    /// g_ptr_array_add (chunk_buffer, g_bytes_new_static ("hello", 5));
    /// g_ptr_array_add (chunk_buffer, g_bytes_new_static ("world", 5));
    /// 
    /// …
    /// 
    /// // Periodically, the chunks need to be sent as an array-and-length to some
    /// // other part of the program.
    /// GBytes **chunks;
    /// gsize n_chunks;
    /// 
    /// chunks = g_ptr_array_steal (chunk_buffer, &n_chunks);
    /// for (gsize i = 0; i < n_chunks; i++)
    ///   {
    ///     // Do something with each chunk here, and then free them, since
    ///     // g_ptr_array_steal() transfers ownership of all the elements and the
    ///     // array to the caller.
    ///     …
    /// 
    ///     g_bytes_unref (chunks[i]);
    ///   }
    /// 
    /// g_free (chunks);
    /// 
    /// // After calling g_ptr_array_steal(), the pointer array can be reused for the
    /// // next set of chunks.
    /// g_assert (chunk_buffer->len == 0);
    /// ```
    /// 
    @inlinable func steal(len: UnsafeMutablePointer<gsize>! = nil) -> UnsafeMutablePointer<gpointer?>? {
        let result = g_ptr_array_steal(ptr_array_ptr, len)
        let rv = result
        return rv
    }

    /// Removes the pointer at the given index from the pointer array.
    /// The following elements are moved down one place. The `GDestroyNotify` for
    /// `array` is *not* called on the removed element; ownership is transferred to
    /// the caller of this function.
    @inlinable func steal(index: Int) -> gpointer? {
        let result = g_ptr_array_steal_index(ptr_array_ptr, guint(index))
        let rv = result
        return rv
    }

    /// Removes the pointer at the given index from the pointer array.
    /// The last element in the array is used to fill in the space, so
    /// this function does not preserve the order of the array. But it
    /// is faster than `g_ptr_array_steal_index()`. The `GDestroyNotify` for `array` is
    /// *not* called on the removed element; ownership is transferred to the caller
    /// of this function.
    @inlinable func stealIndexFast(index: Int) -> gpointer? {
        let result = g_ptr_array_steal_index_fast(ptr_array_ptr, guint(index))
        let rv = result
        return rv
    }

    /// Atomically decrements the reference count of `array` by one. If the
    /// reference count drops to 0, the effect is the same as calling
    /// `g_ptr_array_free()` with `free_segment` set to `true`. This function
    /// is thread-safe and may be called from any thread.
    @inlinable func unref() {
        
        g_ptr_array_unref(ptr_array_ptr)
        
    }

    /// Checks whether `needle` exists in `haystack`. If the element is found, `true` is
    /// returned and the element’s index is returned in `index_` (if non-`nil`).
    /// Otherwise, `false` is returned and `index_` is undefined. If `needle` exists
    /// multiple times in `haystack`, the index of the first instance is returned.
    /// 
    /// This does pointer comparisons only. If you want to use more complex equality
    /// checks, such as string comparisons, use `g_ptr_array_find_with_equal_func()`.
    @inlinable func ptrArrayFind(needle: gconstpointer? = nil, index: UnsafeMutablePointer<guint>! = nil) -> Bool {
        let result = g_ptr_array_find(ptr_array_ptr, needle, index)
        let rv = ((result) != 0)
        return rv
    }

    /// Checks whether `needle` exists in `haystack`, using the given `equal_func`.
    /// If the element is found, `true` is returned and the element’s index is
    /// returned in `index_` (if non-`nil`). Otherwise, `false` is returned and `index_`
    /// is undefined. If `needle` exists multiple times in `haystack`, the index of
    /// the first instance is returned.
    /// 
    /// `equal_func` is called with the element from the array as its first parameter,
    /// and `needle` as its second parameter. If `equal_func` is `nil`, pointer
    /// equality is used.
    @inlinable func ptrArrayFindWithEqualFunc(needle: gconstpointer? = nil, equalFunc: GEqualFunc? = nil, index: UnsafeMutablePointer<guint>! = nil) -> Bool {
        let result = g_ptr_array_find_with_equal_func(ptr_array_ptr, needle, equalFunc, index)
        let rv = ((result) != 0)
        return rv
    }

    /// points to the array of pointers, which may be moved when the
    ///     array grows
    @inlinable var pdata: UnsafeMutablePointer<gpointer?>! {
        /// points to the array of pointers, which may be moved when the
        ///     array grows
        get {
            let rv = ptr_array_ptr.pointee.pdata
    return rv
        }
        /// points to the array of pointers, which may be moved when the
        ///     array grows
         set {
            ptr_array_ptr.pointee.pdata = newValue
        }
    }

    /// number of pointers in the array
    @inlinable var len: guint {
        /// number of pointers in the array
        get {
            let rv = ptr_array_ptr.pointee.len
    return rv
        }
        /// number of pointers in the array
         set {
            ptr_array_ptr.pointee.len = newValue
        }
    }

}



