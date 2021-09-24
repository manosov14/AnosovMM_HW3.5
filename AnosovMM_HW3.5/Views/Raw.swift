//
//  Raw.swift
//  AnosovMM_HW3.5
//
//  Created by Михаил on 24.09.2021.
//

import SwiftUI

struct Raw: View {
    let iconImage: String
    let email: String
    
    var body: some View {
        
        HStack {
            
            Image(systemName: iconImage)
                .foregroundColor(.blue)
                .frame(width: 50, height: 50)
            Text(email)
            
        }
    }
}

struct Raw_Previews: PreviewProvider {
    static var previews: some View {
        Raw(iconImage: SystemImages.email.rawValue, email: Person.getPersonData().first!.email)
    }
}
