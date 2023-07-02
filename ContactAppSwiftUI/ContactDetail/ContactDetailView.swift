//
//  ContactDetailView.swift
//  ContactAppSwiftUI
//
//  Created by Andrey Panov on 02/07/2023.
//

import SwiftUI

struct ContactDetailView: View {
    
    let contact: Contact
    
    var body: some View {
        ScrollView {
            VStack {
                ContactDetailViewHeader(contact: contact)
                Divider()
                ContactDetailCell(leftText: "Full Name", rightText: contact.fullName)
                ContactDetailCell(leftText: "Company", rightText: contact.company)
                ContactDetailCell(leftText: "Email", rightText: contact.email)
                Spacer()
                Button(StringProtocol, action: <#T##() -> Void#>)
            }
        }
    }
}

struct ContactDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailView(contact: Contact.MOCK_CONTACTS[0])
    }
}
