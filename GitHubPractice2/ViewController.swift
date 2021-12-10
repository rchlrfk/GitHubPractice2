//
//  ViewController.swift
//  GitHubPractice2
//
//  Created by Rachel Rafik on 12/10/21.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var tableView: UITableView!
    var animal = ["Dog", "Dolphin", "Elephant"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animal.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath)
        cell.textLabel?.text = animal[indexPath.row]
        
        return cell
    }
    

}

