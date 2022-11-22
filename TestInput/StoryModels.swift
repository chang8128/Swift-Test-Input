//
//  StoryModels.swift
//  TestInput
//
//  Created by 常志平 on 21/11/22.
//

import Foundation

struct Story {
    let pages: [StoryPage]
    
    subscript(_ pageIndex: Int) -> StoryPage {
        return pages[pageIndex]
    }
}

struct StoryPage {
    let text: String
    
    let choices: [Choice]
    
    init(_ text: String, choices: [Choice]) {
        self.text = text
        self.choices = choices
    }
}

struct Choice {
    let text: String
    let destination: Int
}


let story = Story(pages: [
    StoryPage("text", choices: [Choice(text: "Text", destination: 1), Choice(text: "Text", destination: 2), Choice(text: "Text", destination: 3)]),
    StoryPage("text", choices: [Choice(text: "text", destination: 4), Choice(text: "Text", destination: 5)]),
    StoryPage("text", choices: [Choice(text: "text", destination: 4)]),
    StoryPage("text", choices: [Choice(text: "Text", destination: 7)])
])
