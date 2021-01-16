import CGLib

// MARK: - IOChannel Record

/// The `IOChannelProtocol` protocol exposes the methods and properties of an underlying `GIOChannel` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IOChannel`.
/// Alternatively, use `IOChannelRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A data structure representing an IO Channel. The fields should be
/// considered private and should only be accessed with the following
/// functions.
public protocol IOChannelProtocol {
        /// Untyped pointer to the underlying `GIOChannel` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GIOChannel` instance.
    var io_channel_ptr: UnsafeMutablePointer<GIOChannel>! { get }

}

/// The `IOChannelRef` type acts as a lightweight Swift reference to an underlying `GIOChannel` instance.
/// It exposes methods that can operate on this data type through `IOChannelProtocol` conformance.
/// Use `IOChannelRef` only as an `unowned` reference to an existing `GIOChannel` instance.
///
/// A data structure representing an IO Channel. The fields should be
/// considered private and should only be accessed with the following
/// functions.
public struct IOChannelRef: IOChannelProtocol {
        /// Untyped pointer to the underlying `GIOChannel` instance.
    /// For type-safe access, use the generated, typed pointer `io_channel_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension IOChannelRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GIOChannel>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GIOChannel>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GIOChannel>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GIOChannel>?) {
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

    /// Reference intialiser for a related type that implements `IOChannelProtocol`
    @inlinable init<T: IOChannelProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOChannelProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOChannelProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOChannelProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOChannelProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOChannelProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Open a file `filename` as a `GIOChannel` using mode `mode`. This
    /// channel will be closed when the last reference to it is dropped,
    /// so there is no need to call `g_io_channel_close()` (though doing
    /// so will not cause problems, as long as no attempt is made to
    /// access the channel after it is closed).
    @inlinable init(file filename: UnsafePointer<gchar>!, mode: UnsafePointer<gchar>!) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_io_channel_new_file(filename, mode, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GIOChannel` given a file descriptor. On UNIX systems
    /// this works for plain files, pipes, and sockets.
    /// 
    /// The returned `GIOChannel` has a reference count of 1.
    /// 
    /// The default encoding for `GIOChannel` is UTF-8. If your application
    /// is reading output from a command using via pipe, you may need to set
    /// the encoding to the encoding of the current locale (see
    /// `g_get_charset()`) with the `g_io_channel_set_encoding()` function.
    /// By default, the fd passed will not be closed when the final reference
    /// to the `GIOChannel` data structure is dropped.
    /// 
    /// If you want to read raw binary data without interpretation, then
    /// call the `g_io_channel_set_encoding()` function with `nil` for the
    /// encoding argument.
    /// 
    /// This function is available in GLib on Windows, too, but you should
    /// avoid using it on Windows. The domain of file descriptors and
    /// sockets overlap. There is no way for GLib to know which one you mean
    /// in case the argument you pass to this function happens to be both a
    /// valid file descriptor and socket. If that happens a warning is
    /// issued, and GLib assumes that it is the file descriptor you mean.
    @inlinable init(unix fd: Int) {
        let rv = g_io_channel_unix_new(gint(fd))
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Open a file `filename` as a `GIOChannel` using mode `mode`. This
    /// channel will be closed when the last reference to it is dropped,
    /// so there is no need to call `g_io_channel_close()` (though doing
    /// so will not cause problems, as long as no attempt is made to
    /// access the channel after it is closed).
    @inlinable static func new(file filename: UnsafePointer<gchar>!, mode: UnsafePointer<gchar>!) throws -> IOChannelRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = IOChannelRef(gconstpointer: gconstpointer(g_io_channel_new_file(filename, mode, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Creates a new `GIOChannel` given a file descriptor. On UNIX systems
    /// this works for plain files, pipes, and sockets.
    /// 
    /// The returned `GIOChannel` has a reference count of 1.
    /// 
    /// The default encoding for `GIOChannel` is UTF-8. If your application
    /// is reading output from a command using via pipe, you may need to set
    /// the encoding to the encoding of the current locale (see
    /// `g_get_charset()`) with the `g_io_channel_set_encoding()` function.
    /// By default, the fd passed will not be closed when the final reference
    /// to the `GIOChannel` data structure is dropped.
    /// 
    /// If you want to read raw binary data without interpretation, then
    /// call the `g_io_channel_set_encoding()` function with `nil` for the
    /// encoding argument.
    /// 
    /// This function is available in GLib on Windows, too, but you should
    /// avoid using it on Windows. The domain of file descriptors and
    /// sockets overlap. There is no way for GLib to know which one you mean
    /// in case the argument you pass to this function happens to be both a
    /// valid file descriptor and socket. If that happens a warning is
    /// issued, and GLib assumes that it is the file descriptor you mean.
    @inlinable static func unixNew(unix fd: Int) -> IOChannelRef! {
        guard let rv = IOChannelRef(gconstpointer: gconstpointer(g_io_channel_unix_new(gint(fd)))) else { return nil }
        return rv
    }
}

/// The `IOChannel` type acts as a reference-counted owner of an underlying `GIOChannel` instance.
/// It provides the methods that can operate on this data type through `IOChannelProtocol` conformance.
/// Use `IOChannel` as a strong reference or owner of a `GIOChannel` instance.
///
/// A data structure representing an IO Channel. The fields should be
/// considered private and should only be accessed with the following
/// functions.
open class IOChannel: IOChannelProtocol {
        /// Untyped pointer to the underlying `GIOChannel` instance.
    /// For type-safe access, use the generated, typed pointer `io_channel_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOChannel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GIOChannel>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOChannel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GIOChannel>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOChannel` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOChannel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOChannel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GIOChannel>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOChannel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GIOChannel>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GIOChannel`.
    /// i.e., ownership is transferred to the `IOChannel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GIOChannel>) {
        ptr = UnsafeMutableRawPointer(op)
        g_io_channel_ref(ptr.assumingMemoryBound(to: GIOChannel.self))
    }

    /// Reference intialiser for a related type that implements `IOChannelProtocol`
    /// Will retain `GIOChannel`.
    /// - Parameter other: an instance of a related type that implements `IOChannelProtocol`
    @inlinable public init<T: IOChannelProtocol>(_ other: T) {
        ptr = other.ptr
        g_io_channel_ref(ptr.assumingMemoryBound(to: GIOChannel.self))
    }

