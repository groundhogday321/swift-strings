
// SWIFT STRINGSimport Foundation

// A Swift string is a series of characters, words, or other data in double quotes ("") of the String type

// use var if you want to change the string and let if not

// create string
var string1 = "hello"

// create string with type stated explicitly
var string2: String = "hello again"

// create empty string
var string3 = ""

// create empty string with initializer syntax
var string4 = String()

// access first character (notice we use the subscript syntax [])
var string5 = "It's gonna be a phenomenal day!"
print(string5[string5.startIndex])

// access last character
var string6 = "Your friendly neighborhood Spider-Man!"
// note that the endIndex is the position after the last character in a String
print(string6[string6.index(before: string6.endIndex)])

// access some character in the middle
var string7 = "abcdefghijklmnopqrstuvwxyz"
var string7Index = string7.index(string7.startIndex, offsetBy: 3)
print(string7[string7Index])

// access a set of characters (substring using range)
var string8 = "Seize the day!"
var startIndexString8 = string8.index(string8.startIndex, offsetBy: 6)
var endIndexString8 = string8.index(string8.endIndex, offsetBy: -4)
var string8Range = startIndexString8..<endIndexString8
// var string8Substring = string8.substring(with: string8Range)
var string8Substring = string8[string8Range]
print(string8Substring)

// insert character(s) into string
var string9 = "Today, it is outside."
string9.insert(contentsOf: "nice ", at: string5.index(string5.startIndex, offsetBy: 13))
print(string9)

// remove character(s) from string
var string10 = "There is no big rush."
var startIndexString10 = string10.index(string10.startIndex, offsetBy: 12)
var endIndexString10 = string10.index(string10.endIndex, offsetBy: -5)
var string10Range = startIndexString10..<endIndexString10
string10.removeSubrange(string10Range)
print(string10)

// compare strings test for equality
var string11 = "Are we the same?"
var string12 = "Are we the same?"
if string11 == string12 {
    print("Yes, we are the same.")
}

// prefix
var array1 = ["Bengal tiger","Siberian tiger","Cheetah","Jaguar","Bengal tiger","Bengal tiger","Lion","Lion", "Siberian tiger", "Siberian tiger", "Siberian tiger", "Siberian tiger"]
var bengalTigersCount = 0
for i in array1 {
    if i.hasPrefix("Bengal") {
        bengalTigersCount += 1
    }
}
print(bengalTigersCount)

// suffix
var tigersCount = 0
for i in array1 {
    if i.hasSuffix("tiger") {
        tigersCount += 1
    }
}
print(tigersCount)

// check for empty string
var string13 = ""
if string13.isEmpty {
    print("The string is empty")
} else {
    print("Not empty")
}

// uppercase, lowercase
var string14 = "good morning"
var upperCaseString14 = string14.uppercased()
print(upperCaseString14)

var string15 = "GOOD MORNING"
var lowerCaseString15 = string15.lowercased()
print(lowerCaseString15)

// length of string
var alphabet = "abcdefghijklmnopqrstuvwxyz"
print(alphabet.count)

// count number of spaces in a string
var string16 = "words words words words"
var countSpacesString16 = string16.filter{$0 == " "}.count
print(countSpacesString16)

// string interpolation
var superHero = "Superman"
var weakness = "Kryptonite"
var string17 = "\(superHero)'s weakness is \(weakness)"
print(string17)

// characters
var character1: Character = "a"