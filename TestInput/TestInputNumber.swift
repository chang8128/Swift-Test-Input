//
//  TestInputNumber.swift
//  TestInput
//
//  Created by 常志平 on 8/11/22.
//

import SwiftUI
import Combine


// 只接受数字形式的输入
struct TestInputNumber: View {
    @State var input = ""
    @State var soundLevel: Set = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
    let cast = ["Vivien", "Marlon", "Kim", "Karl"]
    
    var body: some View {
        VStack {
            Text("Test 1")
            TextField("input Sound Level", text: $input)
                .padding(.horizontal)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
                .onReceive(Just(input)) { newValue in
                    let filtered = newValue.filter { "0987654321".contains($0) }
                    if filtered != newValue {
                        self.input = filtered
                    }
                }
            
            
            Text("Test 2")
            TextField("input Sound Level", text: $input)
                .padding(.horizontal)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
                .onReceive(Just(input)) { newValue in
                    let filtered = cast.filter {$0.count < 5 }
                }
        }
    }
}

struct TestInputNumber_Previews: PreviewProvider {
    static var previews: some View {
        TestInputNumber()
    }
}
