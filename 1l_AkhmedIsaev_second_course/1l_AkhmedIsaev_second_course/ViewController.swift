//
//  ViewController.swift
//  1l_AkhmedIsaev_second_course
//
//  Created by Ahmed Isaev on 14.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        
        
    }
    @IBOutlet weak var passwordInput: UITextField!
    @IBOutlet weak var loginInput: UITextField!
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        let checkResult = checkData()
        
        if !checkResult {
            showDataError()
        }
        
        return checkResult
        
        func checkData() -> Bool {
            guard let login = loginInput.text, let password = passwordInput.text else {
                return false
            }
            
            if login == "" && password == "" {
                return true
            } else {
                return false
            }
        }
        
        func showDataError() {
            let alert = UIAlertController(title: "Error", message: "Wrong login or password!", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
        }
        
    }
    
}
    
