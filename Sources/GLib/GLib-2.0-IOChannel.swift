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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GIOChannel` instance.
    var io_channel_ptr: UnsafeMutablePointer<GIOChannel> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension IOChannelRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GIOChannel>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `IOChannelProtocol`
    init<T: IOChannelProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOChannelProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOChannelProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOChannelProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOChannelProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOChannelProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Open a file `filename` as a `GIOChannel` using mode `mode`. This
    /// channel will be closed when the last reference to it is dropped,
    /// so there is no need to call `g_io_channel_close()` (though doing
    /// so will not cause problems, as long as no attempt is made to
    /// access the channel after it is closed).
    init(file String_: UnsafePointer<gchar>, mode: UnsafePointer<gchar>) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_io_channel_new_file(String_, mode, &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
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
    init(unix fd: CInt) {
        let rv = g_io_channel_unix_new(fd)
        self.init(cast(rv))
    }
    /// Open a file `filename` as a `GIOChannel` using mode `mode`. This
    /// channel will be closed when the last reference to it is dropped,
    /// so there is no need to call `g_io_channel_close()` (though doing
    /// so will not cause problems, as long as no attempt is made to
    /// access the channel after it is closed).
    static func new(file String_: UnsafePointer<gchar>, mode: UnsafePointer<gchar>) throws -> IOChannelRef! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_io_channel_new_file(String_, mode, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { IOChannelRef(cast($0)) }
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
    static func unixNew(unix fd: CInt) -> IOChannelRef! {
        let rv = g_io_channel_unix_new(fd)
        return rv.map { IOChannelRef(cast($0)) }
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `IOChannel` instance.
    public init(_ op: UnsafeMutablePointer<GIOChannel>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `IOChannelProtocol`
    /// Will retain `GIOChannel`.
    public convenience init<T: IOChannelProtocol>(_ other: T) {
        self.init(cast(other.io_channel_ptr))
        g_io_channel_ref(cast(io_channel_ptr))
    }

    /// Releases the underlying `GIOChannel` instance using `g_io_channel_unref`.
    deinit {
        g_io_channel_unref(cast(io_channel_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOChannelProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GIOChannel.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOChannelProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GIOChannel.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOChannelProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GIOChannel.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOChannelProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GIOChannel>(opaquePointer))
    }

    /// Open a file `filename` as a `GIOChannel` using mode `mode`. This
    /// channel will be closed when the last reference to it is dropped,
    /// so there is no need to call `g_io_channel_close()` (though doing
    /// so will not cause problems, as long as no attempt is made to
    /// access the channel after it is closed).
    public convenience init(file String_: UnsafePointer<gchar>, mode: UnsafePointer<gchar>) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_io_channel_new_file(String_, mode, &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
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
    public convenience init(unix fd: CInt) {
        let rv = g_io_channel_unix_new(fd)
        self.init(cast(rv))
    }

    /// Open a file `filename` as a `GIOChannel` using mode `mode`. This
    /// channel will be closed when the last reference to it is dropped,
    /// so there is no need to call `g_io_channel_close()` (though doing
    /// so will not cause problems, as long as no attempt is made to
    /// access the channel after it is closed).
    public static func new(file String_: UnsafePointer<gchar>, mode: UnsafePointer<gchar>) throws -> IOChannel! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_io_channel_new_file(String_, mode, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { IOChannel(cast($0)) }
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
    public static func unixNew(unix fd: CInt) -> IOChannel! {
        let rv = g_io_channel_unix_new(fd)
        return rv.map { IOChannel(cast($0)) }
    }

}

// MARK: - no IOChannel properties

// MARK: - no signals


public extension IOChannelProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GIOChannel` instance.
    var io_channel_ptr: UnsafeMutablePointer<GIOChannel> { return ptr.assumingMemoryBound(to: GIOChannel.self) }

    /// Close an IO channel. Any pending data to be written will be
    /// flushed, ignoring errors. The channel will not be freed until the
    /// last reference is dropped using `g_io_channel_unref()`.
    ///
    /// **close is deprecated:**
    /// Use g_io_channel_shutdown() instead.
    @available(*, deprecated) func close() {
        g_io_channel_close(cast(io_channel_ptr))
    
    }

    /// Flushes the write buffer for the GIOChannel.
    func flush() throws -> GIOStatus {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_io_channel_flush(cast(io_channel_ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv
    }

    /// This function returns a `GIOCondition` depending on whether there
    /// is data to be read/space to write data in the internal buffers in
    /// the `GIOChannel`. Only the flags `G_IO_IN` and `G_IO_OUT` may be set.
    func getBufferCondition() -> GIOCondition {
        let rv = g_io_channel_get_buffer_condition(cast(io_channel_ptr))
        return rv
    }

    /// Gets the buffer size.
    func getBufferSize() -> Int {
        let rv = g_io_channel_get_buffer_size(cast(io_channel_ptr))
        return Int(rv)
    }

    /// Returns whether `channel` is buffered.
    func getBuffered() -> Bool {
        let rv = g_io_channel_get_buffered(cast(io_channel_ptr))
        return Bool(rv != 0)
    }

    /// Returns whether the file/socket/whatever associated with `channel`
    /// will be closed when `channel` receives its final unref and is
    /// destroyed. The default value of this is `true` for channels created
    /// by g_io_channel_new_file (), and `false` for all other channels.
    func getCloseOnUnref() -> Bool {
        let rv = g_io_channel_get_close_on_unref(cast(io_channel_ptr))
        return Bool(rv != 0)
    }

    /// Gets the encoding for the input/output of the channel.
    /// The internal encoding is always UTF-8. The encoding `nil`
    /// makes the channel safe for binary data.
    func getEncoding() -> String! {
        let rv = g_io_channel_get_encoding(cast(io_channel_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
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
    func getFlags() -> GIOFlags {
        let rv = g_io_channel_get_flags(cast(io_channel_ptr))
        return rv
    }

    /// This returns the string that `GIOChannel` uses to determine
    /// where in the file a line break occurs. A value of `nil`
    /// indicates autodetection.
    func getLineTerm(length: UnsafeMutablePointer<CInt>) -> String! {
        let rv = g_io_channel_get_line_term(cast(io_channel_ptr), cast(length))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Initializes a `GIOChannel` struct.
    /// 
    /// This is called by each of the above functions when creating a
    /// `GIOChannel`, and so is not often needed by the application
    /// programmer (unless you are creating a new type of `GIOChannel`).
    func init_() {
        g_io_channel_init(cast(io_channel_ptr))
    
    }

    /// Reads data from a `GIOChannel`.
    ///
    /// **read is deprecated:**
    /// Use g_io_channel_read_chars() instead.
    @available(*, deprecated) func read(buf: UnsafeMutablePointer<gchar>, count: Int, bytesRead bytes_read: UnsafeMutablePointer<Int>) -> GIOError {
        let rv = g_io_channel_read(cast(io_channel_ptr), buf, gsize(count), cast(bytes_read))
        return rv
    }

    /// Replacement for `g_io_channel_read()` with the new API.
    func readChars(buf: UnsafeMutablePointer<gchar>, count: Int, bytesRead bytes_read: UnsafeMutablePointer<Int>) throws -> GIOStatus {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_io_channel_read_chars(cast(io_channel_ptr), cast(buf), gsize(count), cast(bytes_read), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv
    }

    /// Reads a line, including the terminating `character(s)`,
    /// from a `GIOChannel` into a newly-allocated string.
    /// `str_return` will contain allocated memory if the return
    /// is `G_IO_STATUS_NORMAL`.
    func readLine(strReturn str_return: UnsafeMutablePointer<UnsafeMutablePointer<gchar>>, length: UnsafeMutablePointer<Int>, terminatorPos terminator_pos: UnsafeMutablePointer<Int>) throws -> GIOStatus {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_io_channel_read_line(cast(io_channel_ptr), cast(str_return), cast(length), cast(terminator_pos), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv
    }

    /// Reads a line from a `GIOChannel`, using a `GString` as a buffer.
    func readLineString(buffer: StringTypeProtocol, terminatorPos terminator_pos: UnsafeMutablePointer<Int>) throws -> GIOStatus {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_io_channel_read_line_string(cast(io_channel_ptr), cast(buffer.ptr), cast(terminator_pos), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv
    }

    /// Reads all the remaining data from the file.
    func readToEnd(strReturn str_return: UnsafeMutablePointer<UnsafeMutablePointer<gchar>>, length: UnsafeMutablePointer<Int>) throws -> GIOStatus {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_io_channel_read_to_end(cast(io_channel_ptr), cast(str_return), cast(length), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv
    }

    /// Reads a Unicode character from `channel`.
    /// This function cannot be called on a channel with `nil` encoding.
    func readUnichar(thechar: UnsafeMutablePointer<gunichar>) throws -> GIOStatus {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_io_channel_read_unichar(cast(io_channel_ptr), cast(thechar), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv
    }

    /// Increments the reference count of a `GIOChannel`.
    func ref() -> UnsafeMutablePointer<GIOChannel>! {
        let rv = g_io_channel_ref(cast(io_channel_ptr))
        return cast(rv)
    }

    /// Sets the current position in the `GIOChannel`, similar to the standard
    /// library function `fseek()`.
    ///
    /// **seek is deprecated:**
    /// Use g_io_channel_seek_position() instead.
    @available(*, deprecated) func seek(offset: Int64, type: SeekType) -> GIOError {
        let rv = g_io_channel_seek(cast(io_channel_ptr), gint64(offset), type)
        return rv
    }

    /// Replacement for `g_io_channel_seek()` with the new API.
    func seekPosition(offset: Int64, type: SeekType) throws -> GIOStatus {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_io_channel_seek_position(cast(io_channel_ptr), gint64(offset), type, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv
    }

    /// Sets the buffer size.
    func setBuffer(size: Int) {
        g_io_channel_set_buffer_size(cast(io_channel_ptr), gsize(size))
    
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
    func set(buffered: Bool) {
        g_io_channel_set_buffered(cast(io_channel_ptr), gboolean(buffered ? 1 : 0))
    
    }

    /// Whether to close the channel on the final unref of the `GIOChannel`
    /// data structure. The default value of this is `true` for channels
    /// created by g_io_channel_new_file (), and `false` for all other channels.
    /// 
    /// Setting this flag to `true` for a channel you have already closed
    /// can cause problems when the final reference to the `GIOChannel` is dropped.
    func setCloseOnUnref(doClose do_close: Bool) {
        g_io_channel_set_close_on_unref(cast(io_channel_ptr), gboolean(do_close ? 1 : 0))
    
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
    func set(encoding: UnsafePointer<gchar>) throws -> GIOStatus {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_io_channel_set_encoding(cast(io_channel_ptr), encoding, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv
    }

    /// Sets the (writeable) flags in `channel` to (`flags` & `G_IO_FLAG_SET_MASK`).
    func set(flags: IOFlags) throws -> GIOStatus {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_io_channel_set_flags(cast(io_channel_ptr), flags, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv
    }

    /// This sets the string that `GIOChannel` uses to determine
    /// where in the file a line break occurs.
    func set(lineTerm line_term: UnsafePointer<gchar>, length: CInt) {
        g_io_channel_set_line_term(cast(io_channel_ptr), line_term, gint(length))
    
    }

    /// Close an IO channel. Any pending data to be written will be
    /// flushed if `flush` is `true`. The channel will not be freed until the
    /// last reference is dropped using `g_io_channel_unref()`.
    func shutdown(flush: Bool) throws -> GIOStatus {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_io_channel_shutdown(cast(io_channel_ptr), gboolean(flush ? 1 : 0), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv
    }

    /// Returns the file descriptor of the `GIOChannel`.
    /// 
    /// On Windows this function returns the file descriptor or socket of
    /// the `GIOChannel`.
    func unixGetFd() -> CInt {
        let rv = g_io_channel_unix_get_fd(cast(io_channel_ptr))
        return CInt(rv)
    }

    /// Decrements the reference count of a `GIOChannel`.
    func unref() {
        g_io_channel_unref(cast(io_channel_ptr))
    
    }

    /// Writes data to a `GIOChannel`.
    ///
    /// **write is deprecated:**
    /// Use g_io_channel_write_chars() instead.
    @available(*, deprecated) func write(buf: UnsafePointer<gchar>, count: Int, bytesWritten bytes_written: UnsafeMutablePointer<Int>) -> GIOError {
        let rv = g_io_channel_write(cast(io_channel_ptr), buf, gsize(count), cast(bytes_written))
        return rv
    }

    /// Replacement for `g_io_channel_write()` with the new API.
    /// 
    /// On seekable channels with encodings other than `nil` or UTF-8, generic
    /// mixing of reading and writing is not allowed. A call to g_io_channel_write_chars ()
    /// may only be made on a channel from which data has been read in the
    /// cases described in the documentation for g_io_channel_set_encoding ().
    func writeChars(buf: UnsafePointer<gchar>, count: gssize, bytesWritten bytes_written: UnsafeMutablePointer<Int>) throws -> GIOStatus {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_io_channel_write_chars(cast(io_channel_ptr), cast(buf), count, cast(bytes_written), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv
    }

    /// Writes a Unicode character to `channel`.
    /// This function cannot be called on a channel with `nil` encoding.
    func writeUnichar(thechar: gunichar) throws -> GIOStatus {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_io_channel_write_unichar(cast(io_channel_ptr), thechar, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv
    }

    /// Adds the `GIOChannel` into the default main loop context
    /// with the default priority.
    func ioAddWatch(condition: IOCondition, func_: @escaping IOFunc, userData user_data: UnsafeMutableRawPointer) -> CUnsignedInt {
        let rv = g_io_add_watch(cast(io_channel_ptr), condition, func_, cast(user_data))
        return CUnsignedInt(rv)
    }

    /// Adds the `GIOChannel` into the default main loop context
    /// with the given priority.
    /// 
    /// This internally creates a main loop source using `g_io_create_watch()`
    /// and attaches it to the main loop context with `g_source_attach()`.
    /// You can do these steps manually if you need greater control.
    func ioAddWatchFull(priority: CInt, condition: IOCondition, func_: @escaping IOFunc, userData user_data: UnsafeMutableRawPointer, notify: @escaping DestroyNotify) -> CUnsignedInt {
        let rv = g_io_add_watch_full(cast(io_channel_ptr), gint(priority), condition, func_, cast(user_data), notify)
        return CUnsignedInt(rv)
    }

    /// Creates a `GSource` that's dispatched when `condition` is met for the
    /// given `channel`. For example, if condition is `G_IO_IN`, the source will
    /// be dispatched when there's data available for reading.
    /// 
    /// `g_io_add_watch()` is a simpler interface to this same functionality, for
    /// the case where you want to add the source to the default main loop context
    /// at the default priority.
    /// 
    /// On Windows, polling a `GSource` created to watch a channel for a socket
    /// puts the socket in non-blocking mode. This is a side-effect of the
    /// implementation and unavoidable.
    func ioCreateWatch(condition: IOCondition) -> UnsafeMutablePointer<GSource>! {
        let rv = g_io_create_watch(cast(io_channel_ptr), condition)
        return cast(rv)
    }
    /// This function returns a `GIOCondition` depending on whether there
    /// is data to be read/space to write data in the internal buffers in
    /// the `GIOChannel`. Only the flags `G_IO_IN` and `G_IO_OUT` may be set.
    var bufferCondition: GIOCondition {
        /// This function returns a `GIOCondition` depending on whether there
        /// is data to be read/space to write data in the internal buffers in
        /// the `GIOChannel`. Only the flags `G_IO_IN` and `G_IO_OUT` may be set.
        get {
            let rv = g_io_channel_get_buffer_condition(cast(io_channel_ptr))
            return rv
        }
    }

    /// Gets the buffer size.
    var bufferSize: Int {
        /// Gets the buffer size.
        get {
            let rv = g_io_channel_get_buffer_size(cast(io_channel_ptr))
            return Int(rv)
        }
        /// Sets the buffer size.
        nonmutating set {
            g_io_channel_set_buffer_size(cast(io_channel_ptr), gsize(newValue))
        }
    }

    /// Returns whether `channel` is buffered.
    var buffered: Bool {
        /// Returns whether `channel` is buffered.
        get {
            let rv = g_io_channel_get_buffered(cast(io_channel_ptr))
            return Bool(rv != 0)
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
            g_io_channel_set_buffered(cast(io_channel_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Returns whether the file/socket/whatever associated with `channel`
    /// will be closed when `channel` receives its final unref and is
    /// destroyed. The default value of this is `true` for channels created
    /// by g_io_channel_new_file (), and `false` for all other channels.
    var closeOnUnref: Bool {
        /// Returns whether the file/socket/whatever associated with `channel`
        /// will be closed when `channel` receives its final unref and is
        /// destroyed. The default value of this is `true` for channels created
        /// by g_io_channel_new_file (), and `false` for all other channels.
        get {
            let rv = g_io_channel_get_close_on_unref(cast(io_channel_ptr))
            return Bool(rv != 0)
        }
        /// Whether to close the channel on the final unref of the `GIOChannel`
        /// data structure. The default value of this is `true` for channels
        /// created by g_io_channel_new_file (), and `false` for all other channels.
        /// 
        /// Setting this flag to `true` for a channel you have already closed
        /// can cause problems when the final reference to the `GIOChannel` is dropped.
        nonmutating set {
            g_io_channel_set_close_on_unref(cast(io_channel_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Gets the encoding for the input/output of the channel.
    /// The internal encoding is always UTF-8. The encoding `nil`
    /// makes the channel safe for binary data.
    var encoding: String! {
        /// Gets the encoding for the input/output of the channel.
        /// The internal encoding is always UTF-8. The encoding `nil`
        /// makes the channel safe for binary data.
        get {
            let rv = g_io_channel_get_encoding(cast(io_channel_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
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
    var flags: GIOFlags {
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
            let rv = g_io_channel_get_flags(cast(io_channel_ptr))
            return rv
        }
    }
}



