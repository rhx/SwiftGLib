import CGLib

/// Integer representing a day of the month; between 1 and 31.
/// `G_DATE_BAD_DAY` represents an invalid day of the month.
public typealias DateDay = GDateDay

public typealias NativeSocketAddress = GNativeSocketAddress
public typealias NativeSocketAddressPrivate = GNativeSocketAddressPrivate
public typealias NativeSocketAddressClass = GNativeSocketAddressClass


/// Integer representing a year; `G_DATE_BAD_YEAR` is the invalid
/// value. The year must be 1 or higher; negative (BC) years are not
/// allowed. The year is represented with four digits.
public typealias DateYear = GDateYear

/// Opaque type. See g_mutex_locker_new() for details.
public typealias MutexLocker = GMutexLocker

/// A type which is used to hold a process identification.
/// 
/// On UNIX, processes are identified by a process id (an integer),
/// while Windows uses process handles (which are pointers).
/// 
/// GPid is used in GLib only for descendant processes spawned with
/// the g_spawn functions.
public typealias Pid = GPid

/// A GQuark is a non-zero integer which uniquely identifies a
/// particular string. A GQuark value of zero is associated to `nil`.
public typealias Quark = GQuark

/// Opaque type. See g_rw_lock_reader_locker_new() for details.
// GRWLockReaderLocker is a void typedef in C = GRWLockReaderLocker

/// Opaque type. See g_rw_lock_writer_locker_new() for details.
// GRWLockWriterLocker is a void typedef in C = GRWLockWriterLocker

/// Opaque type. See g_rec_mutex_locker_new() for details.
public typealias RecMutexLocker = GRecMutexLocker

/// A typedef for a reference-counted string. A pointer to a `GRefString` can be
/// treated like a standard `char*` array by all code, but can additionally have
/// `g_ref_string_*()` methods called on it. `g_ref_string_*()` methods cannot be
/// called on `char*` arrays not allocated using g_ref_string_new().
/// 
/// If using `GRefString` with autocleanups, g_autoptr() must be used rather than
/// g_autofree(), so that the reference counting metadata is also freed.
public typealias RefString = GRefString

/// A typedef alias for gchar**. This is mostly useful when used together with
/// g_auto().
public typealias Strv = GStrv

/// Simply a replacement for `time_t`. It has been deprecated
/// since it is not equivalent to `time_t` on 64-bit platforms
/// with a 64-bit `time_t`. Unrelated to `GTimer`.
/// 
/// Note that `GTime` is defined to always be a 32-bit integer,
/// unlike `time_t` which may be 64-bit on some systems. Therefore,
/// `GTime` will overflow in the year 2038, and you cannot use the
/// address of a `GTime` variable as argument to the UNIX time()
/// function.
/// 
/// Instead, do the following:
/// |[<!-- language="C" -->
/// time_t ttime;
/// GTime gtime;
/// 
/// time (&ttime);
/// gtime = (GTime)ttime;
/// ]|
///
/// **Time is deprecated:**
/// This is not [Y2038-safe](https://en.wikipedia.org/wiki/Year_2038_problem).
///    Use #GDateTime or #time_t instead.
public typealias Time = GTime

/// A value representing an interval of time, in microseconds.
public typealias TimeSpan = GTimeSpan

public typealias Type_ = GType
