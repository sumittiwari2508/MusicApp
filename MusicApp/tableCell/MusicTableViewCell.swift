//
//  MusicTableViewCell.swift
//  MusicApp
//
//  Created by Kasun on 11/6/1399 AP.
//

import UIKit

class MusicTableViewCell: UITableViewCell {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var singlerName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.img.layer.cornerRadius = 8
          self.img.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
