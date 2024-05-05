//
//  AddContactViewModel.swift
//  ContactAppSwiftUI
//
//  Created by Andrey Panov on 06/07/2023.
//

import Foundation

class AddContactViewModel: ObservableObject {
    @Published var email = ""
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var company = ""
    @Published var photoURL = ""
    
    func saveContact() {
        
    }
}
