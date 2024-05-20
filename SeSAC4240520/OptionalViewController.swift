//
//  OptionalViewController.swift
//  SeSAC4240520
//
//  Created by jack on 5/20/24.
//

import UIKit

class OptionalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //Any: tapGesture, button
    @IBAction func keyboardDismiss(_ sender: Any) {
        view.endEditing(true)
    }

}
