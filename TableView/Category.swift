//
//  Category.swift
//  TableView
//
//  Created by isain on 29/01/2019.
//  Copyright © 2019 Stucom. All rights reserved.
//

import Foundation
import UIKit

class Category {
    var title:String
    var img:UIImage = UIImage()
    
    
    init(title:String, img:UIImage) {
        self.title = title
        self.img = img
    }
    
}
