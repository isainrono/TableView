//
//  ViewController.swift
//  TableView
//
//  Created by isain on 22/01/2019.
//  Copyright © 2019 Stucom. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var category:[Category] = [
        Category(title: "Summer", img: UIImage(named:"326Spain1")!),
        Category(title: "Winter", img: UIImage(named:"326Spain1")!),
        Category(title: "Summer", img: UIImage(named:"326Spain1")!),
        Category(title: "Winter", img: UIImage(named:"326Spain1")!),
        Category(title: "Winter", img: UIImage(named:"326Spain1")!),
    ]
    
    var glassesList:[Glasses] = [
        Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain1")!),
        Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain1")!),
        Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain1")!),
        Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain1")!),
        Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain1")!),
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return glassesList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! TableViewCellCustom
        
        myCell.imgGlasses.image = glassesList[indexPath.row].glassImage
        myCell.nameGlasses.text = glassesList[indexPath.row].name
        myCell.colorGlasses.text = glassesList[indexPath.row].color
        myCell.priceGlasses.text = String(glassesList[indexPath.row].price)
        myCell.isHated.isHidden = glassesList[indexPath.row].isHated ? false : true
        myCell.isLiked.isHidden = glassesList[indexPath.row].isLiked ? false : true
        
        return myCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(category[indexPath.row].title)
        let viewControllerNew = storyboard?.instantiateViewController(withIdentifier: "detail") as! ViewcontrollerDetail
        
        viewControllerNew.img = category[indexPath.row].img
        viewControllerNew.lbl = category[indexPath.row].title
        
        self.navigationController?.pushViewController(viewControllerNew, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "LISTA TEMPORADAS 326SPAIN"
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let isLiked = likedCategory(indexPath: indexPath)
        let isHated = hatedCategory(indexPath: indexPath)
        
        
        return UISwipeActionsConfiguration(actions: [isLiked, isHated])
    }
    
    func hatedCategory(indexPath:IndexPath) -> UIContextualAction {
        
        let action = UIContextualAction(style: .normal, title: "Hated") { (action, view, completion) in
            self.glassesList[indexPath.row].isHated = !self.glassesList[indexPath.row].isHated
            self.tableView.reloadRows(at: [indexPath], with: .none)
            action.title = "You hate this!"
            completion(true)
            
        }
        
        action.title = glassesList[indexPath.row].isLiked ? "DisHated" : "Hated"
        action.backgroundColor = glassesList[indexPath.row].isLiked ? UIColor.orange : UIColor.red
        action.image = UIImage(named: "dislike")
        return action
    }
    
    func likedCategory(indexPath:IndexPath) -> UIContextualAction {
        
        let action = UIContextualAction(style: .normal, title: "Liked") { (action, view, completion) in
            self.glassesList[indexPath.row].isLiked = !self.glassesList[indexPath.row].isLiked
            self.tableView.reloadRows(at: [indexPath], with: .none)
            action.title = "You like this!"
            completion(true)
            
        }
        
        action.title = glassesList[indexPath.row].isLiked ? "Dislike" : "like"
        action.backgroundColor = glassesList[indexPath.row].isLiked ? UIColor.purple : UIColor.green
        action.image = UIImage(named: "like")
        
        return action
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }


}

