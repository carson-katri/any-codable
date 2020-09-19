# AnyCodable

Neither of these will work:
```swift
let anyArray: [Any]
let codableArray: [Codable]

JSONEncoder().encode(anyArray) // Any isn't Encodable
JSONEncoder().encode(codableArray) // Protocol cannot conform to Encodable
```
`AnyCodable` wraps primitive `Codable` types, allowing a heterogeneous `Codable` collection to be encoded/decoded:
```swift
JSONEncoder().encode(anyArray.anyCodable)
JSONEncoder().encode(codableArray.anyCodable)
```

This outputs JSON similar to:
```json
[
    {
        "type": "String",
        "value": "Hello, world!"
    },
    {
        "type": "Double",
        "value": 0.5
    },
    ...
]
```

`AnyCodable` supports all of the primitive `Codable` types:
```swift
let anyCodableArray: [AnyCodable] = [
    .String("Hello, world!"),
    .Int(0),
    .Double(0.5),
    .Bool(true),
    .UInt32(5),
    ...
]
```
You don't need to manually wrap the types either. `Array<Any>`, `Array<Codable>`, and all primitive `Codable` types have the `anyCodable` property, which wraps them automatically:
```swift
5.anyCodable
"Hello, world!".anyCodable,
Array<Any>([
    0,
    5.5,
    "Hello, world!"
]).anyCodable
```
You can access the value of `AnyCodable` using `rawValue`, which will return `Codable`:
```
anyCodableArray[0].rawValue // "Hello, world!"
anyCodableArray[1].rawValue // 0
```
