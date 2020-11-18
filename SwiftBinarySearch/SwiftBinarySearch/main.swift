//
//  main.swift
//  SwiftBinarySearch
//
//  Created by 최원석 on 2020/11/18.
//

import Foundation

var numbers = [11, 59, 3, 2, 53, 17, 31, 7, 19, 67, 47, 13, 37, 61, 29, 43, 5, 41, 23]

print(numbers.count)
print(numbers.firstIndex(of: 43))

numbers.sort()
print(numbers)
print(binarySearchForAscending(array: numbers, item: 43))

numbers.reverse()
print(numbers)
print(binarySearchForDescending(array: numbers, item: 43))


// 오름차순으로 정렬된 array에서 item의 index를 return 해준다. array에 item이 없으면 -1을 리턴
func binarySearchForAscending<T: Comparable>(array: [T], item: T) -> Int {
    var low = 0
    var high = array.count - 1
    
    while low <= high {
        let mid = (low + high) / 2
        let guess = array[mid]
        if guess == item {
            return mid
        } else if guess > item {
            high = mid - 1
        } else {
            low = mid + 1
        }
    }
    return -1
}


// 내림차순으로 정렬된 array에서 item의 index를 return 해준다. array에 item이 없으면 -1을 리턴
func binarySearchForDescending<T: Comparable>(array: [T], item: T) -> Int {
    var low = 0
    var high = array.count - 1
    
    while low <= high {
        let mid = (low + high) / 2
        let guess = array[mid]
        if guess == item {
            return mid
        } else if guess < item {
            high = mid - 1
        } else {
            low = mid + 1
        }
    }
    return -1
}
