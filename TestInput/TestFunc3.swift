//
//  TestFunc3.swift
//  TestInput
//
//  Created by 常志平 on 9/12/22.
//

import SwiftUI

struct TestFunc3: View {
    @State var output: String = ""
    
    let values = [([1, 2, 3], 10, 20), ([4, 5, 6], 30, 40)]
    
    var body: some View {
        VStack {
            Button(action: {
                NotificationCenter.default.post(name: Notification.Name("Output"), object: funcTest3())
            }) {
                Text("Click me")
            }
            
            Text(output)
                .onReceive(NotificationCenter.default.publisher(for: Notification.Name("Output"))) {
                    self.output = $0.object as? String ?? ""
                }
        }
    }
}

func funcTest3() {
    print("Hello World!")
}


struct TestFunc3_Previews: PreviewProvider {
    static var previews: some View {
        TestFunc3()
    }
}
