//
//  menuView.swift
//  Yang
//
//  Created by Kyungsoo Lee on 2023/01/12.
//

import SwiftUI

struct menuView: View {
    var body: some View {
        HStack {
            Button {
                
            } label: {
                HStack {
                    Text("최신순 ")
                        .bold()
                        .foregroundColor(.black)
                    Image(systemName: "arrowtriangle.down.fill")
                        .foregroundColor(.black)
                }
                
            }
        }
    }
}

struct menuView_Previews: PreviewProvider {
    static var previews: some View {
        menuView()
    }
}
