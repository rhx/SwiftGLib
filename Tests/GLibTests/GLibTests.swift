#if os(Linux)
    import Glibc
#else
    import Darwin
#endif

import XCTest
@testable import GLib

class GLibTests: XCTestCase {

    /// check that we can get the current date and time
    func testDateTime() {
        let dateTime = DateTime.newNowLocal()
        XCTAssertNotNil(dateTime)
    }

    /// check that we can convert the given Unix UTC time
    func testDateTimeUnixUTC() {
        let t = Int64(time(nil))
        let dateTime = DateTime(unixUTC: t)
        let unix = dateTime.toUnix()
        XCTAssertEqual(unix, t)
        let offs = dateTime.utcOffset
        XCTAssertEqual(offs, 0)
        let abbr = dateTime.timezoneAbbreviation
        XCTAssertEqual(abbr, "UTC")
    }

    /// check that we can read a directory
    func testDirOpen() {
        let existing_path = "/tmp"
        do {
            guard let dir = try Dir.open(path: existing_path, flags: 0) else {
                XCTFail() ; return
            }
            defer { dir.close() }
            let first: String! = dir.readName()    // get the first entry
            XCTAssertNotNil(first)
            XCTAssertFalse(first.isEmpty)
            dir.rewind()                            // go back
            let first_again = dir.readName()       // get first entry again
            XCTAssertEqual(first, first_again)
        } catch {
            XCTFail("\(error)")
        }
    }

    /// check that we can handle errors
    func testErrorType() {
        let nonexistent = "/non/existent/path"
        do {
            guard let dir = try Dir.open(path: nonexistent, flags: 0) else {
                XCTFail() ; return
            }
            defer { dir.close() }
            XCTFail("\(nonexistent) should have failed to open")
        } catch let e as GLib.ErrorType {
            XCTAssertFalse(e.description.isEmpty)
        } catch {
            XCTFail("Unknown error: \(error)")
        }
    }

    /// check that we can get the default main context
    func testDefaultMainContext() {
        let context = MainContext.defaultContext()
        let p = context.ref()
        XCTAssertEqual(p, context.ptr)
        context.unref()
        XCTAssertNil(context.findSourceByID(sourceID: 123))
        XCTAssertNotNil(context.pollFunc)
        let pending = context.pending()
        XCTAssertEqual(context.iteration(mayBlock: false), pending)
        XCTAssertFalse(context.isOwner)
        context.pushThreadDefault()
        XCTAssertTrue(context.isOwner)
    }

    /// check that we can create a main loop
    func testMainLoopCreation() {
        let mainLoop = MainLoop()
        let context = mainLoop.context
        XCTAssertNotNil(context)
    }

    /// test mainloop run and timeout_add / timeout_add_full
    func testTimeoutAdd() {
        let mainLoop = MainLoop()
        let context = MainContextRef(mainLoop.context)
        var count1 = 10
        withUnsafeMutablePointer(to: &count1) {
            let rv = timeoutAdd(interval: 10, function: {
                guard let p = $0?.assumingMemoryBound(to: Int.self) else {
                    XCTFail("Unexpected NULL pointer")
                    return 0
                }
                p.pointee -= 1
                return p.pointee == 0 ? 0 : 1
            }, data: UnsafeMutableRawPointer($0))
            XCTAssertEqual(rv, 1)
            while $0.pointee > 0 {
                let oldCount = $0.pointee
                let trigger = context.iteration(mayBlock: true)
                let value = trigger ? oldCount - 1 : oldCount
                XCTAssertEqual($0.pointee, value)
            }
        }
        XCTAssertFalse(context.pending())

        var count2 = 10
        let rv = timeout(add: 5) {
            count2 -= 1
            return count2 != 0
        }
        XCTAssertEqual(rv, 2)
        while count2 > 0 {
            let oldCount = count2
            let trigger = context.iteration(mayBlock: true)
            let value = trigger ? oldCount - 1 : oldCount
            XCTAssertEqual(count2, value)
        }
        XCTAssertFalse(context.pending())
    }
}
extension GLibTests {
    static var allTests : [(String, (GLibTests) -> () throws -> Void)] {
        return [
            ("testDateTime",            testDateTime),
            ("testDateTimeUnixUTC",     testDateTimeUnixUTC),
            ("testDirOpen",             testDirOpen),
            ("testErrorType",           testErrorType),
            ("testDefaultMainContext",  testDefaultMainContext),
            ("testMainLoopCreation",    testMainLoopCreation),
            ("testTimeoutAdd",          testTimeoutAdd),
        ]
    }
}
