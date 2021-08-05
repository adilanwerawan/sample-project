//
//  SignInView.swift
//  Ezysale-iOS
//
//  Created by MacBook on 01/08/2021.
//

import SwiftUI

struct SignInView: View {
    
    @State var email:String = ""
    @State var password:String = ""
    @State var isLinkActive = false
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack(alignment:.center){
                    Image("splash-logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100.0, height: 100.0, alignment: .center)
                        .padding(.top, 140)
                    SignInFieldsView(email: $email, password: $password)
                    Button {
                        // Action performed
                        
                    } label: {
                        // Look like
                        HStack{
                            Text("Sing In")
                                .font(.system(size: 16.0, weight: .medium))
                                .foregroundColor(.white)
                        }
                        .frame(width:320.0, height: 40.0)
                        .background(Color.blue)
                        .cornerRadius(10.0)
                        .padding([.leading, .trailing, .top],10)
                        .padding(.bottom, 4)
                    }
                    NavigationLink(destination: SignUpView(), isActive: $isLinkActive) {
                        Button {
                            // Action performed
                            isLinkActive = true
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
                            .padding([.leading, .trailing],10)
                        }
                    }
                    Spacer()
                }
                .background(Color.white)
                .navigationBarTitle(Text("Sign In"), displayMode: .inline)
            }
        }
    }
}

struct SignInFieldsView : View{
    @Binding var email:String
    @Binding var password:String
    var body: some View{
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
            .padding(.top, 20)
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
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
