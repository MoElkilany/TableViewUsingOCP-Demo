//
//  MainTableCell.swift
//  TableViewUsingOCP-Demo
//
//  Created by Mohamed Elkilany on 03/10/2021.
//

import UIKit

class MainTableCell: UITableViewCell , CustomElementCell {

    var model :MainElement!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(withModel: CustomElementModel) {
        guard let model = withModel as? MainElement else {
            print("Unable to cast model as ProfileElement: \(withModel)")
            return
        }
        self.model = model
    }
    
    func configureUI(){
        
    }
    
}


