//
//  LoginView.swift
//  MilkyWay
//
//  Created by Saleh Masum on 25/10/2022.
//

import UIKit

class LoginView: UIView {
    
    let stackView: UIStackView = {
       let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 8
        return stackView
    }()

    let userNameTextField: UITextField = {
       let usernameTextField = UITextField()
        usernameTextField.placeholder = "Username"
        usernameTextField.translatesAutoresizingMaskIntoConstraints = false
        return usernameTextField
    }()
    
    let passwordField: UITextField = {
       let passwordField = UITextField()
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        passwordField.placeholder = "Password"
        passwordField.autocapitalizationType = .none
        passwordField.isSecureTextEntry = true
        return passwordField
    }()
    
    let dividerView: UIView = {
       let dividerView = UIView()
        dividerView.backgroundColor = .secondarySystemFill
        dividerView.translatesAutoresizingMaskIntoConstraints = false
        return dividerView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    override var intrinsicContentSize: CGSize {
//        return CGSize(width: 200, height: 200)
//    }

}

extension LoginView {
    
    private func setup() {
        addSubview(stackView)
        stackView.addArrangedSubview(userNameTextField)
        stackView.addArrangedSubview(dividerView)
        stackView.addArrangedSubview(passwordField)
        
        userNameTextField.delegate = self
        passwordField.delegate    = self
    }
    
    private func layout() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8),
            
            dividerView.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
}

extension LoginView: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        userNameTextField.endEditing(true)
        passwordField.endEditing(true)
        return true
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
//        if textField.text != "" {
//            return true
//        }else {
//            return false
//        }
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
}
