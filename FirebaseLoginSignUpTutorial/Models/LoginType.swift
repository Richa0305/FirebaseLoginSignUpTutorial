//
//  LoginType.swift
//  FirebaseLoginSignUpTutorial
//
//  Created by Richa Srivastava on 29/06/2025.
//

enum LoginType : String {
    case email
    case apple
    case google
    
    var iconName : String {
        switch self {
        case .email:
            return "envelope.fill"
        case .apple:
            return "apple.logo"
        case .google:
            return "google"
        }
    }
    
    var title : String {
        switch self {
        case .email:
            return "Continue With Email"
        case .apple:
            return "Continue With Apple"
        case .google:
            return "Continue With Google"
        }
    }
}
