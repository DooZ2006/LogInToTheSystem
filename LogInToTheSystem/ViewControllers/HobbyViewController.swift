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
    
    var favoriteActivity = ""
    var favoriteSport = ""
    var favoriteDish = ""
    var favoriteBook = ""
    var favoriteFilm = ""
    var favoriteSeries = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        favoriteActivityLabel.text = favoriteActivity
        favoriteSportLabel.text = favoriteSport
        favoriteDishLabel.text = favoriteDish
        favoriteBookLabel.text = favoriteBook
        favoriteFilmLabel.text = favoriteFilm
        favoriteSeriesLabel.text = favoriteSeries

    }

}
