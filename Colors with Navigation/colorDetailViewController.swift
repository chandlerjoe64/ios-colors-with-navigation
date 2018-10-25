//
//  colorDetailViewController.swift
//  Colors with Navigation
//
//  Created by Joseph Chandler on 10/23/18.
//  Copyright © 2018 Joseph Chandler. All rights reserved.
//

import UIKit

class colorDetailViewController: UIViewController {

    var color: Color?
    
    @IBOutlet weak var colorNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorNameLabel.text = color?.name
        self.view.backgroundColor = color?.uiColor
        self.title = color?.name

        // Do any additional setup after loading the view.
    }


}
