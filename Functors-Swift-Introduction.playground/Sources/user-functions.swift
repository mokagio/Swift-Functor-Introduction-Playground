public struct User {
    public let firstName: String
    public let lastName: String

    public init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

public func joinedName(user: User) -> String {
    return user.firstName + user.lastName
}

public func emojiFromString(string: String) -> String? {
    let count = string.characters.count
    if count % 5 == 0 {
        return "🐼"
    }
    if count % 7 == 0 {
        return "🐷"
    }
    if count % 2 == 0 {
        return "🐨"
    }
    if count % 3 == 0 {
       return "🐵"
    }

    return .None
}

public func fancifyEmoji(emoji: String) -> String {
    return "✨\(emoji)✨"
}
