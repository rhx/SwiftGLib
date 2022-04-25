import CGLib

// MARK: - Data Record

/// An opaque data structure that represents a keyed data list.
/// 
/// See also: [Keyed data lists](../Protocols/DataProtocol.html).
///
/// The `DataProtocol` protocol exposes the methods and properties of an underlying `GData` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Data`.
/// Alternatively, use `DataRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DataProtocol {
        /// Untyped pointer to the underlying `GData` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GData` instance.
    var _ptr: UnsafeMutablePointer<GData>! { get }

    /// Required Initialiser for types conforming to `DataProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// An opaque data structure that represents a keyed data list.
/// 
/// See also: [Keyed data lists](../Protocols/DataProtocol.html).
///
/// The `DataRef` type acts as a lightweight Swift reference to an underlying `GData` instance.
/// It exposes methods that can operate on this data type through `DataProtocol` conformance.
/// Use `DataRef` only as an `unowned` reference to an existing `GData` instance.
///
public struct DataRef: DataProtocol {
        /// Untyped pointer to the underlying `GData` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DataRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GData>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GData>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GData>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GData>?) {
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

    /// Reference intialiser for a related type that implements `DataProtocol`
    @inlinable init<T: DataProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// An opaque data structure that represents a keyed data list.
/// 
/// See also: [Keyed data lists](../Protocols/DataProtocol.html).
///
/// The `Data` type acts as an owner of an underlying `GData` instance.
/// It provides the methods that can operate on this data type through `DataProtocol` conformance.
/// Use `Data` as a strong reference or owner of a `GData` instance.
///
open class Data: DataProtocol {
        /// Untyped pointer to the underlying `GData` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Data` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GData>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Data` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GData>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Data` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Data` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Data` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GData>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Data` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GData>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GData` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Data` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GData>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GData, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `DataProtocol`
    /// `GData` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `DataProtocol`
    @inlinable public init<T: DataProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GData, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GData`.
    deinit {
        // no reference counting for GData, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GData, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GData, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GData, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GData, cannot ref(_ptr)
    }



}

// MARK: no Data properties

// MARK: no Data signals

// MARK: Data has no signals
// MARK: Data Record: DataProtocol extension (methods and fields)
public extension DataProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GData` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GData>! { return ptr?.assumingMemoryBound(to: GData.self) }



}



// MARK: - Date Record

/// Represents a day between January 1, Year 1 and a few thousand years in
/// the future. None of its members should be accessed directly.
/// 
/// If the `GDate` is obtained from `g_date_new()`, it will be safe
/// to mutate but invalid and thus not safe for calendrical computations.
/// 
/// If it's declared on the stack, it will contain garbage so must be
/// initialized with `g_date_clear()`. `g_date_clear()` makes the date invalid
/// but safe. An invalid date doesn't represent a day, it's "empty." A date
/// becomes valid after you set it to a Julian day or you set a day, month,
/// and year.
///
/// The `DateProtocol` protocol exposes the methods and properties of an underlying `GDate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Date`.
/// Alternatively, use `DateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DateProtocol {
        /// Untyped pointer to the underlying `GDate` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDate` instance.
    var date_ptr: UnsafeMutablePointer<GDate>! { get }

    /// Required Initialiser for types conforming to `DateProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Represents a day between January 1, Year 1 and a few thousand years in
/// the future. None of its members should be accessed directly.
/// 
/// If the `GDate` is obtained from `g_date_new()`, it will be safe
/// to mutate but invalid and thus not safe for calendrical computations.
/// 
/// If it's declared on the stack, it will contain garbage so must be
/// initialized with `g_date_clear()`. `g_date_clear()` makes the date invalid
/// but safe. An invalid date doesn't represent a day, it's "empty." A date
/// becomes valid after you set it to a Julian day or you set a day, month,
/// and year.
///
/// The `DateRef` type acts as a lightweight Swift reference to an underlying `GDate` instance.
/// It exposes methods that can operate on this data type through `DateProtocol` conformance.
/// Use `DateRef` only as an `unowned` reference to an existing `GDate` instance.
///
public struct DateRef: DateProtocol {
        /// Untyped pointer to the underlying `GDate` instance.
    /// For type-safe access, use the generated, typed pointer `date_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DateRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDate>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDate>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDate>?) {
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

