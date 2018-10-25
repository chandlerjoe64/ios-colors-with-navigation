//
//  ColorsViewController.swift
//  Colors with Navigation
//
//  Created by Joseph Chandler on 10/19/18.
//  Copyright © 2018 Joseph Chandler. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    //var colors = ["Red", "Orange", "Yellow", "Green", "Blue", "Purple", "Brown"]
    var colors = [Color(name: "Red", uiColor: UIColor.red), Color(name: "Orange", uiColor: UIColor.orange), Color(name: "Yellow", uiColor: UIColor.yellow), Color(name: "Green", uiColor: UIColor.green), Color(name: "Blue", uiColor: UIColor.blue), Color(name: "Purple", uiColor: UIColor.purple), Color(name: "Brown", uiColor: UIColor.brown),]
    @IBOutlet weak var colorsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Colors"

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)
        
        cell.textLabel?.text = colors[indexPath.row].name
        cell.backgroundColor = colors[indexPath.row].uiColor
        cell.selectionStyle = .none
        
        return cell
    }

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? colorDetailViewController,
            let row = colorsTableView.indexPathForSelectedRow?.row        {
            destination.color = colors[row]
            
        }
        
    }
}
