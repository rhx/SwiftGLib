import CGLib

// MARK: - VariantBuilder Record

/// A utility type for constructing container-type `GVariant` instances.
/// 
/// This is an opaque structure and may only be accessed using the
/// following functions.
/// 
/// `GVariantBuilder` is not threadsafe in any way.  Do not attempt to
/// access it from more than one thread.
///
/// The `VariantBuilderProtocol` protocol exposes the methods and properties of an underlying `GVariantBuilder` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VariantBuilder`.
/// Alternatively, use `VariantBuilderRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol VariantBuilderProtocol {
        /// Untyped pointer to the underlying `GVariantBuilder` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GVariantBuilder` instance.
    var variant_builder_ptr: UnsafeMutablePointer<GVariantBuilder>! { get }

    /// Required Initialiser for types conforming to `VariantBuilderProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A utility type for constructing container-type `GVariant` instances.
/// 
/// This is an opaque structure and may only be accessed using the
/// following functions.
/// 
/// `GVariantBuilder` is not threadsafe in any way.  Do not attempt to
/// access it from more than one thread.
///
/// The `VariantBuilderRef` type acts as a lightweight Swift reference to an underlying `GVariantBuilder` instance.
/// It exposes methods that can operate on this data type through `VariantBuilderProtocol` conformance.
/// Use `VariantBuilderRef` only as an `unowned` reference to an existing `GVariantBuilder` instance.
///
public struct VariantBuilderRef: VariantBuilderProtocol {
        /// Untyped pointer to the underlying `GVariantBuilder` instance.
    /// For type-safe access, use the generated, typed pointer `variant_builder_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension VariantBuilderRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GVariantBuilder>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GVariantBuilder>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GVariantBuilder>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GVariantBuilder>?) {
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

