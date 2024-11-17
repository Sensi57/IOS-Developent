//
//  BookViewContoller.swift
//  collection
//
//  Created by Knight Stefan on 2024/11/08.
//

import UIKit
protocol BookCellDelegate: AnyObject {
    func didTapButton(with book: Book)
}

class Movies: UITableViewCell {
    @IBOutlet weak var coverImage: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var genre: UILabel!
    @IBOutlet weak var showDescriptionButton: UIButton!
    
    weak var delegate: BookCellDelegate?
    private var book: Book?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configure(with book: Book) {
        self.book = book  
        coverImage.image = book.cover
        title.text = book.title
        descriptionLabel.text = book.author
        genre.text = book.genre
    }
    @IBAction func showDescriptionTapped(_ sender: UIButton) {
        guard let book = book else { return }
        delegate?.didTapButton(with: book)
    }
}
