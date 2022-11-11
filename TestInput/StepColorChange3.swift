//
//  StepColorChange3.swift
//  TestInput
//
//  Created by 常志平 on 11/11/22.
//

import SwiftUI

struct StepColorChange3: View {
    @State private var values:[Int] = [0,1,2,3,0,0]
    
    let colors:[Color] = [.white, .yellow, .green, .blue, .purple, .pink, .cyan, .indigo, .brown, .gray, .orange, .red]
    
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
        .padding(.horizontal, 5)
        .background(colors[values[ndx]])
    }
    
    
    var body: some View {
        
        VStack {
            //            Text("stepper(0): \(values[0])")
            //            Text("stepper(0): \(values[1])")
            Text("\(values[1]), \(values[2]), \(values[3]), \(values[4]), \(values[5])")
            Text("\(values[4]) - \(values[1])")
            
            
            stepper(1)
            stepper(2)
            stepper(3)
            stepper(4)
            stepper(5)
        }
    }
}

struct StepColorChange3_Previews: PreviewProvider {
    static var previews: some View {
        StepColorChange3()
    }
}
