//
//  Error.swift
//  GLib
//
//  Created by Rene Hexel on 27/04/2017.
//  Copyright © 2017 Rene Hexel.  All rights reserved.
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
        return String(cString: ptr.pointee.message)
    }

    /// The error domain, code, and message associated with the receiver.
    public var debugDescription: String {
        return String("\(quarkToString(quark: ptr.pointee.domain) ?? "-") error \(ptr.pointee.code): \(String(cString: ptr.pointee.message) )")
    }
}

extension ErrorType: CustomStringConvertible {}
extension ErrorType: CustomDebugStringConvertible {}
extension ErrorRef: CustomStringConvertible {}
extension ErrorRef: CustomDebugStringConvertible {}
