//
//  String.swift
//  GLib
//
//  Created by Rene Hexel on 27/04/2017.
//  Copyright © 2017, 2018 Rene Hexel.  All rights reserved.
//
import CGLib

/// Allow Swift strings to interact with GLib strings
extension String {
    /// Return a GString corresponding to the given swift string.
    /// The returned string pointer needs to be freed using g_string_free(*, true)
    var ptr: UnsafeMutablePointer<GString> { return g_string_new(self) }
}

/// Allow StringRefs to be initialised from Swift strings
public extension StringRef {
    /// Construct a StringRef from a Swift string.
    /// The returned string needs to be freed using free(free_segment: true)
    init(_ s: String) { ptr = s.ptr }
}

/// A subclass of StringType that represents unique ownership of the underlying
/// GString pointer and frees its content upon release
public class StringClass: StringType {
    /// Initialise from a copy of the given GString
    override public init(_ op: UnsafeMutablePointer<GString>) {
        super.init(UnsafeMutablePointer(g_string_new(op.pointee.str)))
    }

    /// Initialise from a swift string
    public init(_ s: String) {
        super.init(s.ptr)
    }

    /// free the contained string upon release
    deinit {
        g_string_free(ptr, 1)
    }
}

/// Swift string extension to generate GLib strings
public extension String {
    /// Return a GString reference that needs to be manually freed
    /// using free(free_segment: true)
    var g_string_ref: StringRef { return StringRef(self) }

    /// Return a memory-managed StringType that will be freed using ARC.
    var g_string: StringClass { return StringClass(self) }
}
