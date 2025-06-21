//
//  HomeTabView.swift
//  PersonalFinanceTracker
//
//  Created by Manveer Singh on 21/06/25.
//

import SwiftUI

struct HomeTabView: View {
    var body: some View {
        TabView {
            Tab(role: TabRole.search) {
                AddExpenseView()
            } label: {
                
                VStack {
                    Image(systemName: "plus.circle")
                        .font(.system(size: 50))
                    Text("Add Expense")
                        .fontWeight(.semibold)
                }
            }

        }
    }
}

#Preview {
    HomeTabView()
}
