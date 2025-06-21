//
//  UnderlinedTextField.swift
//  PersonalFinanceTracker
//
//  Created by Manveer Singh on 19/06/25.
//

import SwiftUI

struct UnderlinedTextField: View {
    @Binding var email: String
    
    var body: some View {
        HStack {
            Image(systemName: "envelope")
            
            VStack {
                TextField("Email Id", text: $email)
                
                Rectangle()
                    .frame(height: 2)
            }
            .padding(.leading, 16)
            .padding(.trailing, 16)
        }
        .padding()
    }
}

#Preview {
    UnderlinedTextField(email: .constant(""))
}
