//
//  TextTableViewCell.swift
//  TesteiOS
//
//  Created by Eduardo Lombardi on 29/05/2018.
//  Copyright © 2018 Eduardo Lombardi. All rights reserved.
//

import UIKit

class TextTableViewCell: UITableViewCell {
    var model:TextCellModel = TextCellModel(nil)
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        print(model.definition)
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}