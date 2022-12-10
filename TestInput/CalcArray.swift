//
//  CalcArray.swift
//  TestInput
//
//  Created by 常志平 on 5/12/22.
//

import SwiftUI

func findMax<T: Comparable>(_ array: [T]) -> T? {
    guard var max = array.first else { return nil }
    
    for element in array.dropFirst() {
        if(element > max ) {
            max = element
        }
    }
    return max
}


func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}


struct CalcArray: View {
    private let testArray = [8, 16, 22, -22, 34, 1]
    
    var someInt = 3
    var anotherInt = 107
    
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}


struct CalcArray_Previews: PreviewProvider {
    static var previews: some View {
        CalcArray()
    }
}
