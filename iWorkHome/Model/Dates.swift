//
//  Data.swift
//  iWorkHome
//
//  Created by David Buhauer on 05/11/2021.
//

import SwiftUI

struct Dates: Codable, Identifiable {
    var id: Int
    var dates: [DateSection]
}

struct DateSection: Codable, Identifiable {
    var id: Int
    var date: Date
    var people: [People]
}

struct People: Codable, Identifiable {
    var id: Int
    var name: String
    var initials: String
    var status: Status
}

enum Status: String, Codable {
    case home = "Hjemme"
    case eg = "EG"
    case sick = "Syg"
    case customerVisit = "Kundebesøg"
}
