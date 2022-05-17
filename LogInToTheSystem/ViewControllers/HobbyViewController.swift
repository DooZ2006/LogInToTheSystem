//
//  HobbyViewController.swift
//  LogInToTheSystem
//
//  Created by Глеб on 16.05.2022.
//

import UIKit

class HobbyViewController: UIViewController {
    
    @IBOutlet var favoriteActivityLabel: UILabel!
    @IBOutlet var favoriteSportLabel: UILabel!
    @IBOutlet var favoriteDishLabel: UILabel!
    @IBOutlet var favoriteBookLabel: UILabel!
    @IBOutlet var favoriteFilmLabel: UILabel!
    @IBOutlet var favoriteSeriesLabel: UILabel!
    
    var hobby: LoginInfo!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        favoriteActivityLabel.text = hobby.person.hobby.favoriteActivity
        favoriteSportLabel.text = hobby.person.hobby.favoriteSport
        favoriteDishLabel.text = hobby.person.hobby.favoriteDish
        favoriteBookLabel.text = hobby.person.hobby.favoriteBook
        favoriteFilmLabel.text = hobby.person.hobby.favoriteFilm
        favoriteSeriesLabel.text = hobby.person.hobby.favoriteSeries

    }

}
