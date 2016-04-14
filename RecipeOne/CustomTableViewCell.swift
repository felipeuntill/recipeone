//
//  CustomTableViewCell.swift
//  RecipeOne
//
//  Created by Felipe Assunção on 4/13/16.
//  Copyright © 2016 Felipe Assunção. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    // Properties
    var recipe : Recipe?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
