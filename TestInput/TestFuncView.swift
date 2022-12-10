//
//  TestFuncView.swift
//  TestInput
//
//  Created by 常志平 on 9/12/22.
//

import SwiftUI

struct TestFuncView: View {
    @State var output: String = "Hello World!"
    
    var body: some View {
        Text(output)
            .onReceive(NotificationCenter.default.publisher(for: Notification.Name("Output"))) {
                self.output = $0.object as? String ?? ""
            }
    }
}

func printOutput(_ output: String) {
    NotificationCenter.default.post(name: Notification.Name("Output"), object: output)
}

struct TestFuncView_Previews: PreviewProvider {
    static var previews: some View {
        TestFuncView()
    }
}
