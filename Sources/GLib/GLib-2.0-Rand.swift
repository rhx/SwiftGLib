import CGLib

// MARK: - Rand Record

/// The `RandProtocol` protocol exposes the methods and properties of an underlying `GRand` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Rand`.
/// Alternatively, use `RandRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The GRand struct is an opaque data structure. It should only be
/// accessed through the g_rand_* functions.
public protocol RandProtocol {
        /// Untyped pointer to the underlying `GRand` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GRand` instance.
    var _ptr: UnsafeMutablePointer<GRand>! { get }

}

/// The `RandRef` type acts as a lightweight Swift reference to an underlying `GRand` instance.
/// It exposes methods that can operate on this data type through `RandProtocol` conformance.
/// Use `RandRef` only as an `unowned` reference to an existing `GRand` instance.
///
/// The GRand struct is an opaque data structure. It should only be
/// accessed through the g_rand_* functions.
public struct RandRef: RandProtocol {
        /// Untyped pointer to the underlying `GRand` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RandRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GRand>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GRand>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GRand>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GRand>?) {
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

    /// Reference intialiser for a related type that implements `RandProtocol`
    @inlinable init<T: RandProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RandProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RandProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RandProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RandProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RandProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new random number generator initialized with `seed`.
    @inlinable static func newWith(seed: guint32) -> RandRef! {
        guard let rv = RandRef(gconstpointer: gconstpointer(g_rand_new_with_seed(seed))) else { return nil }
        return rv
    }

    /// Creates a new random number generator initialized with `seed`.
    @inlinable static func newWith(seedArray seed: UnsafePointer<guint32>!, seedLength: Int) -> RandRef! {
        guard let rv = RandRef(gconstpointer: gconstpointer(g_rand_new_with_seed_array(seed, guint(seedLength)))) else { return nil }
        return rv
    }
}

/// The `Rand` type acts as an owner of an underlying `GRand` instance.
/// It provides the methods that can operate on this data type through `RandProtocol` conformance.
/// Use `Rand` as a strong reference or owner of a `GRand` instance.
///
/// The GRand struct is an opaque data structure. It should only be
/// accessed through the g_rand_* functions.
open class Rand: RandProtocol {
        /// Untyped pointer to the underlying `GRand` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Rand` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GRand>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Rand` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GRand>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Rand` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Rand` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Rand` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GRand>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Rand` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GRand>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GRand` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Rand` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GRand>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GRand, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `RandProtocol`
    /// `GRand` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `RandProtocol`
    @inlinable public init<T: RandProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GRand, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GRand`.
    deinit {
        // no reference counting for GRand, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RandProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RandProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GRand, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RandProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RandProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GRand, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RandProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RandProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GRand, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RandProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RandProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GRand, cannot ref(_ptr)
    }


    /// Creates a new random number generator initialized with `seed`.
    @inlinable public static func newWith(seed: guint32) -> Rand! {
        guard let rv = Rand(gconstpointer: gconstpointer(g_rand_new_with_seed(seed))) else { return nil }
        return rv
    }

    /// Creates a new random number generator initialized with `seed`.
    @inlinable public static func newWith(seedArray seed: UnsafePointer<guint32>!, seedLength: Int) -> Rand! {
        guard let rv = Rand(gconstpointer: gconstpointer(g_rand_new_with_seed_array(seed, guint(seedLength)))) else { return nil }
        return rv
    }

}

// MARK: no Rand properties

// MARK: no Rand signals


// MARK: Rand Record: RandProtocol extension (methods and fields)
public extension RandProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GRand` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GRand>! { return ptr?.assumingMemoryBound(to: GRand.self) }

    /// Copies a `GRand` into a new one with the same exact state as before.
    /// This way you can take a snapshot of the random number generator for
    /// replaying later.
    @inlinable func copy() -> RandRef! {
        guard let rv = RandRef(gconstpointer: gconstpointer(g_rand_copy(_ptr))) else { return nil }
        return rv
    }

    /// Returns the next random `gdouble` from `rand_` equally distributed over
    /// the range [0..1).
    @inlinable func CDouble() -> Double {
        let rv = Double(g_rand_double(_ptr))
        return rv
    }

    /// Returns the next random `gdouble` from `rand_` equally distributed over
    /// the range [`begin.`.`end`).
    @inlinable func doubleRange(begin: Double, end: Double) -> Double {
        let rv = Double(g_rand_double_range(_ptr, gdouble(begin), gdouble(end)))
        return rv
    }

    /// Frees the memory allocated for the `GRand`.
    @inlinable func free() {
        g_rand_free(_ptr)
    
    }

    /// Returns the next random `guint32` from `rand_` equally distributed over
    /// the range [0..2^32-1].
    @inlinable func CInt() -> guint32 {
        let rv = g_rand_int(_ptr)
        return rv
    }

    /// Returns the next random `gint32` from `rand_` equally distributed over
    /// the range [`begin.`.`end`-1].
    @inlinable func intRange(begin: gint32, end: gint32) -> gint32 {
        let rv = g_rand_int_range(_ptr, begin, end)
        return rv
    }

    /// Sets the seed for the random number generator `GRand` to `seed`.
    @inlinable func set(seed: guint32) {
        g_rand_set_seed(_ptr, seed)
    
    }

    /// Initializes the random number generator by an array of longs.
    /// Array can be of arbitrary size, though only the first 624 values
    /// are taken.  This function is useful if you have many low entropy
    /// seeds, or if you require more then 32 bits of actual entropy for
    /// your application.
    @inlinable func setSeedArray(seed: UnsafePointer<guint32>!, seedLength: Int) {
        g_rand_set_seed_array(_ptr, seed, guint(seedLength))
    
    }


}



