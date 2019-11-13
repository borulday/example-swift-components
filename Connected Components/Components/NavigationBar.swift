//
//  NavigationBar.swift
//  Connected Components
//
//  Created by M.Gokay Borulday on 12.11.2019.
//  Copyright © 2019 M.Gokay Borulday. All rights reserved.
//

import UIKit

/**
### Navigation Bar

You can navigate your app thanks to this cool nav bar! 👯‍♂️
*/

final class NavigationBar: UIView {

    // MARK: Size

    enum Size {
        case small
        case regular
        case big
    }

    // MARK: Properties

    private let title: String
    private let backButtonTitle: String

    // MARK: Initializers

    required init(title: String, backButtonTitle: String = "Back", size: Size = .regular) {
        self.title = title
        self.backButtonTitle = backButtonTitle

        super.init(frame: .zero)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
