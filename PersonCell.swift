//
//  PersonCell.swift
//  Router-Group-7
//
//  Created by PT.Koanba on 18/08/22.
//

import Foundation
import UIKit

protocol PersonCellAction {
    func onAlertClick(person: Person)
}

class PersonCell: UITableViewCell {
    @IBOutlet weak var labelPersonName: UILabel!
    
    var action: PersonCellAction?
    var person: Person?
    
    @IBAction func onAlertClick(_ sender: UIButton) {
        if let person = self.person {
            action?.onAlertClick(person: person)
        }
    }
    
}
