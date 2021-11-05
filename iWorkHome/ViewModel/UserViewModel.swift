//
//  UserViewModel.swift
//  iWorkHome
//
//  Created by David Buhauer on 05/11/2021.
//

import Combine

class UserViewModel: ObservableObject, Identifiable {
    private let userRepository = UserRepository()
    private var cancellables: Set<AnyCancellable> = []
    var id = ""
    
    @Published var user: User
    
    init(user: User) {
        self.user = user
        $user
            .compactMap { $0.id }
            .assign(to: \.id, on: self)
            .store(in: &cancellables)
    }
}
