import XCTest
@testable import AnyCodable

final class AnyCodableTests: XCTestCase {
    func testAll() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let types: [Codable] = [
            0,
            0.0,
            "Hello, world!"
        ]
        guard let encoded = try? JSONEncoder().encode(types.anyCodable) else {
            return XCTAssert(false, "Failed to encode")
        }
        guard let decoded = try? JSONDecoder().decode([AnyCodable].self, from: encoded) else {
            return XCTAssert(false, "Failed to decode")
        }
        XCTAssertEqual(types.anyCodable, decoded)
        XCTAssertEqual(types.count, decoded.rawValue.count)
    }

    static var allTests = [
        ("testAll", testAll),
    ]
}
