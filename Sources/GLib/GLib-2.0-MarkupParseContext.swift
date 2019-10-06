import CGLib

// MARK: - MarkupParseContext Record

/// The `MarkupParseContextProtocol` protocol exposes the methods and properties of an underlying `GMarkupParseContext` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MarkupParseContext`.
/// Alternatively, use `MarkupParseContextRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A parse context is used to parse a stream of bytes that
/// you expect to contain marked-up text.
/// 
/// See `g_markup_parse_context_new()`, `GMarkupParser`, and so
/// on for more details.
public protocol MarkupParseContextProtocol {
    /// Untyped pointer to the underlying `GMarkupParseContext` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GMarkupParseContext` instance.
    var markup_parse_context_ptr: UnsafeMutablePointer<GMarkupParseContext> { get }
}

/// The `MarkupParseContextRef` type acts as a lightweight Swift reference to an underlying `GMarkupParseContext` instance.
/// It exposes methods that can operate on this data type through `MarkupParseContextProtocol` conformance.
/// Use `MarkupParseContextRef` only as an `unowned` reference to an existing `GMarkupParseContext` instance.
///
/// A parse context is used to parse a stream of bytes that
/// you expect to contain marked-up text.
/// 
/// See `g_markup_parse_context_new()`, `GMarkupParser`, and so
/// on for more details.
public struct MarkupParseContextRef: MarkupParseContextProtocol {
    /// Untyped pointer to the underlying `GMarkupParseContext` instance.
    /// For type-safe access, use the generated, typed pointer `markup_parse_context_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MarkupParseContextRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GMarkupParseContext>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MarkupParseContextProtocol`
    init<T: MarkupParseContextProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParseContextProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParseContextProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParseContextProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParseContextProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParseContextProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new parse context. A parse context is used to parse
    /// marked-up documents. You can feed any number of documents into
    /// a context, as long as no errors occur; once an error occurs,
    /// the parse context can't continue to parse text (you have to
    /// free it and create a new parse context).
    init( parser: MarkupParserProtocol, flags: MarkupParseFlags, userData user_data: UnsafeMutableRawPointer, userDataDnotify user_data_dnotify: @escaping DestroyNotify) {
        let rv = g_markup_parse_context_new(cast(parser.ptr), flags, cast(user_data), user_data_dnotify)
        self.init(cast(rv))
    }
}

