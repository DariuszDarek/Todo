//
//  TodoCell.swift
//  TODO
//
//  Created by Dariusz Różecki on 02/08/2019.
//  Copyright © 2019 Dariusz Różecki. All rights reserved.
//

import UIKit

class TodoCell: UITableViewCell {

    @IBOutlet weak var todoLabel: UILabel!
    @IBOutlet weak var checkmarkImage: UIImageView!
    var isChecked = false
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
