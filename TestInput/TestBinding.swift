//
//  TestBinding.swift
//  TestInput
//
//  Created by 常志平 on 22/11/22.
//

import SwiftUI

struct TestBinding: View {
    @State var selection = 0
    
    var body: some View {
        let binding = Binding(
            get: { self.selection },
            set: { self.selection = $0 }
        )
        
        return VStack {
            Picker("Select a number", selection: binding) {
                ForEach(0 ..< 3) {
                    Text("Item \($0)")
                }
            }.pickerStyle(SegmentedPickerStyle())
        }
    }
}

struct TestBinding_Previews: PreviewProvider {
    static var previews: some View {
        TestBinding()
    }
}
