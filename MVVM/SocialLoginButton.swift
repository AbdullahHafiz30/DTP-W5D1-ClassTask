//
//  SocialLoginButton.swift
//  MVVM
//
//  Created by Abdullah Hafiz on 16/09/1446 AH.
//

import SwiftUI

struct SocialLoginButton: View {
    let icon: String
    let color: Color
    let link: String

    var body: some View {
        Button(action: {
            if let url = URL(string: link) {
                            UIApplication.shared.open(url)
                        }
        }) {
            Image(systemName: icon)
                .font(.title)
                .foregroundColor(.white)
                .frame(width: 50, height: 50)
                .background(color)
                .clipShape(Circle())
        }
    }
}
