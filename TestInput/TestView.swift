//
//  TestView.swift
//  TestInput
//
//  Created by 常志平 on 8/11/22.
//

import SwiftUI

struct TestView: View {
    @State var name: String = ""
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
            
            
            // 显示可编辑文本界面的控件。
            TextField("Please input something here", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.all, 20)
                    .multilineTextAlignment(.center)

            
            
            // 容器视图，将其子视图排列在垂直增长的网格中，仅在需要时创建项目。
            let columns: [GridItem] = Array(repeating: .init(.fixed(30)), count: 10)

            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach((0...100), id: \.self) {
                        Text("\($0)").background(Color.green)
                    }
                }
            }
            
           
            // 将子项排列在水平增长的线中的视图，仅在需要时创建项。
            ScrollView(.horizontal) {
                LazyHStack(alignment: .center, spacing: 20) {
                    ForEach(1...100, id: \.self) {
                        Text("Column \($0)")
                    }
                }
            }
            
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
