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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GMarkupParseContext` instance.
    var markup_parse_context_ptr: UnsafeMutablePointer<GMarkupParseContext>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension MarkupParseContextRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GMarkupParseContext>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GMarkupParseContext>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GMarkupParseContext>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GMarkupParseContext>?) {
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

    /// Reference intialiser for a related type that implements `MarkupParseContextProtocol`
    @inlinable init<T: MarkupParseContextProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParseContextProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParseContextProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParseContextProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParseContextProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParseContextProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new parse context. A parse context is used to parse
    /// marked-up documents. You can feed any number of documents into
    /// a context, as long as no errors occur; once an error occurs,
    /// the parse context can't continue to parse text (you have to
    /// free it and create a new parse context).
    @inlinable init<MarkupParserT: MarkupParserProtocol>( parser: MarkupParserT, flags: MarkupParseFlags, userData: gpointer! = nil, userDataDnotify: GDestroyNotify?) {
        let rv = g_markup_parse_context_new(parser._ptr, flags.value, userData, userDataDnotify)
        ptr = UnsafeMutableRawPointer(rv)
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
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MarkupParseContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GMarkupParseContext>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MarkupParseContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GMarkupParseContext>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MarkupParseContext` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MarkupParseContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MarkupParseContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GMarkupParseContext>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MarkupParseContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GMarkupParseContext>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GMarkupParseContext`.
    /// i.e., ownership is transferred to the `MarkupParseContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GMarkupParseContext>) {
        ptr = UnsafeMutableRawPointer(op)
        g_markup_parse_context_ref(ptr.assumingMemoryBound(to: GMarkupParseContext.self))
    }

    /// Reference intialiser for a related type that implements `MarkupParseContextProtocol`
    /// Will retain `GMarkupParseContext`.
    /// - Parameter other: an instance of a related type that implements `MarkupParseContextProtocol`
    @inlinable public init<T: MarkupParseContextProtocol>(_ other: T) {
        ptr = other.ptr
        g_markup_parse_context_ref(ptr.assumingMemoryBound(to: GMarkupParseContext.self))
    }

    /// Releases the underlying `GMarkupParseContext` instance using `g_markup_parse_context_unref`.
    deinit {
        g_markup_parse_context_unref(ptr.assumingMemoryBound(to: GMarkupParseContext.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParseContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParseContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_markup_parse_context_ref(ptr.assumingMemoryBound(to: GMarkupParseContext.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParseContextProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParseContextProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_markup_parse_context_ref(ptr.assumingMemoryBound(to: GMarkupParseContext.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParseContextProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParseContextProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_markup_parse_context_ref(ptr.assumingMemoryBound(to: GMarkupParseContext.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParseContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MarkupParseContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_markup_parse_context_ref(ptr.assumingMemoryBound(to: GMarkupParseContext.self))
    }

    /// Creates a new parse context. A parse context is used to parse
    /// marked-up documents. You can feed any number of documents into
    /// a context, as long as no errors occur; once an error occurs,
    /// the parse context can't continue to parse text (you have to
    /// free it and create a new parse context).
    @inlinable public init<MarkupParserT: MarkupParserProtocol>( parser: MarkupParserT, flags: MarkupParseFlags, userData: gpointer! = nil, userDataDnotify: GDestroyNotify?) {
        let rv = g_markup_parse_context_new(parser._ptr, flags.value, userData, userDataDnotify)
        ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no MarkupParseContext properties

// MARK: no MarkupParseContext signals


// MARK: MarkupParseContext Record: MarkupParseContextProtocol extension (methods and fields)
public extension MarkupParseContextProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMarkupParseContext` instance.
    @inlinable var markup_parse_context_ptr: UnsafeMutablePointer<GMarkupParseContext>! { return ptr?.assumingMemoryBound(to: GMarkupParseContext.self) }

    /// Signals to the `GMarkupParseContext` that all data has been
    /// fed into the parse context with `g_markup_parse_context_parse()`.
    /// 
    /// This function reports an error if the document isn't complete,
    /// for example if elements are still open.
    @inlinable func endParse() throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_markup_parse_context_end_parse(markup_parse_context_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Frees a `GMarkupParseContext`.
    /// 
    /// This function can't be called from inside one of the
    /// `GMarkupParser` functions or while a subparser is pushed.
    @inlinable func free() {
        g_markup_parse_context_free(markup_parse_context_ptr)
    
    }

    /// Retrieves the name of the currently open element.
    /// 
    /// If called from the start_element or end_element handlers this will
    /// give the element_name as passed to those functions. For the parent
    /// elements, see `g_markup_parse_context_get_element_stack()`.
    @inlinable func getElement() -> String! {
        let rv = g_markup_parse_context_get_element(markup_parse_context_ptr).map({ String(cString: $0) })
        return rv
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
    @inlinable func getElementStack() -> GLib.SListRef! {
        let rv = GLib.SListRef(g_markup_parse_context_get_element_stack(markup_parse_context_ptr))
        return rv
    }

    /// Retrieves the current line number and the number of the character on
    /// that line. Intended for use in error messages; there are no strict
    /// semantics for what constitutes the "current" line number other than
    /// "the best number we could come up with for error messages."
    @inlinable func getPosition(lineNumber: UnsafeMutablePointer<gint>! = nil, charNumber: UnsafeMutablePointer<gint>! = nil) {
        g_markup_parse_context_get_position(markup_parse_context_ptr, lineNumber, charNumber)
    
    }

    /// Returns the user_data associated with `context`.
    /// 
    /// This will either be the user_data that was provided to
    /// `g_markup_parse_context_new()` or to the most recent call
    /// of `g_markup_parse_context_push()`.
    @inlinable func getUserData() -> gpointer! {
        let rv = g_markup_parse_context_get_user_data(markup_parse_context_ptr)
        return rv
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
    @inlinable func parse(text: UnsafePointer<gchar>!, textLen: gssize) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_markup_parse_context_parse(markup_parse_context_ptr, text, textLen, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func pop() -> gpointer! {
        let rv = g_markup_parse_context_pop(markup_parse_context_ptr)
        return rv
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
    @inlinable func push<MarkupParserT: MarkupParserProtocol>(parser: MarkupParserT, userData: gpointer! = nil) {
        g_markup_parse_context_push(markup_parse_context_ptr, parser._ptr, userData)
    
    }

    /// Increases the reference count of `context`.
    @discardableResult @inlinable func ref() -> MarkupParseContextRef! {
        guard let rv = MarkupParseContextRef(gconstpointer: gconstpointer(g_markup_parse_context_ref(markup_parse_context_ptr))) else { return nil }
        return rv
    }

    /// Decreases the reference count of `context`.  When its reference count
    /// drops to 0, it is freed.
    @inlinable func unref() {
        g_markup_parse_context_unref(markup_parse_context_ptr)
    
    }
    /// Retrieves the name of the currently open element.
    /// 
    /// If called from the start_element or end_element handlers this will
    /// give the element_name as passed to those functions. For the parent
    /// elements, see `g_markup_parse_context_get_element_stack()`.
    @inlinable var element: String! {
        /// Retrieves the name of the currently open element.
        /// 
        /// If called from the start_element or end_element handlers this will
        /// give the element_name as passed to those functions. For the parent
        /// elements, see `g_markup_parse_context_get_element_stack()`.
        get {
            let rv = g_markup_parse_context_get_element(markup_parse_context_ptr).map({ String(cString: $0) })
            return rv
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
    @inlinable var elementStack: GLib.SListRef! {
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
            let rv = GLib.SListRef(g_markup_parse_context_get_element_stack(markup_parse_context_ptr))
            return rv
        }
    }

    /// Returns the user_data associated with `context`.
    /// 
    /// This will either be the user_data that was provided to
    /// `g_markup_parse_context_new()` or to the most recent call
    /// of `g_markup_parse_context_push()`.
    @inlinable var userData: gpointer! {
        /// Returns the user_data associated with `context`.
        /// 
        /// This will either be the user_data that was provided to
        /// `g_markup_parse_context_new()` or to the most recent call
        /// of `g_markup_parse_context_push()`.
        get {
            let rv = g_markup_parse_context_get_user_data(markup_parse_context_ptr)
            return rv
        }
    }


}



