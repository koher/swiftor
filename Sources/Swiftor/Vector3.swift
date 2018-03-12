public struct Vector3: Vector, Codable {
    public var x: Double
    public var y: Double
    public var z: Double
    
    public init(x: Double, y: Double, z: Double) {
        self.x = x
        self.y = y
        self.z = z
    }
    
    public func dotProduct(with v: Vector3) -> Double {
        return x * v.x + y * v.y + z * v.z
    }
    
    public static let zero: Vector3 = Vector3(x: 0, y: 0, z: 0)
    
    public var description: String {
        return "[\(x.description), \(y.description), \(z.description)]"
    }
    
    public var debugDescription: String {
        return "[\(x.debugDescription), \(y.debugDescription), \(z.debugDescription)]"
    }
}

public func +(lhs: Vector3, rhs: Vector3) -> Vector3 {
    return Vector3(x: lhs.x + rhs.x, y: lhs.y + rhs.y, z: lhs.z + rhs.z)
}

public func -(lhs: Vector3, rhs: Vector3) -> Vector3 {
    return Vector3(x: lhs.x - rhs.x, y: lhs.y - rhs.y, z: lhs.z - rhs.z)
}

public func *(lhs: Vector3, rhs: Double) -> Vector3 {
    return Vector3(x: lhs.x * rhs, y: lhs.y * rhs, z: lhs.z * rhs)
}

public func /(lhs: Vector3, rhs: Double) -> Vector3 {
    return Vector3(x: lhs.x / rhs, y: lhs.y / rhs, z: lhs.z / rhs)
}

public func ==(lhs: Vector3, rhs: Vector3) -> Bool {
    return lhs.x == rhs.x && lhs.y == rhs.y && lhs.z == rhs.z
}

extension Vector3: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Double...) {
        precondition(elements.count == 3)
        
        self.init(x: elements[0], y: elements[1], z: elements[2])
    }
}