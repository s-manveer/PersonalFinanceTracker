//
//  AddExpenseView.swift
//  PersonalFinanceTracker
//
//  Created by Manveer Singh on 21/06/25.
//

import SwiftUI

enum ExpenseType: String, CaseIterable, Identifiable, Hashable {
    var id: Self {
        self
    }
    
    case grocery
    case dining
    case entertainment
    case travel
    case roomRent
    case miscellaneous
}

struct AddExpenseView: View {
    @State var selectedExpense: ExpenseType = .grocery
    @State var description: String = ""
    @State var amount: String = ""
    @State var date: Date = Date()
    
    var body: some View {
        VStack {
            Text(" Add an Expense")
                .font(.title)
                .fontWeight(.semibold)
                .fontDesign(.rounded)
            
            VStack(alignment: .leading, spacing: 32) {
                
                Spacer()
                
                HStack {
                    Text("Category:")
                    Picker(selection: $selectedExpense) {
                        Text("Grocery").tag(ExpenseType.grocery)
                        Text("Dining").tag(ExpenseType.dining)
                        Text("Travel").tag(ExpenseType.travel)
                        Text("Room Rent").tag(ExpenseType.roomRent)
                        Text("Miscellaneous").tag(ExpenseType.miscellaneous)
                    } label: {
                        Text("Kind of an Expense")
                    }
                    .pickerStyle(.menu)
                }
                
                TextField(text: $description, label: {
                    Text("Description")
                    
                })
                .textFieldStyle(.roundedBorder)
                
                TextField(text: $amount) {
                    Text("Amount")
                }
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)
                
                DatePicker("Date", selection: $date, displayedComponents: [.date])
                
                
                
                Spacer()
            }
            .font(.title2)
            .padding()
            
            Divider()
            
            Button {
                print("Save Data")
            } label: {
                Text("Add")
                    .frame(width: UIScreen.main.bounds.width - 50, height:
                    30)
            }
            .foregroundStyle(.white)
            .background(.blue)
            .buttonStyle(.bordered)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .padding()
            
            
        }
    }
}

#Preview {
    AddExpenseView()
}
