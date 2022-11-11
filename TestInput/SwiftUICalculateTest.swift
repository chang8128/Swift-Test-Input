//
//  SwiftUICalculateTest.swift
//  TestInput
//
//  Created by 常志平 on 11/11/22.
//

import SwiftUI

class ArrayGenerator: ObservableObject {
    @Published var spectrum = [Float](repeating: 0.0, count: 1000)

    func run() {
        DispatchQueue.main.async { [self] in
            for bin in 0 ..< 1000 {
                spectrum[bin] = Float(bin)
            }
        }
    }
}

struct SwiftUICalculateTest: View {
    @StateObject private var generator = ArrayGenerator()
    
    var body: some View {
        let _ = print("Rendering...")
                Text(generator.spectrum.map { String($0) }.joined())
                    .onAppear {
                        generator.run()
                    }
    }
}

struct SwiftUICalculateTest_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUICalculateTest()
    }
}
