import CGLib

/// Prototype of a `GChildWatchSource` callback, called when a child
/// process has exited.  To interpret `status`, see the documentation
/// for g_spawn_check_exit_status().
public typealias ChildWatchFunc = GChildWatchFunc

/// Specifies the type of function passed to g_clear_handle_id().
/// The implementation is expected to free the resource identified
/// by `handle_id`; for instance, if `handle_id` is a `GSource` ID,
/// g_source_remove() can be used.
public typealias ClearHandleFunc = GClearHandleFunc

/// Specifies the type of a comparison function used to compare two
/// values.  The function should return a negative integer if the first
/// value comes before the second, 0 if they are equal, or a positive
/// integer if the first value comes after the second.
public typealias CompareDataFunc = GCompareDataFunc

/// Specifies the type of a comparison function used to compare two
/// values.  The function should return a negative integer if the first
/// value comes before the second, 0 if they are equal, or a positive
/// integer if the first value comes after the second.
public typealias CompareFunc = GCompareFunc

/// A function of this signature is used to copy the node data
/// when doing a deep-copy of a tree.
public typealias CopyFunc = GCopyFunc

/// Specifies the type of function passed to g_dataset_foreach(). It is
/// called with each `GQuark` id and associated data element, together
/// with the `user_data` parameter supplied to g_dataset_foreach().
public typealias DataForeachFunc = GDataForeachFunc

/// Specifies the type of function which is called when a data element
/// is destroyed. It is passed the pointer to the data element and
/// should free any memory and resources allocated for it.
public typealias DestroyNotify = GDestroyNotify

/// The type of functions that are used to 'duplicate' an object.
/// What this means depends on the context, it could just be
/// incrementing the reference count, if `data` is a ref-counted
/// object.
public typealias DuplicateFunc = GDuplicateFunc

/// Specifies the type of a function used to test two values for
/// equality. The function should return `true` if both values are equal
/// and `false` otherwise.
public typealias EqualFunc = GEqualFunc

/// Declares a type of function which takes an arbitrary
/// data pointer argument and has no return value. It is
/// not currently used in GLib or GTK+.
public typealias FreeFunc = GFreeFunc

/// Specifies the type of functions passed to g_list_foreach() and
/// g_slist_foreach().
public typealias Func = GFunc

/// Specifies the type of the function passed to g_hash_table_foreach().
/// It is called with each key/value pair, together with the `user_data`
/// parameter which is passed to g_hash_table_foreach().
public typealias HFunc = GHFunc

/// Specifies the type of the function passed to
/// g_hash_table_foreach_remove(). It is called with each key/value
/// pair, together with the `user_data` parameter passed to
/// g_hash_table_foreach_remove(). It should return `true` if the
/// key/value pair should be removed from the `GHashTable`.
public typealias HRFunc = GHRFunc

/// Specifies the type of the hash function which is passed to
/// g_hash_table_new() when a `GHashTable` is created.
/// 
/// The function is passed a key and should return a `guint` hash value.
/// The functions g_direct_hash(), g_int_hash() and g_str_hash() provide
/// hash functions which can be used when the key is a `gpointer`, `gint`*,
/// and `gchar`* respectively.
/// 
/// g_direct_hash() is also the appropriate hash function for keys
/// of the form `GINT_TO_POINTER (n)` (or similar macros).
/// 
/// A good hash functions should produce
/// hash values that are evenly distributed over a fairly large range.
/// The modulus is taken with the hash table size (a prime number) to
/// find the 'bucket' to place each key into. The function should also
/// be very fast, since it is called for each key lookup.
/// 
/// Note that the hash functions provided by GLib have these qualities,
/// but are not particularly robust against manufactured keys that
/// cause hash collisions. Therefore, you should consider choosing
/// a more secure hash function when using a GHashTable with keys
/// that originate in untrusted data (such as HTTP requests).
/// Using g_str_hash() in that situation might make your application
/// vulerable to
/// [Algorithmic Complexity Attacks](https://lwn.net/Articles/474912/).
/// 
/// The key to choosing a good hash is unpredictability.  Even
/// cryptographic hashes are very easy to find collisions for when the
/// remainder is taken modulo a somewhat predictable prime number.  There
/// must be an element of randomness that an attacker is unable to guess.
public typealias HashFunc = GHashFunc

