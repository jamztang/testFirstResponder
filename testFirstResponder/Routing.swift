//
//  Routing.swift
//  testFirstResponder
//
//  Created by James Tang on 14/5/2020.
//  Copyright © 2020 James Tang. All rights reserved.
//

import UIKit

extension UIStoryboard {
    static let main = UIStoryboard(name: "Main", bundle: nil)
}

extension UIViewController {
    static var rootNav: UINavigationController { UIStoryboard.main.instantiateViewController(identifier: "rootNav")
    }
    static var root: ViewController {
        UIStoryboard.main.instantiateViewController(identifier: "root")
    }
}
