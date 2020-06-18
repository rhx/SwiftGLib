//
//  GLib.swift
//  GLib
//
//  Created by Rene Hexel on 27/04/2017.
//  Copyright © 2016, 2017, 2018, 2019, 2020 Rene Hexel.  All rights reserved.
//
import CGLib

/// Opaque type. See RecMutexLocker for details.
public struct GRecMutexLocker {}

public extension LogLevelFlags {
    /// log level for debug messages, see `g_debug()`
    static let debug = LogLevelFlags.levelDebug
    /// log level for informational messages, see `g_info()`
    static let info = LogLevelFlags.levelInfo
    /// log level for messages, see `g_message()`
    static let message = LogLevelFlags.levelMessage
    /// log level for warnings, see `g_warning()`
    static let warning = LogLevelFlags.levelWarning
    /// log level for critical warning messages, see
    ///     `g_critical()`.
    ///     This level is also used for messages produced by `g_return_if_fail()`
    ///     and `g_return_val_if_fail()`.
    static let critical = LogLevelFlags.levelCritical
    /// log level for errors, see `g_error()`.
    ///     This level is also used for messages produced by `g_assert()`.
    static let error = LogLevelFlags.levelError
}

#if !os(Linux)
/// Logging function
///
/// - Parameters:
///   - message: log message
///   - level: log level (defaults to `.debug`)
public func g_log(_ message: String, level flags: LogLevelFlags = .debug) {
    message.utf8CString.withUnsafeBufferPointer {
        g_log(messagePtr: $0.baseAddress, level: flags)
    }
}

/// Logging function
///
/// - Parameters:
///   - messagePtr: optional pointer to a C string message (nothing gets logged if `nil`)
///   - level: log level (defaults to `.debug`)
public func g_log(messagePtr: UnsafePointer<CChar>?, level: LogLevelFlags = .debug) {
    guard let base = messagePtr else { return }
    let varargs = [OpaquePointer(base)]
    withVaList(varargs) {
        g_logv(nil, level.value, "%s", $0)
    }
}

/// Logging function
///
/// - Parameters:
///   - domain: the domain this logging function occurs in
///   - message: log message
///   - level: log level (defaults to `.debug`)
public func g_log(domain: String, _ message: String, level: LogLevelFlags = .debug) {
    message.utf8CString.withUnsafeBufferPointer {
        guard let base = $0.baseAddress else { return }
        let varargs = [OpaquePointer(base)]
        withVaList(varargs) {
            g_logv(domain, level.value, "%s", $0)
        }
    }
}
#else
/// Logging function
///
/// - Parameters:
///   - message: log message
///   - level: log level (defaults to `.debug`)
public func g_log(_ message: String, level flags: LogLevelFlags = .debug) {
    var buffer = message
    if message.index(of: "%") != nil {
        buffer = message.reduce("") { $0 + ($1 == "%" ? "%%" : String($1)) }
    }
    withUnsafeMutableBytes(of: &buffer) {
        let msg = $0.baseAddress?.assumingMemoryBound(to: CChar.self)
        g_log(messagePtr: msg, level: flags)
    }
}

/// Logging function
///
/// - Parameters:
///   - messagePtr: optional pointer to a C string message (nothing gets logged if `nil`)
///   - level: log level (defaults to `.debug`)
public func g_log(messagePtr: UnsafePointer<CChar>?, level: LogLevelFlags = .debug) {
    guard let msg = messagePtr else { return }
    g_logv(nil, level.value, msg, CVaListPointer(_fromUnsafeMutablePointer: cast(msg)))
}

/// Logging function
///
/// - Parameters:
///   - domain: the domain this logging function occurs in
///   - message: log message
///   - level: log level (defaults to `.debug`)
public func g_log(domain: String, _ message: String, level: LogLevelFlags = .debug) {
    var buffer = message
    if message.index(of: "%") != nil {
        buffer = message.reduce("") { $0 + ($1 == "%" ? "%%" : String($1)) }
    }
    withUnsafeMutableBytes(of: &buffer) {
        guard let buffer = $0.baseAddress else { return }
        let msg = buffer.assumingMemoryBound(to: CChar.self)
        g_logv(domain, level.value, msg, CVaListPointer(_fromUnsafeMutablePointer: buffer))
    }
}
#endif

/// Log a warning message
///
/// - Parameters:
///   - message: warning message
///   - domain: the domain this logging occurs in (defaults to `nil`)
public func g_warning(_ message: String, domain: String? = nil) {
    if let d = domain {
        g_log(domain: d, message, level: .warning)
    } else {
        g_log(message, level: .warning)
    }
}
