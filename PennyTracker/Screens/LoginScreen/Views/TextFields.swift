//
//  TextFields.swift
//  PennyTracker
//
//  Created by Gürkan Karadaş on 13.11.2024.
//

import SwiftUI

struct UsernameTextField: View {
    @State var username: String = ""
    var body: some View {
        HStack(spacing: 8) {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 25, height: 25)
                .padding(8)
                .foregroundColor(.pennyRed)
                .background(
                    RoundedRectangle(cornerRadius: 3)
                        .fill(Color.pennyCream)
                        .frame(width: 32, height: 32)
                )
            
            TextField("Username", text: $username)
                .padding()
                .background(Color.pennyRed)
                .cornerRadius(12)
                .tint(.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.pennyCream, lineWidth: 4)
                )
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal)
    }
}

struct PasswordTextField: View {
    @State var password: String = ""
    @State var showPassword: Bool = false
    
    var body: some View {
        HStack(spacing: 8) {
            Image(systemName: "lock.fill")
                .resizable()
                .frame(width: 18, height: 22)
                .padding(11)
                .foregroundColor(.pennyRed)
                .background(
                    RoundedRectangle(cornerRadius: 3)
                        .fill(Color.pennyCream)
                        .frame(width: 32, height: 32)
                )
            
            SecureField("Password", text: $password)
                .padding()
                .background(Color.pennyRed)
                .cornerRadius(12)
                .tint(.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.pennyCream, lineWidth: 4)
                )
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal)
    }
}

#Preview {
    UsernameTextField()
    PasswordTextField()
}
