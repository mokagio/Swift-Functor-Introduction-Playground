//: [Previous](@previous)
//:
//: Using `map` we can have a nicer `if-let`
//:
func userFromDatabase() -> User? {
    return User(firstName: "Bruce", lastName: "Waine")
}

func getFancyEmojiForUser() -> String? {
    if let joinedUserName = userFromDatabase().map(joinedName) {
        return emojiFromString(joinedUserName).map(fancifyEmoji)
    }

    return .None
}

let p = getFancyEmojiForUser()
//:
//: The problem is we cannot use `map` with `emojiFromString`
//:
//: `func emojiFromString(string: String) -> String?`
//:
//: If only we had something like `map` but taking a A -> B? function...
//:
//: [Next](@next)
