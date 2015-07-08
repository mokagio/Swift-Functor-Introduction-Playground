//: [Previous](@previous)
//:
//: ## `flatMap`
//:
//: `flatMap` is like `map`, but it takes a function returning a value in a context
//:
//: `func flatMap<A, B>(value: Context(A), function: (A -> Context(B)) -> Context(B)`
//:
Optional(4).flatMap { $0}

let functionReturningAnOptional: (Int -> Int?) = { .Some($0 / 2) }

let flatMapped = Optional(42).flatMap(functionReturningAnOptional)
//:
//: It's easier to visualise in the context of Array
//:
struct Pizza {
    let name: String
    let ingredients: [String]
}

let pizzas = [
    Pizza(name: "Margherita", ingredients: ["Tomato", "Mozzarella", "Basil"]),
    Pizza(name: "Piccante", ingredients: ["Tomato", "Mozzarella", "Salami", "Chilli"]),
    Pizza(name: "Aussie", ingredients: ["Tomato", "Mozzarella", "Pineapple"]),
]

print(pizzas.flatMap { $0.ingredients })
//:
//: _for some reason the variable inspection doesn't show the expected result, use `print` and open the console_.
//:
//: [Next](@next)
