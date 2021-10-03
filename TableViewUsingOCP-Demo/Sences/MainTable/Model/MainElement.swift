//
//  MainElement.swift
//  TableViewUsingOCP-Demo
//
//  Created by Mohamed Elkilany on 03/10/2021.
//

import Foundation

struct MainElement: CustomElementModel {
    var username: String
    var mood: String
    var type: CustomElementType { return .main }
    init( username: String, mood: String) {
        self.username = username
        self.mood = mood
    }
}
