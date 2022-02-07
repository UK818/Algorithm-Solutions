import UIKit

//Write a function solution that, given a string of length N, returns any palindrome which can be obtained by
//replacing all of the question marks in string by lowercase letters ("a" - "z").
//If no palindrome can be obtained, the function should return the string "NO"

//A palindrome is a string that reads the same both forwards and backwards. eg, kayak, radar, mom.

//Examples:
//Given string = "?ab??a", the function should return "aabbaa"
//Given string = "bab??a", the function should return "NO"
//Given string = "?a?", the function should return "aaa", it may also return "zaz".

//Assume that:
//N is an integer within the range [1...1000]
//string contains of only lowercases letters ("a"-"z") or "?"



func palindrome(string: String) -> String {
	
	var stringArray = Array(string)
	
	for index in 0..<stringArray.count/2 {
		let currentCharacter = stringArray[index]
		let oppositeCharacter = stringArray[stringArray.count - 1 - index]
		
		if currentCharacter == "?" || oppositeCharacter == "?" {
			
			if currentCharacter == "?" && oppositeCharacter == "?" {
				stringArray[index] = "a"
				stringArray[stringArray.count - 1 - index] = "a"
			} else
			if currentCharacter == "?" && oppositeCharacter != "?" {
				stringArray[index] = oppositeCharacter
			} else
			if currentCharacter != "?" && oppositeCharacter == "?" {
				stringArray[stringArray.count - 1 - index] = currentCharacter
			}
			
		} else
		if currentCharacter != oppositeCharacter {
			return "NO"
		}
	}
	
	if stringArray.count % 2 == 1 {
		if(stringArray[stringArray.count / 2] == "?") {
			stringArray[stringArray.count / 2] = "a"
		}
	}
	
	return String(stringArray)
		
}

var testString = "c??ac"

palindromeChecker(string: testString)
