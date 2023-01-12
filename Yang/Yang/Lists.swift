//
//  List.swift
//  Yang
//
//  Created by Kyungsoo Lee on 2023/01/12.
//

import SwiftUI

struct Lists: View {
    @State var pressMenu: Bool
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    pressMenu.toggle()
                } label: {
                    Menu {
                        Button {
                            
                        } label: {
                            Text("목표 추가하기")
                        }
                        Button {
                            
                        } label: {
                            Text("목표 삭제하기")
                        }
                    } label: {
                        Image(systemName: "ellipsis")
                            .foregroundColor(.black)
                            .bold()
                    }
                    .padding()
                }
                
            }
            List {
                VStack {
                    HStack {
                        Spacer()
                        Button {
                            
                        } label: {
                            menuView()
                                .padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))
                                .border(Color.gray)
                                .cornerRadius(10)
                        }
                    }
                }
                
                HStack {
                    if pressMenu {
                        Button {
                            
                        } label: {
                            Image(systemName: "minus.circle.fill")
                                .foregroundColor(.red)
                        }
                    }
                    ListRow(testImage: "Yang", goal: "300,000", current: "100,000", process: "33.3%")
                }
                HStack {
                    if pressMenu {
                        Button {
                            
                        } label: {
                            Image(systemName: "minus.circle.fill")
                                .foregroundColor(.red)
                        }
                    }
                    ListRow(testImage: "Yang", goal: "300,000", current: "100,000", process: "33.3%")
                }
            }
            .listStyle(PlainListStyle())
        }
    }
    
}


struct Lists_Previews: PreviewProvider {
    static var previews: some View {
        Lists(pressMenu: false)
    }
}


