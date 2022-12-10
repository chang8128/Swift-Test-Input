//
//  TestTupleView.swift
//  TestInput
//
//  Created by 常志平 on 10/12/22.
// 以文本形式显示元组 [([Int], Int, Int)] 的内容，需要首先把待定的元组 Hashable 化，然后用 ForEach 处理

import SwiftUI

struct TestTupleView: View {
    
    @State var output: [([Int], Int, Int)] = [
        ([1, 2, 3], 4, 5),
        ([6, 7, 8], 9, 10),
        ([11, 12, 13], 14, 15)
    ]
    
    
    // 使用 Hashable 协议
    struct HashableTuple: Hashable {
        let value: ([Int], Int, Int)

        func hash(into hasher: inout Hasher) {
            // 实现 hash 函数
            hasher.combine(value.0)
            hasher.combine(value.1)
            hasher.combine(value.2)
        }

        static func == (lhs: HashableTuple, rhs: HashableTuple) -> Bool {
            // 实现 == 函数
            return lhs.value.0 == rhs.value.0 && lhs.value.1 == rhs.value.1 && lhs.value.2 == rhs.value.2
        }
    }
    
    
    // 将原来的元组转换为 HashableTuple 类型
    var hashableOutput: [HashableTuple] {
        output.map { HashableTuple(value: $0)}
    }
    
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text("Below is a button, click it to show the result of calculation.")
            
            ForEach(hashableOutput, id: \.self) { item in
                HStack {
                    Text("[ \(item.value.0.map { String($0)}.joined(separator: ",")) ]")
                    Text("\(item.value.1)")
                    Text("\(item.value.2)")
                }
            }
        }
    }
}

struct TestTupleView_Previews: PreviewProvider {
    static var previews: some View {
        TestTupleView()
    }
}
