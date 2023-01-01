import XCTest
@testable import EN15302

final class EN15302Tests: XCTestCase {

    func testExample() throws {
        let profile = EN15302.profile(.railA)
        let points = profile.profile()

        let formatter = NumberFormatter()
        formatter.minimumFractionDigits = 3
        formatter.maximumFractionDigits = 3
        for point in points {
            let xString = formatter.string(from: NSNumber(value: point.x)) ?? ""
            let yString = formatter.string(from: NSNumber(value: point.y)) ?? ""
            print("\(xString)\t\(yString)")
        }
    }

}
