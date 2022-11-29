//
//  StepperAdjust.swift
//  TestInput
//
//  Created by 常志平 on 29/11/22.
//

import SwiftUI

struct StepperAdjust: View {
    @State private var number: Int = 0
    
    var body: some View {
        Stepper(value: $number, in: 0...10,
                label: { Text("Number is \(number)")
        })
    }
}

struct StepperAdjust_Previews: PreviewProvider {
    static var previews: some View {
        StepperAdjust()
    }
}
