public enum AnyCodable: Codable, Equatable {
    case Bool(Bool)
    case String(String)
    case Double(Double)
    case Float(Float)
    case Int(Int)
    case Int8(Int8)
    case Int16(Int16)
    case Int32(Int32)
    case Int64(Int64)
    case UInt(UInt)
    case UInt8(UInt8)
    case UInt16(UInt16)
    case UInt32(UInt32)
    case UInt64(UInt64)

    public var rawValue: Codable {
        switch self {
        case let .Bool(value):
            return value
        case let .String(value):
            return value
        case let .Double(value):
            return value
        case let .Float(value):
            return value
        case let .Int(value):
            return value
        case let .Int8(value):
            return value
        case let .Int16(value):
            return value
        case let .Int32(value):
            return value
        case let .Int64(value):
            return value
        case let .UInt(value):
            return value
        case let .UInt8(value):
            return value
        case let .UInt16(value):
            return value
        case let .UInt32(value):
            return value
        case let .UInt64(value):
            return value
        }
    }
    
    enum TypeName: String, Codable {
        case Bool
        case String
        case Double
        case Float
        case Int
        case Int8
        case Int16
        case Int32
        case Int64
        case UInt
        case UInt8
        case UInt16
        case UInt32
        case UInt64
    }
    
    enum CodingKeys: String, CodingKey {
        case type,
             value
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case let .Bool(value):
            try container.encode(TypeName.Bool.rawValue, forKey: .type)
            try container.encode(value, forKey: .value)
        case let .String(value):
            try container.encode(TypeName.String.rawValue, forKey: .type)
            try container.encode(value, forKey: .value)
        case let .Double(value):
            try container.encode(TypeName.Double.rawValue, forKey: .type)
            try container.encode(value, forKey: .value)
        case let .Float(value):
            try container.encode(TypeName.Float.rawValue, forKey: .type)
            try container.encode(value, forKey: .value)
        case let .Int(value):
            try container.encode(TypeName.Int.rawValue, forKey: .type)
            try container.encode(value, forKey: .value)
        case let .Int8(value):
            try container.encode(TypeName.Int8.rawValue, forKey: .type)
            try container.encode(value, forKey: .value)
        case let .Int16(value):
            try container.encode(TypeName.Int16.rawValue, forKey: .type)
            try container.encode(value, forKey: .value)
        case let .Int32(value):
            try container.encode(TypeName.Int32.rawValue, forKey: .type)
            try container.encode(value, forKey: .value)
        case let .Int64(value):
            try container.encode(TypeName.Int64.rawValue, forKey: .type)
            try container.encode(value, forKey: .value)
        case let .UInt(value):
            try container.encode(TypeName.UInt.rawValue, forKey: .type)
            try container.encode(value, forKey: .value)
        case let .UInt8(value):
            try container.encode(TypeName.UInt8.rawValue, forKey: .type)
            try container.encode(value, forKey: .value)
        case let .UInt16(value):
            try container.encode(TypeName.UInt16.rawValue, forKey: .type)
            try container.encode(value, forKey: .value)
        case let .UInt32(value):
            try container.encode(TypeName.UInt32.rawValue, forKey: .type)
            try container.encode(value, forKey: .value)
        case let .UInt64(value):
            try container.encode(TypeName.UInt64.rawValue, forKey: .type)
            try container.encode(value, forKey: .value)
        }
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        switch try container.decode(TypeName.self, forKey: .type) {
        case .Bool:
            self = try .Bool(container.decode(Swift.Bool.self, forKey: .value))
        case .String:
            self = try .String(container.decode(Swift.String.self, forKey: .value))
        case .Double:
            self = try .Double(container.decode(Swift.Double.self, forKey: .value))
        case .Float:
            self = try .Float(container.decode(Swift.Float.self, forKey: .value))
        case .Int:
            self = try .Int(container.decode(Swift.Int.self, forKey: .value))
        case .Int8:
            self = try .Int8(container.decode(Swift.Int8.self, forKey: .value))
        case .Int16:
            self = try .Int16(container.decode(Swift.Int16.self, forKey: .value))
        case .Int32:
            self = try .Int32(container.decode(Swift.Int32.self, forKey: .value))
        case .Int64:
            self = try .Int64(container.decode(Swift.Int64.self, forKey: .value))
        case .UInt:
            self = try .UInt(container.decode(Swift.UInt.self, forKey: .value))
        case .UInt8:
            self = try .UInt8(container.decode(Swift.UInt8.self, forKey: .value))
        case .UInt16:
            self = try .UInt16(container.decode(Swift.UInt16.self, forKey: .value))
        case .UInt32:
            self = try .UInt32(container.decode(Swift.UInt32.self, forKey: .value))
        case .UInt64:
            self = try .UInt64(container.decode(Swift.UInt64.self, forKey: .value))
        }
    }
}

