public func flatten<T>(array: [[T]]) -> [T] {
    var result = [T]()
    for subarray in array {
        result.extend(subarray)
    }
    return result
}