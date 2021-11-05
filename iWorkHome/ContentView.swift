//
//  ContentView.swift
//  iWorkHome
//
//  Created by David Buhauer on 05/11/2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var userListViewModel = UserListViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(userListViewModel.userViewModels) { userViewModel in
                    Text(userViewModel.user.name)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
