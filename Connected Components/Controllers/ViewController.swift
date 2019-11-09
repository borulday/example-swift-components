//
//  ViewController.swift
//  Connected Components
//
//  Created by M.Gokay Borulday on 31.10.2019.
//  Copyright © 2019 M.Gokay Borulday. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Properties

    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 12.0

        return stackView
    }()

    private let primaryButton = Button(title: "Primary", kind: .primary)
    private let secondaryButton = Button(title: "Secondary", kind: .secondary)

    // MARK: UIViewController

    override func loadView() {
        title = "Hola"

        let view = UIView()
        view.backgroundColor = .gray

        view.addSubview(stackView)
        stackView.addSubview(primaryButton)
        stackView.addSubview(secondaryButton)

        self.view = view

        view.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        primaryButton.translatesAutoresizingMaskIntoConstraints = false
        secondaryButton.translatesAutoresizingMaskIntoConstraints = false

        let screenSize = UIScreen.main.bounds

        stackView.heightAnchor.constraint(equalToConstant: screenSize.height).isActive = true
        stackView.widthAnchor.constraint(equalToConstant: screenSize.width).isActive = true

        primaryButton.bottomAnchor.constraint(equalTo: secondaryButton.topAnchor, constant: -24.0).isActive = true
        primaryButton.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 64.0).isActive = true
        primaryButton.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -64.0).isActive = true
        primaryButton.heightAnchor.constraint(equalToConstant: 65.0).isActive = true

        secondaryButton.bottomAnchor.constraint(equalTo: stackView.bottomAnchor, constant: -24.0).isActive = true
        secondaryButton.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 64.0).isActive = true
        secondaryButton.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -64.0).isActive = true
        secondaryButton.heightAnchor.constraint(equalToConstant: 65.0).isActive = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()

         primaryButton.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
    }

    // MARK: Actions

    @objc private func buttonClicked() {
        print("😈")
    }
}
