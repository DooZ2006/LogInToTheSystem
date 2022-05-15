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
    
    private let userName = "Borodachka"
    private let userPassword = "Password"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userValue = userName
    }

    @IBAction func logInToTheSystem() {
        if userNameValue.text == userName {
            userNameValue.text = userName
        } else if passwordValue.text == userPassword {
            passwordValue.text = userPassword
        } else {
            passwordValue.text = ""
            setAlarm(with: "", and: "Invalid User Name or Password")
        }
    }
    
    @IBAction func forgotUserName() {
        setAlarm(with: "User Name", and: "Your User Name is \(userName)")
    }
    
    @IBAction func forgotPassword() {
        setAlarm(with: "Password", and: "Your Password is \(userPassword)")
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



