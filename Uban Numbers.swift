// A number n is called uban if its name (in English) does not contain the letter "u". 
// In particular, it cannot contain the terms "four", "hundred", and "thousand",
// so the uban number following 99 is 1,000,000.
// Write a function to determine if the given integer is uban.

// Examples
// isUban(456) ➞ false
// isUban(25) ➞ true
// isUban(1098) ➞ false

func isNumberUban(_ num: Int) -> Bool {
    
}

func isUban1(_ n: Int) -> Bool {
    // Convert the number to its English name
    let numberFormatter = NumberFormatter()
    numberFormatter.numberStyle = .spellOut
    guard let name = numberFormatter.string(from: NSNumber(value: n))?.lowercased() else {
        return false
    }
    // Check if the name contains "u", "four", "hundred", or "thousand"
    return !name.contains("u") && !name.contains("four") && !name.contains("hundred") && !name.contains("thousand")
}

func isUban2(_ n: Int) -> Bool {
    let forbiddenTerms = ["u", "four", "hundred", "thousand"]
    var name = ""
    var temp = n // Make a temporary copy of the number
    while temp > 0 {
        let digit = temp % 10 // Extract the least significant digit
        switch digit {
        case 0: name = "zero " + name
        case 1: name = "one " + name
        case 2: name = "two " + name
        case 3: name = "three " + name
        case 4: name = "four " + name
        case 5: name = "five " + name
        case 6: name = "six " + name
        case 7: name = "seven " + name
        case 8: name = "eight " + name
        case 9: name = "nine " + name
        default: break
        }
        temp /= 10 // Remove the least significant digit
    }
    // Check if the name contains any forbidden terms
    for term in forbiddenTerms {
        if name.contains(term) {
            return false
        }
    }
    return true
}

func isUban3(_ n: Int) -> Bool {
    let digits = [0: "zero", 1: "one", 2: "two", 3: "three", 4: "four", 5: "five", 6: "six", 7: "seven", 8: "eight", 9: "nine"]
    let forbiddenTerms: Set<String> = ["u", "four", "hundred", "thousand"]
    var temp = n // Make a temporary copy of the number
    while temp > 0 {
        let digit = temp % 10 // Extract the least significant digit
        guard let name = digits[digit] else {
            return false // Should never happen, but just in case
        }
        if forbiddenTerms.contains(name) {
            return false
        }
        temp /= 10 // Remove the least significant digit
    }
    return true
}
