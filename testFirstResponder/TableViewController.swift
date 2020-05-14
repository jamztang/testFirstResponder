//
//  TableViewController.swift
//  testFirstResponder
//
//  Created by James Tang on 14/5/2020.
//  Copyright © 2020 James Tang. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let cell = tableView.cellForRow(at: indexPath) else { fatalError() }
        switch cell.reuseIdentifier {
        case .some("push"):
            dismiss(animated: true, completion: nil)
            UIApplication.shared.sendAction(.push, to: nil, from: self, for: nil)
        case .some("modal"):
            dismiss(animated: true, completion: {
                UIApplication.shared.sendAction(.modal, to: nil, from: self, for: nil)
            })
        case .some(let identifier):
            fatalError("Not handled \(identifier)")
        default:
            fatalError("Missing cell reuse identifier")
        }
    }

}