/// Defines the type of a hook function that can be invoked
/// by g_hook_list_invoke_check().
public typealias HookCheckFunc = GHookCheckFunc

/// Defines the type of function used by g_hook_list_marshal_check().
public typealias HookCheckMarshaller = GHookCheckMarshaller

/// Defines the type of function used to compare `GHook` elements in
/// g_hook_insert_sorted().
public typealias HookCompareFunc = GHookCompareFunc

/// Defines the type of function to be called when a hook in a
/// list of hooks gets finalized.
public typealias HookFinalizeFunc = GHookFinalizeFunc

/// Defines the type of the function passed to g_hook_find().
public typealias HookFindFunc = GHookFindFunc

/// Defines the type of a hook function that can be invoked
/// by g_hook_list_invoke().
public typealias HookFunc = GHookFunc

/// Defines the type of function used by g_hook_list_marshal().
public typealias HookMarshaller = GHookMarshaller

/// Specifies the type of function passed to g_io_add_watch() or
/// g_io_add_watch_full(), which is called when the requested condition
/// on a `GIOChannel` is satisfied.
public typealias IOFunc = GIOFunc

/// Specifies the prototype of log handler functions.
/// 
/// The default log handler, g_log_default_handler(), automatically appends a
/// new-line character to `message` when printing it. It is advised that any
/// custom log handler functions behave similarly, so that logging calls in user
/// code do not need modifying to add a new-line character to the message if the
/// log handler is changed.
/// 
/// This is not used if structured logging is enabled; see
/// [Using Structured Logging][using-structured-logging].
public typealias LogFunc = GLogFunc

/// Writer function for log entries. A log entry is a collection of one or more
/// `GLogFields`, using the standard [field names from journal
/// specification](https://www.freedesktop.org/software/systemd/man/systemd.journal-fields.html).
/// See g_log_structured() for more information.
/// 
/// Writer functions must ignore fields which they do not recognise, unless they
/// can write arbitrary binary output, as field values may be arbitrary binary.
/// 
/// `log_level` is guaranteed to be included in `fields` as the `PRIORITY` field,
/// but is provided separately for convenience of deciding whether or where to
/// output the log entry.
/// 
/// Writer functions should return `G_LOG_WRITER_HANDLED` if they handled the log
/// message successfully or if they deliberately ignored it. If there was an
/// error handling the message (for example, if the writer function is meant to
/// send messages to a remote logging server and there is a network error), it
/// should return `G_LOG_WRITER_UNHANDLED`. This allows writer functions to be
/// chained and fall back to simpler handlers in case of failure.
public typealias LogWriterFunc = GLogWriterFunc

/// Specifies the type of function passed to g_node_children_foreach().
/// The function is called with each child node, together with the user
/// data passed to g_node_children_foreach().
public typealias NodeForeachFunc = GNodeForeachFunc

/// Specifies the type of function passed to g_node_traverse(). The
/// function is called with each of the nodes visited, together with the
/// user data passed to g_node_traverse(). If the function returns
/// `true`, then the traversal is stopped.
public typealias NodeTraverseFunc = GNodeTraverseFunc

/// The type of function to be passed as callback for `G_OPTION_ARG_CALLBACK`
/// options.
public typealias OptionArgFunc = GOptionArgFunc

/// The type of function to be used as callback when a parse error occurs.
public typealias OptionErrorFunc = GOptionErrorFunc

/// The type of function that can be called before and after parsing.
public typealias OptionParseFunc = GOptionParseFunc

/// Specifies the type of function passed to g_main_context_set_poll_func().
/// The semantics of the function should match those of the poll() system call.
public typealias PollFunc = GPollFunc

/// Specifies the type of the print handler functions.
/// These are called with the complete formatted string to output.
public typealias PrintFunc = GPrintFunc

/// Specifies the type of the function passed to g_regex_replace_eval().
/// It is called for each occurrence of the pattern in the string passed
/// to g_regex_replace_eval(), and it should append the replacement to
/// `result`.
public typealias RegexEvalCallback = GRegexEvalCallback

