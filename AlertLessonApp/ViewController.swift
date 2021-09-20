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
        
        navigationItem.searchController = UISearchController()
        
    }

    @IBAction func usualAlert(_ sender: Any) {
        
        let usualAler = {() -> UIAlertController in
            
            let alert = UIAlertController(title: "タイトルだよ", message: "アラートの内容だよ", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "No", style: .destructive, handler: { _ in
                
                print("No")
                
            }))
            
            alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { _ in
                
                print("Yes")
                
            }))
            
            return alert
        }()
        
        self.present(usualAler, animated: true, completion: nil)
        
    }
    
    
    @IBAction func usualActionSheetAlert(_ sender: Any) {
        
        let usualActionSheetAlert = {() -> UIAlertController in
            
            let alert = UIAlertController(title: "タイトルだよ", message: "アラートの内容だよ", preferredStyle: .actionSheet)
            
            alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { _ in
                
                print("Yes")
                
            }))
            
            alert.addAction(UIAlertAction(title: "No", style: .destructive, handler: { _ in
                
                print("No")
                
            }))
            
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { _ in
                
                print("cancel")
                
            }))
            
            return alert
        }()
        
        self.present(usualActionSheetAlert, animated: true, completion: nil)
        
    }
        
    
    
    
    @IBAction func textfieldInAlert(_ sender: Any) {
        
        let textfieldInAlert = {() -> UIAlertController in
            
            let alert = UIAlertController(title: "タイトルだよ", message: "アラートの内容だよ", preferredStyle: .alert)
            
            alert.addTextField { (alertTextField:UITextField) in
                
                alertTextField.placeholder = "文字を入力してね"

            }
            
            alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { _ in
                
                print("Yes")
                
            }))
            
            alert.addAction(UIAlertAction(title: "No", style: .destructive, handler: { _ in
                
                print("No")
                
            }))
            
            return alert
        }()
        
        self.present(textfieldInAlert, animated: true, completion: nil)
        
    }
    
}
