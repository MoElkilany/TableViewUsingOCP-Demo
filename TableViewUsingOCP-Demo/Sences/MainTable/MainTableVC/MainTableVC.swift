//
//  MainTableVC.swift
//  TableViewUsingOCP-Demo
//
//  Created by Mohamed Elkilany on 03/10/2021.
//

import UIKit

class MainTableVC: UIViewController {
    
    var customElements :[CustomElementModel] =  []
    
    var mainView : MainTableView {
        return view as! MainTableView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 1...5 {
            let model = MainElement(username: "user \(i)", mood: "mood \(i)")
            let subModel = SubElement(username: "Sub Element \(i)", mood: "Sub ElementMood \(i)")
            customElements.append(model)
            customElements.append(subModel)
            mainView.mainTableView.register(UINib(nibName: "MainTableCell", bundle: nil), forCellReuseIdentifier: "main")
            mainView.mainTableView.register(UINib(nibName: "SubTableCell", bundle: nil), forCellReuseIdentifier: "sub")
        }
        mainView.mainTableView.dataSource = self
        mainView.mainTableView.delegate = self

    }
}


extension MainTableVC : UITableViewDataSource ,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return customElements.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellModel = customElements[indexPath.row]
        let cellID = cellModel.type.rawValue
        let customCell = tableView.dequeueReusableCell(withIdentifier: cellID,
                                                       for: indexPath) as! CustomElementCell
        customCell.configure(withModel: cellModel)
        return customCell as! UITableViewCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}



