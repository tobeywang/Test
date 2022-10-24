//
//  ViewController.swift
//  Test
//
//  Created by Yuwen Chiu on 2022/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lbl1: UILabel!
    
    @IBOutlet weak var btnSubmit: UIButton!
    @IBOutlet weak var txtAcc: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSubmitClick(_ sender: Any) {
        
        let sAccount = txtAcc.text
        
        if sAccount.isNilOrEmpty {
            
            let msgAlert = UIAlertController(title: "This is Title", message: "Account is Empty", preferredStyle: .alert)
            let msgAction = UIAlertAction(title: "OK", style: .cancel) { _ in
                msgAlert.dismiss(animated: false, completion: nil)
            }
            msgAlert.addAction(msgAction)
            
            present(msgAlert, animated: false, completion: nil)
        }
        else {
            
            let sb = UIStoryboard(name: "First", bundle: Bundle.main)
            let vc = sb.instantiateViewController(withIdentifier: "First")
            
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}

