import CGLib

// MARK: - VariantIter Record

/// The `VariantIterProtocol` protocol exposes the methods and properties of an underlying `GVariantIter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VariantIter`.
/// Alternatively, use `VariantIterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GVariantIter` is an opaque data structure and can only be accessed
/// using the following functions.
public protocol VariantIterProtocol {
        /// Untyped pointer to the underlying `GVariantIter` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GVariantIter` instance.
    var _ptr: UnsafeMutablePointer<GVariantIter>! { get }

}

/// The `VariantIterRef` type acts as a lightweight Swift reference to an underlying `GVariantIter` instance.
/// It exposes methods that can operate on this data type through `VariantIterProtocol` conformance.
/// Use `VariantIterRef` only as an `unowned` reference to an existing `GVariantIter` instance.
///
/// `GVariantIter` is an opaque data structure and can only be accessed
/// using the following functions.
public struct VariantIterRef: VariantIterProtocol {
        /// Untyped pointer to the underlying `GVariantIter` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension VariantIterRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GVariantIter>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GVariantIter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GVariantIter>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GVariantIter>?) {
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

    /// Reference intialiser for a related type that implements `VariantIterProtocol`
    @inlinable init<T: VariantIterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantIterProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantIterProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantIterProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantIterProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantIterProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `VariantIter` type acts as an owner of an underlying `GVariantIter` instance.
/// It provides the methods that can operate on this data type through `VariantIterProtocol` conformance.
/// Use `VariantIter` as a strong reference or owner of a `GVariantIter` instance.
///
/// `GVariantIter` is an opaque data structure and can only be accessed
/// using the following functions.
open class VariantIter: VariantIterProtocol {
        /// Untyped pointer to the underlying `GVariantIter` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GVariantIter>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GVariantIter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantIter` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GVariantIter>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GVariantIter>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GVariantIter` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `VariantIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GVariantIter>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GVariantIter, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `VariantIterProtocol`
    /// `GVariantIter` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `VariantIterProtocol`
    @inlinable public init<T: VariantIterProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GVariantIter, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GVariantIter`.
    deinit {
        // no reference counting for GVariantIter, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GVariantIter, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantIterProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantIterProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GVariantIter, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantIterProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantIterProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GVariantIter, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GVariantIter, cannot ref(_ptr)
    }



}

// MARK: no VariantIter properties

// MARK: no VariantIter signals


// MARK: VariantIter Record: VariantIterProtocol extension (methods and fields)
public extension VariantIterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GVariantIter` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GVariantIter>! { return ptr?.assumingMemoryBound(to: GVariantIter.self) }

    /// Creates a new heap-allocated `GVariantIter` to iterate over the
    /// container that was being iterated over by `iter`.  Iteration begins on
    /// the new iterator from the current position of the old iterator but
    /// the two copies are independent past that point.
    /// 
    /// Use `g_variant_iter_free()` to free the return value when you no longer
    /// need it.
    /// 
    /// A reference is taken to the container that `iter` is iterating over
    /// and will be releated only when `g_variant_iter_free()` is called.
    @inlinable func copy() -> VariantIterRef! {
        guard let rv = VariantIterRef(gconstpointer: gconstpointer(g_variant_iter_copy(_ptr))) else { return nil }
        return rv
    }

    /// Frees a heap-allocated `GVariantIter`.  Only call this function on
    /// iterators that were returned by `g_variant_iter_new()` or
    /// `g_variant_iter_copy()`.
    @inlinable func free() {
        g_variant_iter_free(_ptr)
    
    }

    /// Initialises (without allocating) a `GVariantIter`.  `iter` may be
    /// completely uninitialised prior to this call; its old value is
    /// ignored.
    /// 
    /// The iterator remains valid for as long as `value` exists, and need not
    /// be freed in any way.
    @inlinable func init_<VariantT: VariantProtocol>(value: VariantT) -> Int {
        let rv = Int(g_variant_iter_init(_ptr, value.variant_ptr))
        return rv
    }


    // *** loop() is not available because it has a varargs (...) parameter!


    /// Queries the number of child items in the container that we are
    /// iterating over.  This is the total number of items -- not the number
    /// of items remaining.
    /// 
    /// This function might be useful for preallocation of arrays.
    @inlinable func nChildren() -> Int {
        let rv = Int(g_variant_iter_n_children(_ptr))
        return rv
    }


    // *** next() is not available because it has a varargs (...) parameter!


    /// Gets the next item in the container.  If no more items remain then
    /// `nil` is returned.
    /// 
    /// Use `g_variant_unref()` to drop your reference on the return value when
    /// you no longer need it.
    /// 
    /// Here is an example for iterating with `g_variant_iter_next_value()`:
    /// (C Language Example):
    /// ```C
    ///   // recursively iterate a container
    ///   void
    ///   iterate_container_recursive (GVariant *container)
    ///   {
    ///     GVariantIter iter;
    ///     GVariant *child;
    /// 
    ///     g_variant_iter_init (&iter, container);
    ///     while ((child = g_variant_iter_next_value (&iter)))
    ///       {
    ///         g_print ("type '%s'\n", g_variant_get_type_string (child));
    /// 
    ///         if (g_variant_is_container (child))
    ///           iterate_container_recursive (child);
    /// 
    ///         g_variant_unref (child);
    ///       }
    ///   }
    /// ```
    /// 
    @inlinable func nextValue() -> VariantRef! {
        let rv = VariantRef(gconstpointer: gconstpointer(g_variant_iter_next_value(_ptr)))
        return rv
    }

    // var x is unavailable because x is private

}


