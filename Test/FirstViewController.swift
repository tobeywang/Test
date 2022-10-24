//
//  FirstViewController.swift
//  Test
//
//  Created by Yuwen Chiu on 2022/10/22.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func btnImage(_ sender: Any) {
        
        let uipc = UIImagePickerController()
        uipc.delegate = self
        
        let msgAlert = UIAlertController(title: "", message: "", preferredStyle: .actionSheet)
        let imgAction = UIAlertAction(title: "相機", style: .default) { _ in
            uipc.sourceType = .camera
            self.present(uipc, animated: true)
        }
        let fileAction = UIAlertAction(title: "相簿", style: .default) { _ in
            uipc.sourceType = .photoLibrary
            self.present(uipc, animated: true)
        }
        let cancelAction = UIAlertAction(title: "取消", style: .cancel) { _ in
            msgAlert.dismiss(animated: false, completion: nil)
        }
        msgAlert.addAction(imgAction)
        msgAlert.addAction(fileAction)
        msgAlert.addAction(cancelAction)
        
        present(msgAlert, animated: false, completion: nil)
        
    }
}

extension FirstViewController: UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        let image = info[.originalImage] as? UIImage
        imgView.image = image
        
        picker.dismiss(animated: true, completion: nil)
    }
}
