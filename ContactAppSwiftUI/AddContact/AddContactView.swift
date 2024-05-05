//
//  AddContactView.swift
//  ContactAppSwiftUI
//
//  Created by Andrey Panov on 03/07/2023.
//

import SwiftUI

struct AddContactView: View {
    @Environment(\.dismiss) var dismiss
    @State private var viewModel = AddContactViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                AddContactCell(text: "Email", placeholder: "Enter your email", inputText: viewModel.$email)
                
            }
                .navigationTitle("Add Contact")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            dismiss()
                        } label: {
                            Text("Close")
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            // save
                        } label: {
                            Text("Save")
                                .fontWeight(.semibold)
                        }
                    }
                }
        }
    }
}

struct AddContactView_Previews: PreviewProvider {
    static var previews: some View {
        AddContactView()
    }
}
