//
//  EmailLoginView.swift
//  FirebaseLoginSignUpTutorial
//
//  Created by Richa Srivastava on 29/06/2025.
//

import SwiftUI

public struct EmailLoginView: View {
    @State var viewModel: EmailLoginViewModel = EmailLoginViewModel()
    public var body: some View {
        VStack(spacing: 16) {
            Text("Login With Email")
                .font(.title).bold()
            
            VStack(spacing: 16) {
                TextField("Email", text: $viewModel.email)
                    .textFieldStyle()
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle()
            }
            .padding(.horizontal)
            
            Button {
                Task {
                    if let user = await viewModel.loginWithEmail() {
                        print(user.displayName)
                        print("Login Successful")
                    }
                }
            } label: {
                Text("Login")
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.red)
                    .cornerRadius(8)
                    .padding(.horizontal)
            }
            .padding(.horizontal)

            Spacer()
            
        }

    }
}
#Preview {
    EmailLoginView()
}
