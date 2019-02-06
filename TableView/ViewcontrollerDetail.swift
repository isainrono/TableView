//
//  ViewcontrollerDetail.swift
//  TableView
//
//  Created by isain on 29/01/2019.
//  Copyright © 2019 Stucom. All rights reserved.
//

import UIKit

class ViewcontrollerDetail: UIViewController {

    @IBOutlet weak var imgCategory: UIImageView!
    @IBOutlet weak var lblCategory: UILabel!
    var lbl:String = ""
    var img:UIImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgCategory.image = img
        lblCategory.text = lbl
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
