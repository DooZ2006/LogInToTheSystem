//
//  UserViewController.swift
//  LogInToTheSystem
//
//  Created by Глеб on 15.05.2022.
//

import UIKit

class UserViewController: UIViewController {
    
    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var userSurnameLabel: UILabel!
    @IBOutlet var userAgeLabel: UILabel!
    @IBOutlet var userCountryLabel: UILabel!
    @IBOutlet var userCityLabel: UILabel!
    @IBOutlet var userStreetLabel: UILabel!
    
    var userName = ""
    var userSurname = ""
    var userAge = 0
    var userCountry = ""
    var userCity = ""
    var userStreet = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameLabel.text = userName
        userSurnameLabel.text = userSurname
        userAgeLabel.text = String(userAge)
        userCountryLabel.text = userCountry
        userCityLabel.text = userCity
        userStreetLabel.text = userStreet

    }
    

}
