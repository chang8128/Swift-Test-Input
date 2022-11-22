//
//  TestNavigation.swift
//  TestInput
//
//  Created by 常志平 on 20/11/22.
//

import SwiftUI

struct TestNavigation: View {
    var body: some View {
        NavigationView {
            NavigationLink(
                destination: Text("Destination"),
                label: {
                    Text("Navigate")
                })
            .navigationBarTitle("Main", displayMode: .large)
        }
    }
}

struct TestNavigation_Previews: PreviewProvider {
    static var previews: some View {
        TestNavigation()
    }
}
