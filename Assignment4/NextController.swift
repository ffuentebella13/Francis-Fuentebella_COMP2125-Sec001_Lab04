//
//  NextController.swift
//  Assignment4
//
//  Created by Francis Jann Fuentebella on 2020-07-19.
//  Copyright © 2020 Francis Jann Fuentebella. All rights reserved.
//

import UIKit

class NextController: UIViewController {
    var director: String = "" //initialize director string
    var movie: String = "" //initialize movie title in string
    var duration: String = "" //initialize duration in string
    var imageTitle: String = "" //initialize image title in string
    var year: String = "" //initialize release year in string
    
    @IBOutlet weak var movieLabel: UILabel!//label for movie title
    @IBOutlet weak var durationLabel: UILabel!//label for duration
    @IBOutlet weak var directorLabel: UILabel!//label for director
    @IBOutlet weak var poster: UIImageView!//image view for poster
    @IBOutlet weak var yearLabel: UILabel!//label for release year
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        movieLabel.text = movie//set moviee label to the movie string
        durationLabel.text = duration + " minutes"//set duration label to the duration string
        directorLabel.text = "Directed by " + director// set director label to directoro string
        poster.image = UIImage(named: imageTitle + ".jpg")//set image filename to search in the folder
        yearLabel.text = "Realease " + year//set year label to year string
        
    }

}
