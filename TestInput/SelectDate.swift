//
//  SelectDate.swift
//  TestInput
//
//  Created by 常志平 on 8/11/22.
//

import SwiftUI

struct SelectDate: View {
    @State var selectedDate = Date()
    
    var dateClosedRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .day, value: -1, to: Date())!
        let max = Calendar.current.date(byAdding: .day, value: 1, to: Date())!
        return min...max
    }

    
    var body: some View {
        //日期选择器(DatePicker)的样式也会根据其祖先而改变。 在 Form 或 List 下，它显示为单个列表行，您可以点击以展开到日期选择器（就像日历应用程序一样）。
        NavigationView {
          Form {
              Section {
                  DatePicker(
                      selection: $selectedDate,
                      in: dateClosedRange,
                      displayedComponents: .date,
                      label: { Text("Due Date") }
                  )
              }
          }
        }
        
        
    }
}

struct SelectDate_Previews: PreviewProvider {
    static var previews: some View {
        SelectDate()
    }
}
