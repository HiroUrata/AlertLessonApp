//
//  ViewController.swift
//  AlertLessonApp
//
//  Created by UrataHiroki on 2021/09/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var bookMarkTableView: UITableView!
    
    
    let searchController = UISearchController()
    
    var cellContentsArray = ["UITableView",
                             "UISearchController",
                             "UIView",
                             "UIColor",
                             "UICollectionView",
                             "UISwich",
                             "UIKit",
                             "UITextField",
                             "UIViewController",
                             "UILabel"]
    
    
    var searchResultArray = [String]()
    
    let stringOne = "abcdefg"
    let stringTwo = "1234567"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        print(stringOne.suffix(2))
//        print(stringTwo.suffix(5))
//
//        print(stringTwo.prefix(3).suffix(2))
//
//        let prefixString = stringTwo.prefix(3)
//        print(prefixString.suffix(2))
//
        
        print(cellContentsArray.contains("UIView"))
        print(cellContentsArray.contains("UIImage"))
        print(cellContentsArray.reverse())
        print(cellContentsArray.randomElement() as Any)
        
        
        
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
    
        title = "全て表示中"
        tableView.delegate = self
        tableView.dataSource = self
        bookMarkTableView.delegate = self
        searchController.searchBar.delegate = self
        
        searchController.searchBar.delegate = self
        //searchController.searchBar.showsScopeBar = true //falseだと完全に隠れる
        searchController.searchBar.scopeButtonTitles = ["Vで検索","Fで検索","Cで検索"]
        searchController.searchBar.showsBookmarkButton = true
        
       
    }
    
    
    
}

extension ViewController:UISearchBarDelegate{
    
    func searchBarBookmarkButtonClicked(_ searchBar: UISearchBar) {
        //ブックマークが押された時の処理
        


    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        searchResultArray = []
        cellContentsArray.forEach { cellContent in
            
            if cellContent.contains(searchText) == true {
                
                searchResultArray.append(cellContent)
                title = "”\(searchText)”で検索中"
                tableView.reloadData()
                
            }else if searchText == ""{
                
                tableView.reloadData()
            }
        }
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
     
        searchResultArray = []
        title = "全て表示中"
        tableView.reloadData()
    }
    
}


extension ViewController:UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return tableView.frame.size.height / 7
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return {() -> Int in
            
            switch searchResultArray.count > 0{
            
            case true: return searchResultArray.count
                
            case false: return cellContentsArray.count
                
            }
        }()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = {() -> String in
           
            switch searchResultArray.count > 0{
            
            case true: return searchResultArray[indexPath.row]
                
            case false: return cellContentsArray[indexPath.row]
            }
        }()
        
        return cell
    }
    
}



















//    @IBAction func usualAlert(_ sender: Any) {
//
//        let usualAler = {() -> UIAlertController in
//
//            let alert = UIAlertController(title: "タイトルだよ", message: "アラートの内容だよ", preferredStyle: .alert)
//
//            alert.addAction(UIAlertAction(title: "No", style: .destructive, handler: { _ in
//
//                print("No")
//
//            }))
//
//            alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { _ in
//
//                print("Yes")
//
//            }))
//
//            return alert
//        }()
//
//        self.present(usualAler, animated: true, completion: nil)
//
//    }
//
//
//    @IBAction func usualActionSheetAlert(_ sender: Any) {
//
//        let usualActionSheetAlert = {() -> UIAlertController in
//
//            let alert = UIAlertController(title: "タイトルだよ", message: "アラートの内容だよ", preferredStyle: .actionSheet)
//
//            alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { _ in
//
//                print("Yes")
//
//            }))
//
//            alert.addAction(UIAlertAction(title: "No", style: .destructive, handler: { _ in
//
//                print("No")
//
//            }))
//
//            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { _ in
//
//                print("cancel")
//
//            }))
//
//            return alert
//        }()
//
//        self.present(usualActionSheetAlert, animated: true, completion: nil)
//
//    }
//
//
//
//
//    @IBAction func textfieldInAlert(_ sender: Any) {
//
//        let textfieldInAlert = {() -> UIAlertController in
//
//            let alert = UIAlertController(title: "タイトルだよ", message: "アラートの内容だよ", preferredStyle: .alert)
//
//            alert.addTextField { (alertTextField:UITextField) in
//
//                alertTextField.placeholder = "文字を入力してね"
//
//            }
//
//            alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { _ in
//
//                print("Yes")
//
//            }))
//
//            alert.addAction(UIAlertAction(title: "No", style: .destructive, handler: { _ in
//
//                print("No")
//
//            }))
//
//            return alert
//        }()
//
//        self.present(textfieldInAlert, animated: true, completion: nil)
//
//    }
//
//}
