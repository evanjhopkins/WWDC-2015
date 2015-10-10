//
//  StoryCellController.swift
//  EvanHopkins
//
//  Created by Evan Hopkins on 4/21/15.
//  Copyright (c) 2015 Evan Hopkins. All rights reserved.
//

import UIKit

class StoryCellController: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var coverImage: UIImageView!
    @IBOutlet weak var divider: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
