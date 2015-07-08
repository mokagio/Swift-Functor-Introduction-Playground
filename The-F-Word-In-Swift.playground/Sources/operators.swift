infix operator <^> { associativity left }

public func <^><A, B>(f: A -> B, a: A?) -> B? {
    return a.map(f)
}

infix operator >>- { associativity left }

public func >>-<A, B>(a: A?, f: A -> B?) -> B? {
    return a.flatMap(f)
}