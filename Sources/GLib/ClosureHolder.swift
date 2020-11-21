public final class ClosureHolder<S,T> {
    public let call: (S) -> T
    
    @inlinable public init(_ closure: @escaping (S) -> T) {
        self.call = closure
    }
}

public final class ClosureHolder2<S, T, U> {
    
    public let call: (S, T) -> U
    
    public init(_ closure: @escaping (S, T) -> U) {
        self.call = closure
    }
}

public final class ClosureHolder3<S, T, U, V> {
    public let call: (S, T, U) -> V
    public init(_ closure: @escaping (S, T, U) -> V) {
        self.call = closure
    }
}

public final class ClosureHolder4<S, T, U, V, W> {
    public let call: (S, T, U, V) -> W
    public init(_ closure: @escaping (S, T, U, V) -> W) {
        self.call = closure
    }
}

public final class ClosureHolder5<S, T, U, V, W, X> {
    public let call: (S, T, U, V, W) -> X
    public init(_ closure: @escaping (S, T, U, V, W) -> X) {
        self.call = closure
    }
}

public final class ClosureHolder6<S, T, U, V, W, X, Y> {
    public let call: (S, T, U, V, W, X) -> Y
    public init(_ closure: @escaping (S, T, U, V, W, X) -> Y) {
        self.call = closure
    }
}

public final class ClosureHolder7<S, T, U, V, W, X, Y, Z> {
    public let call: (S, T, U, V, W, X, Y) -> Z
    public init(_ closure: @escaping (S, T, U, V, W, X, Y) -> Z) {
        self.call = closure
    }
}