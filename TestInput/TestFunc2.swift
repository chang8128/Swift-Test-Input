//
//  TestFunc2.swift
//  TestInput
//
//  Created by 常志平 on 9/12/22.
//

import SwiftUI

struct TestFunc2: View {
    
    var testArray: [Int] = [0, 4, 8, 9, 11]
    
    var body: some View {
        
            
            Divider()
            
            Text("Here is someting for static context.")
        
    }
}

func minDifference(array: [Int]) -> [(resultArray: [Int], firstDiff: Int, secondDiff: Int)] {
    let sortedArray = array.sorted()
    var shiftArray = sortedArray
    var firstDiff = sortedArray[sortedArray.count - 1] - sortedArray[0]
    var secondDiff = sortedArray[sortedArray.count - 2] - sortedArray[0]
    print(sortedArray, firstDiff, secondDiff)
    
    var resultArray = [Int]()
    var rotatedArrays: [(resultArray: [Int], firstDiff: Int, secondDiff: Int)] = []
    
    rotatedArrays.append((sortedArray, firstDiff, secondDiff))
    
    for _ in 0..<shiftArray.count {
        let firstElement = shiftArray.removeFirst()
        shiftArray.append(firstElement)
        var first = shiftArray[shiftArray.count - 1] - shiftArray[0]
        
        if first < 0 {
            first = first + 12
            firstDiff = first
            resultArray = shiftArray
            
            var second = resultArray[resultArray.count - 2] - resultArray[0]
            if second < 0 {
                second = second + 12
                secondDiff = second
                
                rotatedArrays.append((resultArray, firstDiff, secondDiff))
                
            } else {
                secondDiff = second
                
                rotatedArrays.append((resultArray, firstDiff, secondDiff))
            }
        } else {
            firstDiff = first
            resultArray = shiftArray
            
            var second = resultArray[resultArray.count - 2] - resultArray[0]
            if second < 0 {
                second = second + 12
                secondDiff = second
                
                rotatedArrays.append((resultArray, firstDiff, secondDiff))
            } else {
                secondDiff = second
                
                rotatedArrays.append((resultArray, firstDiff, secondDiff))
            }
        }
        print(resultArray, firstDiff, secondDiff)
    }
    return rotatedArrays
}

struct TestFunc2_Previews: PreviewProvider {
    static var previews: some View {
        TestFunc2()
    }
}
