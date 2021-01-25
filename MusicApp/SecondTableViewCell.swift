//
//  SecondTableViewCell.swift
//  MusicApp
//
//  Created by Kasun on 11/6/1399 AP.
//

import UIKit

class SecondTableViewCell: UITableViewCell {

    @IBOutlet weak var musicTyName: UILabel!
    @IBOutlet weak var seeMore: UIButton!
    @IBOutlet weak var musicTableView: UITableView!
    
    var musicArr = ["1","2","3","4","5","6","7","8"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        musicTableView.delegate = self
        musicTableView.dataSource = self
        musicTableView.register(UINib(nibName: "MusicTableViewCell", bundle: nil), forCellReuseIdentifier: "MusicTableViewCell")
        seeMore.layer.cornerRadius = seeMore.frame.height * 0.50
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
extension SecondTableViewCell: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let index = indexPath.row
       
        let identifier = "MusicTableViewCell"
            let cell: MusicTableViewCell! = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)  as? MusicTableViewCell
        let imag = musicArr[indexPath.row]
        cell.selectionStyle = .none
        musicTyName.text = "Popular Hindi songs"
        cell.img.image = UIImage(named: imag)
        cell.singlerName.text = "Arijit singh"
        cell.name.text = "Kabir singh"
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}
