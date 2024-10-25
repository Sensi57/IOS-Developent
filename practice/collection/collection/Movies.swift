//
//  Movies.swift
//  collection
//
//  Created by Knight Stefan on 2024/10/25.
//

import UIKit

class Movies: UITableViewCell {
    @IBOutlet weak var coverImage: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var genre: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
func configure (with book: Book) {
    coverImage.image = book.cover
    title.text = book.title
    descriptionLabel.text = book.author
    genre.text = book.genre

    }
}
