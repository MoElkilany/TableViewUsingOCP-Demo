//
//  mainProtocol.swift
//  TableViewUsingOCP-Demo
//
//  Created by Mohamed Elkilany on 03/10/2021.
//

import Foundation

enum CustomElementType: String {
    case main
    case sub
}

protocol CustomElementModel {
    var type: CustomElementType { get }
}

protocol CustomElementCell {
    func configure(withModel: CustomElementModel)
}
