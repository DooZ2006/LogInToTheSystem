//
//  ViewController.swift
//  LogInToTheSystem
//
//  Created by Глеб on 15.05.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var userNameValue: UITextField!
    @IBOutlet var passwordValue: UITextField!
    
    private let user = LoginInfo()
    private let person = Person()
    private let address = Address()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tapBarController = segue.destination as! UITabBarController
        guard let viewControllers = tapBarController.viewControllers else { return }
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user.user
            } else if let userVC = viewController as? UserViewController {
                userVC.userName = person.name
                userVC.userSurname = person.surname
                userVC.userAge = person.age
                userVC.userCountry = address.country
                userVC.userCity = address.city
                userVC.userStreet = address.street
            }
        }
    }

    @IBAction func logInToTheSystem() {
        if userNameValue.text != user.user || passwordValue.text != user.password {
            setAlarm(with: "Ooops", and: "Invalid User Name or Password ")
        }
    }
    
    @IBAction func forgotUserName() {
        setAlarm(with: "User Name", and: "Your User Name is \(user.user)")
    }
    
    @IBAction func forgotPassword() {
        setAlarm(with: "Password", and: "Your Password is \(user.password)")
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        userNameValue.text = ""
        passwordValue.text = ""
    }
    
}

// MARK: -UIAlertController
extension LoginViewController {
    private func setAlarm(with title: String, and message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

// MARK: - UITextFieldDelegate

extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameValue {
            passwordValue.becomeFirstResponder()
        } else {
            logInToTheSystem()
            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        }
        return true
    }
}



