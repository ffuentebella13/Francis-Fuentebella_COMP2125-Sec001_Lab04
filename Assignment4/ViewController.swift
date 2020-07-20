//
//  ViewController.swift
//  Assignment4
//
//  Created by Francis Jann Fuentebella on 2020-07-19.
//  Copyright © 2020 Francis Jann Fuentebella. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let movie = ["Aviator", "Intersellar", "Ad Astra", "Gravity"]
    let director = ["Martin Scorsese", "Christopher Nolan", "James Grey", "Alfonso Cuaron"]
    let duration = ["170", "169", "124", "91"]
    let realeaseYear = ["2004", "2014", "2019", "2013"]
    let images = ["aviator", "interstellar", "adAstra", "gravity"]
    var myIndex = 0 ;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movie.count
    }
    
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let tempCell = tableView.dequeueReusableCell(withIdentifier: "cell")
        tempCell?.textLabel?.text = movie[indexPath.row]
        tempCell?.detailTextLabel?.text = realeaseYear[indexPath.row]
        tempCell?.imageView?.image = UIImage(named:(images[indexPath.row] + ".jpg"))

        return tempCell!
    }
    

}

