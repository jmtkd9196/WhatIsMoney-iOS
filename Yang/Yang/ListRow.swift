//
//  ListRow.swift
//  Yang
//
//  Created by Kyungsoo Lee on 2023/01/12.
//

import SwiftUI

struct ListRow: View {
    @State private var isChecked = false
    var testImage: String
    var goal: String
    var current: String
    var process: String
    var body: some View {
        HStack {
            VStack {
                Image(testImage)
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame(width: 75, height: 75)
                Text("목표 이름")
                    .lineLimit(1)
                    .allowsTightening(true)
                    .minimumScaleFactor(0.001)
            }
            VStack {
                Text("목표 금액")
                    .bold()
                    .lineLimit(1)
                    .allowsTightening(true)
                    .minimumScaleFactor(0.001)
                Text(goal)
                    .lineLimit(1)
                    .allowsTightening(true)
                    .minimumScaleFactor(0.001)
                    
            }
            .padding()
            
            VStack {
                Text("현재 금액")
                    .bold()
                    .lineLimit(1)
                    .allowsTightening(true)
                    .minimumScaleFactor(0.001)
                Text(current)
                    .lineLimit(1)
                    .allowsTightening(true)
                    .minimumScaleFactor(0.001)
            }
            .padding()
            
            VStack {
                Text("진행도")
                    .bold()
                    .lineLimit(1)
                    .allowsTightening(true)
                    .minimumScaleFactor(0.001)
                Text(process)
                    .lineLimit(1)
                    .allowsTightening(true)
                    .minimumScaleFactor(0.001)
            }
        }
    }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        ListRow(testImage: "Yang", goal: "300,000", current: "100,000", process: "33.3%")
    }
}


