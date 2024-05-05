//
//  ContactListView.swift
//  ContactAppSwiftUI
//
//  Created by Andrey Panov on 02/07/2023.
//

import SwiftUI

struct ContactListView: View {
    let contacts = Contact.MOCK_CONTACTS
    
    @State private var showingSheet = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    ForEach(contacts) { contact in
                        NavigationLink {
                            ContactDetailView(contact: contact)
                        } label: {
                            ContactListCell(contact: contact)
                        }
                        .foregroundColor(.white)
                    }
                }
            }
            .navigationTitle("Contacts")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showingSheet.toggle()
                    } label: {
                        Image(systemName: "plus")
                            .resizable()
                            .imageScale(.large)
                    }
                    .sheet(isPresented: $showingSheet) {
                        AddContactView()
                    }
                }
            }
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView()
    }
}
