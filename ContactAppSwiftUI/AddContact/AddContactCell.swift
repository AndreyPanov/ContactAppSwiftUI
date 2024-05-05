//
//  AddContactCell.swift
//  ContactAppSwiftUI
//
//  Created by Andrey Panov on 09/07/2023.
//

import SwiftUI

struct AddContactCell: View {
    let text: String
    let placeholder: String
    @Binding var inputText: String
    
    var body: some View {
        HStack {
            Text(text)
            TextField(placeholder, text: $inputText)
        }
    }
}
/*
struct AddContactCell_Previews: PreviewProvider {
    static var previews: some View {
        AddContactCell(text: "Email", placeholder: "Enter your email", inputText: "")
    }
}
*/
