//
//  UserInfo.swift
//  FirebaseLoginSignUpTutorial
//
//  Created by Richa Srivastava on 29/06/2025.
//
import FirebaseAuth
struct UserInfo {
    let uid: String
    let email: String?
    let displayName: String?
    
    init(user: User) {
        self.uid = user.uid
        self.email = user.email
        self.displayName = user.displayName
    }
}
