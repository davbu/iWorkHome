//
//  UserItem.swift
//  iWorkHome
//
//  Created by David Buhauer on 05/11/2021.
//

import SwiftUI

struct UserItem: View {
    var user: User
    
    var body: some View {
        HStack {
            if user.name.contains("Home") {
                Text("🏡")
            } else if user.name.contains("Office") {
                Text("🏢")
            } else {
                
            }
            Text(user.name.replacingOccurrences(of: " - Office", with: "").replacingOccurrences(of: " - Home", with: ""))
        }
    }
}

struct UserItem_Previews: PreviewProvider {
    static var previews: some View {
        UserItem(user: User(id: "1", avatar: "", name: "David - Office"))
    }
}
