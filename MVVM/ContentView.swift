//
//  ContentView.swift
//  MVVM
//
//  Created by Abdullah Hafiz on 16/09/1446 AH.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("BackGround").edgesIgnoringSafeArea(.all)
                VStack {
                    Image("Logo")
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 200, height: 200)
                        .padding()
                    Spacer()
                    Text("Welcome to MVVM")
                        .font(.largeTitle)
                    Text("Developed by Abdullah Hafiz")
                        .font(.caption)
                    Spacer()
                    
                    NavigationLink(destination: SignUpView()) {
                        Text("Sign Up")
                            .font(.headline)
                            .foregroundColor(.black)
                            .frame(width: 300, height: 50)
                            .cornerRadius(50)
                            .overlay(
                                RoundedRectangle(cornerRadius: 50)
                                    .stroke(Color("OtherColor"), lineWidth: 1)
                            )
                    }
                    .padding()
                    NavigationLink(destination: LogInView()) {
                        Text("Log In")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(width: 300, height: 50)
                            .background(Color("Color1"))
                            .cornerRadius(50)
                    }
                    Spacer()
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
