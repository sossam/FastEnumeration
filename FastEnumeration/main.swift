//
//  main.swift
//  FastEnumeration
//
//  Created by 김소은 on 2021/01/12.
//

import Foundation

/* for - in */

// 1. Array
let nums: [Int] = [1, 2, 3, 4]
 
for num in nums {
    print(num)
}

for (index, num) in nums.enumerated() {
    print("(index: \(index) num: \(num))")
}

for index in nums.indices {
    print("(index: \(index) num: \(nums[index]))")
}

for index in 0..<nums.count {
    print("(index: \(index) num: \(nums[index]))")
}


// 2. Dictionary
let dict: [String : String] = ["A" : "Apple", "B" : "Banana", "C" : "Cherry"]
  
for (key, value) in dict {
    print("(key: \(key) value: \(value))")
}

for element in dict {
    print("(key: \(element.key) value: \(element.value))")
}

for key in dict.keys {
    print(key)
}

for value in dict.values.sorted() {
    print(value)
}


//3. Set
let numsSet: Set<Int> = [1, 2, 3, 4]

for num in numsSet {
    print(num)
}


/* forEach */

// 1. Array
let nums1: [Int] = [1, 2, 3, 4]

nums1.forEach {
    print($0)
}

nums1.enumerated().forEach {
    print("(index: \($0) num: \($1))")
}

nums1.indices.forEach {
    print("(index: \($0) num: \(nums1[$0]))")
}

// 2. Dictionary
let dict2: [String : String] = ["A" : "Apple", "B" : "Banana", "C" : "Cherry"]

dict2.forEach {
    print("(key: \($0.key) value: \($0.value))")
}

dict2.forEach { (key, value) in
    print("(key: \(key) value: \(value))")
}

dict2.keys.forEach {
    print($0)
}

dict2.values.sorted().forEach {
    print($0)
}


// 3. Set
let nums2: Set<Int> = [1, 2, 3, 4]

nums2.forEach {
    print($0)               // 2 3 1 4
}
