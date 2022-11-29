//
//  CreateList.swift
//  TestInput
//
//  Created by 常志平 on 8/11/22.
//

import SwiftUI

struct CreateList: View {
    let names = ["John", "Apple", "Seed"]
    
    var body: some View {
        VStack {
            
            
            List(0 ..< 10) { item in
                Text("Hello, World!")
            }
            
            
            Group {
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            
            
            List {
                Text("Hello world")
                Text("Hello world")
                Text("Hello world")
            }
            
            
            
            List {
                Section(header: Text("Swift"), footer: Text("We will miss you")) {
                    Text("UITableView")
                }
                
                Section(header: Text("SwiftUI"), footer: Text("A lot to learn")) {
                    Text("List")
                }
            }
        }
    }
}

struct CreateList_Previews: PreviewProvider {
    static var previews: some View {
        CreateList()
    }
}
