//: [Previous](@previous)

//: ## `if let`

let optionalString: String? = "what would happen if I were an optional?"

if let someString = optionalString {
    print("input was a real string")
} else {
    print("input was nil")
}

let a: String? = "a"
let b: String? = "b"
let c: String? = nil//"c"
let d: String? = "d"

if let someA = a, let someB = b, let someC = c, let someD = d {
    print("all inputs were valid")
} else {
    print("at least one input was nil")
}

//: Swift 2 added `guard`

func guardExample(a: String?, b: String?, c: String?, d: String?) {
    guard let someA = a, let someB = b, let someC = c, let someD = d else {
        print("at least one input was nil")
        return
    }

    print("all inputs were valid: \(someA), \(someB), \(someC), \(someD)")
}

guardExample("a", b: "b", c: "c", d: nil)

//: [Next](@next)
