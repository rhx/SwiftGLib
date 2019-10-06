import CGLib

// MARK: - VariantBuilder Record

/// The `VariantBuilderProtocol` protocol exposes the methods and properties of an underlying `GVariantBuilder` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VariantBuilder`.
/// Alternatively, use `VariantBuilderRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A utility type for constructing container-type `GVariant` instances.
/// 
/// This is an opaque structure and may only be accessed using the
/// following functions.
/// 
/// `GVariantBuilder` is not threadsafe in any way.  Do not attempt to
/// access it from more than one thread.
public protocol VariantBuilderProtocol {
    /// Untyped pointer to the underlying `GVariantBuilder` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GVariantBuilder` instance.
    var variant_builder_ptr: UnsafeMutablePointer<GVariantBuilder> { get }
}

/// The `VariantBuilderRef` type acts as a lightweight Swift reference to an underlying `GVariantBuilder` instance.
/// It exposes methods that can operate on this data type through `VariantBuilderProtocol` conformance.
/// Use `VariantBuilderRef` only as an `unowned` reference to an existing `GVariantBuilder` instance.
///
/// A utility type for constructing container-type `GVariant` instances.
/// 
/// This is an opaque structure and may only be accessed using the
/// following functions.
/// 
/// `GVariantBuilder` is not threadsafe in any way.  Do not attempt to
/// access it from more than one thread.
public struct VariantBuilderRef: VariantBuilderProtocol {
    /// Untyped pointer to the underlying `GVariantBuilder` instance.
    /// For type-safe access, use the generated, typed pointer `variant_builder_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension VariantBuilderRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GVariantBuilder>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `VariantBuilderProtocol`
    init<T: VariantBuilderProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    init( type: VariantTypeProtocol) {
        let rv = g_variant_builder_new(cast(type.ptr))
        self.init(cast(rv))
    }
}

/// The `VariantBuilder` type acts as a reference-counted owner of an underlying `GVariantBuilder` instance.
/// It provides the methods that can operate on this data type through `VariantBuilderProtocol` conformance.
/// Use `VariantBuilder` as a strong reference or owner of a `GVariantBuilder` instance.
///
/// A utility type for constructing container-type `GVariant` instances.
/// 
/// This is an opaque structure and may only be accessed using the
/// following functions.
/// 
/// `GVariantBuilder` is not threadsafe in any way.  Do not attempt to
/// access it from more than one thread.
open class VariantBuilder: VariantBuilderProtocol {
    /// Untyped pointer to the underlying `GVariantBuilder` instance.
    /// For type-safe access, use the generated, typed pointer `variant_builder_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `VariantBuilder` instance.
    public init(_ op: UnsafeMutablePointer<GVariantBuilder>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `VariantBuilderProtocol`
    /// Will retain `GVariantBuilder`.
    public convenience init<T: VariantBuilderProtocol>(_ other: T) {
        self.init(cast(other.variant_builder_ptr))
        g_variant_builder_ref(cast(variant_builder_ptr))
    }

    /// Releases the underlying `GVariantBuilder` instance using `g_variant_builder_unref`.
    deinit {
        g_variant_builder_unref(cast(variant_builder_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GVariantBuilder.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GVariantBuilder.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GVariantBuilder.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantBuilderProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GVariantBuilder>(opaquePointer))
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
    public convenience init( type: VariantTypeProtocol) {
        let rv = g_variant_builder_new(cast(type.ptr))
        self.init(cast(rv))
    }


}

// MARK: - no VariantBuilder properties

// MARK: - no signals


public extension VariantBuilderProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GVariantBuilder` instance.
    var variant_builder_ptr: UnsafeMutablePointer<GVariantBuilder> { return ptr.assumingMemoryBound(to: GVariantBuilder.self) }


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
    func add(value: VariantProtocol) {
        g_variant_builder_add_value(cast(variant_builder_ptr), cast(value.ptr))
    
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
    func clear() {
        g_variant_builder_clear(cast(variant_builder_ptr))
    
    }

    /// Closes the subcontainer inside the given `builder` that was opened by
    /// the most recent call to `g_variant_builder_open()`.
    /// 
    /// It is an error to call this function in any way that would create an
    /// inconsistent value to be constructed (ie: too few values added to the
    /// subcontainer).
    func close() {
        g_variant_builder_close(cast(variant_builder_ptr))
    
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
    func end() -> UnsafeMutablePointer<GVariant>! {
        let rv = g_variant_builder_end(cast(variant_builder_ptr))
        return cast(rv)
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
    func init_(type: VariantTypeProtocol) {
        g_variant_builder_init(cast(variant_builder_ptr), cast(type.ptr))
    
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
    func open(type: VariantTypeProtocol) {
        g_variant_builder_open(cast(variant_builder_ptr), cast(type.ptr))
    
    }

    /// Increases the reference count on `builder`.
    /// 
    /// Don't call this on stack-allocated `GVariantBuilder` instances or bad
    /// things will happen.
    func ref() -> UnsafeMutablePointer<GVariantBuilder>! {
        let rv = g_variant_builder_ref(cast(variant_builder_ptr))
        return cast(rv)
    }

    /// Decreases the reference count on `builder`.
    /// 
    /// In the event that there are no more references, releases all memory
    /// associated with the `GVariantBuilder`.
    /// 
    /// Don't call this on stack-allocated `GVariantBuilder` instances or bad
    /// things will happen.
    func unref() {
        g_variant_builder_unref(cast(variant_builder_ptr))
    
    }
}



