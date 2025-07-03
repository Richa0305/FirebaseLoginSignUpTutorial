//
//  SignUpViewModel.swift
//  FirebaseLoginSignUpTutorial
//
//  Created by Richa Srivastava on 29/06/2025.
//

import SwiftUI

@MainActor
@Observable
final class SignUpViewModel {
    var name: String = ""
    var password: String = ""
    var confirmPassword: String = ""
    var email: String = ""
    
    func signUpWithEmail() async -> UserInfo? {
        guard !name.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else {
            return nil
        }
        
        guard !email.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else {
            return nil
        }
        
        guard !password.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else {
            return nil
        }
        
        guard !confirmPassword.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else {
            return nil
        }
        do {
            let user = try await AuthenticationManager.shared.createUserAccount(withEmail: email, password: confirmPassword, name: name)
        } catch {
            print(error)
        }
        return nil
    }
}
