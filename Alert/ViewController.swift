//
//  ViewController.swift
//  Alert
//
//  Created by Aiden Martinez on 4/1/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
        
    @IBAction func alertButton(_ sender: Any) {
        let mySet = CharacterSet(["0","1","2","3","4","5","6","7","8","9"])
        
        var text1 = textField.text ?? ""
        if text1.rangeOfCharacter(from: mySet) != nil { let alert = UIAlertController(title: "Please Enter Only Letters!", message: nil, preferredStyle: .alert)
            
            self.present(alert, animated: true, completion: nil)
            
            let ok = UIAlertAction(title: "OK", style: .default) { action in print("OK Pressed")
                
            }
            alert.addAction(ok)
            
            let cancel = UIAlertAction(title: "Cancel",style: .cancel)
            alert.addAction(cancel)
        }
    }
    
    
    }
    



