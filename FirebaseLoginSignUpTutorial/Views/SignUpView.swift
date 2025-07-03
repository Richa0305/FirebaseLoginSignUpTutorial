//
//  SignUpView.swift
//  FirebaseLoginSignUpTutorial
//
//  Created by Richa Srivastava on 29/06/2025.
//
import SwiftUI

struct SignUpView: View {
    @State var signUpViewModel = SignUpViewModel()
    var body: some View {
        VStack {
            Text("Create An Account")
                .font(.title)
                .fontWeight(.bold)
            
            Group {
                TextField("Name", text: $signUpViewModel.name)
                TextField("Email", text:$signUpViewModel.email)
                SecureField("Password", text: $signUpViewModel.password)
                SecureField("Confirm Password", text: $signUpViewModel.confirmPassword)
            }
            .textFieldStyle()
            
            Button {
                Task {
                    if let user = await signUpViewModel.signUpWithEmail() {
                        print("User Signed Up: \(user)")
                    }
                }
            } label: {
                Text("Create An Account")
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.red)
                    .cornerRadius(8)
                    .padding(.horizontal)
            }
            
            Spacer()

            
        }
    }
}

#Preview {
    SignUpView()
}
