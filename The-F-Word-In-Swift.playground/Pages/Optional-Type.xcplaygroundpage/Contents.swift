//: ## Optional is a type

var optionalString: String?

optionalString = "I ♥️ Melbourne CocoaHeads"
optionalString = nil

//: ? is just a syntactic sugar

var optionalInt: Optional<Int>

optionalInt = 42
optionalInt = nil
optionalInt = .Some(42)
optionalInt = .None

//: We can write our own optional

/*
enum Maybe<T> {
    case Just(T)
    case None
}

var maybeString: Maybe<String>

maybeString = Just("quotation here")
*/

//: [Next](@next)
