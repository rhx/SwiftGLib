import CGLib

// MARK: - TestConfig Record

/// The `TestConfigProtocol` protocol exposes the methods and properties of an underlying `GTestConfig` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TestConfig`.
/// Alternatively, use `TestConfigRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TestConfigProtocol {
        /// Untyped pointer to the underlying `GTestConfig` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTestConfig` instance.
    var _ptr: UnsafeMutablePointer<GTestConfig>! { get }

    /// Required Initialiser for types conforming to `TestConfigProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `TestConfigRef` type acts as a lightweight Swift reference to an underlying `GTestConfig` instance.
/// It exposes methods that can operate on this data type through `TestConfigProtocol` conformance.
/// Use `TestConfigRef` only as an `unowned` reference to an existing `GTestConfig` instance.
///

public struct TestConfigRef: TestConfigProtocol {
        /// Untyped pointer to the underlying `GTestConfig` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TestConfigRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTestConfig>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTestConfig>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTestConfig>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTestConfig>?) {
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

    /// Reference intialiser for a related type that implements `TestConfigProtocol`
    @inlinable init<T: TestConfigProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestConfigProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestConfigProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestConfigProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestConfigProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestConfigProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TestConfig` type acts as an owner of an underlying `GTestConfig` instance.
/// It provides the methods that can operate on this data type through `TestConfigProtocol` conformance.
/// Use `TestConfig` as a strong reference or owner of a `GTestConfig` instance.
///

open class TestConfig: TestConfigProtocol {
        /// Untyped pointer to the underlying `GTestConfig` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TestConfig` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTestConfig>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TestConfig` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTestConfig>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TestConfig` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TestConfig` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TestConfig` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTestConfig>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TestConfig` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTestConfig>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTestConfig` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TestConfig` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTestConfig>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTestConfig, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TestConfigProtocol`
    /// `GTestConfig` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TestConfigProtocol`
    @inlinable public init<T: TestConfigProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GTestConfig, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GTestConfig`.
    deinit {
        // no reference counting for GTestConfig, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestConfigProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestConfigProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTestConfig, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestConfigProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestConfigProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTestConfig, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestConfigProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestConfigProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTestConfig, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestConfigProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestConfigProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTestConfig, cannot ref(_ptr)
    }



}

// MARK: no TestConfig properties

// MARK: no TestConfig signals

// MARK: TestConfig has no signals
// MARK: TestConfig Record: TestConfigProtocol extension (methods and fields)
public extension TestConfigProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTestConfig` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTestConfig>! { return ptr?.assumingMemoryBound(to: GTestConfig.self) }


    @inlinable var testInitialized: gboolean {
        get {
            let rv = _ptr.pointee.test_initialized
            return rv
        }
         set {
            _ptr.pointee.test_initialized = newValue
        }
    }

    @inlinable var testQuick: gboolean {
        get {
            let rv = _ptr.pointee.test_quick
            return rv
        }
         set {
            _ptr.pointee.test_quick = newValue
        }
    }

    @inlinable var testPerf: gboolean {
        get {
            let rv = _ptr.pointee.test_perf
            return rv
        }
         set {
            _ptr.pointee.test_perf = newValue
        }
    }

    @inlinable var testVerbose: gboolean {
        get {
            let rv = _ptr.pointee.test_verbose
            return rv
        }
         set {
            _ptr.pointee.test_verbose = newValue
        }
    }

    @inlinable var testQuiet: gboolean {
        get {
            let rv = _ptr.pointee.test_quiet
            return rv
        }
         set {
            _ptr.pointee.test_quiet = newValue
        }
    }

    @inlinable var testUndefined: gboolean {
        get {
            let rv = _ptr.pointee.test_undefined
            return rv
        }
         set {
            _ptr.pointee.test_undefined = newValue
        }
    }

}



// MARK: - TestLogBuffer Record

/// The `TestLogBufferProtocol` protocol exposes the methods and properties of an underlying `GTestLogBuffer` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TestLogBuffer`.
/// Alternatively, use `TestLogBufferRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TestLogBufferProtocol {
        /// Untyped pointer to the underlying `GTestLogBuffer` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTestLogBuffer` instance.
    var _ptr: UnsafeMutablePointer<GTestLogBuffer>! { get }

    /// Required Initialiser for types conforming to `TestLogBufferProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `TestLogBufferRef` type acts as a lightweight Swift reference to an underlying `GTestLogBuffer` instance.
/// It exposes methods that can operate on this data type through `TestLogBufferProtocol` conformance.
/// Use `TestLogBufferRef` only as an `unowned` reference to an existing `GTestLogBuffer` instance.
///

public struct TestLogBufferRef: TestLogBufferProtocol {
        /// Untyped pointer to the underlying `GTestLogBuffer` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TestLogBufferRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTestLogBuffer>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTestLogBuffer>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTestLogBuffer>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTestLogBuffer>?) {
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

    /// Reference intialiser for a related type that implements `TestLogBufferProtocol`
    @inlinable init<T: TestLogBufferProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogBufferProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogBufferProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogBufferProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogBufferProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogBufferProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TestLogBuffer` type acts as an owner of an underlying `GTestLogBuffer` instance.
/// It provides the methods that can operate on this data type through `TestLogBufferProtocol` conformance.
/// Use `TestLogBuffer` as a strong reference or owner of a `GTestLogBuffer` instance.
///

open class TestLogBuffer: TestLogBufferProtocol {
        /// Untyped pointer to the underlying `GTestLogBuffer` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TestLogBuffer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTestLogBuffer>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TestLogBuffer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTestLogBuffer>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TestLogBuffer` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TestLogBuffer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TestLogBuffer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTestLogBuffer>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TestLogBuffer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTestLogBuffer>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTestLogBuffer` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TestLogBuffer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTestLogBuffer>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTestLogBuffer, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TestLogBufferProtocol`
    /// `GTestLogBuffer` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TestLogBufferProtocol`
    @inlinable public init<T: TestLogBufferProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GTestLogBuffer, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GTestLogBuffer`.
    deinit {
        // no reference counting for GTestLogBuffer, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogBufferProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogBufferProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTestLogBuffer, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogBufferProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogBufferProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTestLogBuffer, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogBufferProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogBufferProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTestLogBuffer, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogBufferProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogBufferProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTestLogBuffer, cannot ref(_ptr)
    }



}

// MARK: no TestLogBuffer properties

// MARK: no TestLogBuffer signals

// MARK: TestLogBuffer has no signals
// MARK: TestLogBuffer Record: TestLogBufferProtocol extension (methods and fields)
public extension TestLogBufferProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTestLogBuffer` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTestLogBuffer>! { return ptr?.assumingMemoryBound(to: GTestLogBuffer.self) }

    /// Internal function for gtester to free test log messages, no ABI guarantees provided.
    @inlinable func free() {
        g_test_log_buffer_free(_ptr)
    
    }

    /// Internal function for gtester to retrieve test log messages, no ABI guarantees provided.
    @inlinable func pop() -> TestLogMsgRef! {
        let rv = TestLogMsgRef(gconstpointer: gconstpointer(g_test_log_buffer_pop(_ptr)))
        return rv
    }

    /// Internal function for gtester to decode test log messages, no ABI guarantees provided.
    @inlinable func push(nBytes: Int, bytes: UnsafePointer<guint8>!) {
        g_test_log_buffer_push(_ptr, guint(nBytes), bytes)
    
    }

    // var data is unavailable because data is private

    // var msgs is unavailable because msgs is private

}



// MARK: - TestLogMsg Record

/// The `TestLogMsgProtocol` protocol exposes the methods and properties of an underlying `GTestLogMsg` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TestLogMsg`.
/// Alternatively, use `TestLogMsgRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TestLogMsgProtocol {
        /// Untyped pointer to the underlying `GTestLogMsg` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTestLogMsg` instance.
    var _ptr: UnsafeMutablePointer<GTestLogMsg>! { get }

    /// Required Initialiser for types conforming to `TestLogMsgProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `TestLogMsgRef` type acts as a lightweight Swift reference to an underlying `GTestLogMsg` instance.
/// It exposes methods that can operate on this data type through `TestLogMsgProtocol` conformance.
/// Use `TestLogMsgRef` only as an `unowned` reference to an existing `GTestLogMsg` instance.
///

public struct TestLogMsgRef: TestLogMsgProtocol {
        /// Untyped pointer to the underlying `GTestLogMsg` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TestLogMsgRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTestLogMsg>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTestLogMsg>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTestLogMsg>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTestLogMsg>?) {
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

    /// Reference intialiser for a related type that implements `TestLogMsgProtocol`
    @inlinable init<T: TestLogMsgProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogMsgProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogMsgProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogMsgProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogMsgProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogMsgProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TestLogMsg` type acts as an owner of an underlying `GTestLogMsg` instance.
/// It provides the methods that can operate on this data type through `TestLogMsgProtocol` conformance.
/// Use `TestLogMsg` as a strong reference or owner of a `GTestLogMsg` instance.
///

open class TestLogMsg: TestLogMsgProtocol {
        /// Untyped pointer to the underlying `GTestLogMsg` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TestLogMsg` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTestLogMsg>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TestLogMsg` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTestLogMsg>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TestLogMsg` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TestLogMsg` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TestLogMsg` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTestLogMsg>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TestLogMsg` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTestLogMsg>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTestLogMsg` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TestLogMsg` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTestLogMsg>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTestLogMsg, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TestLogMsgProtocol`
    /// `GTestLogMsg` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TestLogMsgProtocol`
    @inlinable public init<T: TestLogMsgProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GTestLogMsg, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GTestLogMsg`.
    deinit {
        // no reference counting for GTestLogMsg, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogMsgProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogMsgProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTestLogMsg, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogMsgProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogMsgProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTestLogMsg, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogMsgProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogMsgProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTestLogMsg, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogMsgProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestLogMsgProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTestLogMsg, cannot ref(_ptr)
    }



}

// MARK: no TestLogMsg properties

// MARK: no TestLogMsg signals

// MARK: TestLogMsg has no signals
// MARK: TestLogMsg Record: TestLogMsgProtocol extension (methods and fields)
public extension TestLogMsgProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTestLogMsg` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTestLogMsg>! { return ptr?.assumingMemoryBound(to: GTestLogMsg.self) }

    /// Internal function for gtester to free test log messages, no ABI guarantees provided.
    @inlinable func free() {
        g_test_log_msg_free(_ptr)
    
    }

    @inlinable var logType: GTestLogType {
        get {
            let rv = _ptr.pointee.log_type
            return rv
        }
         set {
            _ptr.pointee.log_type = newValue
        }
    }

    @inlinable var nStrings: guint {
        get {
            let rv = _ptr.pointee.n_strings
            return rv
        }
         set {
            _ptr.pointee.n_strings = newValue
        }
    }

    @inlinable var strings: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        get {
            let rv = _ptr.pointee.strings
            return rv
        }
         set {
            _ptr.pointee.strings = newValue
        }
    }

    @inlinable var nNums: guint {
        get {
            let rv = _ptr.pointee.n_nums
            return rv
        }
         set {
            _ptr.pointee.n_nums = newValue
        }
    }

#if !(os(Linux) && arch(arm64))
    @inlinable var nums: UnsafeMutablePointer<CLongDouble>! {
        get {
            let rv = _ptr.pointee.nums
            return rv
        }
         set {
            _ptr.pointee.nums = newValue
        }
    }
#endif

}



// MARK: - TestSuite Record

/// The `TestSuiteProtocol` protocol exposes the methods and properties of an underlying `GTestSuite` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TestSuite`.
/// Alternatively, use `TestSuiteRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// An opaque structure representing a test suite.
public protocol TestSuiteProtocol {
        /// Untyped pointer to the underlying `GTestSuite` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTestSuite` instance.
    var _ptr: UnsafeMutablePointer<GTestSuite>! { get }

    /// Required Initialiser for types conforming to `TestSuiteProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `TestSuiteRef` type acts as a lightweight Swift reference to an underlying `GTestSuite` instance.
/// It exposes methods that can operate on this data type through `TestSuiteProtocol` conformance.
/// Use `TestSuiteRef` only as an `unowned` reference to an existing `GTestSuite` instance.
///
/// An opaque structure representing a test suite.
public struct TestSuiteRef: TestSuiteProtocol {
        /// Untyped pointer to the underlying `GTestSuite` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TestSuiteRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTestSuite>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTestSuite>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTestSuite>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTestSuite>?) {
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

    /// Reference intialiser for a related type that implements `TestSuiteProtocol`
    @inlinable init<T: TestSuiteProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestSuiteProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestSuiteProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestSuiteProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestSuiteProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestSuiteProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TestSuite` type acts as an owner of an underlying `GTestSuite` instance.
/// It provides the methods that can operate on this data type through `TestSuiteProtocol` conformance.
/// Use `TestSuite` as a strong reference or owner of a `GTestSuite` instance.
///
/// An opaque structure representing a test suite.
open class TestSuite: TestSuiteProtocol {
        /// Untyped pointer to the underlying `GTestSuite` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TestSuite` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTestSuite>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TestSuite` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTestSuite>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TestSuite` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TestSuite` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TestSuite` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTestSuite>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TestSuite` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTestSuite>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTestSuite` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TestSuite` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTestSuite>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTestSuite, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TestSuiteProtocol`
    /// `GTestSuite` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TestSuiteProtocol`
    @inlinable public init<T: TestSuiteProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GTestSuite, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GTestSuite`.
    deinit {
        // no reference counting for GTestSuite, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestSuiteProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestSuiteProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTestSuite, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestSuiteProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestSuiteProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTestSuite, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestSuiteProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestSuiteProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTestSuite, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestSuiteProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestSuiteProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTestSuite, cannot ref(_ptr)
    }



}

// MARK: no TestSuite properties

// MARK: no TestSuite signals

// MARK: TestSuite has no signals
// MARK: TestSuite Record: TestSuiteProtocol extension (methods and fields)
public extension TestSuiteProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTestSuite` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTestSuite>! { return ptr?.assumingMemoryBound(to: GTestSuite.self) }

