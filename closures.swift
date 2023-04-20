// Write a function that returns a closure, which transforms its input by adding a particular suffix at the end.

// Examples
// let add_ly = add_suffix("ly")

// add_ly("hopeless") ➞ "hopelessly"
// add_ly("total") ➞ "totally"

// let add_less = add_suffix("less")

// add_less("fear") ➞ "fearless"
// add_less("ruth") ➞ "ruthless"


func addSuffix(_ suffix: String) -> (String) -> String {
    return { str in
        return str + suffix
    }
}


// alternatively 

func add_suffix(_ suffix: String) -> (String) -> String {
	return { $0 + suffix }
}
