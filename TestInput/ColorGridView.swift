//
//  ColorGridView.swift
//  TestInput
//
//  Created by 常志平 on 29/11/22.
//

import SwiftUI

struct ColorGridView: View {
    
    // The value assigned to columnLayout specifies a three-column grid. You can change this value any time you want.
    let columnLayout = Array(repeating: GridItem(), count: 3)
    
    @State private var selectedColor = Color.gray
    
    let allColors: [Color] = [
        .pink,
        .red,
        .orange,
        .yellow,
        .mint,
        .teal,
        .cyan,
        .blue,
        .indigo,
        .purple,
        .brown,
        .gray
    ]
    
    
    var body: some View {
        VStack {
            Text("Array content is: \(allColors.description)")
            
            Text("Selected Color")
                .font(.body)
                .fontWeight(.semibold)
                .foregroundColor(selectedColor)
                .padding(10)
            
            
            // The grid is “lazy” because it doesn’t create its grid items until they are needed. LazyVGrid takes an argument for columns which determines how many columns show up in the grid.
            ScrollView {
                LazyVGrid(columns: columnLayout) {
                    
                    // Inside the LazyVGrid, you define each item for the grid to display. To do this, you use a ForEach loop to iterate over the allColors array. By using the color’s name as an identifier, ForEach can find the right element when it needs to update the color’s view.
                    ForEach(allColors, id: \.description) { color in
//                        ForEach(allColors, id: \.self) { color in
                        Button {
                            selectedColor = color
                        } label: {
                            RoundedRectangle(cornerRadius: 4.0)
                                .aspectRatio(1.0, contentMode: ContentMode.fit)
                                .foregroundColor(color)
                        }
                        .buttonStyle(.plain)
                    }
                }
            }
        }
        .padding(10)
    }
}

struct ColorGridView_Previews: PreviewProvider {
    static var previews: some View {
        ColorGridView()
    }
}