    /// Adds `test_case` to `suite`.
    @inlinable func add<TestCaseT: TestCaseProtocol>(testCase: TestCaseT) {
        g_test_suite_add(_ptr, testCase._ptr)
    
    }

    /// Adds `nestedsuite` to `suite`.
    @inlinable func addSuite<TestSuiteT: TestSuiteProtocol>(nestedsuite: TestSuiteT) {
        g_test_suite_add_suite(_ptr, nestedsuite._ptr)
    
    }

    /// Execute the tests within `suite` and all nested `GTestSuites`.
    /// The test suites to be executed are filtered according to
    /// test path arguments (`-p testpath` and `-s testpath`) as parsed by
    /// `g_test_init()`. See the `g_test_run()` documentation for more
    /// information on the order that tests are run in.
    /// 
    /// `g_test_run_suite()` or `g_test_run()` may only be called once
    /// in a program.
    @inlinable func testRunSuite() -> Int {
        let rv = Int(g_test_run_suite(_ptr))
        return rv
    }


}



// MARK: - Thread Record

/// The `ThreadProtocol` protocol exposes the methods and properties of an underlying `GThread` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Thread`.
/// Alternatively, use `ThreadRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GThread` struct represents a running thread. This struct
/// is returned by `g_thread_new()` or `g_thread_try_new()`. You can
/// obtain the `GThread` struct representing the current thread by
/// calling `g_thread_self()`.
/// 
/// GThread is refcounted, see `g_thread_ref()` and `g_thread_unref()`.
/// The thread represented by it holds a reference while it is running,
/// and `g_thread_join()` consumes the reference that it is given, so
/// it is normally not necessary to manage GThread references
/// explicitly.
/// 
/// The structure is opaque -- none of its fields may be directly
/// accessed.
public protocol ThreadProtocol {
        /// Untyped pointer to the underlying `GThread` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GThread` instance.
    var thread_ptr: UnsafeMutablePointer<GThread>! { get }

    /// Required Initialiser for types conforming to `ThreadProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ThreadRef` type acts as a lightweight Swift reference to an underlying `GThread` instance.
/// It exposes methods that can operate on this data type through `ThreadProtocol` conformance.
/// Use `ThreadRef` only as an `unowned` reference to an existing `GThread` instance.
///
/// The `GThread` struct represents a running thread. This struct
/// is returned by `g_thread_new()` or `g_thread_try_new()`. You can
/// obtain the `GThread` struct representing the current thread by
/// calling `g_thread_self()`.
/// 
/// GThread is refcounted, see `g_thread_ref()` and `g_thread_unref()`.
/// The thread represented by it holds a reference while it is running,
/// and `g_thread_join()` consumes the reference that it is given, so
/// it is normally not necessary to manage GThread references
/// explicitly.
/// 
/// The structure is opaque -- none of its fields may be directly
/// accessed.
public struct ThreadRef: ThreadProtocol {
        /// Untyped pointer to the underlying `GThread` instance.
    /// For type-safe access, use the generated, typed pointer `thread_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ThreadRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GThread>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GThread>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GThread>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GThread>?) {
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

