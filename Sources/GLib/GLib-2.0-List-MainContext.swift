import CGLib

// MARK: - List Record

/// The `ListProtocol` protocol exposes the methods and properties of an underlying `GList` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `List`.
/// Alternatively, use `ListRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GList` struct is used for each element in a doubly-linked list.
public protocol ListProtocol {
        /// Untyped pointer to the underlying `GList` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GList` instance.
    var _ptr: UnsafeMutablePointer<GList>! { get }

    /// Required Initialiser for types conforming to `ListProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ListRef` type acts as a lightweight Swift reference to an underlying `GList` instance.
/// It exposes methods that can operate on this data type through `ListProtocol` conformance.
/// Use `ListRef` only as an `unowned` reference to an existing `GList` instance.
///
/// The `GList` struct is used for each element in a doubly-linked list.
public struct ListRef: ListProtocol {
        /// Untyped pointer to the underlying `GList` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ListRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GList>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GList>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GList>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GList>?) {
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

    /// Reference intialiser for a related type that implements `ListProtocol`
    @inlinable init<T: ListProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `List` type acts as an owner of an underlying `GList` instance.
/// It provides the methods that can operate on this data type through `ListProtocol` conformance.
/// Use `List` as a strong reference or owner of a `GList` instance.
///
/// The `GList` struct is used for each element in a doubly-linked list.
open class List: ListProtocol {
        /// Untyped pointer to the underlying `GList` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `List` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GList>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `List` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GList>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `List` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `List` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `List` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GList>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `List` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GList>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GList` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `List` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GList>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GList, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `ListProtocol`
    /// `GList` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ListProtocol`
    @inlinable public init<T: ListProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GList, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GList`.
    deinit {
        // no reference counting for GList, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GList, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GList, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GList, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GList, cannot ref(_ptr)
    }



}

// MARK: no List properties

// MARK: no List signals

// MARK: List has no signals
// MARK: List Record: ListProtocol extension (methods and fields)
public extension ListProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GList` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GList>! { return ptr?.assumingMemoryBound(to: GList.self) }


    /// holds the element's data, which can be a pointer to any kind
    ///        of data, or any integer value using the
    ///        [Type Conversion Macros](#glib-Type-Conversion-Macros)
    @inlinable var data: gpointer! {
        /// holds the element's data, which can be a pointer to any kind
        ///        of data, or any integer value using the
        ///        [Type Conversion Macros](#glib-Type-Conversion-Macros)
        get {
            let rv = _ptr.pointee.data
            return rv
        }
        /// holds the element's data, which can be a pointer to any kind
        ///        of data, or any integer value using the
        ///        [Type Conversion Macros](#glib-Type-Conversion-Macros)
         set {
            _ptr.pointee.data = newValue
        }
    }

    /// contains the link to the next element in the list
    @inlinable var next: ListRef! {
        /// contains the link to the next element in the list
        get {
            let rv = ListRef(gconstpointer: gconstpointer(_ptr.pointee.next))
            return rv
        }
        /// contains the link to the next element in the list
         set {
            _ptr.pointee.next = UnsafeMutablePointer<GList>(newValue._ptr)
        }
    }

    /// contains the link to the previous element in the list
    @inlinable var prev: ListRef! {
        /// contains the link to the previous element in the list
        get {
            let rv = ListRef(gconstpointer: gconstpointer(_ptr.pointee.prev))
            return rv
        }
        /// contains the link to the previous element in the list
         set {
            _ptr.pointee.prev = UnsafeMutablePointer<GList>(newValue._ptr)
        }
    }

}



// MARK: - LogField Record

/// The `LogFieldProtocol` protocol exposes the methods and properties of an underlying `GLogField` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LogField`.
/// Alternatively, use `LogFieldRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Structure representing a single field in a structured log entry. See
/// `g_log_structured()` for details.
/// 
/// Log fields may contain arbitrary values, including binary with embedded nul
/// bytes. If the field contains a string, the string must be UTF-8 encoded and
/// have a trailing nul byte. Otherwise, `length` must be set to a non-negative
/// value.
public protocol LogFieldProtocol {
        /// Untyped pointer to the underlying `GLogField` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GLogField` instance.
    var _ptr: UnsafeMutablePointer<GLogField>! { get }