extension Array where Element == Any {
    public var anyCodable: [AnyCodable] {
        compactMap {
            if let value = $0 as? Bool {
                return value.anyCodable
            }
            if let value = $0 as? String {
                return value.anyCodable
            }
            if let value = $0 as? Double {
                return value.anyCodable
            }
            if let value = $0 as? Float {
                return value.anyCodable
            }
            if let value = $0 as? Int {
                return value.anyCodable
            }
            if let value = $0 as? Int8 {
                return value.anyCodable
            }
            if let value = $0 as? Int16 {
                return value.anyCodable
            }
            if let value = $0 as? Int32 {
                return value.anyCodable
            }
            if let value = $0 as? Int64 {
                return value.anyCodable
            }
            if let value = $0 as? UInt {
                return value.anyCodable
            }
            if let value = $0 as? UInt8 {
                return value.anyCodable
            }
            if let value = $0 as? UInt16 {
                return value.anyCodable
            }
            if let value = $0 as? UInt32 {
                return value.anyCodable
            }
            if let value = $0 as? UInt64 {
                return value.anyCodable
            }
            return nil
        }
    }
}

extension Array where Element == Codable {
    public var anyCodable: [AnyCodable] {
        compactMap {
            if let value = $0 as? Bool {
                return value.anyCodable
            }
            if let value = $0 as? String {
                return value.anyCodable
            }
            if let value = $0 as? Double {
                return value.anyCodable
            }
            if let value = $0 as? Float {
                return value.anyCodable
            }
            if let value = $0 as? Int {
                return value.anyCodable
            }
            if let value = $0 as? Int8 {
                return value.anyCodable
            }
            if let value = $0 as? Int16 {
                return value.anyCodable
            }
            if let value = $0 as? Int32 {
                return value.anyCodable
            }
            if let value = $0 as? Int64 {
                return value.anyCodable
            }
            if let value = $0 as? UInt {
                return value.anyCodable
            }
            if let value = $0 as? UInt8 {
                return value.anyCodable
            }
            if let value = $0 as? UInt16 {
                return value.anyCodable
            }
            if let value = $0 as? UInt32 {
                return value.anyCodable
            }
            if let value = $0 as? UInt64 {
                return value.anyCodable
            }
            return nil
        }
    }
}

extension Array where Element == AnyCodable {
    public var rawValue: [Any] {
        map(\.rawValue)
    }
}

extension Bool {
    public var anyCodable: AnyCodable {
        .Bool(self)
    }
}
extension String {
    public var anyCodable: AnyCodable {
        .String(self)
    }
}
extension Double {
    public var anyCodable: AnyCodable {
        .Double(self)
    }
}
extension Float {
    public var anyCodable: AnyCodable {
        .Float(self)
    }
}
extension Int {
    public var anyCodable: AnyCodable {
        .Int(self)
    }
}
extension Int8 {
    public var anyCodable: AnyCodable {
        .Int8(self)
    }
}
extension Int16 {
    public var anyCodable: AnyCodable {
        .Int16(self)
    }
}
extension Int32 {
    public var anyCodable: AnyCodable {
        .Int32(self)
    }
}
extension Int64 {
    public var anyCodable: AnyCodable {
        .Int64(self)
    }
}
extension UInt {
    public var anyCodable: AnyCodable {
        .UInt(self)
    }
}
extension UInt8 {
    public var anyCodable: AnyCodable {
        .UInt8(self)
    }
}
extension UInt16 {
    public var anyCodable: AnyCodable {
        .UInt16(self)
    }
}
extension UInt32 {
    public var anyCodable: AnyCodable {
        .UInt32(self)
    }
}
extension UInt64 {
    public var anyCodable: AnyCodable {
        .UInt64(self)
    }
}