//
//  StateView.swift
//  TestInput
//
//  Created by 常志平 on 4/12/22.
//

import SwiftUI

struct StateView: View {
    @State var count = 0
    @State var countA = "eeer"
    
    var body: some View {
        VStack {
            Text("\(count)")
            Button("+1") {
                count += 1
            }
            .padding()
            
            MapView(countA: $countA)
            Text("\(countA)")
        }
    }
}

struct MapView: View {
    @Binding var countA: String
    
    var body: some View {
        VStack {
            Text("This is MapView")
            Button("Click Me") {
                self.countA = "123131312"
            }
        }
    }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView()
    }
}
