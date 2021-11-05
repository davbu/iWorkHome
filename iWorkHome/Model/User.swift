//
//  User.swift
//  iWorkHome
//
//  Created by David Buhauer on 05/11/2021.
//

import SwiftUI
import FirebaseFirestore
import FirebaseFirestoreSwift

struct User: Codable, Identifiable {
    @DocumentID var id: String?
    var avatar: String
    var name: String
}
