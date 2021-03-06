# SwiftyVector

*SwiftyVector* provides vector types for Swift.

```swift
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

// interoperability with CoreGraphics
let v = Vector2(CGPoint(x: 2.0, y: 3.0))
let p = CGPoint(v)
```

With SwiftyVector, `CGPoint` can be also used as a `Vector`.

```swift
import SwiftyVector
import CoreGraphics

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
```

## Installation

### Swift Package Manager

```swift
dependencies: [
    .package(url: "https://github.com/koher/SwiftyVector.git", from: "0.3.0"),
]
```

### Carthage

```
github "koher/SwiftyVector" ~> 0.3.0
```

## License

MIT
