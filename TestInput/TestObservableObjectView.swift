//
//  TestObservableObjectView.swift
//  TestInput
//
//  Created by 常志平 on 4/12/22.
//

import SwiftUI

class Notebook: ObservableObject {
    public var name = "Note Books of Apple"
}

struct TestObservableObjectView: View {
    @ObservedObject var notebook = Notebook()
    
    var body: some View {
        VStack {
            Text("\(notebook.name)")
                .padding()
            Button("Click Me") {
                notebook.name = "Note Books released by Apple"
            }
        }
    }
}

struct TestObservableObjectView_Previews: PreviewProvider {
    static var previews: some View {
        TestObservableObjectView()
    }
}
