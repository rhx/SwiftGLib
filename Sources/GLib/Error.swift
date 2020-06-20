//
//  Error.swift
//  GLib
//
//  Created by Rene Hexel on 27/04/2017.
//  Copyright © 2017, 2019, 2020 Rene Hexel.  All rights reserved.
//
#if os(Linux)
    import Glibc
#else
    import Darwin
#endif

import CGLib

/// CustomStringConvertible extension for GError ErrorType
extension ErrorTypeProtocol {
    /// The error message associated with the receiver.
    public var description: String {
        return String(cString: error_ptr.pointee.message)
    }

    /// The error domain, code, and message associated with the receiver.
    public var debugDescription: String {
        return String("\(quarkToString(quark: error_ptr.pointee.domain) ?? "-") error \(error_ptr.pointee.code): \(String(cString: error_ptr.pointee.message) )")
    }
}

public extension ErrorType {
    /// Initialise from a raw Integer value
    /// - Parameter rawValue: value to initalise from
    convenience init(rawValue: Int32) {
        let quark = g_quark_from_string("Error \(rawValue)")
        let error: UnsafeMutablePointer<GError> = g_error_new_literal(quark, rawValue, g_quark_to_string(quark))
        self.init(cPointer: error)
    }

    /// Raw error code
    var rawValue: Int32 {
        get { cast(error_ptr.pointee.code) }
        set { error_ptr.pointee.code = cast(newValue) }
    }
}

extension ErrorType: CustomStringConvertible {}
extension ErrorType: CustomDebugStringConvertible {}
extension ErrorRef: CustomStringConvertible {}
extension ErrorRef: CustomDebugStringConvertible {}