    /// Reference intialiser for a related type that implements `ThreadProtocol`
    @inlinable init<T: ThreadProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// This function creates a new thread. The new thread starts by invoking
    /// `func` with the argument data. The thread will run until `func` returns
    /// or until `g_thread_exit()` is called from the new thread. The return value
    /// of `func` becomes the return value of the thread, which can be obtained
    /// with `g_thread_join()`.
    /// 
    /// The `name` can be useful for discriminating threads in a debugger.
    /// It is not used for other purposes and does not have to be unique.
    /// Some systems restrict the length of `name` to 16 bytes.
    /// 
    /// If the thread can not be created the program aborts. See
    /// `g_thread_try_new()` if you want to attempt to deal with failures.
    /// 
    /// If you are using threads to offload (potentially many) short-lived tasks,
    /// `GThreadPool` may be more appropriate than manually spawning and tracking
    /// multiple `GThreads`.
    /// 
    /// To free the struct returned by this function, use `g_thread_unref()`.
    /// Note that `g_thread_join()` implicitly unrefs the `GThread` as well.
    /// 
    /// New threads by default inherit their scheduler policy (POSIX) or thread
    /// priority (Windows) of the thread creating the new thread.
    /// 
    /// This behaviour changed in GLib 2.64: before threads on Windows were not
    /// inheriting the thread priority but were spawned with the default priority.
    /// Starting with GLib 2.64 the behaviour is now consistent between Windows and
    /// POSIX and all threads inherit their parent thread's priority.
    @inlinable init( name: UnsafePointer<gchar>? = nil, `func`: GThreadFunc?, data: gpointer! = nil) {
        let rv = g_thread_new(name, `func`, data)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// This function is the same as `g_thread_new()` except that
    /// it allows for the possibility of failure.
    /// 
    /// If a thread can not be created (due to resource limits),
    /// `error` is set and `nil` is returned.
    @inlinable init(try_ name: UnsafePointer<gchar>? = nil, `func`: GThreadFunc?, data: gpointer! = nil) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_thread_try_new(name, `func`, data, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// This function is the same as `g_thread_new()` except that
    /// it allows for the possibility of failure.
    /// 
    /// If a thread can not be created (due to resource limits),
    /// `error` is set and `nil` is returned.
    @inlinable static func tryNew(try_ name: UnsafePointer<gchar>? = nil, `func`: GThreadFunc?, data: gpointer! = nil) throws -> ThreadRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = ThreadRef(gconstpointer: gconstpointer(g_thread_try_new(name, `func`, data, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// This function returns the `GThread` corresponding to the
    /// current thread. Note that this function does not increase
    /// the reference count of the returned struct.
    /// 
    /// This function will return a `GThread` even for threads that
    /// were not created by GLib (i.e. those created by other threading
    /// APIs). This may be useful for thread identification purposes
    /// (i.e. comparisons) but you must not use GLib functions (such
    /// as `g_thread_join()`) on these threads.
    @inlinable static func self_() -> ThreadRef! {
        guard let rv = ThreadRef(gconstpointer: gconstpointer(g_thread_self())) else { return nil }
        return rv
    }
}

/// The `Thread` type acts as a reference-counted owner of an underlying `GThread` instance.
/// It provides the methods that can operate on this data type through `ThreadProtocol` conformance.
/// Use `Thread` as a strong reference or owner of a `GThread` instance.
///
/// The `GThread` struct represents a running thread. This struct
/// is returned by `g_thread_new()` or `g_thread_try_new()`. You can
/// obtain the `GThread` struct representing the current thread by
/// calling `g_thread_self()`.
/// 
/// GThread is refcounted, see `g_thread_ref()` and `g_thread_unref()`.
/// The thread represented by it holds a reference while it is running,
/// and `g_thread_join()` consumes the reference that it is given, so
/// it is normally not necessary to manage GThread references
/// explicitly.
/// 
/// The structure is opaque -- none of its fields may be directly
/// accessed.
open class Thread: ThreadProtocol {
        /// Untyped pointer to the underlying `GThread` instance.
    /// For type-safe access, use the generated, typed pointer `thread_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Thread` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GThread>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Thread` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GThread>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Thread` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Thread` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Thread` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GThread>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Thread` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GThread>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GThread`.
    /// i.e., ownership is transferred to the `Thread` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GThread>) {
        ptr = UnsafeMutableRawPointer(op)
        g_thread_ref(ptr.assumingMemoryBound(to: GThread.self))
    }

    /// Reference intialiser for a related type that implements `ThreadProtocol`
    /// Will retain `GThread`.
    /// - Parameter other: an instance of a related type that implements `ThreadProtocol`
    @inlinable public init<T: ThreadProtocol>(_ other: T) {
        ptr = other.ptr
        g_thread_ref(ptr.assumingMemoryBound(to: GThread.self))
    }

    /// Releases the underlying `GThread` instance using `g_thread_unref`.
    deinit {
        g_thread_unref(ptr.assumingMemoryBound(to: GThread.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_thread_ref(ptr.assumingMemoryBound(to: GThread.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_thread_ref(ptr.assumingMemoryBound(to: GThread.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_thread_ref(ptr.assumingMemoryBound(to: GThread.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_thread_ref(ptr.assumingMemoryBound(to: GThread.self))
    }

    /// This function creates a new thread. The new thread starts by invoking
    /// `func` with the argument data. The thread will run until `func` returns
    /// or until `g_thread_exit()` is called from the new thread. The return value
    /// of `func` becomes the return value of the thread, which can be obtained
    /// with `g_thread_join()`.
    /// 
    /// The `name` can be useful for discriminating threads in a debugger.
    /// It is not used for other purposes and does not have to be unique.
    /// Some systems restrict the length of `name` to 16 bytes.
    /// 
    /// If the thread can not be created the program aborts. See
    /// `g_thread_try_new()` if you want to attempt to deal with failures.
    /// 
    /// If you are using threads to offload (potentially many) short-lived tasks,
    /// `GThreadPool` may be more appropriate than manually spawning and tracking
    /// multiple `GThreads`.
    /// 
    /// To free the struct returned by this function, use `g_thread_unref()`.
    /// Note that `g_thread_join()` implicitly unrefs the `GThread` as well.
    /// 
    /// New threads by default inherit their scheduler policy (POSIX) or thread
    /// priority (Windows) of the thread creating the new thread.
    /// 
    /// This behaviour changed in GLib 2.64: before threads on Windows were not
    /// inheriting the thread priority but were spawned with the default priority.
    /// Starting with GLib 2.64 the behaviour is now consistent between Windows and
    /// POSIX and all threads inherit their parent thread's priority.
    @inlinable public init( name: UnsafePointer<gchar>? = nil, `func`: GThreadFunc?, data: gpointer! = nil) {
        let rv = g_thread_new(name, `func`, data)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// This function is the same as `g_thread_new()` except that
    /// it allows for the possibility of failure.
    /// 
    /// If a thread can not be created (due to resource limits),
    /// `error` is set and `nil` is returned.
    @inlinable public init(try_ name: UnsafePointer<gchar>? = nil, `func`: GThreadFunc?, data: gpointer! = nil) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_thread_try_new(name, `func`, data, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// This function is the same as `g_thread_new()` except that
    /// it allows for the possibility of failure.
    /// 
    /// If a thread can not be created (due to resource limits),
    /// `error` is set and `nil` is returned.
    @inlinable public static func tryNew(try_ name: UnsafePointer<gchar>? = nil, `func`: GThreadFunc?, data: gpointer! = nil) throws -> Thread! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = Thread(gconstpointer: gconstpointer(g_thread_try_new(name, `func`, data, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// This function returns the `GThread` corresponding to the
    /// current thread. Note that this function does not increase
    /// the reference count of the returned struct.
    /// 
    /// This function will return a `GThread` even for threads that
    /// were not created by GLib (i.e. those created by other threading
    /// APIs). This may be useful for thread identification purposes
    /// (i.e. comparisons) but you must not use GLib functions (such
    /// as `g_thread_join()`) on these threads.
    @inlinable public static func self_() -> Thread! {
        guard let rv = Thread(gconstpointer: gconstpointer(g_thread_self())) else { return nil }
        return rv
    }

}

// MARK: no Thread properties

// MARK: no Thread signals

// MARK: Thread has no signals
// MARK: Thread Record: ThreadProtocol extension (methods and fields)
public extension ThreadProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GThread` instance.
    @inlinable var thread_ptr: UnsafeMutablePointer<GThread>! { return ptr?.assumingMemoryBound(to: GThread.self) }

    /// Waits until `thread` finishes, i.e. the function `func`, as
    /// given to `g_thread_new()`, returns or `g_thread_exit()` is called.
    /// If `thread` has already terminated, then `g_thread_join()`
    /// returns immediately.
    /// 
    /// Any thread can wait for any other thread by calling `g_thread_join()`,
    /// not just its 'creator'. Calling `g_thread_join()` from multiple threads
    /// for the same `thread` leads to undefined behaviour.
    /// 
    /// The value returned by `func` or given to `g_thread_exit()` is
    /// returned by this function.
    /// 
    /// `g_thread_join()` consumes the reference to the passed-in `thread`.
    /// This will usually cause the `GThread` struct and associated resources
    /// to be freed. Use `g_thread_ref()` to obtain an extra reference if you
    /// want to keep the GThread alive beyond the `g_thread_join()` call.
    @inlinable func join() -> gpointer! {
        let rv = g_thread_join(thread_ptr)
        return rv
    }

    /// Increase the reference count on `thread`.
    @discardableResult @inlinable func ref() -> ThreadRef! {
        guard let rv = ThreadRef(gconstpointer: gconstpointer(g_thread_ref(thread_ptr))) else { return nil }
        return rv
    }

    /// Decrease the reference count on `thread`, possibly freeing all
    /// resources associated with it.
    /// 
    /// Note that each thread holds a reference to its `GThread` while
    /// it is running, so it is safe to drop your own reference to it
    /// if you don't need it anymore.
    @inlinable func unref() {
        g_thread_unref(thread_ptr)
    
    }


}



// MARK: - ThreadPool Record

/// The `ThreadPoolProtocol` protocol exposes the methods and properties of an underlying `GThreadPool` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ThreadPool`.
/// Alternatively, use `ThreadPoolRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GThreadPool` struct represents a thread pool. It has three
/// public read-only members, but the underlying struct is bigger,
/// so you must not copy this struct.
public protocol ThreadPoolProtocol {
        /// Untyped pointer to the underlying `GThreadPool` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GThreadPool` instance.
    var _ptr: UnsafeMutablePointer<GThreadPool>! { get }

    /// Required Initialiser for types conforming to `ThreadPoolProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ThreadPoolRef` type acts as a lightweight Swift reference to an underlying `GThreadPool` instance.
/// It exposes methods that can operate on this data type through `ThreadPoolProtocol` conformance.
/// Use `ThreadPoolRef` only as an `unowned` reference to an existing `GThreadPool` instance.
///
/// The `GThreadPool` struct represents a thread pool. It has three
/// public read-only members, but the underlying struct is bigger,
/// so you must not copy this struct.
public struct ThreadPoolRef: ThreadPoolProtocol {
        /// Untyped pointer to the underlying `GThreadPool` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ThreadPoolRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GThreadPool>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GThreadPool>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GThreadPool>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GThreadPool>?) {
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

    /// Reference intialiser for a related type that implements `ThreadPoolProtocol`
    @inlinable init<T: ThreadPoolProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadPoolProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadPoolProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadPoolProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadPoolProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadPoolProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ThreadPool` type acts as an owner of an underlying `GThreadPool` instance.
/// It provides the methods that can operate on this data type through `ThreadPoolProtocol` conformance.
/// Use `ThreadPool` as a strong reference or owner of a `GThreadPool` instance.
///
/// The `GThreadPool` struct represents a thread pool. It has three
/// public read-only members, but the underlying struct is bigger,
/// so you must not copy this struct.
open class ThreadPool: ThreadPoolProtocol {
        /// Untyped pointer to the underlying `GThreadPool` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThreadPool` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GThreadPool>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThreadPool` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GThreadPool>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThreadPool` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThreadPool` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThreadPool` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GThreadPool>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThreadPool` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GThreadPool>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GThreadPool` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ThreadPool` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GThreadPool>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GThreadPool, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `ThreadPoolProtocol`
    /// `GThreadPool` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ThreadPoolProtocol`
    @inlinable public init<T: ThreadPoolProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GThreadPool, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GThreadPool`.
    deinit {
        // no reference counting for GThreadPool, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadPoolProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadPoolProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GThreadPool, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadPoolProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadPoolProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GThreadPool, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadPoolProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadPoolProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GThreadPool, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadPoolProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadPoolProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GThreadPool, cannot ref(_ptr)
    }



}

// MARK: no ThreadPool properties

// MARK: no ThreadPool signals

// MARK: ThreadPool has no signals
// MARK: ThreadPool Record: ThreadPoolProtocol extension (methods and fields)
public extension ThreadPoolProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GThreadPool` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GThreadPool>! { return ptr?.assumingMemoryBound(to: GThreadPool.self) }

    /// Frees all resources allocated for `pool`.
    /// 
    /// If `immediate` is `true`, no new task is processed for `pool`.
    /// Otherwise `pool` is not freed before the last task is processed.
    /// Note however, that no thread of this pool is interrupted while
    /// processing a task. Instead at least all still running threads
    /// can finish their tasks before the `pool` is freed.
    /// 
    /// If `wait_` is `true`, this function does not return before all
    /// tasks to be processed (dependent on `immediate`, whether all
    /// or only the currently running) are ready.
    /// Otherwise this function returns immediately.
    /// 
    /// After calling this function `pool` must not be used anymore.
    @inlinable func free(immediate: Bool, wait_: Bool) {
        g_thread_pool_free(_ptr, gboolean((immediate) ? 1 : 0), gboolean((wait_) ? 1 : 0))
    
    }

    /// Returns the maximal number of threads for `pool`.
    @inlinable func getMaxThreads() -> Int {
        let rv = Int(g_thread_pool_get_max_threads(_ptr))
        return rv
    }

    /// Returns the number of threads currently running in `pool`.
    @inlinable func getNumThreads() -> Int {
        let rv = Int(g_thread_pool_get_num_threads(_ptr))
        return rv
    }

    /// Moves the item to the front of the queue of unprocessed
    /// items, so that it will be processed next.
    @inlinable func moveToFront(data: gpointer! = nil) -> Bool {
        let rv = ((g_thread_pool_move_to_front(_ptr, data)) != 0)
        return rv
    }

    /// Inserts `data` into the list of tasks to be executed by `pool`.
    /// 
    /// When the number of currently running threads is lower than the
    /// maximal allowed number of threads, a new thread is started (or
    /// reused) with the properties given to `g_thread_pool_new()`.
    /// Otherwise, `data` stays in the queue until a thread in this pool
    /// finishes its previous task and processes `data`.
    /// 
    /// `error` can be `nil` to ignore errors, or non-`nil` to report
    /// errors. An error can only occur when a new thread couldn't be
    /// created. In that case `data` is simply appended to the queue of
    /// work to do.
    /// 
    /// Before version 2.32, this function did not return a success status.
    @inlinable func push(data: gpointer! = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_thread_pool_push(_ptr, data, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Sets the maximal allowed number of threads for `pool`.
    /// A value of -1 means that the maximal number of threads
    /// is unlimited. If `pool` is an exclusive thread pool, setting
    /// the maximal number of threads to -1 is not allowed.
    /// 
    /// Setting `max_threads` to 0 means stopping all work for `pool`.
    /// It is effectively frozen until `max_threads` is set to a non-zero
    /// value again.
    /// 
    /// A thread is never terminated while calling `func`, as supplied by
    /// `g_thread_pool_new()`. Instead the maximal number of threads only
    /// has effect for the allocation of new threads in `g_thread_pool_push()`.
    /// A new thread is allocated, whenever the number of currently
    /// running threads in `pool` is smaller than the maximal number.
    /// 
    /// `error` can be `nil` to ignore errors, or non-`nil` to report
    /// errors. An error can only occur when a new thread couldn't be
    /// created.
    /// 
    /// Before version 2.32, this function did not return a success status.
    @inlinable func set(maxThreads: Int) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_thread_pool_set_max_threads(_ptr, gint(maxThreads), &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Sets the function used to sort the list of tasks. This allows the
    /// tasks to be processed by a priority determined by `func`, and not
    /// just in the order in which they were added to the pool.
    /// 
    /// Note, if the maximum number of threads is more than 1, the order
    /// that threads are executed cannot be guaranteed 100%. Threads are
    /// scheduled by the operating system and are executed at random. It
    /// cannot be assumed that threads are executed in the order they are
    /// created.
    @inlinable func setSortFunction(`func`: GCompareDataFunc?, userData: gpointer! = nil) {
        g_thread_pool_set_sort_function(_ptr, `func`, userData)
    
    }

    /// Returns the number of tasks still unprocessed in `pool`.
    @inlinable func unprocessed() -> Int {
        let rv = Int(g_thread_pool_unprocessed(_ptr))
        return rv
    }
    /// Returns the maximal number of threads for `pool`.
    @inlinable var maxThreads: Int {
        /// Returns the maximal number of threads for `pool`.
        get {
            let rv = Int(g_thread_pool_get_max_threads(_ptr))
            return rv
        }
        /// Sets the maximal allowed number of threads for `pool`.
        /// A value of -1 means that the maximal number of threads
        /// is unlimited. If `pool` is an exclusive thread pool, setting
        /// the maximal number of threads to -1 is not allowed.
        /// 
        /// Setting `max_threads` to 0 means stopping all work for `pool`.
        /// It is effectively frozen until `max_threads` is set to a non-zero
        /// value again.
        /// 
        /// A thread is never terminated while calling `func`, as supplied by
        /// `g_thread_pool_new()`. Instead the maximal number of threads only
        /// has effect for the allocation of new threads in `g_thread_pool_push()`.
        /// A new thread is allocated, whenever the number of currently
        /// running threads in `pool` is smaller than the maximal number.
        /// 
        /// `error` can be `nil` to ignore errors, or non-`nil` to report
        /// errors. An error can only occur when a new thread couldn't be
        /// created.
        /// 
        /// Before version 2.32, this function did not return a success status.
        nonmutating set {
            var error: UnsafeMutablePointer<GError>?
            _ = g_thread_pool_set_max_threads(_ptr, gint(newValue), &error)
            g_log(messagePtr: error?.pointee.message, level: .error)
        }
    }

    /// Returns the number of threads currently running in `pool`.
    @inlinable var numThreads: Int {
        /// Returns the number of threads currently running in `pool`.
        get {
            let rv = Int(g_thread_pool_get_num_threads(_ptr))
            return rv
        }
    }

    /// the function to execute in the threads of this pool
    @inlinable var `func`: GFunc! {
        /// the function to execute in the threads of this pool
        get {
            let rv = _ptr.pointee.func
            return rv
        }
        /// the function to execute in the threads of this pool
         set {
            _ptr.pointee.func = newValue
        }
    }

    /// the user data for the threads of this pool
    @inlinable var userData: gpointer! {
        /// the user data for the threads of this pool
        get {
            let rv = _ptr.pointee.user_data
            return rv
        }
        /// the user data for the threads of this pool
         set {
            _ptr.pointee.user_data = newValue
        }
    }

    /// are all threads exclusive to this pool
    @inlinable var exclusive: gboolean {
        /// are all threads exclusive to this pool
        get {
            let rv = _ptr.pointee.exclusive
            return rv
        }
        /// are all threads exclusive to this pool
         set {
            _ptr.pointee.exclusive = newValue
        }
    }

}



// MARK: - TimeVal Record

/// The `TimeValProtocol` protocol exposes the methods and properties of an underlying `GTimeVal` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TimeVal`.
/// Alternatively, use `TimeValRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Represents a precise time, with seconds and microseconds.
/// Similar to the struct timeval returned by the `gettimeofday()`
/// UNIX system call.
/// 
/// GLib is attempting to unify around the use of 64-bit integers to
/// represent microsecond-precision time. As such, this type will be
/// removed from a future version of GLib. A consequence of using `glong` for
/// `tv_sec` is that on 32-bit systems `GTimeVal` is subject to the year 2038
/// problem.
public protocol TimeValProtocol {
        /// Untyped pointer to the underlying `GTimeVal` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTimeVal` instance.
    var _ptr: UnsafeMutablePointer<GTimeVal>! { get }

    /// Required Initialiser for types conforming to `TimeValProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `TimeValRef` type acts as a lightweight Swift reference to an underlying `GTimeVal` instance.
/// It exposes methods that can operate on this data type through `TimeValProtocol` conformance.
/// Use `TimeValRef` only as an `unowned` reference to an existing `GTimeVal` instance.
///
/// Represents a precise time, with seconds and microseconds.
/// Similar to the struct timeval returned by the `gettimeofday()`
/// UNIX system call.
/// 
/// GLib is attempting to unify around the use of 64-bit integers to
/// represent microsecond-precision time. As such, this type will be
/// removed from a future version of GLib. A consequence of using `glong` for
/// `tv_sec` is that on 32-bit systems `GTimeVal` is subject to the year 2038
/// problem.
public struct TimeValRef: TimeValProtocol {
        /// Untyped pointer to the underlying `GTimeVal` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TimeValRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTimeVal>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTimeVal>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTimeVal>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTimeVal>?) {
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

    /// Reference intialiser for a related type that implements `TimeValProtocol`
    @inlinable init<T: TimeValProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeValProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeValProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeValProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeValProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeValProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TimeVal` type acts as an owner of an underlying `GTimeVal` instance.
/// It provides the methods that can operate on this data type through `TimeValProtocol` conformance.
/// Use `TimeVal` as a strong reference or owner of a `GTimeVal` instance.
///
/// Represents a precise time, with seconds and microseconds.
/// Similar to the struct timeval returned by the `gettimeofday()`
/// UNIX system call.
/// 
/// GLib is attempting to unify around the use of 64-bit integers to
/// represent microsecond-precision time. As such, this type will be
/// removed from a future version of GLib. A consequence of using `glong` for
/// `tv_sec` is that on 32-bit systems `GTimeVal` is subject to the year 2038
/// problem.
open class TimeVal: TimeValProtocol {
        /// Untyped pointer to the underlying `GTimeVal` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TimeVal` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTimeVal>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TimeVal` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTimeVal>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TimeVal` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TimeVal` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TimeVal` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTimeVal>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TimeVal` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTimeVal>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTimeVal` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TimeVal` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTimeVal>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTimeVal, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TimeValProtocol`
    /// `GTimeVal` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TimeValProtocol`
    @inlinable public init<T: TimeValProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GTimeVal, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GTimeVal`.
    deinit {
        // no reference counting for GTimeVal, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeValProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeValProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTimeVal, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeValProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeValProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTimeVal, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeValProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeValProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTimeVal, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeValProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeValProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTimeVal, cannot ref(_ptr)
    }



}

// MARK: no TimeVal properties

// MARK: no TimeVal signals

// MARK: TimeVal has no signals
// MARK: TimeVal Record: TimeValProtocol extension (methods and fields)
public extension TimeValProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTimeVal` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTimeVal>! { return ptr?.assumingMemoryBound(to: GTimeVal.self) }

    /// Adds the given number of microseconds to `time_`. `microseconds` can
    /// also be negative to decrease the value of `time_`.
    ///
    /// **add is deprecated:**
    /// #GTimeVal is not year-2038-safe. Use `guint64` for
    ///    representing microseconds since the epoch, or use #GDateTime.
    @available(*, deprecated) @inlinable func add(microseconds: Int) {
        g_time_val_add(_ptr, glong(microseconds))
    
    }

    /// Converts `time_` into an RFC 3339 encoded string, relative to the
    /// Coordinated Universal Time (UTC). This is one of the many formats
    /// allowed by ISO 8601.
    /// 
    /// ISO 8601 allows a large number of date/time formats, with or without
    /// punctuation and optional elements. The format returned by this function
    /// is a complete date and time, with optional punctuation included, the
    /// UTC time zone represented as "Z", and the `tv_usec` part included if
    /// and only if it is nonzero, i.e. either
    /// "YYYY-MM-DDTHH:MM:SSZ" or "YYYY-MM-DDTHH:MM:SS.fffffZ".
    /// 
    /// This corresponds to the Internet date/time format defined by
    /// [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt),
    /// and to either of the two most-precise formats defined by
    /// the W3C Note
    /// [Date and Time Formats](http://www.w3.org/TR/NOTE-datetime-19980827).
    /// Both of these documents are profiles of ISO 8601.
    /// 
    /// Use `g_date_time_format()` or `g_strdup_printf()` if a different
    /// variation of ISO 8601 format is required.
    /// 
    /// If `time_` represents a date which is too large to fit into a `struct tm`,
    /// `nil` will be returned. This is platform dependent. Note also that since
    /// `GTimeVal` stores the number of seconds as a `glong`, on 32-bit systems it
    /// is subject to the year 2038 problem. Accordingly, since GLib 2.62, this
    /// function has been deprecated. Equivalent functionality is available using:
    /// ```
    /// GDateTime *dt = g_date_time_new_from_unix_utc (time_val);
    /// iso8601_string = g_date_time_format_iso8601 (dt);
    /// g_date_time_unref (dt);
    /// ```
    /// 
    /// The return value of `g_time_val_to_iso8601()` has been nullable since GLib
    /// 2.54; before then, GLib would crash under the same conditions.
    ///
    /// **to_iso8601 is deprecated:**
    /// #GTimeVal is not year-2038-safe. Use
    ///    g_date_time_format_iso8601(dt) instead.
    @available(*, deprecated) @inlinable func toIso8601() -> String! {
        let rv = g_time_val_to_iso8601(_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Converts a string containing an ISO 8601 encoded date and time
    /// to a `GTimeVal` and puts it into `time_`.
    /// 
    /// `iso_date` must include year, month, day, hours, minutes, and
    /// seconds. It can optionally include fractions of a second and a time
    /// zone indicator. (In the absence of any time zone indication, the
    /// timestamp is assumed to be in local time.)
    /// 
    /// Any leading or trailing space in `iso_date` is ignored.
    /// 
    /// This function was deprecated, along with `GTimeVal` itself, in GLib 2.62.
    /// Equivalent functionality is available using code like:
    /// ```
    /// GDateTime *dt = g_date_time_new_from_iso8601 (iso8601_string, NULL);
    /// gint64 time_val = g_date_time_to_unix (dt);
    /// g_date_time_unref (dt);
    /// ```
    /// 
    ///
    /// **from_iso8601 is deprecated:**
    /// #GTimeVal is not year-2038-safe. Use
    ///    g_date_time_new_from_iso8601() instead.
    @available(*, deprecated) @inlinable func fromIso8601(isoDate: UnsafePointer<gchar>!) -> Bool {
        let rv = ((g_time_val_from_iso8601(isoDate, _ptr)) != 0)
        return rv
    }

    /// Equivalent to the UNIX `gettimeofday()` function, but portable.
    /// 
    /// You may find `g_get_real_time()` to be more convenient.
    ///
    /// **get_current_time is deprecated:**
    /// #GTimeVal is not year-2038-safe. Use g_get_real_time()
    ///    instead.
    @available(*, deprecated) @inlinable func getCurrentTime() {
        g_get_current_time(_ptr)
    
    }

    /// Converts a string containing an ISO 8601 encoded date and time
    /// to a `GTimeVal` and puts it into `time_`.
    /// 
    /// `iso_date` must include year, month, day, hours, minutes, and
    /// seconds. It can optionally include fractions of a second and a time
    /// zone indicator. (In the absence of any time zone indication, the
    /// timestamp is assumed to be in local time.)
    /// 
    /// Any leading or trailing space in `iso_date` is ignored.
    /// 
    /// This function was deprecated, along with `GTimeVal` itself, in GLib 2.62.
    /// Equivalent functionality is available using code like:
    /// ```
    /// GDateTime *dt = g_date_time_new_from_iso8601 (iso8601_string, NULL);
    /// gint64 time_val = g_date_time_to_unix (dt);
    /// g_date_time_unref (dt);
    /// ```
    /// 
    ///
    /// **time_val_from_iso8601 is deprecated:**
    /// #GTimeVal is not year-2038-safe. Use
    ///    g_date_time_new_from_iso8601() instead.
    @available(*, deprecated) @inlinable func timeValFromIso8601(isoDate: UnsafePointer<gchar>!) -> Bool {
        let rv = ((g_time_val_from_iso8601(isoDate, _ptr)) != 0)
        return rv
    }
    // var currentTime is unavailable because it does not have a valid getter or setter

    /// seconds
    @inlinable var tvSec: glong {
        /// seconds
        get {
            let rv = _ptr.pointee.tv_sec
            return rv
        }
        /// seconds
         set {
            _ptr.pointee.tv_sec = newValue
        }
    }

    /// microseconds
    @inlinable var tvUsec: glong {
        /// microseconds
        get {
            let rv = _ptr.pointee.tv_usec
            return rv
        }
        /// microseconds
         set {
            _ptr.pointee.tv_usec = newValue
        }
    }

}



// MARK: - TimeZone Record

/// The `TimeZoneProtocol` protocol exposes the methods and properties of an underlying `GTimeZone` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TimeZone`.
/// Alternatively, use `TimeZoneRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GTimeZone` is an opaque structure whose members cannot be accessed
/// directly.
public protocol TimeZoneProtocol {
        /// Untyped pointer to the underlying `GTimeZone` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTimeZone` instance.
    var time_zone_ptr: UnsafeMutablePointer<GTimeZone>! { get }

    /// Required Initialiser for types conforming to `TimeZoneProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `TimeZoneRef` type acts as a lightweight Swift reference to an underlying `GTimeZone` instance.
/// It exposes methods that can operate on this data type through `TimeZoneProtocol` conformance.
/// Use `TimeZoneRef` only as an `unowned` reference to an existing `GTimeZone` instance.
///
/// `GTimeZone` is an opaque structure whose members cannot be accessed
/// directly.
public struct TimeZoneRef: TimeZoneProtocol {
        /// Untyped pointer to the underlying `GTimeZone` instance.
    /// For type-safe access, use the generated, typed pointer `time_zone_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TimeZoneRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTimeZone>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTimeZone>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTimeZone>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTimeZone>?) {
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

    /// Reference intialiser for a related type that implements `TimeZoneProtocol`
    @inlinable init<T: TimeZoneProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeZoneProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeZoneProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeZoneProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeZoneProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeZoneProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// A version of `g_time_zone_new_identifier()` which returns the UTC time zone
    /// if `identifier` could not be parsed or loaded.
    /// 
    /// If you need to check whether `identifier` was loaded successfully, use
    /// `g_time_zone_new_identifier()`.
    ///
    /// **new is deprecated:**
    /// Use g_time_zone_new_identifier() instead, as it provides
    ///     error reporting. Change your code to handle a potentially %NULL return
    ///     value.
    @available(*, deprecated) @inlinable init(identifierOrUtc identifier: UnsafePointer<gchar>? = nil) {
        let rv = g_time_zone_new(identifier)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GTimeZone` corresponding to the given constant offset from UTC,
    /// in seconds.
    /// 
    /// This is equivalent to calling `g_time_zone_new()` with a string in the form
    /// `[+|-]hh[:mm[:ss]]`.
    @inlinable init(offset seconds: gint32) {
        let rv = g_time_zone_new_offset(seconds)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a `GTimeZone` corresponding to local time.  The local time
    /// zone may change between invocations to this function; for example,
    /// if the system administrator changes it.
    /// 
    /// This is equivalent to calling `g_time_zone_new()` with the value of
    /// the `TZ` environment variable (including the possibility of `nil`).
    /// 
    /// You should release the return value by calling `g_time_zone_unref()`
    /// when you are done with it.
    @inlinable static func newLocal() -> TimeZoneRef! {
        guard let rv = TimeZoneRef(gconstpointer: gconstpointer(g_time_zone_new_local())) else { return nil }
        return rv
    }

    /// Creates a `GTimeZone` corresponding to the given constant offset from UTC,
    /// in seconds.
    /// 
    /// This is equivalent to calling `g_time_zone_new()` with a string in the form
    /// `[+|-]hh[:mm[:ss]]`.
    @inlinable static func new(offset seconds: gint32) -> TimeZoneRef! {
        guard let rv = TimeZoneRef(gconstpointer: gconstpointer(g_time_zone_new_offset(seconds))) else { return nil }
        return rv
    }

    /// Creates a `GTimeZone` corresponding to UTC.
    /// 
    /// This is equivalent to calling `g_time_zone_new()` with a value like
    /// "Z", "UTC", "+00", etc.
    /// 
    /// You should release the return value by calling `g_time_zone_unref()`
    /// when you are done with it.
    @inlinable static func newUTC() -> TimeZoneRef! {
        guard let rv = TimeZoneRef(gconstpointer: gconstpointer(g_time_zone_new_utc())) else { return nil }
        return rv
    }
}

/// The `TimeZone` type acts as a reference-counted owner of an underlying `GTimeZone` instance.
/// It provides the methods that can operate on this data type through `TimeZoneProtocol` conformance.
/// Use `TimeZone` as a strong reference or owner of a `GTimeZone` instance.
///
/// `GTimeZone` is an opaque structure whose members cannot be accessed
/// directly.
open class TimeZone: TimeZoneProtocol {
        /// Untyped pointer to the underlying `GTimeZone` instance.
    /// For type-safe access, use the generated, typed pointer `time_zone_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TimeZone` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTimeZone>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TimeZone` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTimeZone>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TimeZone` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TimeZone` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TimeZone` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTimeZone>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TimeZone` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTimeZone>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GTimeZone`.
    /// i.e., ownership is transferred to the `TimeZone` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTimeZone>) {
        ptr = UnsafeMutableRawPointer(op)
        g_time_zone_ref(ptr.assumingMemoryBound(to: GTimeZone.self))
    }

    /// Reference intialiser for a related type that implements `TimeZoneProtocol`
    /// Will retain `GTimeZone`.
    /// - Parameter other: an instance of a related type that implements `TimeZoneProtocol`
    @inlinable public init<T: TimeZoneProtocol>(_ other: T) {
        ptr = other.ptr
        g_time_zone_ref(ptr.assumingMemoryBound(to: GTimeZone.self))
    }

    /// Releases the underlying `GTimeZone` instance using `g_time_zone_unref`.
    deinit {
        g_time_zone_unref(ptr.assumingMemoryBound(to: GTimeZone.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeZoneProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeZoneProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_time_zone_ref(ptr.assumingMemoryBound(to: GTimeZone.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeZoneProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeZoneProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_time_zone_ref(ptr.assumingMemoryBound(to: GTimeZone.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeZoneProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeZoneProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_time_zone_ref(ptr.assumingMemoryBound(to: GTimeZone.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeZoneProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimeZoneProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_time_zone_ref(ptr.assumingMemoryBound(to: GTimeZone.self))
    }

    /// A version of `g_time_zone_new_identifier()` which returns the UTC time zone
    /// if `identifier` could not be parsed or loaded.
    /// 
    /// If you need to check whether `identifier` was loaded successfully, use
    /// `g_time_zone_new_identifier()`.
    ///
    /// **new is deprecated:**
    /// Use g_time_zone_new_identifier() instead, as it provides
    ///     error reporting. Change your code to handle a potentially %NULL return
    ///     value.
    @available(*, deprecated) @inlinable public init(identiferOrUtc identifier: UnsafePointer<gchar>? = nil) {
        let rv = g_time_zone_new(identifier)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GTimeZone` corresponding to the given constant offset from UTC,
    /// in seconds.
    /// 
    /// This is equivalent to calling `g_time_zone_new()` with a string in the form
    /// `[+|-]hh[:mm[:ss]]`.
    @inlinable public init(offset seconds: gint32) {
        let rv = g_time_zone_new_offset(seconds)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GTimeZone` corresponding to local time.  The local time
    /// zone may change between invocations to this function; for example,
    /// if the system administrator changes it.
    /// 
    /// This is equivalent to calling `g_time_zone_new()` with the value of
    /// the `TZ` environment variable (including the possibility of `nil`).
    /// 
    /// You should release the return value by calling `g_time_zone_unref()`
    /// when you are done with it.
    @inlinable public static func newLocal() -> TimeZone! {
        guard let rv = TimeZone(gconstpointer: gconstpointer(g_time_zone_new_local())) else { return nil }
        return rv
    }

    /// Creates a `GTimeZone` corresponding to the given constant offset from UTC,
    /// in seconds.
    /// 
    /// This is equivalent to calling `g_time_zone_new()` with a string in the form
    /// `[+|-]hh[:mm[:ss]]`.
    @inlinable public static func new(offset seconds: gint32) -> TimeZone! {
        guard let rv = TimeZone(gconstpointer: gconstpointer(g_time_zone_new_offset(seconds))) else { return nil }
        return rv
    }

    /// Creates a `GTimeZone` corresponding to UTC.
    /// 
    /// This is equivalent to calling `g_time_zone_new()` with a value like
    /// "Z", "UTC", "+00", etc.
    /// 
    /// You should release the return value by calling `g_time_zone_unref()`
    /// when you are done with it.
    @inlinable public static func newUTC() -> TimeZone! {
        guard let rv = TimeZone(gconstpointer: gconstpointer(g_time_zone_new_utc())) else { return nil }
        return rv
    }

}

// MARK: no TimeZone properties

// MARK: no TimeZone signals

// MARK: TimeZone has no signals
// MARK: TimeZone Record: TimeZoneProtocol extension (methods and fields)
public extension TimeZoneProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTimeZone` instance.
    @inlinable var time_zone_ptr: UnsafeMutablePointer<GTimeZone>! { return ptr?.assumingMemoryBound(to: GTimeZone.self) }

    /// Finds an interval within `tz` that corresponds to the given `time_`,
    /// possibly adjusting `time_` if required to fit into an interval.
    /// The meaning of `time_` depends on `type`.
    /// 
    /// This function is similar to `g_time_zone_find_interval()`, with the
    /// difference that it always succeeds (by making the adjustments
    /// described below).
    /// 
    /// In any of the cases where `g_time_zone_find_interval()` succeeds then
    /// this function returns the same value, without modifying `time_`.
    /// 
    /// This function may, however, modify `time_` in order to deal with
    /// non-existent times.  If the non-existent local `time_` of 02:30 were
    /// requested on March 14th 2010 in Toronto then this function would
    /// adjust `time_` to be 03:00 and return the interval containing the
    /// adjusted time.
    @inlinable func adjustTime(type: GTimeType, time_: UnsafeMutablePointer<gint64>!) -> Int {
        let rv = Int(g_time_zone_adjust_time(time_zone_ptr, type, time_))
        return rv
    }

    /// Finds an interval within `tz` that corresponds to the given `time_`.
    /// The meaning of `time_` depends on `type`.
    /// 
    /// If `type` is `G_TIME_TYPE_UNIVERSAL` then this function will always
    /// succeed (since universal time is monotonic and continuous).
    /// 
    /// Otherwise `time_` is treated as local time.  The distinction between
    /// `G_TIME_TYPE_STANDARD` and `G_TIME_TYPE_DAYLIGHT` is ignored except in
    /// the case that the given `time_` is ambiguous.  In Toronto, for example,
    /// 01:30 on November 7th 2010 occurred twice (once inside of daylight
    /// savings time and the next, an hour later, outside of daylight savings
    /// time).  In this case, the different value of `type` would result in a
    /// different interval being returned.
    /// 
    /// It is still possible for this function to fail.  In Toronto, for
    /// example, 02:00 on March 14th 2010 does not exist (due to the leap
    /// forward to begin daylight savings time).  -1 is returned in that
    /// case.
    @inlinable func findInterval(type: GTimeType, time_: gint64) -> Int {
        let rv = Int(g_time_zone_find_interval(time_zone_ptr, type, time_))
        return rv
    }

    /// Determines the time zone abbreviation to be used during a particular
    /// `interval` of time in the time zone `tz`.
    /// 
    /// For example, in Toronto this is currently "EST" during the winter
    /// months and "EDT" during the summer months when daylight savings time
    /// is in effect.
    @inlinable func getAbbreviation(interval: Int) -> String! {
        let rv = g_time_zone_get_abbreviation(time_zone_ptr, gint(interval)).map({ String(cString: $0) })
        return rv
    }

    /// Get the identifier of this `GTimeZone`, as passed to `g_time_zone_new()`.
    /// If the identifier passed at construction time was not recognised, `UTC` will
    /// be returned. If it was `nil`, the identifier of the local timezone at
    /// construction time will be returned.
    /// 
    /// The identifier will be returned in the same format as provided at
    /// construction time: if provided as a time offset, that will be returned by
    /// this function.
    @inlinable func getIDentifier() -> String! {
        let rv = g_time_zone_get_identifier(time_zone_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Determines the offset to UTC in effect during a particular `interval`
    /// of time in the time zone `tz`.
    /// 
    /// The offset is the number of seconds that you add to UTC time to
    /// arrive at local time for `tz` (ie: negative numbers for time zones
    /// west of GMT, positive numbers for east).
    @inlinable func getOffset(interval: Int) -> gint32 {
        let rv = g_time_zone_get_offset(time_zone_ptr, gint(interval))
        return rv
    }

    /// Determines if daylight savings time is in effect during a particular
    /// `interval` of time in the time zone `tz`.
    @inlinable func isDst(interval: Int) -> Bool {
        let rv = ((g_time_zone_is_dst(time_zone_ptr, gint(interval))) != 0)
        return rv
    }

    /// Increases the reference count on `tz`.
    @discardableResult @inlinable func ref() -> TimeZoneRef! {
        guard let rv = TimeZoneRef(gconstpointer: gconstpointer(g_time_zone_ref(time_zone_ptr))) else { return nil }
        return rv
    }

    /// Decreases the reference count on `tz`.
    @inlinable func unref() {
        g_time_zone_unref(time_zone_ptr)
    
    }
    /// Get the identifier of this `GTimeZone`, as passed to `g_time_zone_new()`.
    /// If the identifier passed at construction time was not recognised, `UTC` will
    /// be returned. If it was `nil`, the identifier of the local timezone at
    /// construction time will be returned.
    /// 
    /// The identifier will be returned in the same format as provided at
    /// construction time: if provided as a time offset, that will be returned by
    /// this function.
    @inlinable var identifier: String! {
        /// Get the identifier of this `GTimeZone`, as passed to `g_time_zone_new()`.
        /// If the identifier passed at construction time was not recognised, `UTC` will
        /// be returned. If it was `nil`, the identifier of the local timezone at
        /// construction time will be returned.
        /// 
        /// The identifier will be returned in the same format as provided at
        /// construction time: if provided as a time offset, that will be returned by
        /// this function.
        get {
            let rv = g_time_zone_get_identifier(time_zone_ptr).map({ String(cString: $0) })
            return rv
        }
    }


}



// MARK: - Timer Record

/// The `TimerProtocol` protocol exposes the methods and properties of an underlying `GTimer` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Timer`.
/// Alternatively, use `TimerRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Opaque datatype that records a start time.
public protocol TimerProtocol {
        /// Untyped pointer to the underlying `GTimer` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTimer` instance.
    var _ptr: UnsafeMutablePointer<GTimer>! { get }

    /// Required Initialiser for types conforming to `TimerProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `TimerRef` type acts as a lightweight Swift reference to an underlying `GTimer` instance.
/// It exposes methods that can operate on this data type through `TimerProtocol` conformance.
/// Use `TimerRef` only as an `unowned` reference to an existing `GTimer` instance.
///
/// Opaque datatype that records a start time.
public struct TimerRef: TimerProtocol {
        /// Untyped pointer to the underlying `GTimer` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TimerRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTimer>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTimer>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTimer>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTimer>?) {
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

    /// Reference intialiser for a related type that implements `TimerProtocol`
    @inlinable init<T: TimerProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimerProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimerProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimerProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimerProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimerProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Timer` type acts as an owner of an underlying `GTimer` instance.
/// It provides the methods that can operate on this data type through `TimerProtocol` conformance.
/// Use `Timer` as a strong reference or owner of a `GTimer` instance.
///
/// Opaque datatype that records a start time.
open class Timer: TimerProtocol {
        /// Untyped pointer to the underlying `GTimer` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Timer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTimer>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Timer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTimer>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Timer` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Timer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Timer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTimer>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Timer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTimer>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTimer` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Timer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTimer>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTimer, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TimerProtocol`
    /// `GTimer` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TimerProtocol`
    @inlinable public init<T: TimerProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GTimer, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GTimer`.
    deinit {
        // no reference counting for GTimer, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTimer, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimerProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimerProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTimer, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimerProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimerProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTimer, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TimerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTimer, cannot ref(_ptr)
    }



}

// MARK: no Timer properties

// MARK: no Timer signals

// MARK: Timer has no signals
// MARK: Timer Record: TimerProtocol extension (methods and fields)
public extension TimerProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTimer` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTimer>! { return ptr?.assumingMemoryBound(to: GTimer.self) }

    /// Resumes a timer that has previously been stopped with
    /// `g_timer_stop()`. `g_timer_stop()` must be called before using this
    /// function.
    @inlinable func continue_() {
        g_timer_continue(_ptr)
    
    }

    /// Destroys a timer, freeing associated resources.
    @inlinable func destroy() {
        g_timer_destroy(_ptr)
    
    }

    /// If `timer` has been started but not stopped, obtains the time since
    /// the timer was started. If `timer` has been stopped, obtains the
    /// elapsed time between the time it was started and the time it was
    /// stopped. The return value is the number of seconds elapsed,
    /// including any fractional part. The `microseconds` out parameter is
    /// essentially useless.
    @inlinable func elapsed(microseconds: UnsafeMutablePointer<gulong>!) -> Double {
        let rv = Double(g_timer_elapsed(_ptr, microseconds))
        return rv
    }

    /// This function is useless; it's fine to call `g_timer_start()` on an
    /// already-started timer to reset the start time, so `g_timer_reset()`
    /// serves no purpose.
    @inlinable func reset() {
        g_timer_reset(_ptr)
    
    }

    /// Marks a start time, so that future calls to `g_timer_elapsed()` will
    /// report the time since `g_timer_start()` was called. `g_timer_new()`
    /// automatically marks the start time, so no need to call
    /// `g_timer_start()` immediately after creating the timer.
    @inlinable func start() {
        g_timer_start(_ptr)
    
    }

    /// Marks an end time, so calls to `g_timer_elapsed()` will return the
    /// difference between this end time and the start time.
    @inlinable func stop() {
        g_timer_stop(_ptr)
    
    }
    /// Exposes whether the timer is currently active.
    @inlinable var isActive: Bool {
        /// Exposes whether the timer is currently active.
        get {
            let rv = ((g_timer_is_active(_ptr)) != 0)
            return rv
        }
    }


}



// MARK: - TrashStack Record

/// The `TrashStackProtocol` protocol exposes the methods and properties of an underlying `GTrashStack` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TrashStack`.
/// Alternatively, use `TrashStackRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Each piece of memory that is pushed onto the stack
/// is cast to a GTrashStack*.
public protocol TrashStackProtocol {
        /// Untyped pointer to the underlying `GTrashStack` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTrashStack` instance.
    var _ptr: UnsafeMutablePointer<GTrashStack>! { get }

    /// Required Initialiser for types conforming to `TrashStackProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `TrashStackRef` type acts as a lightweight Swift reference to an underlying `GTrashStack` instance.
/// It exposes methods that can operate on this data type through `TrashStackProtocol` conformance.
/// Use `TrashStackRef` only as an `unowned` reference to an existing `GTrashStack` instance.
///
/// Each piece of memory that is pushed onto the stack
/// is cast to a GTrashStack*.
public struct TrashStackRef: TrashStackProtocol {
        /// Untyped pointer to the underlying `GTrashStack` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TrashStackRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTrashStack>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTrashStack>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTrashStack>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTrashStack>?) {
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

    /// Reference intialiser for a related type that implements `TrashStackProtocol`
    @inlinable init<T: TrashStackProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TrashStackProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TrashStackProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TrashStackProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TrashStackProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TrashStackProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TrashStack` type acts as an owner of an underlying `GTrashStack` instance.
/// It provides the methods that can operate on this data type through `TrashStackProtocol` conformance.
/// Use `TrashStack` as a strong reference or owner of a `GTrashStack` instance.
///
/// Each piece of memory that is pushed onto the stack
/// is cast to a GTrashStack*.
open class TrashStack: TrashStackProtocol {
        /// Untyped pointer to the underlying `GTrashStack` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TrashStack` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTrashStack>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TrashStack` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTrashStack>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TrashStack` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TrashStack` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TrashStack` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTrashStack>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TrashStack` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTrashStack>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTrashStack` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TrashStack` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTrashStack>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTrashStack, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TrashStackProtocol`
    /// `GTrashStack` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TrashStackProtocol`
    @inlinable public init<T: TrashStackProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GTrashStack, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GTrashStack`.
    deinit {
        // no reference counting for GTrashStack, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TrashStackProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TrashStackProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTrashStack, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TrashStackProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TrashStackProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTrashStack, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TrashStackProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TrashStackProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTrashStack, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TrashStackProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TrashStackProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTrashStack, cannot ref(_ptr)
    }



}

// MARK: no TrashStack properties

// MARK: no TrashStack signals

// MARK: TrashStack has no signals
// MARK: TrashStack Record: TrashStackProtocol extension (methods and fields)
public extension TrashStackProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTrashStack` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTrashStack>! { return ptr?.assumingMemoryBound(to: GTrashStack.self) }


    /// pointer to the previous element of the stack,
    ///     gets stored in the first `sizeof (gpointer)`
    ///     bytes of the element
    @inlinable var next: TrashStackRef! {
        /// pointer to the previous element of the stack,
        ///     gets stored in the first `sizeof (gpointer)`
        ///     bytes of the element
        get {
            let rv = TrashStackRef(gconstpointer: gconstpointer(_ptr.pointee.next))
            return rv
        }
        /// pointer to the previous element of the stack,
        ///     gets stored in the first `sizeof (gpointer)`
        ///     bytes of the element
         set {
            _ptr.pointee.next = UnsafeMutablePointer<GTrashStack>(newValue._ptr)
        }
    }

}



// MARK: - Tree Record

/// The `TreeProtocol` protocol exposes the methods and properties of an underlying `GTree` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Tree`.
/// Alternatively, use `TreeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The GTree struct is an opaque data structure representing a
/// [balanced binary tree](../Protocols/TreeProtocol.html). It should be
/// accessed only by using the following functions.
public protocol TreeProtocol {
        /// Untyped pointer to the underlying `GTree` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTree` instance.
    var _ptr: UnsafeMutablePointer<GTree>! { get }

    /// Required Initialiser for types conforming to `TreeProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `TreeRef` type acts as a lightweight Swift reference to an underlying `GTree` instance.
/// It exposes methods that can operate on this data type through `TreeProtocol` conformance.
/// Use `TreeRef` only as an `unowned` reference to an existing `GTree` instance.
///
/// The GTree struct is an opaque data structure representing a
/// [balanced binary tree](../Protocols/TreeProtocol.html). It should be
/// accessed only by using the following functions.
public struct TreeRef: TreeProtocol {
        /// Untyped pointer to the underlying `GTree` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TreeRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTree>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTree>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTree>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTree>?) {
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

    /// Reference intialiser for a related type that implements `TreeProtocol`
    @inlinable init<T: TreeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GTree` like `g_tree_new()` and allows to specify functions
    /// to free the memory allocated for the key and value that get called when
    /// removing the entry from the `GTree`.
    @inlinable static func new(full keyCompareFunc: GCompareDataFunc?, keyCompareData: gpointer! = nil, keyDestroyFunc: GDestroyNotify?, valueDestroyFunc: GDestroyNotify?) -> TreeRef! {
        guard let rv = TreeRef(gconstpointer: gconstpointer(g_tree_new_full(keyCompareFunc, keyCompareData, keyDestroyFunc, valueDestroyFunc))) else { return nil }
        return rv
    }

    /// Creates a new `GTree` with a comparison function that accepts user data.
    /// See `g_tree_new()` for more details.
    @inlinable static func newWith(data keyCompareFunc: GCompareDataFunc?, keyCompareData: gpointer! = nil) -> TreeRef! {
        guard let rv = TreeRef(gconstpointer: gconstpointer(g_tree_new_with_data(keyCompareFunc, keyCompareData))) else { return nil }
        return rv
    }
}

/// The `Tree` type acts as a reference-counted owner of an underlying `GTree` instance.
/// It provides the methods that can operate on this data type through `TreeProtocol` conformance.
/// Use `Tree` as a strong reference or owner of a `GTree` instance.
///
/// The GTree struct is an opaque data structure representing a
/// [balanced binary tree](../Protocols/TreeProtocol.html). It should be
/// accessed only by using the following functions.
open class Tree: TreeProtocol {
        /// Untyped pointer to the underlying `GTree` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Tree` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTree>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Tree` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTree>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Tree` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Tree` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Tree` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTree>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Tree` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTree>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GTree`.
    /// i.e., ownership is transferred to the `Tree` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTree>) {
        ptr = UnsafeMutableRawPointer(op)
        g_tree_ref(ptr.assumingMemoryBound(to: GTree.self))
    }

    /// Reference intialiser for a related type that implements `TreeProtocol`
    /// Will retain `GTree`.
    /// - Parameter other: an instance of a related type that implements `TreeProtocol`
    @inlinable public init<T: TreeProtocol>(_ other: T) {
        ptr = other.ptr
        g_tree_ref(ptr.assumingMemoryBound(to: GTree.self))
    }

    /// Releases the underlying `GTree` instance using `g_tree_unref`.
    deinit {
        g_tree_unref(ptr.assumingMemoryBound(to: GTree.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_tree_ref(ptr.assumingMemoryBound(to: GTree.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_tree_ref(ptr.assumingMemoryBound(to: GTree.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_tree_ref(ptr.assumingMemoryBound(to: GTree.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_tree_ref(ptr.assumingMemoryBound(to: GTree.self))
    }


    /// Creates a new `GTree` like `g_tree_new()` and allows to specify functions
    /// to free the memory allocated for the key and value that get called when
    /// removing the entry from the `GTree`.
    @inlinable public static func new(full keyCompareFunc: GCompareDataFunc?, keyCompareData: gpointer! = nil, keyDestroyFunc: GDestroyNotify?, valueDestroyFunc: GDestroyNotify?) -> Tree! {
        guard let rv = Tree(gconstpointer: gconstpointer(g_tree_new_full(keyCompareFunc, keyCompareData, keyDestroyFunc, valueDestroyFunc))) else { return nil }
        return rv
    }

    /// Creates a new `GTree` with a comparison function that accepts user data.
    /// See `g_tree_new()` for more details.
    @inlinable public static func newWith(data keyCompareFunc: GCompareDataFunc?, keyCompareData: gpointer! = nil) -> Tree! {
        guard let rv = Tree(gconstpointer: gconstpointer(g_tree_new_with_data(keyCompareFunc, keyCompareData))) else { return nil }
        return rv
    }

}

// MARK: no Tree properties

// MARK: no Tree signals

// MARK: Tree has no signals
// MARK: Tree Record: TreeProtocol extension (methods and fields)
public extension TreeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTree` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTree>! { return ptr?.assumingMemoryBound(to: GTree.self) }

    /// Removes all keys and values from the `GTree` and decreases its
    /// reference count by one. If keys and/or values are dynamically
    /// allocated, you should either free them first or create the `GTree`
    /// using `g_tree_new_full()`. In the latter case the destroy functions
    /// you supplied will be called on all keys and values before destroying
    /// the `GTree`.
    @inlinable func destroy() {
        g_tree_destroy(_ptr)
    
    }

    /// Calls the given function for each of the key/value pairs in the `GTree`.
    /// The function is passed the key and value of each pair, and the given
    /// `data` parameter. The tree is traversed in sorted order.
    /// 
    /// The tree may not be modified while iterating over it (you can't
    /// add/remove items). To remove all items matching a predicate, you need
    /// to add each item to a list in your `GTraverseFunc` as you walk over
    /// the tree, then walk the list and remove each item.
    @inlinable func foreach(`func`: GTraverseFunc?, userData: gpointer! = nil) {
        g_tree_foreach(_ptr, `func`, userData)
    
    }

    /// Gets the height of a `GTree`.
    /// 
    /// If the `GTree` contains no nodes, the height is 0.
    /// If the `GTree` contains only one root node the height is 1.
    /// If the root node has children the height is 2, etc.
    @inlinable func height() -> Int {
        let rv = Int(g_tree_height(_ptr))
        return rv
    }

    /// Inserts a key/value pair into a `GTree`.
    /// 
    /// Inserts a new key and value into a `GTree` as `g_tree_insert_node()` does,
    /// only this function does not return the inserted or set node.
    @inlinable func insert(key: gpointer! = nil, value: gpointer! = nil) {
        g_tree_insert(_ptr, key, value)
    
    }

    /// Gets the value corresponding to the given key. Since a `GTree` is
    /// automatically balanced as key/value pairs are added, key lookup
    /// is `O(log n)` (where n is the number of key/value pairs in the tree).
    @inlinable func lookup(key: gconstpointer! = nil) -> gpointer! {
        let rv = g_tree_lookup(_ptr, key)
        return rv
    }

    /// Looks up a key in the `GTree`, returning the original key and the
    /// associated value. This is useful if you need to free the memory
    /// allocated for the original key, for example before calling
    /// `g_tree_remove()`.
    @inlinable func lookupExtended(lookupKey: gconstpointer! = nil, origKey: UnsafeMutablePointer<gpointer?>? = nil, value: UnsafeMutablePointer<gpointer?>? = nil) -> Bool {
        let rv = ((g_tree_lookup_extended(_ptr, lookupKey, origKey, value)) != 0)
        return rv
    }

    /// Gets the number of nodes in a `GTree`.
    @inlinable func nnodes() -> Int {
        let rv = Int(g_tree_nnodes(_ptr))
        return rv
    }

    /// Increments the reference count of `tree` by one.
    /// 
    /// It is safe to call this function from any thread.
    @discardableResult @inlinable func ref() -> TreeRef! {
        guard let rv = TreeRef(gconstpointer: gconstpointer(g_tree_ref(_ptr))) else { return nil }
        return rv
    }

    /// Removes a key/value pair from a `GTree`.
    /// 
    /// If the `GTree` was created using `g_tree_new_full()`, the key and value
    /// are freed using the supplied destroy functions, otherwise you have to
    /// make sure that any dynamically allocated values are freed yourself.
    /// If the key does not exist in the `GTree`, the function does nothing.
    /// 
    /// The cost of maintaining a balanced tree while removing a key/value
    /// result in a `O(n log(n)`) operation where most of the other operations
    /// are `O(log(n)`).
    @inlinable func remove(key: gconstpointer! = nil) -> Bool {
        let rv = ((g_tree_remove(_ptr, key)) != 0)
        return rv
    }

    /// Inserts a new key and value into a `GTree` as `g_tree_replace_node()` does,
    /// only this function does not return the inserted or set node.
    @inlinable func replace(key: gpointer! = nil, value: gpointer! = nil) {
        g_tree_replace(_ptr, key, value)
    
    }

    /// Searches a `GTree` using `search_func`.
    /// 
    /// The `search_func` is called with a pointer to the key of a key/value
    /// pair in the tree, and the passed in `user_data`. If `search_func` returns
    /// 0 for a key/value pair, then the corresponding value is returned as
    /// the result of `g_tree_search()`. If `search_func` returns -1, searching
    /// will proceed among the key/value pairs that have a smaller key; if
    /// `search_func` returns 1, searching will proceed among the key/value
    /// pairs that have a larger key.
    @inlinable func search(searchFunc: GCompareFunc?, userData: gconstpointer! = nil) -> gpointer! {
        let rv = g_tree_search(_ptr, searchFunc, userData)
        return rv
    }

    /// Removes a key and its associated value from a `GTree` without calling
    /// the key and value destroy functions.
    /// 
    /// If the key does not exist in the `GTree`, the function does nothing.
    @inlinable func steal(key: gconstpointer! = nil) -> Bool {
        let rv = ((g_tree_steal(_ptr, key)) != 0)
        return rv
    }

    /// Calls the given function for each node in the `GTree`.
    ///
    /// **traverse is deprecated:**
    /// The order of a balanced tree is somewhat arbitrary.
    ///     If you just want to visit all nodes in sorted order, use
    ///     g_tree_foreach() instead. If you really need to visit nodes in
    ///     a different order, consider using an [n-ary tree][glib-N-ary-Trees].
    @available(*, deprecated) @inlinable func traverse(traverseFunc: GTraverseFunc?, traverseType: GTraverseType, userData: gpointer! = nil) {
        g_tree_traverse(_ptr, traverseFunc, traverseType, userData)
    
    }

    /// Decrements the reference count of `tree` by one.
    /// If the reference count drops to 0, all keys and values will
    /// be destroyed (if destroy functions were specified) and all
    /// memory allocated by `tree` will be released.
    /// 
    /// It is safe to call this function from any thread.
    @inlinable func unref() {
        g_tree_unref(_ptr)
    
    }


}



// MARK: - URI Record

/// The `URIProtocol` protocol exposes the methods and properties of an underlying `GUri` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `URI`.
/// Alternatively, use `URIRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GUri` type and related functions can be used to parse URIs into
/// their components, and build valid URIs from individual components.
/// 
/// Note that `GUri` scope is to help manipulate URIs in various applications,
/// following [RFC 3986](https://tools.ietf.org/html/rfc3986). In particular,
/// it doesn't intend to cover web browser needs, and doesn't implement the
/// [WHATWG URL](https://url.spec.whatwg.org/) standard. No APIs are provided to
/// help prevent
/// [homograph attacks](https://en.wikipedia.org/wiki/IDN_homograph_attack), so
/// `GUri` is not suitable for formatting URIs for display to the user for making
/// security-sensitive decisions.
/// 
/// ## Relative and absolute URIs # <a name="relative-absolute-uris"></a>
/// 
/// As defined in [RFC 3986](https://tools.ietf.org/html/rfc3986`section-4`), the
/// hierarchical nature of URIs means that they can either be ‘relative
/// references’ (sometimes referred to as ‘relative URIs’) or ‘URIs’ (for
/// clarity, ‘URIs’ are referred to in this documentation as
/// ‘absolute URIs’ — although
/// [in constrast to RFC 3986](https://tools.ietf.org/html/rfc3986`section-4.3`),
/// fragment identifiers are always allowed).
/// 
/// Relative references have one or more components of the URI missing. In
/// particular, they have no scheme. Any other component, such as hostname,
/// query, etc. may be missing, apart from a path, which has to be specified (but
/// may be empty). The path may be relative, starting with `./` rather than `/`.
/// 
/// For example, a valid relative reference is `./path?query`,
/// `/?query`fragment`` or `//example.com`.
/// 
/// Absolute URIs have a scheme specified. Any other components of the URI which
/// are missing are specified as explicitly unset in the URI, rather than being
/// resolved relative to a base URI using `g_uri_parse_relative()`.
/// 
/// For example, a valid absolute URI is `file:///home/bob` or
/// `https://search.com?query=string`.
/// 
/// A `GUri` instance is always an absolute URI. A string may be an absolute URI
/// or a relative reference; see the documentation for individual functions as to
/// what forms they accept.
/// 
/// ## Parsing URIs
/// 
/// The most minimalist APIs for parsing URIs are `g_uri_split()` and
/// `g_uri_split_with_user()`. These split a URI into its component
/// parts, and return the parts; the difference between the two is that
/// `g_uri_split()` treats the ‘userinfo’ component of the URI as a
/// single element, while `g_uri_split_with_user()` can (depending on the
/// `GUriFlags` you pass) treat it as containing a username, password,
/// and authentication parameters. Alternatively, `g_uri_split_network()`
/// can be used when you are only interested in the components that are
/// needed to initiate a network connection to the service (scheme,
/// host, and port).
/// 
/// `g_uri_parse()` is similar to `g_uri_split()`, but instead of returning
/// individual strings, it returns a `GUri` structure (and it requires
/// that the URI be an absolute URI).
/// 
/// `g_uri_resolve_relative()` and `g_uri_parse_relative()` allow you to
/// resolve a relative URI relative to a base URI.
/// `g_uri_resolve_relative()` takes two strings and returns a string,
/// and `g_uri_parse_relative()` takes a `GUri` and a string and returns a
/// `GUri`.
/// 
/// All of the parsing functions take a `GUriFlags` argument describing
/// exactly how to parse the URI; see the documentation for that type
/// for more details on the specific flags that you can pass. If you
/// need to choose different flags based on the type of URI, you can
/// use `g_uri_peek_scheme()` on the URI string to check the scheme
/// first, and use that to decide what flags to parse it with.
/// 
/// For example, you might want to use `G_URI_PARAMS_WWW_FORM` when parsing the
/// params for a web URI, so compare the result of `g_uri_peek_scheme()` against
/// `http` and `https`.
/// 
/// ## Building URIs
/// 
/// `g_uri_join()` and `g_uri_join_with_user()` can be used to construct
/// valid URI strings from a set of component strings. They are the
/// inverse of `g_uri_split()` and `g_uri_split_with_user()`.
/// 
/// Similarly, `g_uri_build()` and `g_uri_build_with_user()` can be used to
/// construct a `GUri` from a set of component strings.
/// 
/// As with the parsing functions, the building functions take a
/// `GUriFlags` argument. In particular, it is important to keep in mind
/// whether the URI components you are using are already ````-encoded. If so,
/// you must pass the `G_URI_FLAGS_ENCODED` flag.
/// 
/// ## `file://` URIs
/// 
/// Note that Windows and Unix both define special rules for parsing
/// `file://` URIs (involving non-UTF-8 character sets on Unix, and the
/// interpretation of path separators on Windows). `GUri` does not
/// implement these rules. Use `g_filename_from_uri()` and
/// `g_filename_to_uri()` if you want to properly convert between
/// `file://` URIs and local filenames.
/// 
/// ## URI Equality
/// 
/// Note that there is no `g_uri_equal ()` function, because comparing
/// URIs usefully requires scheme-specific knowledge that `GUri` does
/// not have. `GUri` can help with normalization if you use the various
/// encoded `GUriFlags` as well as `G_URI_FLAGS_SCHEME_NORMALIZE` however
/// it is not comprehensive.
/// For example, `data:,foo` and `data:;base64,Zm9v` resolve to the same
/// thing according to the `data:` URI specification which GLib does not
/// handle.
public protocol URIProtocol {
        /// Untyped pointer to the underlying `GUri` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GUri` instance.
    var uri_ptr: UnsafeMutablePointer<GUri>! { get }

    /// Required Initialiser for types conforming to `URIProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `URIRef` type acts as a lightweight Swift reference to an underlying `GUri` instance.
/// It exposes methods that can operate on this data type through `URIProtocol` conformance.
/// Use `URIRef` only as an `unowned` reference to an existing `GUri` instance.
///
/// The `GUri` type and related functions can be used to parse URIs into
/// their components, and build valid URIs from individual components.
/// 
/// Note that `GUri` scope is to help manipulate URIs in various applications,
/// following [RFC 3986](https://tools.ietf.org/html/rfc3986). In particular,
/// it doesn't intend to cover web browser needs, and doesn't implement the
/// [WHATWG URL](https://url.spec.whatwg.org/) standard. No APIs are provided to
/// help prevent
/// [homograph attacks](https://en.wikipedia.org/wiki/IDN_homograph_attack), so
/// `GUri` is not suitable for formatting URIs for display to the user for making
/// security-sensitive decisions.
/// 
/// ## Relative and absolute URIs # <a name="relative-absolute-uris"></a>
/// 
/// As defined in [RFC 3986](https://tools.ietf.org/html/rfc3986`section-4`), the
/// hierarchical nature of URIs means that they can either be ‘relative
/// references’ (sometimes referred to as ‘relative URIs’) or ‘URIs’ (for
/// clarity, ‘URIs’ are referred to in this documentation as
/// ‘absolute URIs’ — although
/// [in constrast to RFC 3986](https://tools.ietf.org/html/rfc3986`section-4.3`),
/// fragment identifiers are always allowed).
/// 
/// Relative references have one or more components of the URI missing. In
/// particular, they have no scheme. Any other component, such as hostname,
/// query, etc. may be missing, apart from a path, which has to be specified (but
/// may be empty). The path may be relative, starting with `./` rather than `/`.
/// 
/// For example, a valid relative reference is `./path?query`,
/// `/?query`fragment`` or `//example.com`.
/// 
/// Absolute URIs have a scheme specified. Any other components of the URI which
/// are missing are specified as explicitly unset in the URI, rather than being
/// resolved relative to a base URI using `g_uri_parse_relative()`.
/// 
/// For example, a valid absolute URI is `file:///home/bob` or
/// `https://search.com?query=string`.
/// 
/// A `GUri` instance is always an absolute URI. A string may be an absolute URI
/// or a relative reference; see the documentation for individual functions as to
/// what forms they accept.
/// 
/// ## Parsing URIs
/// 
/// The most minimalist APIs for parsing URIs are `g_uri_split()` and
/// `g_uri_split_with_user()`. These split a URI into its component
/// parts, and return the parts; the difference between the two is that
/// `g_uri_split()` treats the ‘userinfo’ component of the URI as a
/// single element, while `g_uri_split_with_user()` can (depending on the
/// `GUriFlags` you pass) treat it as containing a username, password,
/// and authentication parameters. Alternatively, `g_uri_split_network()`
/// can be used when you are only interested in the components that are
/// needed to initiate a network connection to the service (scheme,
/// host, and port).
/// 
/// `g_uri_parse()` is similar to `g_uri_split()`, but instead of returning
/// individual strings, it returns a `GUri` structure (and it requires
/// that the URI be an absolute URI).
/// 
/// `g_uri_resolve_relative()` and `g_uri_parse_relative()` allow you to
/// resolve a relative URI relative to a base URI.
/// `g_uri_resolve_relative()` takes two strings and returns a string,
/// and `g_uri_parse_relative()` takes a `GUri` and a string and returns a
/// `GUri`.
/// 
/// All of the parsing functions take a `GUriFlags` argument describing
/// exactly how to parse the URI; see the documentation for that type
/// for more details on the specific flags that you can pass. If you
/// need to choose different flags based on the type of URI, you can
/// use `g_uri_peek_scheme()` on the URI string to check the scheme
/// first, and use that to decide what flags to parse it with.
/// 
/// For example, you might want to use `G_URI_PARAMS_WWW_FORM` when parsing the
/// params for a web URI, so compare the result of `g_uri_peek_scheme()` against
/// `http` and `https`.
/// 
/// ## Building URIs
/// 
/// `g_uri_join()` and `g_uri_join_with_user()` can be used to construct
/// valid URI strings from a set of component strings. They are the
/// inverse of `g_uri_split()` and `g_uri_split_with_user()`.
/// 
/// Similarly, `g_uri_build()` and `g_uri_build_with_user()` can be used to
/// construct a `GUri` from a set of component strings.
/// 
/// As with the parsing functions, the building functions take a
/// `GUriFlags` argument. In particular, it is important to keep in mind
/// whether the URI components you are using are already ````-encoded. If so,
/// you must pass the `G_URI_FLAGS_ENCODED` flag.
/// 
/// ## `file://` URIs
/// 
/// Note that Windows and Unix both define special rules for parsing
/// `file://` URIs (involving non-UTF-8 character sets on Unix, and the
/// interpretation of path separators on Windows). `GUri` does not
/// implement these rules. Use `g_filename_from_uri()` and
/// `g_filename_to_uri()` if you want to properly convert between
/// `file://` URIs and local filenames.
/// 
/// ## URI Equality
/// 
/// Note that there is no `g_uri_equal ()` function, because comparing
/// URIs usefully requires scheme-specific knowledge that `GUri` does
/// not have. `GUri` can help with normalization if you use the various
/// encoded `GUriFlags` as well as `G_URI_FLAGS_SCHEME_NORMALIZE` however
/// it is not comprehensive.
/// For example, `data:,foo` and `data:;base64,Zm9v` resolve to the same
/// thing according to the `data:` URI specification which GLib does not
/// handle.
public struct URIRef: URIProtocol {
        /// Untyped pointer to the underlying `GUri` instance.
    /// For type-safe access, use the generated, typed pointer `uri_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension URIRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GUri>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GUri>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GUri>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GUri>?) {
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

    /// Reference intialiser for a related type that implements `URIProtocol`
    @inlinable init<T: URIProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `URIProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `URIProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `URIProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `URIProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `URIProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GUri` from the given components according to `flags`.
    /// 
    /// See also `g_uri_build_with_user()`, which allows specifying the
    /// components of the "userinfo" separately.
    @inlinable static func build(flags: URIFlags, scheme: UnsafePointer<gchar>!, userinfo: UnsafePointer<gchar>? = nil, host: UnsafePointer<gchar>? = nil, port: Int, path: UnsafePointer<gchar>!, query: UnsafePointer<gchar>? = nil, fragment: UnsafePointer<gchar>? = nil) -> URIRef! {
        guard let rv = URIRef(gconstpointer: gconstpointer(g_uri_build(flags.value, scheme, userinfo, host, gint(port), path, query, fragment))) else { return nil }
        return rv
    }

    /// Creates a new `GUri` from the given components according to `flags`
    /// (`G_URI_FLAGS_HAS_PASSWORD` is added unconditionally). The `flags` must be
    /// coherent with the passed values, in particular use ````-encoded values with
    /// `G_URI_FLAGS_ENCODED`.
    /// 
    /// In contrast to `g_uri_build()`, this allows specifying the components
    /// of the ‘userinfo’ field separately. Note that `user` must be non-`nil`
    /// if either `password` or `auth_params` is non-`nil`.
    @inlinable static func buildWith(user flags: URIFlags, scheme: UnsafePointer<gchar>!, user: UnsafePointer<gchar>? = nil, password: UnsafePointer<gchar>? = nil, authParams: UnsafePointer<gchar>? = nil, host: UnsafePointer<gchar>? = nil, port: Int, path: UnsafePointer<gchar>!, query: UnsafePointer<gchar>? = nil, fragment: UnsafePointer<gchar>? = nil) -> URIRef! {
        guard let rv = URIRef(gconstpointer: gconstpointer(g_uri_build_with_user(flags.value, scheme, user, password, authParams, host, gint(port), path, query, fragment))) else { return nil }
        return rv
    }

    /// Parses `uri_string` according to `flags`. If the result is not a
    /// valid [absolute URI](#relative-absolute-uris), it will be discarded, and an
    /// error returned.
    @inlinable static func parse(uriString: UnsafePointer<gchar>!, flags: URIFlags) throws -> URIRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = URIRef(gconstpointer: gconstpointer(g_uri_parse(uriString, flags.value, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }
}

/// The `URI` type acts as a reference-counted owner of an underlying `GUri` instance.
/// It provides the methods that can operate on this data type through `URIProtocol` conformance.
/// Use `URI` as a strong reference or owner of a `GUri` instance.
///
/// The `GUri` type and related functions can be used to parse URIs into
/// their components, and build valid URIs from individual components.
/// 
/// Note that `GUri` scope is to help manipulate URIs in various applications,
/// following [RFC 3986](https://tools.ietf.org/html/rfc3986). In particular,
/// it doesn't intend to cover web browser needs, and doesn't implement the
/// [WHATWG URL](https://url.spec.whatwg.org/) standard. No APIs are provided to
/// help prevent
/// [homograph attacks](https://en.wikipedia.org/wiki/IDN_homograph_attack), so
/// `GUri` is not suitable for formatting URIs for display to the user for making
/// security-sensitive decisions.
/// 
/// ## Relative and absolute URIs # <a name="relative-absolute-uris"></a>
/// 
/// As defined in [RFC 3986](https://tools.ietf.org/html/rfc3986`section-4`), the
/// hierarchical nature of URIs means that they can either be ‘relative
/// references’ (sometimes referred to as ‘relative URIs’) or ‘URIs’ (for
/// clarity, ‘URIs’ are referred to in this documentation as
/// ‘absolute URIs’ — although
/// [in constrast to RFC 3986](https://tools.ietf.org/html/rfc3986`section-4.3`),
/// fragment identifiers are always allowed).
/// 
/// Relative references have one or more components of the URI missing. In
/// particular, they have no scheme. Any other component, such as hostname,
/// query, etc. may be missing, apart from a path, which has to be specified (but
/// may be empty). The path may be relative, starting with `./` rather than `/`.
/// 
/// For example, a valid relative reference is `./path?query`,
/// `/?query`fragment`` or `//example.com`.
/// 
/// Absolute URIs have a scheme specified. Any other components of the URI which
/// are missing are specified as explicitly unset in the URI, rather than being
/// resolved relative to a base URI using `g_uri_parse_relative()`.
/// 
/// For example, a valid absolute URI is `file:///home/bob` or
/// `https://search.com?query=string`.
/// 
/// A `GUri` instance is always an absolute URI. A string may be an absolute URI
/// or a relative reference; see the documentation for individual functions as to
/// what forms they accept.
/// 
/// ## Parsing URIs
/// 
/// The most minimalist APIs for parsing URIs are `g_uri_split()` and
/// `g_uri_split_with_user()`. These split a URI into its component
/// parts, and return the parts; the difference between the two is that
/// `g_uri_split()` treats the ‘userinfo’ component of the URI as a
/// single element, while `g_uri_split_with_user()` can (depending on the
/// `GUriFlags` you pass) treat it as containing a username, password,
/// and authentication parameters. Alternatively, `g_uri_split_network()`
/// can be used when you are only interested in the components that are
/// needed to initiate a network connection to the service (scheme,
/// host, and port).
/// 
/// `g_uri_parse()` is similar to `g_uri_split()`, but instead of returning
/// individual strings, it returns a `GUri` structure (and it requires
/// that the URI be an absolute URI).
/// 
/// `g_uri_resolve_relative()` and `g_uri_parse_relative()` allow you to
/// resolve a relative URI relative to a base URI.
/// `g_uri_resolve_relative()` takes two strings and returns a string,
/// and `g_uri_parse_relative()` takes a `GUri` and a string and returns a
/// `GUri`.
/// 
/// All of the parsing functions take a `GUriFlags` argument describing
/// exactly how to parse the URI; see the documentation for that type
/// for more details on the specific flags that you can pass. If you
/// need to choose different flags based on the type of URI, you can
/// use `g_uri_peek_scheme()` on the URI string to check the scheme
/// first, and use that to decide what flags to parse it with.
/// 
/// For example, you might want to use `G_URI_PARAMS_WWW_FORM` when parsing the
/// params for a web URI, so compare the result of `g_uri_peek_scheme()` against
/// `http` and `https`.
/// 
/// ## Building URIs
/// 
/// `g_uri_join()` and `g_uri_join_with_user()` can be used to construct
/// valid URI strings from a set of component strings. They are the
/// inverse of `g_uri_split()` and `g_uri_split_with_user()`.
/// 
/// Similarly, `g_uri_build()` and `g_uri_build_with_user()` can be used to
/// construct a `GUri` from a set of component strings.
/// 
/// As with the parsing functions, the building functions take a
/// `GUriFlags` argument. In particular, it is important to keep in mind
/// whether the URI components you are using are already ````-encoded. If so,
/// you must pass the `G_URI_FLAGS_ENCODED` flag.
/// 
/// ## `file://` URIs
/// 
/// Note that Windows and Unix both define special rules for parsing
/// `file://` URIs (involving non-UTF-8 character sets on Unix, and the
/// interpretation of path separators on Windows). `GUri` does not
/// implement these rules. Use `g_filename_from_uri()` and
/// `g_filename_to_uri()` if you want to properly convert between
/// `file://` URIs and local filenames.
/// 
/// ## URI Equality
/// 
/// Note that there is no `g_uri_equal ()` function, because comparing
/// URIs usefully requires scheme-specific knowledge that `GUri` does
/// not have. `GUri` can help with normalization if you use the various
/// encoded `GUriFlags` as well as `G_URI_FLAGS_SCHEME_NORMALIZE` however
/// it is not comprehensive.
/// For example, `data:,foo` and `data:;base64,Zm9v` resolve to the same
/// thing according to the `data:` URI specification which GLib does not
/// handle.
open class URI: URIProtocol {
        /// Untyped pointer to the underlying `GUri` instance.
    /// For type-safe access, use the generated, typed pointer `uri_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `URI` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GUri>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `URI` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GUri>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `URI` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `URI` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `URI` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GUri>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `URI` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GUri>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GUri`.
    /// i.e., ownership is transferred to the `URI` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GUri>) {
        ptr = UnsafeMutableRawPointer(op)
        g_uri_ref(ptr.assumingMemoryBound(to: GUri.self))
    }

    /// Reference intialiser for a related type that implements `URIProtocol`
    /// Will retain `GUri`.
    /// - Parameter other: an instance of a related type that implements `URIProtocol`
    @inlinable public init<T: URIProtocol>(_ other: T) {
        ptr = other.ptr
        g_uri_ref(ptr.assumingMemoryBound(to: GUri.self))
    }

    /// Releases the underlying `GUri` instance using `g_uri_unref`.
    deinit {
        g_uri_unref(ptr.assumingMemoryBound(to: GUri.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `URIProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `URIProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_uri_ref(ptr.assumingMemoryBound(to: GUri.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `URIProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `URIProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_uri_ref(ptr.assumingMemoryBound(to: GUri.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `URIProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `URIProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_uri_ref(ptr.assumingMemoryBound(to: GUri.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `URIProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `URIProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_uri_ref(ptr.assumingMemoryBound(to: GUri.self))
    }


    /// Creates a new `GUri` from the given components according to `flags`.
    /// 
    /// See also `g_uri_build_with_user()`, which allows specifying the
    /// components of the "userinfo" separately.
    @inlinable public static func build(flags: URIFlags, scheme: UnsafePointer<gchar>!, userinfo: UnsafePointer<gchar>? = nil, host: UnsafePointer<gchar>? = nil, port: Int, path: UnsafePointer<gchar>!, query: UnsafePointer<gchar>? = nil, fragment: UnsafePointer<gchar>? = nil) -> URI! {
        guard let rv = URI(gconstpointer: gconstpointer(g_uri_build(flags.value, scheme, userinfo, host, gint(port), path, query, fragment))) else { return nil }
        return rv
    }

    /// Creates a new `GUri` from the given components according to `flags`
    /// (`G_URI_FLAGS_HAS_PASSWORD` is added unconditionally). The `flags` must be
    /// coherent with the passed values, in particular use ````-encoded values with
    /// `G_URI_FLAGS_ENCODED`.
    /// 
    /// In contrast to `g_uri_build()`, this allows specifying the components
    /// of the ‘userinfo’ field separately. Note that `user` must be non-`nil`
    /// if either `password` or `auth_params` is non-`nil`.
    @inlinable public static func buildWith(user flags: URIFlags, scheme: UnsafePointer<gchar>!, user: UnsafePointer<gchar>? = nil, password: UnsafePointer<gchar>? = nil, authParams: UnsafePointer<gchar>? = nil, host: UnsafePointer<gchar>? = nil, port: Int, path: UnsafePointer<gchar>!, query: UnsafePointer<gchar>? = nil, fragment: UnsafePointer<gchar>? = nil) -> URI! {
        guard let rv = URI(gconstpointer: gconstpointer(g_uri_build_with_user(flags.value, scheme, user, password, authParams, host, gint(port), path, query, fragment))) else { return nil }
        return rv
    }

    /// Parses `uri_string` according to `flags`. If the result is not a
    /// valid [absolute URI](#relative-absolute-uris), it will be discarded, and an
    /// error returned.
    @inlinable public static func parse(uriString: UnsafePointer<gchar>!, flags: URIFlags) throws -> URI! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = URI(gconstpointer: gconstpointer(g_uri_parse(uriString, flags.value, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

}

// MARK: no URI properties

// MARK: no URI signals

// MARK: URI has no signals
// MARK: URI Record: URIProtocol extension (methods and fields)
public extension URIProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUri` instance.
    @inlinable var uri_ptr: UnsafeMutablePointer<GUri>! { return ptr?.assumingMemoryBound(to: GUri.self) }

    /// Gets `uri`'s authentication parameters, which may contain
    /// ````-encoding, depending on the flags with which `uri` was created.
    /// (If `uri` was not created with `G_URI_FLAGS_HAS_AUTH_PARAMS` then this will
    /// be `nil`.)
    /// 
    /// Depending on the URI scheme, `g_uri_parse_params()` may be useful for
    /// further parsing this information.
    @inlinable func getAuthParams() -> String! {
        let rv = g_uri_get_auth_params(uri_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets `uri`'s flags set upon construction.
    @inlinable func getFlags() -> URIFlags {
        let rv = URIFlags(g_uri_get_flags(uri_ptr))
        return rv
    }

    /// Gets `uri`'s fragment, which may contain ````-encoding, depending on
    /// the flags with which `uri` was created.
    @inlinable func getFragment() -> String! {
        let rv = g_uri_get_fragment(uri_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets `uri`'s host. This will never have ````-encoded characters,
    /// unless it is non-UTF-8 (which can only be the case if `uri` was
    /// created with `G_URI_FLAGS_NON_DNS`).
    /// 
    /// If `uri` contained an IPv6 address literal, this value will be just
    /// that address, without the brackets around it that are necessary in
    /// the string form of the URI. Note that in this case there may also
    /// be a scope ID attached to the address. Eg, `fe80`1234`````em1` (or
    /// `fe80`1234`````25em1` if the string is still encoded).
    @inlinable func getHost() -> String! {
        let rv = g_uri_get_host(uri_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets `uri`'s password, which may contain ````-encoding, depending on
    /// the flags with which `uri` was created. (If `uri` was not created
    /// with `G_URI_FLAGS_HAS_PASSWORD` then this will be `nil`.)
    @inlinable func getPassword() -> String! {
        let rv = g_uri_get_password(uri_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets `uri`'s path, which may contain ````-encoding, depending on the
    /// flags with which `uri` was created.
    @inlinable func getPath() -> String! {
        let rv = g_uri_get_path(uri_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets `uri`'s port.
    @inlinable func getPort() -> Int {
        let rv = Int(g_uri_get_port(uri_ptr))
        return rv
    }

    /// Gets `uri`'s query, which may contain ````-encoding, depending on the
    /// flags with which `uri` was created.
    /// 
    /// For queries consisting of a series of `name=value` parameters,
    /// `GUriParamsIter` or `g_uri_parse_params()` may be useful.
    @inlinable func getQuery() -> String! {
        let rv = g_uri_get_query(uri_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets `uri`'s scheme. Note that this will always be all-lowercase,
    /// regardless of the string or strings that `uri` was created from.
    @inlinable func getScheme() -> String! {
        let rv = g_uri_get_scheme(uri_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the ‘username’ component of `uri`'s userinfo, which may contain
    /// ````-encoding, depending on the flags with which `uri` was created.
    /// If `uri` was not created with `G_URI_FLAGS_HAS_PASSWORD` or
    /// `G_URI_FLAGS_HAS_AUTH_PARAMS`, this is the same as `g_uri_get_userinfo()`.
    @inlinable func getUser() -> String! {
        let rv = g_uri_get_user(uri_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets `uri`'s userinfo, which may contain ````-encoding, depending on
    /// the flags with which `uri` was created.
    @inlinable func getUserinfo() -> String! {
        let rv = g_uri_get_userinfo(uri_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Parses `uri_ref` according to `flags` and, if it is a
    /// [relative URI](#relative-absolute-uris), resolves it relative to `base_uri`.
    /// If the result is not a valid absolute URI, it will be discarded, and an error
    /// returned.
    @inlinable func parseRelative(uriRef: UnsafePointer<gchar>!, flags: URIFlags) throws -> URIRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = URIRef(gconstpointer: gconstpointer(g_uri_parse_relative(uri_ptr, uriRef, flags.value, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Increments the reference count of `uri` by one.
    @discardableResult @inlinable func ref() -> URIRef! {
        guard let rv = URIRef(gconstpointer: gconstpointer(g_uri_ref(uri_ptr))) else { return nil }
        return rv
    }

    /// Returns a string representing `uri`.
    /// 
    /// This is not guaranteed to return a string which is identical to the
    /// string that `uri` was parsed from. However, if the source URI was
    /// syntactically correct (according to RFC 3986), and it was parsed
    /// with `G_URI_FLAGS_ENCODED`, then `g_uri_to_string()` is guaranteed to return
    /// a string which is at least semantically equivalent to the source
    /// URI (according to RFC 3986).
    /// 
    /// If `uri` might contain sensitive details, such as authentication parameters,
    /// or private data in its query string, and the returned string is going to be
    /// logged, then consider using `g_uri_to_string_partial()` to redact parts.
    @inlinable func toString() -> String! {
        let rv = g_uri_to_string(uri_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns a string representing `uri`, subject to the options in
    /// `flags`. See `g_uri_to_string()` and `GUriHideFlags` for more details.
    @inlinable func toStringPartial(flags: URIHideFlags) -> String! {
        let rv = g_uri_to_string_partial(uri_ptr, flags.value).map({ String(cString: $0) })
        return rv
    }

    /// Atomically decrements the reference count of `uri` by one.
    /// 
    /// When the reference count reaches zero, the resources allocated by
    /// `uri` are freed
    @inlinable func unref() {
        g_uri_unref(uri_ptr)
    
    }
    /// Gets `uri`'s authentication parameters, which may contain
    /// ````-encoding, depending on the flags with which `uri` was created.
    /// (If `uri` was not created with `G_URI_FLAGS_HAS_AUTH_PARAMS` then this will
    /// be `nil`.)
    /// 
    /// Depending on the URI scheme, `g_uri_parse_params()` may be useful for
    /// further parsing this information.
    @inlinable var authParams: String! {
        /// Gets `uri`'s authentication parameters, which may contain
        /// ````-encoding, depending on the flags with which `uri` was created.
        /// (If `uri` was not created with `G_URI_FLAGS_HAS_AUTH_PARAMS` then this will
        /// be `nil`.)
        /// 
        /// Depending on the URI scheme, `g_uri_parse_params()` may be useful for
        /// further parsing this information.
        get {
            let rv = g_uri_get_auth_params(uri_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets `uri`'s flags set upon construction.
    @inlinable var flags: URIFlags {
        /// Gets `uri`'s flags set upon construction.
        get {
            let rv = URIFlags(g_uri_get_flags(uri_ptr))
            return rv
        }
    }

    /// Gets `uri`'s fragment, which may contain ````-encoding, depending on
    /// the flags with which `uri` was created.
    @inlinable var fragment: String! {
        /// Gets `uri`'s fragment, which may contain ````-encoding, depending on
        /// the flags with which `uri` was created.
        get {
            let rv = g_uri_get_fragment(uri_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets `uri`'s host. This will never have ````-encoded characters,
    /// unless it is non-UTF-8 (which can only be the case if `uri` was
    /// created with `G_URI_FLAGS_NON_DNS`).
    /// 
    /// If `uri` contained an IPv6 address literal, this value will be just
    /// that address, without the brackets around it that are necessary in
    /// the string form of the URI. Note that in this case there may also
    /// be a scope ID attached to the address. Eg, `fe80`1234`````em1` (or
    /// `fe80`1234`````25em1` if the string is still encoded).
    @inlinable var host: String! {
        /// Gets `uri`'s host. This will never have ````-encoded characters,
        /// unless it is non-UTF-8 (which can only be the case if `uri` was
        /// created with `G_URI_FLAGS_NON_DNS`).
        /// 
        /// If `uri` contained an IPv6 address literal, this value will be just
        /// that address, without the brackets around it that are necessary in
        /// the string form of the URI. Note that in this case there may also
        /// be a scope ID attached to the address. Eg, `fe80`1234`````em1` (or
        /// `fe80`1234`````25em1` if the string is still encoded).
        get {
            let rv = g_uri_get_host(uri_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets `uri`'s password, which may contain ````-encoding, depending on
    /// the flags with which `uri` was created. (If `uri` was not created
    /// with `G_URI_FLAGS_HAS_PASSWORD` then this will be `nil`.)
    @inlinable var password: String! {
        /// Gets `uri`'s password, which may contain ````-encoding, depending on
        /// the flags with which `uri` was created. (If `uri` was not created
        /// with `G_URI_FLAGS_HAS_PASSWORD` then this will be `nil`.)
        get {
            let rv = g_uri_get_password(uri_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets `uri`'s path, which may contain ````-encoding, depending on the
    /// flags with which `uri` was created.
    @inlinable var path: String! {
        /// Gets `uri`'s path, which may contain ````-encoding, depending on the
        /// flags with which `uri` was created.
        get {
            let rv = g_uri_get_path(uri_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets `uri`'s port.
    @inlinable var port: Int {
        /// Gets `uri`'s port.
        get {
            let rv = Int(g_uri_get_port(uri_ptr))
            return rv
        }
    }

    /// Gets `uri`'s query, which may contain ````-encoding, depending on the
    /// flags with which `uri` was created.
    /// 
    /// For queries consisting of a series of `name=value` parameters,
    /// `GUriParamsIter` or `g_uri_parse_params()` may be useful.
    @inlinable var query: String! {
        /// Gets `uri`'s query, which may contain ````-encoding, depending on the
        /// flags with which `uri` was created.
        /// 
        /// For queries consisting of a series of `name=value` parameters,
        /// `GUriParamsIter` or `g_uri_parse_params()` may be useful.
        get {
            let rv = g_uri_get_query(uri_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets `uri`'s scheme. Note that this will always be all-lowercase,
    /// regardless of the string or strings that `uri` was created from.
    @inlinable var scheme: String! {
        /// Gets `uri`'s scheme. Note that this will always be all-lowercase,
        /// regardless of the string or strings that `uri` was created from.
        get {
            let rv = g_uri_get_scheme(uri_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the ‘username’ component of `uri`'s userinfo, which may contain
    /// ````-encoding, depending on the flags with which `uri` was created.
    /// If `uri` was not created with `G_URI_FLAGS_HAS_PASSWORD` or
    /// `G_URI_FLAGS_HAS_AUTH_PARAMS`, this is the same as `g_uri_get_userinfo()`.
    @inlinable var user: String! {
        /// Gets the ‘username’ component of `uri`'s userinfo, which may contain
        /// ````-encoding, depending on the flags with which `uri` was created.
        /// If `uri` was not created with `G_URI_FLAGS_HAS_PASSWORD` or
        /// `G_URI_FLAGS_HAS_AUTH_PARAMS`, this is the same as `g_uri_get_userinfo()`.
        get {
            let rv = g_uri_get_user(uri_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets `uri`'s userinfo, which may contain ````-encoding, depending on
    /// the flags with which `uri` was created.
    @inlinable var userinfo: String! {
        /// Gets `uri`'s userinfo, which may contain ````-encoding, depending on
        /// the flags with which `uri` was created.
        get {
            let rv = g_uri_get_userinfo(uri_ptr).map({ String(cString: $0) })
            return rv
        }
    }


}



