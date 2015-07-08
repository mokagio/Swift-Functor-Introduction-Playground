//: [Previous](@previous)
//:
//: ## Map
//:
//: `map` is usually associated with `Array`
//:
let array = [1, 2, 3]
let doubledArray = array.map { $0 * 2 }
//:
//: but other types can implement `map` as well.
//:
//: Turns out `Optional` implements `map`
//:
let anOptional: Int? = .None
let half = anOptional.map { $0 / 2 }
//:
//: [Next](@next)
