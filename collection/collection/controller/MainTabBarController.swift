//
//  MainTabBarController.swift
//  collection
//
//  Created by Knight Stefan on 2024/11/15.
//

import UIKit

class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bookVC = UINavigationController(rootViewController: ViewController())
        bookVC.tabBarItem = UITabBarItem(title: "Books", image: UIImage(systemName: "book.fill"), tag: 0)
        
        let musicVC = UINavigationController(rootViewController: MusicViewController())
        musicVC.tabBarItem = UITabBarItem(title: "Music", image: UIImage(systemName: "music.note"), tag: 1)
        
        let movieVC = UINavigationController(rootViewController: MovieViewController())
        movieVC.tabBarItem = UITabBarItem(title: "Movies", image: UIImage(systemName: "film.fill"), tag: 2)
        
        viewControllers = [bookVC, musicVC, movieVC]
    }
}
