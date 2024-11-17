//
//  BookDetailViewController.swift
//  collection
//
//  Created by Knight Stefan on 2024/11/08.
//

import UIKit

class BookDetailViewController: UIViewController {
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var coverLabel: UIImageView!
    var book: Book?

    override func viewDidLoad() {
        super.viewDidLoad()
        coverLabel.image = book?.cover
        descriptionLabel.text = book?.description
    }
}

