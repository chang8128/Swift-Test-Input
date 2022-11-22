//
//  TestArray.swift
//  TestInput
//
//  Created by 常志平 on 22/11/22.
//

import SwiftUI

let agents = ["Cyril", "Lana", "Pam", "Sterling"]


struct TestArray: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            ForEach(agents, id: \.self) {
                Text($0)
            }
        }
    }
}

struct TestArray_Previews: PreviewProvider {
    static var previews: some View {
        TestArray()
    }
}
