//: [Previous](@previous)
//:
//: `if-let`s can become nasty
//:
func userFromDatabase() -> User? {
    return User(firstName: "Bruce", lastName: "Waine")
}

func getFancyEmojiForUser() -> String? {
    if let actuallyAUser = userFromDatabase() {
        let joinedUserName = joinedName(actuallyAUser)

        if let emojiForUser = emojiFromString(joinedUserName) {
            return fancifyEmoji(emojiForUser)
        }
    }

    return .None
}

let p = getFancyEmojiForUser()
//:
//: [Next](@next)