    /// Reference intialiser for a related type that implements `VariantBuilderProtocol`
    @inlinable init<T: VariantBuilderProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Allocates and initialises a new `GVariantBuilder`.
    /// 
    /// You should call `g_variant_builder_unref()` on the return value when it
    /// is no longer needed.  The memory will not be automatically freed by
    /// any other call.
    /// 
    /// In most cases it is easier to place a `GVariantBuilder` directly on
    /// the stack of the calling function and initialise it with
    /// `g_variant_builder_init()`.
    @inlinable init<VariantTypeT: VariantTypeProtocol>( type: VariantTypeT) {
        let rv = g_variant_builder_new(type.variant_type_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// A utility type for constructing container-type `GVariant` instances.
/// 
/// This is an opaque structure and may only be accessed using the
/// following functions.
/// 
/// `GVariantBuilder` is not threadsafe in any way.  Do not attempt to
/// access it from more than one thread.
///
/// The `VariantBuilder` type acts as a reference-counted owner of an underlying `GVariantBuilder` instance.
/// It provides the methods that can operate on this data type through `VariantBuilderProtocol` conformance.
/// Use `VariantBuilder` as a strong reference or owner of a `GVariantBuilder` instance.
///
open class VariantBuilder: VariantBuilderProtocol {
        /// Untyped pointer to the underlying `GVariantBuilder` instance.
    /// For type-safe access, use the generated, typed pointer `variant_builder_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantBuilder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GVariantBuilder>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantBuilder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GVariantBuilder>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantBuilder` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantBuilder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantBuilder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GVariantBuilder>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantBuilder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GVariantBuilder>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GVariantBuilder`.
    /// i.e., ownership is transferred to the `VariantBuilder` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GVariantBuilder>) {
        ptr = UnsafeMutableRawPointer(op)
        g_variant_builder_ref(ptr.assumingMemoryBound(to: GVariantBuilder.self))
    }

    /// Reference intialiser for a related type that implements `VariantBuilderProtocol`
    /// Will retain `GVariantBuilder`.
    /// - Parameter other: an instance of a related type that implements `VariantBuilderProtocol`
    @inlinable public init<T: VariantBuilderProtocol>(_ other: T) {
        ptr = other.ptr
        g_variant_builder_ref(ptr.assumingMemoryBound(to: GVariantBuilder.self))
    }

    /// Releases the underlying `GVariantBuilder` instance using `g_variant_builder_unref`.
    deinit {
        g_variant_builder_unref(ptr.assumingMemoryBound(to: GVariantBuilder.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_variant_builder_ref(ptr.assumingMemoryBound(to: GVariantBuilder.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_variant_builder_ref(ptr.assumingMemoryBound(to: GVariantBuilder.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_variant_builder_ref(ptr.assumingMemoryBound(to: GVariantBuilder.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_variant_builder_ref(ptr.assumingMemoryBound(to: GVariantBuilder.self))
    }

    /// Allocates and initialises a new `GVariantBuilder`.
    /// 
    /// You should call `g_variant_builder_unref()` on the return value when it
    /// is no longer needed.  The memory will not be automatically freed by
    /// any other call.
    /// 
    /// In most cases it is easier to place a `GVariantBuilder` directly on
    /// the stack of the calling function and initialise it with
    /// `g_variant_builder_init()`.
    @inlinable public init<VariantTypeT: VariantTypeProtocol>( type: VariantTypeT) {
        let rv = g_variant_builder_new(type.variant_type_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no VariantBuilder properties

// MARK: no VariantBuilder signals

// MARK: VariantBuilder has no signals
// MARK: VariantBuilder Record: VariantBuilderProtocol extension (methods and fields)
public extension VariantBuilderProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GVariantBuilder` instance.
    @inlinable var variant_builder_ptr: UnsafeMutablePointer<GVariantBuilder>! { return ptr?.assumingMemoryBound(to: GVariantBuilder.self) }


    // *** add() is not available because it has a varargs (...) parameter!



    // *** addParsed() is not available because it has a varargs (...) parameter!


    /// Adds `value` to `builder`.
    /// 
    /// It is an error to call this function in any way that would create an
    /// inconsistent value to be constructed.  Some examples of this are
    /// putting different types of items into an array, putting the wrong
    /// types or number of items in a tuple, putting more than one value into
    /// a variant, etc.
    /// 
    /// If `value` is a floating reference (see `g_variant_ref_sink()`),
    /// the `builder` instance takes ownership of `value`.
    @inlinable func add<VariantT: VariantProtocol>(value: VariantT) {
        g_variant_builder_add_value(variant_builder_ptr, value.variant_ptr)
    
    }

    /// Releases all memory associated with a `GVariantBuilder` without
    /// freeing the `GVariantBuilder` structure itself.
    /// 
    /// It typically only makes sense to do this on a stack-allocated
    /// `GVariantBuilder` if you want to abort building the value part-way
    /// through.  This function need not be called if you call
    /// `g_variant_builder_end()` and it also doesn't need to be called on
    /// builders allocated with `g_variant_builder_new()` (see
    /// `g_variant_builder_unref()` for that).
    /// 
    /// This function leaves the `GVariantBuilder` structure set to all-zeros.
    /// It is valid to call this function on either an initialised
    /// `GVariantBuilder` or one that is set to all-zeros but it is not valid
    /// to call this function on uninitialised memory.
    @inlinable func clear() {
        g_variant_builder_clear(variant_builder_ptr)
    
    }

    /// Closes the subcontainer inside the given `builder` that was opened by
    /// the most recent call to `g_variant_builder_open()`.
    /// 
    /// It is an error to call this function in any way that would create an
    /// inconsistent value to be constructed (ie: too few values added to the
    /// subcontainer).
    @inlinable func close() {
        g_variant_builder_close(variant_builder_ptr)
    
    }

    /// Ends the builder process and returns the constructed value.
    /// 
    /// It is not permissible to use `builder` in any way after this call
    /// except for reference counting operations (in the case of a
    /// heap-allocated `GVariantBuilder`) or by reinitialising it with
    /// `g_variant_builder_init()` (in the case of stack-allocated). This
    /// means that for the stack-allocated builders there is no need to
    /// call `g_variant_builder_clear()` after the call to
    /// `g_variant_builder_end()`.
    /// 
    /// It is an error to call this function in any way that would create an
    /// inconsistent value to be constructed (ie: insufficient number of
    /// items added to a container with a specific number of children
    /// required).  It is also an error to call this function if the builder
    /// was created with an indefinite array or maybe type and no children
    /// have been added; in this case it is impossible to infer the type of
    /// the empty array.
    @inlinable func end() -> VariantRef! {
        let rv = VariantRef(gconstpointer: gconstpointer(g_variant_builder_end(variant_builder_ptr)))
        return rv
    }

    /// Initialises a `GVariantBuilder` structure.
    /// 
    /// `type` must be non-`nil`.  It specifies the type of container to
    /// construct.  It can be an indefinite type such as
    /// `G_VARIANT_TYPE_ARRAY` or a definite type such as "as" or "(ii)".
    /// Maybe, array, tuple, dictionary entry and variant-typed values may be
    /// constructed.
    /// 
    /// After the builder is initialised, values are added using
    /// `g_variant_builder_add_value()` or `g_variant_builder_add()`.
    /// 
    /// After all the child values are added, `g_variant_builder_end()` frees
    /// the memory associated with the builder and returns the `GVariant` that
    /// was created.
    /// 
    /// This function completely ignores the previous contents of `builder`.
    /// On one hand this means that it is valid to pass in completely
    /// uninitialised memory.  On the other hand, this means that if you are
    /// initialising over top of an existing `GVariantBuilder` you need to
    /// first call `g_variant_builder_clear()` in order to avoid leaking
    /// memory.
    /// 
    /// You must not call `g_variant_builder_ref()` or
    /// `g_variant_builder_unref()` on a `GVariantBuilder` that was initialised
    /// with this function.  If you ever pass a reference to a
    /// `GVariantBuilder` outside of the control of your own code then you
    /// should assume that the person receiving that reference may try to use
    /// reference counting; you should use `g_variant_builder_new()` instead of
    /// this function.
    @inlinable func init_<VariantTypeT: VariantTypeProtocol>(type: VariantTypeT) {
        g_variant_builder_init(variant_builder_ptr, type.variant_type_ptr)
    
    }

    /// Opens a subcontainer inside the given `builder`.  When done adding
    /// items to the subcontainer, `g_variant_builder_close()` must be called. `type`
    /// is the type of the container: so to build a tuple of several values, `type`
    /// must include the tuple itself.
    /// 
    /// It is an error to call this function in any way that would cause an
    /// inconsistent value to be constructed (ie: adding too many values or
    /// a value of an incorrect type).
    /// 
    /// Example of building a nested variant:
    /// (C Language Example):
    /// ```C
    /// GVariantBuilder builder;
    /// guint32 some_number = get_number ();
    /// g_autoptr (GHashTable) some_dict = get_dict ();
    /// GHashTableIter iter;
    /// const gchar *key;
    /// const GVariant *value;
    /// g_autoptr (GVariant) output = NULL;
    /// 
    /// g_variant_builder_init (&builder, G_VARIANT_TYPE ("(ua{sv})"));
    /// g_variant_builder_add (&builder, "u", some_number);
    /// g_variant_builder_open (&builder, G_VARIANT_TYPE ("a{sv}"));
    /// 
    /// g_hash_table_iter_init (&iter, some_dict);
    /// while (g_hash_table_iter_next (&iter, (gpointer *) &key, (gpointer *) &value))
    ///   {
    ///     g_variant_builder_open (&builder, G_VARIANT_TYPE ("{sv}"));
    ///     g_variant_builder_add (&builder, "s", key);
    ///     g_variant_builder_add (&builder, "v", value);
    ///     g_variant_builder_close (&builder);
    ///   }
    /// 
    /// g_variant_builder_close (&builder);
    /// 
    /// output = g_variant_builder_end (&builder);
    /// ```
    /// 
    @inlinable func open<VariantTypeT: VariantTypeProtocol>(type: VariantTypeT) {
        g_variant_builder_open(variant_builder_ptr, type.variant_type_ptr)
    
    }

    /// Increases the reference count on `builder`.
    /// 
    /// Don't call this on stack-allocated `GVariantBuilder` instances or bad
    /// things will happen.
    @discardableResult @inlinable func ref() -> VariantBuilderRef! {
        guard let rv = VariantBuilderRef(gconstpointer: gconstpointer(g_variant_builder_ref(variant_builder_ptr))) else { return nil }
        return rv
    }

    /// Decreases the reference count on `builder`.
    /// 
    /// In the event that there are no more references, releases all memory
    /// associated with the `GVariantBuilder`.
    /// 
    /// Don't call this on stack-allocated `GVariantBuilder` instances or bad
    /// things will happen.
    @inlinable func unref() {
        g_variant_builder_unref(variant_builder_ptr)
    
    }


}



// MARK: - VariantDict Record

/// `GVariantDict` is a mutable interface to `GVariant` dictionaries.
/// 
/// It can be used for doing a sequence of dictionary lookups in an
/// efficient way on an existing `GVariant` dictionary or it can be used
/// to construct new dictionaries with a hashtable-like interface.  It
/// can also be used for taking existing dictionaries and modifying them
/// in order to create new ones.
/// 
/// `GVariantDict` can only be used with `G_VARIANT_TYPE_VARDICT`
/// dictionaries.
/// 
/// It is possible to use `GVariantDict` allocated on the stack or on the
/// heap.  When using a stack-allocated `GVariantDict`, you begin with a
/// call to `g_variant_dict_init()` and free the resources with a call to
/// `g_variant_dict_clear()`.
/// 
/// Heap-allocated `GVariantDict` follows normal refcounting rules: you
/// allocate it with `g_variant_dict_new()` and use `g_variant_dict_ref()`
/// and `g_variant_dict_unref()`.
/// 
/// `g_variant_dict_end()` is used to convert the `GVariantDict` back into a
/// dictionary-type `GVariant`.  When used with stack-allocated instances,
/// this also implicitly frees all associated memory, but for
/// heap-allocated instances, you must still call `g_variant_dict_unref()`
/// afterwards.
/// 
/// You will typically want to use a heap-allocated `GVariantDict` when
/// you expose it as part of an API.  For most other uses, the
/// stack-allocated form will be more convenient.
/// 
/// Consider the following two examples that do the same thing in each
/// style: take an existing dictionary and look up the "count" uint32
/// key, adding 1 to it if it is found, or returning an error if the
/// key is not found.  Each returns the new dictionary as a floating
/// `GVariant`.
/// 
/// ## Using a stack-allocated GVariantDict
/// 
/// (C Language Example):
/// ```C
///   GVariant *
///   add_to_count (GVariant  *orig,
///                 GError   **error)
///   {
///     GVariantDict dict;
///     guint32 count;
/// 
///     g_variant_dict_init (&dict, orig);
///     if (!g_variant_dict_lookup (&dict, "count", "u", &count))
///       {
///         g_set_error (...);
///         g_variant_dict_clear (&dict);
///         return NULL;
///       }
/// 
///     g_variant_dict_insert (&dict, "count", "u", count + 1);
/// 
///     return g_variant_dict_end (&dict);
///   }
/// ```
/// 
/// ## Using heap-allocated GVariantDict
/// 
/// (C Language Example):
/// ```C
///   GVariant *
///   add_to_count (GVariant  *orig,
///                 GError   **error)
///   {
///     GVariantDict *dict;
///     GVariant *result;
///     guint32 count;
/// 
///     dict = g_variant_dict_new (orig);
/// 
///     if (g_variant_dict_lookup (dict, "count", "u", &count))
///       {
///         g_variant_dict_insert (dict, "count", "u", count + 1);
///         result = g_variant_dict_end (dict);
///       }
///     else
///       {
///         g_set_error (...);
///         result = NULL;
///       }
/// 
///     g_variant_dict_unref (dict);
/// 
///     return result;
///   }
/// ```
/// 
///
/// The `VariantDictProtocol` protocol exposes the methods and properties of an underlying `GVariantDict` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VariantDict`.
/// Alternatively, use `VariantDictRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol VariantDictProtocol {
        /// Untyped pointer to the underlying `GVariantDict` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GVariantDict` instance.
    var variant_dict_ptr: UnsafeMutablePointer<GVariantDict>! { get }

    /// Required Initialiser for types conforming to `VariantDictProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GVariantDict` is a mutable interface to `GVariant` dictionaries.
/// 
/// It can be used for doing a sequence of dictionary lookups in an
/// efficient way on an existing `GVariant` dictionary or it can be used
/// to construct new dictionaries with a hashtable-like interface.  It
/// can also be used for taking existing dictionaries and modifying them
/// in order to create new ones.
/// 
/// `GVariantDict` can only be used with `G_VARIANT_TYPE_VARDICT`
/// dictionaries.
/// 
/// It is possible to use `GVariantDict` allocated on the stack or on the
/// heap.  When using a stack-allocated `GVariantDict`, you begin with a
/// call to `g_variant_dict_init()` and free the resources with a call to
/// `g_variant_dict_clear()`.
/// 
/// Heap-allocated `GVariantDict` follows normal refcounting rules: you
/// allocate it with `g_variant_dict_new()` and use `g_variant_dict_ref()`
/// and `g_variant_dict_unref()`.
/// 
/// `g_variant_dict_end()` is used to convert the `GVariantDict` back into a
/// dictionary-type `GVariant`.  When used with stack-allocated instances,
/// this also implicitly frees all associated memory, but for
/// heap-allocated instances, you must still call `g_variant_dict_unref()`
/// afterwards.
/// 
/// You will typically want to use a heap-allocated `GVariantDict` when
/// you expose it as part of an API.  For most other uses, the
/// stack-allocated form will be more convenient.
/// 
/// Consider the following two examples that do the same thing in each
/// style: take an existing dictionary and look up the "count" uint32
/// key, adding 1 to it if it is found, or returning an error if the
/// key is not found.  Each returns the new dictionary as a floating
/// `GVariant`.
/// 
/// ## Using a stack-allocated GVariantDict
/// 
/// (C Language Example):
/// ```C
///   GVariant *
///   add_to_count (GVariant  *orig,
///                 GError   **error)
///   {
///     GVariantDict dict;
///     guint32 count;
/// 
///     g_variant_dict_init (&dict, orig);
///     if (!g_variant_dict_lookup (&dict, "count", "u", &count))
///       {
///         g_set_error (...);
///         g_variant_dict_clear (&dict);
///         return NULL;
///       }
/// 
///     g_variant_dict_insert (&dict, "count", "u", count + 1);
/// 
///     return g_variant_dict_end (&dict);
///   }
/// ```
/// 
/// ## Using heap-allocated GVariantDict
/// 
/// (C Language Example):
/// ```C
///   GVariant *
///   add_to_count (GVariant  *orig,
///                 GError   **error)
///   {
///     GVariantDict *dict;
///     GVariant *result;
///     guint32 count;
/// 
///     dict = g_variant_dict_new (orig);
/// 
///     if (g_variant_dict_lookup (dict, "count", "u", &count))
///       {
///         g_variant_dict_insert (dict, "count", "u", count + 1);
///         result = g_variant_dict_end (dict);
///       }
///     else
///       {
///         g_set_error (...);
///         result = NULL;
///       }
/// 
///     g_variant_dict_unref (dict);
/// 
///     return result;
///   }
/// ```
/// 
///
/// The `VariantDictRef` type acts as a lightweight Swift reference to an underlying `GVariantDict` instance.
/// It exposes methods that can operate on this data type through `VariantDictProtocol` conformance.
/// Use `VariantDictRef` only as an `unowned` reference to an existing `GVariantDict` instance.
///
public struct VariantDictRef: VariantDictProtocol {
        /// Untyped pointer to the underlying `GVariantDict` instance.
    /// For type-safe access, use the generated, typed pointer `variant_dict_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension VariantDictRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GVariantDict>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GVariantDict>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GVariantDict>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GVariantDict>?) {
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

    /// Reference intialiser for a related type that implements `VariantDictProtocol`
    @inlinable init<T: VariantDictProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantDictProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantDictProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantDictProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantDictProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantDictProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Allocates and initialises a new `GVariantDict`.
    /// 
    /// You should call `g_variant_dict_unref()` on the return value when it
    /// is no longer needed.  The memory will not be automatically freed by
    /// any other call.
    /// 
    /// In some cases it may be easier to place a `GVariantDict` directly on
    /// the stack of the calling function and initialise it with
    /// `g_variant_dict_init()`.  This is particularly useful when you are
    /// using `GVariantDict` to construct a `GVariant`.
    @inlinable init<VariantT: VariantProtocol>( asv: VariantT?) {
        let rv = g_variant_dict_new(asv?.variant_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// `GVariantDict` is a mutable interface to `GVariant` dictionaries.
/// 
/// It can be used for doing a sequence of dictionary lookups in an
/// efficient way on an existing `GVariant` dictionary or it can be used
/// to construct new dictionaries with a hashtable-like interface.  It
/// can also be used for taking existing dictionaries and modifying them
/// in order to create new ones.
/// 
/// `GVariantDict` can only be used with `G_VARIANT_TYPE_VARDICT`
/// dictionaries.
/// 
/// It is possible to use `GVariantDict` allocated on the stack or on the
/// heap.  When using a stack-allocated `GVariantDict`, you begin with a
/// call to `g_variant_dict_init()` and free the resources with a call to
/// `g_variant_dict_clear()`.
/// 
/// Heap-allocated `GVariantDict` follows normal refcounting rules: you
/// allocate it with `g_variant_dict_new()` and use `g_variant_dict_ref()`
/// and `g_variant_dict_unref()`.
/// 
/// `g_variant_dict_end()` is used to convert the `GVariantDict` back into a
/// dictionary-type `GVariant`.  When used with stack-allocated instances,
/// this also implicitly frees all associated memory, but for
/// heap-allocated instances, you must still call `g_variant_dict_unref()`
/// afterwards.
/// 
/// You will typically want to use a heap-allocated `GVariantDict` when
/// you expose it as part of an API.  For most other uses, the
/// stack-allocated form will be more convenient.
/// 
/// Consider the following two examples that do the same thing in each
/// style: take an existing dictionary and look up the "count" uint32
/// key, adding 1 to it if it is found, or returning an error if the
/// key is not found.  Each returns the new dictionary as a floating
/// `GVariant`.
/// 
/// ## Using a stack-allocated GVariantDict
/// 
/// (C Language Example):
/// ```C
///   GVariant *
///   add_to_count (GVariant  *orig,
///                 GError   **error)
///   {
///     GVariantDict dict;
///     guint32 count;
/// 
///     g_variant_dict_init (&dict, orig);
///     if (!g_variant_dict_lookup (&dict, "count", "u", &count))
///       {
///         g_set_error (...);
///         g_variant_dict_clear (&dict);
///         return NULL;
///       }
/// 
///     g_variant_dict_insert (&dict, "count", "u", count + 1);
/// 
///     return g_variant_dict_end (&dict);
///   }
/// ```
/// 
/// ## Using heap-allocated GVariantDict
/// 
/// (C Language Example):
/// ```C
///   GVariant *
///   add_to_count (GVariant  *orig,
///                 GError   **error)
///   {
///     GVariantDict *dict;
///     GVariant *result;
///     guint32 count;
/// 
///     dict = g_variant_dict_new (orig);
/// 
///     if (g_variant_dict_lookup (dict, "count", "u", &count))
///       {
///         g_variant_dict_insert (dict, "count", "u", count + 1);
///         result = g_variant_dict_end (dict);
///       }
///     else
///       {
///         g_set_error (...);
///         result = NULL;
///       }
/// 
///     g_variant_dict_unref (dict);
/// 
///     return result;
///   }
/// ```
/// 
///
/// The `VariantDict` type acts as a reference-counted owner of an underlying `GVariantDict` instance.
/// It provides the methods that can operate on this data type through `VariantDictProtocol` conformance.
/// Use `VariantDict` as a strong reference or owner of a `GVariantDict` instance.
///
open class VariantDict: VariantDictProtocol {
        /// Untyped pointer to the underlying `GVariantDict` instance.
    /// For type-safe access, use the generated, typed pointer `variant_dict_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantDict` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GVariantDict>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantDict` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GVariantDict>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantDict` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantDict` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantDict` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GVariantDict>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantDict` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GVariantDict>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GVariantDict`.
    /// i.e., ownership is transferred to the `VariantDict` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GVariantDict>) {
        ptr = UnsafeMutableRawPointer(op)
        g_variant_dict_ref(ptr.assumingMemoryBound(to: GVariantDict.self))
    }

    /// Reference intialiser for a related type that implements `VariantDictProtocol`
    /// Will retain `GVariantDict`.
    /// - Parameter other: an instance of a related type that implements `VariantDictProtocol`
    @inlinable public init<T: VariantDictProtocol>(_ other: T) {
        ptr = other.ptr
        g_variant_dict_ref(ptr.assumingMemoryBound(to: GVariantDict.self))
    }

    /// Releases the underlying `GVariantDict` instance using `g_variant_dict_unref`.
    deinit {
        g_variant_dict_unref(ptr.assumingMemoryBound(to: GVariantDict.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantDictProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantDictProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_variant_dict_ref(ptr.assumingMemoryBound(to: GVariantDict.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantDictProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantDictProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_variant_dict_ref(ptr.assumingMemoryBound(to: GVariantDict.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantDictProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantDictProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_variant_dict_ref(ptr.assumingMemoryBound(to: GVariantDict.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantDictProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantDictProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_variant_dict_ref(ptr.assumingMemoryBound(to: GVariantDict.self))
    }

    /// Allocates and initialises a new `GVariantDict`.
    /// 
    /// You should call `g_variant_dict_unref()` on the return value when it
    /// is no longer needed.  The memory will not be automatically freed by
    /// any other call.
    /// 
    /// In some cases it may be easier to place a `GVariantDict` directly on
    /// the stack of the calling function and initialise it with
    /// `g_variant_dict_init()`.  This is particularly useful when you are
    /// using `GVariantDict` to construct a `GVariant`.
    @inlinable public init<VariantT: VariantProtocol>( asv: VariantT?) {
        let rv = g_variant_dict_new(asv?.variant_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no VariantDict properties

// MARK: no VariantDict signals

// MARK: VariantDict has no signals
// MARK: VariantDict Record: VariantDictProtocol extension (methods and fields)
public extension VariantDictProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GVariantDict` instance.
    @inlinable var variant_dict_ptr: UnsafeMutablePointer<GVariantDict>! { return ptr?.assumingMemoryBound(to: GVariantDict.self) }

    /// Releases all memory associated with a `GVariantDict` without freeing
    /// the `GVariantDict` structure itself.
    /// 
    /// It typically only makes sense to do this on a stack-allocated
    /// `GVariantDict` if you want to abort building the value part-way
    /// through.  This function need not be called if you call
    /// `g_variant_dict_end()` and it also doesn't need to be called on dicts
    /// allocated with g_variant_dict_new (see `g_variant_dict_unref()` for
    /// that).
    /// 
    /// It is valid to call this function on either an initialised
    /// `GVariantDict` or one that was previously cleared by an earlier call
    /// to `g_variant_dict_clear()` but it is not valid to call this function
    /// on uninitialised memory.
    @inlinable func clear() {
        g_variant_dict_clear(variant_dict_ptr)
    
    }

    /// Checks if `key` exists in `dict`.
    @inlinable func contains(key: UnsafePointer<gchar>!) -> Bool {
        let rv = ((g_variant_dict_contains(variant_dict_ptr, key)) != 0)
        return rv
    }

    /// Returns the current value of `dict` as a `GVariant` of type
    /// `G_VARIANT_TYPE_VARDICT`, clearing it in the process.
    /// 
    /// It is not permissible to use `dict` in any way after this call except
    /// for reference counting operations (in the case of a heap-allocated
    /// `GVariantDict`) or by reinitialising it with `g_variant_dict_init()` (in
    /// the case of stack-allocated).
    @inlinable func end() -> VariantRef! {
        let rv = VariantRef(gconstpointer: gconstpointer(g_variant_dict_end(variant_dict_ptr)))
        return rv
    }

    /// Initialises a `GVariantDict` structure.
    /// 
    /// If `from_asv` is given, it is used to initialise the dictionary.
    /// 
    /// This function completely ignores the previous contents of `dict`.  On
    /// one hand this means that it is valid to pass in completely
    /// uninitialised memory.  On the other hand, this means that if you are
    /// initialising over top of an existing `GVariantDict` you need to first
    /// call `g_variant_dict_clear()` in order to avoid leaking memory.
    /// 
    /// You must not call `g_variant_dict_ref()` or `g_variant_dict_unref()` on a
    /// `GVariantDict` that was initialised with this function.  If you ever
    /// pass a reference to a `GVariantDict` outside of the control of your
    /// own code then you should assume that the person receiving that
    /// reference may try to use reference counting; you should use
    /// `g_variant_dict_new()` instead of this function.
    @inlinable func init_(from asv: VariantRef? = nil) {
        g_variant_dict_init(variant_dict_ptr, asv?.variant_ptr)
    
    }
    /// Initialises a `GVariantDict` structure.
    /// 
    /// If `from_asv` is given, it is used to initialise the dictionary.
    /// 
    /// This function completely ignores the previous contents of `dict`.  On
    /// one hand this means that it is valid to pass in completely
    /// uninitialised memory.  On the other hand, this means that if you are
    /// initialising over top of an existing `GVariantDict` you need to first
    /// call `g_variant_dict_clear()` in order to avoid leaking memory.
    /// 
    /// You must not call `g_variant_dict_ref()` or `g_variant_dict_unref()` on a
    /// `GVariantDict` that was initialised with this function.  If you ever
    /// pass a reference to a `GVariantDict` outside of the control of your
    /// own code then you should assume that the person receiving that
    /// reference may try to use reference counting; you should use
    /// `g_variant_dict_new()` instead of this function.
    @inlinable func init_<VariantT: VariantProtocol>(from asv: VariantT?) {
        g_variant_dict_init(variant_dict_ptr, asv?.variant_ptr)
    
    }


    // *** insert() is not available because it has a varargs (...) parameter!


    /// Inserts (or replaces) a key in a `GVariantDict`.
    /// 
    /// `value` is consumed if it is floating.
    @inlinable func insertValue<VariantT: VariantProtocol>(key: UnsafePointer<gchar>!, value: VariantT) {
        g_variant_dict_insert_value(variant_dict_ptr, key, value.variant_ptr)
    
    }


    // *** lookup() is not available because it has a varargs (...) parameter!


    /// Looks up a value in a `GVariantDict`.
    /// 
    /// If `key` is not found in `dictionary`, `nil` is returned.
    /// 
    /// The `expected_type` string specifies what type of value is expected.
    /// If the value associated with `key` has a different type then `nil` is
    /// returned.
    /// 
    /// If the key is found and the value has the correct type, it is
    /// returned.  If `expected_type` was specified then any non-`nil` return
    /// value will have this type.
    @inlinable func lookupValue(key: UnsafePointer<gchar>!, expectedType: VariantTypeRef? = nil) -> VariantRef! {
        let rv = VariantRef(gconstpointer: gconstpointer(g_variant_dict_lookup_value(variant_dict_ptr, key, expectedType?.variant_type_ptr)))
        return rv
    }
    /// Looks up a value in a `GVariantDict`.
    /// 
    /// If `key` is not found in `dictionary`, `nil` is returned.
    /// 
    /// The `expected_type` string specifies what type of value is expected.
    /// If the value associated with `key` has a different type then `nil` is
    /// returned.
    /// 
    /// If the key is found and the value has the correct type, it is
    /// returned.  If `expected_type` was specified then any non-`nil` return
    /// value will have this type.
    @inlinable func lookupValue<VariantTypeT: VariantTypeProtocol>(key: UnsafePointer<gchar>!, expectedType: VariantTypeT?) -> VariantRef! {
        let rv = VariantRef(gconstpointer: gconstpointer(g_variant_dict_lookup_value(variant_dict_ptr, key, expectedType?.variant_type_ptr)))
        return rv
    }

    /// Increases the reference count on `dict`.
    /// 
    /// Don't call this on stack-allocated `GVariantDict` instances or bad
    /// things will happen.
    @discardableResult @inlinable func ref() -> VariantDictRef! {
        guard let rv = VariantDictRef(gconstpointer: gconstpointer(g_variant_dict_ref(variant_dict_ptr))) else { return nil }
        return rv
    }

    /// Removes a key and its associated value from a `GVariantDict`.
    @inlinable func remove(key: UnsafePointer<gchar>!) -> Bool {
        let rv = ((g_variant_dict_remove(variant_dict_ptr, key)) != 0)
        return rv
    }

    /// Decreases the reference count on `dict`.
    /// 
    /// In the event that there are no more references, releases all memory
    /// associated with the `GVariantDict`.
    /// 
    /// Don't call this on stack-allocated `GVariantDict` instances or bad
    /// things will happen.
    @inlinable func unref() {
        g_variant_dict_unref(variant_dict_ptr)
    
    }


}



// MARK: - VariantIter Record

/// `GVariantIter` is an opaque data structure and can only be accessed
/// using the following functions.
///
/// The `VariantIterProtocol` protocol exposes the methods and properties of an underlying `GVariantIter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VariantIter`.
/// Alternatively, use `VariantIterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol VariantIterProtocol {
        /// Untyped pointer to the underlying `GVariantIter` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GVariantIter` instance.
    var _ptr: UnsafeMutablePointer<GVariantIter>! { get }

    /// Required Initialiser for types conforming to `VariantIterProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GVariantIter` is an opaque data structure and can only be accessed
/// using the following functions.
///
/// The `VariantIterRef` type acts as a lightweight Swift reference to an underlying `GVariantIter` instance.
/// It exposes methods that can operate on this data type through `VariantIterProtocol` conformance.
/// Use `VariantIterRef` only as an `unowned` reference to an existing `GVariantIter` instance.
///
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

/// `GVariantIter` is an opaque data structure and can only be accessed
/// using the following functions.
///
/// The `VariantIter` type acts as an owner of an underlying `GVariantIter` instance.
/// It provides the methods that can operate on this data type through `VariantIterProtocol` conformance.
/// Use `VariantIter` as a strong reference or owner of a `GVariantIter` instance.
///
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
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

// MARK: VariantIter has no signals
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
    /// and will be related only when `g_variant_iter_free()` is called.
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



// MARK: - VariantType Record

/// This section introduces the GVariant type system. It is based, in
/// large part, on the D-Bus type system, with two major changes and
/// some minor lifting of restrictions. The
/// [D-Bus specification](http://dbus.freedesktop.org/doc/dbus-specification.html),
/// therefore, provides a significant amount of
/// information that is useful when working with GVariant.
/// 
/// The first major change with respect to the D-Bus type system is the
/// introduction of maybe (or "nullable") types.  Any type in GVariant can be
/// converted to a maybe type, in which case, "nothing" (or "null") becomes a
/// valid value.  Maybe types have been added by introducing the
/// character "m" to type strings.
/// 
/// The second major change is that the GVariant type system supports the
/// concept of "indefinite types" -- types that are less specific than
/// the normal types found in D-Bus.  For example, it is possible to speak
/// of "an array of any type" in GVariant, where the D-Bus type system
/// would require you to speak of "an array of integers" or "an array of
/// strings".  Indefinite types have been added by introducing the
/// characters "*", "?" and "r" to type strings.
/// 
/// Finally, all arbitrary restrictions relating to the complexity of
/// types are lifted along with the restriction that dictionary entries
/// may only appear nested inside of arrays.
/// 
/// Just as in D-Bus, GVariant types are described with strings ("type
/// strings").  Subject to the differences mentioned above, these strings
/// are of the same form as those found in D-Bus.  Note, however: D-Bus
/// always works in terms of messages and therefore individual type
/// strings appear nowhere in its interface.  Instead, "signatures"
/// are a concatenation of the strings of the type of each argument in a
/// message.  GVariant deals with single values directly so GVariant type
/// strings always describe the type of exactly one value.  This means
/// that a D-Bus signature string is generally not a valid GVariant type
/// string -- except in the case that it is the signature of a message
/// containing exactly one argument.
/// 
/// An indefinite type is similar in spirit to what may be called an
/// abstract type in other type systems.  No value can exist that has an
/// indefinite type as its type, but values can exist that have types
/// that are subtypes of indefinite types.  That is to say,
/// `g_variant_get_type()` will never return an indefinite type, but
/// calling `g_variant_is_of_type()` with an indefinite type may return
/// `true`.  For example, you cannot have a value that represents "an
/// array of no particular type", but you can have an "array of integers"
/// which certainly matches the type of "an array of no particular type",
/// since "array of integers" is a subtype of "array of no particular
/// type".
/// 
/// This is similar to how instances of abstract classes may not
/// directly exist in other type systems, but instances of their
/// non-abstract subtypes may.  For example, in GTK, no object that has
/// the type of `GtkBin` can exist (since `GtkBin` is an abstract class),
/// but a `GtkWindow` can certainly be instantiated, and you would say
/// that the `GtkWindow` is a `GtkBin` (since `GtkWindow` is a subclass of
/// `GtkBin`).
/// 
/// ## GVariant Type Strings
/// 
/// A GVariant type string can be any of the following:
/// 
/// - any basic type string (listed below)
/// 
/// - "v", "r" or "*"
/// 
/// - one of the characters 'a' or 'm', followed by another type string
/// 
/// - the character '(', followed by a concatenation of zero or more other
///   type strings, followed by the character ')'
/// 
/// - the character '{', followed by a basic type string (see below),
///   followed by another type string, followed by the character '}'
/// 
/// A basic type string describes a basic type (as per
/// `g_variant_type_is_basic()`) and is always a single character in length.
/// The valid basic type strings are "b", "y", "n", "q", "i", "u", "x", "t",
/// "h", "d", "s", "o", "g" and "?".
/// 
/// The above definition is recursive to arbitrary depth. "aaaaai" and
/// "(`ui(nq((y)`))s)" are both valid type strings, as is
/// `"a(aa(ui)`(qna{`ya(yd)`}))". In order to not hit memory limits, `GVariant`
/// imposes a limit on recursion depth of 65 nested containers. This is the
/// limit in the D-Bus specification (64) plus one to allow a `GDBusMessage` to
/// be nested in a top-level tuple.
/// 
/// The meaning of each of the characters is as follows:
/// - `b`: the type string of `G_VARIANT_TYPE_BOOLEAN`; a boolean value.
/// - `y`: the type string of `G_VARIANT_TYPE_BYTE`; a byte.
/// - `n`: the type string of `G_VARIANT_TYPE_INT16`; a signed 16 bit integer.
/// - `q`: the type string of `G_VARIANT_TYPE_UINT16`; an unsigned 16 bit integer.
/// - `i`: the type string of `G_VARIANT_TYPE_INT32`; a signed 32 bit integer.
/// - `u`: the type string of `G_VARIANT_TYPE_UINT32`; an unsigned 32 bit integer.
/// - `x`: the type string of `G_VARIANT_TYPE_INT64`; a signed 64 bit integer.
/// - `t`: the type string of `G_VARIANT_TYPE_UINT64`; an unsigned 64 bit integer.
/// - `h`: the type string of `G_VARIANT_TYPE_HANDLE`; a signed 32 bit value
///   that, by convention, is used as an index into an array of file
///   descriptors that are sent alongside a D-Bus message.
/// - `d`: the type string of `G_VARIANT_TYPE_DOUBLE`; a double precision
///   floating point value.
/// - `s`: the type string of `G_VARIANT_TYPE_STRING`; a string.
/// - `o`: the type string of `G_VARIANT_TYPE_OBJECT_PATH`; a string in the form
///   of a D-Bus object path.
/// - `g`: the type string of `G_VARIANT_TYPE_SIGNATURE`; a string in the form of
///   a D-Bus type signature.
/// - `?`: the type string of `G_VARIANT_TYPE_BASIC`; an indefinite type that
///   is a supertype of any of the basic types.
/// - `v`: the type string of `G_VARIANT_TYPE_VARIANT`; a container type that
///   contain any other type of value.
/// - `a`: used as a prefix on another type string to mean an array of that
///   type; the type string "ai", for example, is the type of an array of
///   signed 32-bit integers.
/// - `m`: used as a prefix on another type string to mean a "maybe", or
///   "nullable", version of that type; the type string "ms", for example,
///   is the type of a value that maybe contains a string, or maybe contains
///   nothing.
/// - `()`: used to enclose zero or more other concatenated type strings to
///   create a tuple type; the type string "(is)", for example, is the type of
///   a pair of an integer and a string.
/// - `r`: the type string of `G_VARIANT_TYPE_TUPLE`; an indefinite type that is
///   a supertype of any tuple type, regardless of the number of items.
/// - `{}`: used to enclose a basic type string concatenated with another type
///   string to create a dictionary entry type, which usually appears inside of
///   an array to form a dictionary; the type string "a{sd}", for example, is
///   the type of a dictionary that maps strings to double precision floating
///   point values.
/// 
///   The first type (the basic type) is the key type and the second type is
///   the value type. The reason that the first type is restricted to being a
///   basic type is so that it can easily be hashed.
/// - `*`: the type string of `G_VARIANT_TYPE_ANY`; the indefinite type that is
///   a supertype of all types.  Note that, as with all type strings, this
///   character represents exactly one type. It cannot be used inside of tuples
///   to mean "any number of items".
/// 
/// Any type string of a container that contains an indefinite type is,
/// itself, an indefinite type. For example, the type string "a*"
/// (corresponding to `G_VARIANT_TYPE_ARRAY`) is an indefinite type
/// that is a supertype of every array type. "(*s)" is a supertype
/// of all tuples that contain exactly two items where the second
/// item is a string.
/// 
/// "a{?*}" is an indefinite type that is a supertype of all arrays
/// containing dictionary entries where the key is any basic type and
/// the value is any type at all.  This is, by definition, a dictionary,
/// so this type string corresponds to `G_VARIANT_TYPE_DICTIONARY`. Note
/// that, due to the restriction that the key of a dictionary entry must
/// be a basic type, "{**}" is not a valid type string.
///
/// The `VariantTypeProtocol` protocol exposes the methods and properties of an underlying `GVariantType` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VariantType`.
/// Alternatively, use `VariantTypeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol VariantTypeProtocol {
        /// Untyped pointer to the underlying `GVariantType` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GVariantType` instance.
    var variant_type_ptr: UnsafeMutablePointer<GVariantType>! { get }

    /// Required Initialiser for types conforming to `VariantTypeProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// This section introduces the GVariant type system. It is based, in
/// large part, on the D-Bus type system, with two major changes and
/// some minor lifting of restrictions. The
/// [D-Bus specification](http://dbus.freedesktop.org/doc/dbus-specification.html),
/// therefore, provides a significant amount of
/// information that is useful when working with GVariant.
/// 
/// The first major change with respect to the D-Bus type system is the
/// introduction of maybe (or "nullable") types.  Any type in GVariant can be
/// converted to a maybe type, in which case, "nothing" (or "null") becomes a
/// valid value.  Maybe types have been added by introducing the
/// character "m" to type strings.
/// 
/// The second major change is that the GVariant type system supports the
/// concept of "indefinite types" -- types that are less specific than
/// the normal types found in D-Bus.  For example, it is possible to speak
/// of "an array of any type" in GVariant, where the D-Bus type system
/// would require you to speak of "an array of integers" or "an array of
/// strings".  Indefinite types have been added by introducing the
/// characters "*", "?" and "r" to type strings.
/// 
/// Finally, all arbitrary restrictions relating to the complexity of
/// types are lifted along with the restriction that dictionary entries
/// may only appear nested inside of arrays.
/// 
/// Just as in D-Bus, GVariant types are described with strings ("type
/// strings").  Subject to the differences mentioned above, these strings
/// are of the same form as those found in D-Bus.  Note, however: D-Bus
/// always works in terms of messages and therefore individual type
/// strings appear nowhere in its interface.  Instead, "signatures"
/// are a concatenation of the strings of the type of each argument in a
/// message.  GVariant deals with single values directly so GVariant type
/// strings always describe the type of exactly one value.  This means
/// that a D-Bus signature string is generally not a valid GVariant type
/// string -- except in the case that it is the signature of a message
/// containing exactly one argument.
/// 
/// An indefinite type is similar in spirit to what may be called an
/// abstract type in other type systems.  No value can exist that has an
/// indefinite type as its type, but values can exist that have types
/// that are subtypes of indefinite types.  That is to say,
/// `g_variant_get_type()` will never return an indefinite type, but
/// calling `g_variant_is_of_type()` with an indefinite type may return
/// `true`.  For example, you cannot have a value that represents "an
/// array of no particular type", but you can have an "array of integers"
/// which certainly matches the type of "an array of no particular type",
/// since "array of integers" is a subtype of "array of no particular
/// type".
/// 
/// This is similar to how instances of abstract classes may not
/// directly exist in other type systems, but instances of their
/// non-abstract subtypes may.  For example, in GTK, no object that has
/// the type of `GtkBin` can exist (since `GtkBin` is an abstract class),
/// but a `GtkWindow` can certainly be instantiated, and you would say
/// that the `GtkWindow` is a `GtkBin` (since `GtkWindow` is a subclass of
/// `GtkBin`).
/// 
/// ## GVariant Type Strings
/// 
/// A GVariant type string can be any of the following:
/// 
/// - any basic type string (listed below)
/// 
/// - "v", "r" or "*"
/// 
/// - one of the characters 'a' or 'm', followed by another type string
/// 
/// - the character '(', followed by a concatenation of zero or more other
///   type strings, followed by the character ')'
/// 
/// - the character '{', followed by a basic type string (see below),
///   followed by another type string, followed by the character '}'
/// 
/// A basic type string describes a basic type (as per
/// `g_variant_type_is_basic()`) and is always a single character in length.
/// The valid basic type strings are "b", "y", "n", "q", "i", "u", "x", "t",
/// "h", "d", "s", "o", "g" and "?".
/// 
/// The above definition is recursive to arbitrary depth. "aaaaai" and
/// "(`ui(nq((y)`))s)" are both valid type strings, as is
/// `"a(aa(ui)`(qna{`ya(yd)`}))". In order to not hit memory limits, `GVariant`
/// imposes a limit on recursion depth of 65 nested containers. This is the
/// limit in the D-Bus specification (64) plus one to allow a `GDBusMessage` to
/// be nested in a top-level tuple.
/// 
/// The meaning of each of the characters is as follows:
/// - `b`: the type string of `G_VARIANT_TYPE_BOOLEAN`; a boolean value.
/// - `y`: the type string of `G_VARIANT_TYPE_BYTE`; a byte.
/// - `n`: the type string of `G_VARIANT_TYPE_INT16`; a signed 16 bit integer.
/// - `q`: the type string of `G_VARIANT_TYPE_UINT16`; an unsigned 16 bit integer.
/// - `i`: the type string of `G_VARIANT_TYPE_INT32`; a signed 32 bit integer.
/// - `u`: the type string of `G_VARIANT_TYPE_UINT32`; an unsigned 32 bit integer.
/// - `x`: the type string of `G_VARIANT_TYPE_INT64`; a signed 64 bit integer.
/// - `t`: the type string of `G_VARIANT_TYPE_UINT64`; an unsigned 64 bit integer.
/// - `h`: the type string of `G_VARIANT_TYPE_HANDLE`; a signed 32 bit value
///   that, by convention, is used as an index into an array of file
///   descriptors that are sent alongside a D-Bus message.
/// - `d`: the type string of `G_VARIANT_TYPE_DOUBLE`; a double precision
///   floating point value.
/// - `s`: the type string of `G_VARIANT_TYPE_STRING`; a string.
/// - `o`: the type string of `G_VARIANT_TYPE_OBJECT_PATH`; a string in the form
///   of a D-Bus object path.
/// - `g`: the type string of `G_VARIANT_TYPE_SIGNATURE`; a string in the form of
///   a D-Bus type signature.
/// - `?`: the type string of `G_VARIANT_TYPE_BASIC`; an indefinite type that
///   is a supertype of any of the basic types.
/// - `v`: the type string of `G_VARIANT_TYPE_VARIANT`; a container type that
///   contain any other type of value.
/// - `a`: used as a prefix on another type string to mean an array of that
///   type; the type string "ai", for example, is the type of an array of
///   signed 32-bit integers.
/// - `m`: used as a prefix on another type string to mean a "maybe", or
///   "nullable", version of that type; the type string "ms", for example,
///   is the type of a value that maybe contains a string, or maybe contains
///   nothing.
/// - `()`: used to enclose zero or more other concatenated type strings to
///   create a tuple type; the type string "(is)", for example, is the type of
///   a pair of an integer and a string.
/// - `r`: the type string of `G_VARIANT_TYPE_TUPLE`; an indefinite type that is
///   a supertype of any tuple type, regardless of the number of items.
/// - `{}`: used to enclose a basic type string concatenated with another type
///   string to create a dictionary entry type, which usually appears inside of
///   an array to form a dictionary; the type string "a{sd}", for example, is
///   the type of a dictionary that maps strings to double precision floating
///   point values.
/// 
///   The first type (the basic type) is the key type and the second type is
///   the value type. The reason that the first type is restricted to being a
///   basic type is so that it can easily be hashed.
/// - `*`: the type string of `G_VARIANT_TYPE_ANY`; the indefinite type that is
///   a supertype of all types.  Note that, as with all type strings, this
///   character represents exactly one type. It cannot be used inside of tuples
///   to mean "any number of items".
/// 
/// Any type string of a container that contains an indefinite type is,
/// itself, an indefinite type. For example, the type string "a*"
/// (corresponding to `G_VARIANT_TYPE_ARRAY`) is an indefinite type
/// that is a supertype of every array type. "(*s)" is a supertype
/// of all tuples that contain exactly two items where the second
/// item is a string.
/// 
/// "a{?*}" is an indefinite type that is a supertype of all arrays
/// containing dictionary entries where the key is any basic type and
/// the value is any type at all.  This is, by definition, a dictionary,
/// so this type string corresponds to `G_VARIANT_TYPE_DICTIONARY`. Note
/// that, due to the restriction that the key of a dictionary entry must
/// be a basic type, "{**}" is not a valid type string.
///
/// The `VariantTypeRef` type acts as a lightweight Swift reference to an underlying `GVariantType` instance.
/// It exposes methods that can operate on this data type through `VariantTypeProtocol` conformance.
/// Use `VariantTypeRef` only as an `unowned` reference to an existing `GVariantType` instance.
///
public struct VariantTypeRef: VariantTypeProtocol {
        /// Untyped pointer to the underlying `GVariantType` instance.
    /// For type-safe access, use the generated, typed pointer `variant_type_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension VariantTypeRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GVariantType>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GVariantType>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GVariantType>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GVariantType>?) {
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

    /// Reference intialiser for a related type that implements `VariantTypeProtocol`
    @inlinable init<T: VariantTypeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantTypeProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantTypeProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantTypeProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantTypeProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantTypeProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GVariantType` corresponding to the type string given
    /// by `type_string`.  It is appropriate to call `g_variant_type_free()` on
    /// the return value.
    /// 
    /// It is a programmer error to call this function with an invalid type
    /// string.  Use `g_variant_type_string_is_valid()` if you are unsure.
    @inlinable init( typeString: UnsafePointer<gchar>!) {
        let rv = g_variant_type_new(typeString)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Constructs a new tuple type, from `items`.
    /// 
    /// `length` is the number of items in `items`, or -1 to indicate that
    /// `items` is `nil`-terminated.
    /// 
    /// It is appropriate to call `g_variant_type_free()` on the return value.
    @inlinable init(tuple items: UnsafePointer<UnsafePointer<GVariantType>?>!, length: Int) {
        let rv = g_variant_type_new_tuple(items, gint(length))
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Constructs a new tuple type, from `items`.
    /// 
    /// `length` is the number of items in `items`, or -1 to indicate that
    /// `items` is `nil`-terminated.
    /// 
    /// It is appropriate to call `g_variant_type_free()` on the return value.
    @inlinable static func new(tuple items: UnsafePointer<UnsafePointer<GVariantType>?>!, length: Int) -> VariantTypeRef! {
        guard let rv = VariantTypeRef(gconstpointer: gconstpointer(g_variant_type_new_tuple(items, gint(length)))) else { return nil }
        return rv
    }

    @inlinable static func checked(arg0: UnsafePointer<gchar>!) -> VariantTypeRef! {
        guard let rv = VariantTypeRef(gconstpointer: gconstpointer(g_variant_type_checked_(arg0))) else { return nil }
        return rv
    }
}

/// This section introduces the GVariant type system. It is based, in
/// large part, on the D-Bus type system, with two major changes and
/// some minor lifting of restrictions. The
/// [D-Bus specification](http://dbus.freedesktop.org/doc/dbus-specification.html),
/// therefore, provides a significant amount of
/// information that is useful when working with GVariant.
/// 
/// The first major change with respect to the D-Bus type system is the
/// introduction of maybe (or "nullable") types.  Any type in GVariant can be
/// converted to a maybe type, in which case, "nothing" (or "null") becomes a
/// valid value.  Maybe types have been added by introducing the
/// character "m" to type strings.
/// 
/// The second major change is that the GVariant type system supports the
/// concept of "indefinite types" -- types that are less specific than
/// the normal types found in D-Bus.  For example, it is possible to speak
/// of "an array of any type" in GVariant, where the D-Bus type system
/// would require you to speak of "an array of integers" or "an array of
/// strings".  Indefinite types have been added by introducing the
/// characters "*", "?" and "r" to type strings.
/// 
/// Finally, all arbitrary restrictions relating to the complexity of
/// types are lifted along with the restriction that dictionary entries
/// may only appear nested inside of arrays.
/// 
/// Just as in D-Bus, GVariant types are described with strings ("type
/// strings").  Subject to the differences mentioned above, these strings
/// are of the same form as those found in D-Bus.  Note, however: D-Bus
/// always works in terms of messages and therefore individual type
/// strings appear nowhere in its interface.  Instead, "signatures"
/// are a concatenation of the strings of the type of each argument in a
/// message.  GVariant deals with single values directly so GVariant type
/// strings always describe the type of exactly one value.  This means
/// that a D-Bus signature string is generally not a valid GVariant type
/// string -- except in the case that it is the signature of a message
/// containing exactly one argument.
/// 
/// An indefinite type is similar in spirit to what may be called an
/// abstract type in other type systems.  No value can exist that has an
/// indefinite type as its type, but values can exist that have types
/// that are subtypes of indefinite types.  That is to say,
/// `g_variant_get_type()` will never return an indefinite type, but
/// calling `g_variant_is_of_type()` with an indefinite type may return
/// `true`.  For example, you cannot have a value that represents "an
/// array of no particular type", but you can have an "array of integers"
/// which certainly matches the type of "an array of no particular type",
/// since "array of integers" is a subtype of "array of no particular
/// type".
/// 
/// This is similar to how instances of abstract classes may not
/// directly exist in other type systems, but instances of their
/// non-abstract subtypes may.  For example, in GTK, no object that has
/// the type of `GtkBin` can exist (since `GtkBin` is an abstract class),
/// but a `GtkWindow` can certainly be instantiated, and you would say
/// that the `GtkWindow` is a `GtkBin` (since `GtkWindow` is a subclass of
/// `GtkBin`).
/// 
/// ## GVariant Type Strings
/// 
/// A GVariant type string can be any of the following:
/// 
/// - any basic type string (listed below)
/// 
/// - "v", "r" or "*"
/// 
/// - one of the characters 'a' or 'm', followed by another type string
/// 
/// - the character '(', followed by a concatenation of zero or more other
///   type strings, followed by the character ')'
/// 
/// - the character '{', followed by a basic type string (see below),
///   followed by another type string, followed by the character '}'
/// 
/// A basic type string describes a basic type (as per
/// `g_variant_type_is_basic()`) and is always a single character in length.
/// The valid basic type strings are "b", "y", "n", "q", "i", "u", "x", "t",
/// "h", "d", "s", "o", "g" and "?".
/// 
/// The above definition is recursive to arbitrary depth. "aaaaai" and
/// "(`ui(nq((y)`))s)" are both valid type strings, as is
/// `"a(aa(ui)`(qna{`ya(yd)`}))". In order to not hit memory limits, `GVariant`
/// imposes a limit on recursion depth of 65 nested containers. This is the
/// limit in the D-Bus specification (64) plus one to allow a `GDBusMessage` to
/// be nested in a top-level tuple.
/// 
/// The meaning of each of the characters is as follows:
/// - `b`: the type string of `G_VARIANT_TYPE_BOOLEAN`; a boolean value.
/// - `y`: the type string of `G_VARIANT_TYPE_BYTE`; a byte.
/// - `n`: the type string of `G_VARIANT_TYPE_INT16`; a signed 16 bit integer.
/// - `q`: the type string of `G_VARIANT_TYPE_UINT16`; an unsigned 16 bit integer.
/// - `i`: the type string of `G_VARIANT_TYPE_INT32`; a signed 32 bit integer.
/// - `u`: the type string of `G_VARIANT_TYPE_UINT32`; an unsigned 32 bit integer.
/// - `x`: the type string of `G_VARIANT_TYPE_INT64`; a signed 64 bit integer.
/// - `t`: the type string of `G_VARIANT_TYPE_UINT64`; an unsigned 64 bit integer.
/// - `h`: the type string of `G_VARIANT_TYPE_HANDLE`; a signed 32 bit value
///   that, by convention, is used as an index into an array of file
///   descriptors that are sent alongside a D-Bus message.
/// - `d`: the type string of `G_VARIANT_TYPE_DOUBLE`; a double precision
///   floating point value.
/// - `s`: the type string of `G_VARIANT_TYPE_STRING`; a string.
/// - `o`: the type string of `G_VARIANT_TYPE_OBJECT_PATH`; a string in the form
///   of a D-Bus object path.
/// - `g`: the type string of `G_VARIANT_TYPE_SIGNATURE`; a string in the form of
///   a D-Bus type signature.
/// - `?`: the type string of `G_VARIANT_TYPE_BASIC`; an indefinite type that
///   is a supertype of any of the basic types.
/// - `v`: the type string of `G_VARIANT_TYPE_VARIANT`; a container type that
///   contain any other type of value.
/// - `a`: used as a prefix on another type string to mean an array of that
///   type; the type string "ai", for example, is the type of an array of
///   signed 32-bit integers.
/// - `m`: used as a prefix on another type string to mean a "maybe", or
///   "nullable", version of that type; the type string "ms", for example,
///   is the type of a value that maybe contains a string, or maybe contains
///   nothing.
/// - `()`: used to enclose zero or more other concatenated type strings to
///   create a tuple type; the type string "(is)", for example, is the type of
///   a pair of an integer and a string.
/// - `r`: the type string of `G_VARIANT_TYPE_TUPLE`; an indefinite type that is
///   a supertype of any tuple type, regardless of the number of items.
/// - `{}`: used to enclose a basic type string concatenated with another type
///   string to create a dictionary entry type, which usually appears inside of
///   an array to form a dictionary; the type string "a{sd}", for example, is
///   the type of a dictionary that maps strings to double precision floating
///   point values.
/// 
///   The first type (the basic type) is the key type and the second type is
///   the value type. The reason that the first type is restricted to being a
///   basic type is so that it can easily be hashed.
/// - `*`: the type string of `G_VARIANT_TYPE_ANY`; the indefinite type that is
///   a supertype of all types.  Note that, as with all type strings, this
///   character represents exactly one type. It cannot be used inside of tuples
///   to mean "any number of items".
/// 
/// Any type string of a container that contains an indefinite type is,
/// itself, an indefinite type. For example, the type string "a*"
/// (corresponding to `G_VARIANT_TYPE_ARRAY`) is an indefinite type
/// that is a supertype of every array type. "(*s)" is a supertype
/// of all tuples that contain exactly two items where the second
/// item is a string.
/// 
/// "a{?*}" is an indefinite type that is a supertype of all arrays
/// containing dictionary entries where the key is any basic type and
/// the value is any type at all.  This is, by definition, a dictionary,
/// so this type string corresponds to `G_VARIANT_TYPE_DICTIONARY`. Note
/// that, due to the restriction that the key of a dictionary entry must
/// be a basic type, "{**}" is not a valid type string.
///
/// The `VariantType` type acts as an owner of an underlying `GVariantType` instance.
/// It provides the methods that can operate on this data type through `VariantTypeProtocol` conformance.
/// Use `VariantType` as a strong reference or owner of a `GVariantType` instance.
///
open class VariantType: VariantTypeProtocol {
        /// Untyped pointer to the underlying `GVariantType` instance.
    /// For type-safe access, use the generated, typed pointer `variant_type_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GVariantType>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GVariantType>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantType` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GVariantType>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VariantType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GVariantType>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GVariantType` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `VariantType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GVariantType>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GVariantType, cannot ref(variant_type_ptr)
    }

    /// Reference intialiser for a related type that implements `VariantTypeProtocol`
    /// `GVariantType` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `VariantTypeProtocol`
    @inlinable public init<T: VariantTypeProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GVariantType, cannot ref(variant_type_ptr)
    }

    /// Do-nothing destructor for `GVariantType`.
    deinit {
        // no reference counting for GVariantType, cannot unref(variant_type_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantTypeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantTypeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GVariantType, cannot ref(variant_type_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantTypeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantTypeProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GVariantType, cannot ref(variant_type_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantTypeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantTypeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GVariantType, cannot ref(variant_type_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantTypeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantTypeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GVariantType, cannot ref(variant_type_ptr)
    }

    /// Creates a new `GVariantType` corresponding to the type string given
    /// by `type_string`.  It is appropriate to call `g_variant_type_free()` on
    /// the return value.
    /// 
    /// It is a programmer error to call this function with an invalid type
    /// string.  Use `g_variant_type_string_is_valid()` if you are unsure.
    @inlinable public init( typeString: UnsafePointer<gchar>!) {
        let rv = g_variant_type_new(typeString)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Constructs a new tuple type, from `items`.
    /// 
    /// `length` is the number of items in `items`, or -1 to indicate that
    /// `items` is `nil`-terminated.
    /// 
    /// It is appropriate to call `g_variant_type_free()` on the return value.
    @inlinable public init(tuple items: UnsafePointer<UnsafePointer<GVariantType>?>!, length: Int) {
        let rv = g_variant_type_new_tuple(items, gint(length))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Constructs a new tuple type, from `items`.
    /// 
    /// `length` is the number of items in `items`, or -1 to indicate that
    /// `items` is `nil`-terminated.
    /// 
    /// It is appropriate to call `g_variant_type_free()` on the return value.
    @inlinable public static func new(tuple items: UnsafePointer<UnsafePointer<GVariantType>?>!, length: Int) -> VariantType! {
        guard let rv = VariantType(gconstpointer: gconstpointer(g_variant_type_new_tuple(items, gint(length)))) else { return nil }
        return rv
    }

    @inlinable public static func checked(arg0: UnsafePointer<gchar>!) -> VariantType! {
        guard let rv = VariantType(gconstpointer: gconstpointer(g_variant_type_checked_(arg0))) else { return nil }
        return rv
    }

}

// MARK: no VariantType properties

// MARK: no VariantType signals

// MARK: VariantType has no signals
// MARK: VariantType Record: VariantTypeProtocol extension (methods and fields)
public extension VariantTypeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GVariantType` instance.
    @inlinable var variant_type_ptr: UnsafeMutablePointer<GVariantType>! { return ptr?.assumingMemoryBound(to: GVariantType.self) }

    /// Makes a copy of a `GVariantType`.  It is appropriate to call
    /// `g_variant_type_free()` on the return value.  `type` may not be `nil`.
    @inlinable func copy() -> VariantTypeRef! {
        guard let rv = VariantTypeRef(gconstpointer: gconstpointer(g_variant_type_copy(variant_type_ptr))) else { return nil }
        return rv
    }

    /// Returns a newly-allocated copy of the type string corresponding to
    /// `type`.  The returned string is nul-terminated.  It is appropriate to
    /// call `g_free()` on the return value.
    @inlinable func dupString() -> String! {
        let rv = g_variant_type_dup_string(variant_type_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Determines the element type of an array or maybe type.
    /// 
    /// This function may only be used with array or maybe types.
    @inlinable func element() -> VariantTypeRef! {
        guard let rv = VariantTypeRef(gconstpointer: gconstpointer(g_variant_type_element(variant_type_ptr))) else { return nil }
        return rv
    }

    /// Compares `type1` and `type2` for equality.
    /// 
    /// Only returns `true` if the types are exactly equal.  Even if one type
    /// is an indefinite type and the other is a subtype of it, `false` will
    /// be returned if they are not exactly equal.  If you want to check for
    /// subtypes, use `g_variant_type_is_subtype_of()`.
    /// 
    /// The argument types of `type1` and `type2` are only `gconstpointer` to
    /// allow use with `GHashTable` without function pointer casting.  For
    /// both arguments, a valid `GVariantType` must be provided.
    @inlinable func equal<VariantTypeT: VariantTypeProtocol>(type2: VariantTypeT) -> Bool {
        let rv = ((g_variant_type_equal(variant_type_ptr, type2.variant_type_ptr)) != 0)
        return rv
    }

    /// Determines the first item type of a tuple or dictionary entry
    /// type.
    /// 
    /// This function may only be used with tuple or dictionary entry types,
    /// but must not be used with the generic tuple type
    /// `G_VARIANT_TYPE_TUPLE`.
    /// 
    /// In the case of a dictionary entry type, this returns the type of
    /// the key.
    /// 
    /// `nil` is returned in case of `type` being `G_VARIANT_TYPE_UNIT`.
    /// 
    /// This call, together with `g_variant_type_next()` provides an iterator
    /// interface over tuple and dictionary entry types.
    @inlinable func first() -> VariantTypeRef! {
        guard let rv = VariantTypeRef(gconstpointer: gconstpointer(g_variant_type_first(variant_type_ptr))) else { return nil }
        return rv
    }

    /// Frees a `GVariantType` that was allocated with
    /// `g_variant_type_copy()`, `g_variant_type_new()` or one of the container
    /// type constructor functions.
    /// 
    /// In the case that `type` is `nil`, this function does nothing.
    /// 
    /// Since 2.24
    @inlinable func free() {
        g_variant_type_free(variant_type_ptr)
    
    }

    /// Returns the length of the type string corresponding to the given
    /// `type`.  This function must be used to determine the valid extent of
    /// the memory region returned by `g_variant_type_peek_string()`.
    @inlinable func getStringLength() -> Int {
        let rv = Int(g_variant_type_get_string_length(variant_type_ptr))
        return rv
    }

    /// Hashes `type`.
    /// 
    /// The argument type of `type` is only `gconstpointer` to allow use with
    /// `GHashTable` without function pointer casting.  A valid
    /// `GVariantType` must be provided.
    @inlinable func hash() -> Int {
        let rv = Int(g_variant_type_hash(variant_type_ptr))
        return rv
    }

    /// Checks if `type` is a subtype of `supertype`.
    /// 
    /// This function returns `true` if `type` is a subtype of `supertype`.  All
    /// types are considered to be subtypes of themselves.  Aside from that,
    /// only indefinite types can have subtypes.
    @inlinable func isSubtypeOf<VariantTypeT: VariantTypeProtocol>(supertype: VariantTypeT) -> Bool {
        let rv = ((g_variant_type_is_subtype_of(variant_type_ptr, supertype.variant_type_ptr)) != 0)
        return rv
    }

    /// Determines the key type of a dictionary entry type.
    /// 
    /// This function may only be used with a dictionary entry type.  Other
    /// than the additional restriction, this call is equivalent to
    /// `g_variant_type_first()`.
    @inlinable func key() -> VariantTypeRef! {
        guard let rv = VariantTypeRef(gconstpointer: gconstpointer(g_variant_type_key(variant_type_ptr))) else { return nil }
        return rv
    }

    /// Determines the number of items contained in a tuple or
    /// dictionary entry type.
    /// 
    /// This function may only be used with tuple or dictionary entry types,
    /// but must not be used with the generic tuple type
    /// `G_VARIANT_TYPE_TUPLE`.
    /// 
    /// In the case of a dictionary entry type, this function will always
    /// return 2.
    @inlinable func nItems() -> Int {
        let rv = Int(g_variant_type_n_items(variant_type_ptr))
        return rv
    }

    /// Determines the next item type of a tuple or dictionary entry
    /// type.
    /// 
    /// `type` must be the result of a previous call to
    /// `g_variant_type_first()` or `g_variant_type_next()`.
    /// 
    /// If called on the key type of a dictionary entry then this call
    /// returns the value type.  If called on the value type of a dictionary
    /// entry then this call returns `nil`.
    /// 
    /// For tuples, `nil` is returned when `type` is the last item in a tuple.
    @inlinable func next() -> VariantTypeRef! {
        guard let rv = VariantTypeRef(gconstpointer: gconstpointer(g_variant_type_next(variant_type_ptr))) else { return nil }
        return rv
    }

    /// Returns the type string corresponding to the given `type`.  The
    /// result is not nul-terminated; in order to determine its length you
    /// must call `g_variant_type_get_string_length()`.
    /// 
    /// To get a nul-terminated string, see `g_variant_type_dup_string()`.
    @inlinable func peekString() -> String! {
        let rv = g_variant_type_peek_string(variant_type_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Determines the value type of a dictionary entry type.
    /// 
    /// This function may only be used with a dictionary entry type.
    @inlinable func value() -> VariantTypeRef! {
        guard let rv = VariantTypeRef(gconstpointer: gconstpointer(g_variant_type_value(variant_type_ptr))) else { return nil }
        return rv
    }

    /// Parses a `GVariant` from a text representation.
    /// 
    /// A single `GVariant` is parsed from the content of `text`.
    /// 
    /// The format is described [here](#gvariant-text).
    /// 
    /// The memory at `limit` will never be accessed and the parser behaves as
    /// if the character at `limit` is the nul terminator.  This has the
    /// effect of bounding `text`.
    /// 
    /// If `endptr` is non-`nil` then `text` is permitted to contain data
    /// following the value that this function parses and `endptr` will be
    /// updated to point to the first character past the end of the text
    /// parsed by this function.  If `endptr` is `nil` and there is extra data
    /// then an error is returned.
    /// 
    /// If `type` is non-`nil` then the value will be parsed to have that
    /// type.  This may result in additional parse errors (in the case that
    /// the parsed value doesn't fit the type) but may also result in fewer
    /// errors (in the case that the type would have been ambiguous, such as
    /// with empty arrays).
    /// 
    /// In the event that the parsing is successful, the resulting `GVariant`
    /// is returned. It is never floating, and must be freed with
    /// `g_variant_unref()`.
    /// 
    /// In case of any error, `nil` will be returned.  If `error` is non-`nil`
    /// then it will be set to reflect the error that occurred.
    /// 
    /// Officially, the language understood by the parser is "any string
    /// produced by `g_variant_print()`".
    /// 
    /// There may be implementation specific restrictions on deeply nested values,
    /// which would result in a `G_VARIANT_PARSE_ERROR_RECURSION` error. `GVariant` is
    /// guaranteed to handle nesting up to at least 64 levels.
    @inlinable func variantParse(text: UnsafePointer<gchar>!, limit: UnsafePointer<gchar>? = nil, endptr: UnsafeMutablePointer<UnsafePointer<gchar>?>? = nil) throws -> VariantRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = VariantRef(gconstpointer: gconstpointer(g_variant_parse(variant_type_ptr, text, limit, endptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Determines if the given `type` is an array type.  This is true if the
    /// type string for `type` starts with an 'a'.
    /// 
    /// This function returns `true` for any indefinite type for which every
    /// definite subtype is an array type -- `G_VARIANT_TYPE_ARRAY`, for
    /// example.
    @inlinable var isArray: Bool {
        /// Determines if the given `type` is an array type.  This is true if the
        /// type string for `type` starts with an 'a'.
        /// 
        /// This function returns `true` for any indefinite type for which every
        /// definite subtype is an array type -- `G_VARIANT_TYPE_ARRAY`, for
        /// example.
        get {
            let rv = ((g_variant_type_is_array(variant_type_ptr)) != 0)
            return rv
        }
    }

    /// Determines if the given `type` is a basic type.
    /// 
    /// Basic types are booleans, bytes, integers, doubles, strings, object
    /// paths and signatures.
    /// 
    /// Only a basic type may be used as the key of a dictionary entry.
    /// 
    /// This function returns `false` for all indefinite types except
    /// `G_VARIANT_TYPE_BASIC`.
    @inlinable var isBasic: Bool {
        /// Determines if the given `type` is a basic type.
        /// 
        /// Basic types are booleans, bytes, integers, doubles, strings, object
        /// paths and signatures.
        /// 
        /// Only a basic type may be used as the key of a dictionary entry.
        /// 
        /// This function returns `false` for all indefinite types except
        /// `G_VARIANT_TYPE_BASIC`.
        get {
            let rv = ((g_variant_type_is_basic(variant_type_ptr)) != 0)
            return rv
        }
    }

    /// Determines if the given `type` is a container type.
    /// 
    /// Container types are any array, maybe, tuple, or dictionary
    /// entry types plus the variant type.
    /// 
    /// This function returns `true` for any indefinite type for which every
    /// definite subtype is a container -- `G_VARIANT_TYPE_ARRAY`, for
    /// example.
    @inlinable var isContainer: Bool {
        /// Determines if the given `type` is a container type.
        /// 
        /// Container types are any array, maybe, tuple, or dictionary
        /// entry types plus the variant type.
        /// 
        /// This function returns `true` for any indefinite type for which every
        /// definite subtype is a container -- `G_VARIANT_TYPE_ARRAY`, for
        /// example.
        get {
            let rv = ((g_variant_type_is_container(variant_type_ptr)) != 0)
            return rv
        }
    }

    /// Determines if the given `type` is definite (ie: not indefinite).
    /// 
    /// A type is definite if its type string does not contain any indefinite
    /// type characters ('*', '?', or 'r').
    /// 
    /// A `GVariant` instance may not have an indefinite type, so calling
    /// this function on the result of `g_variant_get_type()` will always
    /// result in `true` being returned.  Calling this function on an
    /// indefinite type like `G_VARIANT_TYPE_ARRAY`, however, will result in
    /// `false` being returned.
    @inlinable var isDefinite: Bool {
        /// Determines if the given `type` is definite (ie: not indefinite).
        /// 
        /// A type is definite if its type string does not contain any indefinite
        /// type characters ('*', '?', or 'r').
        /// 
        /// A `GVariant` instance may not have an indefinite type, so calling
        /// this function on the result of `g_variant_get_type()` will always
        /// result in `true` being returned.  Calling this function on an
        /// indefinite type like `G_VARIANT_TYPE_ARRAY`, however, will result in
        /// `false` being returned.
        get {
            let rv = ((g_variant_type_is_definite(variant_type_ptr)) != 0)
            return rv
        }
    }

    /// Determines if the given `type` is a dictionary entry type.  This is
    /// true if the type string for `type` starts with a '{'.
    /// 
    /// This function returns `true` for any indefinite type for which every
    /// definite subtype is a dictionary entry type --
    /// `G_VARIANT_TYPE_DICT_ENTRY`, for example.
    @inlinable var isDictEntry: Bool {
        /// Determines if the given `type` is a dictionary entry type.  This is
        /// true if the type string for `type` starts with a '{'.
        /// 
        /// This function returns `true` for any indefinite type for which every
        /// definite subtype is a dictionary entry type --
        /// `G_VARIANT_TYPE_DICT_ENTRY`, for example.
        get {
            let rv = ((g_variant_type_is_dict_entry(variant_type_ptr)) != 0)
            return rv
        }
    }

    /// Determines if the given `type` is a maybe type.  This is true if the
    /// type string for `type` starts with an 'm'.
    /// 
    /// This function returns `true` for any indefinite type for which every
    /// definite subtype is a maybe type -- `G_VARIANT_TYPE_MAYBE`, for
    /// example.
    @inlinable var isMaybe: Bool {
        /// Determines if the given `type` is a maybe type.  This is true if the
        /// type string for `type` starts with an 'm'.
        /// 
        /// This function returns `true` for any indefinite type for which every
        /// definite subtype is a maybe type -- `G_VARIANT_TYPE_MAYBE`, for
        /// example.
        get {
            let rv = ((g_variant_type_is_maybe(variant_type_ptr)) != 0)
            return rv
        }
    }

    /// Determines if the given `type` is a tuple type.  This is true if the
    /// type string for `type` starts with a '(' or if `type` is
    /// `G_VARIANT_TYPE_TUPLE`.
    /// 
    /// This function returns `true` for any indefinite type for which every
    /// definite subtype is a tuple type -- `G_VARIANT_TYPE_TUPLE`, for
    /// example.
    @inlinable var isTuple: Bool {
        /// Determines if the given `type` is a tuple type.  This is true if the
        /// type string for `type` starts with a '(' or if `type` is
        /// `G_VARIANT_TYPE_TUPLE`.
        /// 
        /// This function returns `true` for any indefinite type for which every
        /// definite subtype is a tuple type -- `G_VARIANT_TYPE_TUPLE`, for
        /// example.
        get {
            let rv = ((g_variant_type_is_tuple(variant_type_ptr)) != 0)
            return rv
        }
    }

    /// Determines if the given `type` is the variant type.
    @inlinable var isVariant: Bool {
        /// Determines if the given `type` is the variant type.
        get {
            let rv = ((g_variant_type_is_variant(variant_type_ptr)) != 0)
            return rv
        }
    }

    /// Returns the length of the type string corresponding to the given
    /// `type`.  This function must be used to determine the valid extent of
    /// the memory region returned by `g_variant_type_peek_string()`.
    @inlinable var stringLength: Int {
        /// Returns the length of the type string corresponding to the given
        /// `type`.  This function must be used to determine the valid extent of
        /// the memory region returned by `g_variant_type_peek_string()`.
        get {
            let rv = Int(g_variant_type_get_string_length(variant_type_ptr))
            return rv
        }
    }


}



