//
//  ContactDetailViewHeader.swift
//  ContactAppSwiftUI
//
//  Created by Andrey Panov on 02/07/2023.
//

import SwiftUI

struct ContactDetailViewHeader: View {
    let contact: Contact
    
    var body: some View {
        VStack {
            Image(systemName: contact.photoURL)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
            Text(contact.fullName)
                .font(.title)
                .autocapitalization(.words)
                .fontWeight(.semibold)
                .padding(.top)
        }
    }
}

struct ContactDetailViewHeader_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailViewHeader(contact: Contact.MOCK_CONTACTS[1])
    }
}
