//
//   MovieViewController.swift
//  collection
//
//  Created by Knight Stefan on 2024/11/15.
//
import UIKit

class MovieViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet private weak var tableView: UITableView!
    
    // Массив фильмов
    let favoriteMovies: [Movie] = [
           Movie(title: "The Shawshank Redemption", year: 1994, genre: "Drama", description: "A man wrongly imprisoned for murder forms a unique bond with a fellow inmate.", cover: UIImage(named: "titanic")!),
           Movie(title: "The Godfather", year: 1972, genre: "Crime, Drama", description: "The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.", cover: UIImage(named: "titanic")!),
           Movie(title: "The Dark Knight", year: 2008, genre: "Action, Crime, Drama", description: "Batman must face the Joker, a criminal mastermind who wants to plunge Gotham into anarchy.", cover: UIImage(named: "titanic")!),
           Movie(title: "Pulp Fiction", year: 1994, genre: "Crime, Drama", description: "The lives of two mob hitmen, a boxer, a gangster's wife, and a pair of diner bandits intertwine in four tales of violence and redemption.", cover: UIImage(named: "titanic")!),
           Movie(title: "The Lord of the Rings: The Return of the King", year: 2003, genre: "Action, Adventure, Drama", description: "The final battle for Middle Earth begins as Frodo and Sam near Mount Doom.", cover: UIImage(named: "titanic")!)
       ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Movies"
        view.backgroundColor = .systemBackground
        
        // Настройка tableView
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "MovieCell")
        
        // Убираем лишние пустые строки в конце таблицы
        tableView.tableFooterView = UIView()
    }
        
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favoriteMovies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
        
        let movie = favoriteMovies[indexPath.row]
        
        // Настроим текст в ячейке: Название фильма и год
        cell.textLabel?.text = "\(movie.title) (\(movie.year))"
        cell.detailTextLabel?.text = movie.description
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedMovie = favoriteMovies[indexPath.row]
        
        // Показываем детальное описание фильма
        print("Вы выбрали фильм: \(selectedMovie.title)")
        print("Описание: \(selectedMovie.description)")
    }
}

