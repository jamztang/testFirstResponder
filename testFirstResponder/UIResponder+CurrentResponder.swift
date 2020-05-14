//
//  UIResponder+CurrentResponder.swift
//  testFirstResponder
//
//  Created by James Tang on 14/5/2020.
//  Copyright © 2020 James Tang. All rights reserved.
//

import UIKit

extension UIResponder {
    static private var _current: UIResponder?
    static var current: UIResponder? {
        _current = nil
        UIApplication.shared.sendAction(#selector(findFirstResponder), to: nil, from: nil, for: nil)
        return _current
    }

    @objc func findFirstResponder() {
        UIResponder._current = self
    }
}

extension UIViewController {
    func dismissAndRestoreFirstResponder(animated: Bool, completion: (()->Void)?) {
        let firstResponder = UIResponder.current
        dismiss(animated: animated, completion: {
            firstResponder?.becomeFirstResponder()
            completion?()
        })
    }
}
