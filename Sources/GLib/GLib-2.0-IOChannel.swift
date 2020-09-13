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



