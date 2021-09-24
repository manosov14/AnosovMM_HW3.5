//
//  ContactList.swift
//  AnosovMM_HW3.5
//
//  Created by Михаил on 23.09.2021.
//

import SwiftUI

struct ContactList: View {
    
    var persons: [Person]
    var body: some View {
        
        NavigationView {
            List(persons) { person in
                NavigationLink(destination: ContactView(person: person)) {
                    Text("\(person.fullName)")
                }
            }
            .navigationBarTitle("Contact List")
        }
    }
    
    struct ContactList_Previews: PreviewProvider {
        static var previews: some View {
            ContactList(persons: Person.getPersonData())
        }
    }
}
