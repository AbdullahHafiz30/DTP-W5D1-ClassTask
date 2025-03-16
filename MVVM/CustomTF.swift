//
//  CustomTF.swift
//  MVVM
//
//  Created by Abdullah Hafiz on 16/09/1446 AH.
//

import SwiftUI

struct CustomTF: View {
    let label: String
    @Binding var text: String
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(label)
                .font(.headline)
                .foregroundColor(.black)
            TextField("", text: $text)
                .padding()
                .frame(height: 45)
                .background(Color("TextField"))
                .cornerRadius(50)
                .shadow(radius: 1)
        }
    }
}

#Preview {
    @State var text: String = ""
    CustomTF(label: "Test", text: $text)
}
