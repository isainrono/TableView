//
//  Glasses.swift
//  TableView
//
//  Created by isain on 22/01/2019.
//  Copyright © 2019 Stucom. All rights reserved.
//

import Foundation
import UIKit

class Glasses {
    var name:String
    var color:String
    var price:Int
    var glassImage:UIImage = UIImage()
    var isLiked:Bool = false
    var isHated:Bool = false
    
    init (name:String, color:String, price:Int, glassImage:UIImage) {
        self.name = name;
        self.color = color;
        self.price = price
        self.glassImage = glassImage;
    }
    
    
}
