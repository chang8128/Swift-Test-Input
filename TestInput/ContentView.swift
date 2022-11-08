//
//  ContentView.swift
//  TestInput
//
//  Created by 常志平 on 8/11/22.
//

import SwiftUI

struct ContentView: View {
    @State var isShowing = true
    @State private var username: String = ""
    @State private var fullText: String = "这是一些可编辑文本"
    
    @State private var speed = 50.0
    @State private var isEditing = false
    
    @State private var selection: String = ""
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!!!")
            
                .padding()
            
            Toggle(isOn: $isShowing) {
                Text("This is a Toggle button, which set default value to on.")
            }
            
            Button(action: {
                print("did tap.......")
            }, label: {Text("Click Me")})
            
           TextField("User name (email address)", text: $username)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .border(Color(UIColor.separator))
            
            
            //可编辑文本
            TextEditor(text: $fullText)
                .foregroundColor(Color.gray)
                .font(.custom("HelveticaNeue", size: 13))
                .lineSpacing(15)
            
            
            //滑块值，步进5
            VStack {
                    Slider(
                        value: $speed,
                        in: 0...100,
                        step: 5
                    ) {
                       Text("Speed")
                    } minimumValueLabel: {
                        Text("0")
                    } maximumValueLabel: {
                        Text("100")
                    } onEditingChanged: { editing in
                        isEditing = editing
                    }
                    Text("\(speed)")
                        .foregroundColor(isEditing ? .red : .blue)
                }
            
            
            // 下拉选择一个项目
            Form {
                Section {
                  Picker(selection: $selection,
                    label: Text("下拉选择一个项目"),
                    content: {
                        Text("Value 1").tag(0)
                        Text("Value 2").tag(1)
                        Text("Value 3").tag(2)
                        Text("Value 4").tag(3)
                  })
                }
              }
            
        }
        .padding()
        
       
        // 滚动排列页面
        ScrollView {
          LazyVStack(alignment: .leading) {
            ForEach(1...100, id: \.self) {
                Text("Row \($0)")
            }
          }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