    /// Required Initialiser for types conforming to `LogFieldProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `LogFieldRef` type acts as a lightweight Swift reference to an underlying `GLogField` instance.
/// It exposes methods that can operate on this data type through `LogFieldProtocol` conformance.
/// Use `LogFieldRef` only as an `unowned` reference to an existing `GLogField` instance.
///
/// Structure representing a single field in a structured log entry. See
/// `g_log_structured()` for details.
/// 
/// Log fields may contain arbitrary values, including binary with embedded nul
/// bytes. If the field contains a string, the string must be UTF-8 encoded and
/// have a trailing nul byte. Otherwise, `length` must be set to a non-negative
/// value.
public struct LogFieldRef: LogFieldProtocol {
        /// Untyped pointer to the underlying `GLogField` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LogFieldRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GLogField>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GLogField>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GLogField>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GLogField>?) {
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

    /// Reference intialiser for a related type that implements `LogFieldProtocol`
    @inlinable init<T: LogFieldProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `LogField` type acts as an owner of an underlying `GLogField` instance.
/// It provides the methods that can operate on this data type through `LogFieldProtocol` conformance.
/// Use `LogField` as a strong reference or owner of a `GLogField` instance.
///
/// Structure representing a single field in a structured log entry. See
/// `g_log_structured()` for details.
/// 
/// Log fields may contain arbitrary values, including binary with embedded nul
/// bytes. If the field contains a string, the string must be UTF-8 encoded and
/// have a trailing nul byte. Otherwise, `length` must be set to a non-negative
/// value.
open class LogField: LogFieldProtocol {
        /// Untyped pointer to the underlying `GLogField` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LogField` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GLogField>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LogField` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GLogField>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LogField` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LogField` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LogField` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GLogField>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LogField` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GLogField>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GLogField` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `LogField` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GLogField>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GLogField, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `LogFieldProtocol`
    /// `GLogField` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `LogFieldProtocol`
    @inlinable public init<T: LogFieldProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GLogField, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GLogField`.
    deinit {
        // no reference counting for GLogField, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GLogField, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GLogField, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GLogField, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LogFieldProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GLogField, cannot ref(_ptr)
    }



}

// MARK: no LogField properties

// MARK: no LogField signals

// MARK: LogField has no signals
// MARK: LogField Record: LogFieldProtocol extension (methods and fields)
public extension LogFieldProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GLogField` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GLogField>! { return ptr?.assumingMemoryBound(to: GLogField.self) }


    /// field name (UTF-8 string)
    @inlinable var key: UnsafePointer<gchar>! {
        /// field name (UTF-8 string)
        get {
            let rv = _ptr.pointee.key
            return rv
        }
        /// field name (UTF-8 string)
         set {
            _ptr.pointee.key = newValue
        }
    }

    /// field value (arbitrary bytes)
    @inlinable var value: gconstpointer! {
        /// field value (arbitrary bytes)
        get {
            let rv = _ptr.pointee.value
            return rv
        }
        /// field value (arbitrary bytes)
         set {
            _ptr.pointee.value = newValue
        }
    }

    /// length of `value`, in bytes, or -1 if it is nul-terminated
    @inlinable var length: gssize {
        /// length of `value`, in bytes, or -1 if it is nul-terminated
        get {
            let rv = _ptr.pointee.length
            return rv
        }
        /// length of `value`, in bytes, or -1 if it is nul-terminated
         set {
            _ptr.pointee.length = newValue
        }
    }

}



// MARK: - MainContext Record

/// The `MainContextProtocol` protocol exposes the methods and properties of an underlying `GMainContext` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MainContext`.
/// Alternatively, use `MainContextRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GMainContext` struct is an opaque data
/// type representing a set of sources to be handled in a main loop.
public protocol MainContextProtocol {
        /// Untyped pointer to the underlying `GMainContext` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GMainContext` instance.
    var main_context_ptr: UnsafeMutablePointer<GMainContext>! { get }

