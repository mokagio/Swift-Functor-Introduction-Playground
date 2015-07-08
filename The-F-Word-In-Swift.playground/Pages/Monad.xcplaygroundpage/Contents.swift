//: [Previous](@previous)
//:
//: ## Monad
//:
//: A functor on which which we can define `flatMap` is a monad
//:
let intHalf: (Int -> Int?) = {
    if $0 % 2 == 0 { return $0 / 2 }
    return .None
}

Optional(42).flatMap(intHalf)

let halfOperation: (Int -> Result<Int>) = {
    if $0 % 2 == 0 { return .Success($0 / 2) }
    return .Failure("Cannot divide value in half")
}

Result.Success(42).flatMap(halfOperation)
//:
//: **That's it**, _kinda_.
//:
//: There a lot more to say regarding Mondas, Functors, and their properties, but this is as far as we'll go.
//:
//:
//: [Next](@next)
