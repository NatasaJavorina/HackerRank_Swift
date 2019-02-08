//
//  main.swift
//  helloNato
//
//  Created by Natasa Javorina on 1/22/19.
//  Copyright © 2019 Natasa Javorina. All rights reserved.
//

import Foundation

let arr = [1, 4, 4, 5, 5, 5, 6, 6, 6, 3]
let testcase0 = [1, 4, 4, 4, 5, 3]
let testcase5 = [1, 2, 3, 4, 5, 4, 3, 2, 1, 3, 4]

func migratoryBirds(arr: [Int]) -> Int {
 
    var tempArr = [Int](repeating: 0, count: arr.count)
    var dict = [Int: Int]()
    
    for num in arr {
        tempArr[num] += 1
    }
    for (index, n) in tempArr.enumerated() {
        dict[index] = n
    }
    var sortedDict = dict.sorted(by: { $0.value > $1.value })
    let first = sortedDict.first
    let second = sortedDict[1]
    
    if first?.value == second.value && (first?.key)! < second.key {
        return (first?.key)!
    } else if first?.value == second.value && first!.key > second.key {
        return second.key
    } else {
        return (first?.key)!
    }
    
}

print(migratoryBirds(arr: arr))
print(migratoryBirds(arr: testcase0))
print(migratoryBirds(arr: testcase5))

