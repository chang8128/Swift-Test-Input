//
//  RunFunctionView.swift
//  TestInput
//
//  Created by 常志平 on 10/12/22.
//  ForEach 交错显示较深的，和较浅的颜色，用奇偶行来判断

import SwiftUI

struct RunFunctionView: View {
    var body: some View {
        VStack {
            ForEach(0..<10) { row in
                Text("This is row \(row)")
                    .foregroundColor(row % 2 == 0 ? Color(red: 0.5, green: 0.5, blue: 0.5) : Color(red: 0.75, green: 0.75, blue: 0.75))
            }
        }
    }
}

struct RunFunctionView_Previews: PreviewProvider {
    static var previews: some View {
        RunFunctionView()
    }
}
