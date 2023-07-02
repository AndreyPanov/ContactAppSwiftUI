//
//  ContactDetailCell.swift
//  ContactAppSwiftUI
//
//  Created by Andrey Panov on 02/07/2023.
//

import SwiftUI

struct ContactDetailCell: View {
    let leftText: String
    let rightText: String
    
    var body: some View {
        HStack {
            Text(leftText)
            Spacer()
            Text(rightText)
        }
        .padding(.leading, 10)
        .padding(.trailing, 10)
        Divider()
    }
}

struct ContactDetailCell_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailCell(leftText: "fullName", rightText: "Lol Kek")
    }
}
