//
//  Person.swift
//  AnosovMM_HW3.5
//
//  Created by Михаил on 23.09.2021.
//

import Foundation

class Person: Identifiable {
    
    let id = UUID()
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
      "\(name) \(surname)"
    }
    
    init(name: String, surname: String, email: String, phone: String) {
        self.name = name
        self.surname = surname
        self.email = email
        self.phone = phone
    }
    
}

extension Person {
    
    static func getPersonData() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
        let iterationCount = min(names.count, surnames.count, emails.count, phones.count)
        
        for index in 0..<iterationCount {
            
            
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phone: phones[index]
            )
            
            persons.append(person)
        }
        return persons
    }
}

enum SystemImages: String {
    case contacts = "person.3"
    case phone = "phone"
    case email = "tray"
    case avatar = "person.fill"
}