/// The `MarkupParseContext` type acts as a reference-counted owner of an underlying `GMarkupParseContext` instance.
/// It provides the methods that can operate on this data type through `MarkupParseContextProtocol` conformance.
/// Use `MarkupParseContext` as a strong reference or owner of a `GMarkupParseContext` instance.
///
/// A parse context is used to parse a stream of bytes that
/// you expect to contain marked-up text.
/// 
/// See `g_markup_parse_context_new()`, `GMarkupParser`, and so
/// on for more details.
open class MarkupParseContext: MarkupParseContextProtocol {
    /// Untyped pointer to the underlying `GMarkupParseContext` instance.
    /// For type-safe access, use the generated, typed pointer `markup_parse_context_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `MarkupParseContext` instance.
    public init(_ op: UnsafeMutablePointer<GMarkupParseContext>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MarkupParseContextProtocol`
    /// Will retain `GMarkupParseContext`.
    public convenience init<T: MarkupParseContextProtocol>(_ other: T) {
        self.init(cast(other.markup_parse_context_ptr))
        g_markup_parse_context_ref(cast(markup_parse_context_ptr))
    }

    /// Releases the underlying `GMarkupParseContext` instance using `g_markup_parse_context_unref`.
    deinit {
        g_markup_parse_context_unref(cast(markup_parse_context_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParseContextProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GMarkupParseContext.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParseContextProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GMarkupParseContext.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParseContextProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GMarkupParseContext.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParseContextProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GMarkupParseContext>(opaquePointer))
    }

    /// Creates a new parse context. A parse context is used to parse
    /// marked-up documents. You can feed any number of documents into
    /// a context, as long as no errors occur; once an error occurs,
    /// the parse context can't continue to parse text (you have to
    /// free it and create a new parse context).
    public convenience init( parser: MarkupParserProtocol, flags: MarkupParseFlags, userData user_data: UnsafeMutableRawPointer, userDataDnotify user_data_dnotify: @escaping DestroyNotify) {
        let rv = g_markup_parse_context_new(cast(parser.ptr), flags, cast(user_data), user_data_dnotify)
        self.init(cast(rv))
    }


}

// MARK: - no MarkupParseContext properties

// MARK: - no signals


public extension MarkupParseContextProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMarkupParseContext` instance.
    var markup_parse_context_ptr: UnsafeMutablePointer<GMarkupParseContext> { return ptr.assumingMemoryBound(to: GMarkupParseContext.self) }

    /// Signals to the `GMarkupParseContext` that all data has been
    /// fed into the parse context with `g_markup_parse_context_parse()`.
    /// 
    /// This function reports an error if the document isn't complete,
    /// for example if elements are still open.
    func endParse() throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_markup_parse_context_end_parse(cast(markup_parse_context_ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Frees a `GMarkupParseContext`.
    /// 
    /// This function can't be called from inside one of the
    /// `GMarkupParser` functions or while a subparser is pushed.
    func free() {
        g_markup_parse_context_free(cast(markup_parse_context_ptr))
    
    }

    /// Retrieves the name of the currently open element.
    /// 
    /// If called from the start_element or end_element handlers this will
    /// give the element_name as passed to those functions. For the parent
    /// elements, see `g_markup_parse_context_get_element_stack()`.
    func getElement() -> String! {
        let rv = g_markup_parse_context_get_element(cast(markup_parse_context_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Retrieves the element stack from the internal state of the parser.
    /// 
    /// The returned `GSList` is a list of strings where the first item is
    /// the currently open tag (as would be returned by
    /// `g_markup_parse_context_get_element()`) and the next item is its
    /// immediate parent.
    /// 
    /// This function is intended to be used in the start_element and
    /// end_element handlers where `g_markup_parse_context_get_element()`
    /// would merely return the name of the element that is being
    /// processed.
    func getElementStack() -> UnsafePointer<GSList>! {
        let rv = g_markup_parse_context_get_element_stack(cast(markup_parse_context_ptr))
        return cast(rv)
    }

    /// Retrieves the current line number and the number of the character on
    /// that line. Intended for use in error messages; there are no strict
    /// semantics for what constitutes the "current" line number other than
    /// "the best number we could come up with for error messages."
    func getPosition(lineNumber line_number: UnsafeMutablePointer<CInt>, charNumber char_number: UnsafeMutablePointer<CInt>) {
        g_markup_parse_context_get_position(cast(markup_parse_context_ptr), cast(line_number), cast(char_number))
    
    }

    /// Returns the user_data associated with `context`.
    /// 
    /// This will either be the user_data that was provided to
    /// `g_markup_parse_context_new()` or to the most recent call
    /// of `g_markup_parse_context_push()`.
    func getUserData() -> UnsafeMutableRawPointer! {
        let rv = g_markup_parse_context_get_user_data(cast(markup_parse_context_ptr))
        return cast(rv)
    }

    /// Feed some data to the `GMarkupParseContext`.
    /// 
    /// The data need not be valid UTF-8; an error will be signaled if
    /// it's invalid. The data need not be an entire document; you can
    /// feed a document into the parser incrementally, via multiple calls
    /// to this function. Typically, as you receive data from a network
    /// connection or file, you feed each received chunk of data into this
    /// function, aborting the process if an error occurs. Once an error
    /// is reported, no further data may be fed to the `GMarkupParseContext`;
    /// all errors are fatal.
    func parse(text: UnsafePointer<gchar>, textLen text_len: gssize) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_markup_parse_context_parse(cast(markup_parse_context_ptr), text, text_len, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Completes the process of a temporary sub-parser redirection.
    /// 
    /// This function exists to collect the user_data allocated by a
    /// matching call to `g_markup_parse_context_push()`. It must be called
    /// in the end_element handler corresponding to the start_element
    /// handler during which `g_markup_parse_context_push()` was called.
    /// You must not call this function from the error callback -- the
    /// `user_data` is provided directly to the callback in that case.
    /// 
    /// This function is not intended to be directly called by users
    /// interested in invoking subparsers. Instead, it is intended to
    /// be used by the subparsers themselves to implement a higher-level
    /// interface.
    func pop() -> UnsafeMutableRawPointer! {
        let rv = g_markup_parse_context_pop(cast(markup_parse_context_ptr))
        return cast(rv)
    }

    /// Temporarily redirects markup data to a sub-parser.
    /// 
    /// This function may only be called from the start_element handler of
    /// a `GMarkupParser`. It must be matched with a corresponding call to
    /// `g_markup_parse_context_pop()` in the matching end_element handler
    /// (except in the case that the parser aborts due to an error).
    /// 
    /// All tags, text and other data between the matching tags is
    /// redirected to the subparser given by `parser`. `user_data` is used
    /// as the user_data for that parser. `user_data` is also passed to the
    /// error callback in the event that an error occurs. This includes
    /// errors that occur in subparsers of the subparser.
    /// 
    /// The end tag matching the start tag for which this call was made is
    /// handled by the previous parser (which is given its own user_data)
    /// which is why `g_markup_parse_context_pop()` is provided to allow "one
    /// last access" to the `user_data` provided to this function. In the
    /// case of error, the `user_data` provided here is passed directly to
    /// the error callback of the subparser and `g_markup_parse_context_pop()`
    /// should not be called. In either case, if `user_data` was allocated
    /// then it ought to be freed from both of these locations.
    /// 
    /// This function is not intended to be directly called by users
    /// interested in invoking subparsers. Instead, it is intended to be
    /// used by the subparsers themselves to implement a higher-level
    /// interface.
    /// 
    /// As an example, see the following implementation of a simple
    /// parser that counts the number of tags encountered.
    /// 
    /// (C Language Example):
    /// ```C
    /// typedef struct
    /// {
    ///   gint tag_count;
    /// } CounterData;
    /// 
    /// static void
    /// counter_start_element (GMarkupParseContext  *context,
    ///                        const gchar          *element_name,
    ///                        const gchar         **attribute_names,
    ///                        const gchar         **attribute_values,
    ///                        gpointer              user_data,
    ///                        GError              **error)
    /// {
    ///   CounterData *data = user_data;
    /// 
    ///   data->tag_count++;
    /// }
    /// 
    /// static void
    /// counter_error (GMarkupParseContext *context,
    ///                GError              *error,
    ///                gpointer             user_data)
    /// {
    ///   CounterData *data = user_data;
    /// 
    ///   g_slice_free (CounterData, data);
    /// }
    /// 
    /// static GMarkupParser counter_subparser =
    /// {
    ///   counter_start_element,
    ///   NULL,
    ///   NULL,
    ///   NULL,
    ///   counter_error
    /// };
    /// ```
    /// 
    /// In order to allow this parser to be easily used as a subparser, the
    /// following interface is provided:
    /// 
    /// (C Language Example):
    /// ```C
    /// void
    /// start_counting (GMarkupParseContext *context)
    /// {
    ///   CounterData *data = g_slice_new (CounterData);
    /// 
    ///   data->tag_count = 0;
    ///   g_markup_parse_context_push (context, &counter_subparser, data);
    /// }
    /// 
    /// gint
    /// end_counting (GMarkupParseContext *context)
    /// {
    ///   CounterData *data = g_markup_parse_context_pop (context);
    ///   int result;
    /// 
    ///   result = data->tag_count;
    ///   g_slice_free (CounterData, data);
    /// 
    ///   return result;
    /// }
    /// ```
    /// 
    /// The subparser would then be used as follows:
    /// 
    /// (C Language Example):
    /// ```C
    /// static void start_element (context, element_name, ...)
    /// {
    ///   if (strcmp (element_name, "count-these") == 0)
    ///     start_counting (context);
    /// 
    ///   // else, handle other tags...
    /// }
    /// 
    /// static void end_element (context, element_name, ...)
    /// {
    ///   if (strcmp (element_name, "count-these") == 0)
    ///     g_print ("Counted %d tags\n", end_counting (context));
    /// 
    ///   // else, handle other tags...
    /// }
    /// ```
    /// 
    func push(parser: MarkupParserProtocol, userData user_data: UnsafeMutableRawPointer) {
        g_markup_parse_context_push(cast(markup_parse_context_ptr), cast(parser.ptr), cast(user_data))
    
    }

    /// Increases the reference count of `context`.
    func ref() -> UnsafeMutablePointer<GMarkupParseContext>! {
        let rv = g_markup_parse_context_ref(cast(markup_parse_context_ptr))
        return cast(rv)
    }

    /// Decreases the reference count of `context`.  When its reference count
    /// drops to 0, it is freed.
    func unref() {
        g_markup_parse_context_unref(cast(markup_parse_context_ptr))
    
    }
    /// Retrieves the name of the currently open element.
    /// 
    /// If called from the start_element or end_element handlers this will
    /// give the element_name as passed to those functions. For the parent
    /// elements, see `g_markup_parse_context_get_element_stack()`.
    var element: String! {
        /// Retrieves the name of the currently open element.
        /// 
        /// If called from the start_element or end_element handlers this will
        /// give the element_name as passed to those functions. For the parent
        /// elements, see `g_markup_parse_context_get_element_stack()`.
        get {
            let rv = g_markup_parse_context_get_element(cast(markup_parse_context_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Retrieves the element stack from the internal state of the parser.
    /// 
    /// The returned `GSList` is a list of strings where the first item is
    /// the currently open tag (as would be returned by
    /// `g_markup_parse_context_get_element()`) and the next item is its
    /// immediate parent.
    /// 
    /// This function is intended to be used in the start_element and
    /// end_element handlers where `g_markup_parse_context_get_element()`
    /// would merely return the name of the element that is being
    /// processed.
    var elementStack: UnsafePointer<GSList>! {
        /// Retrieves the element stack from the internal state of the parser.
        /// 
        /// The returned `GSList` is a list of strings where the first item is
        /// the currently open tag (as would be returned by
        /// `g_markup_parse_context_get_element()`) and the next item is its
        /// immediate parent.
        /// 
        /// This function is intended to be used in the start_element and
        /// end_element handlers where `g_markup_parse_context_get_element()`
        /// would merely return the name of the element that is being
        /// processed.
        get {
            let rv = g_markup_parse_context_get_element_stack(cast(markup_parse_context_ptr))
            return cast(rv)
        }
    }

    /// Returns the user_data associated with `context`.
    /// 
    /// This will either be the user_data that was provided to
    /// `g_markup_parse_context_new()` or to the most recent call
    /// of `g_markup_parse_context_push()`.
    var userData: UnsafeMutableRawPointer! {
        /// Returns the user_data associated with `context`.
        /// 
        /// This will either be the user_data that was provided to
        /// `g_markup_parse_context_new()` or to the most recent call
        /// of `g_markup_parse_context_push()`.
        get {
            let rv = g_markup_parse_context_get_user_data(cast(markup_parse_context_ptr))
            return cast(rv)
        }
    }
}



