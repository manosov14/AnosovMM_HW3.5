//
//  DetailContactList.swift
//  AnosovMM_HW3.5
//
//  Created by Михаил on 24.09.2021.
//

import SwiftUI

struct DetailContactList: View {
    
    let persons: [Person]
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct DetailContactList_Previews: PreviewProvider {
    static var previews: some View {
        DetailContactList(persons: Person.getPersonData())
    }
}
