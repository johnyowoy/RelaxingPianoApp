//
//  ListPianoTableViewCell.swift
//  RelaxingPianoApp
//
//  Created by John on 2020/6/23.
//  Copyright © 2020 JinHauHuang. All rights reserved.
//

import UIKit

class ListPianoTableViewCell: UITableViewCell {
    
    @IBOutlet var SongLabel: UILabel!
    @IBOutlet var PerformerLabel: UILabel!
    @IBOutlet var TimeLabel: UILabel!
    @IBOutlet var ImageView: UIImageView!
    /*
    {
         didSet {
            ImageView.layer.cornerRadius = ImageView.bounds.width / 2
            ImageView.clipsToBounds = true
        }
    }
    */

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
