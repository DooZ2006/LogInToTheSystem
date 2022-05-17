//
//  WelcomeViewController.swift
//  LogInToTheSystem
//
//  Created by Глеб on 15.05.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var user = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcome, \(user)!"

    }

}
