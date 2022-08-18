//
//  DetailPersonViewController.swift
//  Router-Group-7
//
//  Created by PT.Koanba on 18/08/22.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userPhoto: UIImageView!
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userPhoto.image = person.photo
        userName.text = person.name
    }
}
