import XCTest
@testable import GLib

class GLibTests: XCTestCase {

	func testExample() {
		// This is an example of a functional test case.
		// Use XCTAssert and related functions to verify your tests produce the correct results.
	}

}
extension GLibTests {
	static var allTests : [(String, GLibTests -> () throws -> Void)] {
		return [
			("testExample", testExample),
		]
	}
}
