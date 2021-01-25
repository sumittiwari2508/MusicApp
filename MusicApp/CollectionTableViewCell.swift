//
//  CollectionTableViewCell.swift
//  MusicApp
//
//  Created by Kasun on 11/6/1399 AP.
//

import UIKit

class CollectionTableViewCell: UITableViewCell {

    @IBOutlet weak var musicTypeName: UILabel!
    @IBOutlet weak var seeMore: UIButton!
    @IBOutlet weak var musicCollectionView: UICollectionView!
    
    var musicArr = ["1","2","3","4","5","6","7","8"]
    override func awakeFromNib() {
        super.awakeFromNib()
        musicCollectionView.delegate = self
        musicCollectionView.dataSource = self
        self.musicCollectionView.register(UINib (nibName: "musicCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "musicCollectionViewCell")
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        seeMore.layer.cornerRadius = seeMore.frame.height * 0.50
    }
    
}
extension CollectionTableViewCell: UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return musicArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:musicCollectionViewCell = musicCollectionView.dequeueReusableCell(withReuseIdentifier: "musicCollectionViewCell", for: indexPath) as! musicCollectionViewCell
        let imag = musicArr[indexPath.row]
        
        
        let index = indexPath.row
        
        if index == 0{
            musicTypeName.text = "Popular  telgu Songs"
        }else if index == 1{
            musicTypeName.text = "New year Songs"
        }else if index == 2{
            musicTypeName.text = "Treading Playlist"
        }else{
            musicTypeName.text = "latest Playlist"
        }
        
        cell.img.image = UIImage(named: imag)
        cell.musicName.text = "Various artist"
        cell.singername.text = "Kabir singh"
        return cell
    
}
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
        {
           return CGSize(width: 160, height: 170)
        }
}
