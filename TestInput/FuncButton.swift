//
//  TestHashableTuple.swift
//  TestInput
//
//  Created by 常志平 on 10/12/22.
// 在按钮的上方显示函数的返回值
// 在这个例子中，点击按钮会调用 `callFunction` 函数，并将函数的返回值存储到 `result` 变量中。然后将 `result` 变量作为 `Text` 组件的值进行显示。

import SwiftUI

struct FuncButton: View {
    @State var inputValue = ""
    
    @State var result: String = ""
    
    func funcTest(_ input: String) -> String {
        //在这里执行函数操作
        return "Hello " + input
    }
    
    var body: some View {
        VStack {
            TextField("输入参数", text: $inputValue)
            
            // 在此显示函数的返回结果
            Text("\(result)")
                .font(.title)
            
            // 定义一个按钮，执行函数并输入参数 inputValue
            Button(action: {
                self.result = self.funcTest(inputValue)
            }) {
                Text("点击执行函数")
            }
            
        }
    }
}

struct FuncButton_Previews: PreviewProvider {
    static var previews: some View {
        FuncButton()
    }
}