    /// Required Initialiser for types conforming to `MainContextProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `MainContextRef` type acts as a lightweight Swift reference to an underlying `GMainContext` instance.
/// It exposes methods that can operate on this data type through `MainContextProtocol` conformance.
/// Use `MainContextRef` only as an `unowned` reference to an existing `GMainContext` instance.
///
/// The `GMainContext` struct is an opaque data
/// type representing a set of sources to be handled in a main loop.
public struct MainContextRef: MainContextProtocol {
        /// Untyped pointer to the underlying `GMainContext` instance.
    /// For type-safe access, use the generated, typed pointer `main_context_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MainContextRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GMainContext>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GMainContext>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GMainContext>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GMainContext>?) {
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

    /// Reference intialiser for a related type that implements `MainContextProtocol`
    @inlinable init<T: MainContextProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainContextProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainContextProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainContextProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainContextProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainContextProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GMainContext` structure.
    @inlinable init() {
        let rv = g_main_context_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Returns the global default main context. This is the main context
    /// used for main loop functions when a main loop is not explicitly
    /// specified, and corresponds to the "main" main loop. See also
    /// `g_main_context_get_thread_default()`.
    @inlinable static func default_() -> MainContextRef! {
        guard let rv = MainContextRef(gconstpointer: gconstpointer(g_main_context_default())) else { return nil }
        return rv
    }

    /// Gets the thread-default `GMainContext` for this thread. Asynchronous
    /// operations that want to be able to be run in contexts other than
    /// the default one should call this method or
    /// `g_main_context_ref_thread_default()` to get a `GMainContext` to add
    /// their `GSources` to. (Note that even in single-threaded
    /// programs applications may sometimes want to temporarily push a
    /// non-default context, so it is not safe to assume that this will
    /// always return `nil` if you are running in the default thread.)
    /// 
    /// If you need to hold a reference on the context, use
    /// `g_main_context_ref_thread_default()` instead.
    @inlinable static func getThreadDefault() -> MainContextRef! {
        guard let rv = MainContextRef(gconstpointer: gconstpointer(g_main_context_get_thread_default())) else { return nil }
        return rv
    }

    /// Gets the thread-default `GMainContext` for this thread, as with
    /// `g_main_context_get_thread_default()`, but also adds a reference to
    /// it with `g_main_context_ref()`. In addition, unlike
    /// `g_main_context_get_thread_default()`, if the thread-default context
    /// is the global default context, this will return that `GMainContext`
    /// (with a ref added to it) rather than returning `nil`.
    @inlinable static func refThreadDefault() -> MainContextRef! {
        guard let rv = MainContextRef(gconstpointer: gconstpointer(g_main_context_ref_thread_default())) else { return nil }
        return rv
    }
}

/// The `MainContext` type acts as a reference-counted owner of an underlying `GMainContext` instance.
/// It provides the methods that can operate on this data type through `MainContextProtocol` conformance.
/// Use `MainContext` as a strong reference or owner of a `GMainContext` instance.
///
/// The `GMainContext` struct is an opaque data
/// type representing a set of sources to be handled in a main loop.
open class MainContext: MainContextProtocol {
        /// Untyped pointer to the underlying `GMainContext` instance.
    /// For type-safe access, use the generated, typed pointer `main_context_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MainContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GMainContext>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MainContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GMainContext>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MainContext` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MainContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MainContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GMainContext>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MainContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GMainContext>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GMainContext`.
    /// i.e., ownership is transferred to the `MainContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GMainContext>) {
        ptr = UnsafeMutableRawPointer(op)
        g_main_context_ref(ptr.assumingMemoryBound(to: GMainContext.self))
    }

    /// Reference intialiser for a related type that implements `MainContextProtocol`
    /// Will retain `GMainContext`.
    /// - Parameter other: an instance of a related type that implements `MainContextProtocol`
    @inlinable public init<T: MainContextProtocol>(_ other: T) {
        ptr = other.ptr
        g_main_context_ref(ptr.assumingMemoryBound(to: GMainContext.self))
    }

