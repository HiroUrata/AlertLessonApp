//
//  ViewController.swift
//  AlertLessonApp
//
//  Created by UrataHiroki on 2021/09/15.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func usualAlert(_ sender: Any) {
        
        let usualAler = {() -> UIAlertController in
            
            let alert = UIAlertController(title: "タイトルだよ", message: "アラートの内容だよ", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { _ in
                
                print("Yes")
                
            }))
            
            alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: { _ in
                
                print("No")
                
            }))
            
            return alert
        }()
        
        self.present(usualAler, animated: true, completion: nil)
        
    }
    
    @IBAction func usualActionSheetAlert(_ sender: Any) {
        
        
    }
    
    @IBAction func textfieldInAlert(_ sender: Any) {
        
        
    }
    
    @IBAction func textfieldInActionSheetAlert(_ sender: Any) {
        
        
    }
    
    
}

