import CGLib

// The following three declarations are invalid in the .gir XML file:

public let G_MININT16: Int16 = -32768
public let G_MININT32: Int32 = -2147483648
public let G_MININT8: Int8 = -128
public let G_SOURCE_CONTINUE: gboolean = 1


func cast(_ param: UInt)   -> Int    {    Int(bitPattern: param) }
func cast(_ param: Int)    -> UInt   {   UInt(bitPattern: param) }
func cast(_ param: UInt16) -> Int16  {  Int16(bitPattern: param) }
func cast(_ param: Int16)  -> UInt16 { UInt16(bitPattern: param) }
func cast(_ param: UInt32) -> Int32  {  Int32(bitPattern: param) }
func cast(_ param: Int32)  -> UInt32 { UInt32(bitPattern: param) }
func cast(_ param: UInt64) -> Int64  {  Int64(bitPattern: param) }
func cast(_ param: Int64)  -> UInt64 { UInt64(bitPattern: param) }
func cast(_ param: Float)  -> Double { Double(param) }
func cast(_ param: Float80) -> Double { Double(param) }
func cast(_ param: Double) -> Float { Float(param) }
func cast(_ param: Double) -> Float80 { Float80(param) }
func cast<U: UnsignedInteger>(_ param: U) -> Int { Int(param) }
func cast<S: SignedInteger>(_ param: S) -> Int { Int(param) }
func cast<U: UnsignedInteger>(_ param: Int) -> U { U(param) }
func cast<S: SignedInteger>(_ param: Int) -> S  { S(param) }
func cast<I: BinaryInteger>(_ param: I) -> Int32 { Int32(param) }
func cast<I: BinaryInteger>(_ param: I) -> UInt32 { UInt32(param) }
func cast<I: BinaryInteger>(_ param: I) -> Bool { param != 0 }
func cast<I: BinaryInteger>(_ param: Bool) -> I { param ? 1 : 0 }

func cast(_ param: UnsafeRawPointer?) -> String! {
    return param.map { String(cString: $0.assumingMemoryBound(to: CChar.self)) }
}

func cast(_ param: OpaquePointer?) -> String! {
    return param.map { String(cString: UnsafePointer<CChar>($0)) }
}

func cast(_ param: UnsafeRawPointer) -> OpaquePointer! {
    return OpaquePointer(param)
}

func cast<S, T>(_ param: UnsafeMutablePointer<S>?) -> UnsafeMutablePointer<T>! {
    return param?.withMemoryRebound(to: T.self, capacity: 1) { $0 }
}

func cast<S, T>(_ param: UnsafeMutablePointer<S>?) -> UnsafePointer<T>! {
    return param?.withMemoryRebound(to: T.self, capacity: 1) { UnsafePointer<T>($0) }
}

func cast<S, T>(_ param: UnsafePointer<S>?) -> UnsafePointer<T>! {
    return param?.withMemoryRebound(to: T.self, capacity: 1) { UnsafePointer<T>($0) }
}

func cast<T>(_ param: OpaquePointer?) -> UnsafeMutablePointer<T>! {
    return UnsafeMutablePointer<T>(param)
}

func cast<T>(_ param: OpaquePointer?) -> UnsafePointer<T>! {
    return UnsafePointer<T>(param)
}

func cast(_ param: OpaquePointer?) -> UnsafeMutableRawPointer! {
    return UnsafeMutableRawPointer(param)
}

func cast(_ param: UnsafeRawPointer?) -> UnsafeMutableRawPointer! {
    return UnsafeMutableRawPointer(mutating: param)
}

func cast<T>(_ param: UnsafePointer<T>?) -> OpaquePointer! {
    return OpaquePointer(param)
}

func cast<T>(_ param: UnsafeMutablePointer<T>?) -> OpaquePointer! {
    return OpaquePointer(param)
}

func cast<T>(_ param: UnsafeRawPointer?) -> UnsafeMutablePointer<T>! {
    return UnsafeMutableRawPointer(mutating: param)?.assumingMemoryBound(to: T.self)
}

func cast<T>(_ param: UnsafeMutableRawPointer?) -> UnsafeMutablePointer<T>! {
    return param?.assumingMemoryBound(to: T.self)
}

func cast<T>(_ param: T) -> T { return param }

extension gboolean {
    private init(_ b: Bool) { self = b ? gboolean(1) : gboolean(0) }
}

func asStringArray(_ param: UnsafePointer<UnsafePointer<CChar>?>) -> [String] {
    var ptr = param
    var rv = [String]()
    while ptr.pointee != nil {
        rv.append(String(cString: ptr.pointee!))
        ptr = ptr.successor()
    }
    return rv
}

func asStringArray<T>(_ param: UnsafePointer<UnsafePointer<CChar>?>, release: ((UnsafePointer<T>?) -> Void)) -> [String] {
    let rv = asStringArray(param)
    param.withMemoryRebound(to: T.self, capacity: rv.count) { release(UnsafePointer<T>($0)) }
    return rv
}
