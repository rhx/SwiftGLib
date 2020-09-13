import CGLib

// MARK: - VariantDict Record

/// The `VariantDictProtocol` protocol exposes the methods and properties of an underlying `GVariantDict` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VariantDict`.
/// Alternatively, use `VariantDictRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
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
public protocol VariantDictProtocol {
        /// Untyped pointer to the underlying `GVariantDict` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GVariantDict` instance.
    var variant_dict_ptr: UnsafeMutablePointer<GVariantDict>! { get }

}

/// The `VariantDictRef` type acts as a lightweight Swift reference to an underlying `GVariantDict` instance.
/// It exposes methods that can operate on this data type through `VariantDictProtocol` conformance.
/// Use `VariantDictRef` only as an `unowned` reference to an existing `GVariantDict` instance.
///
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

/// The `VariantDict` type acts as a reference-counted owner of an underlying `GVariantDict` instance.
/// It provides the methods that can operate on this data type through `VariantDictProtocol` conformance.
/// Use `VariantDict` as a strong reference or owner of a `GVariantDict` instance.
///
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
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
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



