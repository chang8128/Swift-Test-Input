//
//  TestScoreText.swift
//  TestInput
//
//  Created by 常志平 on 3/12/22.
// 点击“Toggle Name”时，Current User 在真实名字和昵称之间转换。点击 “+1” 时，无条件为这个 View 续一秒 显示的 Score 增加 1。

import SwiftUI

struct TestScoreText: View {
    @State private var showRealName = false
    
    var body: some View {
        VStack {
            Button("Toggle Name") {
                showRealName.toggle()
            }
            Text("Current User: \(showRealName ? "Wei Wang" : "onevcat")")
            ScorePlate().padding(.top, 20)
        }
    }
}

class Model: ObservableObject {
    init() { print("Model Created")}
    @Published var score: Int = 0
}

struct ScorePlate: View {
    @ObservedObject var model = Model()
    @State private var niceScore = false
    
    var body: some View {
        VStack {
            Button("+1") {
                if model.score > 3 {
                    niceScore = true
                }
                model.score += 1
            }
            Text("Score: \(model.score)")
            Text("Nice? \(niceScore ? "YES" : "NO")")
            ScoreText(model: model).padding(.top, 20)
        }
    }
}

struct ScoreText: View {
    @ObservedObject var model: Model
    
    var body: some View {
        if model.score > 10 {
            return Text("Fantastic")
        } else if model.score > 3 {
            return Text("Good")
        } else {
            return Text("Ummmm...")
        }
    }
}

struct TestScoreText_Previews: PreviewProvider {
    static var previews: some View {
        TestScoreText()
    }
}
