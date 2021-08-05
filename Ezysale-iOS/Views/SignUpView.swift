//
//  SignUpView.swift
//  Ezysale-iOS
//
//  Created by MacBook on 02/08/2021.
//

import SwiftUI

struct SignUpView: View {
    
    @State var email:String = ""
    @State var password:String = ""
    @State var mobileNum:String = ""
    @State var name:String = ""
    @State var maleFemale:Int = 0
    @State var isActive = false
    
    var body: some View {
            ZStack{
                VStack(alignment:.center){
                    FieldsView(email: $email, password: $password, mobileNum: $mobileNum, name: $name)
                    MenuView(maleFemale: $maleFemale)
                    NavigationLink(destination: HomeView(), isActive: $isActive) {}
                    Button {
                        // Action performed
                        isActive = true
                    } label: {
                        // Look like
                        HStack{
                            Text("Sing Up")
                                .font(.system(size: 16.0, weight: .medium))
                                .foregroundColor(.white)
                        }
                        .frame(width:320.0, height: 40.0)
                        .background(Color.blue)
                        .cornerRadius(10.0)
                        .padding(10)
                    }
                    Spacer()
                }
                .background(Color.white)
                .navigationBarTitle(Text("Sign Up"), displayMode: .inline)
            }
        }
}

struct FieldsView: View{
    
    @Binding var email:String
    @Binding var password:String
    @Binding var mobileNum:String
    @Binding var name:String
    
    var body: some View{
        TextField("name", text: $name)
            .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
            .background(Color.white)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(lineWidth: 2)
                    .foregroundColor(.blue)
            )
            .shadow(color: Color.gray.opacity(0.4), radius: 3, x: 1, y: 2)
            .padding([.leading, .trailing], 12)
            .padding(.top, 20)
        TextField("email", text: $email)
            .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
            .background(Color.white)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(lineWidth: 2)
                    .foregroundColor(.blue)
            )
            .shadow(color: Color.gray.opacity(0.4), radius: 3, x: 1, y: 2)
            .padding([.leading, .trailing], 12)
            .padding(.top, 10)
        SecureField("password", text: $password)
            .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
            .background(Color.white)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(lineWidth: 2)
                    .foregroundColor(.blue)
            )
            .shadow(color: Color.gray.opacity(0.4), radius: 3, x: 1, y: 2)
            .padding([.leading, .trailing], 12)
            .padding(.top, 10)
        TextField("Mobile number", text: $mobileNum)
            .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
            .background(Color.white)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(lineWidth: 2)
                    .foregroundColor(.blue)
            )
            .shadow(color: Color.gray.opacity(0.4), radius: 3, x: 1, y: 2)
            .padding([.leading, .trailing], 12)
            .padding(.top, 10)
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
