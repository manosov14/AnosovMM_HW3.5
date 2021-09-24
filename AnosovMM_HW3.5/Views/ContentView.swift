//
//  ContentView.swift
//  AnosovMM_HW3.5
//
//  Created by Михаил on 23.09.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var persons = Person.getPersonData()
    
    var body: some View {
            TabView{
                ContactList(persons: persons)
                    .tabItem {
                        Text("Person")
                        Image(systemName: SystemImages.contacts.rawValue)
                    }
                DetailContactList(persons: persons)
                    .tabItem {
                        Text("Contact")
                        Image(systemName: SystemImages.avatar.rawValue)
                    }
            }
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
