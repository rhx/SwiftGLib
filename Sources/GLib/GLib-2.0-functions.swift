import CGLib

/// A wrapper for the POSIX `access()` function. This function is used to
/// test a pathname for one or several of read, write or execute
/// permissions, or just existence.
/// 
/// On Windows, the file protection mechanism is not at all POSIX-like,
/// and the underlying function in the C library only checks the
/// FAT-style READONLY attribute, and does not look at the ACL of a
/// file at all. This function is this in practise almost useless on
/// Windows. Software that needs to handle file permissions on Windows
/// more exactly should use the Win32 API.
/// 
/// See your C library manual for more details about `access()`.
@inlinable public func access(filename: UnsafePointer<gchar>!, mode: Int) -> Int {
    let rv = Int(g_access(filename, gint(mode)))
    return rv
}




/// Determines the numeric value of a character as a decimal digit.
/// Differs from `g_unichar_digit_value()` because it takes a char, so
/// there's no worry about sign extension if characters are signed.
@inlinable public func asciiDigitValue(c: gchar) -> Int {
    let rv = Int(g_ascii_digit_value(c))
    return rv
}




/// Converts a `gdouble` to a string, using the '.' as
/// decimal point.
/// 
/// This function generates enough precision that converting
/// the string back using `g_ascii_strtod()` gives the same machine-number
/// (on machines with IEEE compatible 64bit doubles). It is
/// guaranteed that the size of the resulting string will never
/// be larger than `G_ASCII_DTOSTR_BUF_SIZE` bytes, including the terminating
/// nul character, which is always added.
@inlinable public func asciiDtostr(buffer: UnsafeMutablePointer<gchar>!, bufLen: Int, d: Double) -> String! {
    guard let rv = g_ascii_dtostr(buffer, gint(bufLen), gdouble(d)).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Converts a `gdouble` to a string, using the '.' as
/// decimal point. To format the number you pass in
/// a `printf()`-style format string. Allowed conversion
/// specifiers are 'e', 'E', 'f', 'F', 'g' and 'G'.
/// 
/// The returned buffer is guaranteed to be nul-terminated.
/// 
/// If you just want to want to serialize the value into a
/// string, use `g_ascii_dtostr()`.
@inlinable public func asciiFormatd(buffer: UnsafeMutablePointer<gchar>!, bufLen: Int, format: UnsafePointer<gchar>!, d: Double) -> String! {
    guard let rv = g_ascii_formatd(buffer, gint(bufLen), format, gdouble(d)).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Compare two strings, ignoring the case of ASCII characters.
/// 
/// Unlike the BSD `strcasecmp()` function, this only recognizes standard
/// ASCII letters and ignores the locale, treating all non-ASCII
/// bytes as if they are not letters.
/// 
/// This function should be used only on strings that are known to be
/// in encodings where the bytes corresponding to ASCII letters always
/// represent themselves. This includes UTF-8 and the ISO-8859-*
/// charsets, but not for instance double-byte encodings like the
/// Windows Codepage 932, where the trailing bytes of double-byte
/// characters include all ASCII letters. If you compare two CP932
/// strings using this function, you will get false matches.
/// 
/// Both `s1` and `s2` must be non-`nil`.
@inlinable public func asciiStrcasecmp(s1: UnsafePointer<gchar>!, s2: UnsafePointer<gchar>!) -> Int {
    let rv = Int(g_ascii_strcasecmp(s1, s2))
    return rv
}




/// Converts all upper case ASCII letters to lower case ASCII letters.
@inlinable public func asciiStrdown(str: UnsafePointer<gchar>!, len: gssize) -> String! {
    guard let rv = g_ascii_strdown(str, len).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// A convenience function for converting a string to a signed number.
/// 
/// This function assumes that `str` contains only a number of the given
/// `base` that is within inclusive bounds limited by `min` and `max`. If
/// this is true, then the converted number is stored in `out_num`. An
/// empty string is not a valid input. A string with leading or
/// trailing whitespace is also an invalid input.
/// 
/// `base` can be between 2 and 36 inclusive. Hexadecimal numbers must
/// not be prefixed with "0x" or "0X". Such a problem does not exist
/// for octal numbers, since they were usually prefixed with a zero
/// which does not change the value of the parsed number.
/// 
/// Parsing failures result in an error with the `G_NUMBER_PARSER_ERROR`
/// domain. If the input is invalid, the error code will be
/// `G_NUMBER_PARSER_ERROR_INVALID`. If the parsed number is out of
/// bounds - `G_NUMBER_PARSER_ERROR_OUT_OF_BOUNDS`.
/// 
/// See `g_ascii_strtoll()` if you have more complex needs such as
/// parsing a string which starts with a number, but then has other
/// characters.
@inlinable public func asciiStringToSigned(str: UnsafePointer<gchar>!, base: Int, min: gint64, max: gint64, outNum: UnsafeMutablePointer<gint64>! = nil) throws -> Bool {
    var error: UnsafeMutablePointer<GError>?
    let rv = ((g_ascii_string_to_signed(str, guint(base), min, max, outNum, &error)) != 0)
    if let error = error { throw GLibError(error) }
    return rv
}




/// A convenience function for converting a string to an unsigned number.
/// 
/// This function assumes that `str` contains only a number of the given
/// `base` that is within inclusive bounds limited by `min` and `max`. If
/// this is true, then the converted number is stored in `out_num`. An
/// empty string is not a valid input. A string with leading or
/// trailing whitespace is also an invalid input. A string with a leading sign
/// (`-` or `+`) is not a valid input for the unsigned parser.
/// 
/// `base` can be between 2 and 36 inclusive. Hexadecimal numbers must
/// not be prefixed with "0x" or "0X". Such a problem does not exist
/// for octal numbers, since they were usually prefixed with a zero
/// which does not change the value of the parsed number.
/// 
/// Parsing failures result in an error with the `G_NUMBER_PARSER_ERROR`
/// domain. If the input is invalid, the error code will be
/// `G_NUMBER_PARSER_ERROR_INVALID`. If the parsed number is out of
/// bounds - `G_NUMBER_PARSER_ERROR_OUT_OF_BOUNDS`.
/// 
/// See `g_ascii_strtoull()` if you have more complex needs such as
/// parsing a string which starts with a number, but then has other
/// characters.
@inlinable public func asciiStringToUnsigned(str: UnsafePointer<gchar>!, base: Int, min: guint64, max: guint64, outNum: UnsafeMutablePointer<guint64>! = nil) throws -> Bool {
    var error: UnsafeMutablePointer<GError>?
    let rv = ((g_ascii_string_to_unsigned(str, guint(base), min, max, outNum, &error)) != 0)
    if let error = error { throw GLibError(error) }
    return rv
}




/// Compare `s1` and `s2`, ignoring the case of ASCII characters and any
/// characters after the first `n` in each string.
/// 
/// Unlike the BSD `strcasecmp()` function, this only recognizes standard
/// ASCII letters and ignores the locale, treating all non-ASCII
/// characters as if they are not letters.
/// 
/// The same warning as in `g_ascii_strcasecmp()` applies: Use this
/// function only on strings known to be in encodings where bytes
/// corresponding to ASCII letters always represent themselves.
@inlinable public func asciiStrncasecmp(s1: UnsafePointer<gchar>!, s2: UnsafePointer<gchar>!, n: Int) -> Int {
    let rv = Int(g_ascii_strncasecmp(s1, s2, gsize(n)))
    return rv
}




/// Converts a string to a `gdouble` value.
/// 
/// This function behaves like the standard `strtod()` function
/// does in the C locale. It does this without actually changing
/// the current locale, since that would not be thread-safe.
/// A limitation of the implementation is that this function
/// will still accept localized versions of infinities and NANs.
/// 
/// This function is typically used when reading configuration
/// files or other non-user input that should be locale independent.
/// To handle input from the user you should normally use the
/// locale-sensitive system `strtod()` function.
/// 
/// To convert from a `gdouble` to a string in a locale-insensitive
/// way, use `g_ascii_dtostr()`.
/// 
/// If the correct value would cause overflow, plus or minus `HUGE_VAL`
/// is returned (according to the sign of the value), and `ERANGE` is
/// stored in `errno`. If the correct value would cause underflow,
/// zero is returned and `ERANGE` is stored in `errno`.
/// 
/// This function resets `errno` before calling `strtod()` so that
/// you can reliably detect overflow and underflow.
@inlinable public func asciiStrtod(nptr: UnsafePointer<gchar>!, endptr: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! = nil) -> Double {
    let rv = Double(g_ascii_strtod(nptr, endptr))
    return rv
}




/// Converts a string to a `gint64` value.
/// This function behaves like the standard `strtoll()` function
/// does in the C locale. It does this without actually
/// changing the current locale, since that would not be
/// thread-safe.
/// 
/// This function is typically used when reading configuration
/// files or other non-user input that should be locale independent.
/// To handle input from the user you should normally use the
/// locale-sensitive system `strtoll()` function.
/// 
/// If the correct value would cause overflow, `G_MAXINT64` or `G_MININT64`
/// is returned, and `ERANGE` is stored in `errno`.
/// If the base is outside the valid range, zero is returned, and
/// `EINVAL` is stored in `errno`. If the
/// string conversion fails, zero is returned, and `endptr` returns `nptr`
/// (if `endptr` is non-`nil`).
@inlinable public func asciiStrtoll(nptr: UnsafePointer<gchar>!, endptr: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! = nil, base: Int) -> gint64 {
    let rv = g_ascii_strtoll(nptr, endptr, guint(base))
    return rv
}




/// Converts a string to a `guint64` value.
/// This function behaves like the standard `strtoull()` function
/// does in the C locale. It does this without actually
/// changing the current locale, since that would not be
/// thread-safe.
/// 
/// Note that input with a leading minus sign (`-`) is accepted, and will return
/// the negation of the parsed number, unless that would overflow a `guint64`.
/// Critically, this means you cannot assume that a short fixed length input will
/// never result in a low return value, as the input could have a leading `-`.
/// 
/// This function is typically used when reading configuration
/// files or other non-user input that should be locale independent.
/// To handle input from the user you should normally use the
/// locale-sensitive system `strtoull()` function.
/// 
/// If the correct value would cause overflow, `G_MAXUINT64`
/// is returned, and `ERANGE` is stored in `errno`.
/// If the base is outside the valid range, zero is returned, and
/// `EINVAL` is stored in `errno`.
/// If the string conversion fails, zero is returned, and `endptr` returns
/// `nptr` (if `endptr` is non-`nil`).
@inlinable public func asciiStrtoull(nptr: UnsafePointer<gchar>!, endptr: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! = nil, base: Int) -> guint64 {
    let rv = g_ascii_strtoull(nptr, endptr, guint(base))
    return rv
}




/// Converts all lower case ASCII letters to upper case ASCII letters.
@inlinable public func asciiStrup(str: UnsafePointer<gchar>!, len: gssize) -> String! {
    guard let rv = g_ascii_strup(str, len).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Convert a character to ASCII lower case.
/// 
/// Unlike the standard C library `tolower()` function, this only
/// recognizes standard ASCII letters and ignores the locale, returning
/// all non-ASCII characters unchanged, even if they are lower case
/// letters in a particular character set. Also unlike the standard
/// library function, this takes and returns a char, not an int, so
/// don't call it on `EOF` but no need to worry about casting to `guchar`
/// before passing a possibly non-ASCII character in.
@inlinable public func asciiTolower(c: gchar) -> gchar {
    let rv = g_ascii_tolower(c)
    return rv
}




/// Convert a character to ASCII upper case.
/// 
/// Unlike the standard C library `toupper()` function, this only
/// recognizes standard ASCII letters and ignores the locale, returning
/// all non-ASCII characters unchanged, even if they are upper case
/// letters in a particular character set. Also unlike the standard
/// library function, this takes and returns a char, not an int, so
/// don't call it on `EOF` but no need to worry about casting to `guchar`
/// before passing a possibly non-ASCII character in.
@inlinable public func asciiToupper(c: gchar) -> gchar {
    let rv = g_ascii_toupper(c)
    return rv
}




/// Determines the numeric value of a character as a hexadecimal
/// digit. Differs from `g_unichar_xdigit_value()` because it takes
/// a char, so there's no worry about sign extension if characters
/// are signed.
@inlinable public func asciiXdigitValue(c: gchar) -> Int {
    let rv = Int(g_ascii_xdigit_value(c))
    return rv
}




@inlinable public func assertWarning(logDomain: UnsafePointer<CChar>!, file: UnsafePointer<CChar>!, line: gint, prettyFunction: UnsafePointer<CChar>!, expression: UnsafePointer<CChar>!) {
    g_assert_warning(logDomain, file, line, prettyFunction, expression)

}




@inlinable public func assertionMessage(domain: UnsafePointer<CChar>!, file: UnsafePointer<CChar>!, line: Int, `func`: UnsafePointer<CChar>!, message: UnsafePointer<CChar>!) {
    g_assertion_message(domain, file, gint(line), `func`, message)

}




@inlinable public func assertionMessageCmpstr(domain: UnsafePointer<CChar>!, file: UnsafePointer<CChar>!, line: Int, `func`: UnsafePointer<CChar>!, expr: UnsafePointer<CChar>!, arg1: UnsafePointer<CChar>!, cmp: UnsafePointer<CChar>!, arg2: UnsafePointer<CChar>!) {
    g_assertion_message_cmpstr(domain, file, gint(line), `func`, expr, arg1, cmp, arg2)

}




@inlinable public func assertionMessageError<GLibErrorT: ErrorProtocol>(domain: UnsafePointer<CChar>!, file: UnsafePointer<CChar>!, line: Int, `func`: UnsafePointer<CChar>!, expr: UnsafePointer<CChar>!, error: GLibErrorT, errorDomain: GQuark, errorCode: Int) {
    g_assertion_message_error(domain, file, gint(line), `func`, expr, error.error_ptr, errorDomain, gint(errorCode))

}




/// Internal function used to print messages from the public `g_assert()` and
/// `g_assert_not_reached()` macros.
@inlinable public func assertionMessageExpr(domain: UnsafePointer<CChar>? = nil, file: UnsafePointer<CChar>!, line: Int, `func`: UnsafePointer<CChar>!, expr: UnsafePointer<CChar>? = nil) {
    g_assertion_message_expr(domain, file, gint(line), `func`, expr)

}




/// Specifies a function to be called at normal program termination.
/// 
/// Since GLib 2.8.2, on Windows `g_atexit()` actually is a preprocessor
/// macro that maps to a call to the `atexit()` function in the C
/// library. This means that in case the code that calls `g_atexit()`,
/// i.e. `atexit()`, is in a DLL, the function will be called when the
/// DLL is detached from the program. This typically makes more sense
/// than that the function is called when the GLib DLL is detached,
/// which happened earlier when `g_atexit()` was a function in the GLib
/// DLL.
/// 
/// The behaviour of `atexit()` in the context of dynamically loaded
/// modules is not formally specified and varies wildly.
/// 
/// On POSIX systems, calling `g_atexit()` (or `atexit()`) in a dynamically
/// loaded module which is unloaded before the program terminates might
/// well cause a crash at program exit.
/// 
/// Some POSIX systems implement `atexit()` like Windows, and have each
/// dynamically loaded module maintain an own atexit chain that is
/// called when the module is unloaded.
/// 
/// On other POSIX systems, before a dynamically loaded module is
/// unloaded, the registered atexit functions (if any) residing in that
/// module are called, regardless where the code that registered them
/// resided. This is presumably the most robust approach.
/// 
/// As can be seen from the above, for portability it's best to avoid
/// calling `g_atexit()` (or `atexit()`) except in the main executable of a
/// program.
///
/// **atexit is deprecated:**
/// It is best to avoid g_atexit().
@available(*, deprecated) @inlinable public func atexit(`func`: GVoidFunc?) {
    g_atexit(`func`)

}




/// Atomically adds `val` to the value of `atomic`.
/// 
/// Think of this operation as an atomic version of
/// `{ tmp = *atomic; *atomic += val; return tmp; }`.
/// 
/// This call acts as a full compiler and hardware memory barrier.
/// 
/// Before version 2.30, this function did not return a value
/// (but `g_atomic_int_exchange_and_add()` did, and had the same meaning).
@inlinable public func atomicIntAdd(atomic: UnsafeMutablePointer<gint>!, val: Int) -> Int {
    let rv = Int(g_atomic_int_add(atomic, gint(val)))
    return rv
}




/// Performs an atomic bitwise 'and' of the value of `atomic` and `val`,
/// storing the result back in `atomic`.
/// 
/// This call acts as a full compiler and hardware memory barrier.
/// 
/// Think of this operation as an atomic version of
/// `{ tmp = *atomic; *atomic &= val; return tmp; }`.
@inlinable public func atomicIntAnd(atomic: UnsafeMutablePointer<guint>!, val: Int) -> Int {
    let rv = Int(g_atomic_int_and(atomic, guint(val)))
    return rv
}




/// Compares `atomic` to `oldval` and, if equal, sets it to `newval`.
/// If `atomic` was not equal to `oldval` then no change occurs.
/// 
/// This compare and exchange is done atomically.
/// 
/// Think of this operation as an atomic version of
/// `{ if (*atomic == oldval) { *atomic = newval; return TRUE; } else return FALSE; }`.
/// 
/// This call acts as a full compiler and hardware memory barrier.
@inlinable public func atomicIntCompareAndExchange(atomic: UnsafeMutablePointer<gint>!, oldval: Int, newval: Int) -> Bool {
    let rv = ((g_atomic_int_compare_and_exchange(atomic, gint(oldval), gint(newval))) != 0)
    return rv
}




/// Decrements the value of `atomic` by 1.
/// 
/// Think of this operation as an atomic version of
/// `{ *atomic -= 1; return (*atomic == 0); }`.
/// 
/// This call acts as a full compiler and hardware memory barrier.
@inlinable public func atomicIntDecAndTest(atomic: UnsafeMutablePointer<gint>!) -> Bool {
    let rv = ((g_atomic_int_dec_and_test(atomic)) != 0)
    return rv
}




/// This function existed before `g_atomic_int_add()` returned the prior
/// value of the integer (which it now does).  It is retained only for
/// compatibility reasons.  Don't use this function in new code.
///
/// **atomic_int_exchange_and_add is deprecated:**
/// Use g_atomic_int_add() instead.
@available(*, deprecated) @inlinable public func atomicIntExchangeAndAdd(atomic: UnsafeMutablePointer<gint>!, val: Int) -> Int {
    let rv = Int(g_atomic_int_exchange_and_add(atomic, gint(val)))
    return rv
}




/// Gets the current value of `atomic`.
/// 
/// This call acts as a full compiler and hardware
/// memory barrier (before the get).
@inlinable public func atomicIntGet(atomic: UnsafePointer<gint>!) -> Int {
    let rv = Int(g_atomic_int_get(atomic))
    return rv
}




/// Increments the value of `atomic` by 1.
/// 
/// Think of this operation as an atomic version of `{ *atomic += 1; }`.
/// 
/// This call acts as a full compiler and hardware memory barrier.
@inlinable public func atomicIntInc(atomic: UnsafeMutablePointer<gint>!) {
    g_atomic_int_inc(atomic)

}




/// Performs an atomic bitwise 'or' of the value of `atomic` and `val`,
/// storing the result back in `atomic`.
/// 
/// Think of this operation as an atomic version of
/// `{ tmp = *atomic; *atomic |= val; return tmp; }`.
/// 
/// This call acts as a full compiler and hardware memory barrier.
@inlinable public func atomicIntOr(atomic: UnsafeMutablePointer<guint>!, val: Int) -> Int {
    let rv = Int(g_atomic_int_or(atomic, guint(val)))
    return rv
}




/// Sets the value of `atomic` to `newval`.
/// 
/// This call acts as a full compiler and hardware
/// memory barrier (after the set).
@inlinable public func atomicIntSet(atomic: UnsafeMutablePointer<gint>!, newval: Int) {
    g_atomic_int_set(atomic, gint(newval))

}




/// Performs an atomic bitwise 'xor' of the value of `atomic` and `val`,
/// storing the result back in `atomic`.
/// 
/// Think of this operation as an atomic version of
/// `{ tmp = *atomic; *atomic ^= val; return tmp; }`.
/// 
/// This call acts as a full compiler and hardware memory barrier.
@inlinable public func atomicIntXor(atomic: UnsafeMutablePointer<guint>!, val: Int) -> Int {
    let rv = Int(g_atomic_int_xor(atomic, guint(val)))
    return rv
}




/// Atomically adds `val` to the value of `atomic`.
/// 
/// Think of this operation as an atomic version of
/// `{ tmp = *atomic; *atomic += val; return tmp; }`.
/// 
/// This call acts as a full compiler and hardware memory barrier.
@inlinable public func atomicPointerAdd(atomic: UnsafeMutableRawPointer!, val: gssize) -> gssize {
    let rv = g_atomic_pointer_add(atomic, val)
    return rv
}




/// Performs an atomic bitwise 'and' of the value of `atomic` and `val`,
/// storing the result back in `atomic`.
/// 
/// Think of this operation as an atomic version of
/// `{ tmp = *atomic; *atomic &= val; return tmp; }`.
/// 
/// This call acts as a full compiler and hardware memory barrier.
@inlinable public func atomicPointerAnd(atomic: UnsafeMutableRawPointer!, val: Int) -> Int {
    let rv = Int(g_atomic_pointer_and(atomic, gsize(val)))
    return rv
}




/// Compares `atomic` to `oldval` and, if equal, sets it to `newval`.
/// If `atomic` was not equal to `oldval` then no change occurs.
/// 
/// This compare and exchange is done atomically.
/// 
/// Think of this operation as an atomic version of
/// `{ if (*atomic == oldval) { *atomic = newval; return TRUE; } else return FALSE; }`.
/// 
/// This call acts as a full compiler and hardware memory barrier.
@inlinable public func atomicPointerCompareAndExchange(atomic: UnsafeMutableRawPointer!, oldval: gpointer! = nil, newval: gpointer! = nil) -> Bool {
    let rv = ((g_atomic_pointer_compare_and_exchange(atomic, oldval, newval)) != 0)
    return rv
}




/// Gets the current value of `atomic`.
/// 
/// This call acts as a full compiler and hardware
/// memory barrier (before the get).
@inlinable public func atomicPointerGet(atomic: UnsafeMutableRawPointer!) -> gpointer! {
    guard let rv = g_atomic_pointer_get(atomic) else { return nil }
    return rv
}




/// Performs an atomic bitwise 'or' of the value of `atomic` and `val`,
/// storing the result back in `atomic`.
/// 
/// Think of this operation as an atomic version of
/// `{ tmp = *atomic; *atomic |= val; return tmp; }`.
/// 
/// This call acts as a full compiler and hardware memory barrier.
@inlinable public func atomicPointerOr(atomic: UnsafeMutableRawPointer!, val: Int) -> Int {
    let rv = Int(g_atomic_pointer_or(atomic, gsize(val)))
    return rv
}




/// Sets the value of `atomic` to `newval`.
/// 
/// This call acts as a full compiler and hardware
/// memory barrier (after the set).
@inlinable public func atomicPointerSet(atomic: UnsafeMutableRawPointer!, newval: gpointer! = nil) {
    g_atomic_pointer_set(atomic, newval)

}




/// Performs an atomic bitwise 'xor' of the value of `atomic` and `val`,
/// storing the result back in `atomic`.
/// 
/// Think of this operation as an atomic version of
/// `{ tmp = *atomic; *atomic ^= val; return tmp; }`.
/// 
/// This call acts as a full compiler and hardware memory barrier.
@inlinable public func atomicPointerXor(atomic: UnsafeMutableRawPointer!, val: Int) -> Int {
    let rv = Int(g_atomic_pointer_xor(atomic, gsize(val)))
    return rv
}




/// Atomically acquires a reference on the data pointed by `mem_block`.
@inlinable public func atomicRcBoxAcquire(memBlock: gpointer!) -> gpointer! {
    guard let rv = gpointer?(g_atomic_rc_box_acquire(memBlock)) else { return nil }
    return rv
}




/// Allocates `block_size` bytes of memory, and adds atomic
/// reference counting semantics to it.
/// 
/// The data will be freed when its reference count drops to
/// zero.
/// 
/// The allocated data is guaranteed to be suitably aligned for any
/// built-in type.
@inlinable public func atomicRcBoxAlloc(blockSize: Int) -> gpointer! {
    guard let rv = gpointer?(g_atomic_rc_box_alloc(gsize(blockSize))) else { return nil }
    return rv
}




/// Allocates `block_size` bytes of memory, and adds atomic
/// reference counting semantics to it.
/// 
/// The contents of the returned data is set to zero.
/// 
/// The data will be freed when its reference count drops to
/// zero.
/// 
/// The allocated data is guaranteed to be suitably aligned for any
/// built-in type.
@inlinable public func atomicRcBoxAlloc0(blockSize: Int) -> gpointer! {
    guard let rv = gpointer?(g_atomic_rc_box_alloc0(gsize(blockSize))) else { return nil }
    return rv
}




/// Allocates a new block of data with atomic reference counting
/// semantics, and copies `block_size` bytes of `mem_block`
/// into it.
@inlinable public func atomicRcBoxDup(blockSize: Int, memBlock: gconstpointer) -> gpointer! {
    guard let rv = gpointer?(g_atomic_rc_box_dup(gsize(blockSize), memBlock)) else { return nil }
    return rv
}




/// Retrieves the size of the reference counted data pointed by `mem_block`.
@inlinable public func atomicRcBoxGetSize(memBlock: gpointer!) -> Int {
    let rv = Int(g_atomic_rc_box_get_size(memBlock))
    return rv
}




/// Atomically releases a reference on the data pointed by `mem_block`.
/// 
/// If the reference was the last one, it will free the
/// resources allocated for `mem_block`.
@inlinable public func atomicRcBoxRelease(memBlock: gpointer!) {
    g_atomic_rc_box_release(memBlock)

}




/// Atomically releases a reference on the data pointed by `mem_block`.
/// 
/// If the reference was the last one, it will call `clear_func`
/// to clear the contents of `mem_block`, and then will free the
/// resources allocated for `mem_block`.
@inlinable public func atomicRcBoxReleaseFull(memBlock: gpointer!, clearFunc: GDestroyNotify?) {
    g_atomic_rc_box_release_full(memBlock, clearFunc)

}




/// Atomically compares the current value of `arc` with `val`.
@inlinable public func atomicRefCountCompare(arc: UnsafeMutablePointer<gatomicrefcount>!, val: Int) -> Bool {
    let rv = ((g_atomic_ref_count_compare(arc, gint(val))) != 0)
    return rv
}




/// Atomically decreases the reference count.
@inlinable public func atomicRefCountDec(arc: UnsafeMutablePointer<gatomicrefcount>!) -> Bool {
    let rv = ((g_atomic_ref_count_dec(arc)) != 0)
    return rv
}




/// Atomically increases the reference count.
@inlinable public func atomicRefCountInc(arc: UnsafeMutablePointer<gatomicrefcount>!) {
    g_atomic_ref_count_inc(arc)

}




/// Initializes a reference count variable.
@inlinable public func atomicRefCountInit(arc: UnsafeMutablePointer<gatomicrefcount>!) {
    g_atomic_ref_count_init(arc)

}




/// Decode a sequence of Base-64 encoded text into binary data.  Note
/// that the returned binary data is not necessarily zero-terminated,
/// so it should not be used as a character string.
@inlinable public func base64Decode(text: UnsafePointer<gchar>!, outLen: UnsafeMutablePointer<gsize>!) -> String! {
    guard let rv = g_base64_decode(text, outLen).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Decode a sequence of Base-64 encoded text into binary data
/// by overwriting the input data.
@inlinable public func base64DecodeInplace(text: UnsafeMutablePointer<gchar>!, outLen: UnsafeMutablePointer<gsize>!) -> String! {
    guard let rv = g_base64_decode_inplace(text, outLen).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Incrementally decode a sequence of binary data from its Base-64 stringified
/// representation. By calling this function multiple times you can convert
/// data in chunks to avoid having to have the full encoded data in memory.
/// 
/// The output buffer must be large enough to fit all the data that will
/// be written to it. Since base64 encodes 3 bytes in 4 chars you need
/// at least: (`len` / 4) * 3 + 3 bytes (+ 3 may be needed in case of non-zero
/// state).
@inlinable public func base64DecodeStep(`in`: UnsafePointer<gchar>!, len: Int, out: UnsafeMutablePointer<guchar>!, state: UnsafeMutablePointer<gint>!, save: UnsafeMutablePointer<guint>!) -> Int {
    let rv = Int(g_base64_decode_step(`in`, gsize(len), out, state, save))
    return rv
}




/// Encode a sequence of binary data into its Base-64 stringified
/// representation.
@inlinable public func base64Encode(data: UnsafePointer<guchar>! = nil, len: Int) -> String! {
    guard let rv = g_base64_encode(data, gsize(len)).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Flush the status from a sequence of calls to `g_base64_encode_step()`.
/// 
/// The output buffer must be large enough to fit all the data that will
/// be written to it. It will need up to 4 bytes, or up to 5 bytes if
/// line-breaking is enabled.
/// 
/// The `out` array will not be automatically nul-terminated.
@inlinable public func base64EncodeClose(breakLines: Bool, out: UnsafeMutablePointer<gchar>!, state: UnsafeMutablePointer<gint>!, save: UnsafeMutablePointer<gint>!) -> Int {
    let rv = Int(g_base64_encode_close(gboolean((breakLines) ? 1 : 0), out, state, save))
    return rv
}




/// Incrementally encode a sequence of binary data into its Base-64 stringified
/// representation. By calling this function multiple times you can convert
/// data in chunks to avoid having to have the full encoded data in memory.
/// 
/// When all of the data has been converted you must call
/// `g_base64_encode_close()` to flush the saved state.
/// 
/// The output buffer must be large enough to fit all the data that will
/// be written to it. Due to the way base64 encodes you will need
/// at least: (`len` / 3 + 1) * 4 + 4 bytes (+ 4 may be needed in case of
/// non-zero state). If you enable line-breaking you will need at least:
/// ((`len` / 3 + 1) * 4 + 4) / 76 + 1 bytes of extra space.
/// 
/// `break_lines` is typically used when putting base64-encoded data in emails.
/// It breaks the lines at 76 columns instead of putting all of the text on
/// the same line. This avoids problems with long lines in the email system.
/// Note however that it breaks the lines with `LF` characters, not
/// `CR LF` sequences, so the result cannot be passed directly to SMTP
/// or certain other protocols.
@inlinable public func base64EncodeStep(`in`: UnsafePointer<guchar>!, len: Int, breakLines: Bool, out: UnsafeMutablePointer<gchar>!, state: UnsafeMutablePointer<gint>!, save: UnsafeMutablePointer<gint>!) -> Int {
    let rv = Int(g_base64_encode_step(`in`, gsize(len), gboolean((breakLines) ? 1 : 0), out, state, save))
    return rv
}




/// Gets the name of the file without any leading directory
/// components. It returns a pointer into the given file name
/// string.
///
/// **basename is deprecated:**
/// Use g_path_get_basename() instead, but notice
///     that g_path_get_basename() allocates new memory for the
///     returned string, unlike this function which returns a pointer
///     into the argument.
@available(*, deprecated) @inlinable public func basename(fileName: UnsafePointer<gchar>!) -> String! {
    guard let rv = g_basename(fileName).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Sets the indicated `lock_bit` in `address`.  If the bit is already
/// set, this call will block until `g_bit_unlock()` unsets the
/// corresponding bit.
/// 
/// Attempting to lock on two different bits within the same integer is
/// not supported and will very probably cause deadlocks.
/// 
/// The value of the bit that is set is (1u << `bit`).  If `bit` is not
/// between 0 and 31 then the result is undefined.
/// 
/// This function accesses `address` atomically.  All other accesses to
/// `address` must be atomic in order for this function to work
/// reliably.
@inlinable public func bitLock(address: UnsafeMutablePointer<gint>!, lockBit: Int) {
    g_bit_lock(address, gint(lockBit))

}




/// Find the position of the first bit set in `mask`, searching
/// from (but not including) `nth_bit` upwards. Bits are numbered
/// from 0 (least significant) to `sizeof(#gulong)` * 8 - 1 (31 or 63,
/// usually). To start searching from the 0th bit, set `nth_bit` to -1.
@inlinable public func bitNthLsf(mask: Int, nthBit: Int) -> Int {
    let rv = Int(g_bit_nth_lsf(gulong(mask), gint(nthBit)))
    return rv
}




/// Find the position of the first bit set in `mask`, searching
/// from (but not including) `nth_bit` downwards. Bits are numbered
/// from 0 (least significant) to `sizeof(#gulong)` * 8 - 1 (31 or 63,
/// usually). To start searching from the last bit, set `nth_bit` to
/// -1 or GLIB_SIZEOF_LONG * 8.
@inlinable public func bitNthMsf(mask: Int, nthBit: Int) -> Int {
    let rv = Int(g_bit_nth_msf(gulong(mask), gint(nthBit)))
    return rv
}




/// Gets the number of bits used to hold `number`,
/// e.g. if `number` is 4, 3 bits are needed.
@inlinable public func bitStorage(number: Int) -> Int {
    let rv = Int(g_bit_storage(gulong(number)))
    return rv
}




/// Sets the indicated `lock_bit` in `address`, returning `true` if
/// successful.  If the bit is already set, returns `false` immediately.
/// 
/// Attempting to lock on two different bits within the same integer is
/// not supported.
/// 
/// The value of the bit that is set is (1u << `bit`).  If `bit` is not
/// between 0 and 31 then the result is undefined.
/// 
/// This function accesses `address` atomically.  All other accesses to
/// `address` must be atomic in order for this function to work
/// reliably.
@inlinable public func bitTrylock(address: UnsafeMutablePointer<gint>!, lockBit: Int) -> Bool {
    let rv = ((g_bit_trylock(address, gint(lockBit))) != 0)
    return rv
}




/// Clears the indicated `lock_bit` in `address`.  If another thread is
/// currently blocked in `g_bit_lock()` on this same bit then it will be
/// woken up.
/// 
/// This function accesses `address` atomically.  All other accesses to
/// `address` must be atomic in order for this function to work
/// reliably.
@inlinable public func bitUnlock(address: UnsafeMutablePointer<gint>!, lockBit: Int) {
    g_bit_unlock(address, gint(lockBit))

}




@inlinable public func bookmarkFileErrorQuark() -> GQuark {
    let rv = g_bookmark_file_error_quark()
    return rv
}





// *** buildFilename() is not available because it has a varargs (...) parameter!





/// Behaves exactly like `g_build_filename()`, but takes the path elements
/// as a va_list. This function is mainly meant for language bindings.
#if !os(Linux)
@inlinable public func buildFilenameValist(firstElement: UnsafePointer<gchar>!, args: UnsafeMutablePointer<va_list>!) -> String! {
    guard let rv = g_build_filename_valist(firstElement, args).map({ String(cString: $0) }) else { return nil }
    return rv
}
#endif




/// Behaves exactly like `g_build_filename()`, but takes the path elements
/// as a string array, instead of varargs. This function is mainly
/// meant for language bindings.
@inlinable public func buildFilenamev(args: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>!) -> String! {
    guard let rv = g_build_filenamev(args).map({ String(cString: $0) }) else { return nil }
    return rv
}





// *** buildPath() is not available because it has a varargs (...) parameter!





/// Behaves exactly like `g_build_path()`, but takes the path elements
/// as a string array, instead of varargs. This function is mainly
/// meant for language bindings.
@inlinable public func buildPathv(separator: UnsafePointer<gchar>!, args: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>!) -> String! {
    guard let rv = g_build_pathv(separator, args).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Frees the memory allocated by the `GByteArray`. If `free_segment` is
/// `true` it frees the actual byte data. If the reference count of
/// `array` is greater than one, the `GByteArray` wrapper is preserved but
/// the size of `array` will be set to zero.
@inlinable public func byteArrayFree<ByteArrayT: ByteArrayProtocol>(array: ByteArrayT, freeSegment: Bool) -> UnsafeMutablePointer<guint8>! {
    guard let rv = g_byte_array_free(array.byte_array_ptr, gboolean((freeSegment) ? 1 : 0)) else { return nil }
    return rv
}




/// Transfers the data from the `GByteArray` into a new immutable `GBytes`.
/// 
/// The `GByteArray` is freed unless the reference count of `array` is greater
/// than one, the `GByteArray` wrapper is preserved but the size of `array`
/// will be set to zero.
/// 
/// This is identical to using `g_bytes_new_take()` and `g_byte_array_free()`
/// together.
@inlinable public func byteArrayFreeToBytes<ByteArrayT: ByteArrayProtocol>(array: ByteArrayT) -> BytesRef! {
    guard let rv = BytesRef(gconstpointer: gconstpointer(g_byte_array_free_to_bytes(array.byte_array_ptr))) else { return nil }
    return rv
}




/// Creates a new `GByteArray` with a reference count of 1.
@inlinable public func byteArrayNew() -> GLib.ByteArrayRef! {
    guard let rv = GLib.ByteArrayRef(g_byte_array_new()) else { return nil }
    return rv
}




/// Create byte array containing the data. The data will be owned by the array
/// and will be freed with `g_free()`, i.e. it could be allocated using `g_strdup()`.
@inlinable public func byteArrayNewTake(data: UnsafeMutablePointer<guint8>!, len: Int) -> GLib.ByteArrayRef! {
    guard let rv = GLib.ByteArrayRef(g_byte_array_new_take(data, gsize(len))) else { return nil }
    return rv
}




/// Frees the data in the array and resets the size to zero, while
/// the underlying array is preserved for use elsewhere and returned
/// to the caller.
@inlinable public func byteArraySteal<ByteArrayT: ByteArrayProtocol>(array: ByteArrayT, len: UnsafeMutablePointer<gsize>! = nil) -> UnsafeMutablePointer<guint8>! {
    guard let rv = g_byte_array_steal(array.byte_array_ptr, len) else { return nil }
    return rv
}




/// Atomically decrements the reference count of `array` by one. If the
/// reference count drops to 0, all memory allocated by the array is
/// released. This function is thread-safe and may be called from any
/// thread.
@inlinable public func byteArrayUnref<ByteArrayT: ByteArrayProtocol>(array: ByteArrayT) {
    g_byte_array_unref(array.byte_array_ptr)

}




/// Gets the canonical file name from `filename`. All triple slashes are turned into
/// single slashes, and all `..` and `.`s resolved against `relative_to`.
/// 
/// Symlinks are not followed, and the returned path is guaranteed to be absolute.
/// 
/// If `filename` is an absolute path, `relative_to` is ignored. Otherwise,
/// `relative_to` will be prepended to `filename` to make it absolute. `relative_to`
/// must be an absolute path, or `nil`. If `relative_to` is `nil`, it'll fallback
/// to `g_get_current_dir()`.
/// 
/// This function never fails, and will canonicalize file paths even if they don't
/// exist.
/// 
/// No file system I/O is done.
@inlinable public func canonicalize(filename: UnsafePointer<gchar>!, relativeTo: UnsafePointer<gchar>? = nil) -> String! {
    guard let rv = g_canonicalize_filename(filename, relativeTo).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// A wrapper for the POSIX `chdir()` function. The function changes the
/// current directory of the process to `path`.
/// 
/// See your C library manual for more details about `chdir()`.
@inlinable public func chdir(path: UnsafePointer<gchar>!) -> Int {
    let rv = Int(g_chdir(path))
    return rv
}




/// Checks that the GLib library in use is compatible with the
/// given version. Generally you would pass in the constants
/// `GLIB_MAJOR_VERSION`, `GLIB_MINOR_VERSION`, `GLIB_MICRO_VERSION`
/// as the three arguments to this function; that produces
/// a check that the library in use is compatible with
/// the version of GLib the application or module was compiled
/// against.
/// 
/// Compatibility is defined by two things: first the version
/// of the running library is newer than the version
/// `required_major.required_minor`.`required_micro`. Second
/// the running library must be binary compatible with the
/// version `required_major.required_minor`.`required_micro`
/// (same major version.)
@inlinable public func checkVersion(requiredMajor: Int, requiredMinor: Int, requiredMicro: Int) -> String! {
    guard let rv = glib_check_version(guint(requiredMajor), guint(requiredMinor), guint(requiredMicro)).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Gets the length in bytes of digests of type `checksum_type`
@inlinable public func checksumTypeGetLength(checksumType: GChecksumType) -> gssize {
    let rv = g_checksum_type_get_length(checksumType)
    return rv
}




/// Sets a function to be called when the child indicated by `pid`
/// exits, at a default priority, `G_PRIORITY_DEFAULT`.
/// 
/// If you obtain `pid` from `g_spawn_async()` or `g_spawn_async_with_pipes()`
/// you will need to pass `G_SPAWN_DO_NOT_REAP_CHILD` as flag to
/// the spawn function for the child watching to work.
/// 
/// Note that on platforms where `GPid` must be explicitly closed
/// (see `g_spawn_close_pid()`) `pid` must not be closed while the
/// source is still active. Typically, you will want to call
/// `g_spawn_close_pid()` in the callback function for the source.
/// 
/// GLib supports only a single callback per process id.
/// On POSIX platforms, the same restrictions mentioned for
/// `g_child_watch_source_new()` apply to this function.
/// 
/// This internally creates a main loop source using
/// `g_child_watch_source_new()` and attaches it to the main loop context
/// using `g_source_attach()`. You can do these steps manually if you
/// need greater control.
@inlinable public func childWatchAdd(pid: GPid, function: GChildWatchFunc?, data: gpointer! = nil) -> Int {
    let rv = Int(g_child_watch_add(pid, function, data))
    return rv
}




/// Sets a function to be called when the child indicated by `pid`
/// exits, at the priority `priority`.
/// 
/// If you obtain `pid` from `g_spawn_async()` or `g_spawn_async_with_pipes()`
/// you will need to pass `G_SPAWN_DO_NOT_REAP_CHILD` as flag to
/// the spawn function for the child watching to work.
/// 
/// In many programs, you will want to call `g_spawn_check_exit_status()`
/// in the callback to determine whether or not the child exited
/// successfully.
/// 
/// Also, note that on platforms where `GPid` must be explicitly closed
/// (see `g_spawn_close_pid()`) `pid` must not be closed while the source
/// is still active.  Typically, you should invoke `g_spawn_close_pid()`
/// in the callback function for the source.
/// 
/// GLib supports only a single callback per process id.
/// On POSIX platforms, the same restrictions mentioned for
/// `g_child_watch_source_new()` apply to this function.
/// 
/// This internally creates a main loop source using
/// `g_child_watch_source_new()` and attaches it to the main loop context
/// using `g_source_attach()`. You can do these steps manually if you
/// need greater control.
@inlinable public func childWatchAddFull(priority: Int, pid: GPid, function: GChildWatchFunc?, data: gpointer! = nil, notify: GDestroyNotify? = nil) -> Int {
    let rv = Int(g_child_watch_add_full(gint(priority), pid, function, data, notify))
    return rv
}




/// Creates a new child_watch source.
/// 
/// The source will not initially be associated with any `GMainContext`
/// and must be added to one with `g_source_attach()` before it will be
/// executed.
/// 
/// Note that child watch sources can only be used in conjunction with
/// `g_spawn...` when the `G_SPAWN_DO_NOT_REAP_CHILD` flag is used.
/// 
/// Note that on platforms where `GPid` must be explicitly closed
/// (see `g_spawn_close_pid()`) `pid` must not be closed while the
/// source is still active. Typically, you will want to call
/// `g_spawn_close_pid()` in the callback function for the source.
/// 
/// On POSIX platforms, the following restrictions apply to this API
/// due to limitations in POSIX process interfaces:
/// 
/// * `pid` must be a child of this process
/// * `pid` must be positive
/// * the application must not call `waitpid` with a non-positive
///   first argument, for instance in another thread
/// * the application must not wait for `pid` to exit by any other
///   mechanism, including ``waitpid(pid, ...)`` or a second child-watch
///   source for the same `pid`
/// * the application must not ignore SIGCHILD
/// 
/// If any of those conditions are not met, this and related APIs will
/// not work correctly. This can often be diagnosed via a GLib warning
/// stating that `ECHILD` was received by `waitpid`.
/// 
/// Calling `waitpid` for specific processes other than `pid` remains a
/// valid thing to do.
@inlinable public func childWatchSourceNew(pid: GPid) -> SourceRef! {
    guard let rv = SourceRef(gconstpointer: gconstpointer(g_child_watch_source_new(pid))) else { return nil }
    return rv
}




/// If `err` or *`err` is `nil`, does nothing. Otherwise,
/// calls `g_error_free()` on *`err` and sets *`err` to `nil`.
@inlinable public func clearError() throws {
    var error: UnsafeMutablePointer<GError>?
    g_clear_error(&error)
    if let error = error { throw GLibError(error) }

}




/// Clears a numeric handler, such as a `GSource` ID.
/// 
/// `tag_ptr` must be a valid pointer to the variable holding the handler.
/// 
/// If the ID is zero then this function does nothing.
/// Otherwise, `clear_func()` is called with the ID as a parameter, and the tag is
/// set to zero.
/// 
/// A macro is also included that allows this function to be used without
/// pointer casts.
@inlinable public func clearHandleID(tagPtr: UnsafeMutablePointer<guint>!, clearFunc: GClearHandleFunc?) {
    g_clear_handle_id(tagPtr, clearFunc)

}




/// Clears a pointer to a `GList`, freeing it and, optionally, freeing its elements using `destroy`.
/// 
/// `list_ptr` must be a valid pointer. If `list_ptr` points to a null `GList`, this does nothing.
@inlinable public func clearList(listPtr: UnsafeMutablePointer<UnsafeMutablePointer<GList>?>!, destroy: GDestroyNotify? = nil) {
    g_clear_list(listPtr, destroy)

}




/// Clears a reference to a variable.
/// 
/// `pp` must not be `nil`.
/// 
/// If the reference is `nil` then this function does nothing.
/// Otherwise, the variable is destroyed using `destroy` and the
/// pointer is set to `nil`.
/// 
/// A macro is also included that allows this function to be used without
/// pointer casts. This will mask any warnings about incompatible function types
/// or calling conventions, so you must ensure that your `destroy` function is
/// compatible with being called as `GDestroyNotify` using the standard calling
/// convention for the platform that GLib was compiled for; otherwise the program
/// will experience undefined behaviour.
@inlinable public func clearPointer(pp: UnsafeMutablePointer<gpointer?>!, destroy: GDestroyNotify?) {
    g_clear_pointer(pp, destroy)

}




/// Clears a pointer to a `GSList`, freeing it and, optionally, freeing its elements using `destroy`.
/// 
/// `slist_ptr` must be a valid pointer. If `slist_ptr` points to a null `GSList`, this does nothing.
@inlinable public func clearSlist(slistPtr: UnsafeMutablePointer<UnsafeMutablePointer<GSList>?>!, destroy: GDestroyNotify? = nil) {
    g_clear_slist(slistPtr, destroy)

}




/// This wraps the `close()` call; in case of error, `errno` will be
/// preserved, but the error will also be stored as a `GError` in `error`.
/// 
/// Besides using `GError`, there is another major reason to prefer this
/// function over the call provided by the system; on Unix, it will
/// attempt to correctly handle `EINTR`, which has platform-specific
/// semantics.
@inlinable public func close(fd: Int) throws -> Bool {
    var error: UnsafeMutablePointer<GError>?
    let rv = ((g_close(gint(fd), &error)) != 0)
    if let error = error { throw GLibError(error) }
    return rv
}




/// Computes the checksum for a binary `data`. This is a
/// convenience wrapper for `g_checksum_new()`, `g_checksum_get_string()`
/// and `g_checksum_free()`.
/// 
/// The hexadecimal string returned will be in lower case.
@inlinable public func computeChecksumForBytes<BytesT: BytesProtocol>(checksumType: GChecksumType, data: BytesT) -> String! {
    guard let rv = g_compute_checksum_for_bytes(checksumType, data.bytes_ptr).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Computes the checksum for a binary `data` of `length`. This is a
/// convenience wrapper for `g_checksum_new()`, `g_checksum_get_string()`
/// and `g_checksum_free()`.
/// 
/// The hexadecimal string returned will be in lower case.
@inlinable public func computeChecksumForData(checksumType: GChecksumType, data: UnsafePointer<guchar>!, length: Int) -> String! {
    guard let rv = g_compute_checksum_for_data(checksumType, data, gsize(length)).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Computes the checksum of a string.
/// 
/// The hexadecimal string returned will be in lower case.
@inlinable public func computeChecksumForString(checksumType: GChecksumType, str: UnsafePointer<gchar>!, length: gssize) -> String! {
    guard let rv = g_compute_checksum_for_string(checksumType, str, length).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Computes the HMAC for a binary `data`. This is a
/// convenience wrapper for `g_hmac_new()`, `g_hmac_get_string()`
/// and `g_hmac_unref()`.
/// 
/// The hexadecimal string returned will be in lower case.
@inlinable public func computeHmacForBytes<BytesT: BytesProtocol>(digestType: GChecksumType, key: BytesT, data: BytesT) -> String! {
    guard let rv = g_compute_hmac_for_bytes(digestType, key.bytes_ptr, data.bytes_ptr).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Computes the HMAC for a binary `data` of `length`. This is a
/// convenience wrapper for `g_hmac_new()`, `g_hmac_get_string()`
/// and `g_hmac_unref()`.
/// 
/// The hexadecimal string returned will be in lower case.
@inlinable public func computeHmacForData(digestType: GChecksumType, key: UnsafePointer<guchar>!, keyLen: Int, data: UnsafePointer<guchar>!, length: Int) -> String! {
    guard let rv = g_compute_hmac_for_data(digestType, key, gsize(keyLen), data, gsize(length)).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Computes the HMAC for a string.
/// 
/// The hexadecimal string returned will be in lower case.
@inlinable public func computeHmacForString(digestType: GChecksumType, key: UnsafePointer<guchar>!, keyLen: Int, str: UnsafePointer<gchar>!, length: gssize) -> String! {
    guard let rv = g_compute_hmac_for_string(digestType, key, gsize(keyLen), str, length).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Converts a string from one character set to another.
/// 
/// Note that you should use `g_iconv()` for streaming conversions.
/// Despite the fact that `bytes_read` can return information about partial
/// characters, the g_convert_... functions are not generally suitable
/// for streaming. If the underlying converter maintains internal state,
/// then this won't be preserved across successive calls to `g_convert()`,
/// `g_convert_with_iconv()` or `g_convert_with_fallback()`. (An example of
/// this is the GNU C converter for CP1255 which does not emit a base
/// character until it knows that the next character is not a mark that
/// could combine with the base character.)
/// 
/// Using extensions such as "//TRANSLIT" may not work (or may not work
/// well) on many platforms.  Consider using `g_str_to_ascii()` instead.
@inlinable public func convert(str: UnsafePointer<gchar>!, len: gssize, toCodeset: UnsafePointer<gchar>!, from codeset: UnsafePointer<gchar>!, bytesRead: UnsafeMutablePointer<gsize>! = nil, bytesWritten: UnsafeMutablePointer<gsize>! = nil) throws -> String! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = g_convert(str, len, toCodeset, codeset, bytesRead, bytesWritten, &error).map({ String(cString: $0) })
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}




@inlinable public func convertErrorQuark() -> GQuark {
    let rv = g_convert_error_quark()
    return rv
}




/// Converts a string from one character set to another, possibly
/// including fallback sequences for characters not representable
/// in the output. Note that it is not guaranteed that the specification
/// for the fallback sequences in `fallback` will be honored. Some
/// systems may do an approximate conversion from `from_codeset`
/// to `to_codeset` in their `iconv()` functions,
/// in which case GLib will simply return that approximate conversion.
/// 
/// Note that you should use `g_iconv()` for streaming conversions.
/// Despite the fact that `bytes_read` can return information about partial
/// characters, the g_convert_... functions are not generally suitable
/// for streaming. If the underlying converter maintains internal state,
/// then this won't be preserved across successive calls to `g_convert()`,
/// `g_convert_with_iconv()` or `g_convert_with_fallback()`. (An example of
/// this is the GNU C converter for CP1255 which does not emit a base
/// character until it knows that the next character is not a mark that
/// could combine with the base character.)
@inlinable public func convertWithFallback(str: UnsafePointer<gchar>!, len: gssize, toCodeset: UnsafePointer<gchar>!, from codeset: UnsafePointer<gchar>!, fallback: UnsafePointer<gchar>!, bytesRead: UnsafeMutablePointer<gsize>! = nil, bytesWritten: UnsafeMutablePointer<gsize>! = nil) throws -> String! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = g_convert_with_fallback(str, len, toCodeset, codeset, fallback, bytesRead, bytesWritten, &error).map({ String(cString: $0) })
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}




/// Converts a string from one character set to another.
/// 
/// Note that you should use `g_iconv()` for streaming conversions.
/// Despite the fact that `bytes_read` can return information about partial
/// characters, the g_convert_... functions are not generally suitable
/// for streaming. If the underlying converter maintains internal state,
/// then this won't be preserved across successive calls to `g_convert()`,
/// `g_convert_with_iconv()` or `g_convert_with_fallback()`. (An example of
/// this is the GNU C converter for CP1255 which does not emit a base
/// character until it knows that the next character is not a mark that
/// could combine with the base character.)
/// 
/// Characters which are valid in the input character set, but which have no
/// representation in the output character set will result in a
/// `G_CONVERT_ERROR_ILLEGAL_SEQUENCE` error. This is in contrast to the `iconv()`
/// specification, which leaves this behaviour implementation defined. Note that
/// this is the same error code as is returned for an invalid byte sequence in
/// the input character set. To get defined behaviour for conversion of
/// unrepresentable characters, use `g_convert_with_fallback()`.
@inlinable public func convertWithIconv(str: UnsafePointer<gchar>!, len: gssize, converter: GIConv, bytesRead: UnsafeMutablePointer<gsize>! = nil, bytesWritten: UnsafeMutablePointer<gsize>! = nil) throws -> String! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = g_convert_with_iconv(str, len, converter, bytesRead, bytesWritten, &error).map({ String(cString: $0) })
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}




/// Frees all the data elements of the datalist.
/// The data elements' destroy functions are called
/// if they have been set.
@inlinable public func datalistClear(datalist: UnsafeMutablePointer<UnsafeMutablePointer<GData>?>!) {
    g_datalist_clear(datalist)

}




/// Calls the given function for each data element of the datalist. The
/// function is called with each data element's `GQuark` id and data,
/// together with the given `user_data` parameter. Note that this
/// function is NOT thread-safe. So unless `datalist` can be protected
/// from any modifications during invocation of this function, it should
/// not be called.
/// 
/// `func` can make changes to `datalist`, but the iteration will not
/// reflect changes made during the `g_datalist_foreach()` call, other
/// than skipping over elements that are removed.
@inlinable public func datalistForeach(datalist: UnsafeMutablePointer<UnsafeMutablePointer<GData>?>!, `func`: GDataForeachFunc?, userData: gpointer! = nil) {
    g_datalist_foreach(datalist, `func`, userData)

}




/// Gets a data element, using its string identifier. This is slower than
/// `g_datalist_id_get_data()` because it compares strings.
@inlinable public func datalistGetData(datalist: UnsafeMutablePointer<UnsafeMutablePointer<GData>?>!, key: UnsafePointer<gchar>!) -> gpointer! {
    guard let rv = g_datalist_get_data(datalist, key) else { return nil }
    return rv
}




/// Gets flags values packed in together with the datalist.
/// See `g_datalist_set_flags()`.
@inlinable public func datalistGetFlags(datalist: UnsafeMutablePointer<UnsafeMutablePointer<GData>?>!) -> Int {
    let rv = Int(g_datalist_get_flags(datalist))
    return rv
}




/// This is a variant of `g_datalist_id_get_data()` which
/// returns a 'duplicate' of the value. `dup_func` defines the
/// meaning of 'duplicate' in this context, it could e.g.
/// take a reference on a ref-counted object.
/// 
/// If the `key_id` is not set in the datalist then `dup_func`
/// will be called with a `nil` argument.
/// 
/// Note that `dup_func` is called while the datalist is locked, so it
/// is not allowed to read or modify the datalist.
/// 
/// This function can be useful to avoid races when multiple
/// threads are using the same datalist and the same key.
@inlinable public func datalistIDDupData(datalist: UnsafeMutablePointer<UnsafeMutablePointer<GData>?>!, keyID: GQuark, dupFunc: GDuplicateFunc? = nil, userData: gpointer! = nil) -> gpointer! {
    guard let rv = g_datalist_id_dup_data(datalist, keyID, dupFunc, userData) else { return nil }
    return rv
}




/// Retrieves the data element corresponding to `key_id`.
@inlinable public func datalistIDGetData(datalist: UnsafeMutablePointer<UnsafeMutablePointer<GData>?>!, keyID: GQuark) -> gpointer! {
    guard let rv = g_datalist_id_get_data(datalist, keyID) else { return nil }
    return rv
}




/// Removes an element, without calling its destroy notification
/// function.
@inlinable public func datalistIDRemoveNoNotify(datalist: UnsafeMutablePointer<UnsafeMutablePointer<GData>?>!, keyID: GQuark) -> gpointer! {
    guard let rv = g_datalist_id_remove_no_notify(datalist, keyID) else { return nil }
    return rv
}




/// Compares the member that is associated with `key_id` in
/// `datalist` to `oldval`, and if they are the same, replace
/// `oldval` with `newval`.
/// 
/// This is like a typical atomic compare-and-exchange
/// operation, for a member of `datalist`.
/// 
/// If the previous value was replaced then ownership of the
/// old value (`oldval`) is passed to the caller, including
/// the registered destroy notify for it (passed out in `old_destroy`).
/// Its up to the caller to free this as he wishes, which may
/// or may not include using `old_destroy` as sometimes replacement
/// should not destroy the object in the normal way.
@inlinable public func datalistIDReplaceData(datalist: UnsafeMutablePointer<UnsafeMutablePointer<GData>?>!, keyID: GQuark, oldval: gpointer! = nil, newval: gpointer! = nil, destroy: GDestroyNotify? = nil, oldDestroy: UnsafeMutablePointer<GDestroyNotify?>! = nil) -> Bool {
    let rv = ((g_datalist_id_replace_data(datalist, keyID, oldval, newval, destroy, oldDestroy)) != 0)
    return rv
}




/// Sets the data corresponding to the given `GQuark` id, and the
/// function to be called when the element is removed from the datalist.
/// Any previous data with the same key is removed, and its destroy
/// function is called.
@inlinable public func datalistIDSetDataFull(datalist: UnsafeMutablePointer<UnsafeMutablePointer<GData>?>!, keyID: GQuark, data: gpointer! = nil, destroyFunc: GDestroyNotify? = nil) {
    g_datalist_id_set_data_full(datalist, keyID, data, destroyFunc)

}




/// Resets the datalist to `nil`. It does not free any memory or call
/// any destroy functions.
@inlinable public func datalistInit(datalist: UnsafeMutablePointer<UnsafeMutablePointer<GData>?>!) {
    g_datalist_init(datalist)

}




/// Turns on flag values for a data list. This function is used
/// to keep a small number of boolean flags in an object with
/// a data list without using any additional space. It is
/// not generally useful except in circumstances where space
/// is very tight. (It is used in the base `GObject` type, for
/// example.)
@inlinable public func datalistSetFlags(datalist: UnsafeMutablePointer<UnsafeMutablePointer<GData>?>!, flags: Int) {
    g_datalist_set_flags(datalist, guint(flags))

}




/// Turns off flag values for a data list. See `g_datalist_unset_flags()`
@inlinable public func datalistUnsetFlags(datalist: UnsafeMutablePointer<UnsafeMutablePointer<GData>?>!, flags: Int) {
    g_datalist_unset_flags(datalist, guint(flags))

}




/// Destroys the dataset, freeing all memory allocated, and calling any
/// destroy functions set for data elements.
@inlinable public func datasetDestroy(datasetLocation: gconstpointer) {
    g_dataset_destroy(datasetLocation)

}




/// Calls the given function for each data element which is associated
/// with the given location. Note that this function is NOT thread-safe.
/// So unless `dataset_location` can be protected from any modifications
/// during invocation of this function, it should not be called.
/// 
/// `func` can make changes to the dataset, but the iteration will not
/// reflect changes made during the `g_dataset_foreach()` call, other
/// than skipping over elements that are removed.
@inlinable public func datasetForeach(datasetLocation: gconstpointer, `func`: GDataForeachFunc?, userData: gpointer! = nil) {
    g_dataset_foreach(datasetLocation, `func`, userData)

}




/// Gets the data element corresponding to a `GQuark`.
@inlinable public func datasetIDGetData(datasetLocation: gconstpointer, keyID: GQuark) -> gpointer! {
    guard let rv = g_dataset_id_get_data(datasetLocation, keyID) else { return nil }
    return rv
}




/// Removes an element, without calling its destroy notification
/// function.
@inlinable public func datasetIDRemoveNoNotify(datasetLocation: gconstpointer, keyID: GQuark) -> gpointer! {
    guard let rv = g_dataset_id_remove_no_notify(datasetLocation, keyID) else { return nil }
    return rv
}




/// Sets the data element associated with the given `GQuark` id, and also
/// the function to call when the data element is destroyed. Any
/// previous data with the same key is removed, and its destroy function
/// is called.
@inlinable public func datasetIDSetDataFull(datasetLocation: gconstpointer, keyID: GQuark, data: gpointer! = nil, destroyFunc: GDestroyNotify?) {
    g_dataset_id_set_data_full(datasetLocation, keyID, data, destroyFunc)

}




/// Returns the number of days in a month, taking leap
/// years into account.
@inlinable public func dateGetDaysIn(month: GDateMonth, year: GDateYear) -> guint8 {
    let rv = g_date_get_days_in_month(month, year)
    return rv
}




/// Returns the number of weeks in the year, where weeks
/// are taken to start on Monday. Will be 52 or 53. The
/// date must be valid. (Years always have 52 7-day periods,
/// plus 1 or 2 extra days depending on whether it's a leap
/// year. This function is basically telling you how many
/// Mondays are in the year, i.e. there are 53 Mondays if
/// one of the extra days happens to be a Monday.)
@inlinable public func dateGetMondayWeeksIn(year: GDateYear) -> guint8 {
    let rv = g_date_get_monday_weeks_in_year(year)
    return rv
}




/// Returns the number of weeks in the year, where weeks
/// are taken to start on Sunday. Will be 52 or 53. The
/// date must be valid. (Years always have 52 7-day periods,
/// plus 1 or 2 extra days depending on whether it's a leap
/// year. This function is basically telling you how many
/// Sundays are in the year, i.e. there are 53 Sundays if
/// one of the extra days happens to be a Sunday.)
@inlinable public func dateGetSundayWeeksIn(year: GDateYear) -> guint8 {
    let rv = g_date_get_sunday_weeks_in_year(year)
    return rv
}




/// Returns `true` if the year is a leap year.
/// 
/// For the purposes of this function, leap year is every year
/// divisible by 4 unless that year is divisible by 100. If it
/// is divisible by 100 it would be a leap year only if that year
/// is also divisible by 400.
@inlinable public func dateIsLeap(year: GDateYear) -> Bool {
    let rv = ((g_date_is_leap_year(year)) != 0)
    return rv
}




/// Generates a printed representation of the date, in a
/// [locale](#setlocale)-specific way.
/// Works just like the platform's C library `strftime()` function,
/// but only accepts date-related formats; time-related formats
/// give undefined results. Date must be valid. Unlike `strftime()`
/// (which uses the locale encoding), works on a UTF-8 format
/// string and stores a UTF-8 result.
/// 
/// This function does not provide any conversion specifiers in
/// addition to those implemented by the platform's C library.
/// For example, don't expect that using `g_date_strftime()` would
/// make the \`F` provided by the C99 `strftime()` work on Windows
/// where the C library only complies to C89.
@inlinable public func dateStrftime<DateT: DateProtocol>(s: UnsafeMutablePointer<gchar>!, slen: Int, format: UnsafePointer<gchar>!, date: DateT) -> Int {
    let rv = Int(g_date_strftime(s, gsize(slen), format, date.date_ptr))
    return rv
}




/// A comparison function for `GDateTimes` that is suitable
/// as a `GCompareFunc`. Both `GDateTimes` must be non-`nil`.
@inlinable public func dateTimeCompare(dt1: gconstpointer, dt2: gconstpointer) -> Int {
    let rv = Int(g_date_time_compare(dt1, dt2))
    return rv
}




/// Checks to see if `dt1` and `dt2` are equal.
/// 
/// Equal here means that they represent the same moment after converting
/// them to the same time zone.
@inlinable public func dateTimeEqual(dt1: gconstpointer, dt2: gconstpointer) -> Bool {
    let rv = ((g_date_time_equal(dt1, dt2)) != 0)
    return rv
}




/// Hashes `datetime` into a `guint`, suitable for use within `GHashTable`.
@inlinable public func dateTimeHash(datetime: gconstpointer) -> Int {
    let rv = Int(g_date_time_hash(datetime))
    return rv
}




/// Returns `true` if the day of the month is valid (a day is valid if it's
/// between 1 and 31 inclusive).
@inlinable public func dateValid(day: GDateDay) -> Bool {
    let rv = ((g_date_valid_day(day)) != 0)
    return rv
}




/// Returns `true` if the day-month-year triplet forms a valid, existing day
/// in the range of days `GDate` understands (Year 1 or later, no more than
/// a few thousand years in the future).
@inlinable public func dateValidDmy(day: GDateDay, month: GDateMonth, year: GDateYear) -> Bool {
    let rv = ((g_date_valid_dmy(day, month, year)) != 0)
    return rv
}




/// Returns `true` if the Julian day is valid. Anything greater than zero
/// is basically a valid Julian, though there is a 32-bit limit.
@inlinable public func dateValidJulian(julianDate: guint32) -> Bool {
    let rv = ((g_date_valid_julian(julianDate)) != 0)
    return rv
}




/// Returns `true` if the month value is valid. The 12 `GDateMonth`
/// enumeration values are the only valid months.
@inlinable public func dateValid(month: GDateMonth) -> Bool {
    let rv = ((g_date_valid_month(month)) != 0)
    return rv
}




/// Returns `true` if the weekday is valid. The seven `GDateWeekday` enumeration
/// values are the only valid weekdays.
@inlinable public func dateValid(weekday: GDateWeekday) -> Bool {
    let rv = ((g_date_valid_weekday(weekday)) != 0)
    return rv
}




/// Returns `true` if the year is valid. Any year greater than 0 is valid,
/// though there is a 16-bit limit to what `GDate` will understand.
@inlinable public func dateValid(year: GDateYear) -> Bool {
    let rv = ((g_date_valid_year(year)) != 0)
    return rv
}




/// This is a variant of `g_dgettext()` that allows specifying a locale
/// category instead of always using `LC_MESSAGES`. See `g_dgettext()` for
/// more information about how this functions differs from calling
/// `dcgettext()` directly.
@inlinable public func dcgettext(domain: UnsafePointer<gchar>? = nil, msgid: UnsafePointer<gchar>!, category: Int) -> String! {
    guard let rv = g_dcgettext(domain, msgid, gint(category)).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// This function is a wrapper of `dgettext()` which does not translate
/// the message if the default domain as set with `textdomain()` has no
/// translations for the current locale.
/// 
/// The advantage of using this function over `dgettext()` proper is that
/// libraries using this function (like GTK+) will not use translations
/// if the application using the library does not have translations for
/// the current locale.  This results in a consistent English-only
/// interface instead of one having partial translations.  For this
/// feature to work, the call to `textdomain()` and `setlocale()` should
/// precede any `g_dgettext()` invocations.  For GTK+, it means calling
/// `textdomain()` before gtk_init or its variants.
/// 
/// This function disables translations if and only if upon its first
/// call all the following conditions hold:
/// 
/// - `domain` is not `nil`
/// 
/// - `textdomain()` has been called to set a default text domain
/// 
/// - there is no translations available for the default text domain
///   and the current locale
/// 
/// - current locale is not "C" or any English locales (those
///   starting with "en_")
/// 
/// Note that this behavior may not be desired for example if an application
/// has its untranslated messages in a language other than English. In those
/// cases the application should call `textdomain()` after initializing GTK+.
/// 
/// Applications should normally not use this function directly,
/// but use the `_()` macro for translations.
@inlinable public func dgettext(domain: UnsafePointer<gchar>? = nil, msgid: UnsafePointer<gchar>!) -> String! {
    guard let rv = g_dgettext(domain, msgid).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Creates a subdirectory in the preferred directory for temporary
/// files (as returned by `g_get_tmp_dir()`).
/// 
/// `tmpl` should be a string in the GLib file name encoding containing
/// a sequence of six 'X' characters, as the parameter to `g_mkstemp()`.
/// However, unlike these functions, the template should only be a
/// basename, no directory components are allowed. If template is
/// `nil`, a default template is used.
/// 
/// Note that in contrast to `g_mkdtemp()` (and `mkdtemp()`) `tmpl` is not
/// modified, and might thus be a read-only literal string.
@inlinable public func dirMakeTmp(tmpl: UnsafePointer<gchar>? = nil) throws -> String! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = g_dir_make_tmp(tmpl, &error).map({ String(cString: $0) })
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}




/// Compares two `gpointer` arguments and returns `true` if they are equal.
/// It can be passed to `g_hash_table_new()` as the `key_equal_func`
/// parameter, when using opaque pointers compared by pointer value as
/// keys in a `GHashTable`.
/// 
/// This equality function is also appropriate for keys that are integers
/// stored in pointers, such as `GINT_TO_POINTER (n)`.
@inlinable public func directEqual(v1: gconstpointer! = nil, v2: gconstpointer! = nil) -> Bool {
    let rv = ((g_direct_equal(v1, v2)) != 0)
    return rv
}




/// Converts a gpointer to a hash value.
/// It can be passed to `g_hash_table_new()` as the `hash_func` parameter,
/// when using opaque pointers compared by pointer value as keys in a
/// `GHashTable`.
/// 
/// This hash function is also appropriate for keys that are integers
/// stored in pointers, such as `GINT_TO_POINTER (n)`.
@inlinable public func directHash(v: gconstpointer! = nil) -> Int {
    let rv = Int(g_direct_hash(v))
    return rv
}




/// This function is a wrapper of `dngettext()` which does not translate
/// the message if the default domain as set with `textdomain()` has no
/// translations for the current locale.
/// 
/// See `g_dgettext()` for details of how this differs from `dngettext()`
/// proper.
@inlinable public func dngettext(domain: UnsafePointer<gchar>? = nil, msgid: UnsafePointer<gchar>!, msgidPlural: UnsafePointer<gchar>!, n: Int) -> String! {
    guard let rv = g_dngettext(domain, msgid, msgidPlural, gulong(n)).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Compares the two `gdouble` values being pointed to and returns
/// `true` if they are equal.
/// It can be passed to `g_hash_table_new()` as the `key_equal_func`
/// parameter, when using non-`nil` pointers to doubles as keys in a
/// `GHashTable`.
@inlinable public func doubleEqual(v1: gconstpointer, v2: gconstpointer) -> Bool {
    let rv = ((g_double_equal(v1, v2)) != 0)
    return rv
}




/// Converts a pointer to a `gdouble` to a hash value.
/// It can be passed to `g_hash_table_new()` as the `hash_func` parameter,
/// It can be passed to `g_hash_table_new()` as the `hash_func` parameter,
/// when using non-`nil` pointers to doubles as keys in a `GHashTable`.
@inlinable public func doubleHash(v: gconstpointer) -> Int {
    let rv = Int(g_double_hash(v))
    return rv
}




/// This function is a variant of `g_dgettext()` which supports
/// a disambiguating message context. GNU gettext uses the
/// '\004' character to separate the message context and
/// message id in `msgctxtid`.
/// If 0 is passed as `msgidoffset`, this function will fall back to
/// trying to use the deprecated convention of using "|" as a separation
/// character.
/// 
/// This uses `g_dgettext()` internally. See that functions for differences
/// with `dgettext()` proper.
/// 
/// Applications should normally not use this function directly,
/// but use the `C_()` macro for translations with context.
@inlinable public func dpgettext(domain: UnsafePointer<gchar>? = nil, msgctxtid: UnsafePointer<gchar>!, msgidoffset: Int) -> String! {
    guard let rv = g_dpgettext(domain, msgctxtid, gsize(msgidoffset)).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// This function is a variant of `g_dgettext()` which supports
/// a disambiguating message context. GNU gettext uses the
/// '\004' character to separate the message context and
/// message id in `msgctxtid`.
/// 
/// This uses `g_dgettext()` internally. See that functions for differences
/// with `dgettext()` proper.
/// 
/// This function differs from `C_()` in that it is not a macro and
/// thus you may use non-string-literals as context and msgid arguments.
@inlinable public func dpgettext2(domain: UnsafePointer<gchar>? = nil, context: UnsafePointer<gchar>!, msgid: UnsafePointer<gchar>!) -> String! {
    guard let rv = g_dpgettext2(domain, context, msgid).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Returns the value of the environment variable `variable` in the
/// provided list `envp`.
@inlinable public func environGetenv(envp: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! = nil, variable: UnsafePointer<gchar>!) -> String! {
    guard let rv = g_environ_getenv(envp, variable).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Sets the environment variable `variable` in the provided list
/// `envp` to `value`.
@inlinable public func environSetenv(envp: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! = nil, variable: UnsafePointer<gchar>!, value: UnsafePointer<gchar>!, overwrite: Bool) -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
    guard let rv = g_environ_setenv(envp, variable, value, gboolean((overwrite) ? 1 : 0)) else { return nil }
    return rv
}




/// Removes the environment variable `variable` from the provided
/// environment `envp`.
@inlinable public func environUnsetenv(envp: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! = nil, variable: UnsafePointer<gchar>!) -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
    guard let rv = g_environ_unsetenv(envp, variable) else { return nil }
    return rv
}




/// Gets a `GFileError` constant based on the passed-in `err_no`.
/// For example, if you pass in `EEXIST` this function returns
/// `G_FILE_ERROR_EXIST`. Unlike `errno` values, you can portably
/// assume that all `GFileError` values will exist.
/// 
/// Normally a `GFileError` value goes into a `GError` returned
/// from a function that manipulates files. So you would use
/// `g_file_error_from_errno()` when constructing a `GError`.
@inlinable public func fileErrorFromErrno(errNo: Int) -> GFileError {
    let rv = g_file_error_from_errno(gint(errNo))
    return rv
}




@inlinable public func fileErrorQuark() -> GQuark {
    let rv = g_file_error_quark()
    return rv
}




/// Reads an entire file into allocated memory, with good error
/// checking.
/// 
/// If the call was successful, it returns `true` and sets `contents` to the file
/// contents and `length` to the length of the file contents in bytes. The string
/// stored in `contents` will be nul-terminated, so for text files you can pass
/// `nil` for the `length` argument. If the call was not successful, it returns
/// `false` and sets `error`. The error domain is `G_FILE_ERROR`. Possible error
/// codes are those in the `GFileError` enumeration. In the error case,
/// `contents` is set to `nil` and `length` is set to zero.
@inlinable public func fileGetContents(filename: UnsafePointer<gchar>!, contents: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>!, length: UnsafeMutablePointer<gsize>?) throws -> Bool {
    var error: UnsafeMutablePointer<GError>?
    let rv = ((g_file_get_contents(filename, contents, length, &error)) != 0)
    if let error = error { throw GLibError(error) }
    return rv
}




/// Opens a file for writing in the preferred directory for temporary
/// files (as returned by `g_get_tmp_dir()`).
/// 
/// `tmpl` should be a string in the GLib file name encoding containing
/// a sequence of six 'X' characters, as the parameter to `g_mkstemp()`.
/// However, unlike these functions, the template should only be a
/// basename, no directory components are allowed. If template is
/// `nil`, a default template is used.
/// 
/// Note that in contrast to `g_mkstemp()` (and `mkstemp()`) `tmpl` is not
/// modified, and might thus be a read-only literal string.
/// 
/// Upon success, and if `name_used` is non-`nil`, the actual name used
/// is returned in `name_used`. This string should be freed with `g_free()`
/// when not needed any longer. The returned name is in the GLib file
/// name encoding.
@inlinable public func fileOpenTmp(tmpl: UnsafePointer<gchar>? = nil, nameUsed: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>!) throws -> Int {
    var error: UnsafeMutablePointer<GError>?
    let rv = Int(g_file_open_tmp(tmpl, nameUsed, &error))
    if let error = error { throw GLibError(error) }
    return rv
}




/// Reads the contents of the symbolic link `filename` like the POSIX
/// `readlink()` function.  The returned string is in the encoding used
/// for filenames. Use `g_filename_to_utf8()` to convert it to UTF-8.
@inlinable public func fileReadLink(filename: UnsafePointer<gchar>!) throws -> String! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = g_file_read_link(filename, &error).map({ String(cString: $0) })
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}




/// Writes all of `contents` to a file named `filename`. This is a convenience
/// wrapper around calling `g_file_set_contents()` with `flags` set to
/// `G_FILE_SET_CONTENTS_CONSISTENT | G_FILE_SET_CONTENTS_ONLY_EXISTING` and
/// `mode` set to `0666`.
@inlinable public func fileSetContents(filename: UnsafePointer<gchar>!, contents: UnsafePointer<gchar>!, length: gssize) throws -> Bool {
    var error: UnsafeMutablePointer<GError>?
    let rv = ((g_file_set_contents(filename, contents, length, &error)) != 0)
    if let error = error { throw GLibError(error) }
    return rv
}




/// Writes all of `contents` to a file named `filename`, with good error checking.
/// If a file called `filename` already exists it will be overwritten.
/// 
/// `flags` control the properties of the write operation: whether it’s atomic,
/// and what the tradeoff is between returning quickly or being resilient to
/// system crashes.
/// 
/// As this function performs file I/O, it is recommended to not call it anywhere
/// where blocking would cause problems, such as in the main loop of a graphical
/// application. In particular, if `flags` has any value other than
/// `G_FILE_SET_CONTENTS_NONE` then this function may call ``fsync()``.
/// 
/// If `G_FILE_SET_CONTENTS_CONSISTENT` is set in `flags`, the operation is atomic
/// in the sense that it is first written to a temporary file which is then
/// renamed to the final name.
/// 
/// Notes:
/// 
/// - On UNIX, if `filename` already exists hard links to `filename` will break.
///   Also since the file is recreated, existing permissions, access control
///   lists, metadata etc. may be lost. If `filename` is a symbolic link,
///   the link itself will be replaced, not the linked file.
/// 
/// - On UNIX, if `filename` already exists and is non-empty, and if the system
///   supports it (via a journalling filesystem or equivalent), and if
///   `G_FILE_SET_CONTENTS_CONSISTENT` is set in `flags`, the ``fsync()`` call (or
///   equivalent) will be used to ensure atomic replacement: `filename`
///   will contain either its old contents or `contents`, even in the face of
///   system power loss, the disk being unsafely removed, etc.
/// 
/// - On UNIX, if `filename` does not already exist or is empty, there is a
///   possibility that system power loss etc. after calling this function will
///   leave `filename` empty or full of NUL bytes, depending on the underlying
///   filesystem, unless `G_FILE_SET_CONTENTS_DURABLE` and
///   `G_FILE_SET_CONTENTS_CONSISTENT` are set in `flags`.
/// 
/// - On Windows renaming a file will not remove an existing file with the
///   new name, so on Windows there is a race condition between the existing
///   file being removed and the temporary file being renamed.
/// 
/// - On Windows there is no way to remove a file that is open to some
///   process, or mapped into memory. Thus, this function will fail if
///   `filename` already exists and is open.
/// 
/// If the call was successful, it returns `true`. If the call was not successful,
/// it returns `false` and sets `error`. The error domain is `G_FILE_ERROR`.
/// Possible error codes are those in the `GFileError` enumeration.
/// 
/// Note that the name for the temporary file is constructed by appending up
/// to 7 characters to `filename`.
/// 
/// If the file didn’t exist before and is created, it will be given the
/// permissions from `mode`. Otherwise, the permissions of the existing file may
/// be changed to `mode` depending on `flags`, or they may remain unchanged.
@inlinable public func fileSetContentsFull(filename: UnsafePointer<gchar>!, contents: UnsafePointer<gchar>!, length: gssize, flags: FileSetContentsFlags, mode: Int) throws -> Bool {
    var error: UnsafeMutablePointer<GError>?
    let rv = ((g_file_set_contents_full(filename, contents, length, flags.value, gint(mode), &error)) != 0)
    if let error = error { throw GLibError(error) }
    return rv
}




/// Returns `true` if any of the tests in the bitfield `test` are
/// `true`. For example, `(G_FILE_TEST_EXISTS | G_FILE_TEST_IS_DIR)`
/// will return `true` if the file exists; the check whether it's a
/// directory doesn't matter since the existence test is `true`. With
/// the current set of available tests, there's no point passing in
/// more than one test at a time.
/// 
/// Apart from `G_FILE_TEST_IS_SYMLINK` all tests follow symbolic links,
/// so for a symbolic link to a regular file `g_file_test()` will return
/// `true` for both `G_FILE_TEST_IS_SYMLINK` and `G_FILE_TEST_IS_REGULAR`.
/// 
/// Note, that for a dangling symbolic link `g_file_test()` will return
/// `true` for `G_FILE_TEST_IS_SYMLINK` and `false` for all other flags.
/// 
/// You should never use `g_file_test()` to test whether it is safe
/// to perform an operation, because there is always the possibility
/// of the condition changing before you actually perform the operation.
/// For example, you might think you could use `G_FILE_TEST_IS_SYMLINK`
/// to know whether it is safe to write to a file without being
/// tricked into writing into a different location. It doesn't work!
/// (C Language Example):
/// ```C
///  // DON'T DO THIS
///  if (!g_file_test (filename, G_FILE_TEST_IS_SYMLINK))
///    {
///      fd = g_open (filename, O_WRONLY);
///      // write to fd
///    }
/// ```
/// 
/// Another thing to note is that `G_FILE_TEST_EXISTS` and
/// `G_FILE_TEST_IS_EXECUTABLE` are implemented using the `access()`
/// system call. This usually doesn't matter, but if your program
/// is setuid or setgid it means that these tests will give you
/// the answer for the real user ID and group ID, rather than the
/// effective user ID and group ID.
/// 
/// On Windows, there are no symlinks, so testing for
/// `G_FILE_TEST_IS_SYMLINK` will always return `false`. Testing for
/// `G_FILE_TEST_IS_EXECUTABLE` will just check that the file exists and
/// its name indicates that it is executable, checking for well-known
/// extensions and those listed in the `PATHEXT` environment variable.
@inlinable public func fileTest(filename: UnsafePointer<gchar>!, test: FileTest) -> Bool {
    let rv = ((g_file_test(filename, test.value)) != 0)
    return rv
}




/// Returns the display basename for the particular filename, guaranteed
/// to be valid UTF-8. The display name might not be identical to the filename,
/// for instance there might be problems converting it to UTF-8, and some files
/// can be translated in the display.
/// 
/// If GLib cannot make sense of the encoding of `filename`, as a last resort it
/// replaces unknown characters with U+FFFD, the Unicode replacement character.
/// You can search the result for the UTF-8 encoding of this character (which is
/// "\357\277\275" in octal notation) to find out if `filename` was in an invalid
/// encoding.
/// 
/// You must pass the whole absolute pathname to this functions so that
/// translation of well known locations can be done.
/// 
/// This function is preferred over `g_filename_display_name()` if you know the
/// whole path, as it allows translation.
@inlinable public func filenameDisplayBasename(filename: UnsafePointer<gchar>!) -> String! {
    guard let rv = g_filename_display_basename(filename).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Converts a filename into a valid UTF-8 string. The conversion is
/// not necessarily reversible, so you should keep the original around
/// and use the return value of this function only for display purposes.
/// Unlike `g_filename_to_utf8()`, the result is guaranteed to be non-`nil`
/// even if the filename actually isn't in the GLib file name encoding.
/// 
/// If GLib cannot make sense of the encoding of `filename`, as a last resort it
/// replaces unknown characters with U+FFFD, the Unicode replacement character.
/// You can search the result for the UTF-8 encoding of this character (which is
/// "\357\277\275" in octal notation) to find out if `filename` was in an invalid
/// encoding.
/// 
/// If you know the whole pathname of the file you should use
/// `g_filename_display_basename()`, since that allows location-based
/// translation of filenames.
@inlinable public func filenameDisplayName(filename: UnsafePointer<gchar>!) -> String! {
    guard let rv = g_filename_display_name(filename).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Converts an escaped ASCII-encoded URI to a local filename in the
/// encoding used for filenames.
@inlinable public func filenameFrom(uri: UnsafePointer<gchar>!, hostname: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>? = nil) throws -> String! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = g_filename_from_uri(uri, hostname, &error).map({ String(cString: $0) })
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}




/// Converts a string from UTF-8 to the encoding GLib uses for
/// filenames. Note that on Windows GLib uses UTF-8 for filenames;
/// on other platforms, this function indirectly depends on the
/// [current locale](#setlocale).
/// 
/// The input string shall not contain nul characters even if the `len`
/// argument is positive. A nul character found inside the string will result
/// in error `G_CONVERT_ERROR_ILLEGAL_SEQUENCE`. If the filename encoding is
/// not UTF-8 and the conversion output contains a nul character, the error
/// `G_CONVERT_ERROR_EMBEDDED_NUL` is set and the function returns `nil`.
@inlinable public func filenameFromUTF8(utf8string: UnsafePointer<gchar>!, len: gssize, bytesRead: UnsafeMutablePointer<gsize>! = nil, bytesWritten: UnsafeMutablePointer<gsize>! = nil) throws -> String! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = g_filename_from_utf8(utf8string, len, bytesRead, bytesWritten, &error).map({ String(cString: $0) })
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}




/// Converts an absolute filename to an escaped ASCII-encoded URI, with the path
/// component following Section 3.3. of RFC 2396.
@inlinable public func filenameToURI(filename: UnsafePointer<gchar>!, hostname: UnsafePointer<gchar>? = nil) throws -> String! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = g_filename_to_uri(filename, hostname, &error).map({ String(cString: $0) })
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}




/// Converts a string which is in the encoding used by GLib for
/// filenames into a UTF-8 string. Note that on Windows GLib uses UTF-8
/// for filenames; on other platforms, this function indirectly depends on
/// the [current locale](#setlocale).
/// 
/// The input string shall not contain nul characters even if the `len`
/// argument is positive. A nul character found inside the string will result
/// in error `G_CONVERT_ERROR_ILLEGAL_SEQUENCE`.
/// If the source encoding is not UTF-8 and the conversion output contains a
/// nul character, the error `G_CONVERT_ERROR_EMBEDDED_NUL` is set and the
/// function returns `nil`. Use `g_convert()` to produce output that
/// may contain embedded nul characters.
@inlinable public func filenameToUTF8(opsysstring: UnsafePointer<gchar>!, len: gssize, bytesRead: UnsafeMutablePointer<gsize>! = nil, bytesWritten: UnsafeMutablePointer<gsize>! = nil) throws -> String! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = g_filename_to_utf8(opsysstring, len, bytesRead, bytesWritten, &error).map({ String(cString: $0) })
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}




/// Locates the first executable named `program` in the user's path, in the
/// same way that `execvp()` would locate it. Returns an allocated string
/// with the absolute path name, or `nil` if the program is not found in
/// the path. If `program` is already an absolute path, returns a copy of
/// `program` if `program` exists and is executable, and `nil` otherwise.
///  
/// On Windows, if `program` does not have a file type suffix, tries
/// with the suffixes .exe, .cmd, .bat and .com, and the suffixes in
/// the `PATHEXT` environment variable.
/// 
/// On Windows, it looks for the file in the same way as `CreateProcess()`
/// would. This means first in the directory where the executing
/// program was loaded from, then in the current directory, then in the
/// Windows 32-bit system directory, then in the Windows directory, and
/// finally in the directories in the `PATH` environment variable. If
/// the program is found, the return value contains the full name
/// including the type suffix.
@inlinable public func findProgramInPath(program: UnsafePointer<gchar>!) -> String! {
    guard let rv = g_find_program_in_path(program).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Formats a size (for example the size of a file) into a human readable
/// string.  Sizes are rounded to the nearest size prefix (kB, MB, GB)
/// and are displayed rounded to the nearest tenth. E.g. the file size
/// 3292528 bytes will be converted into the string "3.2 MB". The returned string
/// is UTF-8, and may use a non-breaking space to separate the number and units,
/// to ensure they aren’t separated when line wrapped.
/// 
/// The prefix units base is 1000 (i.e. 1 kB is 1000 bytes).
/// 
/// This string should be freed with `g_free()` when not needed any longer.
/// 
/// See `g_format_size_full()` for more options about how the size might be
/// formatted.
@inlinable public func format(size: guint64) -> String! {
    guard let rv = g_format_size(size).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Formats a size (for example the size of a file) into a human
/// readable string. Sizes are rounded to the nearest size prefix
/// (KB, MB, GB) and are displayed rounded to the nearest tenth.
/// E.g. the file size 3292528 bytes will be converted into the
/// string "3.1 MB".
/// 
/// The prefix units base is 1024 (i.e. 1 KB is 1024 bytes).
/// 
/// This string should be freed with `g_free()` when not needed any longer.
///
/// **format_size_for_display is deprecated:**
/// This function is broken due to its use of SI
///     suffixes to denote IEC units. Use g_format_size() instead.
@available(*, deprecated) @inlinable public func formatSizeForDisplay(size: goffset) -> String! {
    guard let rv = g_format_size_for_display(size).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Formats a size.
/// 
/// This function is similar to `g_format_size()` but allows for flags
/// that modify the output. See `GFormatSizeFlags`.
@inlinable public func formatSizeFull(size: guint64, flags: FormatSizeFlags) -> String! {
    guard let rv = g_format_size_full(size, flags.value).map({ String(cString: $0) }) else { return nil }
    return rv
}





// *** fprintf() is not available because it has a varargs (...) parameter!





/// Frees the memory pointed to by `mem`.
/// 
/// If `mem` is `nil` it simply returns, so there is no need to check `mem`
/// against `nil` before calling this function.
@inlinable public func free(mem: gpointer! = nil) {
    g_free(mem)

}




/// Gets a human-readable name for the application, as set by
/// `g_set_application_name()`. This name should be localized if
/// possible, and is intended for display to the user.  Contrast with
/// `g_get_prgname()`, which gets a non-localized name. If
/// `g_set_application_name()` has not been called, returns the result of
/// `g_get_prgname()` (which may be `nil` if `g_set_prgname()` has also not
/// been called).
@inlinable public func getApplicationName() -> String! {
    guard let rv = g_get_application_name().map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Obtains the character set for the [current locale](#setlocale); you
/// might use this character set as an argument to `g_convert()`, to convert
/// from the current locale's encoding to some other encoding. (Frequently
/// `g_locale_to_utf8()` and `g_locale_from_utf8()` are nice shortcuts, though.)
/// 
/// On Windows the character set returned by this function is the
/// so-called system default ANSI code-page. That is the character set
/// used by the "narrow" versions of C library and Win32 functions that
/// handle file names. It might be different from the character set
/// used by the C library's current locale.
/// 
/// On Linux, the character set is found by consulting `nl_langinfo()` if
/// available. If not, the environment variables `LC_ALL`, `LC_CTYPE`, `LANG`
/// and `CHARSET` are queried in order.
/// 
/// The return value is `true` if the locale's encoding is UTF-8, in that
/// case you can perhaps avoid calling `g_convert()`.
/// 
/// The string returned in `charset` is not allocated, and should not be
/// freed.
@inlinable public func get(charset: UnsafeMutablePointer<UnsafePointer<CChar>?>! = nil) -> Bool {
    let rv = ((g_get_charset(charset)) != 0)
    return rv
}




/// Gets the character set for the current locale.
@inlinable public func getCodeset() -> String! {
    guard let rv = g_get_codeset().map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Obtains the character set used by the console attached to the process,
/// which is suitable for printing output to the terminal.
/// 
/// Usually this matches the result returned by `g_get_charset()`, but in
/// environments where the locale's character set does not match the encoding
/// of the console this function tries to guess a more suitable value instead.
/// 
/// On Windows the character set returned by this function is the
/// output code page used by the console associated with the calling process.
/// If the codepage can't be determined (for example because there is no
/// console attached) UTF-8 is assumed.
/// 
/// The return value is `true` if the locale's encoding is UTF-8, in that
/// case you can perhaps avoid calling `g_convert()`.
/// 
/// The string returned in `charset` is not allocated, and should not be
/// freed.
@inlinable public func getConsole(charset: UnsafeMutablePointer<UnsafePointer<CChar>?>! = nil) -> Bool {
    let rv = ((g_get_console_charset(charset)) != 0)
    return rv
}




/// Gets the current directory.
/// 
/// The returned string should be freed when no longer needed.
/// The encoding of the returned string is system defined.
/// On Windows, it is always UTF-8.
/// 
/// Since GLib 2.40, this function will return the value of the "PWD"
/// environment variable if it is set and it happens to be the same as
/// the current directory.  This can make a difference in the case that
/// the current directory is the target of a symbolic link.
@inlinable public func getCurrentDir() -> String! {
    guard let rv = g_get_current_dir().map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Equivalent to the UNIX `gettimeofday()` function, but portable.
/// 
/// You may find `g_get_real_time()` to be more convenient.
///
/// **get_current_time is deprecated:**
/// #GTimeVal is not year-2038-safe. Use g_get_real_time()
///    instead.
@available(*, deprecated) @inlinable public func getCurrentTime<TimeValT: TimeValProtocol>(result: TimeValT) {
    g_get_current_time(result._ptr)

}




/// Gets the list of environment variables for the current process.
/// 
/// The list is `nil` terminated and each item in the list is of the
/// form 'NAME=VALUE'.
/// 
/// This is equivalent to direct access to the 'environ' global variable,
/// except portable.
/// 
/// The return value is freshly allocated and it should be freed with
/// `g_strfreev()` when it is no longer needed.
@inlinable public func getEnviron() -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
    guard let rv = g_get_environ() else { return nil }
    return rv
}




/// Determines the preferred character sets used for filenames.
/// The first character set from the `charsets` is the filename encoding, the
/// subsequent character sets are used when trying to generate a displayable
/// representation of a filename, see `g_filename_display_name()`.
/// 
/// On Unix, the character sets are determined by consulting the
/// environment variables `G_FILENAME_ENCODING` and `G_BROKEN_FILENAMES`.
/// On Windows, the character set used in the GLib API is always UTF-8
/// and said environment variables have no effect.
/// 
/// `G_FILENAME_ENCODING` may be set to a comma-separated list of
/// character set names. The special token "\`locale`" is taken
/// to  mean the character set for the [current locale](#setlocale).
/// If `G_FILENAME_ENCODING` is not set, but `G_BROKEN_FILENAMES` is,
/// the character set of the current locale is taken as the filename
/// encoding. If neither environment variable  is set, UTF-8 is taken
/// as the filename encoding, but the character set of the current locale
/// is also put in the list of encodings.
/// 
/// The returned `charsets` belong to GLib and must not be freed.
/// 
/// Note that on Unix, regardless of the locale character set or
/// `G_FILENAME_ENCODING` value, the actual file names present
/// on a system might be in any random encoding or just gibberish.
@inlinable public func get(filenameCharsets: UnsafeMutablePointer<UnsafeMutablePointer<UnsafePointer<gchar>?>?>!) -> Bool {
    let rv = ((g_get_filename_charsets(filenameCharsets)) != 0)
    return rv
}




/// Gets the current user's home directory.
/// 
/// As with most UNIX tools, this function will return the value of the
/// `HOME` environment variable if it is set to an existing absolute path
/// name, falling back to the `passwd` file in the case that it is unset.
/// 
/// If the path given in `HOME` is non-absolute, does not exist, or is
/// not a directory, the result is undefined.
/// 
/// Before version 2.36 this function would ignore the `HOME` environment
/// variable, taking the value from the `passwd` database instead. This was
/// changed to increase the compatibility of GLib with other programs (and
/// the XDG basedir specification) and to increase testability of programs
/// based on GLib (by making it easier to run them from test frameworks).
/// 
/// If your program has a strong requirement for either the new or the
/// old behaviour (and if you don't wish to increase your GLib
/// dependency to ensure that the new behaviour is in effect) then you
/// should either directly check the `HOME` environment variable yourself
/// or unset it before calling any functions in GLib.
@inlinable public func getHomeDir() -> String! {
    guard let rv = g_get_home_dir().map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Return a name for the machine.
/// 
/// The returned name is not necessarily a fully-qualified domain name,
/// or even present in DNS or some other name service at all. It need
/// not even be unique on your local network or site, but usually it
/// is. Callers should not rely on the return value having any specific
/// properties like uniqueness for security purposes. Even if the name
/// of the machine is changed while an application is running, the
/// return value from this function does not change. The returned
/// string is owned by GLib and should not be modified or freed. If no
/// name can be determined, a default fixed string "localhost" is
/// returned.
/// 
/// The encoding of the returned string is UTF-8.
@inlinable public func getHostName() -> String! {
    guard let rv = g_get_host_name().map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Computes a list of applicable locale names, which can be used to
/// e.g. construct locale-dependent filenames or search paths. The returned
/// list is sorted from most desirable to least desirable and always contains
/// the default locale "C".
/// 
/// For example, if LANGUAGE=de:en_US, then the returned list is
/// "de", "en_US", "en", "C".
/// 
/// This function consults the environment variables `LANGUAGE`, `LC_ALL`,
/// `LC_MESSAGES` and `LANG` to find the list of locales specified by the
/// user.
@inlinable public func getLanguageNames() -> UnsafePointer<UnsafePointer<gchar>?>! {
    guard let rv = g_get_language_names() else { return nil }
    return rv
}




/// Computes a list of applicable locale names with a locale category name,
/// which can be used to construct the fallback locale-dependent filenames
/// or search paths. The returned list is sorted from most desirable to
/// least desirable and always contains the default locale "C".
/// 
/// This function consults the environment variables `LANGUAGE`, `LC_ALL`,
/// `category_name`, and `LANG` to find the list of locales specified by the
/// user.
/// 
/// `g_get_language_names()` returns `g_get_language_names_with_category("LC_MESSAGES")`.
@inlinable public func getLanguageNamesWithCategory(categoryName: UnsafePointer<gchar>!) -> UnsafePointer<UnsafePointer<gchar>?>! {
    guard let rv = g_get_language_names_with_category(categoryName) else { return nil }
    return rv
}




/// Returns a list of derived variants of `locale`, which can be used to
/// e.g. construct locale-dependent filenames or search paths. The returned
/// list is sorted from most desirable to least desirable.
/// This function handles territory, charset and extra locale modifiers. See
/// [``setlocale(3)``](man:setlocale) for information about locales and their format.
/// 
/// `locale` itself is guaranteed to be returned in the output.
/// 
/// For example, if `locale` is `fr_BE`, then the returned list
/// is `fr_BE`, `fr`. If `locale` is `en_GB.UTF-8`euro``, then the returned list
/// is `en_GB.UTF-8`euro``, `en_GB.UTF-8`, `en_GB`euro``, `en_GB`, `en.UTF-8`euro``,
/// `en.UTF-8`, `en`euro``, `en`.
/// 
/// If you need the list of variants for the current locale,
/// use `g_get_language_names()`.
@inlinable public func getLocaleVariants(locale: UnsafePointer<gchar>!) -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
    guard let rv = g_get_locale_variants(locale) else { return nil }
    return rv
}




/// Queries the system monotonic time.
/// 
/// The monotonic clock will always increase and doesn't suffer
/// discontinuities when the user (or NTP) changes the system time.  It
/// may or may not continue to tick during times where the machine is
/// suspended.
/// 
/// We try to use the clock that corresponds as closely as possible to
/// the passage of time as measured by system calls such as `poll()` but it
/// may not always be possible to do this.
@inlinable public func getMonotonicTime() -> gint64 {
    let rv = g_get_monotonic_time()
    return rv
}




/// Determine the approximate number of threads that the system will
/// schedule simultaneously for this process.  This is intended to be
/// used as a parameter to `g_thread_pool_new()` for CPU bound tasks and
/// similar cases.
@inlinable public func getNumProcessors() -> Int {
    let rv = Int(g_get_num_processors())
    return rv
}




/// Get information about the operating system.
/// 
/// On Linux this comes from the `/etc/os-release` file. On other systems, it may
/// come from a variety of sources. You can either use the standard key names
/// like `G_OS_INFO_KEY_NAME` or pass any UTF-8 string key name. For example,
/// `/etc/os-release` provides a number of other less commonly used values that may
/// be useful. No key is guaranteed to be provided, so the caller should always
/// check if the result is `nil`.
@inlinable public func getOsInfo(keyName: UnsafePointer<gchar>!) -> String! {
    guard let rv = g_get_os_info(keyName).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Gets the name of the program. This name should not be localized,
/// in contrast to `g_get_application_name()`.
/// 
/// If you are using `GApplication` the program name is set in
/// `g_application_run()`. In case of GDK or GTK+ it is set in
/// `gdk_init()`, which is called by `gtk_init()` and the
/// `GtkApplication::startup` handler. The program name is found by
/// taking the last component of `argv`[0].
@inlinable public func getPrgname() -> String! {
    guard let rv = g_get_prgname().map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Gets the real name of the user. This usually comes from the user's
/// entry in the `passwd` file. The encoding of the returned string is
/// system-defined. (On Windows, it is, however, always UTF-8.) If the
/// real user name cannot be determined, the string "Unknown" is
/// returned.
@inlinable public func getRealName() -> String! {
    guard let rv = g_get_real_name().map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Queries the system wall-clock time.
/// 
/// This call is functionally equivalent to `g_get_current_time()` except
/// that the return value is often more convenient than dealing with a
/// `GTimeVal`.
/// 
/// You should only use this call if you are actually interested in the real
/// wall-clock time.  `g_get_monotonic_time()` is probably more useful for
/// measuring intervals.
@inlinable public func getRealTime() -> gint64 {
    let rv = g_get_real_time()
    return rv
}




/// Returns an ordered list of base directories in which to access
/// system-wide configuration information.
/// 
/// On UNIX platforms this is determined using the mechanisms described
/// in the
/// [XDG Base Directory Specification](http://www.freedesktop.org/Standards/basedir-spec).
/// In this case the list of directories retrieved will be `XDG_CONFIG_DIRS`.
/// 
/// On Windows it follows XDG Base Directory Specification if `XDG_CONFIG_DIRS` is defined.
/// If `XDG_CONFIG_DIRS` is undefined, the directory that contains application
/// data for all users is used instead. A typical path is
/// `C:\Documents and Settings\All Users\Application Data`.
/// This folder is used for application data
/// that is not user specific. For example, an application can store
/// a spell-check dictionary, a database of clip art, or a log file in the
/// CSIDL_COMMON_APPDATA folder. This information will not roam and is available
/// to anyone using the computer.
@inlinable public func getSystemConfigDirs() -> UnsafePointer<UnsafePointer<gchar>?>! {
    guard let rv = g_get_system_config_dirs() else { return nil }
    return rv
}




/// Returns an ordered list of base directories in which to access
/// system-wide application data.
/// 
/// On UNIX platforms this is determined using the mechanisms described
/// in the
/// [XDG Base Directory Specification](http://www.freedesktop.org/Standards/basedir-spec)
/// In this case the list of directories retrieved will be `XDG_DATA_DIRS`.
/// 
/// On Windows it follows XDG Base Directory Specification if `XDG_DATA_DIRS` is defined.
/// If `XDG_DATA_DIRS` is undefined,
/// the first elements in the list are the Application Data
/// and Documents folders for All Users. (These can be determined only
/// on Windows 2000 or later and are not present in the list on other
/// Windows versions.) See documentation for CSIDL_COMMON_APPDATA and
/// CSIDL_COMMON_DOCUMENTS.
/// 
/// Then follows the "share" subfolder in the installation folder for
/// the package containing the DLL that calls this function, if it can
/// be determined.
/// 
/// Finally the list contains the "share" subfolder in the installation
/// folder for GLib, and in the installation folder for the package the
/// application's .exe file belongs to.
/// 
/// The installation folders above are determined by looking up the
/// folder where the module (DLL or EXE) in question is located. If the
/// folder's name is "bin", its parent is used, otherwise the folder
/// itself.
/// 
/// Note that on Windows the returned list can vary depending on where
/// this function is called.
@inlinable public func getSystemDataDirs() -> UnsafePointer<UnsafePointer<gchar>?>! {
    guard let rv = g_get_system_data_dirs() else { return nil }
    return rv
}




/// Gets the directory to use for temporary files.
/// 
/// On UNIX, this is taken from the `TMPDIR` environment variable.
/// If the variable is not set, `P_tmpdir` is
/// used, as defined by the system C library. Failing that, a
/// hard-coded default of "/tmp" is returned.
/// 
/// On Windows, the `TEMP` environment variable is used, with the
/// root directory of the Windows installation (eg: "C:\") used
/// as a default.
/// 
/// The encoding of the returned string is system-defined. On Windows,
/// it is always UTF-8. The return value is never `nil` or the empty
/// string.
@inlinable public func getTmpDir() -> String! {
    guard let rv = g_get_tmp_dir().map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Returns a base directory in which to store non-essential, cached
/// data specific to particular user.
/// 
/// On UNIX platforms this is determined using the mechanisms described
/// in the
/// [XDG Base Directory Specification](http://www.freedesktop.org/Standards/basedir-spec).
/// In this case the directory retrieved will be `XDG_CACHE_HOME`.
/// 
/// On Windows it follows XDG Base Directory Specification if `XDG_CACHE_HOME` is defined.
/// If `XDG_CACHE_HOME` is undefined, the directory that serves as a common
/// repository for temporary Internet files is used instead. A typical path is
/// `C:\Documents and Settings\username\Local Settings\Temporary Internet Files`.
/// See the [documentation for `CSIDL_INTERNET_CACHE`](https://msdn.microsoft.com/en-us/library/windows/desktop/bb762494`28v`=vs.85`29.aspx``csidl_internet_cache`).
@inlinable public func getUserCacheDir() -> String! {
    guard let rv = g_get_user_cache_dir().map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Returns a base directory in which to store user-specific application
/// configuration information such as user preferences and settings.
/// 
/// On UNIX platforms this is determined using the mechanisms described
/// in the
/// [XDG Base Directory Specification](http://www.freedesktop.org/Standards/basedir-spec).
/// In this case the directory retrieved will be `XDG_CONFIG_HOME`.
/// 
/// On Windows it follows XDG Base Directory Specification if `XDG_CONFIG_HOME` is defined.
/// If `XDG_CONFIG_HOME` is undefined, the folder to use for local (as opposed
/// to roaming) application data is used instead. See the
/// [documentation for `CSIDL_LOCAL_APPDATA`](https://msdn.microsoft.com/en-us/library/windows/desktop/bb762494`28v`=vs.85`29.aspx``csidl_local_appdata`).
/// Note that in this case on Windows it will be  the same
/// as what `g_get_user_data_dir()` returns.
@inlinable public func getUserConfigDir() -> String! {
    guard let rv = g_get_user_config_dir().map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Returns a base directory in which to access application data such
/// as icons that is customized for a particular user.
/// 
/// On UNIX platforms this is determined using the mechanisms described
/// in the
/// [XDG Base Directory Specification](http://www.freedesktop.org/Standards/basedir-spec).
/// In this case the directory retrieved will be `XDG_DATA_HOME`.
/// 
/// On Windows it follows XDG Base Directory Specification if `XDG_DATA_HOME`
/// is defined. If `XDG_DATA_HOME` is undefined, the folder to use for local (as
/// opposed to roaming) application data is used instead. See the
/// [documentation for `CSIDL_LOCAL_APPDATA`](https://msdn.microsoft.com/en-us/library/windows/desktop/bb762494`28v`=vs.85`29.aspx``csidl_local_appdata`).
/// Note that in this case on Windows it will be the same
/// as what `g_get_user_config_dir()` returns.
@inlinable public func getUserDataDir() -> String! {
    guard let rv = g_get_user_data_dir().map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Gets the user name of the current user. The encoding of the returned
/// string is system-defined. On UNIX, it might be the preferred file name
/// encoding, or something else, and there is no guarantee that it is even
/// consistent on a machine. On Windows, it is always UTF-8.
@inlinable public func getUserName() -> String! {
    guard let rv = g_get_user_name().map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Returns a directory that is unique to the current user on the local
/// system.
/// 
/// This is determined using the mechanisms described
/// in the
/// [XDG Base Directory Specification](http://www.freedesktop.org/Standards/basedir-spec).
/// This is the directory
/// specified in the `XDG_RUNTIME_DIR` environment variable.
/// In the case that this variable is not set, we return the value of
/// `g_get_user_cache_dir()`, after verifying that it exists.
@inlinable public func getUserRuntimeDir() -> String! {
    guard let rv = g_get_user_runtime_dir().map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Returns the full path of a special directory using its logical id.
/// 
/// On UNIX this is done using the XDG special user directories.
/// For compatibility with existing practise, `G_USER_DIRECTORY_DESKTOP`
/// falls back to `$HOME/Desktop` when XDG special user directories have
/// not been set up.
/// 
/// Depending on the platform, the user might be able to change the path
/// of the special directory without requiring the session to restart; GLib
/// will not reflect any change once the special directories are loaded.
@inlinable public func getUserSpecialDir(directory: GUserDirectory) -> String! {
    guard let rv = g_get_user_special_dir(directory).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Returns the value of an environment variable.
/// 
/// On UNIX, the name and value are byte strings which might or might not
/// be in some consistent character set and encoding. On Windows, they are
/// in UTF-8.
/// On Windows, in case the environment variable's value contains
/// references to other environment variables, they are expanded.
@inlinable public func getenv(variable: UnsafePointer<gchar>!) -> String! {
    guard let rv = g_getenv(variable).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// This is a convenience function for using a `GHashTable` as a set.  It
/// is equivalent to calling `g_hash_table_replace()` with `key` as both the
/// key and the value.
/// 
/// In particular, this means that if `key` already exists in the hash table, then
/// the old copy of `key` in the hash table is freed and `key` replaces it in the
/// table.
/// 
/// When a hash table only ever contains keys that have themselves as the
/// corresponding value it is able to be stored more efficiently.  See
/// the discussion in the section description.
/// 
/// Starting from GLib 2.40, this function returns a boolean value to
/// indicate whether the newly added value was already in the hash table
/// or not.
@inlinable public func hashTableAdd<HashTableT: HashTableProtocol>(hashTable: HashTableT, key: gpointer! = nil) -> Bool {
    let rv = ((g_hash_table_add(hashTable.hash_table_ptr, key)) != 0)
    return rv
}




/// Checks if `key` is in `hash_table`.
@inlinable public func hashTableContains<HashTableT: HashTableProtocol>(hashTable: HashTableT, key: gconstpointer! = nil) -> Bool {
    let rv = ((g_hash_table_contains(hashTable.hash_table_ptr, key)) != 0)
    return rv
}




/// Destroys all keys and values in the `GHashTable` and decrements its
/// reference count by 1. If keys and/or values are dynamically allocated,
/// you should either free them first or create the `GHashTable` with destroy
/// notifiers using `g_hash_table_new_full()`. In the latter case the destroy
/// functions you supplied will be called on all keys and values during the
/// destruction phase.
@inlinable public func hashTableDestroy<HashTableT: HashTableProtocol>(hashTable: HashTableT) {
    g_hash_table_destroy(hashTable.hash_table_ptr)

}




/// Inserts a new key and value into a `GHashTable`.
/// 
/// If the key already exists in the `GHashTable` its current
/// value is replaced with the new value. If you supplied a
/// `value_destroy_func` when creating the `GHashTable`, the old
/// value is freed using that function. If you supplied a
/// `key_destroy_func` when creating the `GHashTable`, the passed
/// key is freed using that function.
/// 
/// Starting from GLib 2.40, this function returns a boolean value to
/// indicate whether the newly added value was already in the hash table
/// or not.
@inlinable public func hashTableInsert<HashTableT: HashTableProtocol>(hashTable: HashTableT, key: gpointer! = nil, value: gpointer! = nil) -> Bool {
    let rv = ((g_hash_table_insert(hashTable.hash_table_ptr, key, value)) != 0)
    return rv
}




/// Looks up a key in a `GHashTable`. Note that this function cannot
/// distinguish between a key that is not present and one which is present
/// and has the value `nil`. If you need this distinction, use
/// `g_hash_table_lookup_extended()`.
@inlinable public func hashTableLookup<HashTableT: HashTableProtocol>(hashTable: HashTableT, key: gconstpointer! = nil) -> gpointer! {
    guard let rv = g_hash_table_lookup(hashTable.hash_table_ptr, key) else { return nil }
    return rv
}




/// Looks up a key in the `GHashTable`, returning the original key and the
/// associated value and a `gboolean` which is `true` if the key was found. This
/// is useful if you need to free the memory allocated for the original key,
/// for example before calling `g_hash_table_remove()`.
/// 
/// You can actually pass `nil` for `lookup_key` to test
/// whether the `nil` key exists, provided the hash and equal functions
/// of `hash_table` are `nil`-safe.
@inlinable public func hashTableLookupExtended<HashTableT: HashTableProtocol>(hashTable: HashTableT, lookupKey: gconstpointer! = nil, origKey: UnsafeMutablePointer<gpointer?>? = nil, value: UnsafeMutablePointer<gpointer?>? = nil) -> Bool {
    let rv = ((g_hash_table_lookup_extended(hashTable.hash_table_ptr, lookupKey, origKey, value)) != 0)
    return rv
}




/// Removes a key and its associated value from a `GHashTable`.
/// 
/// If the `GHashTable` was created using `g_hash_table_new_full()`, the
/// key and value are freed using the supplied destroy functions, otherwise
/// you have to make sure that any dynamically allocated values are freed
/// yourself.
@inlinable public func hashTableRemove<HashTableT: HashTableProtocol>(hashTable: HashTableT, key: gconstpointer! = nil) -> Bool {
    let rv = ((g_hash_table_remove(hashTable.hash_table_ptr, key)) != 0)
    return rv
}




/// Removes all keys and their associated values from a `GHashTable`.
/// 
/// If the `GHashTable` was created using `g_hash_table_new_full()`,
/// the keys and values are freed using the supplied destroy functions,
/// otherwise you have to make sure that any dynamically allocated
/// values are freed yourself.
@inlinable public func hashTableRemoveAll<HashTableT: HashTableProtocol>(hashTable: HashTableT) {
    g_hash_table_remove_all(hashTable.hash_table_ptr)

}




/// Inserts a new key and value into a `GHashTable` similar to
/// `g_hash_table_insert()`. The difference is that if the key
/// already exists in the `GHashTable`, it gets replaced by the
/// new key. If you supplied a `value_destroy_func` when creating
/// the `GHashTable`, the old value is freed using that function.
/// If you supplied a `key_destroy_func` when creating the
/// `GHashTable`, the old key is freed using that function.
/// 
/// Starting from GLib 2.40, this function returns a boolean value to
/// indicate whether the newly added value was already in the hash table
/// or not.
@inlinable public func hashTableReplace<HashTableT: HashTableProtocol>(hashTable: HashTableT, key: gpointer! = nil, value: gpointer! = nil) -> Bool {
    let rv = ((g_hash_table_replace(hashTable.hash_table_ptr, key, value)) != 0)
    return rv
}




/// Returns the number of elements contained in the `GHashTable`.
@inlinable public func hashTableSize<HashTableT: HashTableProtocol>(hashTable: HashTableT) -> Int {
    let rv = Int(g_hash_table_size(hashTable.hash_table_ptr))
    return rv
}




/// Removes a key and its associated value from a `GHashTable` without
/// calling the key and value destroy functions.
@inlinable public func hashTableSteal<HashTableT: HashTableProtocol>(hashTable: HashTableT, key: gconstpointer! = nil) -> Bool {
    let rv = ((g_hash_table_steal(hashTable.hash_table_ptr, key)) != 0)
    return rv
}




/// Removes all keys and their associated values from a `GHashTable`
/// without calling the key and value destroy functions.
@inlinable public func hashTableStealAll<HashTableT: HashTableProtocol>(hashTable: HashTableT) {
    g_hash_table_steal_all(hashTable.hash_table_ptr)

}




/// Looks up a key in the `GHashTable`, stealing the original key and the
/// associated value and returning `true` if the key was found. If the key was
/// not found, `false` is returned.
/// 
/// If found, the stolen key and value are removed from the hash table without
/// calling the key and value destroy functions, and ownership is transferred to
/// the caller of this method; as with `g_hash_table_steal()`.
/// 
/// You can pass `nil` for `lookup_key`, provided the hash and equal functions
/// of `hash_table` are `nil`-safe.
@inlinable public func hashTableStealExtended<HashTableT: HashTableProtocol>(hashTable: HashTableT, lookupKey: gconstpointer! = nil, stolenKey: UnsafeMutablePointer<gpointer?>? = nil, stolenValue: UnsafeMutablePointer<gpointer?>? = nil) -> Bool {
    let rv = ((g_hash_table_steal_extended(hashTable.hash_table_ptr, lookupKey, stolenKey, stolenValue)) != 0)
    return rv
}




/// Atomically decrements the reference count of `hash_table` by one.
/// If the reference count drops to 0, all keys and values will be
/// destroyed, and all memory allocated by the hash table is released.
/// This function is MT-safe and may be called from any thread.
@inlinable public func hashTableUnref<HashTableT: HashTableProtocol>(hashTable: HashTableT) {
    g_hash_table_unref(hashTable.hash_table_ptr)

}




/// Destroys a `GHook`, given its ID.
@inlinable public func hookDestroy<HookListT: HookListProtocol>(hookList: HookListT, hookID: Int) -> Bool {
    let rv = ((g_hook_destroy(hookList._ptr, gulong(hookID))) != 0)
    return rv
}




/// Removes one `GHook` from a `GHookList`, marking it
/// inactive and calling `g_hook_unref()` on it.
@inlinable public func hookDestroyLink<HookListT: HookListProtocol, HookT: HookProtocol>(hookList: HookListT, hook: HookT) {
    g_hook_destroy_link(hookList._ptr, hook._ptr)

}




/// Calls the `GHookList` `finalize_hook` function if it exists,
/// and frees the memory allocated for the `GHook`.
@inlinable public func hookFree<HookListT: HookListProtocol, HookT: HookProtocol>(hookList: HookListT, hook: HookT) {
    g_hook_free(hookList._ptr, hook._ptr)

}




/// Inserts a `GHook` into a `GHookList`, before a given `GHook`.
@inlinable public func hookInsertBefore<HookListT: HookListProtocol, HookT: HookProtocol>(hookList: HookListT, sibling: HookT?, hook: HookT) {
    g_hook_insert_before(hookList._ptr, sibling?._ptr, hook._ptr)

}




/// Prepends a `GHook` on the start of a `GHookList`.
@inlinable public func hookPrepend<HookListT: HookListProtocol, HookT: HookProtocol>(hookList: HookListT, hook: HookT) {
    g_hook_prepend(hookList._ptr, hook._ptr)

}




/// Decrements the reference count of a `GHook`.
/// If the reference count falls to 0, the `GHook` is removed
/// from the `GHookList` and `g_hook_free()` is called to free it.
@inlinable public func hookUnref<HookListT: HookListProtocol, HookT: HookProtocol>(hookList: HookListT, hook: HookT) {
    g_hook_unref(hookList._ptr, hook._ptr)

}




/// Tests if `hostname` contains segments with an ASCII-compatible
/// encoding of an Internationalized Domain Name. If this returns
/// `true`, you should decode the hostname with `g_hostname_to_unicode()`
/// before displaying it to the user.
/// 
/// Note that a hostname might contain a mix of encoded and unencoded
/// segments, and so it is possible for `g_hostname_is_non_ascii()` and
/// `g_hostname_is_ascii_encoded()` to both return `true` for a name.
@inlinable public func hostnameIsAsciiEncoded(hostname: UnsafePointer<gchar>!) -> Bool {
    let rv = ((g_hostname_is_ascii_encoded(hostname)) != 0)
    return rv
}




/// Tests if `hostname` is the string form of an IPv4 or IPv6 address.
/// (Eg, "192.168.0.1".)
/// 
/// Since 2.66, IPv6 addresses with a zone-id are accepted (RFC6874).
@inlinable public func hostnameIsIpAddress(hostname: UnsafePointer<gchar>!) -> Bool {
    let rv = ((g_hostname_is_ip_address(hostname)) != 0)
    return rv
}




/// Tests if `hostname` contains Unicode characters. If this returns
/// `true`, you need to encode the hostname with `g_hostname_to_ascii()`
/// before using it in non-IDN-aware contexts.
/// 
/// Note that a hostname might contain a mix of encoded and unencoded
/// segments, and so it is possible for `g_hostname_is_non_ascii()` and
/// `g_hostname_is_ascii_encoded()` to both return `true` for a name.
@inlinable public func hostnameIsNonAscii(hostname: UnsafePointer<gchar>!) -> Bool {
    let rv = ((g_hostname_is_non_ascii(hostname)) != 0)
    return rv
}




/// Converts `hostname` to its canonical ASCII form; an ASCII-only
/// string containing no uppercase letters and not ending with a
/// trailing dot.
@inlinable public func hostnameToAscii(hostname: UnsafePointer<gchar>!) -> String! {
    guard let rv = g_hostname_to_ascii(hostname).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Converts `hostname` to its canonical presentation form; a UTF-8
/// string in Unicode normalization form C, containing no uppercase
/// letters, no forbidden characters, and no ASCII-encoded segments,
/// and not ending with a trailing dot.
/// 
/// Of course if `hostname` is not an internationalized hostname, then
/// the canonical presentation form will be entirely ASCII.
@inlinable public func hostnameToUnicode(hostname: UnsafePointer<gchar>!) -> String! {
    guard let rv = g_hostname_to_unicode(hostname).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Same as the standard UNIX routine `iconv()`, but
/// may be implemented via libiconv on UNIX flavors that lack
/// a native implementation.
/// 
/// GLib provides `g_convert()` and `g_locale_to_utf8()` which are likely
/// more convenient than the raw iconv wrappers.
/// 
/// Note that the behaviour of `iconv()` for characters which are valid in the
/// input character set, but which have no representation in the output character
/// set, is implementation defined. This function may return success (with a
/// positive number of non-reversible conversions as replacement characters were
/// used), or it may return -1 and set an error such as `EILSEQ`, in such a
/// situation.
@inlinable public func iconv(converter: GIConv, inbuf: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>!, inbytesLeft: UnsafeMutablePointer<gsize>!, outbuf: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>!, outbytesLeft: UnsafeMutablePointer<gsize>!) -> Int {
    let rv = Int(g_iconv(converter, inbuf, inbytesLeft, outbuf, outbytesLeft))
    return rv
}




/// Same as the standard UNIX routine `iconv_open()`, but
/// may be implemented via libiconv on UNIX flavors that lack
/// a native implementation.
/// 
/// GLib provides `g_convert()` and `g_locale_to_utf8()` which are likely
/// more convenient than the raw iconv wrappers.
@inlinable public func iconvOpen(toCodeset: UnsafePointer<gchar>!, from codeset: UnsafePointer<gchar>!) -> GIConv? {
    let rv = g_iconv_open(toCodeset, codeset)
    return rv == GIConv(bitPattern: -1) ? nil : rv
}




/// Adds a function to be called whenever there are no higher priority
/// events pending to the default main loop. The function is given the
/// default idle priority, `G_PRIORITY_DEFAULT_IDLE`.  If the function
/// returns `false` it is automatically removed from the list of event
/// sources and will not be called again.
/// 
/// See [memory management of sources](#mainloop-memory-management) for details
/// on how to handle the return value and memory management of `data`.
/// 
/// This internally creates a main loop source using `g_idle_source_new()`
/// and attaches it to the global `GMainContext` using `g_source_attach()`, so
/// the callback will be invoked in whichever thread is running that main
/// context. You can do these steps manually if you need greater control or to
/// use a custom main context.
@inlinable public func idleAdd(function: GSourceFunc?, data: gpointer! = nil) -> Int {
    let rv = Int(g_idle_add(function, data))
    return rv
}




/// Adds a function to be called whenever there are no higher priority
/// events pending.  If the function returns `false` it is automatically
/// removed from the list of event sources and will not be called again.
/// 
/// See [memory management of sources](#mainloop-memory-management) for details
/// on how to handle the return value and memory management of `data`.
/// 
/// This internally creates a main loop source using `g_idle_source_new()`
/// and attaches it to the global `GMainContext` using `g_source_attach()`, so
/// the callback will be invoked in whichever thread is running that main
/// context. You can do these steps manually if you need greater control or to
/// use a custom main context.
@inlinable public func idleAddFull(priority: Int, function: GSourceFunc?, data: gpointer! = nil, notify: GDestroyNotify? = nil) -> Int {
    let rv = Int(g_idle_add_full(gint(priority), function, data, notify))
    return rv
}




/// Removes the idle function with the given data.
@inlinable public func idleRemoveBy(data: gpointer! = nil) -> Bool {
    let rv = ((g_idle_remove_by_data(data)) != 0)
    return rv
}




/// Creates a new idle source.
/// 
/// The source will not initially be associated with any `GMainContext`
/// and must be added to one with `g_source_attach()` before it will be
/// executed. Note that the default priority for idle sources is
/// `G_PRIORITY_DEFAULT_IDLE`, as compared to other sources which
/// have a default priority of `G_PRIORITY_DEFAULT`.
@inlinable public func idleSourceNew() -> SourceRef! {
    guard let rv = SourceRef(gconstpointer: gconstpointer(g_idle_source_new())) else { return nil }
    return rv
}




/// Compares the two `gint64` values being pointed to and returns
/// `true` if they are equal.
/// It can be passed to `g_hash_table_new()` as the `key_equal_func`
/// parameter, when using non-`nil` pointers to 64-bit integers as keys in a
/// `GHashTable`.
@inlinable public func int64Equal(v1: gconstpointer, v2: gconstpointer) -> Bool {
    let rv = ((g_int64_equal(v1, v2)) != 0)
    return rv
}




/// Converts a pointer to a `gint64` to a hash value.
/// 
/// It can be passed to `g_hash_table_new()` as the `hash_func` parameter,
/// when using non-`nil` pointers to 64-bit integer values as keys in a
/// `GHashTable`.
@inlinable public func int64Hash(v: gconstpointer) -> Int {
    let rv = Int(g_int64_hash(v))
    return rv
}




/// Compares the two `gint` values being pointed to and returns
/// `true` if they are equal.
/// It can be passed to `g_hash_table_new()` as the `key_equal_func`
/// parameter, when using non-`nil` pointers to integers as keys in a
/// `GHashTable`.
/// 
/// Note that this function acts on pointers to `gint`, not on `gint`
/// directly: if your hash table's keys are of the form
/// `GINT_TO_POINTER (n)`, use `g_direct_equal()` instead.
@inlinable public func intEqual(v1: gconstpointer, v2: gconstpointer) -> Bool {
    let rv = ((g_int_equal(v1, v2)) != 0)
    return rv
}




/// Converts a pointer to a `gint` to a hash value.
/// It can be passed to `g_hash_table_new()` as the `hash_func` parameter,
/// when using non-`nil` pointers to integer values as keys in a `GHashTable`.
/// 
/// Note that this function acts on pointers to `gint`, not on `gint`
/// directly: if your hash table's keys are of the form
/// `GINT_TO_POINTER (n)`, use `g_direct_hash()` instead.
@inlinable public func intHash(v: gconstpointer) -> Int {
    let rv = Int(g_int_hash(v))
    return rv
}




/// Returns a canonical representation for `string`. Interned strings
/// can be compared for equality by comparing the pointers, instead of
/// using `strcmp()`. `g_intern_static_string()` does not copy the string,
/// therefore `string` must not be freed or modified.
/// 
/// This function must not be used before library constructors have finished
/// running. In particular, this means it cannot be used to initialize global
/// variables in C++.
@inlinable public func internStatic(string: UnsafePointer<gchar>? = nil) -> String! {
    guard let rv = g_intern_static_string(string).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Returns a canonical representation for `string`. Interned strings
/// can be compared for equality by comparing the pointers, instead of
/// using `strcmp()`.
/// 
/// This function must not be used before library constructors have finished
/// running. In particular, this means it cannot be used to initialize global
/// variables in C++.
@inlinable public func intern(string: UnsafePointer<gchar>? = nil) -> String! {
    guard let rv = g_intern_string(string).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Adds the `GIOChannel` into the default main loop context
/// with the default priority.
@inlinable public func ioAddWatch<IOChannelT: IOChannelProtocol>(channel: IOChannelT, condition: IOCondition, `func`: GIOFunc?, userData: gpointer! = nil) -> Int {
    let rv = Int(g_io_add_watch(channel.io_channel_ptr, condition.value, `func`, userData))
    return rv
}




/// Adds the `GIOChannel` into the default main loop context
/// with the given priority.
/// 
/// This internally creates a main loop source using `g_io_create_watch()`
/// and attaches it to the main loop context with `g_source_attach()`.
/// You can do these steps manually if you need greater control.
@inlinable public func ioAddWatchFull<IOChannelT: IOChannelProtocol>(channel: IOChannelT, priority: Int, condition: IOCondition, `func`: GIOFunc?, userData: gpointer! = nil, notify: GDestroyNotify?) -> Int {
    let rv = Int(g_io_add_watch_full(channel.io_channel_ptr, gint(priority), condition.value, `func`, userData, notify))
    return rv
}




/// Converts an `errno` error number to a `GIOChannelError`.
@inlinable public func ioChannelErrorFromErrno(en: Int) -> GIOChannelError {
    let rv = g_io_channel_error_from_errno(gint(en))
    return rv
}




@inlinable public func ioChannelErrorQuark() -> GQuark {
    let rv = g_io_channel_error_quark()
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
@inlinable public func ioCreateWatch<IOChannelT: IOChannelProtocol>(channel: IOChannelT, condition: IOCondition) -> SourceRef! {
    guard let rv = SourceRef(gconstpointer: gconstpointer(g_io_create_watch(channel.io_channel_ptr, condition.value))) else { return nil }
    return rv
}




@inlinable public func keyFileErrorQuark() -> GQuark {
    let rv = g_key_file_error_quark()
    return rv
}




/// Gets the names of all variables set in the environment.
/// 
/// Programs that want to be portable to Windows should typically use
/// this function and `g_getenv()` instead of using the environ array
/// from the C library directly. On Windows, the strings in the environ
/// array are in system codepage encoding, while in most of the typical
/// use cases for environment variables in GLib-using programs you want
/// the UTF-8 encoding that this function and `g_getenv()` provide.
@inlinable public func listenv() -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
    guard let rv = g_listenv() else { return nil }
    return rv
}




/// Converts a string from UTF-8 to the encoding used for strings by
/// the C runtime (usually the same as that used by the operating
/// system) in the [current locale](#setlocale). On Windows this means
/// the system codepage.
/// 
/// The input string shall not contain nul characters even if the `len`
/// argument is positive. A nul character found inside the string will result
/// in error `G_CONVERT_ERROR_ILLEGAL_SEQUENCE`. Use `g_convert()` to convert
/// input that may contain embedded nul characters.
@inlinable public func localeFromUTF8(utf8string: UnsafePointer<gchar>!, len: gssize, bytesRead: UnsafeMutablePointer<gsize>! = nil, bytesWritten: UnsafeMutablePointer<gsize>! = nil) throws -> String! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = g_locale_from_utf8(utf8string, len, bytesRead, bytesWritten, &error).map({ String(cString: $0) })
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}




/// Converts a string which is in the encoding used for strings by
/// the C runtime (usually the same as that used by the operating
/// system) in the [current locale](#setlocale) into a UTF-8 string.
/// 
/// If the source encoding is not UTF-8 and the conversion output contains a
/// nul character, the error `G_CONVERT_ERROR_EMBEDDED_NUL` is set and the
/// function returns `nil`.
/// If the source encoding is UTF-8, an embedded nul character is treated with
/// the `G_CONVERT_ERROR_ILLEGAL_SEQUENCE` error for backward compatibility with
/// earlier versions of this library. Use `g_convert()` to produce output that
/// may contain embedded nul characters.
@inlinable public func localeToUTF8(opsysstring: UnsafePointer<gchar>!, len: gssize, bytesRead: UnsafeMutablePointer<gsize>! = nil, bytesWritten: UnsafeMutablePointer<gsize>! = nil) throws -> String! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = g_locale_to_utf8(opsysstring, len, bytesRead, bytesWritten, &error).map({ String(cString: $0) })
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}





// *** log() is not available because it has a varargs (...) parameter!





/// The default log handler set up by GLib; `g_log_set_default_handler()`
/// allows to install an alternate default log handler.
/// This is used if no log handler has been set for the particular log
/// domain and log level combination. It outputs the message to stderr
/// or stdout and if the log level is fatal it calls `G_BREAKPOINT()`. It automatically
/// prints a new-line character after the message, so one does not need to be
/// manually included in `message`.
/// 
/// The behavior of this log handler can be influenced by a number of
/// environment variables:
/// 
/// - `G_MESSAGES_PREFIXED`: A :-separated list of log levels for which
///   messages should be prefixed by the program name and PID of the
///   application.
/// 
/// - `G_MESSAGES_DEBUG`: A space-separated list of log domains for
///   which debug and informational messages are printed. By default
///   these messages are not printed.
/// 
/// stderr is used for levels `G_LOG_LEVEL_ERROR`, `G_LOG_LEVEL_CRITICAL`,
/// `G_LOG_LEVEL_WARNING` and `G_LOG_LEVEL_MESSAGE`. stdout is used for
/// the rest.
/// 
/// This has no effect if structured logging is enabled; see
/// [Using Structured Logging](#using-structured-logging).
@inlinable public func logDefaultHandler(logDomain: UnsafePointer<gchar>? = nil, logLevel: LogLevelFlags, message: UnsafePointer<gchar>? = nil, unusedData: gpointer! = nil) {
    g_log_default_handler(logDomain, logLevel.value, message, unusedData)

}




/// Removes the log handler.
/// 
/// This has no effect if structured logging is enabled; see
/// [Using Structured Logging](#using-structured-logging).
@inlinable public func logRemoveHandler(logDomain: UnsafePointer<gchar>!, handlerID: Int) {
    g_log_remove_handler(logDomain, guint(handlerID))

}




/// Sets the message levels which are always fatal, in any log domain.
/// When a message with any of these levels is logged the program terminates.
/// You can only set the levels defined by GLib to be fatal.
/// `G_LOG_LEVEL_ERROR` is always fatal.
/// 
/// You can also make some message levels fatal at runtime by setting
/// the `G_DEBUG` environment variable (see
/// [Running GLib Applications](glib-running.html)).
/// 
/// Libraries should not call this function, as it affects all messages logged
/// by a process, including those from other libraries.
/// 
/// Structured log messages (using `g_log_structured()` and
/// `g_log_structured_array()`) are fatal only if the default log writer is used;
/// otherwise it is up to the writer function to determine which log messages
/// are fatal. See [Using Structured Logging](#using-structured-logging).
@inlinable public func logSetAlwaysFatal(fatalMask: LogLevelFlags) -> LogLevelFlags {
    let rv = LogLevelFlags(g_log_set_always_fatal(fatalMask.value))
    return rv
}




/// Installs a default log handler which is used if no
/// log handler has been set for the particular log domain
/// and log level combination. By default, GLib uses
/// `g_log_default_handler()` as default log handler.
/// 
/// This has no effect if structured logging is enabled; see
/// [Using Structured Logging](#using-structured-logging).
@inlinable public func logSetDefaultHandler(logFunc: GLogFunc?, userData: gpointer! = nil) -> GLogFunc! {
    guard let rv = g_log_set_default_handler(logFunc, userData) else { return nil }
    return rv
}




/// Sets the log levels which are fatal in the given domain.
/// `G_LOG_LEVEL_ERROR` is always fatal.
/// 
/// This has no effect on structured log messages (using `g_log_structured()` or
/// `g_log_structured_array()`). To change the fatal behaviour for specific log
/// messages, programs must install a custom log writer function using
/// `g_log_set_writer_func()`. See
/// [Using Structured Logging](#using-structured-logging).
/// 
/// This function is mostly intended to be used with
/// `G_LOG_LEVEL_CRITICAL`.  You should typically not set
/// `G_LOG_LEVEL_WARNING`, `G_LOG_LEVEL_MESSAGE`, `G_LOG_LEVEL_INFO` or
/// `G_LOG_LEVEL_DEBUG` as fatal except inside of test programs.
@inlinable public func logSetFatalMask(logDomain: UnsafePointer<gchar>!, fatalMask: LogLevelFlags) -> LogLevelFlags {
    let rv = LogLevelFlags(g_log_set_fatal_mask(logDomain, fatalMask.value))
    return rv
}




/// Sets the log handler for a domain and a set of log levels.
/// To handle fatal and recursive messages the `log_levels` parameter
/// must be combined with the `G_LOG_FLAG_FATAL` and `G_LOG_FLAG_RECURSION`
/// bit flags.
/// 
/// Note that since the `G_LOG_LEVEL_ERROR` log level is always fatal, if
/// you want to set a handler for this log level you must combine it with
/// `G_LOG_FLAG_FATAL`.
/// 
/// This has no effect if structured logging is enabled; see
/// [Using Structured Logging](#using-structured-logging).
/// 
/// Here is an example for adding a log handler for all warning messages
/// in the default domain:
/// (C Language Example):
/// ```C
/// g_log_set_handler (NULL, G_LOG_LEVEL_WARNING | G_LOG_FLAG_FATAL
///                    | G_LOG_FLAG_RECURSION, my_log_handler, NULL);
/// ```
/// 
/// This example adds a log handler for all critical messages from GTK+:
/// (C Language Example):
/// ```C
/// g_log_set_handler ("Gtk", G_LOG_LEVEL_CRITICAL | G_LOG_FLAG_FATAL
///                    | G_LOG_FLAG_RECURSION, my_log_handler, NULL);
/// ```
/// 
/// This example adds a log handler for all messages from GLib:
/// (C Language Example):
/// ```C
/// g_log_set_handler ("GLib", G_LOG_LEVEL_MASK | G_LOG_FLAG_FATAL
///                    | G_LOG_FLAG_RECURSION, my_log_handler, NULL);
/// ```
/// 
@inlinable public func logSetHandler(logDomain: UnsafePointer<gchar>? = nil, logLevels: LogLevelFlags, logFunc: GLogFunc?, userData: gpointer! = nil) -> Int {
    let rv = Int(g_log_set_handler(logDomain, logLevels.value, logFunc, userData))
    return rv
}




/// Like `g_log_set_handler()`, but takes a destroy notify for the `user_data`.
/// 
/// This has no effect if structured logging is enabled; see
/// [Using Structured Logging](#using-structured-logging).
@inlinable public func logSetHandlerFull(logDomain: UnsafePointer<gchar>? = nil, logLevels: LogLevelFlags, logFunc: GLogFunc?, userData: gpointer! = nil, destroy: GDestroyNotify?) -> Int {
    let rv = Int(g_log_set_handler_full(logDomain, logLevels.value, logFunc, userData, destroy))
    return rv
}




/// Set a writer function which will be called to format and write out each log
/// message. Each program should set a writer function, or the default writer
/// (`g_log_writer_default()`) will be used.
/// 
/// Libraries **must not** call this function — only programs are allowed to
/// install a writer function, as there must be a single, central point where
/// log messages are formatted and outputted.
/// 
/// There can only be one writer function. It is an error to set more than one.
@inlinable public func logSetWriterFunc(`func`: GLogWriterFunc? = nil, userData: gpointer! = nil, userDataFree: GDestroyNotify?) {
    g_log_set_writer_func(`func`, userData, userDataFree)

}





// *** logStructured() is not available because it has a varargs (...) parameter!





/// Log a message with structured data. The message will be passed through to the
/// log writer set by the application using `g_log_set_writer_func()`. If the
/// message is fatal (i.e. its log level is `G_LOG_LEVEL_ERROR`), the program will
/// be aborted at the end of this function.
/// 
/// See `g_log_structured()` for more documentation.
/// 
/// This assumes that `log_level` is already present in `fields` (typically as the
/// `PRIORITY` field).
@inlinable public func logStructuredArray(logLevel: LogLevelFlags, fields: UnsafePointer<GLogField>!, nFields: Int) {
    g_log_structured_array(logLevel.value, fields, gsize(nFields))

}





// *** logStructuredStandard() is not available because it has a varargs (...) parameter!





/// Log a message with structured data, accepting the data within a `GVariant`. This
/// version is especially useful for use in other languages, via introspection.
/// 
/// The only mandatory item in the `fields` dictionary is the "MESSAGE" which must
/// contain the text shown to the user.
/// 
/// The values in the `fields` dictionary are likely to be of type String
/// (`G_VARIANT_TYPE_STRING`). Array of bytes (`G_VARIANT_TYPE_BYTESTRING`) is also
/// supported. In this case the message is handled as binary and will be forwarded
/// to the log writer as such. The size of the array should not be higher than
/// `G_MAXSSIZE`. Otherwise it will be truncated to this size. For other types
/// `g_variant_print()` will be used to convert the value into a string.
/// 
/// For more details on its usage and about the parameters, see `g_log_structured()`.
@inlinable public func logVariant<VariantT: VariantProtocol>(logDomain: UnsafePointer<gchar>? = nil, logLevel: LogLevelFlags, fields: VariantT) {
    g_log_variant(logDomain, logLevel.value, fields.variant_ptr)

}




/// Format a structured log message and output it to the default log destination
/// for the platform. On Linux, this is typically the systemd journal, falling
/// back to `stdout` or `stderr` if running from the terminal or if output is
/// being redirected to a file.
/// 
/// Support for other platform-specific logging mechanisms may be added in
/// future. Distributors of GLib may modify this function to impose their own
/// (documented) platform-specific log writing policies.
/// 
/// This is suitable for use as a `GLogWriterFunc`, and is the default writer used
/// if no other is set using `g_log_set_writer_func()`.
/// 
/// As with `g_log_default_handler()`, this function drops debug and informational
/// messages unless their log domain (or `all`) is listed in the space-separated
/// `G_MESSAGES_DEBUG` environment variable.
@inlinable public func logWriterDefault(logLevel: LogLevelFlags, fields: UnsafePointer<GLogField>!, nFields: Int, userData: gpointer! = nil) -> GLogWriterOutput {
    let rv = g_log_writer_default(logLevel.value, fields, gsize(nFields), userData)
    return rv
}




/// Format a structured log message as a string suitable for outputting to the
/// terminal (or elsewhere). This will include the values of all fields it knows
/// how to interpret, which includes `MESSAGE` and `GLIB_DOMAIN` (see the
/// documentation for `g_log_structured()`). It does not include values from
/// unknown fields.
/// 
/// The returned string does **not** have a trailing new-line character. It is
/// encoded in the character set of the current locale, which is not necessarily
/// UTF-8.
@inlinable public func logWriterFormatFields(logLevel: LogLevelFlags, fields: UnsafePointer<GLogField>!, nFields: Int, useColor: Bool) -> String! {
    guard let rv = g_log_writer_format_fields(logLevel.value, fields, gsize(nFields), gboolean((useColor) ? 1 : 0)).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Check whether the given `output_fd` file descriptor is a connection to the
/// systemd journal, or something else (like a log file or `stdout` or
/// `stderr`).
/// 
/// Invalid file descriptors are accepted and return `false`, which allows for
/// the following construct without needing any additional error handling:
/// (C Language Example):
/// ```C
///   is_journald = g_log_writer_is_journald (fileno (stderr));
/// ```
/// 
@inlinable public func logWriterIsJournald(outputFd: Int) -> Bool {
    let rv = ((g_log_writer_is_journald(gint(outputFd))) != 0)
    return rv
}




/// Format a structured log message and send it to the systemd journal as a set
/// of key–value pairs. All fields are sent to the journal, but if a field has
/// length zero (indicating program-specific data) then only its key will be
/// sent.
/// 
/// This is suitable for use as a `GLogWriterFunc`.
/// 
/// If GLib has been compiled without systemd support, this function is still
/// defined, but will always return `G_LOG_WRITER_UNHANDLED`.
@inlinable public func logWriterJournald(logLevel: LogLevelFlags, fields: UnsafePointer<GLogField>!, nFields: Int, userData: gpointer! = nil) -> GLogWriterOutput {
    let rv = g_log_writer_journald(logLevel.value, fields, gsize(nFields), userData)
    return rv
}




/// Format a structured log message and print it to either `stdout` or `stderr`,
/// depending on its log level. `G_LOG_LEVEL_INFO` and `G_LOG_LEVEL_DEBUG` messages
/// are sent to `stdout`; all other log levels are sent to `stderr`. Only fields
/// which are understood by this function are included in the formatted string
/// which is printed.
/// 
/// If the output stream supports ANSI color escape sequences, they will be used
/// in the output.
/// 
/// A trailing new-line character is added to the log message when it is printed.
/// 
/// This is suitable for use as a `GLogWriterFunc`.
@inlinable public func logWriterStandardStreams(logLevel: LogLevelFlags, fields: UnsafePointer<GLogField>!, nFields: Int, userData: gpointer! = nil) -> GLogWriterOutput {
    let rv = g_log_writer_standard_streams(logLevel.value, fields, gsize(nFields), userData)
    return rv
}




/// Check whether the given `output_fd` file descriptor supports ANSI color
/// escape sequences. If so, they can safely be used when formatting log
/// messages.
@inlinable public func logWriterSupportsColor(outputFd: Int) -> Bool {
    let rv = ((g_log_writer_supports_color(gint(outputFd))) != 0)
    return rv
}




/// Logs an error or debugging message.
/// 
/// If the log level has been set as fatal, `G_BREAKPOINT()` is called
/// to terminate the program. See the documentation for `G_BREAKPOINT()` for
/// details of the debugging options this provides.
/// 
/// If `g_log_default_handler()` is used as the log handler function, a new-line
/// character will automatically be appended to @..., and need not be entered
/// manually.
/// 
/// If [structured logging is enabled](#using-structured-logging) this will
/// output via the structured log writer function (see `g_log_set_writer_func()`).
@inlinable public func logv(logDomain: UnsafePointer<gchar>? = nil, logLevel: LogLevelFlags, format: UnsafePointer<gchar>!, args: CVaListPointer) {
    g_logv(logDomain, logLevel.value, format, args)

}




/// Returns the global default main context. This is the main context
/// used for main loop functions when a main loop is not explicitly
/// specified, and corresponds to the "main" main loop. See also
/// `g_main_context_get_thread_default()`.
@inlinable public func mainContextDefault() -> MainContextRef! {
    guard let rv = MainContextRef(gconstpointer: gconstpointer(g_main_context_default())) else { return nil }
    return rv
}




/// Gets the thread-default `GMainContext` for this thread. Asynchronous
/// operations that want to be able to be run in contexts other than
/// the default one should call this method or
/// `g_main_context_ref_thread_default()` to get a `GMainContext` to add
/// their `GSources` to. (Note that even in single-threaded
/// programs applications may sometimes want to temporarily push a
/// non-default context, so it is not safe to assume that this will
/// always return `nil` if you are running in the default thread.)
/// 
/// If you need to hold a reference on the context, use
/// `g_main_context_ref_thread_default()` instead.
@inlinable public func mainContextGetThreadDefault() -> MainContextRef! {
    guard let rv = MainContextRef(gconstpointer: gconstpointer(g_main_context_get_thread_default())) else { return nil }
    return rv
}




/// Gets the thread-default `GMainContext` for this thread, as with
/// `g_main_context_get_thread_default()`, but also adds a reference to
/// it with `g_main_context_ref()`. In addition, unlike
/// `g_main_context_get_thread_default()`, if the thread-default context
/// is the global default context, this will return that `GMainContext`
/// (with a ref added to it) rather than returning `nil`.
@inlinable public func mainContextRefThreadDefault() -> MainContextRef! {
    guard let rv = MainContextRef(gconstpointer: gconstpointer(g_main_context_ref_thread_default())) else { return nil }
    return rv
}




/// Returns the currently firing source for this thread.
@inlinable public func mainCurrentSource() -> SourceRef! {
    guard let rv = SourceRef(gconstpointer: gconstpointer(g_main_current_source())) else { return nil }
    return rv
}




/// Returns the depth of the stack of calls to
/// `g_main_context_dispatch()` on any `GMainContext` in the current thread.
///  That is, when called from the toplevel, it gives 0. When
/// called from within a callback from `g_main_context_iteration()`
/// (or `g_main_loop_run()`, etc.) it returns 1. When called from within
/// a callback to a recursive call to `g_main_context_iteration()`,
/// it returns 2. And so forth.
/// 
/// This function is useful in a situation like the following:
/// Imagine an extremely simple "garbage collected" system.
/// 
/// (C Language Example):
/// ```C
/// static GList *free_list;
/// 
/// gpointer
/// allocate_memory (gsize size)
/// {
///   gpointer result = g_malloc (size);
///   free_list = g_list_prepend (free_list, result);
///   return result;
/// }
/// 
/// void
/// free_allocated_memory (void)
/// {
///   GList *l;
///   for (l = free_list; l; l = l->next);
///     g_free (l->data);
///   g_list_free (free_list);
///   free_list = NULL;
///  }
/// 
/// [...]
/// 
/// while (TRUE);
///  {
///    g_main_context_iteration (NULL, TRUE);
///    free_allocated_memory();
///   }
/// ```
/// 
/// This works from an application, however, if you want to do the same
/// thing from a library, it gets more difficult, since you no longer
/// control the main loop. You might think you can simply use an idle
/// function to make the call to `free_allocated_memory()`, but that
/// doesn't work, since the idle function could be called from a
/// recursive callback. This can be fixed by using `g_main_depth()`
/// 
/// (C Language Example):
/// ```C
/// gpointer
/// allocate_memory (gsize size)
/// {
///   FreeListBlock *block = g_new (FreeListBlock, 1);
///   block->mem = g_malloc (size);
///   block->depth = g_main_depth ();
///   free_list = g_list_prepend (free_list, block);
///   return block->mem;
/// }
/// 
/// void
/// free_allocated_memory (void)
/// {
///   GList *l;
///   
///   int depth = g_main_depth ();
///   for (l = free_list; l; );
///     {
///       GList *next = l->next;
///       FreeListBlock *block = l->data;
///       if (block->depth > depth)
///         {
///           g_free (block->mem);
///           g_free (block);
///           free_list = g_list_delete_link (free_list, l);
///         }
///               
///       l = next;
///     }
///   }
/// ```
/// 
/// There is a temptation to use `g_main_depth()` to solve
/// problems with reentrancy. For instance, while waiting for data
/// to be received from the network in response to a menu item,
/// the menu item might be selected again. It might seem that
/// one could make the menu item's callback return immediately
/// and do nothing if `g_main_depth()` returns a value greater than 1.
/// However, this should be avoided since the user then sees selecting
/// the menu item do nothing. Furthermore, you'll find yourself adding
/// these checks all over your code, since there are doubtless many,
/// many things that the user could do. Instead, you can use the
/// following techniques:
/// 
/// 1. Use `gtk_widget_set_sensitive()` or modal dialogs to prevent
///    the user from interacting with elements while the main
///    loop is recursing.
/// 
/// 2. Avoid main loop recursion in situations where you can't handle
///    arbitrary  callbacks. Instead, structure your code so that you
///    simply return to the main loop and then get called again when
///    there is more work to do.
@inlinable public func mainDepth() -> Int {
    let rv = Int(g_main_depth())
    return rv
}




/// Allocates `n_bytes` bytes of memory.
/// If `n_bytes` is 0 it returns `nil`.
@inlinable public func malloc(nBytes: Int) -> gpointer! {
    guard let rv = g_malloc(gsize(nBytes)) else { return nil }
    return rv
}




/// Allocates `n_bytes` bytes of memory, initialized to 0's.
/// If `n_bytes` is 0 it returns `nil`.
@inlinable public func malloc0(nBytes: Int) -> gpointer! {
    guard let rv = g_malloc0(gsize(nBytes)) else { return nil }
    return rv
}




/// This function is similar to `g_malloc0()`, allocating (`n_blocks` * `n_block_bytes`) bytes,
/// but care is taken to detect possible overflow during multiplication.
@inlinable public func malloc0N(nBlocks: Int, nBlockBytes: Int) -> gpointer! {
    guard let rv = g_malloc0_n(gsize(nBlocks), gsize(nBlockBytes)) else { return nil }
    return rv
}




/// This function is similar to `g_malloc()`, allocating (`n_blocks` * `n_block_bytes`) bytes,
/// but care is taken to detect possible overflow during multiplication.
@inlinable public func mallocN(nBlocks: Int, nBlockBytes: Int) -> gpointer! {
    guard let rv = g_malloc_n(gsize(nBlocks), gsize(nBlockBytes)) else { return nil }
    return rv
}





// *** markupCollectAttributes() is not available because it has a varargs (...) parameter!





@inlinable public func markupErrorQuark() -> GQuark {
    let rv = g_markup_error_quark()
    return rv
}




/// Escapes text so that the markup parser will parse it verbatim.
/// Less than, greater than, ampersand, etc. are replaced with the
/// corresponding entities. This function would typically be used
/// when writing out a file to be parsed with the markup parser.
/// 
/// Note that this function doesn't protect whitespace and line endings
/// from being processed according to the XML rules for normalization
/// of line endings and attribute values.
/// 
/// Note also that this function will produce character references in
/// the range of &`x1`; ... &`x1f`; for all control sequences
/// except for tabstop, newline and carriage return.  The character
/// references in this range are not valid XML 1.0, but they are
/// valid XML 1.1 and will be accepted by the GMarkup parser.
@inlinable public func markupEscape(text: UnsafePointer<gchar>!, length: gssize) -> String! {
    guard let rv = g_markup_escape_text(text, length).map({ String(cString: $0) }) else { return nil }
    return rv
}





// *** markupPrintfEscaped() is not available because it has a varargs (...) parameter!





/// Formats the data in `args` according to `format`, escaping
/// all string and character arguments in the fashion
/// of `g_markup_escape_text()`. See `g_markup_printf_escaped()`.
@inlinable public func markupVprintfEscaped(format: UnsafePointer<CChar>!, args: CVaListPointer) -> String! {
    guard let rv = g_markup_vprintf_escaped(format, args).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Checks whether the allocator used by `g_malloc()` is the system's
/// malloc implementation. If it returns `true` memory allocated with
/// `malloc()` can be used interchangeably with memory allocated using `g_malloc()`.
/// This function is useful for avoiding an extra copy of allocated memory returned
/// by a non-GLib-based API.
///
/// **mem_is_system_malloc is deprecated:**
/// GLib always uses the system malloc, so this function always
/// returns %TRUE.
@available(*, deprecated) @inlinable public func memIsSystemMalloc() -> Bool {
    let rv = ((g_mem_is_system_malloc()) != 0)
    return rv
}




/// GLib used to support some tools for memory profiling, but this
/// no longer works. There are many other useful tools for memory
/// profiling these days which can be used instead.
///
/// **mem_profile is deprecated:**
/// Use other memory profiling tools instead
@available(*, deprecated) @inlinable public func memProfile() {
    g_mem_profile()

}




/// This function used to let you override the memory allocation function.
/// However, its use was incompatible with the use of global constructors
/// in GLib and GIO, because those use the GLib allocators before main is
/// reached. Therefore this function is now deprecated and is just a stub.
///
/// **mem_set_vtable is deprecated:**
/// This function now does nothing. Use other memory
/// profiling tools instead
@available(*, deprecated) @inlinable public func memSet<MemVTableT: MemVTableProtocol>(vtable: MemVTableT) {
    g_mem_set_vtable(vtable._ptr)

}




/// Allocates `byte_size` bytes of memory, and copies `byte_size` bytes into it
/// from `mem`. If `mem` is `nil` it returns `nil`.
@inlinable public func memdup(mem: gconstpointer! = nil, byteSize: Int) -> gpointer! {
    guard let rv = g_memdup(mem, guint(byteSize)) else { return nil }
    return rv
}




/// Create a directory if it doesn't already exist. Create intermediate
/// parent directories as needed, too.
@inlinable public func mkdirWithParents(pathname: UnsafePointer<gchar>!, mode: Int) -> Int {
    let rv = Int(g_mkdir_with_parents(pathname, gint(mode)))
    return rv
}




/// Creates a temporary directory. See the `mkdtemp()` documentation
/// on most UNIX-like systems.
/// 
/// The parameter is a string that should follow the rules for
/// `mkdtemp()` templates, i.e. contain the string "XXXXXX".
/// `g_mkdtemp()` is slightly more flexible than `mkdtemp()` in that the
/// sequence does not have to occur at the very end of the template.
/// The X string will be modified to form the name of a directory that
/// didn't exist.
/// The string should be in the GLib file name encoding. Most importantly,
/// on Windows it should be in UTF-8.
/// 
/// If you are going to be creating a temporary directory inside the
/// directory returned by `g_get_tmp_dir()`, you might want to use
/// `g_dir_make_tmp()` instead.
@inlinable public func mkdtemp(tmpl: UnsafeMutablePointer<gchar>!) -> String! {
    guard let rv = g_mkdtemp(tmpl).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Creates a temporary directory. See the `mkdtemp()` documentation
/// on most UNIX-like systems.
/// 
/// The parameter is a string that should follow the rules for
/// `mkdtemp()` templates, i.e. contain the string "XXXXXX".
/// `g_mkdtemp_full()` is slightly more flexible than `mkdtemp()` in that the
/// sequence does not have to occur at the very end of the template
/// and you can pass a `mode`. The X string will be modified to form
/// the name of a directory that didn't exist. The string should be
/// in the GLib file name encoding. Most importantly, on Windows it
/// should be in UTF-8.
/// 
/// If you are going to be creating a temporary directory inside the
/// directory returned by `g_get_tmp_dir()`, you might want to use
/// `g_dir_make_tmp()` instead.
@inlinable public func mkdtempFull(tmpl: UnsafeMutablePointer<gchar>!, mode: Int) -> String! {
    guard let rv = g_mkdtemp_full(tmpl, gint(mode)).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Opens a temporary file. See the `mkstemp()` documentation
/// on most UNIX-like systems.
/// 
/// The parameter is a string that should follow the rules for
/// `mkstemp()` templates, i.e. contain the string "XXXXXX".
/// `g_mkstemp()` is slightly more flexible than `mkstemp()` in that the
/// sequence does not have to occur at the very end of the template.
/// The X string will be modified to form the name of a file that
/// didn't exist. The string should be in the GLib file name encoding.
/// Most importantly, on Windows it should be in UTF-8.
@inlinable public func mkstemp(tmpl: UnsafeMutablePointer<gchar>!) -> Int {
    let rv = Int(g_mkstemp(tmpl))
    return rv
}




/// Opens a temporary file. See the `mkstemp()` documentation
/// on most UNIX-like systems.
/// 
/// The parameter is a string that should follow the rules for
/// `mkstemp()` templates, i.e. contain the string "XXXXXX".
/// `g_mkstemp_full()` is slightly more flexible than `mkstemp()`
/// in that the sequence does not have to occur at the very end of the
/// template and you can pass a `mode` and additional `flags`. The X
/// string will be modified to form the name of a file that didn't exist.
/// The string should be in the GLib file name encoding. Most importantly,
/// on Windows it should be in UTF-8.
@inlinable public func mkstempFull(tmpl: UnsafeMutablePointer<gchar>!, flags: Int, mode: Int) -> Int {
    let rv = Int(g_mkstemp_full(tmpl, gint(flags), gint(mode)))
    return rv
}




/// Set the pointer at the specified location to `nil`.
@inlinable public func nullifyPointer(nullifyLocation: UnsafeMutablePointer<gpointer?>!) {
    g_nullify_pointer(nullifyLocation)

}




@inlinable public func numberParserErrorQuark() -> GQuark {
    let rv = g_number_parser_error_quark()
    return rv
}




/// Prompts the user with
/// `[E]xit, [H]alt, show [S]tack trace or [P]roceed`.
/// This function is intended to be used for debugging use only.
/// The following example shows how it can be used together with
/// the `g_log()` functions.
/// 
/// (C Language Example):
/// ```C
/// #include <glib.h>
/// 
/// static void
/// log_handler (const gchar   *log_domain,
///              GLogLevelFlags log_level,
///              const gchar   *message,
///              gpointer       user_data)
/// {
///   g_log_default_handler (log_domain, log_level, message, user_data);
/// 
///   g_on_error_query (MY_PROGRAM_NAME);
/// }
/// 
/// int
/// main (int argc, char *argv[])
/// {
///   g_log_set_handler (MY_LOG_DOMAIN,
///                      G_LOG_LEVEL_WARNING |
///                      G_LOG_LEVEL_ERROR |
///                      G_LOG_LEVEL_CRITICAL,
///                      log_handler,
///                      NULL);
///   ...
/// ```
/// 
/// If "[E]xit" is selected, the application terminates with a call
/// to `_exit(0)`.
/// 
/// If "[S]tack" trace is selected, `g_on_error_stack_trace()` is called.
/// This invokes gdb, which attaches to the current process and shows
/// a stack trace. The prompt is then shown again.
/// 
/// If "[P]roceed" is selected, the function returns.
/// 
/// This function may cause different actions on non-UNIX platforms.
/// 
/// On Windows consider using the `G_DEBUGGER` environment
/// variable (see [Running GLib Applications](glib-running.html)) and
/// calling `g_on_error_stack_trace()` instead.
@inlinable public func onErrorQuery(prgName: UnsafePointer<gchar>!) {
    g_on_error_query(prgName)

}




/// Invokes gdb, which attaches to the current process and shows a
/// stack trace. Called by `g_on_error_query()` when the "[S]tack trace"
/// option is selected. You can get the current process's program name
/// with `g_get_prgname()`, assuming that you have called `gtk_init()` or
/// `gdk_init()`.
/// 
/// This function may cause different actions on non-UNIX platforms.
/// 
/// When running on Windows, this function is *not* called by
/// `g_on_error_query()`. If called directly, it will raise an
/// exception, which will crash the program. If the `G_DEBUGGER` environment
/// variable is set, a debugger will be invoked to attach and
/// handle that exception (see [Running GLib Applications](glib-running.html)).
@inlinable public func onErrorStackTrace(prgName: UnsafePointer<gchar>!) {
    g_on_error_stack_trace(prgName)

}




/// Function to be called when starting a critical initialization
/// section. The argument `location` must point to a static
/// 0-initialized variable that will be set to a value other than 0 at
/// the end of the initialization section. In combination with
/// `g_once_init_leave()` and the unique address `value_location`, it can
/// be ensured that an initialization section will be executed only once
/// during a program's life time, and that concurrent threads are
/// blocked until initialization completed. To be used in constructs
/// like this:
/// 
/// (C Language Example):
/// ```C
///   static gsize initialization_value = 0;
/// 
///   if (g_once_init_enter (&initialization_value))
///     {
///       gsize setup_value = 42; // initialization code here
/// 
///       g_once_init_leave (&initialization_value, setup_value);
///     }
/// 
///   // use initialization_value here
/// ```
/// 
@inlinable public func onceInitEnter(location: UnsafeMutableRawPointer!) -> Bool {
    let rv = ((g_once_init_enter(location)) != 0)
    return rv
}




/// Counterpart to `g_once_init_enter()`. Expects a location of a static
/// 0-initialized initialization variable, and an initialization value
/// other than 0. Sets the variable to the initialization value, and
/// releases concurrent threads blocking in `g_once_init_enter()` on this
/// initialization variable.
@inlinable public func onceInitLeave(location: UnsafeMutableRawPointer!, result: Int) {
    g_once_init_leave(location, gsize(result))

}




@inlinable public func optionErrorQuark() -> GQuark {
    let rv = g_option_error_quark()
    return rv
}




/// Parses a string containing debugging options
/// into a `guint` containing bit flags. This is used
/// within GDK and GTK+ to parse the debug options passed on the
/// command line or through environment variables.
/// 
/// If `string` is equal to "all", all flags are set. Any flags
/// specified along with "all" in `string` are inverted; thus,
/// "all,foo,bar" or "foo,bar,all" sets all flags except those
/// corresponding to "foo" and "bar".
/// 
/// If `string` is equal to "help", all the available keys in `keys`
/// are printed out to standard error.
@inlinable public func parseDebug(string: UnsafePointer<gchar>? = nil, keys: UnsafePointer<GDebugKey>!, nkeys: Int) -> Int {
    let rv = Int(g_parse_debug_string(string, keys, guint(nkeys)))
    return rv
}




/// Gets the last component of the filename.
/// 
/// If `file_name` ends with a directory separator it gets the component
/// before the last slash. If `file_name` consists only of directory
/// separators (and on Windows, possibly a drive letter), a single
/// separator is returned. If `file_name` is empty, it gets ".".
@inlinable public func pathGetBasename(fileName: UnsafePointer<gchar>!) -> String! {
    guard let rv = g_path_get_basename(fileName).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Gets the directory components of a file name. For example, the directory
/// component of `/usr/bin/test` is `/usr/bin`. The directory component of `/`
/// is `/`.
/// 
/// If the file name has no directory components "." is returned.
/// The returned string should be freed when no longer needed.
@inlinable public func pathGetDirname(fileName: UnsafePointer<gchar>!) -> String! {
    guard let rv = g_path_get_dirname(fileName).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Returns `true` if the given `file_name` is an absolute file name.
/// Note that this is a somewhat vague concept on Windows.
/// 
/// On POSIX systems, an absolute file name is well-defined. It always
/// starts from the single root directory. For example "/usr/local".
/// 
/// On Windows, the concepts of current drive and drive-specific
/// current directory introduce vagueness. This function interprets as
/// an absolute file name one that either begins with a directory
/// separator such as "\Users\tml" or begins with the root on a drive,
/// for example "C:\Windows". The first case also includes UNC paths
/// such as "\\\\myserver\docs\foo". In all cases, either slashes or
/// backslashes are accepted.
/// 
/// Note that a file name relative to the current drive root does not
/// truly specify a file uniquely over time and across processes, as
/// the current drive is a per-process value and can be changed.
/// 
/// File names relative the current directory on some specific drive,
/// such as "D:foo/bar", are not interpreted as absolute by this
/// function, but they obviously are not relative to the normal current
/// directory as returned by `getcwd()` or `g_get_current_dir()`
/// either. Such paths should be avoided, or need to be handled using
/// Windows-specific code.
@inlinable public func pathIsAbsolute(fileName: UnsafePointer<gchar>!) -> Bool {
    let rv = ((g_path_is_absolute(fileName)) != 0)
    return rv
}




/// Returns a pointer into `file_name` after the root component,
/// i.e. after the "/" in UNIX or "C:\" under Windows. If `file_name`
/// is not an absolute path it returns `nil`.
@inlinable public func pathSkipRoot(fileName: UnsafePointer<gchar>!) -> String! {
    guard let rv = g_path_skip_root(fileName).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Matches a string against a compiled pattern. Passing the correct
/// length of the string given is mandatory. The reversed string can be
/// omitted by passing `nil`, this is more efficient if the reversed
/// version of the string to be matched is not at hand, as
/// `g_pattern_match()` will only construct it if the compiled pattern
/// requires reverse matches.
/// 
/// Note that, if the user code will (possibly) match a string against a
/// multitude of patterns containing wildcards, chances are high that
/// some patterns will require a reversed string. In this case, it's
/// more efficient to provide the reversed string to avoid multiple
/// constructions thereof in the various calls to `g_pattern_match()`.
/// 
/// Note also that the reverse of a UTF-8 encoded string can in general
/// not be obtained by `g_strreverse()`. This works only if the string
/// does not contain any multibyte characters. GLib offers the
/// `g_utf8_strreverse()` function to reverse UTF-8 encoded strings.
@inlinable public func patternMatch<PatternSpecT: PatternSpecProtocol>(pspec: PatternSpecT, stringLength: Int, string: UnsafePointer<gchar>!, stringReversed: UnsafePointer<gchar>? = nil) -> Bool {
    let rv = ((g_pattern_match(pspec._ptr, guint(stringLength), string, stringReversed)) != 0)
    return rv
}




/// Matches a string against a pattern given as a string. If this
/// function is to be called in a loop, it's more efficient to compile
/// the pattern once with `g_pattern_spec_new()` and call
/// `g_pattern_match_string()` repeatedly.
@inlinable public func patternMatchSimple(pattern: UnsafePointer<gchar>!, string: UnsafePointer<gchar>!) -> Bool {
    let rv = ((g_pattern_match_simple(pattern, string)) != 0)
    return rv
}




/// Matches a string against a compiled pattern. If the string is to be
/// matched against more than one pattern, consider using
/// `g_pattern_match()` instead while supplying the reversed string.
@inlinable public func patternMatchString<PatternSpecT: PatternSpecProtocol>(pspec: PatternSpecT, string: UnsafePointer<gchar>!) -> Bool {
    let rv = ((g_pattern_match_string(pspec._ptr, string)) != 0)
    return rv
}




/// This is equivalent to g_bit_lock, but working on pointers (or other
/// pointer-sized values).
/// 
/// For portability reasons, you may only lock on the bottom 32 bits of
/// the pointer.
@inlinable public func pointerBitLock(address: UnsafeMutableRawPointer!, lockBit: Int) {
    g_pointer_bit_lock(address, gint(lockBit))

}




/// This is equivalent to g_bit_trylock, but working on pointers (or
/// other pointer-sized values).
/// 
/// For portability reasons, you may only lock on the bottom 32 bits of
/// the pointer.
@inlinable public func pointerBitTrylock(address: UnsafeMutableRawPointer!, lockBit: Int) -> Bool {
    let rv = ((g_pointer_bit_trylock(address, gint(lockBit))) != 0)
    return rv
}




/// This is equivalent to g_bit_unlock, but working on pointers (or other
/// pointer-sized values).
/// 
/// For portability reasons, you may only lock on the bottom 32 bits of
/// the pointer.
@inlinable public func pointerBitUnlock(address: UnsafeMutableRawPointer!, lockBit: Int) {
    g_pointer_bit_unlock(address, gint(lockBit))

}




/// Polls `fds`, as with the `poll()` system call, but portably. (On
/// systems that don't have `poll()`, it is emulated using `select()`.)
/// This is used internally by `GMainContext`, but it can be called
/// directly if you need to block until a file descriptor is ready, but
/// don't want to run the full main loop.
/// 
/// Each element of `fds` is a `GPollFD` describing a single file
/// descriptor to poll. The `fd` field indicates the file descriptor,
/// and the `events` field indicates the events to poll for. On return,
/// the `revents` fields will be filled with the events that actually
/// occurred.
/// 
/// On POSIX systems, the file descriptors in `fds` can be any sort of
/// file descriptor, but the situation is much more complicated on
/// Windows. If you need to use `g_poll()` in code that has to run on
/// Windows, the easiest solution is to construct all of your
/// `GPollFDs` with `g_io_channel_win32_make_pollfd()`.
@inlinable public func poll<PollFDT: PollFDProtocol>(fds: PollFDT, nfds: Int, timeout: Int) -> Int {
    let rv = Int(g_poll(fds.pollfd_ptr, guint(nfds), gint(timeout)))
    return rv
}





// *** prefixError() is not available because it has a varargs (...) parameter!






// *** print() is not available because it has a varargs (...) parameter!






// *** printerr() is not available because it has a varargs (...) parameter!






// *** printf() is not available because it has a varargs (...) parameter!





/// Calculates the maximum space needed to store the output
/// of the `sprintf()` function.
@inlinable public func printfStringUpperBound(format: UnsafePointer<gchar>!, args: CVaListPointer) -> Int {
    let rv = Int(g_printf_string_upper_bound(format, args))
    return rv
}




/// If `dest` is `nil`, free `src`; otherwise, moves `src` into *`dest`.
/// The error variable `dest` points to must be `nil`.
/// 
/// `src` must be non-`nil`.
/// 
/// Note that `src` is no longer valid after this call. If you want
/// to keep using the same GError*, you need to set it to `nil`
/// after calling this function on it.
@inlinable public func propagateError<GLibErrorT: ErrorProtocol>(dest: UnsafeMutablePointer<UnsafeMutablePointer<GError>?>? = nil, src: GLibErrorT) {
    g_propagate_error(dest, src.error_ptr)

}





// *** propagatePrefixedError() is not available because it has a varargs (...) parameter!





/// Checks whether `needle` exists in `haystack`. If the element is found, `true` is
/// returned and the element’s index is returned in `index_` (if non-`nil`).
/// Otherwise, `false` is returned and `index_` is undefined. If `needle` exists
/// multiple times in `haystack`, the index of the first instance is returned.
/// 
/// This does pointer comparisons only. If you want to use more complex equality
/// checks, such as string comparisons, use `g_ptr_array_find_with_equal_func()`.
@inlinable public func ptrArrayFind<PtrArrayT: PtrArrayProtocol>(haystack: PtrArrayT, needle: gconstpointer! = nil, index_: UnsafeMutablePointer<guint>! = nil) -> Bool {
    let rv = ((g_ptr_array_find(haystack.ptr_array_ptr, needle, index_)) != 0)
    return rv
}




/// Checks whether `needle` exists in `haystack`, using the given `equal_func`.
/// If the element is found, `true` is returned and the element’s index is
/// returned in `index_` (if non-`nil`). Otherwise, `false` is returned and `index_`
/// is undefined. If `needle` exists multiple times in `haystack`, the index of
/// the first instance is returned.
/// 
/// `equal_func` is called with the element from the array as its first parameter,
/// and `needle` as its second parameter. If `equal_func` is `nil`, pointer
/// equality is used.
@inlinable public func ptrArrayFindWithEqualFunc<PtrArrayT: PtrArrayProtocol>(haystack: PtrArrayT, needle: gconstpointer! = nil, equalFunc: GEqualFunc? = nil, index_: UnsafeMutablePointer<guint>! = nil) -> Bool {
    let rv = ((g_ptr_array_find_with_equal_func(haystack.ptr_array_ptr, needle, equalFunc, index_)) != 0)
    return rv
}




/// This is just like the standard C `qsort()` function, but
/// the comparison routine accepts a user data argument.
/// 
/// This is guaranteed to be a stable sort since version 2.32.
@inlinable public func qsortWithData(pbase: gconstpointer, totalElems: Int, size: Int, compareFunc: GCompareDataFunc?, userData: gpointer! = nil) {
    g_qsort_with_data(pbase, gint(totalElems), gsize(size), compareFunc, userData)

}




/// Gets the `GQuark` identifying the given (static) string. If the
/// string does not currently have an associated `GQuark`, a new `GQuark`
/// is created, linked to the given string.
/// 
/// Note that this function is identical to `g_quark_from_string()` except
/// that if a new `GQuark` is created the string itself is used rather
/// than a copy. This saves memory, but can only be used if the string
/// will continue to exist until the program terminates. It can be used
/// with statically allocated strings in the main program, but not with
/// statically allocated memory in dynamically loaded modules, if you
/// expect to ever unload the module again (e.g. do not use this
/// function in GTK+ theme engines).
/// 
/// This function must not be used before library constructors have finished
/// running. In particular, this means it cannot be used to initialize global
/// variables in C++.
@inlinable public func quarkFromStatic(string: UnsafePointer<gchar>? = nil) -> GQuark {
    let rv = g_quark_from_static_string(string)
    return rv
}




/// Gets the `GQuark` identifying the given string. If the string does
/// not currently have an associated `GQuark`, a new `GQuark` is created,
/// using a copy of the string.
/// 
/// This function must not be used before library constructors have finished
/// running. In particular, this means it cannot be used to initialize global
/// variables in C++.
@inlinable public func quarkFrom(string: UnsafePointer<gchar>? = nil) -> GQuark {
    let rv = g_quark_from_string(string)
    return rv
}




/// Gets the string associated with the given `GQuark`.
@inlinable public func quarkToString(quark: GQuark) -> String! {
    guard let rv = g_quark_to_string(quark).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Gets the `GQuark` associated with the given string, or 0 if string is
/// `nil` or it has no associated `GQuark`.
/// 
/// If you want the GQuark to be created if it doesn't already exist,
/// use `g_quark_from_string()` or `g_quark_from_static_string()`.
/// 
/// This function must not be used before library constructors have finished
/// running.
@inlinable public func quarkTry(string: UnsafePointer<gchar>? = nil) -> GQuark {
    let rv = g_quark_try_string(string)
    return rv
}




/// Returns a random `gdouble` equally distributed over the range [0..1).
@inlinable public func randomDouble() -> Double {
    let rv = Double(g_random_double())
    return rv
}




/// Returns a random `gdouble` equally distributed over the range
/// [`begin.`.`end`).
@inlinable public func randomDoubleRange(begin: Double, end: Double) -> Double {
    let rv = Double(g_random_double_range(gdouble(begin), gdouble(end)))
    return rv
}




/// Return a random `guint32` equally distributed over the range
/// [0..2^32-1].
@inlinable public func randomInt() -> guint32 {
    let rv = g_random_int()
    return rv
}




/// Returns a random `gint32` equally distributed over the range
/// [`begin.`.`end`-1].
@inlinable public func randomIntRange(begin: gint32, end: gint32) -> gint32 {
    let rv = g_random_int_range(begin, end)
    return rv
}




/// Sets the seed for the global random number generator, which is used
/// by the g_random_* functions, to `seed`.
@inlinable public func randomSet(seed: guint32) {
    g_random_set_seed(seed)

}




/// Acquires a reference on the data pointed by `mem_block`.
@inlinable public func rcBoxAcquire(memBlock: gpointer!) -> gpointer! {
    guard let rv = gpointer?(g_rc_box_acquire(memBlock)) else { return nil }
    return rv
}




/// Allocates `block_size` bytes of memory, and adds reference
/// counting semantics to it.
/// 
/// The data will be freed when its reference count drops to
/// zero.
/// 
/// The allocated data is guaranteed to be suitably aligned for any
/// built-in type.
@inlinable public func rcBoxAlloc(blockSize: Int) -> gpointer! {
    guard let rv = gpointer?(g_rc_box_alloc(gsize(blockSize))) else { return nil }
    return rv
}




/// Allocates `block_size` bytes of memory, and adds reference
/// counting semantics to it.
/// 
/// The contents of the returned data is set to zero.
/// 
/// The data will be freed when its reference count drops to
/// zero.
/// 
/// The allocated data is guaranteed to be suitably aligned for any
/// built-in type.
@inlinable public func rcBoxAlloc0(blockSize: Int) -> gpointer! {
    guard let rv = gpointer?(g_rc_box_alloc0(gsize(blockSize))) else { return nil }
    return rv
}




/// Allocates a new block of data with reference counting
/// semantics, and copies `block_size` bytes of `mem_block`
/// into it.
@inlinable public func rcBoxDup(blockSize: Int, memBlock: gconstpointer) -> gpointer! {
    guard let rv = gpointer?(g_rc_box_dup(gsize(blockSize), memBlock)) else { return nil }
    return rv
}




/// Retrieves the size of the reference counted data pointed by `mem_block`.
@inlinable public func rcBoxGetSize(memBlock: gpointer!) -> Int {
    let rv = Int(g_rc_box_get_size(memBlock))
    return rv
}




/// Releases a reference on the data pointed by `mem_block`.
/// 
/// If the reference was the last one, it will free the
/// resources allocated for `mem_block`.
@inlinable public func rcBoxRelease(memBlock: gpointer!) {
    g_rc_box_release(memBlock)

}




/// Releases a reference on the data pointed by `mem_block`.
/// 
/// If the reference was the last one, it will call `clear_func`
/// to clear the contents of `mem_block`, and then will free the
/// resources allocated for `mem_block`.
@inlinable public func rcBoxReleaseFull(memBlock: gpointer!, clearFunc: GDestroyNotify?) {
    g_rc_box_release_full(memBlock, clearFunc)

}




/// Reallocates the memory pointed to by `mem`, so that it now has space for
/// `n_bytes` bytes of memory. It returns the new address of the memory, which may
/// have been moved. `mem` may be `nil`, in which case it's considered to
/// have zero-length. `n_bytes` may be 0, in which case `nil` will be returned
/// and `mem` will be freed unless it is `nil`.
@inlinable public func realloc(mem: gpointer! = nil, nBytes: Int) -> gpointer! {
    guard let rv = g_realloc(mem, gsize(nBytes)) else { return nil }
    return rv
}




/// This function is similar to `g_realloc()`, allocating (`n_blocks` * `n_block_bytes`) bytes,
/// but care is taken to detect possible overflow during multiplication.
@inlinable public func reallocN(mem: gpointer! = nil, nBlocks: Int, nBlockBytes: Int) -> gpointer! {
    guard let rv = g_realloc_n(mem, gsize(nBlocks), gsize(nBlockBytes)) else { return nil }
    return rv
}




/// Compares the current value of `rc` with `val`.
@inlinable public func refCountCompare(rc: UnsafeMutablePointer<grefcount>!, val: Int) -> Bool {
    let rv = ((g_ref_count_compare(rc, gint(val))) != 0)
    return rv
}




/// Decreases the reference count.
@inlinable public func refCountDec(rc: UnsafeMutablePointer<grefcount>!) -> Bool {
    let rv = ((g_ref_count_dec(rc)) != 0)
    return rv
}




/// Increases the reference count.
@inlinable public func refCountInc(rc: UnsafeMutablePointer<grefcount>!) {
    g_ref_count_inc(rc)

}




/// Initializes a reference count variable.
@inlinable public func refCountInit(rc: UnsafeMutablePointer<grefcount>!) {
    g_ref_count_init(rc)

}




/// Acquires a reference on a string.
@inlinable public func refStringAcquire(str: UnsafeMutablePointer<CChar>!) -> String! {
    guard let rv = g_ref_string_acquire(str).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Retrieves the length of `str`.
@inlinable public func refStringLength(str: UnsafeMutablePointer<CChar>!) -> Int {
    let rv = Int(g_ref_string_length(str))
    return rv
}




/// Creates a new reference counted string and copies the contents of `str`
/// into it.
@inlinable public func refStringNew(str: UnsafePointer<CChar>!) -> String! {
    guard let rv = g_ref_string_new(str).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Creates a new reference counted string and copies the content of `str`
/// into it.
/// 
/// If you call this function multiple times with the same `str`, or with
/// the same contents of `str`, it will return a new reference, instead of
/// creating a new string.
@inlinable public func refStringNewIntern(str: UnsafePointer<CChar>!) -> String! {
    guard let rv = g_ref_string_new_intern(str).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Creates a new reference counted string and copies the contents of `str`
/// into it, up to `len` bytes.
/// 
/// Since this function does not stop at nul bytes, it is the caller's
/// responsibility to ensure that `str` has at least `len` addressable bytes.
@inlinable public func refStringNewLen(str: UnsafePointer<CChar>!, len: gssize) -> String! {
    guard let rv = g_ref_string_new_len(str, len).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Releases a reference on a string; if it was the last reference, the
/// resources allocated by the string are freed as well.
@inlinable public func refStringRelease(str: UnsafeMutablePointer<CChar>!) {
    g_ref_string_release(str)

}




/// Checks whether `replacement` is a valid replacement string
/// (see `g_regex_replace()`), i.e. that all escape sequences in
/// it are valid.
/// 
/// If `has_references` is not `nil` then `replacement` is checked
/// for pattern references. For instance, replacement text 'foo\n'
/// does not contain references and may be evaluated without information
/// about actual match, but '\0\1' (whole match followed by first
/// subpattern) requires valid `GMatchInfo` object.
@inlinable public func regexCheck(replacement: UnsafePointer<gchar>!, hasReferences: UnsafeMutablePointer<gboolean>! = nil) throws -> Bool {
    var error: UnsafeMutablePointer<GError>?
    let rv = ((g_regex_check_replacement(replacement, hasReferences, &error)) != 0)
    if let error = error { throw GLibError(error) }
    return rv
}




@inlinable public func regexErrorQuark() -> GQuark {
    let rv = g_regex_error_quark()
    return rv
}




/// Escapes the nul characters in `string` to "\x00".  It can be used
/// to compile a regex with embedded nul characters.
/// 
/// For completeness, `length` can be -1 for a nul-terminated string.
/// In this case the output string will be of course equal to `string`.
@inlinable public func regexEscapeNul(string: UnsafePointer<gchar>!, length: Int) -> String! {
    guard let rv = g_regex_escape_nul(string, gint(length)).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Escapes the special characters used for regular expressions
/// in `string`, for instance "a.b*c" becomes "a\.b\*c". This
/// function is useful to dynamically generate regular expressions.
/// 
/// `string` can contain nul characters that are replaced with "\0",
/// in this case remember to specify the correct length of `string`
/// in `length`.
@inlinable public func regexEscape(string: UnsafePointer<gchar>!, length: Int) -> String! {
    guard let rv = g_regex_escape_string(string, gint(length)).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Scans for a match in `string` for `pattern`.
/// 
/// This function is equivalent to `g_regex_match()` but it does not
/// require to compile the pattern with `g_regex_new()`, avoiding some
/// lines of code when you need just to do a match without extracting
/// substrings, capture counts, and so on.
/// 
/// If this function is to be called on the same `pattern` more than
/// once, it's more efficient to compile the pattern once with
/// `g_regex_new()` and then use `g_regex_match()`.
@inlinable public func regexMatchSimple(pattern: UnsafePointer<gchar>!, string: UnsafePointer<gchar>!, compileOptions: RegexCompileFlags, matchOptions: RegexMatchFlags) -> Bool {
    let rv = ((g_regex_match_simple(pattern, string, compileOptions.value, matchOptions.value)) != 0)
    return rv
}




/// Breaks the string on the pattern, and returns an array of
/// the tokens. If the pattern contains capturing parentheses,
/// then the text for each of the substrings will also be returned.
/// If the pattern does not match anywhere in the string, then the
/// whole string is returned as the first token.
/// 
/// This function is equivalent to `g_regex_split()` but it does
/// not require to compile the pattern with `g_regex_new()`, avoiding
/// some lines of code when you need just to do a split without
/// extracting substrings, capture counts, and so on.
/// 
/// If this function is to be called on the same `pattern` more than
/// once, it's more efficient to compile the pattern once with
/// `g_regex_new()` and then use `g_regex_split()`.
/// 
/// As a special case, the result of splitting the empty string ""
/// is an empty vector, not a vector containing a single string.
/// The reason for this special case is that being able to represent
/// an empty vector is typically more useful than consistent handling
/// of empty elements. If you do need to represent empty elements,
/// you'll need to check for the empty string before calling this
/// function.
/// 
/// A pattern that can match empty strings splits `string` into
/// separate characters wherever it matches the empty string between
/// characters. For example splitting "ab c" using as a separator
/// "\s*", you will get "a", "b" and "c".
@inlinable public func regexSplitSimple(pattern: UnsafePointer<gchar>!, string: UnsafePointer<gchar>!, compileOptions: RegexCompileFlags, matchOptions: RegexMatchFlags) -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
    guard let rv = g_regex_split_simple(pattern, string, compileOptions.value, matchOptions.value) else { return nil }
    return rv
}




/// Resets the cache used for `g_get_user_special_dir()`, so
/// that the latest on-disk version is used. Call this only
/// if you just changed the data on disk yourself.
/// 
/// Due to thread safety issues this may cause leaking of strings
/// that were previously returned from `g_get_user_special_dir()`
/// that can't be freed. We ensure to only leak the data for
/// the directories that actually changed value though.
@inlinable public func reloadUserSpecialDirsCache() {
    g_reload_user_special_dirs_cache()

}




/// Internal function used to print messages from the public `g_return_if_fail()`
/// and `g_return_val_if_fail()` macros.
@inlinable public func returnIfFailWarning(logDomain: UnsafePointer<CChar>? = nil, prettyFunction: UnsafePointer<CChar>!, expression: UnsafePointer<CChar>? = nil) {
    g_return_if_fail_warning(logDomain, prettyFunction, expression)

}




/// A wrapper for the POSIX `rmdir()` function. The `rmdir()` function
/// deletes a directory from the filesystem.
/// 
/// See your C library manual for more details about how `rmdir()` works
/// on your system.
@inlinable public func rmdir(filename: UnsafePointer<gchar>!) -> Int {
    let rv = Int(g_rmdir(filename))
    return rv
}




/// Returns the data that `iter` points to.
@inlinable public func sequenceGet<SequenceIterT: SequenceIterProtocol>(iter: SequenceIterT) -> gpointer! {
    guard let rv = g_sequence_get(iter._ptr) else { return nil }
    return rv
}




/// Inserts a new item just before the item pointed to by `iter`.
@inlinable public func sequenceInsertBefore<SequenceIterT: SequenceIterProtocol>(iter: SequenceIterT, data: gpointer! = nil) -> SequenceIterRef! {
    guard let rv = SequenceIterRef(gconstpointer: gconstpointer(g_sequence_insert_before(iter._ptr, data))) else { return nil }
    return rv
}




/// Moves the item pointed to by `src` to the position indicated by `dest`.
/// After calling this function `dest` will point to the position immediately
/// after `src`. It is allowed for `src` and `dest` to point into different
/// sequences.
@inlinable public func sequenceMove<SequenceIterT: SequenceIterProtocol>(src: SequenceIterT, dest: SequenceIterT) {
    g_sequence_move(src._ptr, dest._ptr)

}




/// Inserts the (`begin`, `end`) range at the destination pointed to by `dest`.
/// The `begin` and `end` iters must point into the same sequence. It is
/// allowed for `dest` to point to a different sequence than the one pointed
/// into by `begin` and `end`.
/// 
/// If `dest` is `nil`, the range indicated by `begin` and `end` is
/// removed from the sequence. If `dest` points to a place within
/// the (`begin`, `end`) range, the range does not move.
@inlinable public func sequenceMoveRange<SequenceIterT: SequenceIterProtocol>(dest: SequenceIterT, begin: SequenceIterT, end: SequenceIterT) {
    g_sequence_move_range(dest._ptr, begin._ptr, end._ptr)

}




/// Finds an iterator somewhere in the range (`begin`, `end`). This
/// iterator will be close to the middle of the range, but is not
/// guaranteed to be exactly in the middle.
/// 
/// The `begin` and `end` iterators must both point to the same sequence
/// and `begin` must come before or be equal to `end` in the sequence.
@inlinable public func sequenceRangeGetMidpoint<SequenceIterT: SequenceIterProtocol>(begin: SequenceIterT, end: SequenceIterT) -> SequenceIterRef! {
    guard let rv = SequenceIterRef(gconstpointer: gconstpointer(g_sequence_range_get_midpoint(begin._ptr, end._ptr))) else { return nil }
    return rv
}




/// Removes the item pointed to by `iter`. It is an error to pass the
/// end iterator to this function.
/// 
/// If the sequence has a data destroy function associated with it, this
/// function is called on the data for the removed item.
@inlinable public func sequenceRemove<SequenceIterT: SequenceIterProtocol>(iter: SequenceIterT) {
    g_sequence_remove(iter._ptr)

}




/// Removes all items in the (`begin`, `end`) range.
/// 
/// If the sequence has a data destroy function associated with it, this
/// function is called on the data for the removed items.
@inlinable public func sequenceRemoveRange<SequenceIterT: SequenceIterProtocol>(begin: SequenceIterT, end: SequenceIterT) {
    g_sequence_remove_range(begin._ptr, end._ptr)

}




/// Changes the data for the item pointed to by `iter` to be `data`. If
/// the sequence has a data destroy function associated with it, that
/// function is called on the existing data that `iter` pointed to.
@inlinable public func sequenceSet<SequenceIterT: SequenceIterProtocol>(iter: SequenceIterT, data: gpointer! = nil) {
    g_sequence_set(iter._ptr, data)

}




/// Swaps the items pointed to by `a` and `b`. It is allowed for `a` and `b`
/// to point into difference sequences.
@inlinable public func sequenceSwap<SequenceIterT: SequenceIterProtocol>(a: SequenceIterT, b: SequenceIterT) {
    g_sequence_swap(a._ptr, b._ptr)

}




/// Sets a human-readable name for the application. This name should be
/// localized if possible, and is intended for display to the user.
/// Contrast with `g_set_prgname()`, which sets a non-localized name.
/// `g_set_prgname()` will be called automatically by `gtk_init()`,
/// but `g_set_application_name()` will not.
/// 
/// Note that for thread safety reasons, this function can only
/// be called once.
/// 
/// The application name will be used in contexts such as error messages,
/// or when displaying an application's name in the task list.
@inlinable public func set(applicationName: UnsafePointer<gchar>!) {
    g_set_application_name(applicationName)

}





// *** setError() is not available because it has a varargs (...) parameter!





/// Does nothing if `err` is `nil`; if `err` is non-`nil`, then *`err`
/// must be `nil`. A new `GError` is created and assigned to *`err`.
/// Unlike `g_set_error()`, `message` is not a `printf()`-style format string.
/// Use this function if `message` contains text you don't have control over,
/// that could include `printf()` escape sequences.
@inlinable public func setErrorLiteral(err: UnsafeMutablePointer<UnsafeMutablePointer<GError>?>! = nil, domain: GQuark, code: Int, message: UnsafePointer<gchar>!) {
    g_set_error_literal(err, domain, gint(code), message)

}




/// Sets the name of the program. This name should not be localized,
/// in contrast to `g_set_application_name()`.
/// 
/// If you are using `GApplication` the program name is set in
/// `g_application_run()`. In case of GDK or GTK+ it is set in
/// `gdk_init()`, which is called by `gtk_init()` and the
/// `GtkApplication::startup` handler. The program name is found by
/// taking the last component of `argv`[0].
/// 
/// Note that for thread-safety reasons this function can only be called once.
@inlinable public func set(prgname: UnsafePointer<gchar>!) {
    g_set_prgname(prgname)

}




/// Sets the print handler.
/// 
/// Any messages passed to `g_print()` will be output via
/// the new handler. The default handler simply outputs
/// the message to stdout. By providing your own handler
/// you can redirect the output, to a GTK+ widget or a
/// log file for example.
@inlinable public func setPrintHandler(`func`: GPrintFunc?) -> GPrintFunc! {
    guard let rv = g_set_print_handler(`func`) else { return nil }
    return rv
}




/// Sets the handler for printing error messages.
/// 
/// Any messages passed to `g_printerr()` will be output via
/// the new handler. The default handler simply outputs the
/// message to stderr. By providing your own handler you can
/// redirect the output, to a GTK+ widget or a log file for
/// example.
@inlinable public func setPrinterrHandler(`func`: GPrintFunc?) -> GPrintFunc! {
    guard let rv = g_set_printerr_handler(`func`) else { return nil }
    return rv
}




/// Sets an environment variable. On UNIX, both the variable's name and
/// value can be arbitrary byte strings, except that the variable's name
/// cannot contain '='. On Windows, they should be in UTF-8.
/// 
/// Note that on some systems, when variables are overwritten, the memory
/// used for the previous variables and its value isn't reclaimed.
/// 
/// You should be mindful of the fact that environment variable handling
/// in UNIX is not thread-safe, and your program may crash if one thread
/// calls `g_setenv()` while another thread is calling `getenv()`. (And note
/// that many functions, such as `gettext()`, call `getenv()` internally.)
/// This function is only safe to use at the very start of your program,
/// before creating any other threads (or creating objects that create
/// worker threads of their own).
/// 
/// If you need to set up the environment for a child process, you can
/// use `g_get_environ()` to get an environment array, modify that with
/// `g_environ_setenv()` and `g_environ_unsetenv()`, and then pass that
/// array directly to `execvpe()`, `g_spawn_async()`, or the like.
@inlinable public func setenv(variable: UnsafePointer<gchar>!, value: UnsafePointer<gchar>!, overwrite: Bool) -> Bool {
    let rv = ((g_setenv(variable, value, gboolean((overwrite) ? 1 : 0))) != 0)
    return rv
}




@inlinable public func shellErrorQuark() -> GQuark {
    let rv = g_shell_error_quark()
    return rv
}




/// Parses a command line into an argument vector, in much the same way
/// the shell would, but without many of the expansions the shell would
/// perform (variable expansion, globs, operators, filename expansion,
/// etc. are not supported). The results are defined to be the same as
/// those you would get from a UNIX98 /bin/sh, as long as the input
/// contains none of the unsupported shell expansions. If the input
/// does contain such expansions, they are passed through
/// literally. Possible errors are those from the `G_SHELL_ERROR`
/// domain. Free the returned vector with `g_strfreev()`.
@inlinable public func shellParseArgv(commandLine: UnsafePointer<gchar>!, argcp: UnsafeMutablePointer<gint>! = nil, argvp: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>?>! = nil) throws -> Bool {
    var error: UnsafeMutablePointer<GError>?
    let rv = ((g_shell_parse_argv(commandLine, argcp, argvp, &error)) != 0)
    if let error = error { throw GLibError(error) }
    return rv
}




/// Quotes a string so that the shell (/bin/sh) will interpret the
/// quoted string to mean `unquoted_string`. If you pass a filename to
/// the shell, for example, you should first quote it with this
/// function.  The return value must be freed with `g_free()`. The
/// quoting style used is undefined (single or double quotes may be
/// used).
@inlinable public func shellQuote(unquotedString: UnsafePointer<gchar>!) -> String! {
    guard let rv = g_shell_quote(unquotedString).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Unquotes a string as the shell (/bin/sh) would. Only handles
/// quotes; if a string contains file globs, arithmetic operators,
/// variables, backticks, redirections, or other special-to-the-shell
/// features, the result will be different from the result a real shell
/// would produce (the variables, backticks, etc. will be passed
/// through literally instead of being expanded). This function is
/// guaranteed to succeed if applied to the result of
/// `g_shell_quote()`. If it fails, it returns `nil` and sets the
/// error. The `quoted_string` need not actually contain quoted or
/// escaped text; `g_shell_unquote()` simply goes through the string and
/// unquotes/unescapes anything that the shell would. Both single and
/// double quotes are handled, as are escapes including escaped
/// newlines. The return value must be freed with `g_free()`. Possible
/// errors are in the `G_SHELL_ERROR` domain.
/// 
/// Shell quoting rules are a bit strange. Single quotes preserve the
/// literal string exactly. escape sequences are not allowed; not even
/// \' - if you want a ' in the quoted text, you have to do something
/// like 'foo'\''bar'.  Double quotes allow $, `, ", \, and newline to
/// be escaped with backslash. Otherwise double quotes preserve things
/// literally.
@inlinable public func shellUnquote(quotedString: UnsafePointer<gchar>!) throws -> String! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = g_shell_unquote(quotedString, &error).map({ String(cString: $0) })
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}




/// Allocates a block of memory from the slice allocator.
/// The block address handed out can be expected to be aligned
/// to at least 1 * sizeof (void*),
/// though in general slices are 2 * sizeof (void*) bytes aligned,
/// if a `malloc()` fallback implementation is used instead,
/// the alignment may be reduced in a libc dependent fashion.
/// Note that the underlying slice allocation mechanism can
/// be changed with the [`G_SLICE=always-malloc`](#G_SLICE)
/// environment variable.
@inlinable public func sliceAlloc(blockSize: Int) -> gpointer! {
    guard let rv = g_slice_alloc(gsize(blockSize)) else { return nil }
    return rv
}




/// Allocates a block of memory via `g_slice_alloc()` and initializes
/// the returned memory to 0. Note that the underlying slice allocation
/// mechanism can be changed with the [`G_SLICE=always-malloc`](#G_SLICE)
/// environment variable.
@inlinable public func sliceAlloc0(blockSize: Int) -> gpointer! {
    guard let rv = g_slice_alloc0(gsize(blockSize)) else { return nil }
    return rv
}




/// Allocates a block of memory from the slice allocator
/// and copies `block_size` bytes into it from `mem_block`.
/// 
/// `mem_block` must be non-`nil` if `block_size` is non-zero.
@inlinable public func sliceCopy(blockSize: Int, memBlock: gconstpointer! = nil) -> gpointer! {
    guard let rv = g_slice_copy(gsize(blockSize), memBlock) else { return nil }
    return rv
}




/// Frees a block of memory.
/// 
/// The memory must have been allocated via `g_slice_alloc()` or
/// `g_slice_alloc0()` and the `block_size` has to match the size
/// specified upon allocation. Note that the exact release behaviour
/// can be changed with the [`G_DEBUG=gc-friendly`](#G_DEBUG) environment
/// variable, also see [`G_SLICE`](#G_SLICE) for related debugging options.
/// 
/// If `mem_block` is `nil`, this function does nothing.
@inlinable public func sliceFree1(blockSize: Int, memBlock: gpointer! = nil) {
    g_slice_free1(gsize(blockSize), memBlock)

}




/// Frees a linked list of memory blocks of structure type `type`.
/// 
/// The memory blocks must be equal-sized, allocated via
/// `g_slice_alloc()` or `g_slice_alloc0()` and linked together by a
/// `next` pointer (similar to `GSList`). The offset of the `next`
/// field in each block is passed as third argument.
/// Note that the exact release behaviour can be changed with the
/// [`G_DEBUG=gc-friendly`](#G_DEBUG) environment variable, also see
/// [`G_SLICE`](#G_SLICE) for related debugging options.
/// 
/// If `mem_chain` is `nil`, this function does nothing.
@inlinable public func sliceFreeChainWithOffset(blockSize: Int, memChain: gpointer! = nil, nextOffset: Int) {
    g_slice_free_chain_with_offset(gsize(blockSize), memChain, gsize(nextOffset))

}




@inlinable public func sliceGetConfig(ckey: GSliceConfig) -> gint64 {
    let rv = g_slice_get_config(ckey)
    return rv
}




@inlinable public func sliceGetConfigState(ckey: GSliceConfig, address: gint64, nValues: UnsafeMutablePointer<guint>!) -> UnsafeMutablePointer<gint64>! {
    guard let rv = g_slice_get_config_state(ckey, address, nValues) else { return nil }
    return rv
}




@inlinable public func sliceSetConfig(ckey: GSliceConfig, value: gint64) {
    g_slice_set_config(ckey, value)

}





// *** snprintf() is not available because it has a varargs (...) parameter!





/// Removes the source with the given ID from the default main context. You must
/// use `g_source_destroy()` for sources added to a non-default main context.
/// 
/// The ID of a `GSource` is given by `g_source_get_id()`, or will be
/// returned by the functions `g_source_attach()`, `g_idle_add()`,
/// `g_idle_add_full()`, `g_timeout_add()`, `g_timeout_add_full()`,
/// `g_child_watch_add()`, `g_child_watch_add_full()`, `g_io_add_watch()`, and
/// `g_io_add_watch_full()`.
/// 
/// It is a programmer error to attempt to remove a non-existent source.
/// 
/// More specifically: source IDs can be reissued after a source has been
/// destroyed and therefore it is never valid to use this function with a
/// source ID which may have already been removed.  An example is when
/// scheduling an idle to run in another thread with `g_idle_add()`: the
/// idle may already have run and been removed by the time this function
/// is called on its (now invalid) source ID.  This source ID may have
/// been reissued, leading to the operation being performed against the
/// wrong source.
@inlinable public func sourceRemove(tag: Int) -> Bool {
    let rv = ((g_source_remove(guint(tag))) != 0)
    return rv
}




/// Removes a source from the default main loop context given the
/// source functions and user data. If multiple sources exist with the
/// same source functions and user data, only one will be destroyed.
@inlinable public func sourceRemoveByFuncsUserData<SourceFuncsT: SourceFuncsProtocol>(funcs: SourceFuncsT, userData: gpointer! = nil) -> Bool {
    let rv = ((g_source_remove_by_funcs_user_data(funcs._ptr, userData)) != 0)
    return rv
}




/// Removes a source from the default main loop context given the user
/// data for the callback. If multiple sources exist with the same user
/// data, only one will be destroyed.
@inlinable public func sourceRemoveBy(userData: gpointer! = nil) -> Bool {
    let rv = ((g_source_remove_by_user_data(userData)) != 0)
    return rv
}




/// Sets the name of a source using its ID.
/// 
/// This is a convenience utility to set source names from the return
/// value of `g_idle_add()`, `g_timeout_add()`, etc.
/// 
/// It is a programmer error to attempt to set the name of a non-existent
/// source.
/// 
/// More specifically: source IDs can be reissued after a source has been
/// destroyed and therefore it is never valid to use this function with a
/// source ID which may have already been removed.  An example is when
/// scheduling an idle to run in another thread with `g_idle_add()`: the
/// idle may already have run and been removed by the time this function
/// is called on its (now invalid) source ID.  This source ID may have
/// been reissued, leading to the operation being performed against the
/// wrong source.
@inlinable public func sourceSetNameByID(tag: Int, name: UnsafePointer<CChar>!) {
    g_source_set_name_by_id(guint(tag), name)

}




/// Gets the smallest prime number from a built-in array of primes which
/// is larger than `num`. This is used within GLib to calculate the optimum
/// size of a `GHashTable`.
/// 
/// The built-in array of primes ranges from 11 to 13845163 such that
/// each prime is approximately 1.5-2 times the previous prime.
@inlinable public func spacedPrimesClosest(num: Int) -> Int {
    let rv = Int(g_spaced_primes_closest(guint(num)))
    return rv
}




/// See `g_spawn_async_with_pipes()` for a full description; this function
/// simply calls the `g_spawn_async_with_pipes()` without any pipes.
/// 
/// You should call `g_spawn_close_pid()` on the returned child process
/// reference when you don't need it any more.
/// 
/// If you are writing a GTK+ application, and the program you are spawning is a
/// graphical application too, then to ensure that the spawned program opens its
/// windows on the right screen, you may want to use `GdkAppLaunchContext`,
/// `GAppLaunchContext`, or set the `DISPLAY` environment variable.
/// 
/// Note that the returned `child_pid` on Windows is a handle to the child
/// process and not its identifier. Process handles and process identifiers
/// are different concepts on Windows.
@inlinable public func spawnAsync(workingDirectory: UnsafePointer<gchar>? = nil, argv: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>!, envp: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! = nil, flags: SpawnFlags, childSetup: GSpawnChildSetupFunc? = nil, userData: gpointer! = nil, childPid: UnsafeMutablePointer<GPid>! = nil) throws -> Bool {
    var error: UnsafeMutablePointer<GError>?
    let rv = ((g_spawn_async(workingDirectory, argv, envp, flags.value, childSetup, userData, childPid, &error)) != 0)
    if let error = error { throw GLibError(error) }
    return rv
}




/// IDentical to `g_spawn_async_with_pipes()` but instead of
/// creating pipes for the stdin/stdout/stderr, you can pass existing
/// file descriptors into this function through the `stdin_fd`,
/// `stdout_fd` and `stderr_fd` parameters. The following `flags`
/// also have their behaviour slightly tweaked as a result:
/// 
/// `G_SPAWN_STDOUT_TO_DEV_NULL` means that the child's standard output
/// will be discarded, instead of going to the same location as the parent's
/// standard output. If you use this flag, `standard_output` must be -1.
/// `G_SPAWN_STDERR_TO_DEV_NULL` means that the child's standard error
/// will be discarded, instead of going to the same location as the parent's
/// standard error. If you use this flag, `standard_error` must be -1.
/// `G_SPAWN_CHILD_INHERITS_STDIN` means that the child will inherit the parent's
/// standard input (by default, the child's standard input is attached to
/// /dev/null). If you use this flag, `standard_input` must be -1.
/// 
/// It is valid to pass the same fd in multiple parameters (e.g. you can pass
/// a single fd for both stdout and stderr).
@inlinable public func spawnAsyncWithFds(workingDirectory: UnsafePointer<gchar>? = nil, argv: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>!, envp: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! = nil, flags: SpawnFlags, childSetup: GSpawnChildSetupFunc? = nil, userData: gpointer! = nil, childPid: UnsafeMutablePointer<GPid>! = nil, stdinFd: Int, stdoutFd: Int, stderrFd: Int) throws -> Bool {
    var error: UnsafeMutablePointer<GError>?
    let rv = ((g_spawn_async_with_fds(workingDirectory, argv, envp, flags.value, childSetup, userData, childPid, gint(stdinFd), gint(stdoutFd), gint(stderrFd), &error)) != 0)
    if let error = error { throw GLibError(error) }
    return rv
}




/// Executes a child program asynchronously (your program will not
/// block waiting for the child to exit). The child program is
/// specified by the only argument that must be provided, `argv`.
/// `argv` should be a `nil`-terminated array of strings, to be passed
/// as the argument vector for the child. The first string in `argv`
/// is of course the name of the program to execute. By default, the
/// name of the program must be a full path. If `flags` contains the
/// `G_SPAWN_SEARCH_PATH` flag, the `PATH` environment variable is
/// used to search for the executable. If `flags` contains the
/// `G_SPAWN_SEARCH_PATH_FROM_ENVP` flag, the `PATH` variable from
/// `envp` is used to search for the executable. If both the
/// `G_SPAWN_SEARCH_PATH` and `G_SPAWN_SEARCH_PATH_FROM_ENVP` flags
/// are set, the `PATH` variable from `envp` takes precedence over
/// the environment variable.
/// 
/// If the program name is not a full path and `G_SPAWN_SEARCH_PATH` flag is not
/// used, then the program will be run from the current directory (or
/// `working_directory`, if specified); this might be unexpected or even
/// dangerous in some cases when the current directory is world-writable.
/// 
/// On Windows, note that all the string or string vector arguments to
/// this function and the other g_spawn*() functions are in UTF-8, the
/// GLib file name encoding. Unicode characters that are not part of
/// the system codepage passed in these arguments will be correctly
/// available in the spawned program only if it uses wide character API
/// to retrieve its command line. For C programs built with Microsoft's
/// tools it is enough to make the program have a `wmain()` instead of
/// `main()`. `wmain()` has a wide character argument vector as parameter.
/// 
/// At least currently, mingw doesn't support `wmain()`, so if you use
/// mingw to develop the spawned program, it should call
/// `g_win32_get_command_line()` to get arguments in UTF-8.
/// 
/// On Windows the low-level child process creation API `CreateProcess()`
/// doesn't use argument vectors, but a command line. The C runtime
/// library's spawn*() family of functions (which `g_spawn_async_with_pipes()`
/// eventually calls) paste the argument vector elements together into
/// a command line, and the C runtime startup code does a corresponding
/// reconstruction of an argument vector from the command line, to be
/// passed to `main()`. Complications arise when you have argument vector
/// elements that contain spaces or double quotes. The `spawn*()` functions
/// don't do any quoting or escaping, but on the other hand the startup
/// code does do unquoting and unescaping in order to enable receiving
/// arguments with embedded spaces or double quotes. To work around this
/// asymmetry, `g_spawn_async_with_pipes()` will do quoting and escaping on
/// argument vector elements that need it before calling the C runtime
/// `spawn()` function.
/// 
/// The returned `child_pid` on Windows is a handle to the child
/// process, not its identifier. Process handles and process
/// identifiers are different concepts on Windows.
/// 
/// `envp` is a `nil`-terminated array of strings, where each string
/// has the form `KEY=VALUE`. This will become the child's environment.
/// If `envp` is `nil`, the child inherits its parent's environment.
/// 
/// `flags` should be the bitwise OR of any flags you want to affect the
/// function's behaviour. The `G_SPAWN_DO_NOT_REAP_CHILD` means that the
/// child will not automatically be reaped; you must use a child watch
/// (`g_child_watch_add()`) to be notified about the death of the child process,
/// otherwise it will stay around as a zombie process until this process exits.
/// Eventually you must call `g_spawn_close_pid()` on the `child_pid`, in order to
/// free resources which may be associated with the child process. (On Unix,
/// using a child watch is equivalent to calling `waitpid()` or handling
/// the `SIGCHLD` signal manually. On Windows, calling `g_spawn_close_pid()`
/// is equivalent to calling `CloseHandle()` on the process handle returned
/// in `child_pid`). See `g_child_watch_add()`.
/// 
/// Open UNIX file descriptors marked as `FD_CLOEXEC` will be automatically
/// closed in the child process. `G_SPAWN_LEAVE_DESCRIPTORS_OPEN` means that
/// other open file descriptors will be inherited by the child; otherwise all
/// descriptors except stdin/stdout/stderr will be closed before calling `exec()`
/// in the child. `G_SPAWN_SEARCH_PATH` means that `argv`[0] need not be an
/// absolute path, it will be looked for in the `PATH` environment
/// variable. `G_SPAWN_SEARCH_PATH_FROM_ENVP` means need not be an
/// absolute path, it will be looked for in the `PATH` variable from
/// `envp`. If both `G_SPAWN_SEARCH_PATH` and `G_SPAWN_SEARCH_PATH_FROM_ENVP`
/// are used, the value from `envp` takes precedence over the environment.
/// `G_SPAWN_STDOUT_TO_DEV_NULL` means that the child's standard output
/// will be discarded, instead of going to the same location as the parent's
/// standard output. If you use this flag, `standard_output` must be `nil`.
/// `G_SPAWN_STDERR_TO_DEV_NULL` means that the child's standard error
/// will be discarded, instead of going to the same location as the parent's
/// standard error. If you use this flag, `standard_error` must be `nil`.
/// `G_SPAWN_CHILD_INHERITS_STDIN` means that the child will inherit the parent's
/// standard input (by default, the child's standard input is attached to
/// `/dev/null`). If you use this flag, `standard_input` must be `nil`.
/// `G_SPAWN_FILE_AND_ARGV_ZERO` means that the first element of `argv` is
/// the file to execute, while the remaining elements are the actual
/// argument vector to pass to the file. Normally `g_spawn_async_with_pipes()`
/// uses `argv`[0] as the file to execute, and passes all of `argv` to the child.
/// 
/// `child_setup` and `user_data` are a function and user data. On POSIX
/// platforms, the function is called in the child after GLib has
/// performed all the setup it plans to perform (including creating
/// pipes, closing file descriptors, etc.) but before calling `exec()`.
/// That is, `child_setup` is called just before calling `exec()` in the
/// child. Obviously actions taken in this function will only affect
/// the child, not the parent.
/// 
/// On Windows, there is no separate `fork()` and `exec()` functionality.
/// Child processes are created and run with a single API call,
/// `CreateProcess()`. There is no sensible thing `child_setup`
/// could be used for on Windows so it is ignored and not called.
/// 
/// If non-`nil`, `child_pid` will on Unix be filled with the child's
/// process ID. You can use the process ID to send signals to the child,
/// or to use `g_child_watch_add()` (or `waitpid()`) if you specified the
/// `G_SPAWN_DO_NOT_REAP_CHILD` flag. On Windows, `child_pid` will be
/// filled with a handle to the child process only if you specified the
/// `G_SPAWN_DO_NOT_REAP_CHILD` flag. You can then access the child
/// process using the Win32 API, for example wait for its termination
/// with the WaitFor*() functions, or examine its exit code with
/// `GetExitCodeProcess()`. You should close the handle with `CloseHandle()`
/// or `g_spawn_close_pid()` when you no longer need it.
/// 
/// If non-`nil`, the `standard_input`, `standard_output`, `standard_error`
/// locations will be filled with file descriptors for writing to the child's
/// standard input or reading from its standard output or standard error.
/// The caller of `g_spawn_async_with_pipes()` must close these file descriptors
/// when they are no longer in use. If these parameters are `nil`, the
/// corresponding pipe won't be created.
/// 
/// If `standard_input` is `nil`, the child's standard input is attached to
/// `/dev/null` unless `G_SPAWN_CHILD_INHERITS_STDIN` is set.
/// 
/// If `standard_error` is NULL, the child's standard error goes to the same
/// location as the parent's standard error unless `G_SPAWN_STDERR_TO_DEV_NULL`
/// is set.
/// 
/// If `standard_output` is NULL, the child's standard output goes to the same
/// location as the parent's standard output unless `G_SPAWN_STDOUT_TO_DEV_NULL`
/// is set.
/// 
/// `error` can be `nil` to ignore errors, or non-`nil` to report errors.
/// If an error is set, the function returns `false`. Errors are reported
/// even if they occur in the child (for example if the executable in
/// `argv`[0] is not found). Typically the `message` field of returned
/// errors should be displayed to users. Possible errors are those from
/// the `G_SPAWN_ERROR` domain.
/// 
/// If an error occurs, `child_pid`, `standard_input`, `standard_output`,
/// and `standard_error` will not be filled with valid values.
/// 
/// If `child_pid` is not `nil` and an error does not occur then the returned
/// process reference must be closed using `g_spawn_close_pid()`.
/// 
/// On modern UNIX platforms, GLib can use an efficient process launching
/// codepath driven internally by `posix_spawn()`. This has the advantage of
/// avoiding the fork-time performance costs of cloning the parent process
/// address space, and avoiding associated memory overcommit checks that are
/// not relevant in the context of immediately executing a distinct process.
/// This optimized codepath will be used provided that the following conditions
/// are met:
/// 
/// 1. `G_SPAWN_DO_NOT_REAP_CHILD` is set
/// 2. `G_SPAWN_LEAVE_DESCRIPTORS_OPEN` is set
/// 3. `G_SPAWN_SEARCH_PATH_FROM_ENVP` is not set
/// 4. `working_directory` is `nil`
/// 5. `child_setup` is `nil`
/// 6. The program is of a recognised binary format, or has a shebang. Otherwise, GLib will have to execute the program through the shell, which is not done using the optimized codepath.
/// 
/// If you are writing a GTK+ application, and the program you are spawning is a
/// graphical application too, then to ensure that the spawned program opens its
/// windows on the right screen, you may want to use `GdkAppLaunchContext`,
/// `GAppLaunchContext`, or set the `DISPLAY` environment variable.
@inlinable public func spawnAsyncWithPipes(workingDirectory: UnsafePointer<gchar>? = nil, argv: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>!, envp: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! = nil, flags: SpawnFlags, childSetup: GSpawnChildSetupFunc? = nil, userData: gpointer! = nil, childPid: UnsafeMutablePointer<GPid>! = nil, standardInput: UnsafeMutablePointer<gint>! = nil, standardOutput: UnsafeMutablePointer<gint>! = nil, standardError: UnsafeMutablePointer<gint>! = nil) throws -> Bool {
    var error: UnsafeMutablePointer<GError>?
    let rv = ((g_spawn_async_with_pipes(workingDirectory, argv, envp, flags.value, childSetup, userData, childPid, standardInput, standardOutput, standardError, &error)) != 0)
    if let error = error { throw GLibError(error) }
    return rv
}




/// Set `error` if `exit_status` indicates the child exited abnormally
/// (e.g. with a nonzero exit code, or via a fatal signal).
/// 
/// The `g_spawn_sync()` and `g_child_watch_add()` family of APIs return an
/// exit status for subprocesses encoded in a platform-specific way.
/// On Unix, this is guaranteed to be in the same format `waitpid()` returns,
/// and on Windows it is guaranteed to be the result of `GetExitCodeProcess()`.
/// 
/// Prior to the introduction of this function in GLib 2.34, interpreting
/// `exit_status` required use of platform-specific APIs, which is problematic
/// for software using GLib as a cross-platform layer.
/// 
/// Additionally, many programs simply want to determine whether or not
/// the child exited successfully, and either propagate a `GError` or
/// print a message to standard error. In that common case, this function
/// can be used. Note that the error message in `error` will contain
/// human-readable information about the exit status.
/// 
/// The `domain` and `code` of `error` have special semantics in the case
/// where the process has an "exit code", as opposed to being killed by
/// a signal. On Unix, this happens if `WIFEXITED()` would be true of
/// `exit_status`. On Windows, it is always the case.
/// 
/// The special semantics are that the actual exit code will be the
/// code set in `error`, and the domain will be `G_SPAWN_EXIT_ERROR`.
/// This allows you to differentiate between different exit codes.
/// 
/// If the process was terminated by some means other than an exit
/// status, the domain will be `G_SPAWN_ERROR`, and the code will be
/// `G_SPAWN_ERROR_FAILED`.
/// 
/// This function just offers convenience; you can of course also check
/// the available platform via a macro such as `G_OS_UNIX`, and use
/// `WIFEXITED()` and `WEXITSTATUS()` on `exit_status` directly. Do not attempt
/// to scan or parse the error message string; it may be translated and/or
/// change in future versions of GLib.
@inlinable public func spawnCheck(exitStatus: Int) throws -> Bool {
    var error: UnsafeMutablePointer<GError>?
    let rv = ((g_spawn_check_exit_status(gint(exitStatus), &error)) != 0)
    if let error = error { throw GLibError(error) }
    return rv
}




/// On some platforms, notably Windows, the `GPid` type represents a resource
/// which must be closed to prevent resource leaking. `g_spawn_close_pid()`
/// is provided for this purpose. It should be used on all platforms, even
/// though it doesn't do anything under UNIX.
@inlinable public func spawnClose(pid: GPid) {
    g_spawn_close_pid(pid)

}




/// A simple version of `g_spawn_async()` that parses a command line with
/// `g_shell_parse_argv()` and passes it to `g_spawn_async()`. Runs a
/// command line in the background. Unlike `g_spawn_async()`, the
/// `G_SPAWN_SEARCH_PATH` flag is enabled, other flags are not. Note
/// that `G_SPAWN_SEARCH_PATH` can have security implications, so
/// consider using `g_spawn_async()` directly if appropriate. Possible
/// errors are those from `g_shell_parse_argv()` and `g_spawn_async()`.
/// 
/// The same concerns on Windows apply as for `g_spawn_command_line_sync()`.
@inlinable public func spawnCommandLineAsync(commandLine: UnsafePointer<gchar>!) throws -> Bool {
    var error: UnsafeMutablePointer<GError>?
    let rv = ((g_spawn_command_line_async(commandLine, &error)) != 0)
    if let error = error { throw GLibError(error) }
    return rv
}




/// A simple version of `g_spawn_sync()` with little-used parameters
/// removed, taking a command line instead of an argument vector.  See
/// `g_spawn_sync()` for full details. `command_line` will be parsed by
/// `g_shell_parse_argv()`. Unlike `g_spawn_sync()`, the `G_SPAWN_SEARCH_PATH` flag
/// is enabled. Note that `G_SPAWN_SEARCH_PATH` can have security
/// implications, so consider using `g_spawn_sync()` directly if
/// appropriate. Possible errors are those from `g_spawn_sync()` and those
/// from `g_shell_parse_argv()`.
/// 
/// If `exit_status` is non-`nil`, the platform-specific exit status of
/// the child is stored there; see the documentation of
/// `g_spawn_check_exit_status()` for how to use and interpret this.
/// 
/// On Windows, please note the implications of `g_shell_parse_argv()`
/// parsing `command_line`. Parsing is done according to Unix shell rules, not
/// Windows command interpreter rules.
/// Space is a separator, and backslashes are
/// special. Thus you cannot simply pass a `command_line` containing
/// canonical Windows paths, like "c:\\program files\\app\\app.exe", as
/// the backslashes will be eaten, and the space will act as a
/// separator. You need to enclose such paths with single quotes, like
/// "'c:\\program files\\app\\app.exe' 'e:\\folder\\argument.txt'".
@inlinable public func spawnCommandLineSync(commandLine: UnsafePointer<gchar>!, standardOutput: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! = nil, standardError: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! = nil, exitStatus: UnsafeMutablePointer<gint>! = nil) throws -> Bool {
    var error: UnsafeMutablePointer<GError>?
    let rv = ((g_spawn_command_line_sync(commandLine, standardOutput, standardError, exitStatus, &error)) != 0)
    if let error = error { throw GLibError(error) }
    return rv
}




@inlinable public func spawnErrorQuark() -> GQuark {
    let rv = g_spawn_error_quark()
    return rv
}




@inlinable public func spawnExitErrorQuark() -> GQuark {
    let rv = g_spawn_exit_error_quark()
    return rv
}




/// Executes a child synchronously (waits for the child to exit before returning).
/// All output from the child is stored in `standard_output` and `standard_error`,
/// if those parameters are non-`nil`. Note that you must set the
/// `G_SPAWN_STDOUT_TO_DEV_NULL` and `G_SPAWN_STDERR_TO_DEV_NULL` flags when
/// passing `nil` for `standard_output` and `standard_error`.
/// 
/// If `exit_status` is non-`nil`, the platform-specific exit status of
/// the child is stored there; see the documentation of
/// `g_spawn_check_exit_status()` for how to use and interpret this.
/// Note that it is invalid to pass `G_SPAWN_DO_NOT_REAP_CHILD` in
/// `flags`, and on POSIX platforms, the same restrictions as for
/// `g_child_watch_source_new()` apply.
/// 
/// If an error occurs, no data is returned in `standard_output`,
/// `standard_error`, or `exit_status`.
/// 
/// This function calls `g_spawn_async_with_pipes()` internally; see that
/// function for full details on the other parameters and details on
/// how these functions work on Windows.
@inlinable public func spawnSync(workingDirectory: UnsafePointer<gchar>? = nil, argv: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>!, envp: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! = nil, flags: SpawnFlags, childSetup: GSpawnChildSetupFunc? = nil, userData: gpointer! = nil, standardOutput: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! = nil, standardError: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! = nil, exitStatus: UnsafeMutablePointer<gint>! = nil) throws -> Bool {
    var error: UnsafeMutablePointer<GError>?
    let rv = ((g_spawn_sync(workingDirectory, argv, envp, flags.value, childSetup, userData, standardOutput, standardError, exitStatus, &error)) != 0)
    if let error = error { throw GLibError(error) }
    return rv
}





// *** sprintf() is not available because it has a varargs (...) parameter!





/// Copies a nul-terminated string into the dest buffer, include the
/// trailing nul, and return a pointer to the trailing nul byte.
/// This is useful for concatenating multiple strings together
/// without having to repeatedly scan for the end.
@inlinable public func stpcpy(dest: UnsafeMutablePointer<gchar>!, src: UnsafePointer<CChar>!) -> String! {
    guard let rv = g_stpcpy(dest, src).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Compares two strings for byte-by-byte equality and returns `true`
/// if they are equal. It can be passed to `g_hash_table_new()` as the
/// `key_equal_func` parameter, when using non-`nil` strings as keys in a
/// `GHashTable`.
/// 
/// This function is typically used for hash table comparisons, but can be used
/// for general purpose comparisons of non-`nil` strings. For a `nil`-safe string
/// comparison function, see `g_strcmp0()`.
@inlinable public func strEqual(v1: gconstpointer, v2: gconstpointer) -> Bool {
    let rv = ((g_str_equal(v1, v2)) != 0)
    return rv
}




/// Looks whether the string `str` begins with `prefix`.
@inlinable public func strHasPrefix(str: UnsafePointer<gchar>!, `prefix`: UnsafePointer<gchar>!) -> Bool {
    let rv = ((g_str_has_prefix(str, `prefix`)) != 0)
    return rv
}




/// Looks whether the string `str` ends with `suffix`.
@inlinable public func strHasSuffix(str: UnsafePointer<gchar>!, suffix: UnsafePointer<gchar>!) -> Bool {
    let rv = ((g_str_has_suffix(str, suffix)) != 0)
    return rv
}




/// Converts a string to a hash value.
/// 
/// This function implements the widely used "djb" hash apparently
/// posted by Daniel Bernstein to comp.lang.c some time ago.  The 32
/// bit unsigned hash value starts at 5381 and for each byte 'c' in
/// the string, is updated: `hash = hash * 33 + c`. This function
/// uses the signed value of each byte.
/// 
/// It can be passed to `g_hash_table_new()` as the `hash_func` parameter,
/// when using non-`nil` strings as keys in a `GHashTable`.
/// 
/// Note that this function may not be a perfect fit for all use cases.
/// For example, it produces some hash collisions with strings as short
/// as 2.
@inlinable public func strHash(v: gconstpointer) -> Int {
    let rv = Int(g_str_hash(v))
    return rv
}




/// Determines if a string is pure ASCII. A string is pure ASCII if it
/// contains no bytes with the high bit set.
@inlinable public func strIsAscii(str: UnsafePointer<gchar>!) -> Bool {
    let rv = ((g_str_is_ascii(str)) != 0)
    return rv
}




/// Checks if a search conducted for `search_term` should match
/// `potential_hit`.
/// 
/// This function calls `g_str_tokenize_and_fold()` on both
/// `search_term` and `potential_hit`.  ASCII alternates are never taken
/// for `search_term` but will be taken for `potential_hit` according to
/// the value of `accept_alternates`.
/// 
/// A hit occurs when each folded token in `search_term` is a prefix of a
/// folded token from `potential_hit`.
/// 
/// Depending on how you're performing the search, it will typically be
/// faster to call `g_str_tokenize_and_fold()` on each string in
/// your corpus and build an index on the returned folded tokens, then
/// call `g_str_tokenize_and_fold()` on the search term and
/// perform lookups into that index.
/// 
/// As some examples, searching for ‘fred’ would match the potential hit
/// ‘Smith, Fred’ and also ‘Frédéric’.  Searching for ‘Fréd’ would match
/// ‘Frédéric’ but not ‘Frederic’ (due to the one-directional nature of
/// accent matching).  Searching ‘fo’ would match ‘Foo’ and ‘Bar Foo
/// Baz’, but not ‘SFO’ (because no word has ‘fo’ as a prefix).
@inlinable public func strMatchString(searchTerm: UnsafePointer<gchar>!, potentialHit: UnsafePointer<gchar>!, acceptAlternates: Bool) -> Bool {
    let rv = ((g_str_match_string(searchTerm, potentialHit, gboolean((acceptAlternates) ? 1 : 0))) != 0)
    return rv
}




/// Transliterate `str` to plain ASCII.
/// 
/// For best results, `str` should be in composed normalised form.
/// 
/// This function performs a reasonably good set of character
/// replacements.  The particular set of replacements that is done may
/// change by version or even by runtime environment.
/// 
/// If the source language of `str` is known, it can used to improve the
/// accuracy of the translation by passing it as `from_locale`.  It should
/// be a valid POSIX locale string (of the form
/// `language[_territory][.codeset][`modifier`]`).
/// 
/// If `from_locale` is `nil` then the current locale is used.
/// 
/// If you want to do translation for no specific locale, and you want it
/// to be done independently of the currently locale, specify `"C"` for
/// `from_locale`.
@inlinable public func strToAscii(str: UnsafePointer<gchar>!, from locale: UnsafePointer<gchar>? = nil) -> String! {
    guard let rv = g_str_to_ascii(str, locale).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Tokenises `string` and performs folding on each token.
/// 
/// A token is a non-empty sequence of alphanumeric characters in the
/// source string, separated by non-alphanumeric characters.  An
/// "alphanumeric" character for this purpose is one that matches
/// `g_unichar_isalnum()` or `g_unichar_ismark()`.
/// 
/// Each token is then (Unicode) normalised and case-folded.  If
/// `ascii_alternates` is non-`nil` and some of the returned tokens
/// contain non-ASCII characters, ASCII alternatives will be generated.
/// 
/// The number of ASCII alternatives that are generated and the method
/// for doing so is unspecified, but `translit_locale` (if specified) may
/// improve the transliteration if the language of the source string is
/// known.
@inlinable public func strTokenizeAndFold(string: UnsafePointer<gchar>!, translitLocale: UnsafePointer<gchar>? = nil, asciiAlternates: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>?>!) -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
    guard let rv = g_str_tokenize_and_fold(string, translitLocale, asciiAlternates) else { return nil }
    return rv
}




/// For each character in `string`, if the character is not in `valid_chars`,
/// replaces the character with `substitutor`. Modifies `string` in place,
/// and return `string` itself, not a copy. The return value is to allow
/// nesting such as
/// (C Language Example):
/// ```C
///   g_ascii_strup (g_strcanon (str, "abc", '?'))
/// ```
/// 
/// In order to modify a copy, you may use ``g_strdup()``:
/// (C Language Example):
/// ```C
///   reformatted = g_strcanon (g_strdup (const_str), "abc", '?');
///   ...
///   g_free (reformatted);
/// ```
/// 
@inlinable public func strcanon(string: UnsafeMutablePointer<gchar>!, validChars: UnsafePointer<gchar>!, substitutor: gchar) -> String! {
    guard let rv = g_strcanon(string, validChars, substitutor).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// A case-insensitive string comparison, corresponding to the standard
/// `strcasecmp()` function on platforms which support it.
///
/// **strcasecmp is deprecated:**
/// See g_strncasecmp() for a discussion of why this
///     function is deprecated and how to replace it.
@available(*, deprecated) @inlinable public func strcasecmp(s1: UnsafePointer<gchar>!, s2: UnsafePointer<gchar>!) -> Int {
    let rv = Int(g_strcasecmp(s1, s2))
    return rv
}




/// Removes trailing whitespace from a string.
/// 
/// This function doesn't allocate or reallocate any memory;
/// it modifies `string` in place. Therefore, it cannot be used
/// on statically allocated strings.
/// 
/// The pointer to `string` is returned to allow the nesting of functions.
/// 
/// Also see `g_strchug()` and `g_strstrip()`.
@inlinable public func strchomp(string: UnsafeMutablePointer<gchar>!) -> String! {
    guard let rv = g_strchomp(string).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Removes leading whitespace from a string, by moving the rest
/// of the characters forward.
/// 
/// This function doesn't allocate or reallocate any memory;
/// it modifies `string` in place. Therefore, it cannot be used on
/// statically allocated strings.
/// 
/// The pointer to `string` is returned to allow the nesting of functions.
/// 
/// Also see `g_strchomp()` and `g_strstrip()`.
@inlinable public func strchug(string: UnsafeMutablePointer<gchar>!) -> String! {
    guard let rv = g_strchug(string).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Compares `str1` and `str2` like `strcmp()`. Handles `nil`
/// gracefully by sorting it before non-`nil` strings.
/// Comparing two `nil` pointers returns 0.
@inlinable public func strcmp0(str1: UnsafePointer<CChar>? = nil, str2: UnsafePointer<CChar>? = nil) -> Int {
    let rv = Int(g_strcmp0(str1, str2))
    return rv
}




/// Replaces all escaped characters with their one byte equivalent.
/// 
/// This function does the reverse conversion of `g_strescape()`.
@inlinable public func strcompress(source: UnsafePointer<gchar>!) -> String! {
    guard let rv = g_strcompress(source).map({ String(cString: $0) }) else { return nil }
    return rv
}





// *** strconcat() is not available because it has a varargs (...) parameter!





/// Converts any delimiter characters in `string` to `new_delimiter`.
/// Any characters in `string` which are found in `delimiters` are
/// changed to the `new_delimiter` character. Modifies `string` in place,
/// and returns `string` itself, not a copy. The return value is to
/// allow nesting such as
/// (C Language Example):
/// ```C
///   g_ascii_strup (g_strdelimit (str, "abc", '?'))
/// ```
/// 
/// In order to modify a copy, you may use ``g_strdup()``:
/// (C Language Example):
/// ```C
///   reformatted = g_strdelimit (g_strdup (const_str), "abc", '?');
///   ...
///   g_free (reformatted);
/// ```
/// 
@inlinable public func strdelimit(string: UnsafeMutablePointer<gchar>!, delimiters: UnsafePointer<gchar>? = nil, newDelimiter: gchar) -> String! {
    guard let rv = g_strdelimit(string, delimiters, newDelimiter).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Converts a string to lower case.
///
/// **strdown is deprecated:**
/// This function is totally broken for the reasons discussed
/// in the g_strncasecmp() docs - use g_ascii_strdown() or g_utf8_strdown()
/// instead.
@available(*, deprecated) @inlinable public func strdown(string: UnsafeMutablePointer<gchar>!) -> String! {
    guard let rv = g_strdown(string).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Duplicates a string. If `str` is `nil` it returns `nil`.
/// The returned string should be freed with `g_free()`
/// when no longer needed.
@inlinable public func strdup(str: UnsafePointer<gchar>? = nil) -> String! {
    guard let rv = g_strdup(str).map({ String(cString: $0) }) else { return nil }
    return rv
}





// *** strdupPrintf() is not available because it has a varargs (...) parameter!





/// Similar to the standard C `vsprintf()` function but safer, since it
/// calculates the maximum space required and allocates memory to hold
/// the result. The returned string should be freed with `g_free()` when
/// no longer needed.
/// 
/// The returned string is guaranteed to be non-NULL, unless `format`
/// contains ``lc`` or ``ls`` conversions, which can fail if no multibyte
/// representation is available for the given character.
/// 
/// See also `g_vasprintf()`, which offers the same functionality, but
/// additionally returns the length of the allocated string.
@inlinable public func strdupVprintf(format: UnsafePointer<gchar>!, args: CVaListPointer) -> String! {
    guard let rv = g_strdup_vprintf(format, args).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Copies `nil`-terminated array of strings. The copy is a deep copy;
/// the new array should be freed by first freeing each string, then
/// the array itself. `g_strfreev()` does this for you. If called
/// on a `nil` value, `g_strdupv()` simply returns `nil`.
@inlinable public func strdupv(strArray: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>? = nil) -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
    guard let rv = g_strdupv(strArray) else { return nil }
    return rv
}




/// Returns a string corresponding to the given error code, e.g. "no
/// such process". Unlike `strerror()`, this always returns a string in
/// UTF-8 encoding, and the pointer is guaranteed to remain valid for
/// the lifetime of the process.
/// 
/// Note that the string may be translated according to the current locale.
/// 
/// The value of `errno` will not be changed by this function. However, it may
/// be changed by intermediate function calls, so you should save its value
/// as soon as the call returns:
/// ```
///   int saved_errno;
/// 
///   ret = read (blah);
///   saved_errno = errno;
/// 
///   g_strerror (saved_errno);
/// ```
/// 
@inlinable public func strerror(errnum: Int) -> String! {
    guard let rv = g_strerror(gint(errnum)).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Escapes the special characters '\b', '\f', '\n', '\r', '\t', '\v', '\'
/// and '"' in the string `source` by inserting a '\' before
/// them. Additionally all characters in the range 0x01-0x1F (everything
/// below SPACE) and in the range 0x7F-0xFF (all non-ASCII chars) are
/// replaced with a '\' followed by their octal representation.
/// Characters supplied in `exceptions` are not escaped.
/// 
/// `g_strcompress()` does the reverse conversion.
@inlinable public func strescape(source: UnsafePointer<gchar>!, exceptions: UnsafePointer<gchar>? = nil) -> String! {
    guard let rv = g_strescape(source, exceptions).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Frees a `nil`-terminated array of strings, as well as each
/// string it contains.
/// 
/// If `str_array` is `nil`, this function simply returns.
@inlinable public func strfreev(strArray: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>? = nil) {
    g_strfreev(strArray)

}




/// Creates a new `GString`, initialized with the given string.
@inlinable public func stringNew(`init`: UnsafePointer<gchar>? = nil) -> StringRef! {
    guard let rv = StringRef(gconstpointer: gconstpointer(g_string_new(`init`))) else { return nil }
    return rv
}




/// Creates a new `GString` with `len` bytes of the `init` buffer.
/// Because a length is provided, `init` need not be nul-terminated,
/// and can contain embedded nul bytes.
/// 
/// Since this function does not stop at nul bytes, it is the caller's
/// responsibility to ensure that `init` has at least `len` addressable
/// bytes.
@inlinable public func stringNewLen(`init`: UnsafePointer<gchar>!, len: gssize) -> StringRef! {
    guard let rv = StringRef(gconstpointer: gconstpointer(g_string_new_len(`init`, len))) else { return nil }
    return rv
}




/// Creates a new `GString`, with enough space for `dfl_size`
/// bytes. This is useful if you are going to add a lot of
/// text to the string and don't want it to be reallocated
/// too often.
@inlinable public func stringSizedNew(dflSize: Int) -> StringRef! {
    guard let rv = StringRef(gconstpointer: gconstpointer(g_string_sized_new(gsize(dflSize)))) else { return nil }
    return rv
}




/// An auxiliary function for `gettext()` support (see `Q_()`).
@inlinable public func stripContext(msgid: UnsafePointer<gchar>!, msgval: UnsafePointer<gchar>!) -> String! {
    guard let rv = g_strip_context(msgid, msgval).map({ String(cString: $0) }) else { return nil }
    return rv
}





// *** strjoin() is not available because it has a varargs (...) parameter!





/// Joins a number of strings together to form one long string, with the
/// optional `separator` inserted between each of them. The returned string
/// should be freed with `g_free()`.
/// 
/// If `str_array` has no items, the return value will be an
/// empty string. If `str_array` contains a single item, `separator` will not
/// appear in the resulting string.
@inlinable public func strjoinv(separator: UnsafePointer<gchar>? = nil, strArray: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>!) -> String! {
    guard let rv = g_strjoinv(separator, strArray).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Portability wrapper that calls `strlcat()` on systems which have it,
/// and emulates it otherwise. Appends nul-terminated `src` string to `dest`,
/// guaranteeing nul-termination for `dest`. The total size of `dest` won't
/// exceed `dest_size`.
/// 
/// At most `dest_size` - 1 characters will be copied. Unlike `strncat()`,
/// `dest_size` is the full size of dest, not the space left over. This
/// function does not allocate memory. It always nul-terminates (unless
/// `dest_size` == 0 or there were no nul characters in the `dest_size`
/// characters of dest to start with).
/// 
/// Caveat: this is supposedly a more secure alternative to `strcat()` or
/// `strncat()`, but for real security `g_strconcat()` is harder to mess up.
@inlinable public func strlcat(dest: UnsafeMutablePointer<gchar>!, src: UnsafePointer<gchar>!, destSize: Int) -> Int {
    let rv = Int(g_strlcat(dest, src, gsize(destSize)))
    return rv
}




/// Portability wrapper that calls `strlcpy()` on systems which have it,
/// and emulates `strlcpy()` otherwise. Copies `src` to `dest`; `dest` is
/// guaranteed to be nul-terminated; `src` must be nul-terminated;
/// `dest_size` is the buffer size, not the number of bytes to copy.
/// 
/// At most `dest_size` - 1 characters will be copied. Always nul-terminates
/// (unless `dest_size` is 0). This function does not allocate memory. Unlike
/// `strncpy()`, this function doesn't pad `dest` (so it's often faster). It
/// returns the size of the attempted result, strlen (src), so if
/// `retval` >= `dest_size`, truncation occurred.
/// 
/// Caveat: `strlcpy()` is supposedly more secure than `strcpy()` or `strncpy()`,
/// but if you really want to avoid screwups, `g_strdup()` is an even better
/// idea.
@inlinable public func strlcpy(dest: UnsafeMutablePointer<gchar>!, src: UnsafePointer<gchar>!, destSize: Int) -> Int {
    let rv = Int(g_strlcpy(dest, src, gsize(destSize)))
    return rv
}




/// A case-insensitive string comparison, corresponding to the standard
/// `strncasecmp()` function on platforms which support it. It is similar
/// to `g_strcasecmp()` except it only compares the first `n` characters of
/// the strings.
///
/// **strncasecmp is deprecated:**
/// The problem with g_strncasecmp() is that it does
///     the comparison by calling toupper()/tolower(). These functions
///     are locale-specific and operate on single bytes. However, it is
///     impossible to handle things correctly from an internationalization
///     standpoint by operating on bytes, since characters may be multibyte.
///     Thus g_strncasecmp() is broken if your string is guaranteed to be
///     ASCII, since it is locale-sensitive, and it's broken if your string
///     is localized, since it doesn't work on many encodings at all,
///     including UTF-8, EUC-JP, etc.
/// 
///     There are therefore two replacement techniques: g_ascii_strncasecmp(),
///     which only works on ASCII and is not locale-sensitive, and
///     g_utf8_casefold() followed by strcmp() on the resulting strings,
///     which is good for case-insensitive sorting of UTF-8.
@available(*, deprecated) @inlinable public func strncasecmp(s1: UnsafePointer<gchar>!, s2: UnsafePointer<gchar>!, n: Int) -> Int {
    let rv = Int(g_strncasecmp(s1, s2, guint(n)))
    return rv
}




/// Duplicates the first `n` bytes of a string, returning a newly-allocated
/// buffer `n` + 1 bytes long which will always be nul-terminated. If `str`
/// is less than `n` bytes long the buffer is padded with nuls. If `str` is
/// `nil` it returns `nil`. The returned value should be freed when no longer
/// needed.
/// 
/// To copy a number of characters from a UTF-8 encoded string,
/// use `g_utf8_strncpy()` instead.
@inlinable public func strndup(str: UnsafePointer<gchar>!, n: Int) -> String! {
    guard let rv = g_strndup(str, gsize(n)).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Creates a new string `length` bytes long filled with `fill_char`.
/// The returned string should be freed when no longer needed.
@inlinable public func strnfill(length: Int, fillChar: gchar) -> String! {
    guard let rv = g_strnfill(gsize(length), fillChar).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Reverses all of the bytes in a string. For example,
/// `g_strreverse ("abcdef")` will result in "fedcba".
/// 
/// Note that `g_strreverse()` doesn't work on UTF-8 strings
/// containing multibyte characters. For that purpose, use
/// `g_utf8_strreverse()`.
@inlinable public func strreverse(string: UnsafeMutablePointer<gchar>!) -> String! {
    guard let rv = g_strreverse(string).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Searches the string `haystack` for the last occurrence
/// of the string `needle`.
@inlinable public func strrstr(haystack: UnsafePointer<gchar>!, needle: UnsafePointer<gchar>!) -> String! {
    guard let rv = g_strrstr(haystack, needle).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Searches the string `haystack` for the last occurrence
/// of the string `needle`, limiting the length of the search
/// to `haystack_len`.
@inlinable public func strrstrLen(haystack: UnsafePointer<gchar>!, haystackLen: gssize, needle: UnsafePointer<gchar>!) -> String! {
    guard let rv = g_strrstr_len(haystack, haystackLen, needle).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Returns a string describing the given signal, e.g. "Segmentation fault".
/// You should use this function in preference to `strsignal()`, because it
/// returns a string in UTF-8 encoding, and since not all platforms support
/// the `strsignal()` function.
@inlinable public func strsignal(signum: Int) -> String! {
    guard let rv = g_strsignal(gint(signum)).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Splits a string into a maximum of `max_tokens` pieces, using the given
/// `delimiter`. If `max_tokens` is reached, the remainder of `string` is
/// appended to the last token.
/// 
/// As an example, the result of g_strsplit (":a:bc`d:`", ":", -1) is a
/// `nil`-terminated vector containing the six strings "", "a", "bc", "", "d"
/// and "".
/// 
/// As a special case, the result of splitting the empty string "" is an empty
/// vector, not a vector containing a single string. The reason for this
/// special case is that being able to represent an empty vector is typically
/// more useful than consistent handling of empty elements. If you do need
/// to represent empty elements, you'll need to check for the empty string
/// before calling `g_strsplit()`.
@inlinable public func strsplit(string: UnsafePointer<gchar>!, delimiter: UnsafePointer<gchar>!, maxTokens: Int) -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
    guard let rv = g_strsplit(string, delimiter, gint(maxTokens)) else { return nil }
    return rv
}




/// Splits `string` into a number of tokens not containing any of the characters
/// in `delimiter`. A token is the (possibly empty) longest string that does not
/// contain any of the characters in `delimiters`. If `max_tokens` is reached, the
/// remainder is appended to the last token.
/// 
/// For example the result of g_strsplit_set ("abc:def/ghi", ":/", -1) is a
/// `nil`-terminated vector containing the three strings "abc", "def",
/// and "ghi".
/// 
/// The result of g_strsplit_set (":def/ghi:", ":/", -1) is a `nil`-terminated
/// vector containing the four strings "", "def", "ghi", and "".
/// 
/// As a special case, the result of splitting the empty string "" is an empty
/// vector, not a vector containing a single string. The reason for this
/// special case is that being able to represent an empty vector is typically
/// more useful than consistent handling of empty elements. If you do need
/// to represent empty elements, you'll need to check for the empty string
/// before calling `g_strsplit_set()`.
/// 
/// Note that this function works on bytes not characters, so it can't be used
/// to delimit UTF-8 strings for anything but ASCII characters.
@inlinable public func strsplitSet(string: UnsafePointer<gchar>!, delimiters: UnsafePointer<gchar>!, maxTokens: Int) -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
    guard let rv = g_strsplit_set(string, delimiters, gint(maxTokens)) else { return nil }
    return rv
}




/// Searches the string `haystack` for the first occurrence
/// of the string `needle`, limiting the length of the search
/// to `haystack_len`.
@inlinable public func strstrLen(haystack: UnsafePointer<gchar>!, haystackLen: gssize, needle: UnsafePointer<gchar>!) -> String! {
    guard let rv = g_strstr_len(haystack, haystackLen, needle).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Converts a string to a `gdouble` value.
/// It calls the standard `strtod()` function to handle the conversion, but
/// if the string is not completely converted it attempts the conversion
/// again with `g_ascii_strtod()`, and returns the best match.
/// 
/// This function should seldom be used. The normal situation when reading
/// numbers not for human consumption is to use `g_ascii_strtod()`. Only when
/// you know that you must expect both locale formatted and C formatted numbers
/// should you use this. Make sure that you don't pass strings such as comma
/// separated lists of values, since the commas may be interpreted as a decimal
/// point in some locales, causing unexpected results.
@inlinable public func strtod(nptr: UnsafePointer<gchar>!, endptr: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! = nil) -> Double {
    let rv = Double(g_strtod(nptr, endptr))
    return rv
}




/// Converts a string to upper case.
///
/// **strup is deprecated:**
/// This function is totally broken for the reasons
///     discussed in the g_strncasecmp() docs - use g_ascii_strup()
///     or g_utf8_strup() instead.
@available(*, deprecated) @inlinable public func strup(string: UnsafeMutablePointer<gchar>!) -> String! {
    guard let rv = g_strup(string).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Checks if `strv` contains `str`. `strv` must not be `nil`.
@inlinable public func strvContains(strv: UnsafePointer<UnsafePointer<gchar>?>!, str: UnsafePointer<gchar>!) -> Bool {
    let rv = ((g_strv_contains(strv, str)) != 0)
    return rv
}




/// Checks if `strv1` and `strv2` contain exactly the same elements in exactly the
/// same order. Elements are compared using `g_str_equal()`. To match independently
/// of order, sort the arrays first (using `g_qsort_with_data()` or similar).
/// 
/// Two empty arrays are considered equal. Neither `strv1` not `strv2` may be
/// `nil`.
@inlinable public func strvEqual(strv1: UnsafePointer<UnsafePointer<gchar>?>!, strv2: UnsafePointer<UnsafePointer<gchar>?>!) -> Bool {
    let rv = ((g_strv_equal(strv1, strv2)) != 0)
    return rv
}




@inlinable public func strvGetType() -> GType {
    let rv = g_strv_get_type()
    return rv
}




/// Returns the length of the given `nil`-terminated
/// string array `str_array`. `str_array` must not be `nil`.
@inlinable public func strvLength(strArray: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>!) -> Int {
    let rv = Int(g_strv_length(strArray))
    return rv
}




/// Create a new test case, similar to `g_test_create_case()`. However
/// the test is assumed to use no fixture, and test suites are automatically
/// created on the fly and added to the root fixture, based on the
/// slash-separated portions of `testpath`. The `test_data` argument
/// will be passed as first argument to `test_func`.
/// 
/// If `testpath` includes the component "subprocess" anywhere in it,
/// the test will be skipped by default, and only run if explicitly
/// required via the `-p` command-line option or `g_test_trap_subprocess()`.
/// 
/// No component of `testpath` may start with a dot (`.`) if the
/// `G_TEST_OPTION_ISOLATE_DIRS` option is being used; and it is recommended to
/// do so even if it isn’t.
@inlinable public func testAddDataFunc(testpath: UnsafePointer<CChar>!, testData: gconstpointer! = nil, testFunc: GTestDataFunc?) {
    g_test_add_data_func(testpath, testData, testFunc)

}




/// Create a new test case, as with `g_test_add_data_func()`, but freeing
/// `test_data` after the test run is complete.
@inlinable public func testAddDataFuncFull(testpath: UnsafePointer<CChar>!, testData: gpointer! = nil, testFunc: GTestDataFunc?, dataFreeFunc: GDestroyNotify?) {
    g_test_add_data_func_full(testpath, testData, testFunc, dataFreeFunc)

}




/// Create a new test case, similar to `g_test_create_case()`. However
/// the test is assumed to use no fixture, and test suites are automatically
/// created on the fly and added to the root fixture, based on the
/// slash-separated portions of `testpath`.
/// 
/// If `testpath` includes the component "subprocess" anywhere in it,
/// the test will be skipped by default, and only run if explicitly
/// required via the `-p` command-line option or `g_test_trap_subprocess()`.
/// 
/// No component of `testpath` may start with a dot (`.`) if the
/// `G_TEST_OPTION_ISOLATE_DIRS` option is being used; and it is recommended to
/// do so even if it isn’t.
@inlinable public func testAddFunc(testpath: UnsafePointer<CChar>!, testFunc: GTestFunc?) {
    g_test_add_func(testpath, testFunc)

}




@inlinable public func testAddVtable(testpath: UnsafePointer<CChar>!, dataSize: Int, testData: gconstpointer! = nil, dataSetup: GTestFixtureFunc?, dataTest: GTestFixtureFunc?, dataTeardown: GTestFixtureFunc?) {
    g_test_add_vtable(testpath, gsize(dataSize), testData, dataSetup, dataTest, dataTeardown)

}




@inlinable public func testAssertExpectedMessagesInternal(domain: UnsafePointer<CChar>!, file: UnsafePointer<CChar>!, line: Int, `func`: UnsafePointer<CChar>!) {
    g_test_assert_expected_messages_internal(domain, file, gint(line), `func`)

}




/// This function adds a message to test reports that
/// associates a bug URI with a test case.
/// Bug URIs are constructed from a base URI set with `g_test_bug_base()`
/// and `bug_uri_snippet`. If `g_test_bug_base()` has not been called, it is
/// assumed to be the empty string, so a full URI can be provided to
/// `g_test_bug()` instead.
@inlinable public func testBug(bugURISnippet: UnsafePointer<CChar>!) {
    g_test_bug(bugURISnippet)

}




/// Specify the base URI for bug reports.
/// 
/// The base URI is used to construct bug report messages for
/// `g_test_message()` when `g_test_bug()` is called.
/// Calling this function outside of a test case sets the
/// default base URI for all test cases. Calling it from within
/// a test case changes the base URI for the scope of the test
/// case only.
/// Bug URIs are constructed by appending a bug specific URI
/// portion to `uri_pattern`, or by replacing the special string
/// '\`s`' within `uri_pattern` if that is present.
/// 
/// If `g_test_bug_base()` is not called, bug URIs are formed solely
/// from the value provided by `g_test_bug()`.
@inlinable public func testBugBase(uriPattern: UnsafePointer<CChar>!) {
    g_test_bug_base(uriPattern)

}





// *** testBuildFilename() is not available because it has a varargs (...) parameter!





/// Create a new `GTestCase`, named `test_name`.
/// 
/// This API is fairly low level, and calling `g_test_add()` or `g_test_add_func()`
/// is preferable.
/// 
/// When this test is executed, a fixture structure of size `data_size`
/// will be automatically allocated and filled with zeros. Then `data_setup` is
/// called to initialize the fixture. After fixture setup, the actual test
/// function `data_test` is called. Once the test run completes, the
/// fixture structure is torn down by calling `data_teardown` and
/// after that the memory is automatically released by the test framework.
/// 
/// Splitting up a test run into fixture setup, test function and
/// fixture teardown is most useful if the same fixture type is used for
/// multiple tests. In this cases, `g_test_create_case()` will be
/// called with the same type of fixture (the `data_size` argument), but varying
/// `test_name` and `data_test` arguments.
@inlinable public func testCreateCase(testName: UnsafePointer<CChar>!, dataSize: Int, testData: gconstpointer! = nil, dataSetup: GTestFixtureFunc?, dataTest: GTestFixtureFunc?, dataTeardown: GTestFixtureFunc?) -> TestCaseRef! {
    guard let rv = TestCaseRef(gconstpointer: gconstpointer(g_test_create_case(testName, gsize(dataSize), testData, dataSetup, dataTest, dataTeardown))) else { return nil }
    return rv
}




/// Create a new test suite with the name `suite_name`.
@inlinable public func testCreateSuite(suiteName: UnsafePointer<CChar>!) -> TestSuiteRef! {
    guard let rv = TestSuiteRef(gconstpointer: gconstpointer(g_test_create_suite(suiteName))) else { return nil }
    return rv
}




/// Indicates that a message with the given `log_domain` and `log_level`,
/// with text matching `pattern`, is expected to be logged. When this
/// message is logged, it will not be printed, and the test case will
/// not abort.
/// 
/// This API may only be used with the old logging API (`g_log()` without
/// `G_LOG_USE_STRUCTURED` defined). It will not work with the structured logging
/// API. See [Testing for Messages](#testing-for-messages).
/// 
/// Use `g_test_assert_expected_messages()` to assert that all
/// previously-expected messages have been seen and suppressed.
/// 
/// You can call this multiple times in a row, if multiple messages are
/// expected as a result of a single call. (The messages must appear in
/// the same order as the calls to `g_test_expect_message()`.)
/// 
/// For example:
/// 
/// (C Language Example):
/// ```C
///   // g_main_context_push_thread_default() should fail if the
///   // context is already owned by another thread.
///   g_test_expect_message (G_LOG_DOMAIN,
///                          G_LOG_LEVEL_CRITICAL,
///                          "assertion*acquired_context*failed");
///   g_main_context_push_thread_default (bad_context);
///   g_test_assert_expected_messages ();
/// ```
/// 
/// Note that you cannot use this to test `g_error()` messages, since
/// `g_error()` intentionally never returns even if the program doesn't
/// abort; use `g_test_trap_subprocess()` in this case.
/// 
/// If messages at `G_LOG_LEVEL_DEBUG` are emitted, but not explicitly
/// expected via `g_test_expect_message()` then they will be ignored.
@inlinable public func testExpectMessage(logDomain: UnsafePointer<gchar>? = nil, logLevel: LogLevelFlags, pattern: UnsafePointer<gchar>!) {
    g_test_expect_message(logDomain, logLevel.value, pattern)

}




/// Indicates that a test failed. This function can be called
/// multiple times from the same test. You can use this function
/// if your test failed in a recoverable way.
/// 
/// Do not use this function if the failure of a test could cause
/// other tests to malfunction.
/// 
/// Calling this function will not stop the test from running, you
/// need to return from the test function yourself. So you can
/// produce additional diagnostic messages or even continue running
/// the test.
/// 
/// If not called from inside a test, this function does nothing.
@inlinable public func testFail() {
    g_test_fail()

}




/// Returns whether a test has already failed. This will
/// be the case when `g_test_fail()`, `g_test_incomplete()`
/// or `g_test_skip()` have been called, but also if an
/// assertion has failed.
/// 
/// This can be useful to return early from a test if
/// continuing after a failed assertion might be harmful.
/// 
/// The return value of this function is only meaningful
/// if it is called from inside a test function.
@inlinable public func testFailed() -> Bool {
    let rv = ((g_test_failed()) != 0)
    return rv
}




/// Gets the pathname of the directory containing test files of the type
/// specified by `file_type`.
/// 
/// This is approximately the same as calling `g_test_build_filename(".")`,
/// but you don't need to free the return value.
@inlinable public func testGetDir(fileType: GTestFileType) -> String! {
    guard let rv = g_test_get_dir(fileType).map({ String(cString: $0) }) else { return nil }
    return rv
}





// *** testGetFilename() is not available because it has a varargs (...) parameter!





/// Get the toplevel test suite for the test path API.
@inlinable public func testGetRoot() -> TestSuiteRef! {
    guard let rv = TestSuiteRef(gconstpointer: gconstpointer(g_test_get_root())) else { return nil }
    return rv
}




/// Indicates that a test failed because of some incomplete
/// functionality. This function can be called multiple times
/// from the same test.
/// 
/// Calling this function will not stop the test from running, you
/// need to return from the test function yourself. So you can
/// produce additional diagnostic messages or even continue running
/// the test.
/// 
/// If not called from inside a test, this function does nothing.
@inlinable public func testIncomplete(msg: UnsafePointer<gchar>? = nil) {
    g_test_incomplete(msg)

}





// *** testInit() is not available because it has a varargs (...) parameter!





/// Installs a non-error fatal log handler which can be
/// used to decide whether log messages which are counted
/// as fatal abort the program.
/// 
/// The use case here is that you are running a test case
/// that depends on particular libraries or circumstances
/// and cannot prevent certain known critical or warning
/// messages. So you install a handler that compares the
/// domain and message to precisely not abort in such a case.
/// 
/// Note that the handler is reset at the beginning of
/// any test case, so you have to set it inside each test
/// function which needs the special behavior.
/// 
/// This handler has no effect on g_error messages.
/// 
/// This handler also has no effect on structured log messages (using
/// `g_log_structured()` or `g_log_structured_array()`). To change the fatal
/// behaviour for specific log messages, programs must install a custom log
/// writer function using `g_log_set_writer_func()`.See
/// [Using Structured Logging](#using-structured-logging).
@inlinable public func testLogSetFatalHandler(logFunc: GTestLogFatalFunc?, userData: gpointer! = nil) {
    g_test_log_set_fatal_handler(logFunc, userData)

}




@inlinable public func testLogTypeName(logType: GTestLogType) -> String! {
    guard let rv = g_test_log_type_name(logType).map({ String(cString: $0) }) else { return nil }
    return rv
}





// *** testMaximizedResult() is not available because it has a varargs (...) parameter!






// *** testMessage() is not available because it has a varargs (...) parameter!






// *** testMinimizedResult() is not available because it has a varargs (...) parameter!





/// This function enqueus a callback `destroy_func` to be executed
/// during the next test case teardown phase. This is most useful
/// to auto destruct allocated test resources at the end of a test run.
/// Resources are released in reverse queue order, that means enqueueing
/// callback A before callback B will cause `B()` to be called before
/// `A()` during teardown.
@inlinable public func testQueueDestroy(destroyFunc: GDestroyNotify?, destroyData: gpointer! = nil) {
    g_test_queue_destroy(destroyFunc, destroyData)

}




/// Enqueue a pointer to be released with `g_free()` during the next
/// teardown phase. This is equivalent to calling `g_test_queue_destroy()`
/// with a destroy callback of `g_free()`.
@inlinable public func testQueueFree(gfreePointer: gpointer! = nil) {
    g_test_queue_free(gfreePointer)

}




/// Get a reproducible random floating point number,
/// see `g_test_rand_int()` for details on test case random numbers.
@inlinable public func testRandDouble() -> CDouble {
    let rv = g_test_rand_double()
    return rv
}




/// Get a reproducible random floating pointer number out of a specified range,
/// see `g_test_rand_int()` for details on test case random numbers.
@inlinable public func testRandDoubleRange(rangeStart: CDouble, rangeEnd: CDouble) -> CDouble {
    let rv = g_test_rand_double_range(rangeStart, rangeEnd)
    return rv
}




/// Get a reproducible random integer number.
/// 
/// The random numbers generated by the g_test_rand_*() family of functions
/// change with every new test program start, unless the --seed option is
/// given when starting test programs.
/// 
/// For individual test cases however, the random number generator is
/// reseeded, to avoid dependencies between tests and to make --seed
/// effective for all test cases.
@inlinable public func testRandInt() -> gint32 {
    let rv = g_test_rand_int()
    return rv
}




/// Get a reproducible random integer number out of a specified range,
/// see `g_test_rand_int()` for details on test case random numbers.
@inlinable public func testRandIntRange(begin: gint32, end: gint32) -> gint32 {
    let rv = g_test_rand_int_range(begin, end)
    return rv
}




/// Runs all tests under the toplevel suite which can be retrieved
/// with `g_test_get_root()`. Similar to `g_test_run_suite()`, the test
/// cases to be run are filtered according to test path arguments
/// (`-p testpath` and `-s testpath`) as parsed by `g_test_init()`.
/// `g_test_run_suite()` or `g_test_run()` may only be called once in a
/// program.
/// 
/// In general, the tests and sub-suites within each suite are run in
/// the order in which they are defined. However, note that prior to
/// GLib 2.36, there was a bug in the `g_test_add_*`
/// functions which caused them to create multiple suites with the same
/// name, meaning that if you created tests "/foo/simple",
/// "/bar/simple", and "/foo/using-bar" in that order, they would get
/// run in that order (since `g_test_run()` would run the first "/foo"
/// suite, then the "/bar" suite, then the second "/foo" suite). As of
/// 2.36, this bug is fixed, and adding the tests in that order would
/// result in a running order of "/foo/simple", "/foo/using-bar",
/// "/bar/simple". If this new ordering is sub-optimal (because it puts
/// more-complicated tests before simpler ones, making it harder to
/// figure out exactly what has failed), you can fix it by changing the
/// test paths to group tests by suite in a way that will result in the
/// desired running order. Eg, "/simple/foo", "/simple/bar",
/// "/complex/foo-using-bar".
/// 
/// However, you should never make the actual result of a test depend
/// on the order that tests are run in. If you need to ensure that some
/// particular code runs before or after a given test case, use
/// `g_test_add()`, which lets you specify setup and teardown functions.
/// 
/// If all tests are skipped or marked as incomplete (expected failures),
/// this function will return 0 if producing TAP output, or 77 (treated
/// as "skip test" by Automake) otherwise.
@inlinable public func testRun() -> Int {
    let rv = Int(g_test_run())
    return rv
}




/// Execute the tests within `suite` and all nested `GTestSuites`.
/// The test suites to be executed are filtered according to
/// test path arguments (`-p testpath` and `-s testpath`) as parsed by
/// `g_test_init()`. See the `g_test_run()` documentation for more
/// information on the order that tests are run in.
/// 
/// `g_test_run_suite()` or `g_test_run()` may only be called once
/// in a program.
@inlinable public func testRun<TestSuiteT: TestSuiteProtocol>(suite: TestSuiteT) -> Int {
    let rv = Int(g_test_run_suite(suite._ptr))
    return rv
}




/// Changes the behaviour of the various `g_assert_*()` macros,
/// `g_test_assert_expected_messages()` and the various
/// `g_test_trap_assert_*()` macros to not abort to program, but instead
/// call `g_test_fail()` and continue. (This also changes the behavior of
/// `g_test_fail()` so that it will not cause the test program to abort
/// after completing the failed test.)
/// 
/// Note that the `g_assert_not_reached()` and `g_assert()` macros are not
/// affected by this.
/// 
/// This function can only be called after `g_test_init()`.
@inlinable public func testSetNonfatalAssertions() {
    g_test_set_nonfatal_assertions()

}




/// Indicates that a test was skipped.
/// 
/// Calling this function will not stop the test from running, you
/// need to return from the test function yourself. So you can
/// produce additional diagnostic messages or even continue running
/// the test.
/// 
/// If not called from inside a test, this function does nothing.
@inlinable public func testSkip(msg: UnsafePointer<gchar>? = nil) {
    g_test_skip(msg)

}




/// Returns `true` (after `g_test_init()` has been called) if the test
/// program is running under `g_test_trap_subprocess()`.
@inlinable public func testSubprocess() -> Bool {
    let rv = ((g_test_subprocess()) != 0)
    return rv
}




/// Set the summary for a test, which describes what the test checks, and how it
/// goes about checking it. This may be included in test report output, and is
/// useful documentation for anyone reading the source code or modifying a test
/// in future. It must be a single line.
/// 
/// This should be called at the top of a test function.
/// 
/// For example:
/// (C Language Example):
/// ```C
/// static void
/// test_array_sort (void)
/// {
///   g_test_summary ("Test my_array_sort() sorts the array correctly and stably, "
///                   "including testing zero length and one-element arrays.");
/// 
///   …
/// }
/// ```
/// 
@inlinable public func test(summary: UnsafePointer<CChar>!) {
    g_test_summary(summary)

}




/// Get the time since the last start of the timer with `g_test_timer_start()`.
@inlinable public func testTimerElapsed() -> CDouble {
    let rv = g_test_timer_elapsed()
    return rv
}




/// Report the last result of `g_test_timer_elapsed()`.
@inlinable public func testTimerLast() -> CDouble {
    let rv = g_test_timer_last()
    return rv
}




/// Start a timing test. Call `g_test_timer_elapsed()` when the task is supposed
/// to be done. Call this function again to restart the timer.
@inlinable public func testTimerStart() {
    g_test_timer_start()

}




@inlinable public func testTrapAssertions(domain: UnsafePointer<CChar>!, file: UnsafePointer<CChar>!, line: Int, `func`: UnsafePointer<CChar>!, assertionFlags: guint64, pattern: UnsafePointer<CChar>!) {
    g_test_trap_assertions(domain, file, gint(line), `func`, assertionFlags, pattern)

}




/// Fork the current test program to execute a test case that might
/// not return or that might abort.
/// 
/// If `usec_timeout` is non-0, the forked test case is aborted and
/// considered failing if its run time exceeds it.
/// 
/// The forking behavior can be configured with the `GTestTrapFlags` flags.
/// 
/// In the following example, the test code forks, the forked child
/// process produces some sample output and exits successfully.
/// The forking parent process then asserts successful child program
/// termination and validates child program outputs.
/// 
/// (C Language Example):
/// ```C
///   static void
///   test_fork_patterns (void)
///   {
///     if (g_test_trap_fork (0, G_TEST_TRAP_SILENCE_STDOUT | G_TEST_TRAP_SILENCE_STDERR))
///       {
///         g_print ("some stdout text: somagic17\n");
///         g_printerr ("some stderr text: semagic43\n");
///         exit (0); // successful test run
///       }
///     g_test_trap_assert_passed ();
///     g_test_trap_assert_stdout ("*somagic17*");
///     g_test_trap_assert_stderr ("*semagic43*");
///   }
/// ```
/// 
///
/// **test_trap_fork is deprecated:**
/// This function is implemented only on Unix platforms,
/// and is not always reliable due to problems inherent in
/// fork-without-exec. Use g_test_trap_subprocess() instead.
@available(*, deprecated) @inlinable public func testTrapFork(usecTimeout: guint64, testTrapFlags: TestTrapFlags) -> Bool {
    let rv = ((g_test_trap_fork(usecTimeout, testTrapFlags.value)) != 0)
    return rv
}




/// Check the result of the last `g_test_trap_subprocess()` call.
@inlinable public func testTrapHasPassed() -> Bool {
    let rv = ((g_test_trap_has_passed()) != 0)
    return rv
}




/// Check the result of the last `g_test_trap_subprocess()` call.
@inlinable public func testTrapReachedTimeout() -> Bool {
    let rv = ((g_test_trap_reached_timeout()) != 0)
    return rv
}




/// Respawns the test program to run only `test_path` in a subprocess.
/// This can be used for a test case that might not return, or that
/// might abort.
/// 
/// If `test_path` is `nil` then the same test is re-run in a subprocess.
/// You can use `g_test_subprocess()` to determine whether the test is in
/// a subprocess or not.
/// 
/// `test_path` can also be the name of the parent test, followed by
/// "`/subprocess/`" and then a name for the specific subtest (or just
/// ending with "`/subprocess`" if the test only has one child test);
/// tests with names of this form will automatically be skipped in the
/// parent process.
/// 
/// If `usec_timeout` is non-0, the test subprocess is aborted and
/// considered failing if its run time exceeds it.
/// 
/// The subprocess behavior can be configured with the
/// `GTestSubprocessFlags` flags.
/// 
/// You can use methods such as `g_test_trap_assert_passed()`,
/// `g_test_trap_assert_failed()`, and `g_test_trap_assert_stderr()` to
/// check the results of the subprocess. (But note that
/// `g_test_trap_assert_stdout()` and `g_test_trap_assert_stderr()`
/// cannot be used if `test_flags` specifies that the child should
/// inherit the parent stdout/stderr.)
/// 
/// If your `main ()` needs to behave differently in
/// the subprocess, you can call `g_test_subprocess()` (after calling
/// `g_test_init()`) to see whether you are in a subprocess.
/// 
/// The following example tests that calling
/// ``my_object_new(1000000)`` will abort with an error
/// message.
/// 
/// (C Language Example):
/// ```C
///   static void
///   test_create_large_object (void)
///   {
///     if (g_test_subprocess ())
///       {
///         my_object_new (1000000);
///         return;
///       }
/// 
///     // Reruns this same test in a subprocess
///     g_test_trap_subprocess (NULL, 0, 0);
///     g_test_trap_assert_failed ();
///     g_test_trap_assert_stderr ("*ERROR*too large*");
///   }
/// 
///   int
///   main (int argc, char **argv)
///   {
///     g_test_init (&argc, &argv, NULL);
/// 
///     g_test_add_func ("/myobject/create_large_object",
///                      test_create_large_object);
///     return g_test_run ();
///   }
/// ```
/// 
@inlinable public func testTrapSubprocess(testPath: UnsafePointer<CChar>? = nil, usecTimeout: guint64, testFlags: TestSubprocessFlags) {
    g_test_trap_subprocess(testPath, usecTimeout, testFlags.value)

}




@inlinable public func threadErrorQuark() -> GQuark {
    let rv = g_thread_error_quark()
    return rv
}




/// Terminates the current thread.
/// 
/// If another thread is waiting for us using `g_thread_join()` then the
/// waiting thread will be woken up and get `retval` as the return value
/// of `g_thread_join()`.
/// 
/// Calling `g_thread_exit()` with a parameter `retval` is equivalent to
/// returning `retval` from the function `func`, as given to `g_thread_new()`.
/// 
/// You must only call `g_thread_exit()` from a thread that you created
/// yourself with `g_thread_new()` or related APIs. You must not call
/// this function from a thread created with another threading library
/// or or from within a `GThreadPool`.
@inlinable public func threadExit(retval: gpointer! = nil) {
    g_thread_exit(retval)

}




/// This function will return the maximum `interval` that a
/// thread will wait in the thread pool for new tasks before
/// being stopped.
/// 
/// If this function returns 0, threads waiting in the thread
/// pool for new work are not stopped.
@inlinable public func threadPoolGetMaxIdleTime() -> Int {
    let rv = Int(g_thread_pool_get_max_idle_time())
    return rv
}




/// Returns the maximal allowed number of unused threads.
@inlinable public func threadPoolGetMaxUnusedThreads() -> Int {
    let rv = Int(g_thread_pool_get_max_unused_threads())
    return rv
}




/// Returns the number of currently unused threads.
@inlinable public func threadPoolGetNumUnusedThreads() -> Int {
    let rv = Int(g_thread_pool_get_num_unused_threads())
    return rv
}




/// This function will set the maximum `interval` that a thread
/// waiting in the pool for new tasks can be idle for before
/// being stopped. This function is similar to calling
/// `g_thread_pool_stop_unused_threads()` on a regular timeout,
/// except this is done on a per thread basis.
/// 
/// By setting `interval` to 0, idle threads will not be stopped.
/// 
/// The default value is 15000 (15 seconds).
@inlinable public func threadPoolSetMaxIdleTime(interval: Int) {
    g_thread_pool_set_max_idle_time(guint(interval))

}




/// Sets the maximal number of unused threads to `max_threads`.
/// If `max_threads` is -1, no limit is imposed on the number
/// of unused threads.
/// 
/// The default value is 2.
@inlinable public func threadPoolSetMaxUnusedThreads(maxThreads: Int) {
    g_thread_pool_set_max_unused_threads(gint(maxThreads))

}




/// Stops all currently unused threads. This does not change the
/// maximal number of unused threads. This function can be used to
/// regularly stop all unused threads e.g. from `g_timeout_add()`.
@inlinable public func threadPoolStopUnusedThreads() {
    g_thread_pool_stop_unused_threads()

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
@inlinable public func threadSelf() -> ThreadRef! {
    guard let rv = ThreadRef(gconstpointer: gconstpointer(g_thread_self())) else { return nil }
    return rv
}




/// Causes the calling thread to voluntarily relinquish the CPU, so
/// that other threads can run.
/// 
/// This function is often used as a method to make busy wait less evil.
@inlinable public func threadYield() {
    g_thread_yield()

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
@available(*, deprecated) @inlinable public func timeValFromIso8601<TimeValT: TimeValProtocol>(isoDate: UnsafePointer<gchar>!, time_: TimeValT) -> Bool {
    let rv = ((g_time_val_from_iso8601(isoDate, time_._ptr)) != 0)
    return rv
}




/// Sets a function to be called at regular intervals, with the default
/// priority, `G_PRIORITY_DEFAULT`.  The function is called repeatedly
/// until it returns `false`, at which point the timeout is automatically
/// destroyed and the function will not be called again.  The first call
/// to the function will be at the end of the first `interval`.
/// 
/// Note that timeout functions may be delayed, due to the processing of other
/// event sources. Thus they should not be relied on for precise timing.
/// After each call to the timeout function, the time of the next
/// timeout is recalculated based on the current time and the given interval
/// (it does not try to 'catch up' time lost in delays).
/// 
/// See [memory management of sources](#mainloop-memory-management) for details
/// on how to handle the return value and memory management of `data`.
/// 
/// If you want to have a timer in the "seconds" range and do not care
/// about the exact time of the first call of the timer, use the
/// `g_timeout_add_seconds()` function; this function allows for more
/// optimizations and more efficient system power usage.
/// 
/// This internally creates a main loop source using `g_timeout_source_new()`
/// and attaches it to the global `GMainContext` using `g_source_attach()`, so
/// the callback will be invoked in whichever thread is running that main
/// context. You can do these steps manually if you need greater control or to
/// use a custom main context.
/// 
/// It is safe to call this function from any thread.
/// 
/// The interval given is in terms of monotonic time, not wall clock
/// time.  See `g_get_monotonic_time()`.
@inlinable public func timeoutAdd(interval: Int, function: GSourceFunc?, data: gpointer! = nil) -> Int {
    let rv = Int(g_timeout_add(guint(interval), function, data))
    return rv
}




/// Sets a function to be called at regular intervals, with the given
/// priority.  The function is called repeatedly until it returns
/// `false`, at which point the timeout is automatically destroyed and
/// the function will not be called again.  The `notify` function is
/// called when the timeout is destroyed.  The first call to the
/// function will be at the end of the first `interval`.
/// 
/// Note that timeout functions may be delayed, due to the processing of other
/// event sources. Thus they should not be relied on for precise timing.
/// After each call to the timeout function, the time of the next
/// timeout is recalculated based on the current time and the given interval
/// (it does not try to 'catch up' time lost in delays).
/// 
/// See [memory management of sources](#mainloop-memory-management) for details
/// on how to handle the return value and memory management of `data`.
/// 
/// This internally creates a main loop source using `g_timeout_source_new()`
/// and attaches it to the global `GMainContext` using `g_source_attach()`, so
/// the callback will be invoked in whichever thread is running that main
/// context. You can do these steps manually if you need greater control or to
/// use a custom main context.
/// 
/// The interval given is in terms of monotonic time, not wall clock time.
/// See `g_get_monotonic_time()`.
@inlinable public func timeoutAddFull(priority: Int, interval: Int, function: GSourceFunc?, data: gpointer! = nil, notify: GDestroyNotify? = nil) -> Int {
    let rv = Int(g_timeout_add_full(gint(priority), guint(interval), function, data, notify))
    return rv
}




/// Sets a function to be called at regular intervals with the default
/// priority, `G_PRIORITY_DEFAULT`. The function is called repeatedly until
/// it returns `false`, at which point the timeout is automatically destroyed
/// and the function will not be called again.
/// 
/// This internally creates a main loop source using
/// `g_timeout_source_new_seconds()` and attaches it to the main loop context
/// using `g_source_attach()`. You can do these steps manually if you need
/// greater control. Also see `g_timeout_add_seconds_full()`.
/// 
/// It is safe to call this function from any thread.
/// 
/// Note that the first call of the timer may not be precise for timeouts
/// of one second. If you need finer precision and have such a timeout,
/// you may want to use `g_timeout_add()` instead.
/// 
/// See [memory management of sources](#mainloop-memory-management) for details
/// on how to handle the return value and memory management of `data`.
/// 
/// The interval given is in terms of monotonic time, not wall clock
/// time.  See `g_get_monotonic_time()`.
@inlinable public func timeoutAddSeconds(interval: Int, function: GSourceFunc?, data: gpointer! = nil) -> Int {
    let rv = Int(g_timeout_add_seconds(guint(interval), function, data))
    return rv
}




/// Sets a function to be called at regular intervals, with `priority`.
/// The function is called repeatedly until it returns `false`, at which
/// point the timeout is automatically destroyed and the function will
/// not be called again.
/// 
/// Unlike `g_timeout_add()`, this function operates at whole second granularity.
/// The initial starting point of the timer is determined by the implementation
/// and the implementation is expected to group multiple timers together so that
/// they fire all at the same time.
/// To allow this grouping, the `interval` to the first timer is rounded
/// and can deviate up to one second from the specified interval.
/// Subsequent timer iterations will generally run at the specified interval.
/// 
/// Note that timeout functions may be delayed, due to the processing of other
/// event sources. Thus they should not be relied on for precise timing.
/// After each call to the timeout function, the time of the next
/// timeout is recalculated based on the current time and the given `interval`
/// 
/// See [memory management of sources](#mainloop-memory-management) for details
/// on how to handle the return value and memory management of `data`.
/// 
/// If you want timing more precise than whole seconds, use `g_timeout_add()`
/// instead.
/// 
/// The grouping of timers to fire at the same time results in a more power
/// and CPU efficient behavior so if your timer is in multiples of seconds
/// and you don't require the first timer exactly one second from now, the
/// use of `g_timeout_add_seconds()` is preferred over `g_timeout_add()`.
/// 
/// This internally creates a main loop source using
/// `g_timeout_source_new_seconds()` and attaches it to the main loop context
/// using `g_source_attach()`. You can do these steps manually if you need
/// greater control.
/// 
/// It is safe to call this function from any thread.
/// 
/// The interval given is in terms of monotonic time, not wall clock
/// time.  See `g_get_monotonic_time()`.
@inlinable public func timeoutAddSecondsFull(priority: Int, interval: Int, function: GSourceFunc?, data: gpointer! = nil, notify: GDestroyNotify? = nil) -> Int {
    let rv = Int(g_timeout_add_seconds_full(gint(priority), guint(interval), function, data, notify))
    return rv
}




/// Creates a new timeout source.
/// 
/// The source will not initially be associated with any `GMainContext`
/// and must be added to one with `g_source_attach()` before it will be
/// executed.
/// 
/// The interval given is in terms of monotonic time, not wall clock
/// time.  See `g_get_monotonic_time()`.
@inlinable public func timeoutSourceNew(interval: Int) -> SourceRef! {
    guard let rv = SourceRef(gconstpointer: gconstpointer(g_timeout_source_new(guint(interval)))) else { return nil }
    return rv
}




/// Creates a new timeout source.
/// 
/// The source will not initially be associated with any `GMainContext`
/// and must be added to one with `g_source_attach()` before it will be
/// executed.
/// 
/// The scheduling granularity/accuracy of this timeout source will be
/// in seconds.
/// 
/// The interval given is in terms of monotonic time, not wall clock time.
/// See `g_get_monotonic_time()`.
@inlinable public func timeoutSourceNewSeconds(interval: Int) -> SourceRef! {
    guard let rv = SourceRef(gconstpointer: gconstpointer(g_timeout_source_new_seconds(guint(interval)))) else { return nil }
    return rv
}




/// Returns the height of a `GTrashStack`.
/// 
/// Note that execution of this function is of `O(N)` complexity
/// where N denotes the number of items on the stack.
///
/// **trash_stack_height is deprecated:**
/// #GTrashStack is deprecated without replacement
@available(*, deprecated) @inlinable public func trashStackHeight(stackP: UnsafeMutablePointer<UnsafeMutablePointer<GTrashStack>?>!) -> Int {
    let rv = Int(g_trash_stack_height(stackP))
    return rv
}




/// Returns the element at the top of a `GTrashStack`
/// which may be `nil`.
///
/// **trash_stack_peek is deprecated:**
/// #GTrashStack is deprecated without replacement
@available(*, deprecated) @inlinable public func trashStackPeek(stackP: UnsafeMutablePointer<UnsafeMutablePointer<GTrashStack>?>!) -> gpointer! {
    guard let rv = g_trash_stack_peek(stackP) else { return nil }
    return rv
}




/// Pops a piece of memory off a `GTrashStack`.
///
/// **trash_stack_pop is deprecated:**
/// #GTrashStack is deprecated without replacement
@available(*, deprecated) @inlinable public func trashStackPop(stackP: UnsafeMutablePointer<UnsafeMutablePointer<GTrashStack>?>!) -> gpointer! {
    guard let rv = g_trash_stack_pop(stackP) else { return nil }
    return rv
}




/// Pushes a piece of memory onto a `GTrashStack`.
///
/// **trash_stack_push is deprecated:**
/// #GTrashStack is deprecated without replacement
@available(*, deprecated) @inlinable public func trashStackPush(stackP: UnsafeMutablePointer<UnsafeMutablePointer<GTrashStack>?>!, dataP: gpointer!) {
    g_trash_stack_push(stackP, dataP)

}




/// Attempts to allocate `n_bytes`, and returns `nil` on failure.
/// Contrast with `g_malloc()`, which aborts the program on failure.
@inlinable public func tryMalloc(nBytes: Int) -> gpointer! {
    guard let rv = g_try_malloc(gsize(nBytes)) else { return nil }
    return rv
}




/// Attempts to allocate `n_bytes`, initialized to 0's, and returns `nil` on
/// failure. Contrast with `g_malloc0()`, which aborts the program on failure.
@inlinable public func tryMalloc0(nBytes: Int) -> gpointer! {
    guard let rv = g_try_malloc0(gsize(nBytes)) else { return nil }
    return rv
}




/// This function is similar to `g_try_malloc0()`, allocating (`n_blocks` * `n_block_bytes`) bytes,
/// but care is taken to detect possible overflow during multiplication.
@inlinable public func tryMalloc0N(nBlocks: Int, nBlockBytes: Int) -> gpointer! {
    guard let rv = g_try_malloc0_n(gsize(nBlocks), gsize(nBlockBytes)) else { return nil }
    return rv
}




/// This function is similar to `g_try_malloc()`, allocating (`n_blocks` * `n_block_bytes`) bytes,
/// but care is taken to detect possible overflow during multiplication.
@inlinable public func tryMallocN(nBlocks: Int, nBlockBytes: Int) -> gpointer! {
    guard let rv = g_try_malloc_n(gsize(nBlocks), gsize(nBlockBytes)) else { return nil }
    return rv
}




/// Attempts to realloc `mem` to a new size, `n_bytes`, and returns `nil`
/// on failure. Contrast with `g_realloc()`, which aborts the program
/// on failure.
/// 
/// If `mem` is `nil`, behaves the same as `g_try_malloc()`.
@inlinable public func tryRealloc(mem: gpointer! = nil, nBytes: Int) -> gpointer! {
    guard let rv = g_try_realloc(mem, gsize(nBytes)) else { return nil }
    return rv
}




/// This function is similar to `g_try_realloc()`, allocating (`n_blocks` * `n_block_bytes`) bytes,
/// but care is taken to detect possible overflow during multiplication.
@inlinable public func tryReallocN(mem: gpointer! = nil, nBlocks: Int, nBlockBytes: Int) -> gpointer! {
    guard let rv = g_try_realloc_n(mem, gsize(nBlocks), gsize(nBlockBytes)) else { return nil }
    return rv
}




/// Convert a string from UCS-4 to UTF-16. A 0 character will be
/// added to the result after the converted text.
@inlinable public func ucs4ToUTF16(str: UnsafePointer<gunichar>!, len: Int, itemsRead: UnsafeMutablePointer<glong>! = nil, itemsWritten: UnsafeMutablePointer<glong>! = nil) throws -> UnsafeMutablePointer<gunichar2>! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = g_ucs4_to_utf16(str, glong(len), itemsRead, itemsWritten, &error)
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}




/// Convert a string from a 32-bit fixed width representation as UCS-4.
/// to UTF-8. The result will be terminated with a 0 byte.
@inlinable public func ucs4ToUTF8(str: UnsafePointer<gunichar>!, len: Int, itemsRead: UnsafeMutablePointer<glong>! = nil, itemsWritten: UnsafeMutablePointer<glong>! = nil) throws -> String! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = g_ucs4_to_utf8(str, glong(len), itemsRead, itemsWritten, &error).map({ String(cString: $0) })
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}




/// Determines the break type of `c`. `c` should be a Unicode character
/// (to derive a character from UTF-8 encoded text, use
/// `g_utf8_get_char()`). The break type is used to find word and line
/// breaks ("text boundaries"), Pango implements the Unicode boundary
/// resolution algorithms and normally you would use a function such
/// as `pango_break()` instead of caring about break types yourself.
@inlinable public func unicharBreakType(c: gunichar) -> GUnicodeBreakType {
    let rv = g_unichar_break_type(c)
    return rv
}




/// Determines the canonical combining class of a Unicode character.
@inlinable public func unicharCombiningClass(uc: gunichar) -> Int {
    let rv = Int(g_unichar_combining_class(uc))
    return rv
}




/// Performs a single composition step of the
/// Unicode canonical composition algorithm.
/// 
/// This function includes algorithmic Hangul Jamo composition,
/// but it is not exactly the inverse of `g_unichar_decompose()`.
/// No composition can have either of `a` or `b` equal to zero.
/// To be precise, this function composes if and only if
/// there exists a Primary Composite P which is canonically
/// equivalent to the sequence <`a`,`b`>.  See the Unicode
/// Standard for the definition of Primary Composite.
/// 
/// If `a` and `b` do not compose a new character, `ch` is set to zero.
/// 
/// See
/// [UAX`15`](http://unicode.org/reports/tr15/)
/// for details.
@inlinable public func unicharCompose(a: gunichar, b: gunichar, ch: UnsafeMutablePointer<gunichar>!) -> Bool {
    let rv = ((g_unichar_compose(a, b, ch)) != 0)
    return rv
}




/// Performs a single decomposition step of the
/// Unicode canonical decomposition algorithm.
/// 
/// This function does not include compatibility
/// decompositions. It does, however, include algorithmic
/// Hangul Jamo decomposition, as well as 'singleton'
/// decompositions which replace a character by a single
/// other character. In the case of singletons *`b` will
/// be set to zero.
/// 
/// If `ch` is not decomposable, *`a` is set to `ch` and *`b`
/// is set to zero.
/// 
/// Note that the way Unicode decomposition pairs are
/// defined, it is guaranteed that `b` would not decompose
/// further, but `a` may itself decompose.  To get the full
/// canonical decomposition for `ch`, one would need to
/// recursively call this function on `a`.  Or use
/// `g_unichar_fully_decompose()`.
/// 
/// See
/// [UAX`15`](http://unicode.org/reports/tr15/)
/// for details.
@inlinable public func unicharDecompose(ch: gunichar, a: UnsafeMutablePointer<gunichar>!, b: UnsafeMutablePointer<gunichar>!) -> Bool {
    let rv = ((g_unichar_decompose(ch, a, b)) != 0)
    return rv
}




/// Determines the numeric value of a character as a decimal
/// digit.
@inlinable public func unicharDigitValue(c: gunichar) -> Int {
    let rv = Int(g_unichar_digit_value(c))
    return rv
}




/// Computes the canonical or compatibility decomposition of a
/// Unicode character.  For compatibility decomposition,
/// pass `true` for `compat`; for canonical decomposition
/// pass `false` for `compat`.
/// 
/// The decomposed sequence is placed in `result`.  Only up to
/// `result_len` characters are written into `result`.  The length
/// of the full decomposition (irrespective of `result_len`) is
/// returned by the function.  For canonical decomposition,
/// currently all decompositions are of length at most 4, but
/// this may change in the future (very unlikely though).
/// At any rate, Unicode does guarantee that a buffer of length
/// 18 is always enough for both compatibility and canonical
/// decompositions, so that is the size recommended. This is provided
/// as `G_UNICHAR_MAX_DECOMPOSITION_LENGTH`.
/// 
/// See
/// [UAX`15`](http://unicode.org/reports/tr15/)
/// for details.
@inlinable public func unicharFullyDecompose(ch: gunichar, compat: Bool, result: UnsafeMutablePointer<gunichar>! = nil, resultLen: Int) -> Int {
    let rv = Int(g_unichar_fully_decompose(ch, gboolean((compat) ? 1 : 0), result, gsize(resultLen)))
    return rv
}




/// In Unicode, some characters are "mirrored". This means that their
/// images are mirrored horizontally in text that is laid out from right
/// to left. For instance, "(" would become its mirror image, ")", in
/// right-to-left text.
/// 
/// If `ch` has the Unicode mirrored property and there is another unicode
/// character that typically has a glyph that is the mirror image of `ch`'s
/// glyph and `mirrored_ch` is set, it puts that character in the address
/// pointed to by `mirrored_ch`.  Otherwise the original character is put.
@inlinable public func unicharGetMirrorChar(ch: gunichar, mirroredCh: UnsafeMutablePointer<gunichar>!) -> Bool {
    let rv = ((g_unichar_get_mirror_char(ch, mirroredCh)) != 0)
    return rv
}




/// Looks up the `GUnicodeScript` for a particular character (as defined
/// by Unicode Standard Annex \`24`). No check is made for `ch` being a
/// valid Unicode character; if you pass in invalid character, the
/// result is undefined.
/// 
/// This function is equivalent to `pango_script_for_unichar()` and the
/// two are interchangeable.
@inlinable public func unicharGetScript(ch: gunichar) -> GUnicodeScript {
    let rv = g_unichar_get_script(ch)
    return rv
}




/// Determines whether a character is alphanumeric.
/// Given some UTF-8 text, obtain a character value
/// with `g_utf8_get_char()`.
@inlinable public func unicharIsalnum(c: gunichar) -> Bool {
    let rv = ((g_unichar_isalnum(c)) != 0)
    return rv
}




/// Determines whether a character is alphabetic (i.e. a letter).
/// Given some UTF-8 text, obtain a character value with
/// `g_utf8_get_char()`.
@inlinable public func unicharIsalpha(c: gunichar) -> Bool {
    let rv = ((g_unichar_isalpha(c)) != 0)
    return rv
}




/// Determines whether a character is a control character.
/// Given some UTF-8 text, obtain a character value with
/// `g_utf8_get_char()`.
@inlinable public func unicharIscntrl(c: gunichar) -> Bool {
    let rv = ((g_unichar_iscntrl(c)) != 0)
    return rv
}




/// Determines if a given character is assigned in the Unicode
/// standard.
@inlinable public func unicharIsdefined(c: gunichar) -> Bool {
    let rv = ((g_unichar_isdefined(c)) != 0)
    return rv
}




/// Determines whether a character is numeric (i.e. a digit).  This
/// covers ASCII 0-9 and also digits in other languages/scripts.  Given
/// some UTF-8 text, obtain a character value with `g_utf8_get_char()`.
@inlinable public func unicharIsdigit(c: gunichar) -> Bool {
    let rv = ((g_unichar_isdigit(c)) != 0)
    return rv
}




/// Determines whether a character is printable and not a space
/// (returns `false` for control characters, format characters, and
/// spaces). `g_unichar_isprint()` is similar, but returns `true` for
/// spaces. Given some UTF-8 text, obtain a character value with
/// `g_utf8_get_char()`.
@inlinable public func unicharIsgraph(c: gunichar) -> Bool {
    let rv = ((g_unichar_isgraph(c)) != 0)
    return rv
}




/// Determines whether a character is a lowercase letter.
/// Given some UTF-8 text, obtain a character value with
/// `g_utf8_get_char()`.
@inlinable public func unicharIslower(c: gunichar) -> Bool {
    let rv = ((g_unichar_islower(c)) != 0)
    return rv
}




/// Determines whether a character is a mark (non-spacing mark,
/// combining mark, or enclosing mark in Unicode speak).
/// Given some UTF-8 text, obtain a character value
/// with `g_utf8_get_char()`.
/// 
/// Note: in most cases where isalpha characters are allowed,
/// ismark characters should be allowed to as they are essential
/// for writing most European languages as well as many non-Latin
/// scripts.
@inlinable public func unicharIsmark(c: gunichar) -> Bool {
    let rv = ((g_unichar_ismark(c)) != 0)
    return rv
}




/// Determines whether a character is printable.
/// Unlike `g_unichar_isgraph()`, returns `true` for spaces.
/// Given some UTF-8 text, obtain a character value with
/// `g_utf8_get_char()`.
@inlinable public func unicharIsprint(c: gunichar) -> Bool {
    let rv = ((g_unichar_isprint(c)) != 0)
    return rv
}




/// Determines whether a character is punctuation or a symbol.
/// Given some UTF-8 text, obtain a character value with
/// `g_utf8_get_char()`.
@inlinable public func unicharIspunct(c: gunichar) -> Bool {
    let rv = ((g_unichar_ispunct(c)) != 0)
    return rv
}




/// Determines whether a character is a space, tab, or line separator
/// (newline, carriage return, etc.).  Given some UTF-8 text, obtain a
/// character value with `g_utf8_get_char()`.
/// 
/// (Note: don't use this to do word breaking; you have to use
/// Pango or equivalent to get word breaking right, the algorithm
/// is fairly complex.)
@inlinable public func unicharIsspace(c: gunichar) -> Bool {
    let rv = ((g_unichar_isspace(c)) != 0)
    return rv
}




/// Determines if a character is titlecase. Some characters in
/// Unicode which are composites, such as the DZ digraph
/// have three case variants instead of just two. The titlecase
/// form is used at the beginning of a word where only the
/// first letter is capitalized. The titlecase form of the DZ
/// digraph is U+01F2 LATIN CAPITAL LETTTER D WITH SMALL LETTER Z.
@inlinable public func unicharIstitle(c: gunichar) -> Bool {
    let rv = ((g_unichar_istitle(c)) != 0)
    return rv
}




/// Determines if a character is uppercase.
@inlinable public func unicharIsupper(c: gunichar) -> Bool {
    let rv = ((g_unichar_isupper(c)) != 0)
    return rv
}




/// Determines if a character is typically rendered in a double-width
/// cell.
@inlinable public func unicharIswide(c: gunichar) -> Bool {
    let rv = ((g_unichar_iswide(c)) != 0)
    return rv
}




/// Determines if a character is typically rendered in a double-width
/// cell under legacy East Asian locales.  If a character is wide according to
/// `g_unichar_iswide()`, then it is also reported wide with this function, but
/// the converse is not necessarily true. See the
/// [Unicode Standard Annex `11`](http://www.unicode.org/reports/tr11/)
/// for details.
/// 
/// If a character passes the `g_unichar_iswide()` test then it will also pass
/// this test, but not the other way around.  Note that some characters may
/// pass both this test and `g_unichar_iszerowidth()`.
@inlinable public func unicharIswideCjk(c: gunichar) -> Bool {
    let rv = ((g_unichar_iswide_cjk(c)) != 0)
    return rv
}




/// Determines if a character is a hexadecimal digit.
@inlinable public func unicharIsxdigit(c: gunichar) -> Bool {
    let rv = ((g_unichar_isxdigit(c)) != 0)
    return rv
}




/// Determines if a given character typically takes zero width when rendered.
/// The return value is `true` for all non-spacing and enclosing marks
/// (e.g., combining accents), format characters, zero-width
/// space, but not U+00AD SOFT HYPHEN.
/// 
/// A typical use of this function is with one of `g_unichar_iswide()` or
/// `g_unichar_iswide_cjk()` to determine the number of cells a string occupies
/// when displayed on a grid display (terminals).  However, note that not all
/// terminals support zero-width rendering of zero-width marks.
@inlinable public func unicharIszerowidth(c: gunichar) -> Bool {
    let rv = ((g_unichar_iszerowidth(c)) != 0)
    return rv
}




/// Converts a single character to UTF-8.
@inlinable public func unicharToUTF8(c: gunichar, outbuf: UnsafeMutablePointer<gchar>! = nil) -> Int {
    let rv = Int(g_unichar_to_utf8(c, outbuf))
    return rv
}




/// Converts a character to lower case.
@inlinable public func unicharTolower(c: gunichar) -> gunichar {
    let rv = g_unichar_tolower(c)
    return rv
}




/// Converts a character to the titlecase.
@inlinable public func unicharTotitle(c: gunichar) -> gunichar {
    let rv = g_unichar_totitle(c)
    return rv
}




/// Converts a character to uppercase.
@inlinable public func unicharToupper(c: gunichar) -> gunichar {
    let rv = g_unichar_toupper(c)
    return rv
}




/// Classifies a Unicode character by type.
@inlinable public func unicharType(c: gunichar) -> GUnicodeType {
    let rv = g_unichar_type(c)
    return rv
}




/// Checks whether `ch` is a valid Unicode character. Some possible
/// integer values of `ch` will not be valid. 0 is considered a valid
/// character, though it's normally a string terminator.
@inlinable public func unicharValidate(ch: gunichar) -> Bool {
    let rv = ((g_unichar_validate(ch)) != 0)
    return rv
}




/// Determines the numeric value of a character as a hexadecimal
/// digit.
@inlinable public func unicharXdigitValue(c: gunichar) -> Int {
    let rv = Int(g_unichar_xdigit_value(c))
    return rv
}




/// Computes the canonical decomposition of a Unicode character.
///
/// **unicode_canonical_decomposition is deprecated:**
/// Use the more flexible g_unichar_fully_decompose()
///   instead.
@available(*, deprecated) @inlinable public func unicodeCanonicalDecomposition(ch: gunichar, resultLen: UnsafeMutablePointer<gsize>!) -> UnsafeMutablePointer<gunichar>! {
    guard let rv = g_unicode_canonical_decomposition(ch, resultLen) else { return nil }
    return rv
}




/// Computes the canonical ordering of a string in-place.
/// This rearranges decomposed characters in the string
/// according to their combining classes.  See the Unicode
/// manual for more information.
@inlinable public func unicodeCanonicalOrdering(string: UnsafeMutablePointer<gunichar>!, len: Int) {
    g_unicode_canonical_ordering(string, gsize(len))

}




/// Looks up the Unicode script for `iso15924`.  ISO 15924 assigns four-letter
/// codes to scripts.  For example, the code for Arabic is 'Arab'.
/// This function accepts four letter codes encoded as a `guint32` in a
/// big-endian fashion.  That is, the code expected for Arabic is
/// 0x41726162 (0x41 is ASCII code for 'A', 0x72 is ASCII code for 'r', etc).
/// 
/// See
/// [Codes for the representation of names of scripts](http://unicode.org/iso15924/codelists.html)
/// for details.
@inlinable public func unicodeScriptFrom(iso15924: guint32) -> GUnicodeScript {
    let rv = g_unicode_script_from_iso15924(iso15924)
    return rv
}




/// Looks up the ISO 15924 code for `script`.  ISO 15924 assigns four-letter
/// codes to scripts.  For example, the code for Arabic is 'Arab'.  The
/// four letter codes are encoded as a `guint32` by this function in a
/// big-endian fashion.  That is, the code returned for Arabic is
/// 0x41726162 (0x41 is ASCII code for 'A', 0x72 is ASCII code for 'r', etc).
/// 
/// See
/// [Codes for the representation of names of scripts](http://unicode.org/iso15924/codelists.html)
/// for details.
@inlinable public func unicodeScriptToIso15924(script: GUnicodeScript) -> guint32 {
    let rv = g_unicode_script_to_iso15924(script)
    return rv
}




@inlinable public func unixErrorQuark() -> GQuark {
    let rv = g_unix_error_quark()
    return rv
}




/// Sets a function to be called when the IO condition, as specified by
/// `condition` becomes true for `fd`.
/// 
/// `function` will be called when the specified IO condition becomes
/// `true`.  The function is expected to clear whatever event caused the
/// IO condition to become true and return `true` in order to be notified
/// when it happens again.  If `function` returns `false` then the watch
/// will be cancelled.
/// 
/// The return value of this function can be passed to `g_source_remove()`
/// to cancel the watch at any time that it exists.
/// 
/// The source will never close the fd -- you must do it yourself.
@inlinable public func unixFdAdd(fd: Int, condition: IOCondition, function: GUnixFDSourceFunc?, userData: gpointer! = nil) -> Int {
    let rv = Int(g_unix_fd_add(gint(fd), condition.value, function, userData))
    return rv
}




/// Sets a function to be called when the IO condition, as specified by
/// `condition` becomes true for `fd`.
/// 
/// This is the same as `g_unix_fd_add()`, except that it allows you to
/// specify a non-default priority and a provide a `GDestroyNotify` for
/// `user_data`.
@inlinable public func unixFdAddFull(priority: Int, fd: Int, condition: IOCondition, function: GUnixFDSourceFunc?, userData: gpointer! = nil, notify: GDestroyNotify?) -> Int {
    let rv = Int(g_unix_fd_add_full(gint(priority), gint(fd), condition.value, function, userData, notify))
    return rv
}




/// Creates a `GSource` to watch for a particular IO condition on a file
/// descriptor.
/// 
/// The source will never close the fd -- you must do it yourself.
@inlinable public func unixFdSourceNew(fd: Int, condition: IOCondition) -> SourceRef! {
    guard let rv = SourceRef(gconstpointer: gconstpointer(g_unix_fd_source_new(gint(fd), condition.value))) else { return nil }
    return rv
}




/// Get the `passwd` file entry for the given `user_name` using ``getpwnam_r()``.
/// This can fail if the given `user_name` doesn’t exist.
/// 
/// The returned `struct passwd` has been allocated using `g_malloc()` and should
/// be freed using `g_free()`. The strings referenced by the returned struct are
/// included in the same allocation, so are valid until the `struct passwd` is
/// freed.
/// 
/// This function is safe to call from multiple threads concurrently.
/// 
/// You will need to include `pwd.h` to get the definition of `struct passwd`.
@inlinable public func unixGetPasswdEntry(userName: UnsafePointer<gchar>!) throws -> UnsafeMutablePointer<passwd>? {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = g_unix_get_passwd_entry(userName, &error)
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}




/// Similar to the UNIX `pipe()` call, but on modern systems like Linux
/// uses the `pipe2()` system call, which atomically creates a pipe with
/// the configured flags. The only supported flag currently is
/// `FD_CLOEXEC`. If for example you want to configure `O_NONBLOCK`, that
/// must still be done separately with `fcntl()`.
/// 
/// This function does not take `O_CLOEXEC`, it takes `FD_CLOEXEC` as if
/// for `fcntl()`; these are different on Linux/glibc.
@inlinable public func unixOpenPipe(fds: UnsafeMutablePointer<gint>!, flags: Int) throws -> Bool {
    var error: UnsafeMutablePointer<GError>?
    let rv = ((g_unix_open_pipe(fds, gint(flags), &error)) != 0)
    if let error = error { throw GLibError(error) }
    return rv
}




/// Control the non-blocking state of the given file descriptor,
/// according to `nonblock`. On most systems this uses `O_NONBLOCK`, but
/// on some older ones may use `O_NDELAY`.
@inlinable public func unixSetFdNonblocking(fd: Int, nonblock: Bool) throws -> Bool {
    var error: UnsafeMutablePointer<GError>?
    let rv = ((g_unix_set_fd_nonblocking(gint(fd), gboolean((nonblock) ? 1 : 0), &error)) != 0)
    if let error = error { throw GLibError(error) }
    return rv
}




/// A convenience function for `g_unix_signal_source_new()`, which
/// attaches to the default `GMainContext`.  You can remove the watch
/// using `g_source_remove()`.
@inlinable public func unixSignalAdd(signum: Int, handler: GSourceFunc?, userData: gpointer! = nil) -> Int {
    let rv = Int(g_unix_signal_add(gint(signum), handler, userData))
    return rv
}




/// A convenience function for `g_unix_signal_source_new()`, which
/// attaches to the default `GMainContext`.  You can remove the watch
/// using `g_source_remove()`.
@inlinable public func unixSignalAddFull(priority: Int, signum: Int, handler: GSourceFunc?, userData: gpointer! = nil, notify: GDestroyNotify?) -> Int {
    let rv = Int(g_unix_signal_add_full(gint(priority), gint(signum), handler, userData, notify))
    return rv
}




/// Create a `GSource` that will be dispatched upon delivery of the UNIX
/// signal `signum`.  In GLib versions before 2.36, only `SIGHUP`, `SIGINT`,
/// `SIGTERM` can be monitored.  In GLib 2.36, `SIGUSR1` and `SIGUSR2`
/// were added. In GLib 2.54, `SIGWINCH` was added.
/// 
/// Note that unlike the UNIX default, all sources which have created a
/// watch will be dispatched, regardless of which underlying thread
/// invoked `g_unix_signal_source_new()`.
/// 
/// For example, an effective use of this function is to handle `SIGTERM`
/// cleanly; flushing any outstanding files, and then calling
/// g_main_loop_quit ().  It is not safe to do any of this a regular
/// UNIX signal handler; your handler may be invoked while `malloc()` or
/// another library function is running, causing reentrancy if you
/// attempt to use it from the handler.  None of the GLib/GObject API
/// is safe against this kind of reentrancy.
/// 
/// The interaction of this source when combined with native UNIX
/// functions like `sigprocmask()` is not defined.
/// 
/// The source will not initially be associated with any `GMainContext`
/// and must be added to one with `g_source_attach()` before it will be
/// executed.
@inlinable public func unixSignalSourceNew(signum: Int) -> SourceRef! {
    guard let rv = SourceRef(gconstpointer: gconstpointer(g_unix_signal_source_new(gint(signum)))) else { return nil }
    return rv
}




/// A wrapper for the POSIX `unlink()` function. The `unlink()` function
/// deletes a name from the filesystem. If this was the last link to the
/// file and no processes have it opened, the diskspace occupied by the
/// file is freed.
/// 
/// See your C library manual for more details about `unlink()`. Note
/// that on Windows, it is in general not possible to delete files that
/// are open to some process, or mapped into memory.
@inlinable public func unlink(filename: UnsafePointer<gchar>!) -> Int {
    let rv = Int(g_unlink(filename))
    return rv
}




/// Removes an environment variable from the environment.
/// 
/// Note that on some systems, when variables are overwritten, the
/// memory used for the previous variables and its value isn't reclaimed.
/// 
/// You should be mindful of the fact that environment variable handling
/// in UNIX is not thread-safe, and your program may crash if one thread
/// calls `g_unsetenv()` while another thread is calling `getenv()`. (And note
/// that many functions, such as `gettext()`, call `getenv()` internally.) This
/// function is only safe to use at the very start of your program, before
/// creating any other threads (or creating objects that create worker
/// threads of their own).
/// 
/// If you need to set up the environment for a child process, you can
/// use `g_get_environ()` to get an environment array, modify that with
/// `g_environ_setenv()` and `g_environ_unsetenv()`, and then pass that
/// array directly to `execvpe()`, `g_spawn_async()`, or the like.
@inlinable public func unsetenv(variable: UnsafePointer<gchar>!) {
    g_unsetenv(variable)

}




/// Creates a new `GUri` from the given components according to `flags`.
/// 
/// See also `g_uri_build_with_user()`, which allows specifying the
/// components of the "userinfo" separately.
@inlinable public func uriBuild(flags: URIFlags, scheme: UnsafePointer<gchar>!, userinfo: UnsafePointer<gchar>? = nil, host: UnsafePointer<gchar>? = nil, port: Int, path: UnsafePointer<gchar>!, query: UnsafePointer<gchar>? = nil, fragment: UnsafePointer<gchar>? = nil) -> URIRef! {
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
@inlinable public func uriBuildWithUser(flags: URIFlags, scheme: UnsafePointer<gchar>!, user: UnsafePointer<gchar>? = nil, password: UnsafePointer<gchar>? = nil, authParams: UnsafePointer<gchar>? = nil, host: UnsafePointer<gchar>? = nil, port: Int, path: UnsafePointer<gchar>!, query: UnsafePointer<gchar>? = nil, fragment: UnsafePointer<gchar>? = nil) -> URIRef! {
    guard let rv = URIRef(gconstpointer: gconstpointer(g_uri_build_with_user(flags.value, scheme, user, password, authParams, host, gint(port), path, query, fragment))) else { return nil }
    return rv
}




@inlinable public func uriErrorQuark() -> GQuark {
    let rv = g_uri_error_quark()
    return rv
}




/// Escapes arbitrary data for use in a URI.
/// 
/// Normally all characters that are not ‘unreserved’ (i.e. ASCII
/// alphanumerical characters plus dash, dot, underscore and tilde) are
/// escaped. But if you specify characters in `reserved_chars_allowed`
/// they are not escaped. This is useful for the ‘reserved’ characters
/// in the URI specification, since those are allowed unescaped in some
/// portions of a URI.
/// 
/// Though technically incorrect, this will also allow escaping nul
/// bytes as `````00`.
@inlinable public func uriEscapeBytes(unescaped: UnsafePointer<guint8>!, length: Int, reservedCharsAllowed: UnsafePointer<CChar>? = nil) -> String! {
    guard let rv = g_uri_escape_bytes(unescaped, gsize(length), reservedCharsAllowed).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Escapes a string for use in a URI.
/// 
/// Normally all characters that are not "unreserved" (i.e. ASCII
/// alphanumerical characters plus dash, dot, underscore and tilde) are
/// escaped. But if you specify characters in `reserved_chars_allowed`
/// they are not escaped. This is useful for the "reserved" characters
/// in the URI specification, since those are allowed unescaped in some
/// portions of a URI.
@inlinable public func uriEscapeString(unescaped: UnsafePointer<CChar>!, reservedCharsAllowed: UnsafePointer<CChar>? = nil, allowUTF8: Bool) -> String! {
    guard let rv = g_uri_escape_string(unescaped, reservedCharsAllowed, gboolean((allowUTF8) ? 1 : 0)).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Parses `uri_string` according to `flags`, to determine whether it is a valid
/// [absolute URI](#relative-absolute-uris), i.e. it does not need to be resolved
/// relative to another URI using `g_uri_parse_relative()`.
/// 
/// If it’s not a valid URI, an error is returned explaining how it’s invalid.
/// 
/// See `g_uri_split()`, and the definition of `GUriFlags`, for more
/// information on the effect of `flags`.
@inlinable public func uriIsValid(uriString: UnsafePointer<gchar>!, flags: URIFlags) throws -> Bool {
    var error: UnsafeMutablePointer<GError>?
    let rv = ((g_uri_is_valid(uriString, flags.value, &error)) != 0)
    if let error = error { throw GLibError(error) }
    return rv
}




/// Joins the given components together according to `flags` to create
/// an absolute URI string. `path` may not be `nil` (though it may be the empty
/// string).
/// 
/// When `host` is present, `path` must either be empty or begin with a slash (`/`)
/// character. When `host` is not present, `path` cannot begin with two slash
///    characters (`//`). See
/// [RFC 3986, section 3](https://tools.ietf.org/html/rfc3986`section`-3).
/// 
/// See also `g_uri_join_with_user()`, which allows specifying the
/// components of the ‘userinfo’ separately.
/// 
/// `G_URI_FLAGS_HAS_PASSWORD` and `G_URI_FLAGS_HAS_AUTH_PARAMS` are ignored if set
/// in `flags`.
@inlinable public func uriJoin(flags: URIFlags, scheme: UnsafePointer<gchar>? = nil, userinfo: UnsafePointer<gchar>? = nil, host: UnsafePointer<gchar>? = nil, port: Int, path: UnsafePointer<gchar>!, query: UnsafePointer<gchar>? = nil, fragment: UnsafePointer<gchar>? = nil) -> String! {
    guard let rv = g_uri_join(flags.value, scheme, userinfo, host, gint(port), path, query, fragment).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Joins the given components together according to `flags` to create
/// an absolute URI string. `path` may not be `nil` (though it may be the empty
/// string).
/// 
/// In contrast to `g_uri_join()`, this allows specifying the components
/// of the ‘userinfo’ separately. It otherwise behaves the same.
/// 
/// `G_URI_FLAGS_HAS_PASSWORD` and `G_URI_FLAGS_HAS_AUTH_PARAMS` are ignored if set
/// in `flags`.
@inlinable public func uriJoinWithUser(flags: URIFlags, scheme: UnsafePointer<gchar>? = nil, user: UnsafePointer<gchar>? = nil, password: UnsafePointer<gchar>? = nil, authParams: UnsafePointer<gchar>? = nil, host: UnsafePointer<gchar>? = nil, port: Int, path: UnsafePointer<gchar>!, query: UnsafePointer<gchar>? = nil, fragment: UnsafePointer<gchar>? = nil) -> String! {
    guard let rv = g_uri_join_with_user(flags.value, scheme, user, password, authParams, host, gint(port), path, query, fragment).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Splits an URI list conforming to the text/uri-list
/// mime type defined in RFC 2483 into individual URIs,
/// discarding any comments. The URIs are not validated.
@inlinable public func uriListExtractURIs(uriList: UnsafePointer<gchar>!) -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
    guard let rv = g_uri_list_extract_uris(uriList) else { return nil }
    return rv
}




/// Parses `uri_string` according to `flags`. If the result is not a
/// valid [absolute URI](#relative-absolute-uris), it will be discarded, and an
/// error returned.
@inlinable public func uriParse(uriString: UnsafePointer<gchar>!, flags: URIFlags) throws -> URIRef! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = URIRef(gconstpointer: gconstpointer(g_uri_parse(uriString, flags.value, &error)))
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}




/// Many URI schemes include one or more attribute/value pairs as part of the URI
/// value. This method can be used to parse them into a hash table. When an
/// attribute has multiple occurrences, the last value is the final returned
/// value. If you need to handle repeated attributes differently, use
/// `GUriParamsIter`.
/// 
/// The `params` string is assumed to still be ````-encoded, but the returned
/// values will be fully decoded. (Thus it is possible that the returned values
/// may contain `=` or `separators`, if the value was encoded in the input.)
/// Invalid ````-encoding is treated as with the `G_URI_FLAGS_PARSE_RELAXED`
/// rules for `g_uri_parse()`. (However, if `params` is the path or query string
/// from a `GUri` that was parsed without `G_URI_FLAGS_PARSE_RELAXED` and
/// `G_URI_FLAGS_ENCODED`, then you already know that it does not contain any
/// invalid encoding.)
/// 
/// `G_URI_PARAMS_WWW_FORM` is handled as documented for `g_uri_params_iter_init()`.
/// 
/// If `G_URI_PARAMS_CASE_INSENSITIVE` is passed to `flags`, attributes will be
/// compared case-insensitively, so a params string `attr=123&Attr=456` will only
/// return a single attribute–value pair, `Attr=456`. Case will be preserved in
/// the returned attributes.
/// 
/// If `params` cannot be parsed (for example, it contains two `separators`
/// characters in a row), then `error` is set and `nil` is returned.
@inlinable public func uriParse(params: UnsafePointer<gchar>!, length: gssize, separators: UnsafePointer<gchar>!, flags: URIParamsFlags) throws -> GLib.HashTableRef! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = GLib.HashTableRef(g_uri_parse_params(params, length, separators, flags.value, &error))
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}




/// Gets the scheme portion of a URI string.
/// [RFC 3986](https://tools.ietf.org/html/rfc3986`section`-3) decodes the scheme
/// as:
/// ```
/// URI = scheme ":" hier-part [ "?" query ] [ "#" fragment ]
/// ```
/// Common schemes include `file`, `https`, `svn+ssh`, etc.
@inlinable public func uriParseScheme(uri: UnsafePointer<CChar>!) -> String! {
    guard let rv = g_uri_parse_scheme(uri).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Gets the scheme portion of a URI string.
/// [RFC 3986](https://tools.ietf.org/html/rfc3986`section`-3) decodes the scheme
/// as:
/// ```
/// URI = scheme ":" hier-part [ "?" query ] [ "#" fragment ]
/// ```
/// Common schemes include `file`, `https`, `svn+ssh`, etc.
/// 
/// Unlike `g_uri_parse_scheme()`, the returned scheme is normalized to
/// all-lowercase and does not need to be freed.
@inlinable public func uriPeekScheme(uri: UnsafePointer<CChar>!) -> String! {
    guard let rv = g_uri_peek_scheme(uri).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Parses `uri_ref` according to `flags` and, if it is a
/// [relative URI](#relative-absolute-uris), resolves it relative to
/// `base_uri_string`. If the result is not a valid absolute URI, it will be
/// discarded, and an error returned.
/// 
/// (If `base_uri_string` is `nil`, this just returns `uri_ref`, or
/// `nil` if `uri_ref` is invalid or not absolute.)
@inlinable public func uriResolveRelative(baseURIString: UnsafePointer<gchar>? = nil, uriRef: UnsafePointer<gchar>!, flags: URIFlags) throws -> String! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = g_uri_resolve_relative(baseURIString, uriRef, flags.value, &error).map({ String(cString: $0) })
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}




/// Parses `uri_ref` (which can be an
/// [absolute or relative URI](#relative-absolute-uris)) according to `flags`, and
/// returns the pieces. Any component that doesn't appear in `uri_ref` will be
/// returned as `nil` (but note that all URIs always have a path component,
/// though it may be the empty string).
/// 
/// If `flags` contains `G_URI_FLAGS_ENCODED`, then ````-encoded characters in
/// `uri_ref` will remain encoded in the output strings. (If not,
/// then all such characters will be decoded.) Note that decoding will
/// only work if the URI components are ASCII or UTF-8, so you will
/// need to use `G_URI_FLAGS_ENCODED` if they are not.
/// 
/// Note that the `G_URI_FLAGS_HAS_PASSWORD` and
/// `G_URI_FLAGS_HAS_AUTH_PARAMS` `flags` are ignored by `g_uri_split()`,
/// since it always returns only the full userinfo; use
/// `g_uri_split_with_user()` if you want it split up.
@inlinable public func uriSplit(uriRef: UnsafePointer<gchar>!, flags: URIFlags, scheme: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>? = nil, userinfo: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>? = nil, host: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>? = nil, port: UnsafeMutablePointer<gint>! = nil, path: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! = nil, query: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>? = nil, fragment: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>? = nil) throws -> Bool {
    var error: UnsafeMutablePointer<GError>?
    let rv = ((g_uri_split(uriRef, flags.value, scheme, userinfo, host, port, path, query, fragment, &error)) != 0)
    if let error = error { throw GLibError(error) }
    return rv
}




/// Parses `uri_string` (which must be an [absolute URI](#relative-absolute-uris))
/// according to `flags`, and returns the pieces relevant to connecting to a host.
/// See the documentation for `g_uri_split()` for more details; this is
/// mostly a wrapper around that function with simpler arguments.
/// However, it will return an error if `uri_string` is a relative URI,
/// or does not contain a hostname component.
@inlinable public func uriSplitNetwork(uriString: UnsafePointer<gchar>!, flags: URIFlags, scheme: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>? = nil, host: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>? = nil, port: UnsafeMutablePointer<gint>! = nil) throws -> Bool {
    var error: UnsafeMutablePointer<GError>?
    let rv = ((g_uri_split_network(uriString, flags.value, scheme, host, port, &error)) != 0)
    if let error = error { throw GLibError(error) }
    return rv
}




/// Parses `uri_ref` (which can be an
/// [absolute or relative URI](#relative-absolute-uris)) according to `flags`, and
/// returns the pieces. Any component that doesn't appear in `uri_ref` will be
/// returned as `nil` (but note that all URIs always have a path component,
/// though it may be the empty string).
/// 
/// See `g_uri_split()`, and the definition of `GUriFlags`, for more
/// information on the effect of `flags`. Note that `password` will only
/// be parsed out if `flags` contains `G_URI_FLAGS_HAS_PASSWORD`, and
/// `auth_params` will only be parsed out if `flags` contains
/// `G_URI_FLAGS_HAS_AUTH_PARAMS`.
@inlinable public func uriSplitWithUser(uriRef: UnsafePointer<gchar>!, flags: URIFlags, scheme: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>? = nil, user: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>? = nil, password: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>? = nil, authParams: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>? = nil, host: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>? = nil, port: UnsafeMutablePointer<gint>! = nil, path: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! = nil, query: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>? = nil, fragment: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>? = nil) throws -> Bool {
    var error: UnsafeMutablePointer<GError>?
    let rv = ((g_uri_split_with_user(uriRef, flags.value, scheme, user, password, authParams, host, port, path, query, fragment, &error)) != 0)
    if let error = error { throw GLibError(error) }
    return rv
}




/// Unescapes a segment of an escaped string as binary data.
/// 
/// Note that in contrast to `g_uri_unescape_string()`, this does allow
/// nul bytes to appear in the output.
/// 
/// If any of the characters in `illegal_characters` appears as an escaped
/// character in `escaped_string`, then that is an error and `nil` will be
/// returned. This is useful if you want to avoid for instance having a slash
/// being expanded in an escaped path element, which might confuse pathname
/// handling.
@inlinable public func uriUnescapeBytes(escapedString: UnsafePointer<CChar>!, length: gssize, illegalCharacters: UnsafePointer<CChar>? = nil) throws -> BytesRef! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = BytesRef(gconstpointer: gconstpointer(g_uri_unescape_bytes(escapedString, length, illegalCharacters, &error)))
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}




/// Unescapes a segment of an escaped string.
/// 
/// If any of the characters in `illegal_characters` or the NUL
/// character appears as an escaped character in `escaped_string`, then
/// that is an error and `nil` will be returned. This is useful if you
/// want to avoid for instance having a slash being expanded in an
/// escaped path element, which might confuse pathname handling.
/// 
/// Note: `NUL` byte is not accepted in the output, in contrast to
/// `g_uri_unescape_bytes()`.
@inlinable public func uriUnescapeSegment(escapedString: UnsafePointer<CChar>? = nil, escapedStringEnd: UnsafePointer<CChar>? = nil, illegalCharacters: UnsafePointer<CChar>? = nil) -> String! {
    guard let rv = g_uri_unescape_segment(escapedString, escapedStringEnd, illegalCharacters).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Unescapes a whole escaped string.
/// 
/// If any of the characters in `illegal_characters` or the NUL
/// character appears as an escaped character in `escaped_string`, then
/// that is an error and `nil` will be returned. This is useful if you
/// want to avoid for instance having a slash being expanded in an
/// escaped path element, which might confuse pathname handling.
@inlinable public func uriUnescapeString(escapedString: UnsafePointer<CChar>!, illegalCharacters: UnsafePointer<CChar>? = nil) -> String! {
    guard let rv = g_uri_unescape_string(escapedString, illegalCharacters).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Pauses the current thread for the given number of microseconds.
/// 
/// There are 1 million microseconds per second (represented by the
/// `G_USEC_PER_SEC` macro). `g_usleep()` may have limited precision,
/// depending on hardware and operating system; don't rely on the exact
/// length of the sleep.
@inlinable public func usleep(microseconds: Int) {
    g_usleep(gulong(microseconds))

}




/// Convert a string from UTF-16 to UCS-4. The result will be
/// nul-terminated.
@inlinable public func utf16ToUCS4(str: UnsafePointer<gunichar2>!, len: Int, itemsRead: UnsafeMutablePointer<glong>! = nil, itemsWritten: UnsafeMutablePointer<glong>! = nil) throws -> UnsafeMutablePointer<gunichar>! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = g_utf16_to_ucs4(str, glong(len), itemsRead, itemsWritten, &error)
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}




/// Convert a string from UTF-16 to UTF-8. The result will be
/// terminated with a 0 byte.
/// 
/// Note that the input is expected to be already in native endianness,
/// an initial byte-order-mark character is not handled specially.
/// `g_convert()` can be used to convert a byte buffer of UTF-16 data of
/// ambiguous endianness.
/// 
/// Further note that this function does not validate the result
/// string; it may e.g. include embedded NUL characters. The only
/// validation done by this function is to ensure that the input can
/// be correctly interpreted as UTF-16, i.e. it doesn't contain
/// unpaired surrogates or partial character sequences.
@inlinable public func utf16ToUTF8(str: UnsafePointer<gunichar2>!, len: Int, itemsRead: UnsafeMutablePointer<glong>! = nil, itemsWritten: UnsafeMutablePointer<glong>! = nil) throws -> String! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = g_utf16_to_utf8(str, glong(len), itemsRead, itemsWritten, &error).map({ String(cString: $0) })
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}




/// Converts a string into a form that is independent of case. The
/// result will not correspond to any particular case, but can be
/// compared for equality or ordered with the results of calling
/// `g_utf8_casefold()` on other strings.
/// 
/// Note that calling `g_utf8_casefold()` followed by `g_utf8_collate()` is
/// only an approximation to the correct linguistic case insensitive
/// ordering, though it is a fairly good one. Getting this exactly
/// right would require a more sophisticated collation function that
/// takes case sensitivity into account. GLib does not currently
/// provide such a function.
@inlinable public func utf8Casefold(str: UnsafePointer<gchar>!, len: gssize) -> String! {
    guard let rv = g_utf8_casefold(str, len).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Compares two strings for ordering using the linguistically
/// correct rules for the [current locale](#setlocale).
/// When sorting a large number of strings, it will be significantly
/// faster to obtain collation keys with `g_utf8_collate_key()` and
/// compare the keys with `strcmp()` when sorting instead of sorting
/// the original strings.
@inlinable public func utf8Collate(str1: UnsafePointer<gchar>!, str2: UnsafePointer<gchar>!) -> Int {
    let rv = Int(g_utf8_collate(str1, str2))
    return rv
}




/// Converts a string into a collation key that can be compared
/// with other collation keys produced by the same function using
/// `strcmp()`.
/// 
/// The results of comparing the collation keys of two strings
/// with `strcmp()` will always be the same as comparing the two
/// original keys with `g_utf8_collate()`.
/// 
/// Note that this function depends on the [current locale](#setlocale).
@inlinable public func utf8CollateKey(str: UnsafePointer<gchar>!, len: gssize) -> String! {
    guard let rv = g_utf8_collate_key(str, len).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Converts a string into a collation key that can be compared
/// with other collation keys produced by the same function using `strcmp()`.
/// 
/// In order to sort filenames correctly, this function treats the dot '.'
/// as a special case. Most dictionary orderings seem to consider it
/// insignificant, thus producing the ordering "event.c" "eventgenerator.c"
/// "event.h" instead of "event.c" "event.h" "eventgenerator.c". Also, we
/// would like to treat numbers intelligently so that "file1" "file10" "file5"
/// is sorted as "file1" "file5" "file10".
/// 
/// Note that this function depends on the [current locale](#setlocale).
@inlinable public func utf8CollateKeyForFilename(str: UnsafePointer<gchar>!, len: gssize) -> String! {
    guard let rv = g_utf8_collate_key_for_filename(str, len).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Finds the start of the next UTF-8 character in the string after `p`.
/// 
/// `p` does not have to be at the beginning of a UTF-8 character. No check
/// is made to see if the character found is actually valid other than
/// it starts with an appropriate byte.
/// 
/// If `end` is `nil`, the return value will never be `nil`: if the end of the
/// string is reached, a pointer to the terminating nul byte is returned. If
/// `end` is non-`nil`, the return value will be `nil` if the end of the string
/// is reached.
@inlinable public func utf8FindNextChar(p: UnsafePointer<gchar>!, end: UnsafePointer<gchar>? = nil) -> String! {
    guard let rv = g_utf8_find_next_char(p, end).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Given a position `p` with a UTF-8 encoded string `str`, find the start
/// of the previous UTF-8 character starting before `p`. Returns `nil` if no
/// UTF-8 characters are present in `str` before `p`.
/// 
/// `p` does not have to be at the beginning of a UTF-8 character. No check
/// is made to see if the character found is actually valid other than
/// it starts with an appropriate byte.
@inlinable public func utf8FindPrevChar(str: UnsafePointer<gchar>!, p: UnsafePointer<gchar>!) -> String! {
    guard let rv = g_utf8_find_prev_char(str, p).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Converts a sequence of bytes encoded as UTF-8 to a Unicode character.
/// 
/// If `p` does not point to a valid UTF-8 encoded character, results
/// are undefined. If you are not sure that the bytes are complete
/// valid Unicode characters, you should use `g_utf8_get_char_validated()`
/// instead.
@inlinable public func utf8GetChar(p: UnsafePointer<gchar>!) -> gunichar {
    let rv = g_utf8_get_char(p)
    return rv
}




/// Convert a sequence of bytes encoded as UTF-8 to a Unicode character.
/// This function checks for incomplete characters, for invalid characters
/// such as characters that are out of the range of Unicode, and for
/// overlong encodings of valid characters.
/// 
/// Note that `g_utf8_get_char_validated()` returns (gunichar)-2 if
/// `max_len` is positive and any of the bytes in the first UTF-8 character
/// sequence are nul.
@inlinable public func utf8GetCharValidated(p: UnsafePointer<gchar>!, maxLen: gssize) -> gunichar {
    let rv = g_utf8_get_char_validated(p, maxLen)
    return rv
}




/// If the provided string is valid UTF-8, return a copy of it. If not,
/// return a copy in which bytes that could not be interpreted as valid Unicode
/// are replaced with the Unicode replacement character (U+FFFD).
/// 
/// For example, this is an appropriate function to use if you have received
/// a string that was incorrectly declared to be UTF-8, and you need a valid
/// UTF-8 version of it that can be logged or displayed to the user, with the
/// assumption that it is close enough to ASCII or UTF-8 to be mostly
/// readable as-is.
@inlinable public func utf8MakeValid(str: UnsafePointer<gchar>!, len: gssize) -> String! {
    guard let rv = g_utf8_make_valid(str, len).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Converts a string into canonical form, standardizing
/// such issues as whether a character with an accent
/// is represented as a base character and combining
/// accent or as a single precomposed character. The
/// string has to be valid UTF-8, otherwise `nil` is
/// returned. You should generally call `g_utf8_normalize()`
/// before comparing two Unicode strings.
/// 
/// The normalization mode `G_NORMALIZE_DEFAULT` only
/// standardizes differences that do not affect the
/// text content, such as the above-mentioned accent
/// representation. `G_NORMALIZE_ALL` also standardizes
/// the "compatibility" characters in Unicode, such
/// as SUPERSCRIPT THREE to the standard forms
/// (in this case DIGIT THREE). Formatting information
/// may be lost but for most text operations such
/// characters should be considered the same.
/// 
/// `G_NORMALIZE_DEFAULT_COMPOSE` and `G_NORMALIZE_ALL_COMPOSE`
/// are like `G_NORMALIZE_DEFAULT` and `G_NORMALIZE_ALL`,
/// but returned a result with composed forms rather
/// than a maximally decomposed form. This is often
/// useful if you intend to convert the string to
/// a legacy encoding or pass it to a system with
/// less capable Unicode handling.
@inlinable public func utf8Normalize(str: UnsafePointer<gchar>!, len: gssize, mode: GNormalizeMode) -> String! {
    guard let rv = g_utf8_normalize(str, len, mode).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Converts from an integer character offset to a pointer to a position
/// within the string.
/// 
/// Since 2.10, this function allows to pass a negative `offset` to
/// step backwards. It is usually worth stepping backwards from the end
/// instead of forwards if `offset` is in the last fourth of the string,
/// since moving forward is about 3 times faster than moving backward.
/// 
/// Note that this function doesn't abort when reaching the end of `str`.
/// Therefore you should be sure that `offset` is within string boundaries
/// before calling that function. Call `g_utf8_strlen()` when unsure.
/// This limitation exists as this function is called frequently during
/// text rendering and therefore has to be as fast as possible.
@inlinable public func utf8OffsetToPointer(str: UnsafePointer<gchar>!, offset: Int) -> String! {
    guard let rv = g_utf8_offset_to_pointer(str, glong(offset)).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Converts from a pointer to position within a string to an integer
/// character offset.
/// 
/// Since 2.10, this function allows `pos` to be before `str`, and returns
/// a negative offset in this case.
@inlinable public func utf8PointerToOffset(str: UnsafePointer<gchar>!, pos: UnsafePointer<gchar>!) -> Int {
    let rv = Int(g_utf8_pointer_to_offset(str, pos))
    return rv
}




/// Finds the previous UTF-8 character in the string before `p`.
/// 
/// `p` does not have to be at the beginning of a UTF-8 character. No check
/// is made to see if the character found is actually valid other than
/// it starts with an appropriate byte. If `p` might be the first
/// character of the string, you must use `g_utf8_find_prev_char()` instead.
@inlinable public func utf8PrevChar(p: UnsafePointer<gchar>!) -> String! {
    guard let rv = g_utf8_prev_char(p).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Finds the leftmost occurrence of the given Unicode character
/// in a UTF-8 encoded string, while limiting the search to `len` bytes.
/// If `len` is -1, allow unbounded search.
@inlinable public func utf8Strchr(p: UnsafePointer<gchar>!, len: gssize, c: gunichar) -> String! {
    guard let rv = g_utf8_strchr(p, len, c).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Converts all Unicode characters in the string that have a case
/// to lowercase. The exact manner that this is done depends
/// on the current locale, and may result in the number of
/// characters in the string changing.
@inlinable public func utf8Strdown(str: UnsafePointer<gchar>!, len: gssize) -> String! {
    guard let rv = g_utf8_strdown(str, len).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Computes the length of the string in characters, not including
/// the terminating nul character. If the `max`'th byte falls in the
/// middle of a character, the last (partial) character is not counted.
@inlinable public func utf8Strlen(p: UnsafePointer<gchar>!, max: gssize) -> Int {
    let rv = Int(g_utf8_strlen(p, max))
    return rv
}




/// Like the standard C `strncpy()` function, but copies a given number
/// of characters instead of a given number of bytes. The `src` string
/// must be valid UTF-8 encoded text. (Use `g_utf8_validate()` on all
/// text before trying to use UTF-8 utility functions with it.)
/// 
/// Note you must ensure `dest` is at least 4 * `n` to fit the
/// largest possible UTF-8 characters
@inlinable public func utf8Strncpy(dest: UnsafeMutablePointer<gchar>!, src: UnsafePointer<gchar>!, n: Int) -> String! {
    guard let rv = g_utf8_strncpy(dest, src, gsize(n)).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Find the rightmost occurrence of the given Unicode character
/// in a UTF-8 encoded string, while limiting the search to `len` bytes.
/// If `len` is -1, allow unbounded search.
@inlinable public func utf8Strrchr(p: UnsafePointer<gchar>!, len: gssize, c: gunichar) -> String! {
    guard let rv = g_utf8_strrchr(p, len, c).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Reverses a UTF-8 string. `str` must be valid UTF-8 encoded text.
/// (Use `g_utf8_validate()` on all text before trying to use UTF-8
/// utility functions with it.)
/// 
/// This function is intended for programmatic uses of reversed strings.
/// It pays no attention to decomposed characters, combining marks, byte
/// order marks, directional indicators (LRM, LRO, etc) and similar
/// characters which might need special handling when reversing a string
/// for display purposes.
/// 
/// Note that unlike `g_strreverse()`, this function returns
/// newly-allocated memory, which should be freed with `g_free()` when
/// no longer needed.
@inlinable public func utf8Strreverse(str: UnsafePointer<gchar>!, len: gssize) -> String! {
    guard let rv = g_utf8_strreverse(str, len).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Converts all Unicode characters in the string that have a case
/// to uppercase. The exact manner that this is done depends
/// on the current locale, and may result in the number of
/// characters in the string increasing. (For instance, the
/// German ess-zet will be changed to SS.)
@inlinable public func utf8Strup(str: UnsafePointer<gchar>!, len: gssize) -> String! {
    guard let rv = g_utf8_strup(str, len).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Copies a substring out of a UTF-8 encoded string.
/// The substring will contain `end_pos` - `start_pos` characters.
@inlinable public func utf8Substring(str: UnsafePointer<gchar>!, startPos: Int, endPos: Int) -> String! {
    guard let rv = g_utf8_substring(str, glong(startPos), glong(endPos)).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Convert a string from UTF-8 to a 32-bit fixed width
/// representation as UCS-4. A trailing 0 character will be added to the
/// string after the converted text.
@inlinable public func utf8ToUCS4(str: UnsafePointer<gchar>!, len: Int, itemsRead: UnsafeMutablePointer<glong>! = nil, itemsWritten: UnsafeMutablePointer<glong>! = nil) throws -> UnsafeMutablePointer<gunichar>! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = g_utf8_to_ucs4(str, glong(len), itemsRead, itemsWritten, &error)
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}




/// Convert a string from UTF-8 to a 32-bit fixed width
/// representation as UCS-4, assuming valid UTF-8 input.
/// This function is roughly twice as fast as `g_utf8_to_ucs4()`
/// but does no error checking on the input. A trailing 0 character
/// will be added to the string after the converted text.
@inlinable public func utf8ToUCS4Fast(str: UnsafePointer<gchar>!, len: Int, itemsWritten: UnsafeMutablePointer<glong>! = nil) -> UnsafeMutablePointer<gunichar>! {
    guard let rv = g_utf8_to_ucs4_fast(str, glong(len), itemsWritten) else { return nil }
    return rv
}




/// Convert a string from UTF-8 to UTF-16. A 0 character will be
/// added to the result after the converted text.
@inlinable public func utf8ToUTF16(str: UnsafePointer<gchar>!, len: Int, itemsRead: UnsafeMutablePointer<glong>! = nil, itemsWritten: UnsafeMutablePointer<glong>! = nil) throws -> UnsafeMutablePointer<gunichar2>! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = g_utf8_to_utf16(str, glong(len), itemsRead, itemsWritten, &error)
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}




/// Validates UTF-8 encoded text. `str` is the text to validate;
/// if `str` is nul-terminated, then `max_len` can be -1, otherwise
/// `max_len` should be the number of bytes to validate.
/// If `end` is non-`nil`, then the end of the valid range
/// will be stored there (i.e. the start of the first invalid
/// character if some bytes were invalid, or the end of the text
/// being validated otherwise).
/// 
/// Note that `g_utf8_validate()` returns `false` if `max_len` is
/// positive and any of the `max_len` bytes are nul.
/// 
/// Returns `true` if all of `str` was valid. Many GLib and GTK+
/// routines require valid UTF-8 as input; so data read from a file
/// or the network should be checked with `g_utf8_validate()` before
/// doing anything else with it.
@inlinable public func utf8Validate(str: UnsafePointer<gchar>!, maxLen: gssize, end: UnsafeMutablePointer<UnsafePointer<gchar>?>! = nil) -> Bool {
    let rv = ((g_utf8_validate(str, maxLen, end)) != 0)
    return rv
}




/// Validates UTF-8 encoded text.
/// 
/// As with `g_utf8_validate()`, but `max_len` must be set, and hence this function
/// will always return `false` if any of the bytes of `str` are nul.
@inlinable public func utf8ValidateLen(str: UnsafePointer<gchar>!, maxLen: Int, end: UnsafeMutablePointer<UnsafePointer<gchar>?>! = nil) -> Bool {
    let rv = ((g_utf8_validate_len(str, gsize(maxLen), end)) != 0)
    return rv
}




/// Parses the string `str` and verify if it is a UUID.
/// 
/// The function accepts the following syntax:
/// 
/// - simple forms (e.g. `f81d4fae-7dec-11d0-a765-00a0c91e6bf6`)
/// 
/// Note that hyphens are required within the UUID string itself,
/// as per the aforementioned RFC.
@inlinable public func uuidStringIsValid(str: UnsafePointer<gchar>!) -> Bool {
    let rv = ((g_uuid_string_is_valid(str)) != 0)
    return rv
}




/// Generates a random UUID (RFC 4122 version 4) as a string. It has the same
/// randomness guarantees as `GRand`, so must not be used for cryptographic
/// purposes such as key generation, nonces, salts or one-time pads.
@inlinable public func uuidStringRandom() -> String! {
    guard let rv = g_uuid_string_random().map({ String(cString: $0) }) else { return nil }
    return rv
}




@inlinable public func variantGetGtype() -> GType {
    let rv = g_variant_get_gtype()
    return rv
}




/// Determines if a given string is a valid D-Bus object path.  You
/// should ensure that a string is a valid D-Bus object path before
/// passing it to `g_variant_new_object_path()`.
/// 
/// A valid object path starts with `/` followed by zero or more
/// sequences of characters separated by `/` characters.  Each sequence
/// must contain only the characters `[A-Z](#a-z)(#0-9)_`.  No sequence
/// (including the one following the final `/` character) may be empty.
@inlinable public func variantIsObjectPath(string: UnsafePointer<gchar>!) -> Bool {
    let rv = ((g_variant_is_object_path(string)) != 0)
    return rv
}




/// Determines if a given string is a valid D-Bus type signature.  You
/// should ensure that a string is a valid D-Bus type signature before
/// passing it to `g_variant_new_signature()`.
/// 
/// D-Bus type signatures consist of zero or more definite `GVariantType`
/// strings in sequence.
@inlinable public func variantIsSignature(string: UnsafePointer<gchar>!) -> Bool {
    let rv = ((g_variant_is_signature(string)) != 0)
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
@inlinable public func variantParse(type: VariantTypeRef? = nil, text: UnsafePointer<gchar>!, limit: UnsafePointer<gchar>? = nil, endptr: UnsafeMutablePointer<UnsafePointer<gchar>?>? = nil) throws -> VariantRef! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = VariantRef(gconstpointer: gconstpointer(g_variant_parse(type?.variant_type_ptr, text, limit, endptr, &error)))
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
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
@inlinable public func variantParse<VariantTypeT: VariantTypeProtocol>(type: VariantTypeT?, text: UnsafePointer<gchar>!, limit: UnsafePointer<gchar>? = nil, endptr: UnsafeMutablePointer<UnsafePointer<gchar>?>? = nil) throws -> VariantRef! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = VariantRef(gconstpointer: gconstpointer(g_variant_parse(type?.variant_type_ptr, text, limit, endptr, &error)))
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}




/// Pretty-prints a message showing the context of a `GVariant` parse
/// error within the string for which parsing was attempted.
/// 
/// The resulting string is suitable for output to the console or other
/// monospace media where newlines are treated in the usual way.
/// 
/// The message will typically look something like one of the following:
/// 
/// ```
/// unterminated string constant:
///   (1, 2, 3, 'abc
///             ^^^^
/// ```
/// 
/// or
/// 
/// ```
/// unable to find a common type:
///   [1, 2, 3, 'str']
///    ^        ^^^^^
/// ```
/// 
/// The format of the message may change in a future version.
/// 
/// `error` must have come from a failed attempt to `g_variant_parse()` and
/// `source_str` must be exactly the same string that caused the error.
/// If `source_str` was not nul-terminated when you passed it to
/// `g_variant_parse()` then you must add nul termination before using this
/// function.
@inlinable public func variantParseErrorPrintContext<GLibErrorT: ErrorProtocol>(error: GLibErrorT, sourceStr: UnsafePointer<gchar>!) -> String! {
    guard let rv = g_variant_parse_error_print_context(error.error_ptr, sourceStr).map({ String(cString: $0) }) else { return nil }
    return rv
}




@inlinable public func variantParseErrorQuark() -> GQuark {
    let rv = g_variant_parse_error_quark()
    return rv
}




/// Same as `g_variant_error_quark()`.
///
/// **variant_parser_get_error_quark is deprecated:**
/// Use g_variant_parse_error_quark() instead.
@available(*, deprecated) @inlinable public func variantParserGetErrorQuark() -> GQuark {
    let rv = g_variant_parser_get_error_quark()
    return rv
}




@inlinable public func variantTypeChecked_(arg0: UnsafePointer<gchar>!) -> VariantTypeRef! {
    guard let rv = VariantTypeRef(gconstpointer: gconstpointer(g_variant_type_checked_(arg0))) else { return nil }
    return rv
}




@inlinable public func variantTypeStringGetDepth_(typeString: UnsafePointer<gchar>!) -> Int {
    let rv = Int(g_variant_type_string_get_depth_(typeString))
    return rv
}




/// Checks if `type_string` is a valid GVariant type string.  This call is
/// equivalent to calling `g_variant_type_string_scan()` and confirming
/// that the following character is a nul terminator.
@inlinable public func variantTypeStringIsValid(typeString: UnsafePointer<gchar>!) -> Bool {
    let rv = ((g_variant_type_string_is_valid(typeString)) != 0)
    return rv
}




/// Scan for a single complete and valid GVariant type string in `string`.
/// The memory pointed to by `limit` (or bytes beyond it) is never
/// accessed.
/// 
/// If a valid type string is found, `endptr` is updated to point to the
/// first character past the end of the string that was found and `true`
/// is returned.
/// 
/// If there is no valid type string starting at `string`, or if the type
/// string does not end before `limit` then `false` is returned.
/// 
/// For the simple case of checking if a string is a valid type string,
/// see `g_variant_type_string_is_valid()`.
@inlinable public func variantTypeStringScan(string: UnsafePointer<gchar>!, limit: UnsafePointer<gchar>? = nil, endptr: UnsafeMutablePointer<UnsafePointer<gchar>?>! = nil) -> Bool {
    let rv = ((g_variant_type_string_scan(string, limit, endptr)) != 0)
    return rv
}




/// An implementation of the GNU `vasprintf()` function which supports
/// positional parameters, as specified in the Single Unix Specification.
/// This function is similar to `g_vsprintf()`, except that it allocates a
/// string to hold the output, instead of putting the output in a buffer
/// you allocate in advance.
/// 
/// The returned value in `string` is guaranteed to be non-NULL, unless
/// `format` contains ``lc`` or ``ls`` conversions, which can fail if no
/// multibyte representation is available for the given character.
/// 
/// `glib/gprintf.h` must be explicitly included in order to use this function.
@inlinable public func vasprintf(string: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>!, format: UnsafePointer<gchar>!, args: CVaListPointer) -> Int {
    let rv = Int(g_vasprintf(string, format, args))
    return rv
}




/// An implementation of the standard `fprintf()` function which supports
/// positional parameters, as specified in the Single Unix Specification.
/// 
/// `glib/gprintf.h` must be explicitly included in order to use this function.
@inlinable public func vfprintf(file: UnsafeMutablePointer<FILE>!, format: UnsafePointer<gchar>!, args: CVaListPointer) -> Int {
    let rv = Int(g_vfprintf(file, format, args))
    return rv
}




/// An implementation of the standard `vprintf()` function which supports
/// positional parameters, as specified in the Single Unix Specification.
/// 
/// `glib/gprintf.h` must be explicitly included in order to use this function.
@inlinable public func vprintf(format: UnsafePointer<gchar>!, args: CVaListPointer) -> Int {
    let rv = Int(g_vprintf(format, args))
    return rv
}




/// A safer form of the standard `vsprintf()` function. The output is guaranteed
/// to not exceed `n` characters (including the terminating nul character), so
/// it is easy to ensure that a buffer overflow cannot occur.
/// 
/// See also `g_strdup_vprintf()`.
/// 
/// In versions of GLib prior to 1.2.3, this function may return -1 if the
/// output was truncated, and the truncated string may not be nul-terminated.
/// In versions prior to 1.3.12, this function returns the length of the output
/// string.
/// 
/// The return value of `g_vsnprintf()` conforms to the `vsnprintf()` function
/// as standardized in ISO C99. Note that this is different from traditional
/// `vsnprintf()`, which returns the length of the output string.
/// 
/// The format string may contain positional parameters, as specified in
/// the Single Unix Specification.
@inlinable public func vsnprintf(string: UnsafeMutablePointer<gchar>!, n: Int, format: UnsafePointer<gchar>!, args: CVaListPointer) -> Int {
    let rv = Int(g_vsnprintf(string, gulong(n), format, args))
    return rv
}




/// An implementation of the standard `vsprintf()` function which supports
/// positional parameters, as specified in the Single Unix Specification.
/// 
/// `glib/gprintf.h` must be explicitly included in order to use this function.
@inlinable public func vsprintf(string: UnsafeMutablePointer<gchar>!, format: UnsafePointer<gchar>!, args: CVaListPointer) -> Int {
    let rv = Int(g_vsprintf(string, format, args))
    return rv
}




/// Internal function used to print messages from the public `g_warn_if_reached()`
/// and `g_warn_if_fail()` macros.
@inlinable public func warnMessage(domain: UnsafePointer<CChar>? = nil, file: UnsafePointer<CChar>!, line: Int, `func`: UnsafePointer<CChar>!, warnexpr: UnsafePointer<CChar>? = nil) {
    g_warn_message(domain, file, gint(line), `func`, warnexpr)

}


