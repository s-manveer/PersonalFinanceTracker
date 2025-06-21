//
//  SignUpView.swift
//  PersonalFinanceTracker
//
//  Created by Manveer Singh on 19/06/25.
//

import SwiftUI

struct SignUpView: View {
    @State private var name: String = ""
    @State private var password: String = ""
    @State private var emailId: String = ""
    
    var body: some View {
        
        VStack( spacing: 32) {
            Spacer()
            Text("Ledgerly")
                .font(.system(size: 48,weight: .bold, design: .rounded))
                .foregroundStyle(.blue)
                
            VStack(spacing: 16) {
                TextField(text: $name) {
                    Text("Enter name")
                        .font(.title3)
                }
                .textFieldStyle(.roundedBorder)
                
                TextField(text: $emailId) {
                    Text("Enter email")
                        .font(.title3)
                }
                .textFieldStyle(.roundedBorder)
                
                
                
                SecureField(text: $password) {
                    Text("Enter password")
                        .font(.title3)
                }
                .textFieldStyle(.roundedBorder)

            }
            
            Button {
                print("Sign Up")
            } label: {
                Text("Sign Up")
                    .frame(maxWidth: UIScreen.main.bounds.width - 50)
                    .foregroundStyle(.white)
                    .font(.title3)
            }
            .background(.blue)
            .clipShape(.buttonBorder)
            .buttonStyle(.bordered)
            
            Spacer()
            
            Divider()
            
            HStack {
                Text("Already have an Account")
                
                Button {
                    print("sign in")
                } label: {
                    Text("Sign In")
                }
            }
        }
        .padding()
    }
}

#Preview {
    SignUpView()
}
