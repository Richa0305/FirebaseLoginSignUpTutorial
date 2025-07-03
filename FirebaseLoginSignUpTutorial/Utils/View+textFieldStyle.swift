//
//  View+textFieldStyle.swift
//  FirebaseLoginSignUpTutorial
//
//  Created by Richa Srivastava on 29/06/2025.
//

import SwiftUI

extension View {
    public func textFieldStyle() -> some View {
        self.padding()
            .background(.secondary.opacity(0.2))
            .cornerRadius(8)
            .padding(.horizontal)
    }
}
