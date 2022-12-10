//
//  TestTuple2View.swift
//  TestInput
//
//  Created by 常志平 on 10/12/22.
//

import SwiftUI

struct User: Hashable, Identifiable {
    let id = UUID()
    let name: String
    let age: Int
    let career: String
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(age)
        hasher.combine(career)
    }
    
    static func == (lhs: User, rhs: User) -> Bool {
        return lhs.name == rhs.name &&
        lhs.age == rhs.age &&
        lhs.career == rhs.career
    }
}


struct TestTuple2View: View {
    @State var users: [User] = [
        (User(name: "Alice", age: 26, career: "Swim teacher")),
        (User(name: "Bob", age: 24, career: "Box Teacher")),
        (User(name: "Cathy", age: 23, career: "Gym Teacher"))
    ]
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
            VStack(alignment: .leading) {
                ForEach( users, id: \.self ) { user in
                    HStack {
                        Text("\(user.name)")
                        Text("\(user.age)")
                        Text("\(user.career)")
                    }
                }
            }
        }
    }
}

struct TestTuple2View_Previews: PreviewProvider {
    static var previews: some View {
        TestTuple2View()
    }
}
