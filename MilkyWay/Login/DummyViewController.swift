//
//  DummyViewController.swift
//  MilkyWay
//
//  Created by Saleh Masum on 27/10/2022.
//

import UIKit

protocol LogoutDelegate: AnyObject {
   func didLogout()
}

class DummyViewController: UIViewController {
    
    weak var delegate: LogoutDelegate?

    let stackView: UIStackView = {
       let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 20
        stackView.axis = .vertical
        return stackView
    }()
    
    let label: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Welcome"
        label.font = UIFont.preferredFont(forTextStyle: .title1)
        return label
    }()
    
    lazy var logoutButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Logout", for: .normal)
        button.configuration = .filled()
        button.addTarget(self, action: #selector(logoutButtonTapped), for: .primaryActionTriggered)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        layout()
    }

}

extension DummyViewController {
    private func setup() {
        view.backgroundColor = .systemBackground
        view.addSubview(stackView)
        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(logoutButton)
    }
    private func layout() {
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}

extension DummyViewController {
    @objc private func logoutButtonTapped() {
        delegate?.didLogout()
    }
}