    /// Releases the underlying `GIOChannel` instance using `g_io_channel_unref`.
    deinit {
        g_io_channel_unref(ptr.assumingMemoryBound(to: GIOChannel.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOChannelProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOChannelProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_io_channel_ref(ptr.assumingMemoryBound(to: GIOChannel.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOChannelProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOChannelProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_io_channel_ref(ptr.assumingMemoryBound(to: GIOChannel.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOChannelProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOChannelProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_io_channel_ref(ptr.assumingMemoryBound(to: GIOChannel.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOChannelProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOChannelProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_io_channel_ref(ptr.assumingMemoryBound(to: GIOChannel.self))
    }

    /// Open a file `filename` as a `GIOChannel` using mode `mode`. This
    /// channel will be closed when the last reference to it is dropped,
    /// so there is no need to call `g_io_channel_close()` (though doing
    /// so will not cause problems, as long as no attempt is made to
    /// access the channel after it is closed).
    @inlinable public init(file filename: UnsafePointer<gchar>!, mode: UnsafePointer<gchar>!) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_io_channel_new_file(filename, mode, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GIOChannel` given a file descriptor. On UNIX systems
    /// this works for plain files, pipes, and sockets.
    /// 
    /// The returned `GIOChannel` has a reference count of 1.
    /// 
    /// The default encoding for `GIOChannel` is UTF-8. If your application
    /// is reading output from a command using via pipe, you may need to set
    /// the encoding to the encoding of the current locale (see
    /// `g_get_charset()`) with the `g_io_channel_set_encoding()` function.
    /// By default, the fd passed will not be closed when the final reference
    /// to the `GIOChannel` data structure is dropped.
    /// 
    /// If you want to read raw binary data without interpretation, then
    /// call the `g_io_channel_set_encoding()` function with `nil` for the
    /// encoding argument.
    /// 
    /// This function is available in GLib on Windows, too, but you should
    /// avoid using it on Windows. The domain of file descriptors and
    /// sockets overlap. There is no way for GLib to know which one you mean
    /// in case the argument you pass to this function happens to be both a
    /// valid file descriptor and socket. If that happens a warning is
    /// issued, and GLib assumes that it is the file descriptor you mean.
    @inlinable public init(unix fd: Int) {
        let rv = g_io_channel_unix_new(gint(fd))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Open a file `filename` as a `GIOChannel` using mode `mode`. This
    /// channel will be closed when the last reference to it is dropped,
    /// so there is no need to call `g_io_channel_close()` (though doing
    /// so will not cause problems, as long as no attempt is made to
    /// access the channel after it is closed).
    @inlinable public static func new(file filename: UnsafePointer<gchar>!, mode: UnsafePointer<gchar>!) throws -> IOChannel! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = IOChannel(gconstpointer: gconstpointer(g_io_channel_new_file(filename, mode, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Creates a new `GIOChannel` given a file descriptor. On UNIX systems
    /// this works for plain files, pipes, and sockets.
    /// 
    /// The returned `GIOChannel` has a reference count of 1.
    /// 
    /// The default encoding for `GIOChannel` is UTF-8. If your application
    /// is reading output from a command using via pipe, you may need to set
    /// the encoding to the encoding of the current locale (see
    /// `g_get_charset()`) with the `g_io_channel_set_encoding()` function.
    /// By default, the fd passed will not be closed when the final reference
    /// to the `GIOChannel` data structure is dropped.
    /// 
    /// If you want to read raw binary data without interpretation, then
    /// call the `g_io_channel_set_encoding()` function with `nil` for the
    /// encoding argument.
    /// 
    /// This function is available in GLib on Windows, too, but you should
    /// avoid using it on Windows. The domain of file descriptors and
    /// sockets overlap. There is no way for GLib to know which one you mean
    /// in case the argument you pass to this function happens to be both a
    /// valid file descriptor and socket. If that happens a warning is
    /// issued, and GLib assumes that it is the file descriptor you mean.
    @inlinable public static func unixNew(unix fd: Int) -> IOChannel! {
        guard let rv = IOChannel(gconstpointer: gconstpointer(g_io_channel_unix_new(gint(fd)))) else { return nil }
        return rv
    }

}

// MARK: no IOChannel properties

// MARK: no IOChannel signals

// MARK: IOChannel has no signals
// MARK: IOChannel Record: IOChannelProtocol extension (methods and fields)
public extension IOChannelProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GIOChannel` instance.
    @inlinable var io_channel_ptr: UnsafeMutablePointer<GIOChannel>! { return ptr?.assumingMemoryBound(to: GIOChannel.self) }

    /// Close an IO channel. Any pending data to be written will be
    /// flushed, ignoring errors. The channel will not be freed until the
    /// last reference is dropped using `g_io_channel_unref()`.
    ///
    /// **close is deprecated:**
    /// Use g_io_channel_shutdown() instead.
    @available(*, deprecated) @inlinable func close() {
        g_io_channel_close(io_channel_ptr)
    
    }

    /// Flushes the write buffer for the GIOChannel.
    @inlinable func flush() throws -> GIOStatus {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_io_channel_flush(io_channel_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// This function returns a `GIOCondition` depending on whether there
    /// is data to be read/space to write data in the internal buffers in
    /// the `GIOChannel`. Only the flags `G_IO_IN` and `G_IO_OUT` may be set.
    @inlinable func getBufferCondition() -> IOCondition {
        let rv = IOCondition(g_io_channel_get_buffer_condition(io_channel_ptr))
        return rv
    }

    /// Gets the buffer size.
    @inlinable func getBufferSize() -> Int {
        let rv = Int(g_io_channel_get_buffer_size(io_channel_ptr))
        return rv
    }

    /// Returns whether `channel` is buffered.
    @inlinable func getBuffered() -> Bool {
        let rv = ((g_io_channel_get_buffered(io_channel_ptr)) != 0)
        return rv
    }

    /// Returns whether the file/socket/whatever associated with `channel`
    /// will be closed when `channel` receives its final unref and is
    /// destroyed. The default value of this is `true` for channels created
    /// by g_io_channel_new_file (), and `false` for all other channels.
    @inlinable func getCloseOnUnref() -> Bool {
        let rv = ((g_io_channel_get_close_on_unref(io_channel_ptr)) != 0)
        return rv
    }

    /// Gets the encoding for the input/output of the channel.
    /// The internal encoding is always UTF-8. The encoding `nil`
    /// makes the channel safe for binary data.
    @inlinable func getEncoding() -> String! {
        let rv = g_io_channel_get_encoding(io_channel_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the current flags for a `GIOChannel`, including read-only
    /// flags such as `G_IO_FLAG_IS_READABLE`.
    /// 
    /// The values of the flags `G_IO_FLAG_IS_READABLE` and `G_IO_FLAG_IS_WRITABLE`
    /// are cached for internal use by the channel when it is created.
    /// If they should change at some later point (e.g. partial shutdown
    /// of a socket with the UNIX `shutdown()` function), the user
    /// should immediately call `g_io_channel_get_flags()` to update
    /// the internal values of these flags.
    @inlinable func getFlags() -> IOFlags {
        let rv = IOFlags(g_io_channel_get_flags(io_channel_ptr))
        return rv
    }

    /// This returns the string that `GIOChannel` uses to determine
    /// where in the file a line break occurs. A value of `nil`
    /// indicates autodetection.
    @inlinable func getLineTerm(length: UnsafeMutablePointer<gint>!) -> String! {
        let rv = g_io_channel_get_line_term(io_channel_ptr, length).map({ String(cString: $0) })
        return rv
    }

    /// Initializes a `GIOChannel` struct.
    /// 
    /// This is called by each of the above functions when creating a
    /// `GIOChannel`, and so is not often needed by the application
    /// programmer (unless you are creating a new type of `GIOChannel`).
    @inlinable func init_() {
        g_io_channel_init(io_channel_ptr)
    
    }

    /// Reads data from a `GIOChannel`.
    ///
    /// **read is deprecated:**
    /// Use g_io_channel_read_chars() instead.
    @available(*, deprecated) @inlinable func read(buf: UnsafeMutablePointer<gchar>!, count: Int, bytesRead: UnsafeMutablePointer<gsize>!) -> GIOError {
        let rv = g_io_channel_read(io_channel_ptr, buf, gsize(count), bytesRead)
        return rv
    }

    /// Replacement for `g_io_channel_read()` with the new API.
    @inlinable func readChars(buf: UnsafeMutablePointer<gchar>!, count: Int, bytesRead: UnsafeMutablePointer<gsize>! = nil) throws -> GIOStatus {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_io_channel_read_chars(io_channel_ptr, buf, gsize(count), bytesRead, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Reads a line, including the terminating `character(s)`,
    /// from a `GIOChannel` into a newly-allocated string.
    /// `str_return` will contain allocated memory if the return
    /// is `G_IO_STATUS_NORMAL`.
    @inlinable func readLine(strReturn: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>!, length: UnsafeMutablePointer<gsize>! = nil, terminatorPos: UnsafeMutablePointer<gsize>! = nil) throws -> GIOStatus {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_io_channel_read_line(io_channel_ptr, strReturn, length, terminatorPos, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Reads a line from a `GIOChannel`, using a `GString` as a buffer.
    @inlinable func readLineString<StringTypeT: StringProtocol>(buffer: StringTypeT, terminatorPos: UnsafeMutablePointer<gsize>? = nil) throws -> GIOStatus {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_io_channel_read_line_string(io_channel_ptr, buffer.gstring_ptr, terminatorPos, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Reads all the remaining data from the file.
    @inlinable func readToEnd(strReturn: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>!, length: UnsafeMutablePointer<gsize>!) throws -> GIOStatus {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_io_channel_read_to_end(io_channel_ptr, strReturn, length, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Reads a Unicode character from `channel`.
    /// This function cannot be called on a channel with `nil` encoding.
    @inlinable func readUnichar(thechar: UnsafeMutablePointer<gunichar>!) throws -> GIOStatus {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_io_channel_read_unichar(io_channel_ptr, thechar, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Increments the reference count of a `GIOChannel`.
    @discardableResult @inlinable func ref() -> IOChannelRef! {
        guard let rv = IOChannelRef(gconstpointer: gconstpointer(g_io_channel_ref(io_channel_ptr))) else { return nil }
        return rv
    }

    /// Sets the current position in the `GIOChannel`, similar to the standard
    /// library function `fseek()`.
    ///
    /// **seek is deprecated:**
    /// Use g_io_channel_seek_position() instead.
    @available(*, deprecated) @inlinable func seek(offset: gint64, type: GSeekType) -> GIOError {
        let rv = g_io_channel_seek(io_channel_ptr, offset, type)
        return rv
    }

    /// Replacement for `g_io_channel_seek()` with the new API.
    @inlinable func seekPosition(offset: gint64, type: GSeekType) throws -> GIOStatus {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_io_channel_seek_position(io_channel_ptr, offset, type, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Sets the buffer size.
    @inlinable func setBuffer(size: Int) {
        g_io_channel_set_buffer_size(io_channel_ptr, gsize(size))
    
    }

    /// The buffering state can only be set if the channel's encoding
    /// is `nil`. For any other encoding, the channel must be buffered.
    /// 
    /// A buffered channel can only be set unbuffered if the channel's
    /// internal buffers have been flushed. Newly created channels or
    /// channels which have returned `G_IO_STATUS_EOF`
    /// not require such a flush. For write-only channels, a call to
    /// g_io_channel_flush () is sufficient. For all other channels,
    /// the buffers may be flushed by a call to g_io_channel_seek_position ().
    /// This includes the possibility of seeking with seek type `G_SEEK_CUR`
    /// and an offset of zero. Note that this means that socket-based
    /// channels cannot be set unbuffered once they have had data
    /// read from them.
    /// 
    /// On unbuffered channels, it is safe to mix read and write
    /// calls from the new and old APIs, if this is necessary for
    /// maintaining old code.
    /// 
    /// The default state of the channel is buffered.
    @inlinable func set(buffered: Bool) {
        g_io_channel_set_buffered(io_channel_ptr, gboolean((buffered) ? 1 : 0))
    
    }

    /// Whether to close the channel on the final unref of the `GIOChannel`
    /// data structure. The default value of this is `true` for channels
    /// created by g_io_channel_new_file (), and `false` for all other channels.
    /// 
    /// Setting this flag to `true` for a channel you have already closed
    /// can cause problems when the final reference to the `GIOChannel` is dropped.
    @inlinable func setCloseOnUnref(doClose: Bool) {
        g_io_channel_set_close_on_unref(io_channel_ptr, gboolean((doClose) ? 1 : 0))
    
    }

    /// Sets the encoding for the input/output of the channel.
    /// The internal encoding is always UTF-8. The default encoding
    /// for the external file is UTF-8.
    /// 
    /// The encoding `nil` is safe to use with binary data.
    /// 
    /// The encoding can only be set if one of the following conditions
    /// is true:
    /// 
    /// - The channel was just created, and has not been written to or read from yet.
    /// 
    /// - The channel is write-only.
    /// 
    /// - The channel is a file, and the file pointer was just repositioned
    ///   by a call to `g_io_channel_seek_position()`. (This flushes all the
    ///   internal buffers.)
    /// 
    /// - The current encoding is `nil` or UTF-8.
    /// 
    /// - One of the (new API) read functions has just returned `G_IO_STATUS_EOF`
    ///   (or, in the case of `g_io_channel_read_to_end()`, `G_IO_STATUS_NORMAL`).
    /// 
    /// -  One of the functions `g_io_channel_read_chars()` or
    ///    `g_io_channel_read_unichar()` has returned `G_IO_STATUS_AGAIN` or
    ///    `G_IO_STATUS_ERROR`. This may be useful in the case of
    ///    `G_CONVERT_ERROR_ILLEGAL_SEQUENCE`.
    ///    Returning one of these statuses from `g_io_channel_read_line()`,
    ///    `g_io_channel_read_line_string()`, or `g_io_channel_read_to_end()`
    ///    does not guarantee that the encoding can be changed.
    /// 
    /// Channels which do not meet one of the above conditions cannot call
    /// `g_io_channel_seek_position()` with an offset of `G_SEEK_CUR`, and, if
    /// they are "seekable", cannot call `g_io_channel_write_chars()` after
    /// calling one of the API "read" functions.
    @inlinable func set(encoding: UnsafePointer<gchar>? = nil) throws -> GIOStatus {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_io_channel_set_encoding(io_channel_ptr, encoding, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Sets the (writeable) flags in `channel` to (`flags` & `G_IO_FLAG_SET_MASK`).
    @inlinable func set(flags: IOFlags) throws -> GIOStatus {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_io_channel_set_flags(io_channel_ptr, flags.value, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// This sets the string that `GIOChannel` uses to determine
    /// where in the file a line break occurs.
    @inlinable func set(lineTerm: UnsafePointer<gchar>? = nil, length: Int) {
        g_io_channel_set_line_term(io_channel_ptr, lineTerm, gint(length))
    
    }

    /// Close an IO channel. Any pending data to be written will be
    /// flushed if `flush` is `true`. The channel will not be freed until the
    /// last reference is dropped using `g_io_channel_unref()`.
    @inlinable func shutdown(flush: Bool) throws -> GIOStatus {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_io_channel_shutdown(io_channel_ptr, gboolean((flush) ? 1 : 0), &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Returns the file descriptor of the `GIOChannel`.
    /// 
    /// On Windows this function returns the file descriptor or socket of
    /// the `GIOChannel`.
    @inlinable func unixGetFd() -> Int {
        let rv = Int(g_io_channel_unix_get_fd(io_channel_ptr))
        return rv
    }

    /// Decrements the reference count of a `GIOChannel`.
    @inlinable func unref() {
        g_io_channel_unref(io_channel_ptr)
    
    }

    /// Writes data to a `GIOChannel`.
    ///
    /// **write is deprecated:**
    /// Use g_io_channel_write_chars() instead.
    @available(*, deprecated) @inlinable func write(buf: UnsafePointer<gchar>!, count: Int, bytesWritten: UnsafeMutablePointer<gsize>!) -> GIOError {
        let rv = g_io_channel_write(io_channel_ptr, buf, gsize(count), bytesWritten)
        return rv
    }

    /// Replacement for `g_io_channel_write()` with the new API.
    /// 
    /// On seekable channels with encodings other than `nil` or UTF-8, generic
    /// mixing of reading and writing is not allowed. A call to g_io_channel_write_chars ()
    /// may only be made on a channel from which data has been read in the
    /// cases described in the documentation for g_io_channel_set_encoding ().
    @inlinable func writeChars(buf: UnsafePointer<gchar>!, count: gssize, bytesWritten: UnsafeMutablePointer<gsize>!) throws -> GIOStatus {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_io_channel_write_chars(io_channel_ptr, buf, count, bytesWritten, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Writes a Unicode character to `channel`.
    /// This function cannot be called on a channel with `nil` encoding.
    @inlinable func writeUnichar(thechar: gunichar) throws -> GIOStatus {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_io_channel_write_unichar(io_channel_ptr, thechar, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Adds the `GIOChannel` into the default main loop context
    /// with the default priority.
    @inlinable func ioAddWatch(condition: IOCondition, `func`: GIOFunc?, userData: gpointer! = nil) -> Int {
        let rv = Int(g_io_add_watch(io_channel_ptr, condition.value, `func`, userData))
        return rv
    }

    /// Adds the `GIOChannel` into the default main loop context
    /// with the given priority.
    /// 
    /// This internally creates a main loop source using `g_io_create_watch()`
    /// and attaches it to the main loop context with `g_source_attach()`.
    /// You can do these steps manually if you need greater control.
    @inlinable func ioAddWatchFull(priority: Int, condition: IOCondition, `func`: GIOFunc?, userData: gpointer! = nil, notify: GDestroyNotify?) -> Int {
        let rv = Int(g_io_add_watch_full(io_channel_ptr, gint(priority), condition.value, `func`, userData, notify))
        return rv
    }

    /// Creates a `GSource` that's dispatched when `condition` is met for the
    /// given `channel`. For example, if condition is `G_IO_IN`, the source will
    /// be dispatched when there's data available for reading.
    /// 
    /// The callback function invoked by the `GSource` should be added with
    /// `g_source_set_callback()`, but it has type `GIOFunc` (not `GSourceFunc`).
    /// 
    /// `g_io_add_watch()` is a simpler interface to this same functionality, for
    /// the case where you want to add the source to the default main loop context
    /// at the default priority.
    /// 
    /// On Windows, polling a `GSource` created to watch a channel for a socket
    /// puts the socket in non-blocking mode. This is a side-effect of the
    /// implementation and unavoidable.
    @inlinable func ioCreateWatch(condition: IOCondition) -> SourceRef! {
        let rv = SourceRef(gconstpointer: gconstpointer(g_io_create_watch(io_channel_ptr, condition.value)))
        return rv
    }
    /// This function returns a `GIOCondition` depending on whether there
    /// is data to be read/space to write data in the internal buffers in
    /// the `GIOChannel`. Only the flags `G_IO_IN` and `G_IO_OUT` may be set.
    @inlinable var bufferCondition: IOCondition {
        /// This function returns a `GIOCondition` depending on whether there
        /// is data to be read/space to write data in the internal buffers in
        /// the `GIOChannel`. Only the flags `G_IO_IN` and `G_IO_OUT` may be set.
        get {
            let rv = IOCondition(g_io_channel_get_buffer_condition(io_channel_ptr))
            return rv
        }
    }

    /// Gets the buffer size.
    @inlinable var bufferSize: Int {
        /// Gets the buffer size.
        get {
            let rv = Int(g_io_channel_get_buffer_size(io_channel_ptr))
            return rv
        }
        /// Sets the buffer size.
        nonmutating set {
            g_io_channel_set_buffer_size(io_channel_ptr, gsize(newValue))
        }
    }

    /// Returns whether `channel` is buffered.
    @inlinable var buffered: Bool {
        /// Returns whether `channel` is buffered.
        get {
            let rv = ((g_io_channel_get_buffered(io_channel_ptr)) != 0)
            return rv
        }
        /// The buffering state can only be set if the channel's encoding
        /// is `nil`. For any other encoding, the channel must be buffered.
        /// 
        /// A buffered channel can only be set unbuffered if the channel's
        /// internal buffers have been flushed. Newly created channels or
        /// channels which have returned `G_IO_STATUS_EOF`
        /// not require such a flush. For write-only channels, a call to
        /// g_io_channel_flush () is sufficient. For all other channels,
        /// the buffers may be flushed by a call to g_io_channel_seek_position ().
        /// This includes the possibility of seeking with seek type `G_SEEK_CUR`
        /// and an offset of zero. Note that this means that socket-based
        /// channels cannot be set unbuffered once they have had data
        /// read from them.
        /// 
        /// On unbuffered channels, it is safe to mix read and write
        /// calls from the new and old APIs, if this is necessary for
        /// maintaining old code.
        /// 
        /// The default state of the channel is buffered.
        nonmutating set {
            g_io_channel_set_buffered(io_channel_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns whether the file/socket/whatever associated with `channel`
    /// will be closed when `channel` receives its final unref and is
    /// destroyed. The default value of this is `true` for channels created
    /// by g_io_channel_new_file (), and `false` for all other channels.
    @inlinable var closeOnUnref: Bool {
        /// Returns whether the file/socket/whatever associated with `channel`
        /// will be closed when `channel` receives its final unref and is
        /// destroyed. The default value of this is `true` for channels created
        /// by g_io_channel_new_file (), and `false` for all other channels.
        get {
            let rv = ((g_io_channel_get_close_on_unref(io_channel_ptr)) != 0)
            return rv
        }
        /// Whether to close the channel on the final unref of the `GIOChannel`
        /// data structure. The default value of this is `true` for channels
        /// created by g_io_channel_new_file (), and `false` for all other channels.
        /// 
        /// Setting this flag to `true` for a channel you have already closed
        /// can cause problems when the final reference to the `GIOChannel` is dropped.
        nonmutating set {
            g_io_channel_set_close_on_unref(io_channel_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the encoding for the input/output of the channel.
    /// The internal encoding is always UTF-8. The encoding `nil`
    /// makes the channel safe for binary data.
    @inlinable var encoding: String! {
        /// Gets the encoding for the input/output of the channel.
        /// The internal encoding is always UTF-8. The encoding `nil`
        /// makes the channel safe for binary data.
        get {
            let rv = g_io_channel_get_encoding(io_channel_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the encoding for the input/output of the channel.
        /// The internal encoding is always UTF-8. The default encoding
        /// for the external file is UTF-8.
        /// 
        /// The encoding `nil` is safe to use with binary data.
        /// 
        /// The encoding can only be set if one of the following conditions
        /// is true:
        /// 
        /// - The channel was just created, and has not been written to or read from yet.
        /// 
        /// - The channel is write-only.
        /// 
        /// - The channel is a file, and the file pointer was just repositioned
        ///   by a call to `g_io_channel_seek_position()`. (This flushes all the
        ///   internal buffers.)
        /// 
        /// - The current encoding is `nil` or UTF-8.
        /// 
        /// - One of the (new API) read functions has just returned `G_IO_STATUS_EOF`
        ///   (or, in the case of `g_io_channel_read_to_end()`, `G_IO_STATUS_NORMAL`).
        /// 
        /// -  One of the functions `g_io_channel_read_chars()` or
        ///    `g_io_channel_read_unichar()` has returned `G_IO_STATUS_AGAIN` or
        ///    `G_IO_STATUS_ERROR`. This may be useful in the case of
        ///    `G_CONVERT_ERROR_ILLEGAL_SEQUENCE`.
        ///    Returning one of these statuses from `g_io_channel_read_line()`,
        ///    `g_io_channel_read_line_string()`, or `g_io_channel_read_to_end()`
        ///    does not guarantee that the encoding can be changed.
        /// 
        /// Channels which do not meet one of the above conditions cannot call
        /// `g_io_channel_seek_position()` with an offset of `G_SEEK_CUR`, and, if
        /// they are "seekable", cannot call `g_io_channel_write_chars()` after
        /// calling one of the API "read" functions.
        nonmutating set {
            var error: UnsafeMutablePointer<GError>?
            _ = g_io_channel_set_encoding(io_channel_ptr, newValue, &error)
            g_log(messagePtr: error?.pointee.message, level: .error)
        }
    }

    /// Gets the current flags for a `GIOChannel`, including read-only
    /// flags such as `G_IO_FLAG_IS_READABLE`.
    /// 
    /// The values of the flags `G_IO_FLAG_IS_READABLE` and `G_IO_FLAG_IS_WRITABLE`
    /// are cached for internal use by the channel when it is created.
    /// If they should change at some later point (e.g. partial shutdown
    /// of a socket with the UNIX `shutdown()` function), the user
    /// should immediately call `g_io_channel_get_flags()` to update
    /// the internal values of these flags.
    @inlinable var flags: IOFlags {
        /// Gets the current flags for a `GIOChannel`, including read-only
        /// flags such as `G_IO_FLAG_IS_READABLE`.
        /// 
        /// The values of the flags `G_IO_FLAG_IS_READABLE` and `G_IO_FLAG_IS_WRITABLE`
        /// are cached for internal use by the channel when it is created.
        /// If they should change at some later point (e.g. partial shutdown
        /// of a socket with the UNIX `shutdown()` function), the user
        /// should immediately call `g_io_channel_get_flags()` to update
        /// the internal values of these flags.
        get {
            let rv = IOFlags(g_io_channel_get_flags(io_channel_ptr))
            return rv
        }
        /// Sets the (writeable) flags in `channel` to (`flags` & `G_IO_FLAG_SET_MASK`).
        nonmutating set {
            var error: UnsafeMutablePointer<GError>?
            _ = g_io_channel_set_flags(io_channel_ptr, newValue.value, &error)
            g_log(messagePtr: error?.pointee.message, level: .error)
        }
    }

    // var refCount is unavailable because ref_count is private

    // var funcs is unavailable because funcs is private

    // var _encoding is unavailable because encoding is private

    // var readCd is unavailable because read_cd is private

    // var writeCd is unavailable because write_cd is private

    // var lineTerm is unavailable because line_term is private

    // var lineTermLen is unavailable because line_term_len is private

    // var bufSize is unavailable because buf_size is private

    // var readBuf is unavailable because read_buf is private

    // var encodedReadBuf is unavailable because encoded_read_buf is private

    // var writeBuf is unavailable because write_buf is private

    // var partialWriteBuf is unavailable because partial_write_buf is private

    // var useBuffer is unavailable because use_buffer is private

    // var doEncode is unavailable because do_encode is private

    // var _closeOnUnref is unavailable because close_on_unref is private

    // var isReadable is unavailable because is_readable is private

    // var isWriteable is unavailable because is_writeable is private

    // var isSeekable is unavailable because is_seekable is private

    // var reserved1 is unavailable because reserved1 is private

    // var reserved2 is unavailable because reserved2 is private

}



// MARK: - IOFuncs Record

/// The `IOFuncsProtocol` protocol exposes the methods and properties of an underlying `GIOFuncs` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IOFuncs`.
/// Alternatively, use `IOFuncsRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A table of functions used to handle different types of `GIOChannel`
/// in a generic way.
public protocol IOFuncsProtocol {
        /// Untyped pointer to the underlying `GIOFuncs` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GIOFuncs` instance.
    var _ptr: UnsafeMutablePointer<GIOFuncs>! { get }

}

/// The `IOFuncsRef` type acts as a lightweight Swift reference to an underlying `GIOFuncs` instance.
/// It exposes methods that can operate on this data type through `IOFuncsProtocol` conformance.
/// Use `IOFuncsRef` only as an `unowned` reference to an existing `GIOFuncs` instance.
///
/// A table of functions used to handle different types of `GIOChannel`
/// in a generic way.
public struct IOFuncsRef: IOFuncsProtocol {
        /// Untyped pointer to the underlying `GIOFuncs` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension IOFuncsRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GIOFuncs>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GIOFuncs>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GIOFuncs>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GIOFuncs>?) {
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

    /// Reference intialiser for a related type that implements `IOFuncsProtocol`
    @inlinable init<T: IOFuncsProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOFuncsProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOFuncsProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOFuncsProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOFuncsProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOFuncsProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `IOFuncs` type acts as an owner of an underlying `GIOFuncs` instance.
/// It provides the methods that can operate on this data type through `IOFuncsProtocol` conformance.
/// Use `IOFuncs` as a strong reference or owner of a `GIOFuncs` instance.
///
/// A table of functions used to handle different types of `GIOChannel`
/// in a generic way.
open class IOFuncs: IOFuncsProtocol {
        /// Untyped pointer to the underlying `GIOFuncs` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOFuncs` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GIOFuncs>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOFuncs` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GIOFuncs>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOFuncs` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOFuncs` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOFuncs` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GIOFuncs>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOFuncs` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GIOFuncs>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GIOFuncs` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `IOFuncs` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GIOFuncs>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GIOFuncs, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `IOFuncsProtocol`
    /// `GIOFuncs` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `IOFuncsProtocol`
    @inlinable public init<T: IOFuncsProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GIOFuncs, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GIOFuncs`.
    deinit {
        // no reference counting for GIOFuncs, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOFuncsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOFuncsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GIOFuncs, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOFuncsProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOFuncsProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GIOFuncs, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOFuncsProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOFuncsProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GIOFuncs, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOFuncsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOFuncsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GIOFuncs, cannot ref(_ptr)
    }



}

// MARK: no IOFuncs properties

// MARK: no IOFuncs signals

// MARK: IOFuncs has no signals
// MARK: IOFuncs Record: IOFuncsProtocol extension (methods and fields)
public extension IOFuncsProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GIOFuncs` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GIOFuncs>! { return ptr?.assumingMemoryBound(to: GIOFuncs.self) }


    // var ioRead is unavailable because io_read is void

    // var ioWrite is unavailable because io_write is void

    // var ioSeek is unavailable because io_seek is void

    // var ioClose is unavailable because io_close is void

    // var ioCreateWatch is unavailable because io_create_watch is void

    // var ioFree is unavailable because io_free is void

    // var ioSetFlags is unavailable because io_set_flags is void

    // var ioGetFlags is unavailable because io_get_flags is void

}



// MARK: - KeyFile Record

/// The `KeyFileProtocol` protocol exposes the methods and properties of an underlying `GKeyFile` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `KeyFile`.
/// Alternatively, use `KeyFileRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The GKeyFile struct contains only private data
/// and should not be accessed directly.
public protocol KeyFileProtocol {
        /// Untyped pointer to the underlying `GKeyFile` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GKeyFile` instance.
    var key_file_ptr: UnsafeMutablePointer<GKeyFile>! { get }

}

/// The `KeyFileRef` type acts as a lightweight Swift reference to an underlying `GKeyFile` instance.
/// It exposes methods that can operate on this data type through `KeyFileProtocol` conformance.
/// Use `KeyFileRef` only as an `unowned` reference to an existing `GKeyFile` instance.
///
/// The GKeyFile struct contains only private data
/// and should not be accessed directly.
public struct KeyFileRef: KeyFileProtocol {
        /// Untyped pointer to the underlying `GKeyFile` instance.
    /// For type-safe access, use the generated, typed pointer `key_file_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension KeyFileRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GKeyFile>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GKeyFile>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GKeyFile>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GKeyFile>?) {
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

    /// Reference intialiser for a related type that implements `KeyFileProtocol`
    @inlinable init<T: KeyFileProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyFileProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyFileProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyFileProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyFileProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyFileProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new empty `GKeyFile` object. Use
    /// `g_key_file_load_from_file()`, `g_key_file_load_from_data()`,
    /// `g_key_file_load_from_dirs()` or `g_key_file_load_from_data_dirs()` to
    /// read an existing key file.
    @inlinable init() {
        let rv = g_key_file_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `KeyFile` type acts as a reference-counted owner of an underlying `GKeyFile` instance.
/// It provides the methods that can operate on this data type through `KeyFileProtocol` conformance.
/// Use `KeyFile` as a strong reference or owner of a `GKeyFile` instance.
///
/// The GKeyFile struct contains only private data
/// and should not be accessed directly.
open class KeyFile: KeyFileProtocol {
        /// Untyped pointer to the underlying `GKeyFile` instance.
    /// For type-safe access, use the generated, typed pointer `key_file_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `KeyFile` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GKeyFile>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `KeyFile` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GKeyFile>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `KeyFile` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `KeyFile` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `KeyFile` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GKeyFile>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `KeyFile` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GKeyFile>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GKeyFile`.
    /// i.e., ownership is transferred to the `KeyFile` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GKeyFile>) {
        ptr = UnsafeMutableRawPointer(op)
        g_key_file_ref(ptr.assumingMemoryBound(to: GKeyFile.self))
    }

    /// Reference intialiser for a related type that implements `KeyFileProtocol`
    /// Will retain `GKeyFile`.
    /// - Parameter other: an instance of a related type that implements `KeyFileProtocol`
    @inlinable public init<T: KeyFileProtocol>(_ other: T) {
        ptr = other.ptr
        g_key_file_ref(ptr.assumingMemoryBound(to: GKeyFile.self))
    }

    /// Releases the underlying `GKeyFile` instance using `g_key_file_unref`.
    deinit {
        g_key_file_unref(ptr.assumingMemoryBound(to: GKeyFile.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyFileProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyFileProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_key_file_ref(ptr.assumingMemoryBound(to: GKeyFile.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyFileProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyFileProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_key_file_ref(ptr.assumingMemoryBound(to: GKeyFile.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyFileProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyFileProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_key_file_ref(ptr.assumingMemoryBound(to: GKeyFile.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyFileProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeyFileProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_key_file_ref(ptr.assumingMemoryBound(to: GKeyFile.self))
    }

    /// Creates a new empty `GKeyFile` object. Use
    /// `g_key_file_load_from_file()`, `g_key_file_load_from_data()`,
    /// `g_key_file_load_from_dirs()` or `g_key_file_load_from_data_dirs()` to
    /// read an existing key file.
    @inlinable public init() {
        let rv = g_key_file_new()
        ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no KeyFile properties

// MARK: no KeyFile signals

// MARK: KeyFile has no signals
// MARK: KeyFile Record: KeyFileProtocol extension (methods and fields)
public extension KeyFileProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GKeyFile` instance.
    @inlinable var key_file_ptr: UnsafeMutablePointer<GKeyFile>! { return ptr?.assumingMemoryBound(to: GKeyFile.self) }

    /// Clears all keys and groups from `key_file`, and decreases the
    /// reference count by 1. If the reference count reaches zero,
    /// frees the key file and all its allocated memory.
    @inlinable func free() {
        g_key_file_free(key_file_ptr)
    
    }

    /// Returns the value associated with `key` under `group_name` as a
    /// boolean.
    /// 
    /// If `key` cannot be found then `false` is returned and `error` is set
    /// to `G_KEY_FILE_ERROR_KEY_NOT_FOUND`. Likewise, if the value
    /// associated with `key` cannot be interpreted as a boolean then `false`
    /// is returned and `error` is set to `G_KEY_FILE_ERROR_INVALID_VALUE`.
    @inlinable func getBoolean(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_key_file_get_boolean(key_file_ptr, groupName, key, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Returns the values associated with `key` under `group_name` as
    /// booleans.
    /// 
    /// If `key` cannot be found then `nil` is returned and `error` is set to
    /// `G_KEY_FILE_ERROR_KEY_NOT_FOUND`. Likewise, if the values associated
    /// with `key` cannot be interpreted as booleans then `nil` is returned
    /// and `error` is set to `G_KEY_FILE_ERROR_INVALID_VALUE`.
    @inlinable func getBooleanList(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!, length: UnsafeMutablePointer<gsize>!) throws -> UnsafeMutablePointer<gboolean>! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_key_file_get_boolean_list(key_file_ptr, groupName, key, length, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Retrieves a comment above `key` from `group_name`.
    /// If `key` is `nil` then `comment` will be read from above
    /// `group_name`. If both `key` and `group_name` are `nil`, then
    /// `comment` will be read from above the first group in the file.
    /// 
    /// Note that the returned string does not include the '#' comment markers,
    /// but does include any whitespace after them (on each line). It includes
    /// the line breaks between lines, but does not include the final line break.
    @inlinable func getComment(groupName: UnsafePointer<gchar>? = nil, key: UnsafePointer<gchar>!) throws -> String! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_key_file_get_comment(key_file_ptr, groupName, key, &error).map({ String(cString: $0) })
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Returns the value associated with `key` under `group_name` as a
    /// double. If `group_name` is `nil`, the start_group is used.
    /// 
    /// If `key` cannot be found then 0.0 is returned and `error` is set to
    /// `G_KEY_FILE_ERROR_KEY_NOT_FOUND`. Likewise, if the value associated
    /// with `key` cannot be interpreted as a double then 0.0 is returned
    /// and `error` is set to `G_KEY_FILE_ERROR_INVALID_VALUE`.
    @inlinable func getDouble(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!) throws -> Double {
        var error: UnsafeMutablePointer<GError>?
        let rv = Double(g_key_file_get_double(key_file_ptr, groupName, key, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Returns the values associated with `key` under `group_name` as
    /// doubles.
    /// 
    /// If `key` cannot be found then `nil` is returned and `error` is set to
    /// `G_KEY_FILE_ERROR_KEY_NOT_FOUND`. Likewise, if the values associated
    /// with `key` cannot be interpreted as doubles then `nil` is returned
    /// and `error` is set to `G_KEY_FILE_ERROR_INVALID_VALUE`.
    @inlinable func getDoubleList(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!, length: UnsafeMutablePointer<gsize>!) throws -> UnsafeMutablePointer<gdouble>! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_key_file_get_double_list(key_file_ptr, groupName, key, length, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Returns all groups in the key file loaded with `key_file`.
    /// The array of returned groups will be `nil`-terminated, so
    /// `length` may optionally be `nil`.
    @inlinable func getGroups(length: UnsafeMutablePointer<gsize>! = nil) -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        let rv = g_key_file_get_groups(key_file_ptr, length)
        return rv
    }

    /// Returns the value associated with `key` under `group_name` as a signed
    /// 64-bit integer. This is similar to `g_key_file_get_integer()` but can return
    /// 64-bit results without truncation.
    @inlinable func getInt64(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!) throws -> gint64 {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_key_file_get_int64(key_file_ptr, groupName, key, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Returns the value associated with `key` under `group_name` as an
    /// integer.
    /// 
    /// If `key` cannot be found then 0 is returned and `error` is set to
    /// `G_KEY_FILE_ERROR_KEY_NOT_FOUND`. Likewise, if the value associated
    /// with `key` cannot be interpreted as an integer, or is out of range
    /// for a `gint`, then 0 is returned
    /// and `error` is set to `G_KEY_FILE_ERROR_INVALID_VALUE`.
    @inlinable func getInteger(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!) throws -> Int {
        var error: UnsafeMutablePointer<GError>?
        let rv = Int(g_key_file_get_integer(key_file_ptr, groupName, key, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Returns the values associated with `key` under `group_name` as
    /// integers.
    /// 
    /// If `key` cannot be found then `nil` is returned and `error` is set to
    /// `G_KEY_FILE_ERROR_KEY_NOT_FOUND`. Likewise, if the values associated
    /// with `key` cannot be interpreted as integers, or are out of range for
    /// `gint`, then `nil` is returned
    /// and `error` is set to `G_KEY_FILE_ERROR_INVALID_VALUE`.
    @inlinable func getIntegerList(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!, length: UnsafeMutablePointer<gsize>!) throws -> UnsafeMutablePointer<gint>! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_key_file_get_integer_list(key_file_ptr, groupName, key, length, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Returns all keys for the group name `group_name`.  The array of
    /// returned keys will be `nil`-terminated, so `length` may
    /// optionally be `nil`. In the event that the `group_name` cannot
    /// be found, `nil` is returned and `error` is set to
    /// `G_KEY_FILE_ERROR_GROUP_NOT_FOUND`.
    @inlinable func getKeys(groupName: UnsafePointer<gchar>!, length: UnsafeMutablePointer<gsize>! = nil) throws -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_key_file_get_keys(key_file_ptr, groupName, length, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Returns the actual locale which the result of
    /// `g_key_file_get_locale_string()` or `g_key_file_get_locale_string_list()`
    /// came from.
    /// 
    /// If calling `g_key_file_get_locale_string()` or
    /// `g_key_file_get_locale_string_list()` with exactly the same `key_file`,
    /// `group_name`, `key` and `locale`, the result of those functions will
    /// have originally been tagged with the locale that is the result of
    /// this function.
    @inlinable func getLocaleForKey(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!, locale: UnsafePointer<gchar>? = nil) -> String! {
        let rv = g_key_file_get_locale_for_key(key_file_ptr, groupName, key, locale).map({ String(cString: $0) })
        return rv
    }

    /// Returns the value associated with `key` under `group_name`
    /// translated in the given `locale` if available.  If `locale` is
    /// `nil` then the current locale is assumed.
    /// 
    /// If `locale` is to be non-`nil`, or if the current locale will change over
    /// the lifetime of the `GKeyFile`, it must be loaded with
    /// `G_KEY_FILE_KEEP_TRANSLATIONS` in order to load strings for all locales.
    /// 
    /// If `key` cannot be found then `nil` is returned and `error` is set
    /// to `G_KEY_FILE_ERROR_KEY_NOT_FOUND`. If the value associated
    /// with `key` cannot be interpreted or no suitable translation can
    /// be found then the untranslated value is returned.
    @inlinable func getLocaleString(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!, locale: UnsafePointer<gchar>? = nil) throws -> String! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_key_file_get_locale_string(key_file_ptr, groupName, key, locale, &error).map({ String(cString: $0) })
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Returns the values associated with `key` under `group_name`
    /// translated in the given `locale` if available.  If `locale` is
    /// `nil` then the current locale is assumed.
    /// 
    /// If `locale` is to be non-`nil`, or if the current locale will change over
    /// the lifetime of the `GKeyFile`, it must be loaded with
    /// `G_KEY_FILE_KEEP_TRANSLATIONS` in order to load strings for all locales.
    /// 
    /// If `key` cannot be found then `nil` is returned and `error` is set
    /// to `G_KEY_FILE_ERROR_KEY_NOT_FOUND`. If the values associated
    /// with `key` cannot be interpreted or no suitable translations
    /// can be found then the untranslated values are returned. The
    /// returned array is `nil`-terminated, so `length` may optionally
    /// be `nil`.
    @inlinable func getLocaleStringList(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!, locale: UnsafePointer<gchar>? = nil, length: UnsafeMutablePointer<gsize>! = nil) throws -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_key_file_get_locale_string_list(key_file_ptr, groupName, key, locale, length, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Returns the name of the start group of the file.
    @inlinable func getStartGroup() -> String! {
        let rv = g_key_file_get_start_group(key_file_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns the string value associated with `key` under `group_name`.
    /// Unlike `g_key_file_get_value()`, this function handles escape sequences
    /// like \s.
    /// 
    /// In the event the key cannot be found, `nil` is returned and
    /// `error` is set to `G_KEY_FILE_ERROR_KEY_NOT_FOUND`.  In the
    /// event that the `group_name` cannot be found, `nil` is returned
    /// and `error` is set to `G_KEY_FILE_ERROR_GROUP_NOT_FOUND`.
    @inlinable func getString(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!) throws -> String! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_key_file_get_string(key_file_ptr, groupName, key, &error).map({ String(cString: $0) })
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Returns the values associated with `key` under `group_name`.
    /// 
    /// In the event the key cannot be found, `nil` is returned and
    /// `error` is set to `G_KEY_FILE_ERROR_KEY_NOT_FOUND`.  In the
    /// event that the `group_name` cannot be found, `nil` is returned
    /// and `error` is set to `G_KEY_FILE_ERROR_GROUP_NOT_FOUND`.
    @inlinable func getStringList(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!, length: UnsafeMutablePointer<gsize>! = nil) throws -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_key_file_get_string_list(key_file_ptr, groupName, key, length, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Returns the value associated with `key` under `group_name` as an unsigned
    /// 64-bit integer. This is similar to `g_key_file_get_integer()` but can return
    /// large positive results without truncation.
    @inlinable func getUint64(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!) throws -> guint64 {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_key_file_get_uint64(key_file_ptr, groupName, key, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Returns the raw value associated with `key` under `group_name`.
    /// Use `g_key_file_get_string()` to retrieve an unescaped UTF-8 string.
    /// 
    /// In the event the key cannot be found, `nil` is returned and
    /// `error` is set to `G_KEY_FILE_ERROR_KEY_NOT_FOUND`.  In the
    /// event that the `group_name` cannot be found, `nil` is returned
    /// and `error` is set to `G_KEY_FILE_ERROR_GROUP_NOT_FOUND`.
    @inlinable func getValue(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!) throws -> String! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_key_file_get_value(key_file_ptr, groupName, key, &error).map({ String(cString: $0) })
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Looks whether the key file has the group `group_name`.
    @inlinable func hasGroup(groupName: UnsafePointer<gchar>!) -> Bool {
        let rv = ((g_key_file_has_group(key_file_ptr, groupName)) != 0)
        return rv
    }

    /// Looks whether the key file has the key `key` in the group
    /// `group_name`.
    /// 
    /// Note that this function does not follow the rules for `GError` strictly;
    /// the return value both carries meaning and signals an error.  To use
    /// this function, you must pass a `GError` pointer in `error`, and check
    /// whether it is not `nil` to see if an error occurred.
    /// 
    /// Language bindings should use `g_key_file_get_value()` to test whether
    /// or not a key exists.
    @inlinable func hasKey(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_key_file_has_key(key_file_ptr, groupName, key, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Loads a key file from the data in `bytes` into an empty `GKeyFile` structure.
    /// If the object cannot be created then `error` is set to a `GKeyFileError`.
    @inlinable func loadFrom<BytesT: BytesProtocol>(bytes: BytesT, flags: KeyFileFlags) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_key_file_load_from_bytes(key_file_ptr, bytes.bytes_ptr, flags.value, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Loads a key file from memory into an empty `GKeyFile` structure.
    /// If the object cannot be created then `error` is set to a `GKeyFileError`.
    @inlinable func loadFrom(data: UnsafePointer<gchar>!, length: Int, flags: KeyFileFlags) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_key_file_load_from_data(key_file_ptr, data, gsize(length), flags.value, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// This function looks for a key file named `file` in the paths
    /// returned from `g_get_user_data_dir()` and `g_get_system_data_dirs()`,
    /// loads the file into `key_file` and returns the file's full path in
    /// `full_path`.  If the file could not be loaded then an `error` is
    /// set to either a `GFileError` or `GKeyFileError`.
    @inlinable func loadFromDataDirs(file: UnsafePointer<gchar>!, fullPath: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! = nil, flags: KeyFileFlags) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_key_file_load_from_data_dirs(key_file_ptr, file, fullPath, flags.value, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// This function looks for a key file named `file` in the paths
    /// specified in `search_dirs`, loads the file into `key_file` and
    /// returns the file's full path in `full_path`.
    /// 
    /// If the file could not be found in any of the `search_dirs`,
    /// `G_KEY_FILE_ERROR_NOT_FOUND` is returned. If
    /// the file is found but the OS returns an error when opening or reading the
    /// file, a `G_FILE_ERROR` is returned. If there is a problem parsing the file, a
    /// `G_KEY_FILE_ERROR` is returned.
    @inlinable func loadFromDirs(file: UnsafePointer<gchar>!, searchDirs: UnsafeMutablePointer<UnsafePointer<gchar>?>!, fullPath: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! = nil, flags: KeyFileFlags) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_key_file_load_from_dirs(key_file_ptr, file, searchDirs, fullPath, flags.value, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Loads a key file into an empty `GKeyFile` structure.
    /// 
    /// If the OS returns an error when opening or reading the file, a
    /// `G_FILE_ERROR` is returned. If there is a problem parsing the file, a
    /// `G_KEY_FILE_ERROR` is returned.
    /// 
    /// This function will never return a `G_KEY_FILE_ERROR_NOT_FOUND` error. If the
    /// `file` is not found, `G_FILE_ERROR_NOENT` is returned.
    @inlinable func loadFrom(file: UnsafePointer<gchar>!, flags: KeyFileFlags) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_key_file_load_from_file(key_file_ptr, file, flags.value, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Increases the reference count of `key_file`.
    @discardableResult @inlinable func ref() -> KeyFileRef! {
        guard let rv = KeyFileRef(gconstpointer: gconstpointer(g_key_file_ref(key_file_ptr))) else { return nil }
        return rv
    }

    /// Removes a comment above `key` from `group_name`.
    /// If `key` is `nil` then `comment` will be removed above `group_name`.
    /// If both `key` and `group_name` are `nil`, then `comment` will
    /// be removed above the first group in the file.
    @inlinable func removeComment(groupName: UnsafePointer<gchar>? = nil, key: UnsafePointer<gchar>? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_key_file_remove_comment(key_file_ptr, groupName, key, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Removes the specified group, `group_name`,
    /// from the key file.
    @inlinable func removeGroup(groupName: UnsafePointer<gchar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_key_file_remove_group(key_file_ptr, groupName, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Removes `key` in `group_name` from the key file.
    @inlinable func removeKey(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_key_file_remove_key(key_file_ptr, groupName, key, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Writes the contents of `key_file` to `filename` using
    /// `g_file_set_contents()`. If you need stricter guarantees about durability of
    /// the written file than are provided by `g_file_set_contents()`, use
    /// `g_file_set_contents_full()` with the return value of `g_key_file_to_data()`.
    /// 
    /// This function can fail for any of the reasons that
    /// `g_file_set_contents()` may fail.
    @inlinable func saveToFile(filename: UnsafePointer<gchar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_key_file_save_to_file(key_file_ptr, filename, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Associates a new boolean value with `key` under `group_name`.
    /// If `key` cannot be found then it is created.
    @inlinable func setBoolean(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!, value: Bool) {
        g_key_file_set_boolean(key_file_ptr, groupName, key, gboolean((value) ? 1 : 0))
    
    }

    /// Associates a list of boolean values with `key` under `group_name`.
    /// If `key` cannot be found then it is created.
    /// If `group_name` is `nil`, the start_group is used.
    @inlinable func setBooleanList(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!, list: UnsafeMutablePointer<gboolean>!, length: Int) {
        g_key_file_set_boolean_list(key_file_ptr, groupName, key, list, gsize(length))
    
    }

    /// Places a comment above `key` from `group_name`.
    /// 
    /// If `key` is `nil` then `comment` will be written above `group_name`.
    /// If both `key` and `group_name`  are `nil`, then `comment` will be
    /// written above the first group in the file.
    /// 
    /// Note that this function prepends a '#' comment marker to
    /// each line of `comment`.
    @inlinable func setComment(groupName: UnsafePointer<gchar>? = nil, key: UnsafePointer<gchar>? = nil, comment: UnsafePointer<gchar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_key_file_set_comment(key_file_ptr, groupName, key, comment, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Associates a new double value with `key` under `group_name`.
    /// If `key` cannot be found then it is created.
    @inlinable func setDouble(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!, value: Double) {
        g_key_file_set_double(key_file_ptr, groupName, key, gdouble(value))
    
    }

    /// Associates a list of double values with `key` under
    /// `group_name`.  If `key` cannot be found then it is created.
    @inlinable func setDoubleList(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!, list: UnsafeMutablePointer<gdouble>!, length: Int) {
        g_key_file_set_double_list(key_file_ptr, groupName, key, list, gsize(length))
    
    }

    /// Associates a new integer value with `key` under `group_name`.
    /// If `key` cannot be found then it is created.
    @inlinable func setInt64(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!, value: gint64) {
        g_key_file_set_int64(key_file_ptr, groupName, key, value)
    
    }

    /// Associates a new integer value with `key` under `group_name`.
    /// If `key` cannot be found then it is created.
    @inlinable func setInteger(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!, value: Int) {
        g_key_file_set_integer(key_file_ptr, groupName, key, gint(value))
    
    }

    /// Associates a list of integer values with `key` under `group_name`.
    /// If `key` cannot be found then it is created.
    @inlinable func setIntegerList(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!, list: UnsafeMutablePointer<gint>!, length: Int) {
        g_key_file_set_integer_list(key_file_ptr, groupName, key, list, gsize(length))
    
    }

    /// Sets the character which is used to separate
    /// values in lists. Typically ';' or ',' are used
    /// as separators. The default list separator is ';'.
    @inlinable func setList(separator: gchar) {
        g_key_file_set_list_separator(key_file_ptr, separator)
    
    }

    /// Associates a string value for `key` and `locale` under `group_name`.
    /// If the translation for `key` cannot be found then it is created.
    @inlinable func setLocaleString(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!, locale: UnsafePointer<gchar>!, string: UnsafePointer<gchar>!) {
        g_key_file_set_locale_string(key_file_ptr, groupName, key, locale, string)
    
    }

    /// Associates a list of string values for `key` and `locale` under
    /// `group_name`.  If the translation for `key` cannot be found then
    /// it is created.
    @inlinable func setLocaleStringList(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!, locale: UnsafePointer<gchar>!, list: UnsafePointer<UnsafePointer<gchar>?>!, length: Int) {
        g_key_file_set_locale_string_list(key_file_ptr, groupName, key, locale, list, gsize(length))
    
    }

    /// Associates a new string value with `key` under `group_name`.
    /// If `key` cannot be found then it is created.
    /// If `group_name` cannot be found then it is created.
    /// Unlike `g_key_file_set_value()`, this function handles characters
    /// that need escaping, such as newlines.
    @inlinable func setString(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!, string: UnsafePointer<gchar>!) {
        g_key_file_set_string(key_file_ptr, groupName, key, string)
    
    }

    /// Associates a list of string values for `key` under `group_name`.
    /// If `key` cannot be found then it is created.
    /// If `group_name` cannot be found then it is created.
    @inlinable func setStringList(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!, list: UnsafePointer<UnsafePointer<gchar>?>!, length: Int) {
        g_key_file_set_string_list(key_file_ptr, groupName, key, list, gsize(length))
    
    }

    /// Associates a new integer value with `key` under `group_name`.
    /// If `key` cannot be found then it is created.
    @inlinable func setUint64(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!, value: guint64) {
        g_key_file_set_uint64(key_file_ptr, groupName, key, value)
    
    }

    /// Associates a new value with `key` under `group_name`.
    /// 
    /// If `key` cannot be found then it is created. If `group_name` cannot
    /// be found then it is created. To set an UTF-8 string which may contain
    /// characters that need escaping (such as newlines or spaces), use
    /// `g_key_file_set_string()`.
    @inlinable func setValue(groupName: UnsafePointer<gchar>!, key: UnsafePointer<gchar>!, value: UnsafePointer<gchar>!) {
        g_key_file_set_value(key_file_ptr, groupName, key, value)
    
    }

    /// This function outputs `key_file` as a string.
    /// 
    /// Note that this function never reports an error,
    /// so it is safe to pass `nil` as `error`.
    @inlinable func toData(length: UnsafeMutablePointer<gsize>! = nil) throws -> String! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_key_file_to_data(key_file_ptr, length, &error).map({ String(cString: $0) })
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Decreases the reference count of `key_file` by 1. If the reference count
    /// reaches zero, frees the key file and all its allocated memory.
    @inlinable func unref() {
        g_key_file_unref(key_file_ptr)
    
    }
    /// Returns the name of the start group of the file.
    @inlinable var startGroup: String! {
        /// Returns the name of the start group of the file.
        get {
            let rv = g_key_file_get_start_group(key_file_ptr).map({ String(cString: $0) })
            return rv
        }
    }


}



