//
//  SubTableCell.swift
//  TableViewUsingOCP-Demo
//
//  Created by Mohamed Elkilany on 03/10/2021.
//

import UIKit

class SubTableCell: UITableViewCell,CustomElementCell {
    var model :SubElement!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configure(withModel: CustomElementModel) {
        guard let model = withModel as? SubElement else {
            return
        }
        self.model = model
    }
}
