//
//  LoginButtons.swift
//  FirebaseLoginSignUpTutorial
//
//  Created by Richa Srivastava on 29/06/2025.
//

import SwiftUI
import AuthenticationServices
struct LoginButtons: View {
    var type: LoginType
    var body: some View {
        switch type {
        case .apple:
            SignInWithAppleButton(.continue ,onRequest: { _ in }, onCompletion: { _ in })
                .signInWithAppleButtonStyle(.white)
                .frame(height: 50)
                .cornerRadius(8)
                .padding(.horizontal)
        case .google:
            Button {
                
            } label: {
                HStack {
                    Image("google")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 18, height: 18)
                    Text(type.title)
                        .font(Font.system(size: 17, weight: .medium))
                        .foregroundColor(.black)
                }
                .frame(maxWidth: .infinity, minHeight: 50)
                .padding(.horizontal, 16)
                .background(.white)
                .cornerRadius(8)
                .padding(.horizontal)
                
            }

        case .email:
            HStack(spacing: 10) {
                Image(systemName: type.iconName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 18, height: 18)
                    .foregroundStyle(.white)
                Text(type.title)
                    .font(Font.system(size: 17, weight: .medium))
                    .foregroundColor(.white)
            }
            .frame(maxWidth: .infinity,minHeight: 50)
            .padding(.horizontal, 16)
            .background(.red)
            .cornerRadius(8)
            .padding(.horizontal)
        }
    }
}
