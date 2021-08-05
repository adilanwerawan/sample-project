//
//  MenuView.swift
//  Ezysale-iOS
//
//  Created by MacBook on 02/08/2021.
//

import SwiftUI

struct MenuView: View {
    @Binding var maleFemale:Int
    var body: some View {
        Menu {
            Button {
                //Male
                maleFemale = 0
            } label: {
                Text("Male")
                //                            Image(systemName: "arrow.down.right.circle")
            }
            Button {
                //Female
                maleFemale = 1
            } label: {
                Text("Female")
            }
        } label: {
            VStack{
                HStack{
                    Text((maleFemale == 0) ? "male" : "female")
                    Spacer()
                    Image(systemName: "chevron.down")
                }
                Rectangle()
                    .frame(height: 1.0)
                    .padding(0)
            }
            .foregroundColor(.gray)
            .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
            .background(Color.white)
            .padding([.leading, .trailing], 0)
            .padding(.top, 10)
        }
        .padding([.leading, .trailing], 2)
    }
}
/*
struct MenuView_Previews: PreviewProvider {
    
    static var previews: some View {
//        MenuView(maleFemale: $maleFemale)
    }
}
*/
