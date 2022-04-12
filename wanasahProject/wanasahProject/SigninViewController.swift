//
//  SigninViewController.swift
//  wanasahProject
//
//  Created by Apple on 06/04/2022.
//

import UIKit
import iOSDropDown

class SigninViewController: UIViewController {

    @IBOutlet weak var countryCodeTf: UILabel!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var googleImageView: UIView!
    
    @IBOutlet weak var dorpDownList: DropDown!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    dropDownMenu()
    }
    
    func dropDownMenu(){
        dorpDownList.optionArray = ["92", "860", "790","507", "675", "595","51", "63", "870","48", "351", "1","", "974"]
            //Its Id Values and its optional
        dorpDownList.optionIds = [1,23,54,22]

            // Image Array its optional
        //dorpDownList.ImageArray = [ #imageLiteral(resourceName: "flag")]
    //        // The the Closure returns Selected Index and String
//            dropDown.didSelect{(selectedText , index ,id) in
//            self.dropDown.text = "Selected String: \(selectedText) \n index: \(index)"
//            }
        }

}
