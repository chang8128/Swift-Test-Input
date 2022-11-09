//
//  TestInputNumber2.swift
//  TestInput
//
//  Created by 常志平 on 8/11/22.
//

import SwiftUI

struct TestInputNumber2: View {
    @State var name = ""
    
    var body: some View {
        List{
            TextField("name", text:$name, onEditingChanged: getFocus)
        }
    }
    
    func getFocus(focused: Bool) {
        print("get focus:\(focused ? "true" : "false")")
    }
}

struct TestInputNumber2_Previews: PreviewProvider {
    static var previews: some View {
        TestInputNumber2()
    }
}