/// Specifies the type of the message handler function.
public typealias ScannerMsgFunc = GScannerMsgFunc

/// A `GSequenceIterCompareFunc` is a function used to compare iterators.
/// It must return zero if the iterators compare equal, a negative value
/// if `a` comes before `b`, and a positive value if `b` comes before `a`.
public typealias SequenceIterCompareFunc = GSequenceIterCompareFunc

/// This is just a placeholder for `GClosureMarshal`,
/// which cannot be used here for dependency reasons.
public typealias SourceDummyMarshal = GSourceDummyMarshal

/// Specifies the type of function passed to g_timeout_add(),
/// g_timeout_add_full(), g_idle_add(), and g_idle_add_full().
/// 
/// When calling g_source_set_callback(), you may need to cast a function of a
/// different type to this type. Use G_SOURCE_FUNC() to avoid warnings about
/// incompatible function types.
public typealias SourceFunc = GSourceFunc

/// Specifies the type of the setup function passed to g_spawn_async(),
/// g_spawn_sync() and g_spawn_async_with_pipes(), which can, in very
/// limited ways, be used to affect the child's execution.
/// 
/// On POSIX platforms, the function is called in the child after GLib
/// has performed all the setup it plans to perform, but before calling
/// exec(). Actions taken in this function will only affect the child,
/// not the parent.
/// 
/// On Windows, the function is called in the parent. Its usefulness on
/// Windows is thus questionable. In many cases executing the child setup
/// function in the parent can have ill effects, and you should be very
/// careful when porting software to Windows that uses child setup
/// functions.
/// 
/// However, even on POSIX, you are extremely limited in what you can
/// safely do from a `GSpawnChildSetupFunc`, because any mutexes that were
/// held by other threads in the parent process at the time of the fork()
/// will still be locked in the child process, and they will never be
/// unlocked (since the threads that held them don't exist in the child).
/// POSIX allows only async-signal-safe functions (see signal(7)) to be
/// called in the child between fork() and exec(), which drastically limits
/// the usefulness of child setup functions.
/// 
/// In particular, it is not safe to call any function which may
/// call malloc(), which includes POSIX functions such as setenv().
/// If you need to set up the child environment differently from
/// the parent, you should use g_get_environ(), g_environ_setenv(),
/// and g_environ_unsetenv(), and then pass the complete environment
/// list to the `g_spawn...` function.
public typealias SpawnChildSetupFunc = GSpawnChildSetupFunc

/// The type used for test case functions that take an extra pointer
/// argument.
public typealias TestDataFunc = GTestDataFunc

/// The type used for functions that operate on test fixtures.  This is
/// used for the fixture setup and teardown functions as well as for the
/// testcases themselves.
/// 
/// `user_data` is a pointer to the data that was given when registering
/// the test case.
/// 
/// `fixture` will be a pointer to the area of memory allocated by the
/// test framework, of the size requested.  If the requested size was
/// zero then `fixture` will be equal to `user_data`.
public typealias TestFixtureFunc = GTestFixtureFunc

/// The type used for test case functions.
public typealias TestFunc = GTestFunc

/// Specifies the prototype of fatal log handler functions.
public typealias TestLogFatalFunc = GTestLogFatalFunc

/// Specifies the type of the `func` functions passed to g_thread_new()
/// or g_thread_try_new().
public typealias ThreadFunc = GThreadFunc

/// The type of functions which are used to translate user-visible
/// strings, for <option>--help</option> output.
public typealias TranslateFunc = GTranslateFunc

/// Specifies the type of function passed to g_tree_traverse(). It is
/// passed the key and value of each node, together with the `user_data`
/// parameter passed to g_tree_traverse(). If the function returns
/// `true`, the traversal is stopped.
public typealias TraverseFunc = GTraverseFunc

/// The type of functions to be called when a UNIX fd watch source
/// triggers.
public typealias UnixFDSourceFunc = GUnixFDSourceFunc

/// Declares a type of function which takes no arguments
/// and has no return value. It is used to specify the type
/// function passed to g_atexit().
public typealias VoidFunc = GVoidFunc
