//
//  Time.swift
//  GLib
//
//  Created by Rene Hexel on 27/04/2017.
//  Copyright © 2017 Rene Hexel.  All rights reserved.
//
import CGLib

/// Internal Class that wraps a one-parameter closure to make sure the closure
/// is retained until no longer required
public class TimerClosureHolder {

    public let call: () -> Bool

    public init(_ closure: @escaping () -> Bool) {
        self.call = closure
    }
}

func _timeoutAdd(_ interval: CUnsignedInt, priority p: CInt = 0, data: TimerClosureHolder, handler: @convention(c) @escaping (gpointer) -> gboolean) -> CUnsignedInt {
    let opaqueHolder = Unmanaged.passRetained(data).toOpaque()
    let callback = unsafeBitCast(handler, to: SourceFunc.self)
    let rv = timeoutAddFull(priority: p, interval: interval, function: callback, data: opaqueHolder) {
        if let swift = $0 {
            let holder = Unmanaged<TimerClosureHolder>.fromOpaque(swift)
            holder.release()
        }
    }
    return rv
}

/// Connects a (T) -> Void closure or function to a timer.
/// Similar to g_timeout_add_full(), but allows
/// to provide a Swift closure that can capture its surrounding context.
@discardableResult
public func timeout(add interval: Int, priority p: Int = 0, handler: @escaping () -> Bool) -> Int {
    let rv = _timeoutAdd(CUnsignedInt(interval), priority: CInt(p), data: TimerClosureHolder(handler)) {
        let holder = Unmanaged<TimerClosureHolder>.fromOpaque($0).takeUnretainedValue()
        let rv: gboolean = holder.call() ? 1 : 0
        return rv
    }
    return Int(rv)
}
