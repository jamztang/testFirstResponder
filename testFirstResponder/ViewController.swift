//
//  ViewController.swift
//  testFirstResponder
//
//  Created by James Tang on 14/5/2020.
//  Copyright © 2020 James Tang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func push(_ sender: Any) {
        self.navigationController?.pushViewController(.root, animated: true)
    }

    @IBAction func modal(_ sender: Any) {
        self.present(.rootNav, animated: true, completion: nil)
    }
}
