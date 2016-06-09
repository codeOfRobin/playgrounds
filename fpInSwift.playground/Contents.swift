//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var evens :[Int] = []
for i in 1...10
{
    if i%2==0
    {
        evens.append(i)
    }
}
print(evens)

func isEven(no:Int)->Bool
{
    return no%2==0
}
evens = Array(1...10).filter(isEven)

evens = Array(1...10).filter({(number)->Bool in number%2==0})
print(evens)

func swap2Ints (inout a:Int,inout b:Int)->()
{
    let c = a
    a = b
    b = c
}

var a = 2,b = 3
swap2Ints(&a, b: &b)
print(a)

func swap<T> ( inout a:T,inout b:T)
{
    let c = a
    a = b
    b = c
}
swap(&a, b: &b)
print(a)

extension Array
{
    func myFilter(functionToApply:(Element)->Bool)->[Element]
    {
        var result:[Element] = []
        for el in self
        {
                if functionToApply(el)
                {
                    result.append(el)
                }
        }
        return result
    }
}
//evens = myFilter(Array(1...10), functionToApply: {$0%2==0})
evens = Array(1...10).myFilter({$0%2 == 0})
print(evens)

let evenSum = Array(1...10)
    .filter { (number) in number % 2 == 0 }
    .reduce(0) { (total, number) in max(total,number) }

let digits = ["3","1","4","1"]
let output = 3141

var digitString = digits.reduce(0, combine: {(number,newDigit) in number*10 + Int(newDigit)!})
print(digitString)


extension Array
{
    func myReduce<U>(var start:U, combFunc:(U,Element)->U)->U
    {
        for el in self
        {
            start = combFunc(start,el)
        }
        return start
    }
}
digitString = digits.myReduce(0, combFunc: {(number,newDigit) in number*10 + Int(newDigit)!})
print(digitString)

let words = ["Cat", "Chicken", "fish", "Dog", "Mouse", "Guinea Pig", "monkey"]


func buildIndex(words: [String]) -> [Character:[String]]
{
    var indexDict = [Character:[String]]()
    for word in words
    {

        let firstChar = Character(word.substringToIndex(word.startIndex.advancedBy(1)).uppercaseString)
        if indexDict[firstChar] == nil
        {
            indexDict[firstChar] = [word]
        }
        else
        {
            indexDict[firstChar]?.append(word)
        }
    }
    return indexDict
}

print(buildIndex(words))

extension Array where Element:Equatable {
    func removeDuplicates() -> [Element] {
        var result = [Element]()
        
        for value in self {
            if result.contains(value) == false {
                result.append(value)
            }
        }
        
        return result
    }
}

//func fpBuildIndex(words:[String])->[Character:[String]]
//{
//    return words.map({(word) in Character(word.substringToIndex(word.startIndex.advancedBy(1)).uppercaseString)}).removeDuplicates().map({(letter)->[Character:[String]] in
//        for word in words:
//            if
//    
//    })
//}



var this : Int?
this = 2
print(this)

