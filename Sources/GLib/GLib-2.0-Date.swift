import CGLib

// MARK: - Date Record

/// The `DateProtocol` protocol exposes the methods and properties of an underlying `GDate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Date`.
/// Alternatively, use `DateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Represents a day between January 1, Year 1 and a few thousand years in
/// the future. None of its members should be accessed directly.
/// 
/// If the `GDate`-struct is obtained from `g_date_new()`, it will be safe
/// to mutate but invalid and thus not safe for calendrical computations.
/// 
/// If it's declared on the stack, it will contain garbage so must be
/// initialized with `g_date_clear()`. `g_date_clear()` makes the date invalid
/// but sane. An invalid date doesn't represent a day, it's "empty." A date
/// becomes valid after you set it to a Julian day or you set a day, month,
/// and year.
public protocol DateProtocol {
    /// Untyped pointer to the underlying `GDate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDate` instance.
    var date_ptr: UnsafeMutablePointer<GDate> { get }
}

/// The `DateRef` type acts as a lightweight Swift reference to an underlying `GDate` instance.
/// It exposes methods that can operate on this data type through `DateProtocol` conformance.
/// Use `DateRef` only as an `unowned` reference to an existing `GDate` instance.
///
/// Represents a day between January 1, Year 1 and a few thousand years in
/// the future. None of its members should be accessed directly.
/// 
/// If the `GDate`-struct is obtained from `g_date_new()`, it will be safe
/// to mutate but invalid and thus not safe for calendrical computations.
/// 
/// If it's declared on the stack, it will contain garbage so must be
/// initialized with `g_date_clear()`. `g_date_clear()` makes the date invalid
/// but sane. An invalid date doesn't represent a day, it's "empty." A date
/// becomes valid after you set it to a Julian day or you set a day, month,
/// and year.
public struct DateRef: DateProtocol {
    /// Untyped pointer to the underlying `GDate` instance.
    /// For type-safe access, use the generated, typed pointer `date_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DateProtocol`
    init<T: DateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Allocates a `GDate` and initializes
    /// it to a sane state. The new date will
    /// be cleared (as if you'd called `g_date_clear()`) but invalid (it won't
    /// represent an existing day). Free the return value with `g_date_free()`.
    init() {
        let rv = g_date_new()
        self.init(cast(rv))
    }

    /// Like `g_date_new()`, but also sets the value of the date. Assuming the
    /// day-month-year triplet you pass in represents an existing day, the
    /// returned date will be valid.
    init(dmy day: DateDay, month: DateMonth, year: DateYear) {
        let rv = g_date_new_dmy(day, month, year)
        self.init(cast(rv))
    }

    /// Like `g_date_new()`, but also sets the value of the date. Assuming the
    /// Julian day number you pass in is valid (greater than 0, less than an
    /// unreasonably large number), the returned date will be valid.
    init(julian julian_day: UInt32) {
        let rv = g_date_new_julian(guint32(julian_day))
        self.init(cast(rv))
    }
    /// Like `g_date_new()`, but also sets the value of the date. Assuming the
    /// day-month-year triplet you pass in represents an existing day, the
    /// returned date will be valid.
    static func new(dmy day: DateDay, month: DateMonth, year: DateYear) -> DateRef! {
        let rv = g_date_new_dmy(day, month, year)
        return rv.map { DateRef(cast($0)) }
    }

    /// Like `g_date_new()`, but also sets the value of the date. Assuming the
    /// Julian day number you pass in is valid (greater than 0, less than an
    /// unreasonably large number), the returned date will be valid.
    static func new(julian julian_day: UInt32) -> DateRef! {
        let rv = g_date_new_julian(guint32(julian_day))
        return rv.map { DateRef(cast($0)) }
    }
}

