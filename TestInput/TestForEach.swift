//
//  TestForEach.swift
//  TestInput
//
//  Created by 常志平 on 20/11/22.
//

import SwiftUI


// 测试使用 id \.self 来做 ForEach 调用
struct Staff: Hashable {
    let name: String
}


struct TestForEach: View {
    let staffs = [Staff(name: "Harry Potter"), Staff(name: "Harry Potter"), Staff(name: "Herminoe Granger")]
    
    var body: some View {
               
        VStack {
            List {
                ForEach([2, 4, 6, 8, 10], id: \.self ) {
                    Text("\($0) is even")
                }
            }
            
            List(staffs, id: \.self) { staff in
                Text(staff.name)
            }
        }
    }
}

struct TestForEach_Previews: PreviewProvider {
    static var previews: some View {
        TestForEach()
    }
}
