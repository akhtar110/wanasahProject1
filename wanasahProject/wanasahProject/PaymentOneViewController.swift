//
//  PaymentOneViewController.swift
//  wanasahProject
//
//  Created by Apple on 10/04/2022.
//

import UIKit

class PaymentOneViewController: UIViewController {

    @IBOutlet weak var topView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        topView.roundCorners([.bottomLeft, .bottomRight,], radius: 30)
        // Do any additional setup after loading the view.
    }

}
