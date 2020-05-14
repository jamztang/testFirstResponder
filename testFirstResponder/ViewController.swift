//
//  ViewController.swift
//  testFirstResponder
//
//  Created by James Tang on 14/5/2020.
//  Copyright © 2020 James Tang. All rights reserved.
//

import UIKit

private extension Selector {
    static let dismiss = #selector(ViewController.dismiss(_:))
}
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        if presentingViewController != nil && self.navigationController?.viewControllers.first == self {
            // Only show close button if it's the first vc in the nav stack
            self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .close, target: self, action: .dismiss)
        }
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        becomeFirstResponder()
    }

    @IBAction func push(_ sender: Any) {
        print("TTT vc push")
        self.navigationController?.pushViewController(.root, animated: true)
    }

    @IBAction func modal(_ sender: Any) {
        print("TTT vc modal")
        self.present(.rootNav, animated: true, completion: nil)
    }

    @IBAction func dismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

    override var canBecomeFirstResponder: Bool {
        return true
    }
}
