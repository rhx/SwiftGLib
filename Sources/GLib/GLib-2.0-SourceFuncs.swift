import CGLib

// MARK: - SourceFuncs Record

/// The `SourceFuncsProtocol` protocol exposes the methods and properties of an underlying `GSourceFuncs` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SourceFuncs`.
/// Alternatively, use `SourceFuncsRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GSourceFuncs` struct contains a table of
/// functions used to handle event sources in a generic manner.
/// 
/// For idle sources, the prepare and check functions always return `true`
/// to indicate that the source is always ready to be processed. The prepare
/// function also returns a timeout value of 0 to ensure that the `poll()` call
/// doesn't block (since that would be time wasted which could have been spent
/// running the idle function).
/// 
/// For timeout sources, the prepare and check functions both return `true`
/// if the timeout interval has expired. The prepare function also returns
/// a timeout value to ensure that the `poll()` call doesn't block too long
/// and miss the next timeout.
/// 
/// For file descriptor sources, the prepare function typically returns `false`,
/// since it must wait until `poll()` has been called before it knows whether
/// any events need to be processed. It sets the returned timeout to -1 to
/// indicate that it doesn't mind how long the `poll()` call blocks. In the
/// check function, it tests the results of the `poll()` call to see if the
/// required condition has been met, and returns `true` if so.
public protocol SourceFuncsProtocol {
        /// Untyped pointer to the underlying `GSourceFuncs` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSourceFuncs` instance.
    var _ptr: UnsafeMutablePointer<GSourceFuncs> { get }
}

/// The `SourceFuncsRef` type acts as a lightweight Swift reference to an underlying `GSourceFuncs` instance.
/// It exposes methods that can operate on this data type through `SourceFuncsProtocol` conformance.
/// Use `SourceFuncsRef` only as an `unowned` reference to an existing `GSourceFuncs` instance.
///
/// The `GSourceFuncs` struct contains a table of
/// functions used to handle event sources in a generic manner.
/// 
/// For idle sources, the prepare and check functions always return `true`
/// to indicate that the source is always ready to be processed. The prepare
/// function also returns a timeout value of 0 to ensure that the `poll()` call
/// doesn't block (since that would be time wasted which could have been spent
/// running the idle function).
/// 
/// For timeout sources, the prepare and check functions both return `true`
/// if the timeout interval has expired. The prepare function also returns
/// a timeout value to ensure that the `poll()` call doesn't block too long
/// and miss the next timeout.
/// 
/// For file descriptor sources, the prepare function typically returns `false`,
/// since it must wait until `poll()` has been called before it knows whether
/// any events need to be processed. It sets the returned timeout to -1 to
/// indicate that it doesn't mind how long the `poll()` call blocks. In the
/// check function, it tests the results of the `poll()` call to see if the
/// required condition has been met, and returns `true` if so.
public struct SourceFuncsRef: SourceFuncsProtocol {
        /// Untyped pointer to the underlying `GSourceFuncs` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SourceFuncsRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSourceFuncs>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SourceFuncsProtocol`
    init<T: SourceFuncsProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceFuncsProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceFuncsProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceFuncsProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceFuncsProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceFuncsProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SourceFuncs` type acts as an owner of an underlying `GSourceFuncs` instance.
/// It provides the methods that can operate on this data type through `SourceFuncsProtocol` conformance.
/// Use `SourceFuncs` as a strong reference or owner of a `GSourceFuncs` instance.
///
/// The `GSourceFuncs` struct contains a table of
/// functions used to handle event sources in a generic manner.
/// 
/// For idle sources, the prepare and check functions always return `true`
/// to indicate that the source is always ready to be processed. The prepare
/// function also returns a timeout value of 0 to ensure that the `poll()` call
/// doesn't block (since that would be time wasted which could have been spent
/// running the idle function).
/// 
/// For timeout sources, the prepare and check functions both return `true`
/// if the timeout interval has expired. The prepare function also returns
/// a timeout value to ensure that the `poll()` call doesn't block too long
/// and miss the next timeout.
/// 
/// For file descriptor sources, the prepare function typically returns `false`,
/// since it must wait until `poll()` has been called before it knows whether
/// any events need to be processed. It sets the returned timeout to -1 to
/// indicate that it doesn't mind how long the `poll()` call blocks. In the
/// check function, it tests the results of the `poll()` call to see if the
/// required condition has been met, and returns `true` if so.
open class SourceFuncs: SourceFuncsProtocol {
        /// Untyped pointer to the underlying `GSourceFuncs` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SourceFuncs` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSourceFuncs>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GSourceFuncs` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `SourceFuncs` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSourceFuncs>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GSourceFuncs, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `SourceFuncsProtocol`
    /// `GSourceFuncs` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SourceFuncsProtocol`
    public init<T: SourceFuncsProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GSourceFuncs, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GSourceFuncs`.
    deinit {
        // no reference counting for GSourceFuncs, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceFuncsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceFuncsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GSourceFuncs, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceFuncsProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceFuncsProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GSourceFuncs, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceFuncsProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceFuncsProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GSourceFuncs, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceFuncsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SourceFuncsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GSourceFuncs, cannot ref(cast(_ptr))
    }



}

// MARK: no SourceFuncs properties

// MARK: no SourceFuncs signals


// MARK: SourceFuncs Record: SourceFuncsProtocol extension (methods and fields)
public extension SourceFuncsProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSourceFuncs` instance.
    var _ptr: UnsafeMutablePointer<GSourceFuncs> { return ptr.assumingMemoryBound(to: GSourceFuncs.self) }

    /// Removes a source from the default main loop context given the
    /// source functions and user data. If multiple sources exist with the
    /// same source functions and user data, only one will be destroyed.
    func sourceRemoveByFuncs(userData user_data: UnsafeMutableRawPointer) -> Bool {
        let rv = g_source_remove_by_funcs_user_data(cast(_ptr), cast(user_data))
        return Bool(rv != 0)
    }

    // var prepare is unavailable because prepare is void

    // var check is unavailable because check is void

    // var dispatch is unavailable because dispatch is void

    // var finalize is unavailable because finalize is void

    // var closureCallback is unavailable because closure_callback is private

    // var closureMarshal is unavailable because closure_marshal is private

}



