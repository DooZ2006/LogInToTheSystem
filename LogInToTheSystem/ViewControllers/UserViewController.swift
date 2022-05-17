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
    
    var person: LoginInfo!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameLabel.text = person.person.name
        userSurnameLabel.text = person.person.surname
        userAgeLabel.text = String(person.person.age)
        userCountryLabel.text = person.person.address.country
        userCityLabel.text = person.person.address.city
        userStreetLabel.text = person.person.address.street

    }
    

}
