//: [Previous](@previous)
//: ## `if let`
//: ### a.k.a the price of optionals
//:
let optionalString: String? = "What would happen if I were an optional?"

var output: String
if let someString = optionalString {
    output = "input was a real string"
} else {
    output = "input was nil"
}

output
//:
//: [Next](@next)
