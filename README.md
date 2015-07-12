# Functors in Swift - A simple introduction

> Note: This Playground is written in Swift 2.0 and Xcode 7 Beta 3.

This is the playground for my lightning talk at [July's 2015 Melbourne CocoaHeads](http://www.melbournecocoaheads.com/).

The talk is a simple introduction to Functors and Monads in Swift, focusing on the practical use of these concepts, rather than their mathematical definition.

The cool things about Functors and Monads are `map` and `flatMap`. Using these we can simplify code like this:

```swift
func getFancyEmojiForUser() -> String? {
  if let actuallyAUser = userFromDatabase() {
    let joinedUserName = joinedName(actuallyAUser)

    if let emojiForUser = emojiFromString(joinedUserName) {
      return fancifyEmoji(emojiForUser)
    }
  }

  return .None
}
```

into something that is easier to write and specially **easier to reason about**.

```swift
func getFancyEmojiForUser() -> String? {
  return userFromDatabase()
    .map(joinedName)
    .flatMap(emojiFromString)
    .map(fancifyEmoji)
}
```

If you are interested in this tweet me [@mokagio](https://twitter.com/mokagio) or visit [mokacoding](http://mokacoding.com)

---

(c) 2015 - Giovanni Lodi
