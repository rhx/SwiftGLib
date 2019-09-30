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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GPatternSpec` instance.
    var _ptr: UnsafeMutablePointer<GPatternSpec> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension PatternSpecRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GPatternSpec>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PatternSpecProtocol`
    init<T: PatternSpecProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PatternSpecProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PatternSpecProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PatternSpecProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PatternSpecProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PatternSpecProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `PatternSpec` instance.
    public init(_ op: UnsafeMutablePointer<GPatternSpec>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `PatternSpecProtocol`
    /// `GPatternSpec` does not allow reference counting.
    public convenience init<T: PatternSpecProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GPatternSpec, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GPatternSpec`.
    deinit {
        // no reference counting for GPatternSpec, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PatternSpecProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GPatternSpec.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PatternSpecProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GPatternSpec.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PatternSpecProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GPatternSpec.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PatternSpecProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GPatternSpec>(opaquePointer))
    }



}

// MARK: - no PatternSpec properties

// MARK: - no signals


public extension PatternSpecProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GPatternSpec` instance.
    var _ptr: UnsafeMutablePointer<GPatternSpec> { return ptr.assumingMemoryBound(to: GPatternSpec.self) }

    /// Compares two compiled pattern specs and returns whether they will
    /// match the same set of strings.
    func equal(pspec2: PatternSpecProtocol) -> Bool {
        let rv = g_pattern_spec_equal(cast(_ptr), cast(pspec2.ptr))
        return Bool(rv != 0)
    }

    /// Frees the memory allocated for the `GPatternSpec`.
    func free() {
        g_pattern_spec_free(cast(_ptr))
    
    }

    /// Matches a string against a compiled pattern. Passing the correct
    /// length of the string given is mandatory. The reversed string can be
    /// omitted by passing `nil`, this is more efficient if the reversed
    /// version of the string to be matched is not at hand, as
    /// g_pattern_match() will only construct it if the compiled pattern
    /// requires reverse matches.
    /// 
    /// Note that, if the user code will (possibly) match a string against a
    /// multitude of patterns containing wildcards, chances are high that
    /// some patterns will require a reversed string. In this case, it's
    /// more efficient to provide the reversed string to avoid multiple
    /// constructions thereof in the various calls to g_pattern_match().
    /// 
    /// Note also that the reverse of a UTF-8 encoded string can in general
    /// not be obtained by g_strreverse(). This works only if the string
    /// does not contain any multibyte characters. GLib offers the
    /// g_utf8_strreverse() function to reverse UTF-8 encoded strings.
    func patternMatch(stringLength string_length: CUnsignedInt, string: UnsafePointer<gchar>, stringReversed string_reversed: UnsafePointer<gchar>) -> Bool {
        let rv = g_pattern_match(cast(_ptr), guint(string_length), string, string_reversed)
        return Bool(rv != 0)
    }

    /// Matches a string against a compiled pattern. If the string is to be
    /// matched against more than one pattern, consider using
    /// g_pattern_match() instead while supplying the reversed string.
    func patternMatch(string: UnsafePointer<gchar>) -> Bool {
        let rv = g_pattern_match_string(cast(_ptr), string)
        return Bool(rv != 0)
    }
}



