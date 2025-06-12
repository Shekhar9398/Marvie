//
//  ContactsViewModel.swift
//  Marvie
//
//  Created by Shekhar Manwar on 12/06/25.
//

import Foundation

// ContactViewModel.swift
import Foundation

class ContactViewModel: ObservableObject {
    @Published var contacts: [Contact] = []

    init() {
        loadContacts()
    }

    private func loadContacts() {
        guard let url = Bundle.main.url(forResource: "contacts", withExtension: "json") else {
            print("contacts.json not found.")
            return
        }

        do {
            let data = try Data(contentsOf: url)
            let decodedData = try JSONDecoder().decode(ContactsWrapper.self, from: data)
            self.contacts = decodedData.contacts
        } catch {
            print("Failed to decode contacts.json:", error)
        }
    }
}

private struct ContactsWrapper: Codable {
    let contacts: [Contact]
}

