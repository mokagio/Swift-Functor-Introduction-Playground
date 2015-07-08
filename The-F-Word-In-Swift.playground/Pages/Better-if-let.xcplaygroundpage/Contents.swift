//: [Previous](@previous)
//:
//: Using `map` and `flatMap` we can have a cleaner `if-let`s chain
//:
func userFromDatabase() -> User? {
    return User(firstName: "Bruce", lastName: "Waine")
}

func getFancyEmojiForUser() -> String? {
    return userFromDatabase()
        .map(joinedName)
        .flatMap(emojiFromString)
        .map(fancifyEmoji)
}

let p = getFancyEmojiForUser()
//:
//: [Next](@next)
