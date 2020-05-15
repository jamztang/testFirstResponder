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
        Swift.print("TTT first responder \(String(describing: UIResponder.current))")

        switch cell.reuseIdentifier {
        case .some("pushai"):
            print("TTT popover push animated without waiting")
            dismiss(animated: true, completion: {
                Swift.print("TTT first responder \(String(describing: UIResponder.current))")
            })
            UIApplication.shared.sendAction(.push, to: nil, from: self, for: nil)
        case .some("pushi"):
            print("TTT popover push without waiting")
            dismiss(animated: false, completion: {
                Swift.print("TTT first responder \(String(describing: UIResponder.current))")
            })
            UIApplication.shared.sendAction(.push, to: nil, from: self, for: nil)
        case .some("pushauc"):
            print("TTT popover push animated and wait")
            dismiss(animated: true, completion: {
                Swift.print("TTT first responder \(String(describing: UIResponder.current))")
                UIApplication.shared.sendAction(.push, to: nil, from: self, for: nil)
            })
        case .some("pushuc"):
            print("TTT popover push and wait")
            dismiss(animated: false, completion: {
                Swift.print("TTT first responder \(String(describing: UIResponder.current))")
                UIApplication.shared.sendAction(.push, to: nil, from: self, for: nil)
            })
        case .some("modal"):
            print("TTT popover modal")
            UIApplication.shared.sendAction(.modal, to: nil, from: self, for: nil)
            dismiss(animated: true, completion: { [weak self] in
                guard let self = self else { return }
                print("TTT popover animated dismiss completion")
            })
        case .some(let identifier):
            fatalError("Not handled \(identifier)")
        default:
            fatalError("Missing cell reuse identifier")
        }
    }

}
