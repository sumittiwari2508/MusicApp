//
//  ViewController.swift
//  MusicApp
//
//  Created by Kasun on 11/6/1399 AP.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var musicTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        musicTableView.delegate = self
        musicTableView.dataSource = self
    
        let nav = self.navigationController?.navigationBar
       
           nav?.tintColor = UIColor.black
        nav?.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        
        musicTableView.register(UINib(nibName: "CollectionTableViewCell", bundle: nil), forCellReuseIdentifier: "CollectionTableViewCell")
        musicTableView.register(UINib(nibName: "SecondTableViewCell", bundle: nil), forCellReuseIdentifier: "SecondTableViewCell")
        let imageView = UIImageView(image: UIImage(systemName: "bell.fill"))
        let item = UIBarButtonItem(customView: imageView)
            self.navigationItem.rightBarButtonItem = item
        
        let imageView2 = UIImageView(image: UIImage(systemName: "person.fill"))
             
               let item2 = UIBarButtonItem(customView: imageView2)
        self.navigationItem.leftBarButtonItem = item2
    }
    
    


}
extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let index = indexPath.row
        
        if index == 3{
            let identifier = "SecondTableViewCell"
            
            let cell: SecondTableViewCell! = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)  as? SecondTableViewCell
            
            return cell
            
        }else{
        
        let identifier = "CollectionTableViewCell"
            let cell: CollectionTableViewCell! = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)  as? CollectionTableViewCell
        
        return cell
        }
   
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
}
