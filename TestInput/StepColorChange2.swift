//
//  StepColorChange2.swift
//  TestInput
//
//  Created by 常志平 on 9/11/22.
//

import SwiftUI

struct StepColorChange2: View {
    @State private var values = [0,1,2,3,4,5,6]
    
    let colors:[Color] = [.orange, .yellow, .green, .blue, .purple, .pink, .cyan, .indigo, .brown, .white, .gray, .red]
    
    func stepper(_ ndx: Int) -> some View {
        Stepper {
            Text("Sound Level : \(values[ndx]) Color: \(colors[values[ndx]].description)")
        } onIncrement: {
            values[ndx] += 1
            if values[ndx] >= colors.count { values[ndx] = 0}
        } onDecrement: {
            values[ndx] -= 1
            if values[ndx] < 0 { values[ndx] = colors.count - 1}
        }
        .padding(5)
        .background(colors[values[ndx]])
    }
    
    
    
    var body: some View {
        VStack {
            stepper(0)
            stepper(1)
            stepper(2)
            stepper(3)
            stepper(4)
            stepper(5)
            stepper(6)
        }
    }
}

struct StepColorChange2_Previews: PreviewProvider {
    static var previews: some View {
        StepColorChange2()
    }
}
