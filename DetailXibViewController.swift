//
//  DetailXibViewController.swift
//  Router-Group-7
//
//  Created by PT.Koanba on 19/08/22.
//

import UIKit

class DetailXibViewController: UIViewController {

    @IBOutlet weak var labelPerson: UILabel!
    @IBOutlet weak var imagePerson: UIImageView!
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePerson.image = person.photo
        labelPerson.text = person.name
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
