//: [Previous](@previous)
//:
//: We could write our own optional...
//:
enum Maybe<T> {
    case Just(T)
    case None
}

var maybeString: Maybe<String>
//:
//: ...but it would not be as usable
//:
maybeString = .Just("quotation here")
//:
//: [Next](@next)