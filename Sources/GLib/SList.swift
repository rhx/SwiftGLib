//
//  SList.swift
//  GLib
//
//  Created by Rene Hexel on 5/1/21.
//  Copyright © 2021, 2022 Rene Hexel.  All rights reserved.
//
import CGLib

/// Protocol for a typed `SList`, representing each element in a singly-linked list.
///
/// The `SListProtocol` protocol exposes the methods and properties of an underlying `GSList` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SList`.
/// Alternatively, use `SListRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
public protocol SListProtocol: AnySListProtocol {
    /// The element contained in each `SList` node.
    associatedtype Element: GPointerConstructible
}

public extension SListProtocol {
    /// Create an interator over a`ListRef`
    /// - Returns: a list iterator
    @inlinable func makeIterator() -> SListIterator<Element> {
        SListIterator(_ptr)
    }

    /// Return the typed data pointed to by the current element
    @inlinable var element: Element! {
        _ptr.pointee.data.flatMap { Element(gpointer: $0) }
    }
}

/// The `SList` class acts as a typed, memory-managed wrapper around `GSList`,
/// with the associated `Element` representing the type of
/// the elements stored in the list.
public class SList<Element: GPointerConstructible>: AnyList, SListProtocol {
}

/// The `SListRef` struct acts as a lightweight, typed wrapper around `GSList`,
/// with the associated `Element` representing the type of
/// the elements stored in the list.
public struct SListRef<Element: GPointerConstructible>: SListProtocol {
    public var ptr: UnsafeMutableRawPointer!
}

public extension SListRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GList>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GList>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GList>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GList>?) {
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

    /// Reference intialiser for a related type that implements `AnyListProtocol`
    @inlinable init<T: AnyListProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AnyListProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AnyListProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AnyListProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AnyListProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AnyListProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }
}

extension SList: Swift.Sequence {}
extension SListRef: Swift.Sequence {}

/// A lightweight iterator over a `GSList`
public struct SListIterator<Element: GPointerConstructible>: IteratorProtocol {
    public var list: UnsafeMutablePointer<GSList>?

    /// Constructor for an SListIterator
    /// - Parameter ptr: Optional `GList` pointer to iterate over
    @inlinable init(_ ptr: UnsafeMutablePointer<GSList>?) {
        list = ptr
    }

    /// Return the next element in the list
    /// - Returns: a pointer to the next element in the list or `nil` if the end of the list has been reached
    @inlinable public mutating func next() -> Element? {
        defer { list = list?.pointee.next }
        return (list?.pointee.data).flatMap { Element.init(gpointer: $0) }
    }
}
