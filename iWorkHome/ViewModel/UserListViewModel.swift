//
//  UsersViewModel.swift
//  iWorkHome
//
//  Created by David Buhauer on 05/11/2021.
//

import SwiftUI
import FirebaseFirestore
import FirebaseFirestoreSwift
import Combine

class UserListViewModel: ObservableObject {
    @Published var userRepository = UserRepository()
    
    @Published var userViewModels: [UserViewModel] = []
    private var cancellables: Set<AnyCancellable> = []
    
    init() {
        userRepository.$users.map { users in
            users.map(UserViewModel.init)
      }
      .assign(to: \.userViewModels, on: self)
      .store(in: &cancellables)
    }
}
