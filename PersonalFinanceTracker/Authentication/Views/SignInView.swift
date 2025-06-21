//
//  SignInView.swift
//  PersonalFinanceTracker
//
//  Created by Manveer Singh on 19/06/25.
//

import SwiftUI

struct SignInView: View {
    @State private var emailId: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                Text("Ledgerly")
                    .font(.system(size: 48, weight: .bold, design: .rounded))
                    .foregroundStyle(.blue)
                
                
                VStack {
                    TextField(text: $emailId) {
                        Text("Enter Email")
                    }
                    
                    SecureField(text: $password) {
                        Text("Enter Password")
                    }
                }
                .textFieldStyle(.roundedBorder)
                .font(.title2)
                
                Button {
                    print("sign in")
                } label: {
                    Text("Sign In")
                        .font(.title3)
                        .frame(width: UIScreen.main.bounds.width - 50, height: 30)
                    
                }
                .background(.blue)
                .buttonStyle(.bordered)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .foregroundStyle(.white)
                .padding([.top, .bottom], 16)
                
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    SignInView()
}
