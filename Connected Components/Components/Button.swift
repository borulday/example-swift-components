//
//  Button.swift
//  Connected Components
//
//  Created by M.Gokay Borulday on 1.11.2019.
//  Copyright © 2019 M.Gokay Borulday. All rights reserved.
//

import UIKit

/**
### For a painless usage of `Button` in an iOS project!

**Unordered Lists**
- Lists are great,
- but perhaps don't nest
- Sub-list formatting
  - isn't the best.

**Ordered Lists**
1. Ordered lists, too
2. for things that are sorted...bla
*/

final class Button: UIButton {

    // MARK: Kind

    enum Kind {
        case primary
        case secondary

        // MARK: Properties

        var color: UIColor {
            switch self {
            case .primary:
                return .green
            case .secondary:
                return .yellow
            }
        }
    }

    // MARK: Initializers

    required init(title: String, kind: Kind, icon: UIImage? = nil) {
        super.init(frame: .zero)

        setTitleColor(.black, for: .normal)
        setTitle(title, for: .normal)

        setBackgroundColor(color: kind.color, forState: .normal)
        setBackgroundColor(color: kind.color.withAlphaComponent(0.8), forState: .highlighted)
    }

    required init() {
        super.init(frame: .zero)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)


    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: UIButton extension

extension UIButton {

    func setBackgroundColor(color: UIColor, forState: UIControl.State) {
        UIGraphicsBeginImageContext(CGSize(width: 1.0, height: 1.0))
        UIGraphicsGetCurrentContext()!.setFillColor(color.cgColor)
        UIGraphicsGetCurrentContext()!.fill(CGRect(x: 0.0, y: 0.0, width: 1.0, height: 1.0))
        let colorImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        self.setBackgroundImage(colorImage, for: forState)
    }
}
