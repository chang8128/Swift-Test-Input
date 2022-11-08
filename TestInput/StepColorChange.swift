//
//  StepColorChange.swift
//  TestInput
//
//  Created by 常志平 on 8/11/22.
//

import SwiftUI

struct StepColorChange: View {
    @State private var value = 0
    let colors: [Color] = [.orange, .red, .gray, .blue, .green, .purple, .pink]

    func incrementStep() {
        value += 1
        if value >= colors.count { value = 0}
    }

    func decrementStep() {
        value -= 1
        if value < 0 {
            value = colors.count - 1}
    }

    
    var body: some View {
        // 根据步进改变值，并随之而改变颜色
        Stepper {
            Text("Value: \(value) Color: \(colors[value].description)")
        } onIncrement: {
            incrementStep()
        } onDecrement: {
            decrementStep()
        }
        .padding(5)
        .background(colors[value])
    }
}

struct StepColorChange_Previews: PreviewProvider {
    static var previews: some View {
        StepColorChange()
    }
}
