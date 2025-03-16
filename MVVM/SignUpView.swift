//
//  SignUpView.swift
//  MVVM
//
//  Created by Abdullah Hafiz on 16/09/1446 AH.
//

import SwiftUI

struct SignUpView: View {
    @State var fullName: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var confirmPassword: String = ""
    @State var rememberMe: Bool = false
    
    var body: some View {
        ZStack {
            Color("BackGround").edgesIgnoringSafeArea(.all)
            VStack {
                Image("Yoga")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 180, height: 180)
                    .padding(.top, 50)
                    .padding()
                
                
                VStack(spacing: 15) {
                    Text("Create Account")
                        .font(.largeTitle)
                    
                    CustomTF(label: "Full Name", text: $fullName)
                    
                    CustomTF(label: "Email", text: $email)
                    
                    CustomSF(label: "Password", text: $password)
                    
                    CustomSF(label: "Confirm Password", text: $confirmPassword)
                    
                    HStack {
                        Button(action: {
                            rememberMe.toggle()
                        }) {
                            Image(systemName: rememberMe ? "checkmark.square.fill" : "square")
                                .foregroundColor(rememberMe ? .blue : .gray)
                                .font(.system(size: 20))
                        }
                        
                        Text("Remember Me")
                            .foregroundColor(.black)
                    }.padding(.trailing, 220)
                    
                    HStack {
                        Divider().frame(width: 100, height: 1).background(Color.gray)
                        Text("or")
                            .foregroundColor(.gray)
                        Divider().frame(width: 100, height: 1).background(Color.gray)
                    }
                    
                    HStack(spacing: 20) {
                        SocialLoginButton(icon: "facebook", color: .blue, link: "https://www.facebook.com/")
                        SocialLoginButton(icon: "google", color: .red, link: "https://www.google.com/")
                        SocialLoginButton(icon: "applelogo", color: .black, link: "hhtps://www.apple.com/")
                    }
                    
                    
                    CustomButton(title: "Sign Up", action: {}, backgroundColor: Color("Color1"), textColor: .white, borderColor: .clear)
                    Spacer()
                    Spacer()
                }.padding()
                    .frame(width: 400, height: 750)
                    .background(Color("BackGround1"))
                    .cornerRadius(50)
            }
        }
    }
}

#Preview {
    SignUpView()
}
