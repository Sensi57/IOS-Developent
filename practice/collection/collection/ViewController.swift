//
//  SceneDelegate.swift
//  collection
//
//  Created by Falko on 24.10.2024.
//

import UIKit

struct Book {
    let title: String
    let author: String
    let genre: String
    let cover: UIImage
}

class ViewController: UIViewController {
    let favoriteBooks: [Book] = [
        
        Book(title: "One Piece", author: "Эйитиро Ода", genre: "Комикс", cover: UIImage(named: "onepice")!),
        Book(title: "Маленький принц", author: "Антуан де Сент-Экзюпери", genre: "Сказки мира", cover: UIImage(named: "littleprince")!),
        Book(title: "Тайна леди Одли", author: "Элизабет Брэддон", genre: "Роман", cover: UIImage(named: "ledyOdly")!),
        Book(title: "Спеши любить", author: "Николас Спаркс", genre: "Проза", cover: UIImage(named: "titanic")!),
        Book(title: "Грозовой перевал", author: "Мили Джейн Бронте", genre: "Роман", cover: UIImage(named: "gvp")!),
        Book(title: "Великий Гетсби", author: "Ф. Скотт Фиджеральд", genre: "Romance", cover: UIImage(named: "thegreatgatsby")!),
        Book(title: "Сцена любви", author: "Эрих Мария Ремарк", genre: "Роман", cover: UIImage(named: "remark")!),
        Book(title: "Потреть Дориана Грея", author: "Оскар Уаилд", genre: "Хоррор", cover: UIImage(named: "doriangray")!),
        Book(title: "Наруто", author: "Рисовчик", genre: "Приключение", cover: UIImage(named: "narutoS")!),
        Book(title: "Финансист", author: "Теадорь Дайзер", genre: "Роман", cover: UIImage(named: "finansist")!),
    ]

    @IBOutlet private weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped on row \(indexPath.row)!")
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favoriteBooks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! Movies
        let book = favoriteBooks[indexPath.row]
        cell.configure(with: book)
        return cell
    }
}
