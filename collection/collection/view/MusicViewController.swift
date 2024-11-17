//
//  MusicViewController.swift
//  collection
//
//  Created by Knight Stefan on 2024/11/15.
//

import UIKit

class MusicViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Music"
        view.backgroundColor = .systemBackground
        
        // Здесь можно будет добавить список альбомов или песен
        let label = UILabel()
        label.text = "Coming Soon: Music Section"
        label.textAlignment = .center
        label.frame = CGRect(x: 0, y: 0, width: 300, height: 50)
        label.center = view.center
        view.addSubview(label)
    }
}
