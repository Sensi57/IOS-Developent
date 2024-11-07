import UIKit

struct Book {
    let title: String
    let author: String
    let genre: String
    let cover: UIImage
    let description: String?
}

class ViewController: UIViewController {
    // Updated favoriteBooks array with new book details
    let favoriteBooks: [Book] = [
        Book(title: "One Piece", author: "Эйитиро Ода", genre: "Комикс", cover: UIImage(named: "onepice")!, description: "sddsdsdssddsd"),
        Book(title: "Маленький принц", author: "Антуан де Сент-Экзюпери", genre: "Сказки мира", cover: UIImage(named: "littleprince")!, description: "sdsaddas"),
        Book(title: "Тайна леди Одли", author: "Элизабет Брэддон", genre: "Роман", cover: UIImage(named: "ledyOdly")!, description: "Dsdsds"),
        Book(title: "Спеши любить", author: "Николас Спаркс", genre: "Проза", cover: UIImage(named: "titanic")!, description: "dsdsdsds"),
        Book(title: "Грозовой перевал", author: "Мили Джейн Бронте", genre: "Роман", cover: UIImage(named: "gvp")!, description: "dsadasd"),
        Book(title: "Великий Гетсби", author: "Ф. Скотт Фиджеральд", genre: "Romance", cover: UIImage(named: "thegreatgatsby")!, description: "dsdsdsds"),
        Book(title: "Сцена любви", author: "Эрих Мария Ремарк", genre: "Роман", cover: UIImage(named: "remark")!, description: "dsadsadasasd"),
        Book(title: "Портрет Дориана Грея", author: "Оскар Уаилд", genre: "Хоррор", cover: UIImage(named: "doriangray")!, description: "dsdsdsd"),
        Book(title: "Наруто", author: "Рисовчик", genre: "Приключение", cover: UIImage(named: "narutoS")!, description:
            "dsaasddsaads"),
        Book(title: "Финансист", author: "Теодор Драйзер", genre: "Роман", cover: UIImage(named: "finansist")!, description: "dsdsdsd"),
    ]
    
    @IBOutlet private weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favoriteBooks.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! Movies
        let book = favoriteBooks[indexPath.row]
        cell.configure(with: book)
        cell.delegate = self
        return cell
    }
}

extension ViewController: MangasCellDelegate {
    func didTapButton(with book: Book) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let detailVC = storyboard.instantiateViewController(withIdentifier: "BookDetailViewController") as? BookDetailViewController {
            detailVC.book = book
    
            if navigationController?.topViewController != detailVC {
                navigationController?.pushViewController(detailVC, animated: true)
            }
        }
    }
}
