import CGLib

/// Opaque type. See RecMutexLocker for details.
public struct GRecMutexLocker {}

/// Logging function
///
/// - Parameters:
///   - message: log message
///   - level: log level (defaults to `level_debug`)
public func g_log(_ message: String, level: LogLevelFlags = .level_debug) {
    var none: CVarArg?
    withUnsafeMutablePointer(to: &none) {
        g_logv(nil, .level_critical, message, CVaListPointer(_fromUnsafeMutablePointer: $0))
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
        g_logv(domain, .level_critical, message, CVaListPointer(_fromUnsafeMutablePointer: $0))
    }
}

/// Log a warning message
///
/// - Parameters:
///   - message: warning message
///   - domain: the domain this logging occurs in (defaults to `nil`)
public func g_warning(_ message: String, domain: String? = nil) {
    if let d = domain {
        g_log(domain: d, message, level: .level_warning)
    } else {
        g_log(message, level: .level_warning)
    }
}
