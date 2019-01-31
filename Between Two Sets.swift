//
//  main.swift
//  BetweenTwoSets
//
//  Created by Natasa Javorina on 1/30/19.
//  Copyright © 2019 javorina. All rights reserved.
//

import Foundation

// test case 0
let a = [2, 4]
let b = [16, 32, 96]
// test case 1
let c = [1]
let d = [100]
// test case 2
let e = [3, 4]
let f = [24, 48]

func getTotalX(a: [Int], b: [Int]) -> Int {
    
    let minA = a.min()
    let maxB = b.max()
    var booleans = [Bool]()
    var helpArray = [Int]()
    var mainArray = [Int]()
    
    for num in stride(from: minA!, to: maxB! + 1, by: minA!) {
        for anum in a {
            if !booleans.contains(false) {
                if num % anum == 0 {
                    booleans.append(true)
                } else {
                    booleans.append(false)
                }
            }
        }
        if !booleans.contains(false) {
            helpArray.append(num)
        }
        booleans.removeAll()
    }
    for x in helpArray {
        for num in b {
            if !booleans.contains(false) {
                if num % x == 0 {
                    booleans.append(true)
                } else {
                    booleans.append(false)
                }
            }
        }
        if !booleans.contains(false) {
            mainArray.append(x)
        }
        booleans.removeAll()
    }
    return mainArray.count
}

print(getTotalX(a: a, b: b))
print(getTotalX(a: c, b: d))
print(getTotalX(a: e, b: f))
