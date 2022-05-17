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
    
    private let loginInfo = LoginInfo.getLoginInfo()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tapBarController = segue.destination as! UITabBarController
        guard let viewControllers = tapBarController.viewControllers else { return }
        
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = loginInfo.user
            } else if let userVC = viewController as? UserViewController {
                userVC.person = loginInfo
            } else if let hobbyVC = viewController as? HobbyViewController {
                hobbyVC.hobby = loginInfo
            }
        }
    }

    @IBAction func logInToTheSystem() {
        if userNameValue.text != loginInfo.user || passwordValue.text != loginInfo.password {
            setAlarm(with: "Ooops", and: "Invalid User Name or Password ")
        }
    }
    
    @IBAction func forgotUserName() {
        setAlarm(with: "User Name", and: "Your User Name is \(loginInfo.user)")
    }
    
    @IBAction func forgotPassword() {
        setAlarm(with: "Password", and: "Your Password is \(loginInfo.password)")
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



