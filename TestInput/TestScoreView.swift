//
//  TestScoreView.swift
//  TestInput
//
//  Created by 常志平 on 30/11/22.
//

import SwiftUI

class GameScore: ObservableObject {
    @Published var numericalScore = 0
    @Published var piecesCaptured = 0
}

struct TestScoreView: View {
    @ObservedObject var score: GameScore
    
    var body: some View {
        VStack {
            Text("Score is \(score.numericalScore), \(score.piecesCaptured) piece captured.")
                .padding()
            
            Button("Bigger score!") {
                score.numericalScore += 1
            }
            Button("More pieces!") {
                score.piecesCaptured += 1
            }
        }
    }
}

struct TestScoreView_Previews: PreviewProvider {
    static var previews: some View {
        TestScoreView(score: GameScore())
    }
}
