//
//  CheckMarkCell.swift
//  Report Manager
//
//  Created by Tech World on 5/3/20.
//  Copyright © 2020 Tech World. All rights reserved.
//

import UIKit

class CheckMarkCell: UITableViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var btnCheckMark: UIButton!
    @IBOutlet weak var btnImage: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
