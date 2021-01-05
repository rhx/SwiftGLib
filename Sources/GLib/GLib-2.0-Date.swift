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
/// but safe. An invalid date doesn't represent a day, it's "empty." A date
/// becomes valid after you set it to a Julian day or you set a day, month,
/// and year.
public protocol DateProtocol {
        /// Untyped pointer to the underlying `GDate` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDate` instance.
    var date_ptr: UnsafeMutablePointer<GDate>! { get }

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
/// but safe. An invalid date doesn't represent a day, it's "empty." A date
/// becomes valid after you set it to a Julian day or you set a day, month,
/// and year.
public struct DateRef: DateProtocol {
        /// Untyped pointer to the underlying `GDate` instance.
    /// For type-safe access, use the generated, typed pointer `date_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DateRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDate>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDate>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDate>?) {
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

    /// Reference intialiser for a related type that implements `DateProtocol`
    @inlinable init<T: DateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Allocates a `GDate` and initializes
    /// it to a safe state. The new date will
    /// be cleared (as if you'd called `g_date_clear()`) but invalid (it won't
    /// represent an existing day). Free the return value with `g_date_free()`.
    @inlinable init() {
        let rv = g_date_new()
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Like `g_date_new()`, but also sets the value of the date. Assuming the
    /// day-month-year triplet you pass in represents an existing day, the
    /// returned date will be valid.
    @inlinable init(dmy day: GDateDay, month: GDateMonth, year: GDateYear) {
        let rv = g_date_new_dmy(day, month, year)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Like `g_date_new()`, but also sets the value of the date. Assuming the
    /// Julian day number you pass in is valid (greater than 0, less than an
    /// unreasonably large number), the returned date will be valid.
    @inlinable init(julian julianDay: guint32) {
        let rv = g_date_new_julian(julianDay)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Like `g_date_new()`, but also sets the value of the date. Assuming the
    /// day-month-year triplet you pass in represents an existing day, the
    /// returned date will be valid.
    @inlinable static func new(dmy day: GDateDay, month: GDateMonth, year: GDateYear) -> DateRef! {
        guard let rv = DateRef(gconstpointer: gconstpointer(g_date_new_dmy(day, month, year))) else { return nil }
        return rv
    }

    /// Like `g_date_new()`, but also sets the value of the date. Assuming the
    /// Julian day number you pass in is valid (greater than 0, less than an
    /// unreasonably large number), the returned date will be valid.
    @inlinable static func new(julian julianDay: guint32) -> DateRef! {
        guard let rv = DateRef(gconstpointer: gconstpointer(g_date_new_julian(julianDay))) else { return nil }
        return rv
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
/// but safe. An invalid date doesn't represent a day, it's "empty." A date
/// becomes valid after you set it to a Julian day or you set a day, month,
/// and year.
open class Date: DateProtocol {
        /// Untyped pointer to the underlying `GDate` instance.
    /// For type-safe access, use the generated, typed pointer `date_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Date` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GDate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Date` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GDate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Date` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Date` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Date` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GDate>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Date` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GDate>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GDate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Date` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GDate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GDate, cannot ref(date_ptr)
    }

    /// Reference intialiser for a related type that implements `DateProtocol`
    /// `GDate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `DateProtocol`
    @inlinable public init<T: DateProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GDate, cannot ref(date_ptr)
    }

    /// Do-nothing destructor for `GDate`.
    deinit {
        // no reference counting for GDate, cannot unref(date_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GDate, cannot ref(date_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GDate, cannot ref(date_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GDate, cannot ref(date_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GDate, cannot ref(date_ptr)
    }

    /// Allocates a `GDate` and initializes
    /// it to a safe state. The new date will
    /// be cleared (as if you'd called `g_date_clear()`) but invalid (it won't
    /// represent an existing day). Free the return value with `g_date_free()`.
    @inlinable public init() {
        let rv = g_date_new()
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Like `g_date_new()`, but also sets the value of the date. Assuming the
    /// day-month-year triplet you pass in represents an existing day, the
    /// returned date will be valid.
    @inlinable public init(dmy day: GDateDay, month: GDateMonth, year: GDateYear) {
        let rv = g_date_new_dmy(day, month, year)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Like `g_date_new()`, but also sets the value of the date. Assuming the
    /// Julian day number you pass in is valid (greater than 0, less than an
    /// unreasonably large number), the returned date will be valid.
    @inlinable public init(julian julianDay: guint32) {
        let rv = g_date_new_julian(julianDay)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Like `g_date_new()`, but also sets the value of the date. Assuming the
    /// day-month-year triplet you pass in represents an existing day, the
    /// returned date will be valid.
    @inlinable public static func new(dmy day: GDateDay, month: GDateMonth, year: GDateYear) -> Date! {
        guard let rv = Date(gconstpointer: gconstpointer(g_date_new_dmy(day, month, year))) else { return nil }
        return rv
    }

    /// Like `g_date_new()`, but also sets the value of the date. Assuming the
    /// Julian day number you pass in is valid (greater than 0, less than an
    /// unreasonably large number), the returned date will be valid.
    @inlinable public static func new(julian julianDay: guint32) -> Date! {
        guard let rv = Date(gconstpointer: gconstpointer(g_date_new_julian(julianDay))) else { return nil }
        return rv
    }

}

// MARK: no Date properties

// MARK: no Date signals


// MARK: Date Record: DateProtocol extension (methods and fields)
public extension DateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDate` instance.
    @inlinable var date_ptr: UnsafeMutablePointer<GDate>! { return ptr?.assumingMemoryBound(to: GDate.self) }

    /// Increments a date some number of days.
    /// To move forward by weeks, add weeks*7 days.
    /// The date must be valid.
    @inlinable func addDays(nDays: Int) {
        g_date_add_days(date_ptr, guint(nDays))
    
    }

    /// Increments a date by some number of months.
    /// If the day of the month is greater than 28,
    /// this routine may change the day of the month
    /// (because the destination month may not have
    /// the current day in it). The date must be valid.
    @inlinable func addMonths(nMonths: Int) {
        g_date_add_months(date_ptr, guint(nMonths))
    
    }

    /// Increments a date by some number of years.
    /// If the date is February 29, and the destination
    /// year is not a leap year, the date will be changed
    /// to February 28. The date must be valid.
    @inlinable func addYears(nYears: Int) {
        g_date_add_years(date_ptr, guint(nYears))
    
    }

    /// If `date` is prior to `min_date`, sets `date` equal to `min_date`.
    /// If `date` falls after `max_date`, sets `date` equal to `max_date`.
    /// Otherwise, `date` is unchanged.
    /// Either of `min_date` and `max_date` may be `nil`.
    /// All non-`nil` dates must be valid.
    @inlinable func clamp<DateT: DateProtocol>(minDate: DateT, maxDate: DateT) {
        g_date_clamp(date_ptr, minDate.date_ptr, maxDate.date_ptr)
    
    }

    /// Initializes one or more `GDate` structs to a safe but invalid
    /// state. The cleared dates will not represent an existing date, but will
    /// not contain garbage. Useful to init a date declared on the stack.
    /// Validity can be tested with `g_date_valid()`.
    @inlinable func clear(nDates: Int) {
        g_date_clear(date_ptr, guint(nDates))
    
    }

    /// `qsort()`-style comparison function for dates.
    /// Both dates must be valid.
    @inlinable func compare<DateT: DateProtocol>(rhs: DateT) -> Int {
        let rv = Int(g_date_compare(date_ptr, rhs.date_ptr))
        return rv
    }

    /// Copies a GDate to a newly-allocated GDate. If the input was invalid
    /// (as determined by `g_date_valid()`), the invalid state will be copied
    /// as is into the new object.
    @inlinable func copy() -> DateRef! {
        guard let rv = DateRef(gconstpointer: gconstpointer(g_date_copy(date_ptr))) else { return nil }
        return rv
    }

    /// Computes the number of days between two dates.
    /// If `date2` is prior to `date1`, the returned value is negative.
    /// Both dates must be valid.
    @inlinable func daysBetween<DateT: DateProtocol>(date2: DateT) -> Int {
        let rv = Int(g_date_days_between(date_ptr, date2.date_ptr))
        return rv
    }

    /// Frees a `GDate` returned from `g_date_new()`.
    @inlinable func free() {
        g_date_free(date_ptr)
    
    }

    /// Returns the day of the month. The date must be valid.
    @inlinable func getDay() -> GDateDay {
        let rv = g_date_get_day(date_ptr)
        return rv
    }

    /// Returns the day of the year, where Jan 1 is the first day of the
    /// year. The date must be valid.
    @inlinable func getDayOfYear() -> Int {
        let rv = Int(g_date_get_day_of_year(date_ptr))
        return rv
    }

    /// Returns the week of the year, where weeks are interpreted according
    /// to ISO 8601.
    @inlinable func getIso8601WeekOfYear() -> Int {
        let rv = Int(g_date_get_iso8601_week_of_year(date_ptr))
        return rv
    }

    /// Returns the Julian day or "serial number" of the `GDate`. The
    /// Julian day is simply the number of days since January 1, Year 1; i.e.,
    /// January 1, Year 1 is Julian day 1; January 2, Year 1 is Julian day 2,
    /// etc. The date must be valid.
    @inlinable func getJulian() -> guint32 {
        let rv = g_date_get_julian(date_ptr)
        return rv
    }

    /// Returns the week of the year, where weeks are understood to start on
    /// Monday. If the date is before the first Monday of the year, return 0.
    /// The date must be valid.
    @inlinable func getMondayWeekOfYear() -> Int {
        let rv = Int(g_date_get_monday_week_of_year(date_ptr))
        return rv
    }

    /// Returns the month of the year. The date must be valid.
    @inlinable func getMonth() -> GDateMonth {
        let rv = g_date_get_month(date_ptr)
        return rv
    }

    /// Returns the week of the year during which this date falls, if
    /// weeks are understood to begin on Sunday. The date must be valid.
    /// Can return 0 if the day is before the first Sunday of the year.
    @inlinable func getSundayWeekOfYear() -> Int {
        let rv = Int(g_date_get_sunday_week_of_year(date_ptr))
        return rv
    }

    /// Returns the day of the week for a `GDate`. The date must be valid.
    @inlinable func getWeekday() -> GDateWeekday {
        let rv = g_date_get_weekday(date_ptr)
        return rv
    }

    /// Returns the year of a `GDate`. The date must be valid.
    @inlinable func getYear() -> GDateYear {
        let rv = g_date_get_year(date_ptr)
        return rv
    }

    /// Checks if `date1` is less than or equal to `date2`,
    /// and swap the values if this is not the case.
    @inlinable func order<DateT: DateProtocol>(date2: DateT) {
        g_date_order(date_ptr, date2.date_ptr)
    
    }

    /// Sets the day of the month for a `GDate`. If the resulting
    /// day-month-year triplet is invalid, the date will be invalid.
    @inlinable func set(day: GDateDay) {
        g_date_set_day(date_ptr, day)
    
    }

    /// Sets the value of a `GDate` from a day, month, and year.
    /// The day-month-year triplet must be valid; if you aren't
    /// sure it is, call `g_date_valid_dmy()` to check before you
    /// set it.
    @inlinable func setDmy(day: GDateDay, month: GDateMonth, y: GDateYear) {
        g_date_set_dmy(date_ptr, day, month, y)
    
    }

    /// Sets the value of a `GDate` from a Julian day number.
    @inlinable func setJulian(julianDate: guint32) {
        g_date_set_julian(date_ptr, julianDate)
    
    }

    /// Sets the month of the year for a `GDate`.  If the resulting
    /// day-month-year triplet is invalid, the date will be invalid.
    @inlinable func set(month: GDateMonth) {
        g_date_set_month(date_ptr, month)
    
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
    @inlinable func setParse(str: UnsafePointer<gchar>!) {
        g_date_set_parse(date_ptr, str)
    
    }

    /// Sets the value of a date from a `GTime` value.
    /// The time to date conversion is done using the user's current timezone.
    ///
    /// **set_time is deprecated:**
    /// Use g_date_set_time_t() instead.
    @available(*, deprecated) @inlinable func setTime(time_: GTime) {
        g_date_set_time(date_ptr, time_)
    
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
    @inlinable func setTimeT(timet: time_t) {
        g_date_set_time_t(date_ptr, timet)
    
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
    @available(*, deprecated) @inlinable func setTimeVal<TimeValT: TimeValProtocol>(timeval: TimeValT) {
        g_date_set_time_val(date_ptr, timeval._ptr)
    
    }

    /// Sets the year for a `GDate`. If the resulting day-month-year
    /// triplet is invalid, the date will be invalid.
    @inlinable func set(year: GDateYear) {
        g_date_set_year(date_ptr, year)
    
    }

    /// Moves a date some number of days into the past.
    /// To move by weeks, just move by weeks*7 days.
    /// The date must be valid.
    @inlinable func subtractDays(nDays: Int) {
        g_date_subtract_days(date_ptr, guint(nDays))
    
    }

    /// Moves a date some number of months into the past.
    /// If the current day of the month doesn't exist in
    /// the destination month, the day of the month
    /// may change. The date must be valid.
    @inlinable func subtractMonths(nMonths: Int) {
        g_date_subtract_months(date_ptr, guint(nMonths))
    
    }

    /// Moves a date some number of years into the past.
    /// If the current day doesn't exist in the destination
    /// year (i.e. it's February 29 and you move to a non-leap-year)
    /// then the day is changed to February 29. The date
    /// must be valid.
    @inlinable func subtractYears(nYears: Int) {
        g_date_subtract_years(date_ptr, guint(nYears))
    
    }

    /// Fills in the date-related bits of a struct tm using the `date` value.
    /// Initializes the non-date parts with something safe but meaningless.
    @inlinable func toStruct(tm: UnsafeMutablePointer<tm>!) {
        g_date_to_struct_tm(date_ptr, tm)
    
    }

    /// Returns `true` if the `GDate` represents an existing day. The date must not
    /// contain garbage; it should have been initialized with `g_date_clear()`
    /// if it wasn't allocated by one of the `g_date_new()` variants.
    @inlinable func valid() -> Bool {
        let rv = ((g_date_valid(date_ptr)) != 0)
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
    @inlinable func strftime(s: UnsafeMutablePointer<gchar>!, slen: Int, format: UnsafePointer<gchar>!) -> Int {
        let rv = Int(g_date_strftime(s, gsize(slen), format, date_ptr))
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
    @inlinable func dateStrftime(s: UnsafeMutablePointer<gchar>!, slen: Int, format: UnsafePointer<gchar>!) -> Int {
        let rv = Int(g_date_strftime(s, gsize(slen), format, date_ptr))
        return rv
    }
    /// Returns the day of the month. The date must be valid.
    @inlinable var day: GDateDay {
        /// Returns the day of the month. The date must be valid.
        get {
            let rv = g_date_get_day(date_ptr)
            return rv
        }
        /// Sets the day of the month for a `GDate`. If the resulting
        /// day-month-year triplet is invalid, the date will be invalid.
        nonmutating set {
            g_date_set_day(date_ptr, newValue)
        }
    }

    /// Returns the day of the year, where Jan 1 is the first day of the
    /// year. The date must be valid.
    @inlinable var dayOfYear: Int {
        /// Returns the day of the year, where Jan 1 is the first day of the
        /// year. The date must be valid.
        get {
            let rv = Int(g_date_get_day_of_year(date_ptr))
            return rv
        }
    }

    /// Returns `true` if the date is on the first of a month.
    /// The date must be valid.
    @inlinable var isFirstOfMonth: Bool {
        /// Returns `true` if the date is on the first of a month.
        /// The date must be valid.
        get {
            let rv = ((g_date_is_first_of_month(date_ptr)) != 0)
            return rv
        }
    }

    /// Returns `true` if the date is the last day of the month.
    /// The date must be valid.
    @inlinable var isLastOfMonth: Bool {
        /// Returns `true` if the date is the last day of the month.
        /// The date must be valid.
        get {
            let rv = ((g_date_is_last_of_month(date_ptr)) != 0)
            return rv
        }
    }

    /// Returns the week of the year, where weeks are interpreted according
    /// to ISO 8601.
    @inlinable var iso8601WeekOfYear: Int {
        /// Returns the week of the year, where weeks are interpreted according
        /// to ISO 8601.
        get {
            let rv = Int(g_date_get_iso8601_week_of_year(date_ptr))
            return rv
        }
    }

    /// Returns the Julian day or "serial number" of the `GDate`. The
    /// Julian day is simply the number of days since January 1, Year 1; i.e.,
    /// January 1, Year 1 is Julian day 1; January 2, Year 1 is Julian day 2,
    /// etc. The date must be valid.
    @inlinable var julian: guint32 {
        /// Returns the Julian day or "serial number" of the `GDate`. The
        /// Julian day is simply the number of days since January 1, Year 1; i.e.,
        /// January 1, Year 1 is Julian day 1; January 2, Year 1 is Julian day 2,
        /// etc. The date must be valid.
        get {
            let rv = g_date_get_julian(date_ptr)
            return rv
        }
        /// Sets the value of a `GDate` from a Julian day number.
        nonmutating set {
            g_date_set_julian(date_ptr, newValue)
        }
    }

    /// Returns the week of the year, where weeks are understood to start on
    /// Monday. If the date is before the first Monday of the year, return 0.
    /// The date must be valid.
    @inlinable var mondayWeekOfYear: Int {
        /// Returns the week of the year, where weeks are understood to start on
        /// Monday. If the date is before the first Monday of the year, return 0.
        /// The date must be valid.
        get {
            let rv = Int(g_date_get_monday_week_of_year(date_ptr))
            return rv
        }
    }

    /// Returns the month of the year. The date must be valid.
    @inlinable var month: GDateMonth {
        /// Returns the month of the year. The date must be valid.
        get {
            let rv = g_date_get_month(date_ptr)
            return rv
        }
        /// Sets the month of the year for a `GDate`.  If the resulting
        /// day-month-year triplet is invalid, the date will be invalid.
        nonmutating set {
            g_date_set_month(date_ptr, newValue)
        }
    }

    /// Returns the week of the year during which this date falls, if
    /// weeks are understood to begin on Sunday. The date must be valid.
    /// Can return 0 if the day is before the first Sunday of the year.
    @inlinable var sundayWeekOfYear: Int {
        /// Returns the week of the year during which this date falls, if
        /// weeks are understood to begin on Sunday. The date must be valid.
        /// Can return 0 if the day is before the first Sunday of the year.
        get {
            let rv = Int(g_date_get_sunday_week_of_year(date_ptr))
            return rv
        }
    }

    /// Returns the day of the week for a `GDate`. The date must be valid.
    @inlinable var weekday: GDateWeekday {
        /// Returns the day of the week for a `GDate`. The date must be valid.
        get {
            let rv = g_date_get_weekday(date_ptr)
            return rv
        }
    }

    /// Returns the year of a `GDate`. The date must be valid.
    @inlinable var year: GDateYear {
        /// Returns the year of a `GDate`. The date must be valid.
        get {
            let rv = g_date_get_year(date_ptr)
            return rv
        }
        /// Sets the year for a `GDate`. If the resulting day-month-year
        /// triplet is invalid, the date will be invalid.
        nonmutating set {
            g_date_set_year(date_ptr, newValue)
        }
    }

    /// the Julian representation of the date
    @inlinable var julianDays: guint {
        /// the Julian representation of the date
        get {
            let rv = date_ptr.pointee.julian_days
            return rv
        }
        /// the Julian representation of the date
         set {
            date_ptr.pointee.julian_days = newValue
        }
    }

    /// this bit is set if `julian_days` is valid
    @inlinable var _julian: guint {
        /// this bit is set if `julian_days` is valid
        get {
            let rv = date_ptr.pointee.julian
            return rv
        }
        /// this bit is set if `julian_days` is valid
         set {
            date_ptr.pointee.julian = newValue
        }
    }

    /// this is set if `day`, `month` and `year` are valid
    @inlinable var dmy: guint {
        /// this is set if `day`, `month` and `year` are valid
        get {
            let rv = date_ptr.pointee.dmy
            return rv
        }
        /// this is set if `day`, `month` and `year` are valid
         set {
            date_ptr.pointee.dmy = newValue
        }
    }

    /// the day of the day-month-year representation of the date,
    ///     as a number between 1 and 31
    @inlinable var _day: guint {
        /// the day of the day-month-year representation of the date,
        ///     as a number between 1 and 31
        get {
            let rv = date_ptr.pointee.day
            return rv
        }
        /// the day of the day-month-year representation of the date,
        ///     as a number between 1 and 31
         set {
            date_ptr.pointee.day = newValue
        }
    }

    /// the day of the day-month-year representation of the date,
    ///     as a number between 1 and 12
    @inlinable var _month: guint {
        /// the day of the day-month-year representation of the date,
        ///     as a number between 1 and 12
        get {
            let rv = date_ptr.pointee.month
            return rv
        }
        /// the day of the day-month-year representation of the date,
        ///     as a number between 1 and 12
         set {
            date_ptr.pointee.month = newValue
        }
    }

    /// the day of the day-month-year representation of the date
    @inlinable var _year: guint {
        /// the day of the day-month-year representation of the date
        get {
            let rv = date_ptr.pointee.year
            return rv
        }
        /// the day of the day-month-year representation of the date
         set {
            date_ptr.pointee.year = newValue
        }
    }

}



