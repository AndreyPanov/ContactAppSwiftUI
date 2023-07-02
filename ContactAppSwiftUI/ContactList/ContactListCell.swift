//
//  ContactCell.swift
//  ContactAppSwiftUI
//
//  Created by Andrey Panov on 02/07/2023.
//

import SwiftUI

struct ContactListCell: View {
    let contact: Contact
    
    var body: some View {
        HStack(spacing: 8) {
            Image(systemName: contact.photoURL)
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
            VStack(alignment: .leading) {
                Text(contact.fullName)
                Text(contact.company)
            }
            Spacer()
            Image(systemName: "chevron.right")
        }
        .padding(.leading, 10)
        .padding(.top, 4)
        .padding(.trailing, 10)
        Divider()
    }
}

struct ContactListCell_Previews: PreviewProvider {
    static var previews: some View {
        ContactListCell(contact: Contact.MOCK_CONTACTS[0])
    }
}
