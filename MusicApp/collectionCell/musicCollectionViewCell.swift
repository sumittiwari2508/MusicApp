//
//  musicCollectionViewCell.swift
//  MusicApp
//
//  Created by Kasun on 11/6/1399 AP.
//

import UIKit

class musicCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var musicName: UILabel!
    @IBOutlet weak var singername: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.img.layer.cornerRadius = 8
          self.img.clipsToBounds = true
    }

}
