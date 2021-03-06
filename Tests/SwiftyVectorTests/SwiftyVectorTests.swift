import XCTest
@testable import SwiftyVector
#if canImport(CoreGraphics)
import CoreGraphics
#endif

class SwiftyVectorTests: XCTestCase {
    func testExample() {
        do {
            let a: Vector2 = [2.0, 1.0]
            let b: Vector2 = [-3.0, 6.0]
            
            let sum        = a + b                 // [-1.0, 7.0]
            let difference = a - b                 // [5.0, -5.0]
            let product    = a * 2                 // [4.0, 2.0]
            let quotient   = a / 2                 // [1.0, 0.5]
            
            let length     = a.length              // 2.23607
            let distance   = a.distance(from: b)   // 6.08276
            
            let dotProduct = a.dotProduct(with: b) // 0.0
            let angle      = a.angle(from: b)      // 1.5708
            
            let c: Vector3 = [1.0, 2.0, -2.0]
            let unit       = c.unit                // [0.333333, 0.666667, -0.666667]
            
            XCTAssertEqual(sum,        [-1.0, 7.0])
            XCTAssertEqual(difference, [5.0, -5.0])
            XCTAssertEqual(product,    [4.0, 2.0])
            XCTAssertEqual(quotient,   [1.0, 0.5])
            
            XCTAssertEqual(length,   sqrt(5.0))
            XCTAssertEqual(distance, sqrt(50.0))
            
            XCTAssertEqual(dotProduct, 0.0)
            XCTAssertEqual(angle, .pi / 2, accuracy: 1.0e-5)
            
            XCTAssertEqual(unit, [1.0 / 3.0, 2.0 / 3.0, -2.0 / 3.0] as Vector3)
            
            print(length)
            print(distance)
            print(angle)
            print(unit)
        }
        
        #if canImport(CoreGraphics)
        do {
            // interoperability with CoreGraphics
            let v = Vector2(CGPoint(x: 2.0, y: 3.0))
            let p = CGPoint(v)
            
            XCTAssertEqual(v.x, 2.0)
            XCTAssertEqual(v.y, 3.0)
            XCTAssertEqual(p.x, 2.0)
            XCTAssertEqual(p.y, 3.0)
        }
        
        do {
            // CGPoint as a Vector
            let a: CGPoint = [2.0, 1.0]
            let b: CGPoint = [-3.0, 6.0]
            
            let sum        = a + b                 // [-1.0, 7.0]
            let difference = a - b                 // [5.0, -5.0]
            let product    = a * 2                 // [4.0, 2.0]
            let quotient   = a / 2                 // [1.0, 0.5]
            
            let length     = a.length              // 2.23607
            let distance   = a.distance(from: b)   // 6.08276
            
            let dotProduct = a.dotProduct(with: b) // 0.0
            let angle      = a.angle(from: b)      // 1.5708
            
            XCTAssertEqual(sum,        [-1.0, 7.0])
            XCTAssertEqual(difference, [5.0, -5.0])
            XCTAssertEqual(product,    [4.0, 2.0])
            XCTAssertEqual(quotient,   [1.0, 0.5])
            
            XCTAssertEqual(length,   sqrt(5.0))
            XCTAssertEqual(distance, sqrt(50.0))
            
            XCTAssertEqual(dotProduct, 0.0)
            XCTAssertEqual(angle, .pi / 2, accuracy: 1.0e-5)
        }
        #endif
        
    }

    static var allTests : [(String, (SwiftyVectorTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