    /// Reference intialiser for a related type that implements `DateProtocol`
    @inlinable init<T: DateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Allocates a `GDate` and initializes
    /// it to a safe state. The new date will
    /// be cleared (as if you'd called `g_date_clear()`) but invalid (it won't
    /// represent an existing day). Free the return value with `g_date_free()`.
    @inlinable init() {
            let result = g_date_new()
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Create a new `GDate` representing the given day-month-year triplet.
    /// 
    /// The triplet you pass in must represent a valid date. Use `g_date_valid_dmy()`
    /// if needed to validate it. The returned `GDate` is guaranteed to be non-`nil`
    /// and valid.
    @inlinable init(dmy day: GDateDay, month: GDateMonth, year: GDateYear) {
            let result = g_date_new_dmy(day, month, year)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Create a new `GDate` representing the given Julian date.
    /// 
    /// The `julian_day` you pass in must be valid. Use `g_date_valid_julian()` if
    /// needed to validate it. The returned `GDate` is guaranteed to be non-`nil` and
    /// valid.
    @inlinable init(julian julianDay: guint32) {
            let result = g_date_new_julian(julianDay)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }
    /// Create a new `GDate` representing the given day-month-year triplet.
    /// 
    /// The triplet you pass in must represent a valid date. Use `g_date_valid_dmy()`
    /// if needed to validate it. The returned `GDate` is guaranteed to be non-`nil`
    /// and valid.
    @inlinable static func new(dmy day: GDateDay, month: GDateMonth, year: GDateYear) -> DateRef! {
            let result = g_date_new_dmy(day, month, year)
        guard let rv = DateRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Create a new `GDate` representing the given Julian date.
    /// 
    /// The `julian_day` you pass in must be valid. Use `g_date_valid_julian()` if
    /// needed to validate it. The returned `GDate` is guaranteed to be non-`nil` and
    /// valid.
    @inlinable static func new(julian julianDay: guint32) -> DateRef! {
            let result = g_date_new_julian(julianDay)
        guard let rv = DateRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }
}

/// Represents a day between January 1, Year 1 and a few thousand years in
/// the future. None of its members should be accessed directly.
/// 
/// If the `GDate` is obtained from `g_date_new()`, it will be safe
/// to mutate but invalid and thus not safe for calendrical computations.
/// 
/// If it's declared on the stack, it will contain garbage so must be
/// initialized with `g_date_clear()`. `g_date_clear()` makes the date invalid
/// but safe. An invalid date doesn't represent a day, it's "empty." A date
/// becomes valid after you set it to a Julian day or you set a day, month,
/// and year.
///
/// The `Date` type acts as an owner of an underlying `GDate` instance.
/// It provides the methods that can operate on this data type through `DateProtocol` conformance.
/// Use `Date` as a strong reference or owner of a `GDate` instance.
///
open class Date: DateProtocol {
        /// Untyped pointer to the underlying `GDate` instance.
    /// For type-safe access, use the generated, typed pointer `date_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Date` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GDate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Date` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GDate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Date` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Date` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Date` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GDate>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Date` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GDate>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GDate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Date` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GDate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GDate, cannot ref(date_ptr)
    }

    /// Reference intialiser for a related type that implements `DateProtocol`
    /// `GDate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `DateProtocol`
    @inlinable public init<T: DateProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GDate, cannot ref(date_ptr)
    }

    /// Do-nothing destructor for `GDate`.
    deinit {
        // no reference counting for GDate, cannot unref(date_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GDate, cannot ref(date_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GDate, cannot ref(date_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GDate, cannot ref(date_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GDate, cannot ref(date_ptr)
    }

    /// Allocates a `GDate` and initializes
    /// it to a safe state. The new date will
    /// be cleared (as if you'd called `g_date_clear()`) but invalid (it won't
    /// represent an existing day). Free the return value with `g_date_free()`.
    @inlinable public init() {
            let result = g_date_new()
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Create a new `GDate` representing the given day-month-year triplet.
    /// 
    /// The triplet you pass in must represent a valid date. Use `g_date_valid_dmy()`
    /// if needed to validate it. The returned `GDate` is guaranteed to be non-`nil`
    /// and valid.
    @inlinable public init(dmy day: GDateDay, month: GDateMonth, year: GDateYear) {
            let result = g_date_new_dmy(day, month, year)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Create a new `GDate` representing the given Julian date.
    /// 
    /// The `julian_day` you pass in must be valid. Use `g_date_valid_julian()` if
    /// needed to validate it. The returned `GDate` is guaranteed to be non-`nil` and
    /// valid.
    @inlinable public init(julian julianDay: guint32) {
            let result = g_date_new_julian(julianDay)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Create a new `GDate` representing the given day-month-year triplet.
    /// 
    /// The triplet you pass in must represent a valid date. Use `g_date_valid_dmy()`
    /// if needed to validate it. The returned `GDate` is guaranteed to be non-`nil`
    /// and valid.
    @inlinable public static func new(dmy day: GDateDay, month: GDateMonth, year: GDateYear) -> Date! {
            let result = g_date_new_dmy(day, month, year)
        guard let rv = Date(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Create a new `GDate` representing the given Julian date.
    /// 
    /// The `julian_day` you pass in must be valid. Use `g_date_valid_julian()` if
    /// needed to validate it. The returned `GDate` is guaranteed to be non-`nil` and
    /// valid.
    @inlinable public static func new(julian julianDay: guint32) -> Date! {
            let result = g_date_new_julian(julianDay)
        guard let rv = Date(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

}

// MARK: no Date properties

// MARK: no Date signals

// MARK: Date has no signals
// MARK: Date Record: DateProtocol extension (methods and fields)
public extension DateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDate` instance.
    @inlinable var date_ptr: UnsafeMutablePointer<GDate>! { return ptr?.assumingMemoryBound(to: GDate.self) }

    /// Increments a date some number of days.
    /// To move forward by weeks, add weeks*7 days.
    /// The date must be valid.
    @inlinable func addDays(nDays: Int) {
        
        g_date_add_days(date_ptr, guint(nDays))
        
    }

    /// Increments a date by some number of months.
    /// If the day of the month is greater than 28,
    /// this routine may change the day of the month
    /// (because the destination month may not have
    /// the current day in it). The date must be valid.
    @inlinable func addMonths(nMonths: Int) {
        
        g_date_add_months(date_ptr, guint(nMonths))
        
    }

    /// Increments a date by some number of years.
    /// If the date is February 29, and the destination
    /// year is not a leap year, the date will be changed
    /// to February 28. The date must be valid.
    @inlinable func addYears(nYears: Int) {
        
        g_date_add_years(date_ptr, guint(nYears))
        
    }

    /// If `date` is prior to `min_date`, sets `date` equal to `min_date`.
    /// If `date` falls after `max_date`, sets `date` equal to `max_date`.
    /// Otherwise, `date` is unchanged.
    /// Either of `min_date` and `max_date` may be `nil`.
    /// All non-`nil` dates must be valid.
    @inlinable func clamp<DateT: DateProtocol>(minDate: DateT, maxDate: DateT) {
        
        g_date_clamp(date_ptr, minDate.date_ptr, maxDate.date_ptr)
        
    }

    /// Initializes one or more `GDate` structs to a safe but invalid
    /// state. The cleared dates will not represent an existing date, but will
    /// not contain garbage. Useful to init a date declared on the stack.
    /// Validity can be tested with `g_date_valid()`.
    @inlinable func clear(nDates: Int) {
        
        g_date_clear(date_ptr, guint(nDates))
        
    }

    /// `qsort()`-style comparison function for dates.
    /// Both dates must be valid.
    @inlinable func compare<DateT: DateProtocol>(rhs: DateT) -> Int {
        let result = g_date_compare(date_ptr, rhs.date_ptr)
        let rv = Int(result)
        return rv
    }

    /// Copies a GDate to a newly-allocated GDate. If the input was invalid
    /// (as determined by `g_date_valid()`), the invalid state will be copied
    /// as is into the new object.
    @inlinable func copy() -> DateRef! {
        let result = g_date_copy(date_ptr)
        guard let rv = DateRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Computes the number of days between two dates.
    /// If `date2` is prior to `date1`, the returned value is negative.
    /// Both dates must be valid.
    @inlinable func daysBetween<DateT: DateProtocol>(date2: DateT) -> Int {
        let result = g_date_days_between(date_ptr, date2.date_ptr)
        let rv = Int(result)
        return rv
    }

    /// Frees a `GDate` returned from `g_date_new()`.
    @inlinable func free() {
        
        g_date_free(date_ptr)
        
    }

    /// Returns the day of the month. The date must be valid.
    @inlinable func getDay() -> GDateDay {
        let result = g_date_get_day(date_ptr)
        let rv = result
        return rv
    }

    /// Returns the day of the year, where Jan 1 is the first day of the
    /// year. The date must be valid.
    @inlinable func getDayOfYear() -> Int {
        let result = g_date_get_day_of_year(date_ptr)
        let rv = Int(result)
        return rv
    }

    /// Returns the week of the year, where weeks are interpreted according
    /// to ISO 8601.
    @inlinable func getIso8601WeekOfYear() -> Int {
        let result = g_date_get_iso8601_week_of_year(date_ptr)
        let rv = Int(result)
        return rv
    }

    /// Returns the Julian day or "serial number" of the `GDate`. The
    /// Julian day is simply the number of days since January 1, Year 1; i.e.,
    /// January 1, Year 1 is Julian day 1; January 2, Year 1 is Julian day 2,
    /// etc. The date must be valid.
    @inlinable func getJulian() -> guint32 {
        let result = g_date_get_julian(date_ptr)
        let rv = result
        return rv
    }

    /// Returns the week of the year, where weeks are understood to start on
    /// Monday. If the date is before the first Monday of the year, return 0.
    /// The date must be valid.
    @inlinable func getMondayWeekOfYear() -> Int {
        let result = g_date_get_monday_week_of_year(date_ptr)
        let rv = Int(result)
        return rv
    }

    /// Returns the month of the year. The date must be valid.
    @inlinable func getMonth() -> GDateMonth {
        let result = g_date_get_month(date_ptr)
        let rv = result
        return rv
    }

    /// Returns the week of the year during which this date falls, if
    /// weeks are understood to begin on Sunday. The date must be valid.
    /// Can return 0 if the day is before the first Sunday of the year.
    @inlinable func getSundayWeekOfYear() -> Int {
        let result = g_date_get_sunday_week_of_year(date_ptr)
        let rv = Int(result)
        return rv
    }

    /// Returns the day of the week for a `GDate`. The date must be valid.
    @inlinable func getWeekday() -> GDateWeekday {
        let result = g_date_get_weekday(date_ptr)
        let rv = result
        return rv
    }

    /// Returns the year of a `GDate`. The date must be valid.
    @inlinable func getYear() -> GDateYear {
        let result = g_date_get_year(date_ptr)
        let rv = result
        return rv
    }

    /// Checks if `date1` is less than or equal to `date2`,
    /// and swap the values if this is not the case.
    @inlinable func order<DateT: DateProtocol>(date2: DateT) {
        
        g_date_order(date_ptr, date2.date_ptr)
        
    }

    /// Sets the day of the month for a `GDate`. If the resulting
    /// day-month-year triplet is invalid, the date will be invalid.
    @inlinable func set(day: GDateDay) {
        
        g_date_set_day(date_ptr, day)
        
    }

    /// Sets the value of a `GDate` from a day, month, and year.
    /// The day-month-year triplet must be valid; if you aren't
    /// sure it is, call `g_date_valid_dmy()` to check before you
    /// set it.
    @inlinable func setDmy(day: GDateDay, month: GDateMonth, y: GDateYear) {
        
        g_date_set_dmy(date_ptr, day, month, y)
        
    }

    /// Sets the value of a `GDate` from a Julian day number.
    @inlinable func setJulian(julianDate: guint32) {
        
        g_date_set_julian(date_ptr, julianDate)
        
    }

    /// Sets the month of the year for a `GDate`.  If the resulting
    /// day-month-year triplet is invalid, the date will be invalid.
    @inlinable func set(month: GDateMonth) {
        
        g_date_set_month(date_ptr, month)
        
    }

    /// Parses a user-inputted string `str`, and try to figure out what date it
    /// represents, taking the [current locale](#setlocale) into account. If the
    /// string is successfully parsed, the date will be valid after the call.
    /// Otherwise, it will be invalid. You should check using `g_date_valid()`
    /// to see whether the parsing succeeded.
    /// 
    /// This function is not appropriate for file formats and the like; it
    /// isn't very precise, and its exact behavior varies with the locale.
    /// It's intended to be a heuristic routine that guesses what the user
    /// means by a given string (and it does work pretty well in that
    /// capacity).
    @inlinable func setParse(str: UnsafePointer<gchar>!) {
        
        g_date_set_parse(date_ptr, str)
        
    }

    /// Sets the value of a date from a `GTime` value.
    /// The time to date conversion is done using the user's current timezone.
    ///
    /// **set_time is deprecated:**
    /// Use g_date_set_time_t() instead.
    @available(*, deprecated) @inlinable func set(time: GTime) {
        
        g_date_set_time(date_ptr, time)
        
    }

    /// Sets the value of a date to the date corresponding to a time
    /// specified as a time_t. The time to date conversion is done using
    /// the user's current timezone.
    /// 
    /// To set the value of a date to the current day, you could write:
    /// (C Language Example):
    /// ```C
    ///  time_t now = time (NULL);
    ///  if (now == (time_t) -1)
    ///    // handle the error
    ///  g_date_set_time_t (date, now);
    /// ```
    /// 
    @inlinable func setTimeT(timet: time_t) {
        
        g_date_set_time_t(date_ptr, timet)
        
    }

    /// Sets the value of a date from a `GTimeVal` value.  Note that the
    /// `tv_usec` member is ignored, because `GDate` can't make use of the
    /// additional precision.
    /// 
    /// The time to date conversion is done using the user's current timezone.
    ///
    /// **set_time_val is deprecated:**
    /// #GTimeVal is not year-2038-safe. Use g_date_set_time_t()
    ///    instead.
    @available(*, deprecated) @inlinable func setTimeVal<TimeValT: TimeValProtocol>(timeval: TimeValT) {
        
        g_date_set_time_val(date_ptr, timeval._ptr)
        
    }

    /// Sets the year for a `GDate`. If the resulting day-month-year
    /// triplet is invalid, the date will be invalid.
    @inlinable func set(year: GDateYear) {
        
        g_date_set_year(date_ptr, year)
        
    }

    /// Moves a date some number of days into the past.
    /// To move by weeks, just move by weeks*7 days.
    /// The date must be valid.
    @inlinable func subtractDays(nDays: Int) {
        
        g_date_subtract_days(date_ptr, guint(nDays))
        
    }

    /// Moves a date some number of months into the past.
    /// If the current day of the month doesn't exist in
    /// the destination month, the day of the month
    /// may change. The date must be valid.
    @inlinable func subtractMonths(nMonths: Int) {
        
        g_date_subtract_months(date_ptr, guint(nMonths))
        
    }

    /// Moves a date some number of years into the past.
    /// If the current day doesn't exist in the destination
    /// year (i.e. it's February 29 and you move to a non-leap-year)
    /// then the day is changed to February 29. The date
    /// must be valid.
    @inlinable func subtractYears(nYears: Int) {
        
        g_date_subtract_years(date_ptr, guint(nYears))
        
    }

    /// Fills in the date-related bits of a struct tm using the `date` value.
    /// Initializes the non-date parts with something safe but meaningless.
    @inlinable func toStruct(tm: UnsafeMutablePointer<tm>!) {
        
        g_date_to_struct_tm(date_ptr, tm)
        
    }

    /// Returns `true` if the `GDate` represents an existing day. The date must not
    /// contain garbage; it should have been initialized with `g_date_clear()`
    /// if it wasn't allocated by one of the `g_date_new()` variants.
    @inlinable func valid() -> Bool {
        let result = g_date_valid(date_ptr)
        let rv = ((result) != 0)
        return rv
    }

    /// Generates a printed representation of the date, in a
    /// [locale](#setlocale)-specific way.
    /// Works just like the platform's C library `strftime()` function,
    /// but only accepts date-related formats; time-related formats
    /// give undefined results. Date must be valid. Unlike `strftime()`
    /// (which uses the locale encoding), works on a UTF-8 format
    /// string and stores a UTF-8 result.
    /// 
    /// This function does not provide any conversion specifiers in
    /// addition to those implemented by the platform's C library.
    /// For example, don't expect that using `g_date_strftime()` would
    /// make the \`F` provided by the C99 `strftime()` work on Windows
    /// where the C library only complies to C89.
    @inlinable func strftime(s: UnsafeMutablePointer<gchar>!, slen: Int, format: UnsafePointer<gchar>!) -> Int {
        let result = g_date_strftime(s, gsize(slen), format, date_ptr)
        let rv = Int(result)
        return rv
    }

    /// Generates a printed representation of the date, in a
    /// [locale](#setlocale)-specific way.
    /// Works just like the platform's C library `strftime()` function,
    /// but only accepts date-related formats; time-related formats
    /// give undefined results. Date must be valid. Unlike `strftime()`
    /// (which uses the locale encoding), works on a UTF-8 format
    /// string and stores a UTF-8 result.
    /// 
    /// This function does not provide any conversion specifiers in
    /// addition to those implemented by the platform's C library.
    /// For example, don't expect that using `g_date_strftime()` would
    /// make the \`F` provided by the C99 `strftime()` work on Windows
    /// where the C library only complies to C89.
    @inlinable func dateStrftime(s: UnsafeMutablePointer<gchar>!, slen: Int, format: UnsafePointer<gchar>!) -> Int {
        let result = g_date_strftime(s, gsize(slen), format, date_ptr)
        let rv = Int(result)
        return rv
    }
    /// Returns the day of the month. The date must be valid.
    @inlinable var day: GDateDay {
        /// Returns the day of the month. The date must be valid.
        get {
            let result = g_date_get_day(date_ptr)
        let rv = result
            return rv
        }
        /// Sets the day of the month for a `GDate`. If the resulting
        /// day-month-year triplet is invalid, the date will be invalid.
        nonmutating set {
            g_date_set_day(date_ptr, newValue)
        }
    }

    /// Returns the day of the year, where Jan 1 is the first day of the
    /// year. The date must be valid.
    @inlinable var dayOfYear: Int {
        /// Returns the day of the year, where Jan 1 is the first day of the
        /// year. The date must be valid.
        get {
            let result = g_date_get_day_of_year(date_ptr)
        let rv = Int(result)
            return rv
        }
    }

    /// Returns `true` if the date is on the first of a month.
    /// The date must be valid.
    @inlinable var isFirstOfMonth: Bool {
        /// Returns `true` if the date is on the first of a month.
        /// The date must be valid.
        get {
            let result = g_date_is_first_of_month(date_ptr)
        let rv = ((result) != 0)
            return rv
        }
    }

    /// Returns `true` if the date is the last day of the month.
    /// The date must be valid.
    @inlinable var isLastOfMonth: Bool {
        /// Returns `true` if the date is the last day of the month.
        /// The date must be valid.
        get {
            let result = g_date_is_last_of_month(date_ptr)
        let rv = ((result) != 0)
            return rv
        }
    }

    /// Returns the week of the year, where weeks are interpreted according
    /// to ISO 8601.
    @inlinable var iso8601WeekOfYear: Int {
        /// Returns the week of the year, where weeks are interpreted according
        /// to ISO 8601.
        get {
            let result = g_date_get_iso8601_week_of_year(date_ptr)
        let rv = Int(result)
            return rv
        }
    }

    /// Returns the Julian day or "serial number" of the `GDate`. The
    /// Julian day is simply the number of days since January 1, Year 1; i.e.,
    /// January 1, Year 1 is Julian day 1; January 2, Year 1 is Julian day 2,
    /// etc. The date must be valid.
    @inlinable var julian: guint32 {
        /// Returns the Julian day or "serial number" of the `GDate`. The
        /// Julian day is simply the number of days since January 1, Year 1; i.e.,
        /// January 1, Year 1 is Julian day 1; January 2, Year 1 is Julian day 2,
        /// etc. The date must be valid.
        get {
            let result = g_date_get_julian(date_ptr)
        let rv = result
            return rv
        }
        /// Sets the value of a `GDate` from a Julian day number.
        nonmutating set {
            g_date_set_julian(date_ptr, newValue)
        }
    }

    /// Returns the week of the year, where weeks are understood to start on
    /// Monday. If the date is before the first Monday of the year, return 0.
    /// The date must be valid.
    @inlinable var mondayWeekOfYear: Int {
        /// Returns the week of the year, where weeks are understood to start on
        /// Monday. If the date is before the first Monday of the year, return 0.
        /// The date must be valid.
        get {
            let result = g_date_get_monday_week_of_year(date_ptr)
        let rv = Int(result)
            return rv
        }
    }

    /// Returns the month of the year. The date must be valid.
    @inlinable var month: GDateMonth {
        /// Returns the month of the year. The date must be valid.
        get {
            let result = g_date_get_month(date_ptr)
        let rv = result
            return rv
        }
        /// Sets the month of the year for a `GDate`.  If the resulting
        /// day-month-year triplet is invalid, the date will be invalid.
        nonmutating set {
            g_date_set_month(date_ptr, newValue)
        }
    }

    /// Returns the week of the year during which this date falls, if
    /// weeks are understood to begin on Sunday. The date must be valid.
    /// Can return 0 if the day is before the first Sunday of the year.
    @inlinable var sundayWeekOfYear: Int {
        /// Returns the week of the year during which this date falls, if
        /// weeks are understood to begin on Sunday. The date must be valid.
        /// Can return 0 if the day is before the first Sunday of the year.
        get {
            let result = g_date_get_sunday_week_of_year(date_ptr)
        let rv = Int(result)
            return rv
        }
    }

    /// Returns the day of the week for a `GDate`. The date must be valid.
    @inlinable var weekday: GDateWeekday {
        /// Returns the day of the week for a `GDate`. The date must be valid.
        get {
            let result = g_date_get_weekday(date_ptr)
        let rv = result
            return rv
        }
    }

    /// Returns the year of a `GDate`. The date must be valid.
    @inlinable var year: GDateYear {
        /// Returns the year of a `GDate`. The date must be valid.
        get {
            let result = g_date_get_year(date_ptr)
        let rv = result
            return rv
        }
        /// Sets the year for a `GDate`. If the resulting day-month-year
        /// triplet is invalid, the date will be invalid.
        nonmutating set {
            g_date_set_year(date_ptr, newValue)
        }
    }

    /// the Julian representation of the date
    @inlinable var julianDays: guint {
        /// the Julian representation of the date
        get {
            let rv = date_ptr.pointee.julian_days
    return rv
        }
        /// the Julian representation of the date
         set {
            date_ptr.pointee.julian_days = newValue
        }
    }

    /// this bit is set if `julian_days` is valid
    @inlinable var _julian: guint {
        /// this bit is set if `julian_days` is valid
        get {
            let rv = date_ptr.pointee.julian
    return rv
        }
        /// this bit is set if `julian_days` is valid
         set {
            date_ptr.pointee.julian = newValue
        }
    }

    /// this is set if `day`, `month` and `year` are valid
    @inlinable var dmy: guint {
        /// this is set if `day`, `month` and `year` are valid
        get {
            let rv = date_ptr.pointee.dmy
    return rv
        }
        /// this is set if `day`, `month` and `year` are valid
         set {
            date_ptr.pointee.dmy = newValue
        }
    }

    /// the day of the day-month-year representation of the date,
    ///   as a number between 1 and 31
    @inlinable var _day: guint {
        /// the day of the day-month-year representation of the date,
        ///   as a number between 1 and 31
        get {
            let rv = date_ptr.pointee.day
    return rv
        }
        /// the day of the day-month-year representation of the date,
        ///   as a number between 1 and 31
         set {
            date_ptr.pointee.day = newValue
        }
    }

    /// the day of the day-month-year representation of the date,
    ///   as a number between 1 and 12
    @inlinable var _month: guint {
        /// the day of the day-month-year representation of the date,
        ///   as a number between 1 and 12
        get {
            let rv = date_ptr.pointee.month
    return rv
        }
        /// the day of the day-month-year representation of the date,
        ///   as a number between 1 and 12
         set {
            date_ptr.pointee.month = newValue
        }
    }

    /// the day of the day-month-year representation of the date
    @inlinable var _year: guint {
        /// the day of the day-month-year representation of the date
        get {
            let rv = date_ptr.pointee.year
    return rv
        }
        /// the day of the day-month-year representation of the date
         set {
            date_ptr.pointee.year = newValue
        }
    }

}



// MARK: - DateTime Record

/// An opaque structure that represents a date and time, including a time zone.
///
/// The `DateTimeProtocol` protocol exposes the methods and properties of an underlying `GDateTime` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DateTime`.
/// Alternatively, use `DateTimeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DateTimeProtocol {
        /// Untyped pointer to the underlying `GDateTime` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDateTime` instance.
    var date_time_ptr: UnsafeMutablePointer<GDateTime>! { get }

    /// Required Initialiser for types conforming to `DateTimeProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// An opaque structure that represents a date and time, including a time zone.
///
/// The `DateTimeRef` type acts as a lightweight Swift reference to an underlying `GDateTime` instance.
/// It exposes methods that can operate on this data type through `DateTimeProtocol` conformance.
/// Use `DateTimeRef` only as an `unowned` reference to an existing `GDateTime` instance.
///
public struct DateTimeRef: DateTimeProtocol {
        /// Untyped pointer to the underlying `GDateTime` instance.
    /// For type-safe access, use the generated, typed pointer `date_time_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DateTimeRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDateTime>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDateTime>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDateTime>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDateTime>?) {
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

    /// Reference intialiser for a related type that implements `DateTimeProtocol`
    @inlinable init<T: DateTimeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateTimeProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateTimeProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateTimeProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateTimeProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateTimeProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GDateTime` corresponding to the given date and time in
    /// the time zone `tz`.
    /// 
    /// The `year` must be between 1 and 9999, `month` between 1 and 12 and `day`
    /// between 1 and 28, 29, 30 or 31 depending on the month and the year.
    /// 
    /// `hour` must be between 0 and 23 and `minute` must be between 0 and 59.
    /// 
    /// `seconds` must be at least 0.0 and must be strictly less than 60.0.
    /// It will be rounded down to the nearest microsecond.
    /// 
    /// If the given time is not representable in the given time zone (for
    /// example, 02:30 on March 14th 2010 in Toronto, due to daylight savings
    /// time) then the time will be rounded up to the nearest existing time
    /// (in this case, 03:00).  If this matters to you then you should verify
    /// the return value for containing the same as the numbers you gave.
    /// 
    /// In the case that the given time is ambiguous in the given time zone
    /// (for example, 01:30 on November 7th 2010 in Toronto, due to daylight
    /// savings time) then the time falling within standard (ie:
    /// non-daylight) time is taken.
    /// 
    /// It not considered a programmer error for the values to this function
    /// to be out of range, but in the case that they are, the function will
    /// return `nil`.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    @inlinable init<TimeZoneT: TimeZoneProtocol>( tz: TimeZoneT, year: Int, month: Int, day: Int, hour: Int, minute: Int, seconds: Double) {
            let result = g_date_time_new(tz.time_zone_ptr, gint(year), gint(month), gint(day), gint(hour), gint(minute), gdouble(seconds))
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GDateTime` corresponding to the given
    /// [ISO 8601 formatted string](https://en.wikipedia.org/wiki/ISO_8601)
    /// `text`. ISO 8601 strings of the form &lt;date&gt;&lt;sep&gt;&lt;time&gt;&lt;tz&gt; are supported, with
    /// some extensions from [RFC 3339](https://tools.ietf.org/html/rfc3339) as
    /// mentioned below.
    /// 
    /// Note that as `GDateTime` "is oblivious to leap seconds", leap seconds information
    /// in an ISO-8601 string will be ignored, so a `23:59:60` time would be parsed as
    /// `23:59:59`.
    /// 
    /// &lt;sep&gt; is the separator and can be either 'T', 't' or ' '. The latter two
    /// separators are an extension from
    /// [RFC 3339](https://tools.ietf.org/html/rfc3339`section-5.6`).
    /// 
    /// &lt;date&gt; is in the form:
    /// 
    /// - `YYYY-MM-DD` - Year/month/day, e.g. 2016-08-24.
    /// - `YYYYMMDD` - Same as above without dividers.
    /// - `YYYY-DDD` - Ordinal day where DDD is from 001 to 366, e.g. 2016-237.
    /// - `YYYYDDD` - Same as above without dividers.
    /// - `YYYY-Www-D` - Week day where ww is from 01 to 52 and D from 1-7,
    ///   e.g. 2016-W34-3.
    /// - `YYYYWwwD` - Same as above without dividers.
    /// 
    /// &lt;time&gt; is in the form:
    /// 
    /// - `hh:mm:`ss(.sss)`` - Hours, minutes, seconds (subseconds), e.g. 22:10:42.123.
    /// - ``hhmmss(.sss)`` - Same as above without dividers.
    /// 
    /// &lt;tz&gt; is an optional timezone suffix of the form:
    /// 
    /// - `Z` - UTC.
    /// - `+hh:mm` or `-hh:mm` - Offset from UTC in hours and minutes, e.g. +12:00.
    /// - `+hh` or `-hh` - Offset from UTC in hours, e.g. +12.
    /// 
    /// If the timezone is not provided in `text` it must be provided in `default_tz`
    /// (this field is otherwise ignored).
    /// 
    /// This call can fail (returning `nil`) if `text` is not a valid ISO 8601
    /// formatted string.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    @inlinable init<TimeZoneT: TimeZoneProtocol>(iso8601 text: UnsafePointer<gchar>!, defaultTz: TimeZoneT?) {
            let result = g_date_time_new_from_iso8601(text, defaultTz?.time_zone_ptr)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GDateTime` corresponding to the given `GTimeVal` `tv` in the
    /// local time zone.
    /// 
    /// The time contained in a `GTimeVal` is always stored in the form of
    /// seconds elapsed since 1970-01-01 00:00:00 UTC, regardless of the
    /// local time offset.
    /// 
    /// This call can fail (returning `nil`) if `tv` represents a time outside
    /// of the supported range of `GDateTime`.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    ///
    /// **new_from_timeval_local is deprecated:**
    /// #GTimeVal is not year-2038-safe. Use
    ///    g_date_time_new_from_unix_local() instead.
    @available(*, deprecated) @inlinable init<TimeValT: TimeValProtocol>(timevalLocal tv: TimeValT) {
            let result = g_date_time_new_from_timeval_local(tv._ptr)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GDateTime` corresponding to the given `GTimeVal` `tv` in UTC.
    /// 
    /// The time contained in a `GTimeVal` is always stored in the form of
    /// seconds elapsed since 1970-01-01 00:00:00 UTC.
    /// 
    /// This call can fail (returning `nil`) if `tv` represents a time outside
    /// of the supported range of `GDateTime`.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    ///
    /// **new_from_timeval_utc is deprecated:**
    /// #GTimeVal is not year-2038-safe. Use
    ///    g_date_time_new_from_unix_utc() instead.
    @available(*, deprecated) @inlinable init<TimeValT: TimeValProtocol>(timevalUTC tv: TimeValT) {
            let result = g_date_time_new_from_timeval_utc(tv._ptr)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GDateTime` corresponding to the given Unix time `t` in the
    /// local time zone.
    /// 
    /// Unix time is the number of seconds that have elapsed since 1970-01-01
    /// 00:00:00 UTC, regardless of the local time offset.
    /// 
    /// This call can fail (returning `nil`) if `t` represents a time outside
    /// of the supported range of `GDateTime`.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    @inlinable init(unixLocal t: gint64) {
            let result = g_date_time_new_from_unix_local(t)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GDateTime` corresponding to the given Unix time `t` in UTC.
    /// 
    /// Unix time is the number of seconds that have elapsed since 1970-01-01
    /// 00:00:00 UTC.
    /// 
    /// This call can fail (returning `nil`) if `t` represents a time outside
    /// of the supported range of `GDateTime`.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    @inlinable init(unixUTC t: gint64) {
            let result = g_date_time_new_from_unix_utc(t)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GDateTime` corresponding to the given date and time in
    /// the local time zone.
    /// 
    /// This call is equivalent to calling `g_date_time_new()` with the time
    /// zone returned by `g_time_zone_new_local()`.
    @inlinable init(local year: Int, month: Int, day: Int, hour: Int, minute: Int, seconds: Double) {
            let result = g_date_time_new_local(gint(year), gint(month), gint(day), gint(hour), gint(minute), gdouble(seconds))
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GDateTime` corresponding to this exact instant in the given
    /// time zone `tz`.  The time is as accurate as the system allows, to a
    /// maximum accuracy of 1 microsecond.
    /// 
    /// This function will always succeed unless GLib is still being used after the
    /// year 9999.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    @inlinable init<TimeZoneT: TimeZoneProtocol>(now tz: TimeZoneT) {
            let result = g_date_time_new_now(tz.time_zone_ptr)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GDateTime` corresponding to the given date and time in
    /// UTC.
    /// 
    /// This call is equivalent to calling `g_date_time_new()` with the time
    /// zone returned by `g_time_zone_new_utc()`.
    @inlinable init(utc year: Int, month: Int, day: Int, hour: Int, minute: Int, seconds: Double) {
            let result = g_date_time_new_utc(gint(year), gint(month), gint(day), gint(hour), gint(minute), gdouble(seconds))
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a `GDateTime` corresponding to the given
    /// [ISO 8601 formatted string](https://en.wikipedia.org/wiki/ISO_8601)
    /// `text`. ISO 8601 strings of the form &lt;date&gt;&lt;sep&gt;&lt;time&gt;&lt;tz&gt; are supported, with
    /// some extensions from [RFC 3339](https://tools.ietf.org/html/rfc3339) as
    /// mentioned below.
    /// 
    /// Note that as `GDateTime` "is oblivious to leap seconds", leap seconds information
    /// in an ISO-8601 string will be ignored, so a `23:59:60` time would be parsed as
    /// `23:59:59`.
    /// 
    /// &lt;sep&gt; is the separator and can be either 'T', 't' or ' '. The latter two
    /// separators are an extension from
    /// [RFC 3339](https://tools.ietf.org/html/rfc3339`section-5.6`).
    /// 
    /// &lt;date&gt; is in the form:
    /// 
    /// - `YYYY-MM-DD` - Year/month/day, e.g. 2016-08-24.
    /// - `YYYYMMDD` - Same as above without dividers.
    /// - `YYYY-DDD` - Ordinal day where DDD is from 001 to 366, e.g. 2016-237.
    /// - `YYYYDDD` - Same as above without dividers.
    /// - `YYYY-Www-D` - Week day where ww is from 01 to 52 and D from 1-7,
    ///   e.g. 2016-W34-3.
    /// - `YYYYWwwD` - Same as above without dividers.
    /// 
    /// &lt;time&gt; is in the form:
    /// 
    /// - `hh:mm:`ss(.sss)`` - Hours, minutes, seconds (subseconds), e.g. 22:10:42.123.
    /// - ``hhmmss(.sss)`` - Same as above without dividers.
    /// 
    /// &lt;tz&gt; is an optional timezone suffix of the form:
    /// 
    /// - `Z` - UTC.
    /// - `+hh:mm` or `-hh:mm` - Offset from UTC in hours and minutes, e.g. +12:00.
    /// - `+hh` or `-hh` - Offset from UTC in hours, e.g. +12.
    /// 
    /// If the timezone is not provided in `text` it must be provided in `default_tz`
    /// (this field is otherwise ignored).
    /// 
    /// This call can fail (returning `nil`) if `text` is not a valid ISO 8601
    /// formatted string.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    @inlinable static func newFrom<TimeZoneT: TimeZoneProtocol>(iso8601 text: UnsafePointer<gchar>!, defaultTz: TimeZoneT?) -> DateTimeRef! {
            let result = g_date_time_new_from_iso8601(text, defaultTz?.time_zone_ptr)
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a `GDateTime` corresponding to the given `GTimeVal` `tv` in the
    /// local time zone.
    /// 
    /// The time contained in a `GTimeVal` is always stored in the form of
    /// seconds elapsed since 1970-01-01 00:00:00 UTC, regardless of the
    /// local time offset.
    /// 
    /// This call can fail (returning `nil`) if `tv` represents a time outside
    /// of the supported range of `GDateTime`.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    ///
    /// **new_from_timeval_local is deprecated:**
    /// #GTimeVal is not year-2038-safe. Use
    ///    g_date_time_new_from_unix_local() instead.
    @available(*, deprecated) @inlinable static func newFrom<TimeValT: TimeValProtocol>(timevalLocal tv: TimeValT) -> DateTimeRef! {
            let result = g_date_time_new_from_timeval_local(tv._ptr)
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a `GDateTime` corresponding to the given `GTimeVal` `tv` in UTC.
    /// 
    /// The time contained in a `GTimeVal` is always stored in the form of
    /// seconds elapsed since 1970-01-01 00:00:00 UTC.
    /// 
    /// This call can fail (returning `nil`) if `tv` represents a time outside
    /// of the supported range of `GDateTime`.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    ///
    /// **new_from_timeval_utc is deprecated:**
    /// #GTimeVal is not year-2038-safe. Use
    ///    g_date_time_new_from_unix_utc() instead.
    @available(*, deprecated) @inlinable static func newFrom<TimeValT: TimeValProtocol>(timevalUTC tv: TimeValT) -> DateTimeRef! {
            let result = g_date_time_new_from_timeval_utc(tv._ptr)
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a `GDateTime` corresponding to the given Unix time `t` in the
    /// local time zone.
    /// 
    /// Unix time is the number of seconds that have elapsed since 1970-01-01
    /// 00:00:00 UTC, regardless of the local time offset.
    /// 
    /// This call can fail (returning `nil`) if `t` represents a time outside
    /// of the supported range of `GDateTime`.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    @inlinable static func newFrom(unixLocal t: gint64) -> DateTimeRef! {
            let result = g_date_time_new_from_unix_local(t)
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a `GDateTime` corresponding to the given Unix time `t` in UTC.
    /// 
    /// Unix time is the number of seconds that have elapsed since 1970-01-01
    /// 00:00:00 UTC.
    /// 
    /// This call can fail (returning `nil`) if `t` represents a time outside
    /// of the supported range of `GDateTime`.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    @inlinable static func newFrom(unixUTC t: gint64) -> DateTimeRef! {
            let result = g_date_time_new_from_unix_utc(t)
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new `GDateTime` corresponding to the given date and time in
    /// the local time zone.
    /// 
    /// This call is equivalent to calling `g_date_time_new()` with the time
    /// zone returned by `g_time_zone_new_local()`.
    @inlinable static func new(local year: Int, month: Int, day: Int, hour: Int, minute: Int, seconds: Double) -> DateTimeRef! {
            let result = g_date_time_new_local(gint(year), gint(month), gint(day), gint(hour), gint(minute), gdouble(seconds))
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a `GDateTime` corresponding to this exact instant in the given
    /// time zone `tz`.  The time is as accurate as the system allows, to a
    /// maximum accuracy of 1 microsecond.
    /// 
    /// This function will always succeed unless GLib is still being used after the
    /// year 9999.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    @inlinable static func new<TimeZoneT: TimeZoneProtocol>(now tz: TimeZoneT) -> DateTimeRef! {
            let result = g_date_time_new_now(tz.time_zone_ptr)
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a `GDateTime` corresponding to this exact instant in the local
    /// time zone.
    /// 
    /// This is equivalent to calling `g_date_time_new_now()` with the time
    /// zone returned by `g_time_zone_new_local()`.
    @inlinable static func newNowLocal() -> DateTimeRef! {
            let result = g_date_time_new_now_local()
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a `GDateTime` corresponding to this exact instant in UTC.
    /// 
    /// This is equivalent to calling `g_date_time_new_now()` with the time
    /// zone returned by `g_time_zone_new_utc()`.
    @inlinable static func newNowUTC() -> DateTimeRef! {
            let result = g_date_time_new_now_utc()
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new `GDateTime` corresponding to the given date and time in
    /// UTC.
    /// 
    /// This call is equivalent to calling `g_date_time_new()` with the time
    /// zone returned by `g_time_zone_new_utc()`.
    @inlinable static func new(utc year: Int, month: Int, day: Int, hour: Int, minute: Int, seconds: Double) -> DateTimeRef! {
            let result = g_date_time_new_utc(gint(year), gint(month), gint(day), gint(hour), gint(minute), gdouble(seconds))
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }
}

/// An opaque structure that represents a date and time, including a time zone.
///
/// The `DateTime` type acts as a reference-counted owner of an underlying `GDateTime` instance.
/// It provides the methods that can operate on this data type through `DateTimeProtocol` conformance.
/// Use `DateTime` as a strong reference or owner of a `GDateTime` instance.
///
open class DateTime: DateTimeProtocol {
        /// Untyped pointer to the underlying `GDateTime` instance.
    /// For type-safe access, use the generated, typed pointer `date_time_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DateTime` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GDateTime>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DateTime` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GDateTime>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DateTime` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DateTime` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DateTime` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GDateTime>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DateTime` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GDateTime>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GDateTime`.
    /// i.e., ownership is transferred to the `DateTime` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GDateTime>) {
        ptr = UnsafeMutableRawPointer(op)
        g_date_time_ref(ptr.assumingMemoryBound(to: GDateTime.self))
    }

    /// Reference intialiser for a related type that implements `DateTimeProtocol`
    /// Will retain `GDateTime`.
    /// - Parameter other: an instance of a related type that implements `DateTimeProtocol`
    @inlinable public init<T: DateTimeProtocol>(_ other: T) {
        ptr = other.ptr
        g_date_time_ref(ptr.assumingMemoryBound(to: GDateTime.self))
    }

    /// Releases the underlying `GDateTime` instance using `g_date_time_unref`.
    deinit {
        g_date_time_unref(ptr.assumingMemoryBound(to: GDateTime.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateTimeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateTimeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_date_time_ref(ptr.assumingMemoryBound(to: GDateTime.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateTimeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateTimeProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_date_time_ref(ptr.assumingMemoryBound(to: GDateTime.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateTimeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateTimeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_date_time_ref(ptr.assumingMemoryBound(to: GDateTime.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateTimeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateTimeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_date_time_ref(ptr.assumingMemoryBound(to: GDateTime.self))
    }

    /// Creates a new `GDateTime` corresponding to the given date and time in
    /// the time zone `tz`.
    /// 
    /// The `year` must be between 1 and 9999, `month` between 1 and 12 and `day`
    /// between 1 and 28, 29, 30 or 31 depending on the month and the year.
    /// 
    /// `hour` must be between 0 and 23 and `minute` must be between 0 and 59.
    /// 
    /// `seconds` must be at least 0.0 and must be strictly less than 60.0.
    /// It will be rounded down to the nearest microsecond.
    /// 
    /// If the given time is not representable in the given time zone (for
    /// example, 02:30 on March 14th 2010 in Toronto, due to daylight savings
    /// time) then the time will be rounded up to the nearest existing time
    /// (in this case, 03:00).  If this matters to you then you should verify
    /// the return value for containing the same as the numbers you gave.
    /// 
    /// In the case that the given time is ambiguous in the given time zone
    /// (for example, 01:30 on November 7th 2010 in Toronto, due to daylight
    /// savings time) then the time falling within standard (ie:
    /// non-daylight) time is taken.
    /// 
    /// It not considered a programmer error for the values to this function
    /// to be out of range, but in the case that they are, the function will
    /// return `nil`.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    @inlinable public init<TimeZoneT: TimeZoneProtocol>( tz: TimeZoneT, year: Int, month: Int, day: Int, hour: Int, minute: Int, seconds: Double) {
            let result = g_date_time_new(tz.time_zone_ptr, gint(year), gint(month), gint(day), gint(hour), gint(minute), gdouble(seconds))
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GDateTime` corresponding to the given
    /// [ISO 8601 formatted string](https://en.wikipedia.org/wiki/ISO_8601)
    /// `text`. ISO 8601 strings of the form &lt;date&gt;&lt;sep&gt;&lt;time&gt;&lt;tz&gt; are supported, with
    /// some extensions from [RFC 3339](https://tools.ietf.org/html/rfc3339) as
    /// mentioned below.
    /// 
    /// Note that as `GDateTime` "is oblivious to leap seconds", leap seconds information
    /// in an ISO-8601 string will be ignored, so a `23:59:60` time would be parsed as
    /// `23:59:59`.
    /// 
    /// &lt;sep&gt; is the separator and can be either 'T', 't' or ' '. The latter two
    /// separators are an extension from
    /// [RFC 3339](https://tools.ietf.org/html/rfc3339`section-5.6`).
    /// 
    /// &lt;date&gt; is in the form:
    /// 
    /// - `YYYY-MM-DD` - Year/month/day, e.g. 2016-08-24.
    /// - `YYYYMMDD` - Same as above without dividers.
    /// - `YYYY-DDD` - Ordinal day where DDD is from 001 to 366, e.g. 2016-237.
    /// - `YYYYDDD` - Same as above without dividers.
    /// - `YYYY-Www-D` - Week day where ww is from 01 to 52 and D from 1-7,
    ///   e.g. 2016-W34-3.
    /// - `YYYYWwwD` - Same as above without dividers.
    /// 
    /// &lt;time&gt; is in the form:
    /// 
    /// - `hh:mm:`ss(.sss)`` - Hours, minutes, seconds (subseconds), e.g. 22:10:42.123.
    /// - ``hhmmss(.sss)`` - Same as above without dividers.
    /// 
    /// &lt;tz&gt; is an optional timezone suffix of the form:
    /// 
    /// - `Z` - UTC.
    /// - `+hh:mm` or `-hh:mm` - Offset from UTC in hours and minutes, e.g. +12:00.
    /// - `+hh` or `-hh` - Offset from UTC in hours, e.g. +12.
    /// 
    /// If the timezone is not provided in `text` it must be provided in `default_tz`
    /// (this field is otherwise ignored).
    /// 
    /// This call can fail (returning `nil`) if `text` is not a valid ISO 8601
    /// formatted string.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    @inlinable public init<TimeZoneT: TimeZoneProtocol>(iso8601 text: UnsafePointer<gchar>!, defaultTz: TimeZoneT?) {
            let result = g_date_time_new_from_iso8601(text, defaultTz?.time_zone_ptr)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GDateTime` corresponding to the given `GTimeVal` `tv` in the
    /// local time zone.
    /// 
    /// The time contained in a `GTimeVal` is always stored in the form of
    /// seconds elapsed since 1970-01-01 00:00:00 UTC, regardless of the
    /// local time offset.
    /// 
    /// This call can fail (returning `nil`) if `tv` represents a time outside
    /// of the supported range of `GDateTime`.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    ///
    /// **new_from_timeval_local is deprecated:**
    /// #GTimeVal is not year-2038-safe. Use
    ///    g_date_time_new_from_unix_local() instead.
    @available(*, deprecated) @inlinable public init<TimeValT: TimeValProtocol>(timevalLocal tv: TimeValT) {
            let result = g_date_time_new_from_timeval_local(tv._ptr)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GDateTime` corresponding to the given `GTimeVal` `tv` in UTC.
    /// 
    /// The time contained in a `GTimeVal` is always stored in the form of
    /// seconds elapsed since 1970-01-01 00:00:00 UTC.
    /// 
    /// This call can fail (returning `nil`) if `tv` represents a time outside
    /// of the supported range of `GDateTime`.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    ///
    /// **new_from_timeval_utc is deprecated:**
    /// #GTimeVal is not year-2038-safe. Use
    ///    g_date_time_new_from_unix_utc() instead.
    @available(*, deprecated) @inlinable public init<TimeValT: TimeValProtocol>(timevalUTC tv: TimeValT) {
            let result = g_date_time_new_from_timeval_utc(tv._ptr)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GDateTime` corresponding to the given Unix time `t` in the
    /// local time zone.
    /// 
    /// Unix time is the number of seconds that have elapsed since 1970-01-01
    /// 00:00:00 UTC, regardless of the local time offset.
    /// 
    /// This call can fail (returning `nil`) if `t` represents a time outside
    /// of the supported range of `GDateTime`.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    @inlinable public init(unixLocal t: gint64) {
            let result = g_date_time_new_from_unix_local(t)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GDateTime` corresponding to the given Unix time `t` in UTC.
    /// 
    /// Unix time is the number of seconds that have elapsed since 1970-01-01
    /// 00:00:00 UTC.
    /// 
    /// This call can fail (returning `nil`) if `t` represents a time outside
    /// of the supported range of `GDateTime`.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    @inlinable public init(unixUTC t: gint64) {
            let result = g_date_time_new_from_unix_utc(t)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GDateTime` corresponding to the given date and time in
    /// the local time zone.
    /// 
    /// This call is equivalent to calling `g_date_time_new()` with the time
    /// zone returned by `g_time_zone_new_local()`.
    @inlinable public init(local year: Int, month: Int, day: Int, hour: Int, minute: Int, seconds: Double) {
            let result = g_date_time_new_local(gint(year), gint(month), gint(day), gint(hour), gint(minute), gdouble(seconds))
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GDateTime` corresponding to this exact instant in the given
    /// time zone `tz`.  The time is as accurate as the system allows, to a
    /// maximum accuracy of 1 microsecond.
    /// 
    /// This function will always succeed unless GLib is still being used after the
    /// year 9999.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    @inlinable public init<TimeZoneT: TimeZoneProtocol>(now tz: TimeZoneT) {
            let result = g_date_time_new_now(tz.time_zone_ptr)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GDateTime` corresponding to the given date and time in
    /// UTC.
    /// 
    /// This call is equivalent to calling `g_date_time_new()` with the time
    /// zone returned by `g_time_zone_new_utc()`.
    @inlinable public init(utc year: Int, month: Int, day: Int, hour: Int, minute: Int, seconds: Double) {
            let result = g_date_time_new_utc(gint(year), gint(month), gint(day), gint(hour), gint(minute), gdouble(seconds))
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GDateTime` corresponding to the given
    /// [ISO 8601 formatted string](https://en.wikipedia.org/wiki/ISO_8601)
    /// `text`. ISO 8601 strings of the form &lt;date&gt;&lt;sep&gt;&lt;time&gt;&lt;tz&gt; are supported, with
    /// some extensions from [RFC 3339](https://tools.ietf.org/html/rfc3339) as
    /// mentioned below.
    /// 
    /// Note that as `GDateTime` "is oblivious to leap seconds", leap seconds information
    /// in an ISO-8601 string will be ignored, so a `23:59:60` time would be parsed as
    /// `23:59:59`.
    /// 
    /// &lt;sep&gt; is the separator and can be either 'T', 't' or ' '. The latter two
    /// separators are an extension from
    /// [RFC 3339](https://tools.ietf.org/html/rfc3339`section-5.6`).
    /// 
    /// &lt;date&gt; is in the form:
    /// 
    /// - `YYYY-MM-DD` - Year/month/day, e.g. 2016-08-24.
    /// - `YYYYMMDD` - Same as above without dividers.
    /// - `YYYY-DDD` - Ordinal day where DDD is from 001 to 366, e.g. 2016-237.
    /// - `YYYYDDD` - Same as above without dividers.
    /// - `YYYY-Www-D` - Week day where ww is from 01 to 52 and D from 1-7,
    ///   e.g. 2016-W34-3.
    /// - `YYYYWwwD` - Same as above without dividers.
    /// 
    /// &lt;time&gt; is in the form:
    /// 
    /// - `hh:mm:`ss(.sss)`` - Hours, minutes, seconds (subseconds), e.g. 22:10:42.123.
    /// - ``hhmmss(.sss)`` - Same as above without dividers.
    /// 
    /// &lt;tz&gt; is an optional timezone suffix of the form:
    /// 
    /// - `Z` - UTC.
    /// - `+hh:mm` or `-hh:mm` - Offset from UTC in hours and minutes, e.g. +12:00.
    /// - `+hh` or `-hh` - Offset from UTC in hours, e.g. +12.
    /// 
    /// If the timezone is not provided in `text` it must be provided in `default_tz`
    /// (this field is otherwise ignored).
    /// 
    /// This call can fail (returning `nil`) if `text` is not a valid ISO 8601
    /// formatted string.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    @inlinable public static func newFrom<TimeZoneT: TimeZoneProtocol>(iso8601 text: UnsafePointer<gchar>!, defaultTz: TimeZoneT?) -> DateTime! {
            let result = g_date_time_new_from_iso8601(text, defaultTz?.time_zone_ptr)
        guard let rv = DateTime(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a `GDateTime` corresponding to the given `GTimeVal` `tv` in the
    /// local time zone.
    /// 
    /// The time contained in a `GTimeVal` is always stored in the form of
    /// seconds elapsed since 1970-01-01 00:00:00 UTC, regardless of the
    /// local time offset.
    /// 
    /// This call can fail (returning `nil`) if `tv` represents a time outside
    /// of the supported range of `GDateTime`.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    ///
    /// **new_from_timeval_local is deprecated:**
    /// #GTimeVal is not year-2038-safe. Use
    ///    g_date_time_new_from_unix_local() instead.
    @available(*, deprecated) @inlinable public static func newFrom<TimeValT: TimeValProtocol>(timevalLocal tv: TimeValT) -> DateTime! {
            let result = g_date_time_new_from_timeval_local(tv._ptr)
        guard let rv = DateTime(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a `GDateTime` corresponding to the given `GTimeVal` `tv` in UTC.
    /// 
    /// The time contained in a `GTimeVal` is always stored in the form of
    /// seconds elapsed since 1970-01-01 00:00:00 UTC.
    /// 
    /// This call can fail (returning `nil`) if `tv` represents a time outside
    /// of the supported range of `GDateTime`.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    ///
    /// **new_from_timeval_utc is deprecated:**
    /// #GTimeVal is not year-2038-safe. Use
    ///    g_date_time_new_from_unix_utc() instead.
    @available(*, deprecated) @inlinable public static func newFrom<TimeValT: TimeValProtocol>(timevalUTC tv: TimeValT) -> DateTime! {
            let result = g_date_time_new_from_timeval_utc(tv._ptr)
        guard let rv = DateTime(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a `GDateTime` corresponding to the given Unix time `t` in the
    /// local time zone.
    /// 
    /// Unix time is the number of seconds that have elapsed since 1970-01-01
    /// 00:00:00 UTC, regardless of the local time offset.
    /// 
    /// This call can fail (returning `nil`) if `t` represents a time outside
    /// of the supported range of `GDateTime`.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    @inlinable public static func newFrom(unixLocal t: gint64) -> DateTime! {
            let result = g_date_time_new_from_unix_local(t)
        guard let rv = DateTime(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a `GDateTime` corresponding to the given Unix time `t` in UTC.
    /// 
    /// Unix time is the number of seconds that have elapsed since 1970-01-01
    /// 00:00:00 UTC.
    /// 
    /// This call can fail (returning `nil`) if `t` represents a time outside
    /// of the supported range of `GDateTime`.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    @inlinable public static func newFrom(unixUTC t: gint64) -> DateTime! {
            let result = g_date_time_new_from_unix_utc(t)
        guard let rv = DateTime(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new `GDateTime` corresponding to the given date and time in
    /// the local time zone.
    /// 
    /// This call is equivalent to calling `g_date_time_new()` with the time
    /// zone returned by `g_time_zone_new_local()`.
    @inlinable public static func new(local year: Int, month: Int, day: Int, hour: Int, minute: Int, seconds: Double) -> DateTime! {
            let result = g_date_time_new_local(gint(year), gint(month), gint(day), gint(hour), gint(minute), gdouble(seconds))
        guard let rv = DateTime(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a `GDateTime` corresponding to this exact instant in the given
    /// time zone `tz`.  The time is as accurate as the system allows, to a
    /// maximum accuracy of 1 microsecond.
    /// 
    /// This function will always succeed unless GLib is still being used after the
    /// year 9999.
    /// 
    /// You should release the return value by calling `g_date_time_unref()`
    /// when you are done with it.
    @inlinable public static func new<TimeZoneT: TimeZoneProtocol>(now tz: TimeZoneT) -> DateTime! {
            let result = g_date_time_new_now(tz.time_zone_ptr)
        guard let rv = DateTime(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a `GDateTime` corresponding to this exact instant in the local
    /// time zone.
    /// 
    /// This is equivalent to calling `g_date_time_new_now()` with the time
    /// zone returned by `g_time_zone_new_local()`.
    @inlinable public static func newNowLocal() -> DateTime! {
            let result = g_date_time_new_now_local()
        guard let rv = DateTime(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a `GDateTime` corresponding to this exact instant in UTC.
    /// 
    /// This is equivalent to calling `g_date_time_new_now()` with the time
    /// zone returned by `g_time_zone_new_utc()`.
    @inlinable public static func newNowUTC() -> DateTime! {
            let result = g_date_time_new_now_utc()
        guard let rv = DateTime(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new `GDateTime` corresponding to the given date and time in
    /// UTC.
    /// 
    /// This call is equivalent to calling `g_date_time_new()` with the time
    /// zone returned by `g_time_zone_new_utc()`.
    @inlinable public static func new(utc year: Int, month: Int, day: Int, hour: Int, minute: Int, seconds: Double) -> DateTime! {
            let result = g_date_time_new_utc(gint(year), gint(month), gint(day), gint(hour), gint(minute), gdouble(seconds))
        guard let rv = DateTime(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

}

// MARK: no DateTime properties

// MARK: no DateTime signals

// MARK: DateTime has no signals
// MARK: DateTime Record: DateTimeProtocol extension (methods and fields)
public extension DateTimeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDateTime` instance.
    @inlinable var date_time_ptr: UnsafeMutablePointer<GDateTime>! { return ptr?.assumingMemoryBound(to: GDateTime.self) }

    /// Creates a copy of `datetime` and adds the specified timespan to the copy.
    @inlinable func add(timespan: GTimeSpan) -> DateTimeRef! {
        let result = g_date_time_add(date_time_ptr, timespan)
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a copy of `datetime` and adds the specified number of days to the
    /// copy. Add negative values to subtract days.
    @inlinable func add(days: Int) -> DateTimeRef! {
        let result = g_date_time_add_days(date_time_ptr, gint(days))
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new `GDateTime` adding the specified values to the current date and
    /// time in `datetime`. Add negative values to subtract.
    @inlinable func addFull(years: Int, months: Int, days: Int, hours: Int, minutes: Int, seconds: Double) -> DateTimeRef! {
        let result = g_date_time_add_full(date_time_ptr, gint(years), gint(months), gint(days), gint(hours), gint(minutes), gdouble(seconds))
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a copy of `datetime` and adds the specified number of hours.
    /// Add negative values to subtract hours.
    @inlinable func add(hours: Int) -> DateTimeRef! {
        let result = g_date_time_add_hours(date_time_ptr, gint(hours))
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a copy of `datetime` adding the specified number of minutes.
    /// Add negative values to subtract minutes.
    @inlinable func add(minutes: Int) -> DateTimeRef! {
        let result = g_date_time_add_minutes(date_time_ptr, gint(minutes))
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a copy of `datetime` and adds the specified number of months to the
    /// copy. Add negative values to subtract months.
    /// 
    /// The day of the month of the resulting `GDateTime` is clamped to the number
    /// of days in the updated calendar month. For example, if adding 1 month to
    /// 31st January 2018, the result would be 28th February 2018. In 2020 (a leap
    /// year), the result would be 29th February.
    @inlinable func add(months: Int) -> DateTimeRef! {
        let result = g_date_time_add_months(date_time_ptr, gint(months))
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a copy of `datetime` and adds the specified number of seconds.
    /// Add negative values to subtract seconds.
    @inlinable func add(seconds: Double) -> DateTimeRef! {
        let result = g_date_time_add_seconds(date_time_ptr, gdouble(seconds))
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a copy of `datetime` and adds the specified number of weeks to the
    /// copy. Add negative values to subtract weeks.
    @inlinable func add(weeks: Int) -> DateTimeRef! {
        let result = g_date_time_add_weeks(date_time_ptr, gint(weeks))
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a copy of `datetime` and adds the specified number of years to the
    /// copy. Add negative values to subtract years.
    /// 
    /// As with `g_date_time_add_months()`, if the resulting date would be 29th
    /// February on a non-leap year, the day will be clamped to 28th February.
    @inlinable func add(years: Int) -> DateTimeRef! {
        let result = g_date_time_add_years(date_time_ptr, gint(years))
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// A comparison function for `GDateTimes` that is suitable
    /// as a `GCompareFunc`. Both `GDateTimes` must be non-`nil`.
    @inlinable func compare<DateTimeT: DateTimeProtocol>(dt2: DateTimeT) -> Int {
        let result = g_date_time_compare(date_time_ptr, dt2.date_time_ptr)
        let rv = Int(result)
        return rv
    }

    /// Calculates the difference in time between `end` and `begin`.  The
    /// `GTimeSpan` that is returned is effectively `end` - `begin` (ie:
    /// positive if the first parameter is larger).
    @inlinable func difference<DateTimeT: DateTimeProtocol>(begin: DateTimeT) -> GTimeSpan {
        let result = g_date_time_difference(date_time_ptr, begin.date_time_ptr)
        let rv = result
        return rv
    }

    /// Checks to see if `dt1` and `dt2` are equal.
    /// 
    /// Equal here means that they represent the same moment after converting
    /// them to the same time zone.
    @inlinable func equal<DateTimeT: DateTimeProtocol>(dt2: DateTimeT) -> Bool {
        let result = g_date_time_equal(date_time_ptr, dt2.date_time_ptr)
        let rv = ((result) != 0)
        return rv
    }

    /// Creates a newly allocated string representing the requested `format`.
    /// 
    /// The format strings understood by this function are a subset of the
    /// `strftime()` format language as specified by C99.  The \`D`, \`U` and \`W`
    /// conversions are not supported, nor is the 'E' modifier.  The GNU
    /// extensions \`k`, \`l`, \`s` and \`P` are supported, however, as are the
    /// '0', '_' and '-' modifiers. The Python extension \`f` is also supported.
    /// 
    /// In contrast to `strftime()`, this function always produces a UTF-8
    /// string, regardless of the current locale.  Note that the rendering of
    /// many formats is locale-dependent and may not match the `strftime()`
    /// output exactly.
    /// 
    /// The following format specifiers are supported:
    /// 
    /// - \`a:` the abbreviated weekday name according to the current locale
    /// - \`A:` the full weekday name according to the current locale
    /// - \`b:` the abbreviated month name according to the current locale
    /// - \`B:` the full month name according to the current locale
    /// - \`c:` the preferred date and time representation for the current locale
    /// - \`C:` the century number (year/100) as a 2-digit integer (00-99)
    /// - \`d:` the day of the month as a decimal number (range 01 to 31)
    /// - \`e:` the day of the month as a decimal number (range  1 to 31)
    /// - \`F:` equivalent to ``Y-``m-``d`` (the ISO 8601 date format)
    /// - \`g:` the last two digits of the ISO 8601 week-based year as a
    ///   decimal number (00-99). This works well with \`V` and \`u`.
    /// - \`G:` the ISO 8601 week-based year as a decimal number. This works
    ///   well with \`V` and \`u`.
    /// - \`h:` equivalent to \`b`
    /// - \`H:` the hour as a decimal number using a 24-hour clock (range 00 to 23)
    /// - \`I:` the hour as a decimal number using a 12-hour clock (range 01 to 12)
    /// - \`j:` the day of the year as a decimal number (range 001 to 366)
    /// - \`k:` the hour (24-hour clock) as a decimal number (range 0 to 23);
    ///   single digits are preceded by a blank
    /// - \`l:` the hour (12-hour clock) as a decimal number (range 1 to 12);
    ///   single digits are preceded by a blank
    /// - \`m:` the month as a decimal number (range 01 to 12)
    /// - \`M:` the minute as a decimal number (range 00 to 59)
    /// - \`f:` the microsecond as a decimal number (range 000000 to 999999)
    /// - \`p:` either "AM" or "PM" according to the given time value, or the
    ///   corresponding  strings for the current locale.  Noon is treated as
    ///   "PM" and midnight as "AM". Use of this format specifier is discouraged, as
    ///   many locales have no concept of AM/PM formatting. Use \`c` or \`X` instead.
    /// - \`P:` like \`p` but lowercase: "am" or "pm" or a corresponding string for
    ///   the current locale. Use of this format specifier is discouraged, as
    ///   many locales have no concept of AM/PM formatting. Use \`c` or \`X` instead.
    /// - \`r:` the time in a.m. or p.m. notation. Use of this format specifier is
    ///   discouraged, as many locales have no concept of AM/PM formatting. Use \`c`
    ///   or \`X` instead.
    /// - \`R:` the time in 24-hour notation (\`H:`\`M`)
    /// - \`s:` the number of seconds since the Epoch, that is, since 1970-01-01
    ///   00:00:00 UTC
    /// - \`S:` the second as a decimal number (range 00 to 60)
    /// - \`t:` a tab character
    /// - \`T:` the time in 24-hour notation with seconds (\`H:`\`M:`\`S`)
    /// - \`u:` the ISO 8601 standard day of the week as a decimal, range 1 to 7,
    ///    Monday being 1. This works well with \`G` and \`V`.
    /// - \`V:` the ISO 8601 standard week number of the current year as a decimal
    ///   number, range 01 to 53, where week 1 is the first week that has at
    ///   least 4 days in the new year. See `g_date_time_get_week_of_year()`.
    ///   This works well with \`G` and \`u`.
    /// - \`w:` the day of the week as a decimal, range 0 to 6, Sunday being 0.
    ///   This is not the ISO 8601 standard format -- use \`u` instead.
    /// - \`x:` the preferred date representation for the current locale without
    ///   the time
    /// - \`X:` the preferred time representation for the current locale without
    ///   the date
    /// - \`y:` the year as a decimal number without the century
    /// - \`Y:` the year as a decimal number including the century
    /// - \`z:` the time zone as an offset from UTC (+hhmm)
    /// - \`:z:` the time zone as an offset from UTC (+hh:mm).
    ///   This is a gnulib `strftime()` extension. Since: 2.38
    /// - \`::z:` the time zone as an offset from UTC (+hh:mm:ss). This is a
    ///   gnulib `strftime()` extension. Since: 2.38
    /// - \`:::z:` the time zone as an offset from UTC, with : to necessary
    ///   precision (e.g., -04, +05:30). This is a gnulib `strftime()` extension. Since: 2.38
    /// - \`Z:` the time zone or name or abbreviation
    /// - \``\`:` a literal \% character
    /// 
    /// Some conversion specifications can be modified by preceding the
    /// conversion specifier by one or more modifier characters. The
    /// following modifiers are supported for many of the numeric
    /// conversions:
    /// 
    /// - O: Use alternative numeric symbols, if the current locale supports those.
    /// - _: Pad a numeric result with spaces. This overrides the default padding
    ///   for the specifier.
    /// - -: Do not pad a numeric result. This overrides the default padding
    ///   for the specifier.
    /// - 0: Pad a numeric result with zeros. This overrides the default padding
    ///   for the specifier.
    /// 
    /// Additionally, when O is used with B, b, or h, it produces the alternative
    /// form of a month name. The alternative form should be used when the month
    /// name is used without a day number (e.g., standalone). It is required in
    /// some languages (Baltic, Slavic, Greek, and more) due to their grammatical
    /// rules. For other languages there is no difference. \`OB` is a GNU and BSD
    /// `strftime()` extension expected to be added to the future POSIX specification,
    /// \`Ob` and \`Oh` are GNU `strftime()` extensions. Since: 2.56
    @inlinable func format(format: UnsafePointer<gchar>!) -> String! {
        let result = g_date_time_format(date_time_ptr, format)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Format `datetime` in [ISO 8601 format](https://en.wikipedia.org/wiki/ISO_8601),
    /// including the date, time and time zone, and return that as a UTF-8 encoded
    /// string.
    /// 
    /// Since GLib 2.66, this will output to sub-second precision if needed.
    @inlinable func formatIso8601() -> String! {
        let result = g_date_time_format_iso8601(date_time_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Retrieves the day of the month represented by `datetime` in the gregorian
    /// calendar.
    @inlinable func getDayOfMonth() -> Int {
        let result = g_date_time_get_day_of_month(date_time_ptr)
        let rv = Int(result)
        return rv
    }

    /// Retrieves the ISO 8601 day of the week on which `datetime` falls (1 is
    /// Monday, 2 is Tuesday... 7 is Sunday).
    @inlinable func getDayOfWeek() -> Int {
        let result = g_date_time_get_day_of_week(date_time_ptr)
        let rv = Int(result)
        return rv
    }

    /// Retrieves the day of the year represented by `datetime` in the Gregorian
    /// calendar.
    @inlinable func getDayOfYear() -> Int {
        let result = g_date_time_get_day_of_year(date_time_ptr)
        let rv = Int(result)
        return rv
    }

    /// Retrieves the hour of the day represented by `datetime`
    @inlinable func getHour() -> Int {
        let result = g_date_time_get_hour(date_time_ptr)
        let rv = Int(result)
        return rv
    }

    /// Retrieves the microsecond of the date represented by `datetime`
    @inlinable func getMicrosecond() -> Int {
        let result = g_date_time_get_microsecond(date_time_ptr)
        let rv = Int(result)
        return rv
    }

    /// Retrieves the minute of the hour represented by `datetime`
    @inlinable func getMinute() -> Int {
        let result = g_date_time_get_minute(date_time_ptr)
        let rv = Int(result)
        return rv
    }

    /// Retrieves the month of the year represented by `datetime` in the Gregorian
    /// calendar.
    @inlinable func getMonth() -> Int {
        let result = g_date_time_get_month(date_time_ptr)
        let rv = Int(result)
        return rv
    }

    /// Retrieves the second of the minute represented by `datetime`
    @inlinable func getSecond() -> Int {
        let result = g_date_time_get_second(date_time_ptr)
        let rv = Int(result)
        return rv
    }

    /// Retrieves the number of seconds since the start of the last minute,
    /// including the fractional part.
    @inlinable func getSeconds() -> Double {
        let result = g_date_time_get_seconds(date_time_ptr)
        let rv = Double(result)
        return rv
    }

    /// Get the time zone for this `datetime`.
    @inlinable func getTimezone() -> TimeZoneRef! {
        let result = g_date_time_get_timezone(date_time_ptr)
        let rv = TimeZoneRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Determines the time zone abbreviation to be used at the time and in
    /// the time zone of `datetime`.
    /// 
    /// For example, in Toronto this is currently "EST" during the winter
    /// months and "EDT" during the summer months when daylight savings
    /// time is in effect.
    @inlinable func getTimezoneAbbreviation() -> String! {
        let result = g_date_time_get_timezone_abbreviation(date_time_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Determines the offset to UTC in effect at the time and in the time
    /// zone of `datetime`.
    /// 
    /// The offset is the number of microseconds that you add to UTC time to
    /// arrive at local time for the time zone (ie: negative numbers for time
    /// zones west of GMT, positive numbers for east).
    /// 
    /// If `datetime` represents UTC time, then the offset is always zero.
    @inlinable func getUTCOffset() -> GTimeSpan {
        let result = g_date_time_get_utc_offset(date_time_ptr)
        let rv = result
        return rv
    }

    /// Returns the ISO 8601 week-numbering year in which the week containing
    /// `datetime` falls.
    /// 
    /// This function, taken together with `g_date_time_get_week_of_year()` and
    /// `g_date_time_get_day_of_week()` can be used to determine the full ISO
    /// week date on which `datetime` falls.
    /// 
    /// This is usually equal to the normal Gregorian year (as returned by
    /// `g_date_time_get_year()`), except as detailed below:
    /// 
    /// For Thursday, the week-numbering year is always equal to the usual
    /// calendar year.  For other days, the number is such that every day
    /// within a complete week (Monday to Sunday) is contained within the
    /// same week-numbering year.
    /// 
    /// For Monday, Tuesday and Wednesday occurring near the end of the year,
    /// this may mean that the week-numbering year is one greater than the
    /// calendar year (so that these days have the same week-numbering year
    /// as the Thursday occurring early in the next year).
    /// 
    /// For Friday, Saturday and Sunday occurring near the start of the year,
    /// this may mean that the week-numbering year is one less than the
    /// calendar year (so that these days have the same week-numbering year
    /// as the Thursday occurring late in the previous year).
    /// 
    /// An equivalent description is that the week-numbering year is equal to
    /// the calendar year containing the majority of the days in the current
    /// week (Monday to Sunday).
    /// 
    /// Note that January 1 0001 in the proleptic Gregorian calendar is a
    /// Monday, so this function never returns 0.
    @inlinable func getWeekNumberingYear() -> Int {
        let result = g_date_time_get_week_numbering_year(date_time_ptr)
        let rv = Int(result)
        return rv
    }

    /// Returns the ISO 8601 week number for the week containing `datetime`.
    /// The ISO 8601 week number is the same for every day of the week (from
    /// Moday through Sunday).  That can produce some unusual results
    /// (described below).
    /// 
    /// The first week of the year is week 1.  This is the week that contains
    /// the first Thursday of the year.  Equivalently, this is the first week
    /// that has more than 4 of its days falling within the calendar year.
    /// 
    /// The value 0 is never returned by this function.  Days contained
    /// within a year but occurring before the first ISO 8601 week of that
    /// year are considered as being contained in the last week of the
    /// previous year.  Similarly, the final days of a calendar year may be
    /// considered as being part of the first ISO 8601 week of the next year
    /// if 4 or more days of that week are contained within the new year.
    @inlinable func getWeekOfYear() -> Int {
        let result = g_date_time_get_week_of_year(date_time_ptr)
        let rv = Int(result)
        return rv
    }

    /// Retrieves the year represented by `datetime` in the Gregorian calendar.
    @inlinable func getYear() -> Int {
        let result = g_date_time_get_year(date_time_ptr)
        let rv = Int(result)
        return rv
    }

    /// Retrieves the Gregorian day, month, and year of a given `GDateTime`.
    @inlinable func getYmd(year: UnsafeMutablePointer<gint>! = nil, month: UnsafeMutablePointer<gint>! = nil, day: UnsafeMutablePointer<gint>! = nil) {
        
        g_date_time_get_ymd(date_time_ptr, year, month, day)
        
    }

    /// Hashes `datetime` into a `guint`, suitable for use within `GHashTable`.
    @inlinable func hash() -> Int {
        let result = g_date_time_hash(date_time_ptr)
        let rv = Int(result)
        return rv
    }

    /// Atomically increments the reference count of `datetime` by one.
    @discardableResult @inlinable func ref() -> DateTimeRef! {
        let result = g_date_time_ref(date_time_ptr)
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new `GDateTime` corresponding to the same instant in time as
    /// `datetime`, but in the local time zone.
    /// 
    /// This call is equivalent to calling `g_date_time_to_timezone()` with the
    /// time zone returned by `g_time_zone_new_local()`.
    @inlinable func toLocal() -> DateTimeRef! {
        let result = g_date_time_to_local(date_time_ptr)
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Stores the instant in time that `datetime` represents into `tv`.
    /// 
    /// The time contained in a `GTimeVal` is always stored in the form of
    /// seconds elapsed since 1970-01-01 00:00:00 UTC, regardless of the time
    /// zone associated with `datetime`.
    /// 
    /// On systems where 'long' is 32bit (ie: all 32bit systems and all
    /// Windows systems), a `GTimeVal` is incapable of storing the entire
    /// range of values that `GDateTime` is capable of expressing.  On those
    /// systems, this function returns `false` to indicate that the time is
    /// out of range.
    /// 
    /// On systems where 'long' is 64bit, this function never fails.
    ///
    /// **to_timeval is deprecated:**
    /// #GTimeVal is not year-2038-safe. Use
    ///    g_date_time_to_unix() instead.
    @available(*, deprecated) @inlinable func toTimeval<TimeValT: TimeValProtocol>(tv: TimeValT) -> Bool {
        let result = g_date_time_to_timeval(date_time_ptr, tv._ptr)
        let rv = ((result) != 0)
        return rv
    }

    /// Create a new `GDateTime` corresponding to the same instant in time as
    /// `datetime`, but in the time zone `tz`.
    /// 
    /// This call can fail in the case that the time goes out of bounds.  For
    /// example, converting 0001-01-01 00:00:00 UTC to a time zone west of
    /// Greenwich will fail (due to the year 0 being out of range).
    @inlinable func toTimezone<TimeZoneT: TimeZoneProtocol>(tz: TimeZoneT) -> DateTimeRef! {
        let result = g_date_time_to_timezone(date_time_ptr, tz.time_zone_ptr)
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Gives the Unix time corresponding to `datetime`, rounding down to the
    /// nearest second.
    /// 
    /// Unix time is the number of seconds that have elapsed since 1970-01-01
    /// 00:00:00 UTC, regardless of the time zone associated with `datetime`.
    @inlinable func toUnix() -> gint64 {
        let result = g_date_time_to_unix(date_time_ptr)
        let rv = result
        return rv
    }

    /// Creates a new `GDateTime` corresponding to the same instant in time as
    /// `datetime`, but in UTC.
    /// 
    /// This call is equivalent to calling `g_date_time_to_timezone()` with the
    /// time zone returned by `g_time_zone_new_utc()`.
    @inlinable func toUTC() -> DateTimeRef! {
        let result = g_date_time_to_utc(date_time_ptr)
        guard let rv = DateTimeRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Atomically decrements the reference count of `datetime` by one.
    /// 
    /// When the reference count reaches zero, the resources allocated by
    /// `datetime` are freed
    @inlinable func unref() {
        
        g_date_time_unref(date_time_ptr)
        
    }
    /// Retrieves the day of the month represented by `datetime` in the gregorian
    /// calendar.
    @inlinable var dayOfMonth: Int {
        /// Retrieves the day of the month represented by `datetime` in the gregorian
        /// calendar.
        get {
            let result = g_date_time_get_day_of_month(date_time_ptr)
        let rv = Int(result)
            return rv
        }
    }

    /// Retrieves the ISO 8601 day of the week on which `datetime` falls (1 is
    /// Monday, 2 is Tuesday... 7 is Sunday).
    @inlinable var dayOfWeek: Int {
        /// Retrieves the ISO 8601 day of the week on which `datetime` falls (1 is
        /// Monday, 2 is Tuesday... 7 is Sunday).
        get {
            let result = g_date_time_get_day_of_week(date_time_ptr)
        let rv = Int(result)
            return rv
        }
    }

    /// Retrieves the day of the year represented by `datetime` in the Gregorian
    /// calendar.
    @inlinable var dayOfYear: Int {
        /// Retrieves the day of the year represented by `datetime` in the Gregorian
        /// calendar.
        get {
            let result = g_date_time_get_day_of_year(date_time_ptr)
        let rv = Int(result)
            return rv
        }
    }

    /// Retrieves the hour of the day represented by `datetime`
    @inlinable var hour: Int {
        /// Retrieves the hour of the day represented by `datetime`
        get {
            let result = g_date_time_get_hour(date_time_ptr)
        let rv = Int(result)
            return rv
        }
    }

    /// Determines if daylight savings time is in effect at the time and in
    /// the time zone of `datetime`.
    @inlinable var isDaylightSavings: Bool {
        /// Determines if daylight savings time is in effect at the time and in
        /// the time zone of `datetime`.
        get {
            let result = g_date_time_is_daylight_savings(date_time_ptr)
        let rv = ((result) != 0)
            return rv
        }
    }

    /// Retrieves the microsecond of the date represented by `datetime`
    @inlinable var microsecond: Int {
        /// Retrieves the microsecond of the date represented by `datetime`
        get {
            let result = g_date_time_get_microsecond(date_time_ptr)
        let rv = Int(result)
            return rv
        }
    }

    /// Retrieves the minute of the hour represented by `datetime`
    @inlinable var minute: Int {
        /// Retrieves the minute of the hour represented by `datetime`
        get {
            let result = g_date_time_get_minute(date_time_ptr)
        let rv = Int(result)
            return rv
        }
    }

    /// Retrieves the month of the year represented by `datetime` in the Gregorian
    /// calendar.
    @inlinable var month: Int {
        /// Retrieves the month of the year represented by `datetime` in the Gregorian
        /// calendar.
        get {
            let result = g_date_time_get_month(date_time_ptr)
        let rv = Int(result)
            return rv
        }
    }

    /// Retrieves the second of the minute represented by `datetime`
    @inlinable var second: Int {
        /// Retrieves the second of the minute represented by `datetime`
        get {
            let result = g_date_time_get_second(date_time_ptr)
        let rv = Int(result)
            return rv
        }
    }

    /// Retrieves the number of seconds since the start of the last minute,
    /// including the fractional part.
    @inlinable var seconds: Double {
        /// Retrieves the number of seconds since the start of the last minute,
        /// including the fractional part.
        get {
            let result = g_date_time_get_seconds(date_time_ptr)
        let rv = Double(result)
            return rv
        }
    }

    /// Get the time zone for this `datetime`.
    @inlinable var timezone: TimeZoneRef! {
        /// Get the time zone for this `datetime`.
        get {
            let result = g_date_time_get_timezone(date_time_ptr)
        let rv = TimeZoneRef(gconstpointer: gconstpointer(result))
            return rv
        }
    }

    /// Determines the time zone abbreviation to be used at the time and in
    /// the time zone of `datetime`.
    /// 
    /// For example, in Toronto this is currently "EST" during the winter
    /// months and "EDT" during the summer months when daylight savings
    /// time is in effect.
    @inlinable var timezoneAbbreviation: String! {
        /// Determines the time zone abbreviation to be used at the time and in
        /// the time zone of `datetime`.
        /// 
        /// For example, in Toronto this is currently "EST" during the winter
        /// months and "EDT" during the summer months when daylight savings
        /// time is in effect.
        get {
            let result = g_date_time_get_timezone_abbreviation(date_time_ptr)
        let rv = result.map({ String(cString: $0) })
            return rv
        }
    }

    /// Determines the offset to UTC in effect at the time and in the time
    /// zone of `datetime`.
    /// 
    /// The offset is the number of microseconds that you add to UTC time to
    /// arrive at local time for the time zone (ie: negative numbers for time
    /// zones west of GMT, positive numbers for east).
    /// 
    /// If `datetime` represents UTC time, then the offset is always zero.
    @inlinable var utcOffset: GTimeSpan {
        /// Determines the offset to UTC in effect at the time and in the time
        /// zone of `datetime`.
        /// 
        /// The offset is the number of microseconds that you add to UTC time to
        /// arrive at local time for the time zone (ie: negative numbers for time
        /// zones west of GMT, positive numbers for east).
        /// 
        /// If `datetime` represents UTC time, then the offset is always zero.
        get {
            let result = g_date_time_get_utc_offset(date_time_ptr)
        let rv = result
            return rv
        }
    }

    /// Returns the ISO 8601 week-numbering year in which the week containing
    /// `datetime` falls.
    /// 
    /// This function, taken together with `g_date_time_get_week_of_year()` and
    /// `g_date_time_get_day_of_week()` can be used to determine the full ISO
    /// week date on which `datetime` falls.
    /// 
    /// This is usually equal to the normal Gregorian year (as returned by
    /// `g_date_time_get_year()`), except as detailed below:
    /// 
    /// For Thursday, the week-numbering year is always equal to the usual
    /// calendar year.  For other days, the number is such that every day
    /// within a complete week (Monday to Sunday) is contained within the
    /// same week-numbering year.
    /// 
    /// For Monday, Tuesday and Wednesday occurring near the end of the year,
    /// this may mean that the week-numbering year is one greater than the
    /// calendar year (so that these days have the same week-numbering year
    /// as the Thursday occurring early in the next year).
    /// 
    /// For Friday, Saturday and Sunday occurring near the start of the year,
    /// this may mean that the week-numbering year is one less than the
    /// calendar year (so that these days have the same week-numbering year
    /// as the Thursday occurring late in the previous year).
    /// 
    /// An equivalent description is that the week-numbering year is equal to
    /// the calendar year containing the majority of the days in the current
    /// week (Monday to Sunday).
    /// 
    /// Note that January 1 0001 in the proleptic Gregorian calendar is a
    /// Monday, so this function never returns 0.
    @inlinable var weekNumberingYear: Int {
        /// Returns the ISO 8601 week-numbering year in which the week containing
        /// `datetime` falls.
        /// 
        /// This function, taken together with `g_date_time_get_week_of_year()` and
        /// `g_date_time_get_day_of_week()` can be used to determine the full ISO
        /// week date on which `datetime` falls.
        /// 
        /// This is usually equal to the normal Gregorian year (as returned by
        /// `g_date_time_get_year()`), except as detailed below:
        /// 
        /// For Thursday, the week-numbering year is always equal to the usual
        /// calendar year.  For other days, the number is such that every day
        /// within a complete week (Monday to Sunday) is contained within the
        /// same week-numbering year.
        /// 
        /// For Monday, Tuesday and Wednesday occurring near the end of the year,
        /// this may mean that the week-numbering year is one greater than the
        /// calendar year (so that these days have the same week-numbering year
        /// as the Thursday occurring early in the next year).
        /// 
        /// For Friday, Saturday and Sunday occurring near the start of the year,
        /// this may mean that the week-numbering year is one less than the
        /// calendar year (so that these days have the same week-numbering year
        /// as the Thursday occurring late in the previous year).
        /// 
        /// An equivalent description is that the week-numbering year is equal to
        /// the calendar year containing the majority of the days in the current
        /// week (Monday to Sunday).
        /// 
        /// Note that January 1 0001 in the proleptic Gregorian calendar is a
        /// Monday, so this function never returns 0.
        get {
            let result = g_date_time_get_week_numbering_year(date_time_ptr)
        let rv = Int(result)
            return rv
        }
    }

    /// Returns the ISO 8601 week number for the week containing `datetime`.
    /// The ISO 8601 week number is the same for every day of the week (from
    /// Moday through Sunday).  That can produce some unusual results
    /// (described below).
    /// 
    /// The first week of the year is week 1.  This is the week that contains
    /// the first Thursday of the year.  Equivalently, this is the first week
    /// that has more than 4 of its days falling within the calendar year.
    /// 
    /// The value 0 is never returned by this function.  Days contained
    /// within a year but occurring before the first ISO 8601 week of that
    /// year are considered as being contained in the last week of the
    /// previous year.  Similarly, the final days of a calendar year may be
    /// considered as being part of the first ISO 8601 week of the next year
    /// if 4 or more days of that week are contained within the new year.
    @inlinable var weekOfYear: Int {
        /// Returns the ISO 8601 week number for the week containing `datetime`.
        /// The ISO 8601 week number is the same for every day of the week (from
        /// Moday through Sunday).  That can produce some unusual results
        /// (described below).
        /// 
        /// The first week of the year is week 1.  This is the week that contains
        /// the first Thursday of the year.  Equivalently, this is the first week
        /// that has more than 4 of its days falling within the calendar year.
        /// 
        /// The value 0 is never returned by this function.  Days contained
        /// within a year but occurring before the first ISO 8601 week of that
        /// year are considered as being contained in the last week of the
        /// previous year.  Similarly, the final days of a calendar year may be
        /// considered as being part of the first ISO 8601 week of the next year
        /// if 4 or more days of that week are contained within the new year.
        get {
            let result = g_date_time_get_week_of_year(date_time_ptr)
        let rv = Int(result)
            return rv
        }
    }

    /// Retrieves the year represented by `datetime` in the Gregorian calendar.
    @inlinable var year: Int {
        /// Retrieves the year represented by `datetime` in the Gregorian calendar.
        get {
            let result = g_date_time_get_year(date_time_ptr)
        let rv = Int(result)
            return rv
        }
    }


}



// MARK: - DebugKey Record

/// Associates a string with a bit flag.
/// Used in `g_parse_debug_string()`.
///
/// The `DebugKeyProtocol` protocol exposes the methods and properties of an underlying `GDebugKey` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DebugKey`.
/// Alternatively, use `DebugKeyRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DebugKeyProtocol {
        /// Untyped pointer to the underlying `GDebugKey` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDebugKey` instance.
    var _ptr: UnsafeMutablePointer<GDebugKey>! { get }

    /// Required Initialiser for types conforming to `DebugKeyProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Associates a string with a bit flag.
/// Used in `g_parse_debug_string()`.
///
/// The `DebugKeyRef` type acts as a lightweight Swift reference to an underlying `GDebugKey` instance.
/// It exposes methods that can operate on this data type through `DebugKeyProtocol` conformance.
/// Use `DebugKeyRef` only as an `unowned` reference to an existing `GDebugKey` instance.
///
public struct DebugKeyRef: DebugKeyProtocol {
        /// Untyped pointer to the underlying `GDebugKey` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DebugKeyRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDebugKey>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDebugKey>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDebugKey>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDebugKey>?) {
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

    /// Reference intialiser for a related type that implements `DebugKeyProtocol`
    @inlinable init<T: DebugKeyProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DebugKeyProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DebugKeyProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DebugKeyProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DebugKeyProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DebugKeyProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// Associates a string with a bit flag.
/// Used in `g_parse_debug_string()`.
///
/// The `DebugKey` type acts as an owner of an underlying `GDebugKey` instance.
/// It provides the methods that can operate on this data type through `DebugKeyProtocol` conformance.
/// Use `DebugKey` as a strong reference or owner of a `GDebugKey` instance.
///
open class DebugKey: DebugKeyProtocol {
        /// Untyped pointer to the underlying `GDebugKey` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DebugKey` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GDebugKey>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DebugKey` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GDebugKey>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DebugKey` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DebugKey` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DebugKey` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GDebugKey>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DebugKey` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GDebugKey>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GDebugKey` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `DebugKey` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GDebugKey>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GDebugKey, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `DebugKeyProtocol`
    /// `GDebugKey` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `DebugKeyProtocol`
    @inlinable public init<T: DebugKeyProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GDebugKey, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GDebugKey`.
    deinit {
        // no reference counting for GDebugKey, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DebugKeyProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DebugKeyProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GDebugKey, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DebugKeyProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DebugKeyProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GDebugKey, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DebugKeyProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DebugKeyProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GDebugKey, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DebugKeyProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DebugKeyProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GDebugKey, cannot ref(_ptr)
    }



}

// MARK: no DebugKey properties

// MARK: no DebugKey signals

// MARK: DebugKey has no signals
// MARK: DebugKey Record: DebugKeyProtocol extension (methods and fields)
public extension DebugKeyProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDebugKey` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GDebugKey>! { return ptr?.assumingMemoryBound(to: GDebugKey.self) }


    /// the string
    @inlinable var key: UnsafePointer<gchar>! {
        /// the string
        get {
            let rv = _ptr.pointee.key
    return rv
        }
        /// the string
         set {
            _ptr.pointee.key = newValue
        }
    }

    /// the flag
    @inlinable var value: guint {
        /// the flag
        get {
            let rv = _ptr.pointee.value
    return rv
        }
        /// the flag
         set {
            _ptr.pointee.value = newValue
        }
    }

}



// MARK: - Dir Record

/// An opaque structure representing an opened directory.
///
/// The `DirProtocol` protocol exposes the methods and properties of an underlying `GDir` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Dir`.
/// Alternatively, use `DirRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DirProtocol {
        /// Untyped pointer to the underlying `GDir` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDir` instance.
    var _ptr: UnsafeMutablePointer<GDir>! { get }

    /// Required Initialiser for types conforming to `DirProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// An opaque structure representing an opened directory.
///
/// The `DirRef` type acts as a lightweight Swift reference to an underlying `GDir` instance.
/// It exposes methods that can operate on this data type through `DirProtocol` conformance.
/// Use `DirRef` only as an `unowned` reference to an existing `GDir` instance.
///
public struct DirRef: DirProtocol {
        /// Untyped pointer to the underlying `GDir` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DirRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDir>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDir>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDir>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDir>?) {
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

    /// Reference intialiser for a related type that implements `DirProtocol`
    @inlinable init<T: DirProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Opens a directory for reading. The names of the files in the
    /// directory can then be retrieved using `g_dir_read_name()`.  Note
    /// that the ordering is not defined.
    @inlinable static func open(path: UnsafePointer<gchar>!, flags: Int) throws -> DirRef! {
            var error: UnsafeMutablePointer<GError>?
        let result = g_dir_open(path, guint(flags), &error)
        if let error = error { throw GLibError(error) }
        let maybeRV = DirRef(gconstpointer: gconstpointer(result))
        
        guard let rv = maybeRV else { return nil }
        return rv
    }
}

/// An opaque structure representing an opened directory.
///
/// The `Dir` type acts as an owner of an underlying `GDir` instance.
/// It provides the methods that can operate on this data type through `DirProtocol` conformance.
/// Use `Dir` as a strong reference or owner of a `GDir` instance.
///
open class Dir: DirProtocol {
        /// Untyped pointer to the underlying `GDir` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Dir` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GDir>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Dir` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GDir>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Dir` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Dir` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Dir` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GDir>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Dir` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GDir>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GDir` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Dir` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GDir>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GDir, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `DirProtocol`
    /// `GDir` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `DirProtocol`
    @inlinable public init<T: DirProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GDir, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GDir`.
    deinit {
        // no reference counting for GDir, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GDir, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GDir, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GDir, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DirProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GDir, cannot ref(_ptr)
    }


    /// Opens a directory for reading. The names of the files in the
    /// directory can then be retrieved using `g_dir_read_name()`.  Note
    /// that the ordering is not defined.
    @inlinable public static func open(path: UnsafePointer<gchar>!, flags: Int) throws -> Dir! {
            var error: UnsafeMutablePointer<GError>?
        let result = g_dir_open(path, guint(flags), &error)
        if let error = error { throw GLibError(error) }
        let maybeRV = Dir(gconstpointer: gconstpointer(result))
        
        guard let rv = maybeRV else { return nil }
        return rv
    }

}

// MARK: no Dir properties

// MARK: no Dir signals

// MARK: Dir has no signals
// MARK: Dir Record: DirProtocol extension (methods and fields)
public extension DirProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDir` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GDir>! { return ptr?.assumingMemoryBound(to: GDir.self) }

    /// Closes the directory and deallocates all related resources.
    @inlinable func close() {
        
        g_dir_close(_ptr)
        
    }

    /// Retrieves the name of another entry in the directory, or `nil`.
    /// The order of entries returned from this function is not defined,
    /// and may vary by file system or other operating-system dependent
    /// factors.
    /// 
    /// `nil` may also be returned in case of errors. On Unix, you can
    /// check `errno` to find out if `nil` was returned because of an error.
    /// 
    /// On Unix, the '.' and '..' entries are omitted, and the returned
    /// name is in the on-disk encoding.
    /// 
    /// On Windows, as is true of all GLib functions which operate on
    /// filenames, the returned name is in UTF-8.
    @inlinable func readName() -> String! {
        let result = g_dir_read_name(_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Resets the given directory. The next call to `g_dir_read_name()`
    /// will return the first entry again.
    @inlinable func rewind() {
        
        g_dir_rewind(_ptr)
        
    }


}



