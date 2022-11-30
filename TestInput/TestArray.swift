//
//  TestArray.swift
//  TestInput
//
//  Created by 常志平 on 22/11/22.
//

import SwiftUI
//import Numerics

let agents = ["Cyril", "Lana", "Pam", "Sterling"]

struct Person: Identifiable {
    let id = UUID()
    let name: String
}

let people: [Person] = [
    Person(name: "Alice"),
    Person(name: "Bob"),
    Person(name: "Cliary"),
    Person(name: "Dinty"),
    Person(name: "Epson")
]

// 让代码更易读，特别是\.1和Array(…)的部分，为了增加易读性（Clarity at the point of use）, 我们可以再进一步。可以给Sequence增加一个扩展：
extension Sequence {
    /// Numbers the elements in `self`, starting with the specified number.
    /// - Returns: An array of (Int, Element) pairs.
    func numbered(startingAt start: Int = 1) -> [(number: Int, element: Element)] {
        Array(zip(start..., self))
    }
}


struct TestArray: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
            ForEach(agents, id: \.self) {
                Text($0)
                    .foregroundColor(Color.gray)
            }
            
            ForEach(people) { item in
                Text("\(item.name)")
                    .font(.title2)
                    .foregroundColor(Color.pink)
            }
            
            //使用另外的ForEach初始化方法init(_:id:content:) 来使用key path显示的指定元素的ID。这里例子中是\.1.id，其中.1表示元组中第二个元素person，.id自然是person的唯一值key。
            ForEach(Array(zip(1..., people)), id: \.1.id) { number, person in
                Text("\(number), \(person.name)")
                    .foregroundColor(Color.blue)
            }
            
            // 给Sequence增加一个扩展 numbered 的方式
            ForEach(people.numbered(), id: \.element.id) { number, person in
                Text("\(number). \(person.name)")
            }
        }
    }
}

struct TestArray_Previews: PreviewProvider {
    static var previews: some View {
        TestArray()
    }
}
