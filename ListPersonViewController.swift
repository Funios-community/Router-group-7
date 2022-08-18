//
//  ListPersonViewController.swift
//  Router-Group-7
//
//  Created by PT.Koanba on 18/08/22.
//

import UIKit

class ListPersonViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let personList = [
        Person(name: "Andrew", photo: UIImage(named: "andrew")!),
        Person(name: "Deddy", photo: UIImage(named: "deddy")!),
        Person(name: "Johan", photo: UIImage(named: "johan")!),
        Person(name: "Mansur", photo: UIImage(named: "mansur")!),
        Person(name: "Tiara", photo: UIImage(named: "tiara")!)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonCell", for: indexPath) as! PersonCell
        
        let person = personList[indexPath.row]
        
        cell.labelPersonName.text = person.name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let detailVC = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController

        detailVC.person = personList[indexPath.row]
//        let detailVC = DetailViewController(nibName: "", bundle: nil)
        self.show(detailVC, sender: nil)
    }
    
/*
    @IBAction func changeScreen(_ sender: UIButton) {
        self.present(DetailViewController(), animated: true)
        self.navigationController?.pushViewController(DetailViewController(), animated: true)
        
        let detailVC = DetailViewController()
        detailVC.bgColor = .blue
        
        self.show(detailVC, sender: nil)
    }
 */
  
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is DetailViewController {
            let vc = segue.destination as? DetailViewController
            vc?.bgColor = .orange
        }
    } */
}
