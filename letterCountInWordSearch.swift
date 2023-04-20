// Create a function that counts the number of times a particular letter shows up in the word search.

// Examples
// letterCounter([
//   ["D", "E", "Y", "H", "A", "D"],
//   ["C", "B", "Z", "Y", "J", "K"],
//   ["D", "B", "C", "A", "M", "N"],
//   ["F", "G", "G", "R", "S", "R"],
//   ["V", "X", "H", "A", "S", "S"]
// ], "D") ➞ 3

// // "D" shows up 3 times: twice in the first row, once in the third row.

// letterCounter([
//   ["D", "E", "Y", "H", "A", "D"],
//   ["C", "B", "Z", "Y", "J", "K"],
//   ["D", "B", "C", "A", "M", "N"],
//   ["F", "G", "G", "R", "S", "R"],
//   ["V", "X", "H", "A", "S", "S"]
// ], "H") ➞ 2

func letterCounter(_ arr: [[Character]], _ letter: Character) -> [String: Int] {
    var counts = [Int]()
    var result: [String: Int] = [:]
    
    for row in arr {
        var count = 0
        for col in row {
            if col == letter {
                count += 1
            }
        }
        counts.append(count)
    }

    for (index, count) in counts.enumerated() {
        result["row \(index+1)"] = count
    }
    
    return result
}

let charArr: [[Character]] = [
    ["D", "E", "Y", "H", "A", "D"],
    ["C", "B", "Z", "Y", "J", "K"],
    ["D", "B", "C", "A", "M", "N"],
    ["F", "G", "G", "R", "S", "R"],
    ["V", "X", "H", "A", "S", "S"]
]

print(letterCounter(charArr, "k"))