    /// Releases the underlying `GMainContext` instance using `g_main_context_unref`.
    deinit {
        g_main_context_unref(ptr.assumingMemoryBound(to: GMainContext.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_main_context_ref(ptr.assumingMemoryBound(to: GMainContext.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainContextProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainContextProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_main_context_ref(ptr.assumingMemoryBound(to: GMainContext.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainContextProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainContextProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_main_context_ref(ptr.assumingMemoryBound(to: GMainContext.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MainContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_main_context_ref(ptr.assumingMemoryBound(to: GMainContext.self))
    }

    /// Creates a new `GMainContext` structure.
    @inlinable public init() {
        let rv = g_main_context_new()
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Returns the global default main context. This is the main context
    /// used for main loop functions when a main loop is not explicitly
    /// specified, and corresponds to the "main" main loop. See also
    /// `g_main_context_get_thread_default()`.
    @inlinable public static func default_() -> MainContext! {
        guard let rv = MainContext(gconstpointer: gconstpointer(g_main_context_default())) else { return nil }
        return rv
    }

    /// Gets the thread-default `GMainContext` for this thread. Asynchronous
    /// operations that want to be able to be run in contexts other than
    /// the default one should call this method or
    /// `g_main_context_ref_thread_default()` to get a `GMainContext` to add
    /// their `GSources` to. (Note that even in single-threaded
    /// programs applications may sometimes want to temporarily push a
    /// non-default context, so it is not safe to assume that this will
    /// always return `nil` if you are running in the default thread.)
    /// 
    /// If you need to hold a reference on the context, use
    /// `g_main_context_ref_thread_default()` instead.
    @inlinable public static func getThreadDefault() -> MainContext! {
        guard let rv = MainContext(gconstpointer: gconstpointer(g_main_context_get_thread_default())) else { return nil }
        return rv
    }

    /// Gets the thread-default `GMainContext` for this thread, as with
    /// `g_main_context_get_thread_default()`, but also adds a reference to
    /// it with `g_main_context_ref()`. In addition, unlike
    /// `g_main_context_get_thread_default()`, if the thread-default context
    /// is the global default context, this will return that `GMainContext`
    /// (with a ref added to it) rather than returning `nil`.
    @inlinable public static func refThreadDefault() -> MainContext! {
        guard let rv = MainContext(gconstpointer: gconstpointer(g_main_context_ref_thread_default())) else { return nil }
        return rv
    }

}

// MARK: no MainContext properties

// MARK: no MainContext signals

// MARK: MainContext has no signals
// MARK: MainContext Record: MainContextProtocol extension (methods and fields)
public extension MainContextProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMainContext` instance.
    @inlinable var main_context_ptr: UnsafeMutablePointer<GMainContext>! { return ptr?.assumingMemoryBound(to: GMainContext.self) }

    /// Tries to become the owner of the specified context.
    /// If some other thread is the owner of the context,
    /// returns `false` immediately. Ownership is properly
    /// recursive: the owner can require ownership again
    /// and will release ownership when `g_main_context_release()`
    /// is called as many times as `g_main_context_acquire()`.
    /// 
    /// You must be the owner of a context before you
    /// can call `g_main_context_prepare()`, `g_main_context_query()`,
    /// `g_main_context_check()`, `g_main_context_dispatch()`.
    @inlinable func acquire() -> Bool {
        let rv = ((g_main_context_acquire(main_context_ptr)) != 0)
        return rv
    }

    /// Adds a file descriptor to the set of file descriptors polled for
    /// this context. This will very seldom be used directly. Instead
    /// a typical event source will use `g_source_add_unix_fd()` instead.
    @inlinable func addPoll<PollFDT: PollFDProtocol>(fd: PollFDT, priority: Int) {
        g_main_context_add_poll(main_context_ptr, fd.pollfd_ptr, gint(priority))
    
    }

    /// Passes the results of polling back to the main loop. You should be
    /// careful to pass `fds` and its length `n_fds` as received from
    /// `g_main_context_query()`, as this functions relies on assumptions
    /// on how `fds` is filled.
    /// 
    /// You must have successfully acquired the context with
    /// `g_main_context_acquire()` before you may call this function.
    @inlinable func check(maxPriority: Int, fds: UnsafeMutablePointer<GPollFD>!, nFds: Int) -> Bool {
        let rv = ((g_main_context_check(main_context_ptr, gint(maxPriority), fds, gint(nFds))) != 0)
        return rv
    }

    /// Dispatches all pending sources.
    /// 
    /// You must have successfully acquired the context with
    /// `g_main_context_acquire()` before you may call this function.
    @inlinable func dispatch() {
        g_main_context_dispatch(main_context_ptr)
    
    }

    /// Finds a source with the given source functions and user data.  If
    /// multiple sources exist with the same source function and user data,
    /// the first one found will be returned.
    @inlinable func findSourceByFuncsUserData<SourceFuncsT: SourceFuncsProtocol>(funcs: SourceFuncsT, userData: gpointer! = nil) -> SourceRef! {
        let rv = SourceRef(gconstpointer: gconstpointer(g_main_context_find_source_by_funcs_user_data(main_context_ptr, funcs._ptr, userData)))
        return rv
    }

    /// Finds a `GSource` given a pair of context and ID.
    /// 
    /// It is a programmer error to attempt to look up a non-existent source.
    /// 
    /// More specifically: source IDs can be reissued after a source has been
    /// destroyed and therefore it is never valid to use this function with a
    /// source ID which may have already been removed.  An example is when
    /// scheduling an idle to run in another thread with `g_idle_add()`: the
    /// idle may already have run and been removed by the time this function
    /// is called on its (now invalid) source ID.  This source ID may have
    /// been reissued, leading to the operation being performed against the
    /// wrong source.
    @inlinable func findSourceByID(sourceID: Int) -> SourceRef! {
        let rv = SourceRef(gconstpointer: gconstpointer(g_main_context_find_source_by_id(main_context_ptr, guint(sourceID))))
        return rv
    }

    /// Finds a source with the given user data for the callback.  If
    /// multiple sources exist with the same user data, the first
    /// one found will be returned.
    @inlinable func findSourceBy(userData: gpointer! = nil) -> SourceRef! {
        let rv = SourceRef(gconstpointer: gconstpointer(g_main_context_find_source_by_user_data(main_context_ptr, userData)))
        return rv
    }

    /// Gets the poll function set by `g_main_context_set_poll_func()`.
    @inlinable func getPollFunc() -> GPollFunc! {
        let rv = g_main_context_get_poll_func(main_context_ptr)
        return rv
    }

    /// Invokes a function in such a way that `context` is owned during the
    /// invocation of `function`.
    /// 
    /// If `context` is `nil` then the global default main context — as
    /// returned by `g_main_context_default()` — is used.
    /// 
    /// If `context` is owned by the current thread, `function` is called
    /// directly.  Otherwise, if `context` is the thread-default main context
    /// of the current thread and `g_main_context_acquire()` succeeds, then
    /// `function` is called and `g_main_context_release()` is called
    /// afterwards.
    /// 
    /// In any other case, an idle source is created to call `function` and
    /// that source is attached to `context` (presumably to be run in another
    /// thread).  The idle source is attached with `G_PRIORITY_DEFAULT`
    /// priority.  If you want a different priority, use
    /// `g_main_context_invoke_full()`.
    /// 
    /// Note that, as with normal idle functions, `function` should probably
    /// return `false`.  If it returns `true`, it will be continuously run in a
    /// loop (and may prevent this call from returning).
    @inlinable func invoke(function: GSourceFunc?, data: gpointer! = nil) {
        g_main_context_invoke(main_context_ptr, function, data)
    
    }

    /// Invokes a function in such a way that `context` is owned during the
    /// invocation of `function`.
    /// 
    /// This function is the same as `g_main_context_invoke()` except that it
    /// lets you specify the priority in case `function` ends up being
    /// scheduled as an idle and also lets you give a `GDestroyNotify` for `data`.
    /// 
    /// `notify` should not assume that it is called from any particular
    /// thread or with any particular context acquired.
    @inlinable func invokeFull(priority: Int, function: GSourceFunc?, data: gpointer! = nil, notify: GDestroyNotify? = nil) {
        g_main_context_invoke_full(main_context_ptr, gint(priority), function, data, notify)
    
    }

    /// Runs a single iteration for the given main loop. This involves
    /// checking to see if any event sources are ready to be processed,
    /// then if no events sources are ready and `may_block` is `true`, waiting
    /// for a source to become ready, then dispatching the highest priority
    /// events sources that are ready. Otherwise, if `may_block` is `false`
    /// sources are not waited to become ready, only those highest priority
    /// events sources will be dispatched (if any), that are ready at this
    /// given moment without further waiting.
    /// 
    /// Note that even when `may_block` is `true`, it is still possible for
    /// `g_main_context_iteration()` to return `false`, since the wait may
    /// be interrupted for other reasons than an event source becoming ready.
    @inlinable func iteration(mayBlock: Bool) -> Bool {
        let rv = ((g_main_context_iteration(main_context_ptr, gboolean((mayBlock) ? 1 : 0))) != 0)
        return rv
    }

    /// Checks if any sources have pending events for the given context.
    @inlinable func pending() -> Bool {
        let rv = ((g_main_context_pending(main_context_ptr)) != 0)
        return rv
    }

    /// Pops `context` off the thread-default context stack (verifying that
    /// it was on the top of the stack).
    @inlinable func popThreadDefault() {
        g_main_context_pop_thread_default(main_context_ptr)
    
    }

    /// Prepares to poll sources within a main loop. The resulting information
    /// for polling is determined by calling g_main_context_query ().
    /// 
    /// You must have successfully acquired the context with
    /// `g_main_context_acquire()` before you may call this function.
    @inlinable func prepare(priority: UnsafeMutablePointer<gint>! = nil) -> Bool {
        let rv = ((g_main_context_prepare(main_context_ptr, priority)) != 0)
        return rv
    }

    /// Acquires `context` and sets it as the thread-default context for the
    /// current thread. This will cause certain asynchronous operations
    /// (such as most [gio](#gio)-based I/O) which are
    /// started in this thread to run under `context` and deliver their
    /// results to its main loop, rather than running under the global
    /// default context in the main thread. Note that calling this function
    /// changes the context returned by `g_main_context_get_thread_default()`,
    /// not the one returned by `g_main_context_default()`, so it does not affect
    /// the context used by functions like `g_idle_add()`.
    /// 
    /// Normally you would call this function shortly after creating a new
    /// thread, passing it a `GMainContext` which will be run by a
    /// `GMainLoop` in that thread, to set a new default context for all
    /// async operations in that thread. In this case you may not need to
    /// ever call `g_main_context_pop_thread_default()`, assuming you want the
    /// new `GMainContext` to be the default for the whole lifecycle of the
    /// thread.
    /// 
    /// If you don't have control over how the new thread was created (e.g.
    /// in the new thread isn't newly created, or if the thread life
    /// cycle is managed by a `GThreadPool`), it is always suggested to wrap
    /// the logic that needs to use the new `GMainContext` inside a
    /// `g_main_context_push_thread_default()` / `g_main_context_pop_thread_default()`
    /// pair, otherwise threads that are re-used will end up never explicitly
    /// releasing the `GMainContext` reference they hold.
    /// 
    /// In some cases you may want to schedule a single operation in a
    /// non-default context, or temporarily use a non-default context in
    /// the main thread. In that case, you can wrap the call to the
    /// asynchronous operation inside a
    /// `g_main_context_push_thread_default()` /
    /// `g_main_context_pop_thread_default()` pair, but it is up to you to
    /// ensure that no other asynchronous operations accidentally get
    /// started while the non-default context is active.
    /// 
    /// Beware that libraries that predate this function may not correctly
    /// handle being used from a thread with a thread-default context. Eg,
    /// see `g_file_supports_thread_contexts()`.
    @inlinable func pushThreadDefault() {
        g_main_context_push_thread_default(main_context_ptr)
    
    }

    /// Determines information necessary to poll this main loop. You should
    /// be careful to pass the resulting `fds` array and its length `n_fds`
    /// as is when calling `g_main_context_check()`, as this function relies
    /// on assumptions made when the array is filled.
    /// 
    /// You must have successfully acquired the context with
    /// `g_main_context_acquire()` before you may call this function.
    @inlinable func query(maxPriority: Int, timeout_: UnsafeMutablePointer<gint>!, fds: UnsafeMutablePointer<GPollFD>!, nFds: Int) -> Int {
        let rv = Int(g_main_context_query(main_context_ptr, gint(maxPriority), timeout_, fds, gint(nFds)))
        return rv
    }

    /// Increases the reference count on a `GMainContext` object by one.
    @discardableResult @inlinable func ref() -> MainContextRef! {
        guard let rv = MainContextRef(gconstpointer: gconstpointer(g_main_context_ref(main_context_ptr))) else { return nil }
        return rv
    }

    /// Releases ownership of a context previously acquired by this thread
    /// with `g_main_context_acquire()`. If the context was acquired multiple
    /// times, the ownership will be released only when `g_main_context_release()`
    /// is called as many times as it was acquired.
    @inlinable func release() {
        g_main_context_release(main_context_ptr)
    
    }

    /// Removes file descriptor from the set of file descriptors to be
    /// polled for a particular context.
    @inlinable func removePoll<PollFDT: PollFDProtocol>(fd: PollFDT) {
        g_main_context_remove_poll(main_context_ptr, fd.pollfd_ptr)
    
    }

    /// Sets the function to use to handle polling of file descriptors. It
    /// will be used instead of the `poll()` system call
    /// (or GLib's replacement function, which is used where
    /// `poll()` isn't available).
    /// 
    /// This function could possibly be used to integrate the GLib event
    /// loop with an external event loop.
    @inlinable func setPollFunc(`func`: GPollFunc?) {
        g_main_context_set_poll_func(main_context_ptr, `func`)
    
    }

    /// Decreases the reference count on a `GMainContext` object by one. If
    /// the result is zero, free the context and free all associated memory.
    @inlinable func unref() {
        g_main_context_unref(main_context_ptr)
    
    }

    /// Tries to become the owner of the specified context,
    /// as with `g_main_context_acquire()`. But if another thread
    /// is the owner, atomically drop `mutex` and wait on `cond` until
    /// that owner releases ownership or until `cond` is signaled, then
    /// try again (once) to become the owner.
    ///
    /// **wait is deprecated:**
    /// Use g_main_context_is_owner() and separate locking instead.
    @available(*, deprecated) @inlinable func wait<CondT: CondProtocol, MutexT: MutexProtocol>(cond: CondT, mutex: MutexT) -> Bool {
        let rv = ((g_main_context_wait(main_context_ptr, cond._ptr, mutex._ptr)) != 0)
        return rv
    }

    /// If `context` is currently blocking in `g_main_context_iteration()`
    /// waiting for a source to become ready, cause it to stop blocking
    /// and return.  Otherwise, cause the next invocation of
    /// `g_main_context_iteration()` to return without blocking.
    /// 
    /// This API is useful for low-level control over `GMainContext`; for
    /// example, integrating it with main loop implementations such as
    /// `GMainLoop`.
    /// 
    /// Another related use for this function is when implementing a main
    /// loop with a termination condition, computed from multiple threads:
    /// 
    /// (C Language Example):
    /// ```C
    ///   #define NUM_TASKS 10
    ///   static gint tasks_remaining = NUM_TASKS;  // (atomic)
    ///   ...
    ///  
    ///   while (g_atomic_int_get (&tasks_remaining) != 0)
    ///     g_main_context_iteration (NULL, TRUE);
    /// ```
    ///  
    /// Then in a thread:
    /// (C Language Example):
    /// ```C
    ///   perform_work();
    /// 
    ///   if (g_atomic_int_dec_and_test (&tasks_remaining))
    ///     g_main_context_wakeup (NULL);
    /// ```
    /// 
    @inlinable func wakeup() {
        g_main_context_wakeup(main_context_ptr)
    
    }
    /// Determines whether this thread holds the (recursive)
    /// ownership of this `GMainContext`. This is useful to
    /// know before waiting on another thread that may be
    /// blocking to get ownership of `context`.
    @inlinable var isOwner: Bool {
        /// Determines whether this thread holds the (recursive)
        /// ownership of this `GMainContext`. This is useful to
        /// know before waiting on another thread that may be
        /// blocking to get ownership of `context`.
        get {
            let rv = ((g_main_context_is_owner(main_context_ptr)) != 0)
            return rv
        }
    }

    /// Gets the poll function set by `g_main_context_set_poll_func()`.
    @inlinable var pollFunc: GPollFunc! {
        /// Gets the poll function set by `g_main_context_set_poll_func()`.
        get {
            let rv = g_main_context_get_poll_func(main_context_ptr)
            return rv
        }
        /// Sets the function to use to handle polling of file descriptors. It
        /// will be used instead of the `poll()` system call
        /// (or GLib's replacement function, which is used where
        /// `poll()` isn't available).
        /// 
        /// This function could possibly be used to integrate the GLib event
        /// loop with an external event loop.
        nonmutating set {
            g_main_context_set_poll_func(main_context_ptr, newValue)
        }
    }


}



