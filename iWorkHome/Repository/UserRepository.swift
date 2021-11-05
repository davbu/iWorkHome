//
//  UserRepository.swift
//  iWorkHome
//
//  Created by David Buhauer on 05/11/2021.
//

import SwiftUI

import FirebaseFirestore
import FirebaseFirestoreSwift
import Combine

class UserRepository: ObservableObject {
    private let path: String = "users"
    private let store = Firestore.firestore()
    
    @Published var users: [User] = []
    
    init() {
        fetchUsers()
    }
    
    func fetchUsers() {
        store.collection(path)
            .addSnapshotListener { querySnapshot, error in
                if let error = error {
                    print("Error getting cards: \(error.localizedDescription)")
                    return
                }
                self.users = querySnapshot?.documents.compactMap { document in
                    try? document.data(as: User.self)
                } ?? []
            }
    }
}
