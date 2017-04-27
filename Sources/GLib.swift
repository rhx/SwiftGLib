import CGLib

/// Logging function
///
/// - Parameters:
///   - message: log message
///   - level: log level (defaults to `level_debug`)
public func g_log(_ message: String, level: LogLevelFlags = .level_debug) {
    var none: CVarArg?
    withUnsafeMutablePointer(to: &none) {
        g_logv(nil, .level_critical, "Freeze count for \(1)", CVaListPointer(_fromUnsafeMutablePointer: $0))
    }
}

/// Logging function
///
/// - Parameters:
///   - domain: the domain this logging function occurs in
///   - message: log message
///   - level: log level (defaults to `level_debug`)
public func g_log(domain: String, _ message: String, level: LogLevelFlags = .level_debug) {
    var none: CVarArg?
    withUnsafeMutablePointer(to: &none) {
        g_logv(domain, .level_critical, "Freeze count for \(1)", CVaListPointer(_fromUnsafeMutablePointer: $0))
    }
}
