import Foundation

func passwordGenerator(_ length: Int = 10) -> String {
    let allowedCharacters: String = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_-#()!?0123456789"

    // minLength defines the minimum number of characters to be requested from the user.
    let minLength: Int = 10
    var password: String = ""

    if length < minLength {
        return "The minimum characters allowed is \(minLength)."
    } else {
        for _ in 0 ..< length  {
        password.append(allowedCharacters.randomElement()!)
        }
        return password   
    }
}

// The function expects a number that corresponds to the length of the desired password.
print(passwordGenerator(25))