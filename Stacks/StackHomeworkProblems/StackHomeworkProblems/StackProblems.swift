//
//  StackProblems.swift
//  StackHomeworkProblems
//
//  Created by C4Q  on 10/30/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation


//Problem One:
//Find the largest integer in a Stack of Ints

func largest(stack: Stack<Int>) -> Int {
    var max = 0
    var current = stack.peek()!
    while !stack.isEmpty() {
        
        if current > max {
            max = current
        }
        current = stack.pop()!
    }
    return max
    
}


//Problem Two:
//Find the sum of a Stack of Ints

func sum(stack: Stack<Int>) -> Int {
    var current = stack.peek()!
    var sum = 0
    while !stack.isEmpty() {
    current = stack.pop()!
    sum += current
    }
    return sum
}

//Problem Three:
//Reverse a Stack without using an Array

//Sample input:
/*
 4
 2
 9
 3
*/

//Sample output:
/*
 3
 9
 2
 4
*/

func reverse<T:Comparable>(stack: Stack<T>) -> Stack<T> {
 let reversedStack = Stack<T>()
   while !stack.isEmpty() {
    reversedStack.push(element: stack.pop()!)
    }
    return reversedStack
    
}


//Problem Four:
//Determine if two stacks are equal

func equalStacks<T: Equatable>(stackOne: Stack<T>, stackTwo: Stack<T>) -> Bool {
    
    var results = false
    var a = stackOne.peek()
    var b = stackTwo.peek()
    
    if stackOne.isEmpty() && stackTwo.isEmpty() {
        results = true
    }
    while !stackOne.isEmpty() && !stackTwo.isEmpty() {
        a = stackOne.pop()
        b = stackTwo.pop()
        if a != b {
            results = false
            break
        }
        else {
            results = true
        }
    }
    return results
}

//Problem Five:
//Write a function that pushes a new element to the bottom of a Stack

func pushBottom<T:Comparable>(stack: Stack<T>, newElement: T) -> Stack<T> {
    var newStack =  reverse(stack: stack)
    newStack.push(element: newElement)
    return reverse(stack: newStack)
}

//Problem Six:
//Determine if the parentheses are balanced in a given String

//Sample input: ((()))
//Sample output: true

//Sample input: ((())
//Sample output: false

//Sample input: (()((())()))
//Sample output: false


func isBalanced(str: String) -> Bool {
    return false
}

//Bonus: Problem Seven:
//Use a stack to convert a number in decimal to binary

func convertToBinary(_ num: Int) -> String {
    return ""
}

