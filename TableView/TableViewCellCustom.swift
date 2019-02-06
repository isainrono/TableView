//
//  TableViewCellCustom.swift
//  TableView
//
//  Created by isain on 22/01/2019.
//  Copyright © 2019 Stucom. All rights reserved.
//

import UIKit

class TableViewCellCustom: UITableViewCell {
    
    
    @IBOutlet weak var imgGlasses: UIImageView!
    @IBOutlet weak var nameGlasses: UILabel!
    @IBOutlet weak var colorGlasses: UILabel!
    @IBOutlet weak var priceGlasses: UILabel!
    @IBOutlet weak var isLiked: UILabel!
    @IBOutlet weak var isHated: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