/// The `Date` type acts as an owner of an underlying `GDate` instance.
/// It provides the methods that can operate on this data type through `DateProtocol` conformance.
/// Use `Date` as a strong reference or owner of a `GDate` instance.
///
/// Represents a day between January 1, Year 1 and a few thousand years in
/// the future. None of its members should be accessed directly.
/// 
/// If the `GDate`-struct is obtained from `g_date_new()`, it will be safe
/// to mutate but invalid and thus not safe for calendrical computations.
/// 
/// If it's declared on the stack, it will contain garbage so must be
/// initialized with `g_date_clear()`. `g_date_clear()` makes the date invalid
/// but sane. An invalid date doesn't represent a day, it's "empty." A date
/// becomes valid after you set it to a Julian day or you set a day, month,
/// and year.
open class Date: DateProtocol {
    /// Untyped pointer to the underlying `GDate` instance.
    /// For type-safe access, use the generated, typed pointer `date_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Date` instance.
    public init(_ op: UnsafeMutablePointer<GDate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DateProtocol`
    /// `GDate` does not allow reference counting.
    public convenience init<T: DateProtocol>(_ other: T) {
        self.init(cast(other.date_ptr))
        // no reference counting for GDate, cannot ref(cast(date_ptr))
    }

    /// Do-nothing destructor for`GDate`.
    deinit {
        // no reference counting for GDate, cannot unref(cast(date_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDate>(opaquePointer))
    }

    /// Allocates a `GDate` and initializes
    /// it to a sane state. The new date will
    /// be cleared (as if you'd called `g_date_clear()`) but invalid (it won't
    /// represent an existing day). Free the return value with `g_date_free()`.
    public convenience init() {
        let rv = g_date_new()
        self.init(cast(rv))
    }

    /// Like `g_date_new()`, but also sets the value of the date. Assuming the
    /// day-month-year triplet you pass in represents an existing day, the
    /// returned date will be valid.
    public convenience init(dmy day: DateDay, month: DateMonth, year: DateYear) {
        let rv = g_date_new_dmy(day, month, year)
        self.init(cast(rv))
    }

    /// Like `g_date_new()`, but also sets the value of the date. Assuming the
    /// Julian day number you pass in is valid (greater than 0, less than an
    /// unreasonably large number), the returned date will be valid.
    public convenience init(julian julian_day: UInt32) {
        let rv = g_date_new_julian(guint32(julian_day))
        self.init(cast(rv))
    }

    /// Like `g_date_new()`, but also sets the value of the date. Assuming the
    /// day-month-year triplet you pass in represents an existing day, the
    /// returned date will be valid.
    public static func new(dmy day: DateDay, month: DateMonth, year: DateYear) -> Date! {
        let rv = g_date_new_dmy(day, month, year)
        return rv.map { Date(cast($0)) }
    }

    /// Like `g_date_new()`, but also sets the value of the date. Assuming the
    /// Julian day number you pass in is valid (greater than 0, less than an
    /// unreasonably large number), the returned date will be valid.
    public static func new(julian julian_day: UInt32) -> Date! {
        let rv = g_date_new_julian(guint32(julian_day))
        return rv.map { Date(cast($0)) }
    }

}

// MARK: - no Date properties

// MARK: - no signals


public extension DateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDate` instance.
    var date_ptr: UnsafeMutablePointer<GDate> { return ptr.assumingMemoryBound(to: GDate.self) }

    /// Increments a date some number of days.
    /// To move forward by weeks, add weeks*7 days.
    /// The date must be valid.
    func addDays(nDays n_days: CUnsignedInt) {
        g_date_add_days(cast(date_ptr), guint(n_days))
    
    }

    /// Increments a date by some number of months.
    /// If the day of the month is greater than 28,
    /// this routine may change the day of the month
    /// (because the destination month may not have
    /// the current day in it). The date must be valid.
    func addMonths(nMonths n_months: CUnsignedInt) {
        g_date_add_months(cast(date_ptr), guint(n_months))
    
    }

    /// Increments a date by some number of years.
    /// If the date is February 29, and the destination
    /// year is not a leap year, the date will be changed
    /// to February 28. The date must be valid.
    func addYears(nYears n_years: CUnsignedInt) {
        g_date_add_years(cast(date_ptr), guint(n_years))
    
    }

    /// If `date` is prior to `min_date`, sets `date` equal to `min_date`.
    /// If `date` falls after `max_date`, sets `date` equal to `max_date`.
    /// Otherwise, `date` is unchanged.
    /// Either of `min_date` and `max_date` may be `nil`.
    /// All non-`nil` dates must be valid.
    func clamp(minDate min_date: DateProtocol, maxDate max_date: DateProtocol) {
        g_date_clamp(cast(date_ptr), cast(min_date.ptr), cast(max_date.ptr))
    
    }

    /// Initializes one or more `GDate` structs to a sane but invalid
    /// state. The cleared dates will not represent an existing date, but will
    /// not contain garbage. Useful to init a date declared on the stack.
    /// Validity can be tested with `g_date_valid()`.
    func clear(nDates n_dates: CUnsignedInt) {
        g_date_clear(cast(date_ptr), guint(n_dates))
    
    }

    /// `qsort()`-style comparison function for dates.
    /// Both dates must be valid.
    func compare(rhs: DateProtocol) -> CInt {
        let rv = g_date_compare(cast(date_ptr), cast(rhs.ptr))
        return CInt(rv)
    }

    /// Copies a GDate to a newly-allocated GDate. If the input was invalid
    /// (as determined by `g_date_valid()`), the invalid state will be copied
    /// as is into the new object.
    func copy() -> UnsafeMutablePointer<GDate>! {
        let rv = g_date_copy(cast(date_ptr))
        return cast(rv)
    }

    /// Computes the number of days between two dates.
    /// If `date2` is prior to `date1`, the returned value is negative.
    /// Both dates must be valid.
    func daysBetween(date2: DateProtocol) -> CInt {
        let rv = g_date_days_between(cast(date_ptr), cast(date2.ptr))
        return CInt(rv)
    }

    /// Frees a `GDate` returned from `g_date_new()`.
    func free() {
        g_date_free(cast(date_ptr))
    
    }

    /// Returns the day of the month. The date must be valid.
    func getDay() -> GDateDay {
        let rv = g_date_get_day(cast(date_ptr))
        return rv
    }

    /// Returns the day of the year, where Jan 1 is the first day of the
    /// year. The date must be valid.
    func getDayOfYear() -> CUnsignedInt {
        let rv = g_date_get_day_of_year(cast(date_ptr))
        return CUnsignedInt(rv)
    }

    /// Returns the week of the year, where weeks are interpreted according
    /// to ISO 8601.
    func getIso8601WeekOfYear() -> CUnsignedInt {
        let rv = g_date_get_iso8601_week_of_year(cast(date_ptr))
        return CUnsignedInt(rv)
    }

    /// Returns the Julian day or "serial number" of the `GDate`. The
    /// Julian day is simply the number of days since January 1, Year 1; i.e.,
    /// January 1, Year 1 is Julian day 1; January 2, Year 1 is Julian day 2,
    /// etc. The date must be valid.
    func getJulian() -> UInt32 {
        let rv = g_date_get_julian(cast(date_ptr))
        return UInt32(rv)
    }

    /// Returns the week of the year, where weeks are understood to start on
    /// Monday. If the date is before the first Monday of the year, return 0.
    /// The date must be valid.
    func getMondayWeekOfYear() -> CUnsignedInt {
        let rv = g_date_get_monday_week_of_year(cast(date_ptr))
        return CUnsignedInt(rv)
    }

    /// Returns the month of the year. The date must be valid.
    func getMonth() -> GDateMonth {
        let rv = g_date_get_month(cast(date_ptr))
        return rv
    }

    /// Returns the week of the year during which this date falls, if
    /// weeks are understood to begin on Sunday. The date must be valid.
    /// Can return 0 if the day is before the first Sunday of the year.
    func getSundayWeekOfYear() -> CUnsignedInt {
        let rv = g_date_get_sunday_week_of_year(cast(date_ptr))
        return CUnsignedInt(rv)
    }

    /// Returns the day of the week for a `GDate`. The date must be valid.
    func getWeekday() -> GDateWeekday {
        let rv = g_date_get_weekday(cast(date_ptr))
        return rv
    }

    /// Returns the year of a `GDate`. The date must be valid.
    func getYear() -> GDateYear {
        let rv = g_date_get_year(cast(date_ptr))
        return rv
    }

    /// Checks if `date1` is less than or equal to `date2`,
    /// and swap the values if this is not the case.
    func order(date2: DateProtocol) {
        g_date_order(cast(date_ptr), cast(date2.ptr))
    
    }

    /// Sets the day of the month for a `GDate`. If the resulting
    /// day-month-year triplet is invalid, the date will be invalid.
    func set(day: DateDay) {
        g_date_set_day(cast(date_ptr), day)
    
    }

    /// Sets the value of a `GDate` from a day, month, and year.
    /// The day-month-year triplet must be valid; if you aren't
    /// sure it is, call `g_date_valid_dmy()` to check before you
    /// set it.
    func setDmy(day: DateDay, month: DateMonth, y: DateYear) {
        g_date_set_dmy(cast(date_ptr), day, month, y)
    
    }

    /// Sets the value of a `GDate` from a Julian day number.
    func setJulian(julianDate julian_date: UInt32) {
        g_date_set_julian(cast(date_ptr), guint32(julian_date))
    
    }

    /// Sets the month of the year for a `GDate`.  If the resulting
    /// day-month-year triplet is invalid, the date will be invalid.
    func set(month: DateMonth) {
        g_date_set_month(cast(date_ptr), month)
    
    }

    /// Parses a user-inputted string `str`, and try to figure out what date it
    /// represents, taking the [current locale](#setlocale) into account. If the
    /// string is successfully parsed, the date will be valid after the call.
    /// Otherwise, it will be invalid. You should check using `g_date_valid()`
    /// to see whether the parsing succeeded.
    /// 
    /// This function is not appropriate for file formats and the like; it
    /// isn't very precise, and its exact behavior varies with the locale.
    /// It's intended to be a heuristic routine that guesses what the user
    /// means by a given string (and it does work pretty well in that
    /// capacity).
    func setParse(str: UnsafePointer<gchar>) {
        g_date_set_parse(cast(date_ptr), str)
    
    }

    /// Sets the value of a date from a `GTime` value.
    /// The time to date conversion is done using the user's current timezone.
    ///
    /// **set_time is deprecated:**
    /// Use g_date_set_time_t() instead.
    @available(*, deprecated) func setTime(time_: Time) {
        g_date_set_time(cast(date_ptr), time_)
    
    }

    /// Sets the value of a date to the date corresponding to a time
    /// specified as a time_t. The time to date conversion is done using
    /// the user's current timezone.
    /// 
    /// To set the value of a date to the current day, you could write:
    /// (C Language Example):
    /// ```C
    ///  time_t now = time (NULL);
    ///  if (now == (time_t) -1)
    ///    // handle the error
    ///  g_date_set_time_t (date, now);
    /// ```
    /// 
    func setTimeT(timet: CLong) {
        g_date_set_time_t(cast(date_ptr), timet)
    
    }

    /// Sets the value of a date from a `GTimeVal` value.  Note that the
    /// `tv_usec` member is ignored, because `GDate` can't make use of the
    /// additional precision.
    /// 
    /// The time to date conversion is done using the user's current timezone.
    ///
    /// **set_time_val is deprecated:**
    /// #GTimeVal is not year-2038-safe. Use g_date_set_time_t()
    ///    instead.
    @available(*, deprecated) func setTimeVal(timeval: TimeValProtocol) {
        g_date_set_time_val(cast(date_ptr), cast(timeval.ptr))
    
    }

    /// Sets the year for a `GDate`. If the resulting day-month-year
    /// triplet is invalid, the date will be invalid.
    func set(year: DateYear) {
        g_date_set_year(cast(date_ptr), year)
    
    }

    /// Moves a date some number of days into the past.
    /// To move by weeks, just move by weeks*7 days.
    /// The date must be valid.
    func subtractDays(nDays n_days: CUnsignedInt) {
        g_date_subtract_days(cast(date_ptr), guint(n_days))
    
    }

    /// Moves a date some number of months into the past.
    /// If the current day of the month doesn't exist in
    /// the destination month, the day of the month
    /// may change. The date must be valid.
    func subtractMonths(nMonths n_months: CUnsignedInt) {
        g_date_subtract_months(cast(date_ptr), guint(n_months))
    
    }

    /// Moves a date some number of years into the past.
    /// If the current day doesn't exist in the destination
    /// year (i.e. it's February 29 and you move to a non-leap-year)
    /// then the day is changed to February 29. The date
    /// must be valid.
    func subtractYears(nYears n_years: CUnsignedInt) {
        g_date_subtract_years(cast(date_ptr), guint(n_years))
    
    }

    /// Fills in the date-related bits of a struct tm using the `date` value.
    /// Initializes the non-date parts with something sane but meaningless.
    func toStructTm(tm_: UnsafeMutablePointer<tm>) {
        g_date_to_struct_tm(cast(date_ptr), cast(tm_))
    
    }

    /// Returns `true` if the `GDate` represents an existing day. The date must not
    /// contain garbage; it should have been initialized with `g_date_clear()`
    /// if it wasn't allocated by one of the `g_date_new()` variants.
    func valid() -> Bool {
        let rv = g_date_valid(cast(date_ptr))
        return Bool(rv != 0)
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
    func strftime(s: UnsafeMutablePointer<gchar>, slen: Int, format: UnsafePointer<gchar>) -> Int {
        let rv = g_date_strftime(s, gsize(slen), format, cast(date_ptr))
        return Int(rv)
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
    func dateStrftime(s: UnsafeMutablePointer<gchar>, slen: Int, format: UnsafePointer<gchar>) -> Int {
        let rv = g_date_strftime(s, gsize(slen), format, cast(date_ptr))
        return Int(rv)
    }
    /// Returns the day of the month. The date must be valid.
    var day: GDateDay {
        /// Returns the day of the month. The date must be valid.
        get {
            let rv = g_date_get_day(cast(date_ptr))
            return rv
        }
        /// Sets the day of the month for a `GDate`. If the resulting
        /// day-month-year triplet is invalid, the date will be invalid.
        nonmutating set {
            g_date_set_day(cast(date_ptr), newValue)
        }
    }

    /// Returns the day of the year, where Jan 1 is the first day of the
    /// year. The date must be valid.
    var dayOfYear: CUnsignedInt {
        /// Returns the day of the year, where Jan 1 is the first day of the
        /// year. The date must be valid.
        get {
            let rv = g_date_get_day_of_year(cast(date_ptr))
            return CUnsignedInt(rv)
        }
    }

    /// Returns `true` if the date is on the first of a month.
    /// The date must be valid.
    var isFirstOfMonth: Bool {
        /// Returns `true` if the date is on the first of a month.
        /// The date must be valid.
        get {
            let rv = g_date_is_first_of_month(cast(date_ptr))
            return Bool(rv != 0)
        }
    }

    /// Returns `true` if the date is the last day of the month.
    /// The date must be valid.
    var isLastOfMonth: Bool {
        /// Returns `true` if the date is the last day of the month.
        /// The date must be valid.
        get {
            let rv = g_date_is_last_of_month(cast(date_ptr))
            return Bool(rv != 0)
        }
    }

    /// Returns the week of the year, where weeks are interpreted according
    /// to ISO 8601.
    var iso8601WeekOfYear: CUnsignedInt {
        /// Returns the week of the year, where weeks are interpreted according
        /// to ISO 8601.
        get {
            let rv = g_date_get_iso8601_week_of_year(cast(date_ptr))
            return CUnsignedInt(rv)
        }
    }

    /// Returns the Julian day or "serial number" of the `GDate`. The
    /// Julian day is simply the number of days since January 1, Year 1; i.e.,
    /// January 1, Year 1 is Julian day 1; January 2, Year 1 is Julian day 2,
    /// etc. The date must be valid.
    var julian: UInt32 {
        /// Returns the Julian day or "serial number" of the `GDate`. The
        /// Julian day is simply the number of days since January 1, Year 1; i.e.,
        /// January 1, Year 1 is Julian day 1; January 2, Year 1 is Julian day 2,
        /// etc. The date must be valid.
        get {
            let rv = g_date_get_julian(cast(date_ptr))
            return UInt32(rv)
        }
        /// Sets the value of a `GDate` from a Julian day number.
        nonmutating set {
            g_date_set_julian(cast(date_ptr), guint32(newValue))
        }
    }

    /// Returns the week of the year, where weeks are understood to start on
    /// Monday. If the date is before the first Monday of the year, return 0.
    /// The date must be valid.
    var mondayWeekOfYear: CUnsignedInt {
        /// Returns the week of the year, where weeks are understood to start on
        /// Monday. If the date is before the first Monday of the year, return 0.
        /// The date must be valid.
        get {
            let rv = g_date_get_monday_week_of_year(cast(date_ptr))
            return CUnsignedInt(rv)
        }
    }

    /// Returns the month of the year. The date must be valid.
    var month: GDateMonth {
        /// Returns the month of the year. The date must be valid.
        get {
            let rv = g_date_get_month(cast(date_ptr))
            return rv
        }
        /// Sets the month of the year for a `GDate`.  If the resulting
        /// day-month-year triplet is invalid, the date will be invalid.
        nonmutating set {
            g_date_set_month(cast(date_ptr), newValue)
        }
    }

    /// Returns the week of the year during which this date falls, if
    /// weeks are understood to begin on Sunday. The date must be valid.
    /// Can return 0 if the day is before the first Sunday of the year.
    var sundayWeekOfYear: CUnsignedInt {
        /// Returns the week of the year during which this date falls, if
        /// weeks are understood to begin on Sunday. The date must be valid.
        /// Can return 0 if the day is before the first Sunday of the year.
        get {
            let rv = g_date_get_sunday_week_of_year(cast(date_ptr))
            return CUnsignedInt(rv)
        }
    }

    /// Returns the day of the week for a `GDate`. The date must be valid.
    var weekday: GDateWeekday {
        /// Returns the day of the week for a `GDate`. The date must be valid.
        get {
            let rv = g_date_get_weekday(cast(date_ptr))
            return rv
        }
    }

    /// Returns the year of a `GDate`. The date must be valid.
    var year: GDateYear {
        /// Returns the year of a `GDate`. The date must be valid.
        get {
            let rv = g_date_get_year(cast(date_ptr))
            return rv
        }
        /// Sets the year for a `GDate`. If the resulting day-month-year
        /// triplet is invalid, the date will be invalid.
        nonmutating set {
            g_date_set_year(cast(date_ptr), newValue)
        }
    }
}



