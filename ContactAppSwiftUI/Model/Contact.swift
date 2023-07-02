//
//  Contact.swift
//  ContactAppSwiftUI
//
//  Created by Andrey Panov on 02/07/2023.
//

import Foundation

struct Contact: Identifiable, Codable, Hashable {
    let id: String
    let firstName: String
    let lastName: String
    let company: String
    let email: String
    let photoURL: String
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
}

extension Contact {
    static var MOCK_CONTACTS: [Contact] = [
        .init(id: NSUUID().uuidString, firstName: "Lol", lastName: "Kek", company: "Olafff", email: "lol@kesdvk.com", photoURL: "person.crop.circle.dashed"),
        .init(id: NSUUID().uuidString, firstName: "Ffffff", lastName: "Kek", company: "Olafff", email: "lol@kesdvk.com", photoURL: "person.crop.circle.dashed"),
        .init(id: NSUUID().uuidString, firstName: "LoSFWEFWEFWEFWEFl", lastName: "Kek", company: "Olafff", email: "lol@kwfek.com", photoURL: "person.crop.circle.dashed"),
        .init(id: NSUUID().uuidString, firstName: "Lwwwwol", lastName: "Kek", company: "Olafff", email: "lol@kek.com", photoURL: "person.crop.circle.dashed"),
        .init(id: NSUUID().uuidString, firstName: "Lsdvsdvsdvsdvol", lastName: "Kwefwefek", company: "Olafff", email: "lol@kewefk.com", photoURL: "person.crop.circle.dashed")
    ]
}
