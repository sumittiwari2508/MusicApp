//
//  TabbarViewController.swift
//  MusicApp
//
//  Created by Kasun on 11/6/1399 AP.
//

import UIKit

class TabbarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setTabBarItems()
    }
    
    func setTabBarItems(){

          let myTabBarItem1 = (self.tabBar.items?[0])! as UITabBarItem
        myTabBarItem1.image = UIImage(systemName: "music.note.house")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
      
        myTabBarItem1.selectedImage = UIImage(systemName: "music.note.house.fill")?.withTintColor(.systemBlue, renderingMode: .alwaysOriginal)
          myTabBarItem1.title = "HOME"
          myTabBarItem1.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)

          let myTabBarItem2 = (self.tabBar.items?[1])! as UITabBarItem
        myTabBarItem2.image = UIImage(systemName: "magnifyingglass")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        myTabBarItem2.selectedImage = UIImage(systemName: "magnifyingglass")?.withTintColor(.systemBlue, renderingMode: .alwaysOriginal)
          myTabBarItem2.title = "FIND"
          myTabBarItem2.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)


          let myTabBarItem3 = (self.tabBar.items?[2])! as UITabBarItem
        myTabBarItem3.image = UIImage(systemName: "music.note.list")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        myTabBarItem3.selectedImage = UIImage(systemName: "music.note.list")?.withTintColor(.systemBlue, renderingMode: .alwaysOriginal)
          myTabBarItem3.title = "MY MUSIC"
          myTabBarItem3.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)

          let myTabBarItem4 = (self.tabBar.items?[3])! as UITabBarItem
        myTabBarItem4.image = UIImage(systemName: "gearshape")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        myTabBarItem4.selectedImage = UIImage(systemName: "gearshape.fill")?.withTintColor(.systemBlue, renderingMode: .alwaysOriginal)
          myTabBarItem4.title = "SETTING"
          myTabBarItem4.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)

     }
}
