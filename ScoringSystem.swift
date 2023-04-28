// Scoring System
// Andy, Ben and Charlotte are playing a board game. The three of them decided to come up with a new scoring system. 
// A player's first initial ("A", "B" or "C") denotes that player scoring a single point. 
// Given a string of capital letters, return an array of the players' scores.

// For instance, if ABBACCCCAC is written when the game is over, then Andy scored 3 points, 
// Ben scored 2 points, and Charlotte scored 5 points, since there are 3 instances of letter A, 
// 2 instances of letter B, and 5 instances of letter C. So the array [3, 2, 5] should be returned.

// Examples
// calculateScores("A") ➞ [1, 0, 0]

// calculateScores("ABC") ➞ [1, 1, 1]

// calculateScores("ABCBACC") ➞ [2, 2, 3]


import Foundation

func calculateScores(score: String) -> [Int] {
    var scores: [Int] = [0, 0, 0]

    for l in score {
        if l == 'A' {
            scores[0] += 1
        }
        if l == 'B' {
            scores[1] += 1
        }
        if l == 'C' {
            scores[2] += 1
        }
    }

    return scores
}



func calculateScores2(score: String) -> [Int] {
    var scores: [Int] = [0, 0, 0]

    for player in score {
        switch player {
        case "A":
            scores[0] += 1
        case "B":
            scores[1] += 1
        case "C":
            scores[2] += 1
        default:
            break
        }
    }

    return scores
}



func calculateScores3(score: String) -> [Int] {
    var scores = ["A": 0, "B": 0, "C": 0]

    for player in score {
        if let value = scores[String(player)] {
            scores[String(player)] = value + 1
        }
    }

    return [scores["A"]!, scores["B"]!, scores["C"]!]
}


