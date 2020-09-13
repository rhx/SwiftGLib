import CGLib

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
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
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



