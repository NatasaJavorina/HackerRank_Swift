//
//  main.swift
//  helloNato
//
//  Created by Natasa Javorina on 2/11/19.
//  Copyright © 2019 Natasa Javorina. All rights reserved.
//

import Foundation

// test case
let n = 8
let s = "UDDDUDUUDDDUUUUDDUDDDDUUUUU"

func countingValleys(n: Int, s: String) -> Int {
    
    let arr = Array(s)
    var height = 0
    var valleyCount = 0

    for char in arr {
        if char == "U" {
            height += 1
        } else {
            height -= 1
            if height == -1 {
                valleyCount += 1
            }
        }
    }
    
    return valleyCount
}

print(countingValleys(n: n, s: s))
