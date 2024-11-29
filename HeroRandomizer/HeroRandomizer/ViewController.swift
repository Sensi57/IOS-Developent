//
//  ViewController.swift
//  HeroRandomizer
//
//  Created by Алмагуль Абдыгали on 28.11.2024.
//

import UIKit
import Kingfisher
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet private weak var heroImage: UIImageView!
    @IBOutlet private weak var heroName: UILabel!
    @IBOutlet private weak var heroGender: UILabel!
    @IBOutlet private weak var heroPower: UILabel!
    @IBOutlet private weak var heroPlaceOfBirth: UILabel!
    @IBOutlet private weak var heroFullName: UILabel!
    @IBOutlet private weak var heroIntelligence: UILabel!
    @IBOutlet private weak var heroAliases: UILabel!
    @IBOutlet private weak var heroCombat: UILabel!
    @IBOutlet private weak var heroWeight: UILabel!
    
    private let api = "https://akabab.github.io/superhero-api/api/all.json"
    private var heroes: [Hero] = []
    
    @IBAction private func didTapHero(_ sender: Any) {
        if heroes.isEmpty {
            fetchHero()
        } else {
            let randomHero = heroes.randomElement()!
            configure(hero: randomHero)
        }
    }
    
    private func fetchHero() {
        AF.request(api).responseDecodable(of: [Hero].self) { response in
            switch response.result {
            case .success(let heroes):
                self.heroes = heroes
            case .failure(let error):
                print(error)
            }
        }
    }
    
    private func configure(hero: Hero) {
        let power = hero.powerstats.power
        let intelligence = hero.powerstats.intelligence
        let combat = hero.powerstats.combat
        heroName.text = hero.name
        heroFullName.text = hero.biography.fullName
        heroImage.kf.setImage(with: URL(string: hero.images.sm))
        heroPower.text = "\(power)"
        heroGender.text = hero.appearance.gender
        heroPlaceOfBirth.text = hero.biography.placeOfBirth
        heroFullName.text = hero.biography.fullName
        heroIntelligence.text = "\(intelligence)"
        heroAliases.text = hero.biography.aliases[0]
        heroCombat.text = "\(combat)"
        heroWeight.text = hero.appearance.weight[1]
        
    }

}

struct Hero: Decodable{
    let name: String
    let images: HeroImage
    let appearance: HeroAppearance
    let powerstats: HeroPowerstats
    let biography: Biography
    
    struct HeroImage: Decodable{
        let sm: String
    }
    struct HeroAppearance: Decodable{
        let gender: String
        let weight: [String]
    }
    struct HeroPowerstats: Decodable{
        let power: Int
        let intelligence: Int
        let combat: Int
        
    }
    struct Biography: Decodable{
        let placeOfBirth: String
        let fullName: String
        let aliases: [String]
    }
    
}
