import CGLib

// MARK: - MatchInfo Record

/// The `MatchInfoProtocol` protocol exposes the methods and properties of an underlying `GMatchInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MatchInfo`.
/// Alternatively, use `MatchInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A GMatchInfo is an opaque struct used to return information about
/// matches.
public protocol MatchInfoProtocol {
        /// Untyped pointer to the underlying `GMatchInfo` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GMatchInfo` instance.
    var match_info_ptr: UnsafeMutablePointer<GMatchInfo>! { get }

}

/// The `MatchInfoRef` type acts as a lightweight Swift reference to an underlying `GMatchInfo` instance.
/// It exposes methods that can operate on this data type through `MatchInfoProtocol` conformance.
/// Use `MatchInfoRef` only as an `unowned` reference to an existing `GMatchInfo` instance.
///
/// A GMatchInfo is an opaque struct used to return information about
/// matches.
public struct MatchInfoRef: MatchInfoProtocol {
        /// Untyped pointer to the underlying `GMatchInfo` instance.
    /// For type-safe access, use the generated, typed pointer `match_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MatchInfoRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GMatchInfo>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GMatchInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GMatchInfo>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GMatchInfo>?) {
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

    /// Reference intialiser for a related type that implements `MatchInfoProtocol`
    @inlinable init<T: MatchInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatchInfoProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatchInfoProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatchInfoProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatchInfoProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatchInfoProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MatchInfo` type acts as a reference-counted owner of an underlying `GMatchInfo` instance.
/// It provides the methods that can operate on this data type through `MatchInfoProtocol` conformance.
/// Use `MatchInfo` as a strong reference or owner of a `GMatchInfo` instance.
///
/// A GMatchInfo is an opaque struct used to return information about
/// matches.
open class MatchInfo: MatchInfoProtocol {
        /// Untyped pointer to the underlying `GMatchInfo` instance.
    /// For type-safe access, use the generated, typed pointer `match_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MatchInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GMatchInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MatchInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GMatchInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MatchInfo` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MatchInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MatchInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GMatchInfo>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MatchInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GMatchInfo>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GMatchInfo`.
    /// i.e., ownership is transferred to the `MatchInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GMatchInfo>) {
        ptr = UnsafeMutableRawPointer(op)
        g_match_info_ref(ptr.assumingMemoryBound(to: GMatchInfo.self))
    }

    /// Reference intialiser for a related type that implements `MatchInfoProtocol`
    /// Will retain `GMatchInfo`.
    /// - Parameter other: an instance of a related type that implements `MatchInfoProtocol`
    @inlinable public init<T: MatchInfoProtocol>(_ other: T) {
        ptr = other.ptr
        g_match_info_ref(ptr.assumingMemoryBound(to: GMatchInfo.self))
    }

    /// Releases the underlying `GMatchInfo` instance using `g_match_info_unref`.
    deinit {
        g_match_info_unref(ptr.assumingMemoryBound(to: GMatchInfo.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatchInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatchInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_match_info_ref(ptr.assumingMemoryBound(to: GMatchInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatchInfoProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatchInfoProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_match_info_ref(ptr.assumingMemoryBound(to: GMatchInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatchInfoProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatchInfoProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_match_info_ref(ptr.assumingMemoryBound(to: GMatchInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatchInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MatchInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_match_info_ref(ptr.assumingMemoryBound(to: GMatchInfo.self))
    }



}

// MARK: no MatchInfo properties

// MARK: no MatchInfo signals


// MARK: MatchInfo Record: MatchInfoProtocol extension (methods and fields)
public extension MatchInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMatchInfo` instance.
    @inlinable var match_info_ptr: UnsafeMutablePointer<GMatchInfo>! { return ptr?.assumingMemoryBound(to: GMatchInfo.self) }

    /// Returns a new string containing the text in `string_to_expand` with
    /// references and escape sequences expanded. References refer to the last
    /// match done with `string` against `regex` and have the same syntax used by
    /// `g_regex_replace()`.
    /// 
    /// The `string_to_expand` must be UTF-8 encoded even if `G_REGEX_RAW` was
    /// passed to `g_regex_new()`.
    /// 
    /// The backreferences are extracted from the string passed to the match
    /// function, so you cannot call this function after freeing the string.
    /// 
    /// `match_info` may be `nil` in which case `string_to_expand` must not
    /// contain references. For instance "foo\n" does not refer to an actual
    /// pattern and '\n' merely will be replaced with \n character,
    /// while to expand "\0" (whole match) one needs the result of a match.
    /// Use `g_regex_check_replacement()` to find out whether `string_to_expand`
    /// contains references.
    @inlinable func expandReferences(stringToExpand: UnsafePointer<gchar>!) throws -> String! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_match_info_expand_references(match_info_ptr, stringToExpand, &error).map({ String(cString: $0) })
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Retrieves the text matching the `match_num`'th capturing
    /// parentheses. 0 is the full text of the match, 1 is the first paren
    /// set, 2 the second, and so on.
    /// 
    /// If `match_num` is a valid sub pattern but it didn't match anything
    /// (e.g. sub pattern 1, matching "b" against "(a)?b") then an empty
    /// string is returned.
    /// 
    /// If the match was obtained using the DFA algorithm, that is using
    /// `g_regex_match_all()` or `g_regex_match_all_full()`, the retrieved
    /// string is not that of a set of parentheses but that of a matched
    /// substring. Substrings are matched in reverse order of length, so
    /// 0 is the longest match.
    /// 
    /// The string is fetched from the string passed to the match function,
    /// so you cannot call this function after freeing the string.
    @inlinable func fetch(matchNum: Int) -> String! {
        let rv = g_match_info_fetch(match_info_ptr, gint(matchNum)).map({ String(cString: $0) })
        return rv
    }

    /// Bundles up pointers to each of the matching substrings from a match
    /// and stores them in an array of gchar pointers. The first element in
    /// the returned array is the match number 0, i.e. the entire matched
    /// text.
    /// 
    /// If a sub pattern didn't match anything (e.g. sub pattern 1, matching
    /// "b" against "(a)?b") then an empty string is inserted.
    /// 
    /// If the last match was obtained using the DFA algorithm, that is using
    /// `g_regex_match_all()` or `g_regex_match_all_full()`, the retrieved
    /// strings are not that matched by sets of parentheses but that of the
    /// matched substring. Substrings are matched in reverse order of length,
    /// so the first one is the longest match.
    /// 
    /// The strings are fetched from the string passed to the match function,
    /// so you cannot call this function after freeing the string.
    @inlinable func fetchAll() -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        let rv = g_match_info_fetch_all(match_info_ptr)
        return rv
    }

    /// Retrieves the text matching the capturing parentheses named `name`.
    /// 
    /// If `name` is a valid sub pattern name but it didn't match anything
    /// (e.g. sub pattern "X", matching "b" against "(?P<X>a)?b")
    /// then an empty string is returned.
    /// 
    /// The string is fetched from the string passed to the match function,
    /// so you cannot call this function after freeing the string.
    @inlinable func fetchNamed(name: UnsafePointer<gchar>!) -> String! {
        let rv = g_match_info_fetch_named(match_info_ptr, name).map({ String(cString: $0) })
        return rv
    }

    /// Retrieves the position in bytes of the capturing parentheses named `name`.
    /// 
    /// If `name` is a valid sub pattern name but it didn't match anything
    /// (e.g. sub pattern "X", matching "b" against "(?P<X>a)?b")
    /// then `start_pos` and `end_pos` are set to -1 and `true` is returned.
    @inlinable func fetchNamedPos(name: UnsafePointer<gchar>!, startPos: UnsafeMutablePointer<gint>! = nil, endPos: UnsafeMutablePointer<gint>! = nil) -> Bool {
        let rv = ((g_match_info_fetch_named_pos(match_info_ptr, name, startPos, endPos)) != 0)
        return rv
    }

    /// Retrieves the position in bytes of the `match_num`'th capturing
    /// parentheses. 0 is the full text of the match, 1 is the first
    /// paren set, 2 the second, and so on.
    /// 
    /// If `match_num` is a valid sub pattern but it didn't match anything
    /// (e.g. sub pattern 1, matching "b" against "(a)?b") then `start_pos`
    /// and `end_pos` are set to -1 and `true` is returned.
    /// 
    /// If the match was obtained using the DFA algorithm, that is using
    /// `g_regex_match_all()` or `g_regex_match_all_full()`, the retrieved
    /// position is not that of a set of parentheses but that of a matched
    /// substring. Substrings are matched in reverse order of length, so
    /// 0 is the longest match.
    @inlinable func fetchPos(matchNum: Int, startPos: UnsafeMutablePointer<gint>! = nil, endPos: UnsafeMutablePointer<gint>! = nil) -> Bool {
        let rv = ((g_match_info_fetch_pos(match_info_ptr, gint(matchNum), startPos, endPos)) != 0)
        return rv
    }

    /// If `match_info` is not `nil`, calls `g_match_info_unref()`; otherwise does
    /// nothing.
    @inlinable func free() {
        g_match_info_free(match_info_ptr)
    
    }

    /// Retrieves the number of matched substrings (including substring 0,
    /// that is the whole matched text), so 1 is returned if the pattern
    /// has no substrings in it and 0 is returned if the match failed.
    /// 
    /// If the last match was obtained using the DFA algorithm, that is
    /// using `g_regex_match_all()` or `g_regex_match_all_full()`, the retrieved
    /// count is not that of the number of capturing parentheses but that of
    /// the number of matched substrings.
    @inlinable func getMatchCount() -> Int {
        let rv = Int(g_match_info_get_match_count(match_info_ptr))
        return rv
    }

    /// Returns `GRegex` object used in `match_info`. It belongs to Glib
    /// and must not be freed. Use `g_regex_ref()` if you need to keep it
    /// after you free `match_info` object.
    @inlinable func getRegex() -> RegexRef! {
        let rv = RegexRef(gconstpointer: gconstpointer(g_match_info_get_regex(match_info_ptr)))
        return rv
    }

    /// Returns the string searched with `match_info`. This is the
    /// string passed to `g_regex_match()` or `g_regex_replace()` so
    /// you may not free it before calling this function.
    @inlinable func getString() -> String! {
        let rv = g_match_info_get_string(match_info_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns whether the previous match operation succeeded.
    @inlinable func matches() -> Bool {
        let rv = ((g_match_info_matches(match_info_ptr)) != 0)
        return rv
    }

    /// Scans for the next match using the same parameters of the previous
    /// call to `g_regex_match_full()` or `g_regex_match()` that returned
    /// `match_info`.
    /// 
    /// The match is done on the string passed to the match function, so you
    /// cannot free it before calling this function.
    @inlinable func next() throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_match_info_next(match_info_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Increases reference count of `match_info` by 1.
    @discardableResult @inlinable func ref() -> MatchInfoRef! {
        guard let rv = MatchInfoRef(gconstpointer: gconstpointer(g_match_info_ref(match_info_ptr))) else { return nil }
        return rv
    }

    /// Decreases reference count of `match_info` by 1. When reference count drops
    /// to zero, it frees all the memory associated with the match_info structure.
    @inlinable func unref() {
        g_match_info_unref(match_info_ptr)
    
    }
    /// Usually if the string passed to g_regex_match*() matches as far as
    /// it goes, but is too short to match the entire pattern, `false` is
    /// returned. There are circumstances where it might be helpful to
    /// distinguish this case from other cases in which there is no match.
    /// 
    /// Consider, for example, an application where a human is required to
    /// type in data for a field with specific formatting requirements. An
    /// example might be a date in the form ddmmmyy, defined by the pattern
    /// `"^\d?\d(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec)`\d\d$".
    /// If the application sees the user’s keystrokes one by one, and can
    /// check that what has been typed so far is potentially valid, it is
    /// able to raise an error as soon as a mistake is made.
    /// 
    /// GRegex supports the concept of partial matching by means of the
    /// `G_REGEX_MATCH_PARTIAL_SOFT` and `G_REGEX_MATCH_PARTIAL_HARD` flags.
    /// When they are used, the return code for
    /// `g_regex_match()` or `g_regex_match_full()` is, as usual, `true`
    /// for a complete match, `false` otherwise. But, when these functions
    /// return `false`, you can check if the match was partial calling
    /// `g_match_info_is_partial_match()`.
    /// 
    /// The difference between `G_REGEX_MATCH_PARTIAL_SOFT` and
    /// `G_REGEX_MATCH_PARTIAL_HARD` is that when a partial match is encountered
    /// with `G_REGEX_MATCH_PARTIAL_SOFT`, matching continues to search for a
    /// possible complete match, while with `G_REGEX_MATCH_PARTIAL_HARD` matching
    /// stops at the partial match.
    /// When both `G_REGEX_MATCH_PARTIAL_SOFT` and `G_REGEX_MATCH_PARTIAL_HARD`
    /// are set, the latter takes precedence.
    /// 
    /// There were formerly some restrictions on the pattern for partial matching.
    /// The restrictions no longer apply.
    /// 
    /// See `pcrepartial(3)` for more information on partial matching.
    @inlinable var isPartialMatch: Bool {
        /// Usually if the string passed to g_regex_match*() matches as far as
        /// it goes, but is too short to match the entire pattern, `false` is
        /// returned. There are circumstances where it might be helpful to
        /// distinguish this case from other cases in which there is no match.
        /// 
        /// Consider, for example, an application where a human is required to
        /// type in data for a field with specific formatting requirements. An
        /// example might be a date in the form ddmmmyy, defined by the pattern
        /// `"^\d?\d(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec)`\d\d$".
        /// If the application sees the user’s keystrokes one by one, and can
        /// check that what has been typed so far is potentially valid, it is
        /// able to raise an error as soon as a mistake is made.
        /// 
        /// GRegex supports the concept of partial matching by means of the
        /// `G_REGEX_MATCH_PARTIAL_SOFT` and `G_REGEX_MATCH_PARTIAL_HARD` flags.
        /// When they are used, the return code for
        /// `g_regex_match()` or `g_regex_match_full()` is, as usual, `true`
        /// for a complete match, `false` otherwise. But, when these functions
        /// return `false`, you can check if the match was partial calling
        /// `g_match_info_is_partial_match()`.
        /// 
        /// The difference between `G_REGEX_MATCH_PARTIAL_SOFT` and
        /// `G_REGEX_MATCH_PARTIAL_HARD` is that when a partial match is encountered
        /// with `G_REGEX_MATCH_PARTIAL_SOFT`, matching continues to search for a
        /// possible complete match, while with `G_REGEX_MATCH_PARTIAL_HARD` matching
        /// stops at the partial match.
        /// When both `G_REGEX_MATCH_PARTIAL_SOFT` and `G_REGEX_MATCH_PARTIAL_HARD`
        /// are set, the latter takes precedence.
        /// 
        /// There were formerly some restrictions on the pattern for partial matching.
        /// The restrictions no longer apply.
        /// 
        /// See `pcrepartial(3)` for more information on partial matching.
        get {
            let rv = ((g_match_info_is_partial_match(match_info_ptr)) != 0)
            return rv
        }
    }

    /// Retrieves the number of matched substrings (including substring 0,
    /// that is the whole matched text), so 1 is returned if the pattern
    /// has no substrings in it and 0 is returned if the match failed.
    /// 
    /// If the last match was obtained using the DFA algorithm, that is
    /// using `g_regex_match_all()` or `g_regex_match_all_full()`, the retrieved
    /// count is not that of the number of capturing parentheses but that of
    /// the number of matched substrings.
    @inlinable var matchCount: Int {
        /// Retrieves the number of matched substrings (including substring 0,
        /// that is the whole matched text), so 1 is returned if the pattern
        /// has no substrings in it and 0 is returned if the match failed.
        /// 
        /// If the last match was obtained using the DFA algorithm, that is
        /// using `g_regex_match_all()` or `g_regex_match_all_full()`, the retrieved
        /// count is not that of the number of capturing parentheses but that of
        /// the number of matched substrings.
        get {
            let rv = Int(g_match_info_get_match_count(match_info_ptr))
            return rv
        }
    }

    /// Returns `GRegex` object used in `match_info`. It belongs to Glib
    /// and must not be freed. Use `g_regex_ref()` if you need to keep it
    /// after you free `match_info` object.
    @inlinable var regex: RegexRef! {
        /// Returns `GRegex` object used in `match_info`. It belongs to Glib
        /// and must not be freed. Use `g_regex_ref()` if you need to keep it
        /// after you free `match_info` object.
        get {
            let rv = RegexRef(gconstpointer: gconstpointer(g_match_info_get_regex(match_info_ptr)))
            return rv
        }
    }

    /// Returns the string searched with `match_info`. This is the
    /// string passed to `g_regex_match()` or `g_regex_replace()` so
    /// you may not free it before calling this function.
    @inlinable var string: String! {
        /// Returns the string searched with `match_info`. This is the
        /// string passed to `g_regex_match()` or `g_regex_replace()` so
        /// you may not free it before calling this function.
        get {
            let rv = g_match_info_get_string(match_info_ptr).map({ String(cString: $0) })
            return rv
        }
    }


}



