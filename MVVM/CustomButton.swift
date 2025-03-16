//
//  CustomButton.swift
//  MVVM
//
//  Created by Abdullah Hafiz on 16/09/1446 AH.
//

import SwiftUI

struct CustomButton: View {
    let title: String
    let action: () -> Void
    let backgroundColor: Color
    let textColor: Color
    let borderColor: Color
    
    @State private var isPressed = false
    
    var body: some View {
        Button(action: {
            withAnimation(.spring(response: 0.3, dampingFraction: 0.5, blendDuration: 0.2)) {
                isPressed.toggle()
            }
            action()
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                withAnimation {
                    isPressed = false
                }
            }
        }) {
            Text(title)
                .font(.headline)
                .foregroundColor(textColor)
                .frame(width: 300, height: 50)
                .background(backgroundColor)
                .cornerRadius(50)
                .overlay(
                    RoundedRectangle(cornerRadius: 50)
                        .stroke(borderColor, lineWidth: 1)
                )
                .scaleEffect(isPressed ? 1.1 : 1)
        }
        .buttonStyle(PlainButtonStyle())
        .padding(.horizontal, 20)
        
    }
}

#Preview {
    CustomButton(title: "Hello", action: {}, backgroundColor: .black, textColor: .white, borderColor: .blue)
}
