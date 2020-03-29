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

#if !os(Linux)
/// Logging function
///
/// - Parameters:
///   - message: log message
///   - level: log level (defaults to `level_debug`)
public func g_log(_ message: String, level: LogLevelFlags = .level_debug) {
    message.utf8CString.withUnsafeBufferPointer {
        guard let base = $0.baseAddress else { return }
        let varargs = [OpaquePointer(base)]
        withVaList(varargs) {
            g_logv(nil, level, "%s", $0)
        }
    }
}

/// Logging function
///
/// - Parameters:
///   - domain: the domain this logging function occurs in
///   - message: log message
///   - level: log level (defaults to `level_debug`)
public func g_log(domain: String, _ message: String, level: LogLevelFlags = .level_debug) {
    message.utf8CString.withUnsafeBufferPointer {
        guard let base = $0.baseAddress else { return }
        let varargs = [OpaquePointer(base)]
        withVaList(varargs) {
            g_logv(domain, level, "%s", $0)
        }
    }
}
#else
/// Logging function
///
/// - Parameters:
///   - message: log message
///   - level: log level (defaults to `level_debug`)
public func g_log(_ message: String, level: LogLevelFlags = .level_debug) {
    var buffer = message
    if message.index(of: "%") != nil {
        buffer = message.reduce("") { $0 + ($1 == "%" ? "%%" : String($1)) }
    }
    withUnsafeMutableBytes(of: &buffer) {
        guard let buffer = $0.baseAddress else { return }
        let msg = buffer.assumingMemoryBound(to: CChar.self)
        g_logv(nil, level, msg, CVaListPointer(_fromUnsafeMutablePointer: buffer))
    }
}

/// Logging function
///
/// - Parameters:
///   - domain: the domain this logging function occurs in
///   - message: log message
///   - level: log level (defaults to `level_debug`)
public func g_log(domain: String, _ message: String, level: LogLevelFlags = .level_debug) {
    var buffer = message
    if message.index(of: "%") != nil {
        buffer = message.reduce("") { $0 + ($1 == "%" ? "%%" : String($1)) }
    }
    withUnsafeMutableBytes(of: &buffer) {
        guard let buffer = $0.baseAddress else { return }
        let msg = buffer.assumingMemoryBound(to: CChar.self)
        g_logv(domain, level, msg, CVaListPointer(_fromUnsafeMutablePointer: buffer))
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
        g_log(domain: d, message, level: .level_warning)
    } else {
        g_log(message, level: .level_warning)
    }
}
