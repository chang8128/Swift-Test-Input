//
//  TestForEach.swift
//  TestInput
//
//  Created by 常志平 on 20/11/22.
//

import SwiftUI

struct Item: Identifiable {
    let id = UUID()
    var todo: String
}

struct TestForEach: View {
    @State private var todos: [Item] = [] // 用[] 开启一个空值
    
    var body: some View {
        Text("Text")
        List {
            ForEach(todos) { todoEntry in
                Text("This is something in my list!")
                Text("This a also in my list!")
                Text("And another thing!")
            }
        }
    }
}

struct TestForEach_Previews: PreviewProvider {
    static var previews: some View {
        TestForEach()
    }
}
