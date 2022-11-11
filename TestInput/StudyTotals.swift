//
//  StudyTotals.swift
//  TestInput
//
//  Created by 常志平 on 11/11/22.
//

import SwiftUI

struct Student: Identifiable {
    let id: String
    let name: String
    let gradeLevel: Int
    let studyHours: Int
}

class GetStudents: ObservableObject {
    @Published var items = [Student]()
    
    init() {
        self.items = [
            Student(id: "aa1", name: "Bobby", gradeLevel: 9, studyHours: 2),
            Student(id: "aa2", name: "Sally", gradeLevel: 12, studyHours: 4),
            Student(id: "aa3", name: "Susy", gradeLevel: 11, studyHours: 3),
            Student(id: "aa4", name: "Billy", gradeLevel: 12, studyHours: 5),
            Student(id: "aa5", name: "Jimmy", gradeLevel: 11, studyHours: 1),
            Student(id: "aa6", name: "Johnny", gradeLevel: 10, studyHours: 3),
            Student(id: "aa7", name: "Mikey", gradeLevel: 12, studyHours: 2),
        ]
    }
}

struct StudyTotals: View {
    @ObservedObject var students = GetStudents()
    var onlyUpperClass: Bool
    var studentsFiltered: [Student] {
        switch self.onlyUpperClass {
        case true: return students.items.filter {$0.gradeLevel == 11 || $0.gradeLevel == 12 }
        case false: return students.items
        }
    }
    
    var body: some View {
        
        var countTotal = self.studentsFiltered.count
        var hoursTotal = self.studentsFiltered.reduce(0) { $0 + $1.studyHours }
        
        return List {
            Group {
                HStack {
                    Text("Count")
                    Text("Hours")
                    Text("Avg")
                }
                ForEach(9...12, id: \.self) { gradeLevel -> AnyView in
                    let count = self.studentsFiltered.filter{ $0.gradeLevel ==  gradeLevel }.count
                    let hours = self.studentsFiltered.filter{ $0.gradeLevel ==  gradeLevel }.reduce(0) { $0 + $1.studyHours }
                    let avg = Float(hours) / Float(count)
                    countTotal += count
                    hoursTotal += hours
                    return AnyView(HStack {
                        Text("Grade\(gradeLevel)")
                        Text("\(count)")
                        Text("\(hours)")
                        Text("\(avg)")
                    })
                }
                HStack {
                    Text("TOTALS")
                    Text("\(countTotal)")
                    Text("\(hoursTotal)")
                    Text("\(Float(hoursTotal) / Float(countTotal))")
                }
            }
        }.padding()
    }
}

struct StudyTotals_Previews: PreviewProvider {
    static var previews: some View {
        StudyTotals(onlyUpperClass: true)
    }
}
