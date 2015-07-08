//: [Previous](@previous)
//:
//: ## Functor
//: A type on which we can define `map` is a functor
//:
let double: (Int -> Int) = { $0 * 2 }

[1, 2, 3].map(double)

Optional(2).map(double)

Result.Success(2).map(double)
Result.Failure("Something went wrong").map(double)
//:
//: **That's it**, _kinda_.
//:
//: There a lot more to say regarding Functors and their properties, but this is as far as we'll go.
//:
//: [Next](@next)
