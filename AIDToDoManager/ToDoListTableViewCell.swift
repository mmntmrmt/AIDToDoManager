//
//  ToDoListTableViewCell.swift
//  AIDToDoManager
//
//  Created by Ryo Morimoto on 2015/07/24.
//  Copyright (c) 2015年 Ryo Morimoto. All rights reserved.
//

import UIKit

class ToDoListTableViewCell: UITableViewCell {

    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var deadLineLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
