//
//  ViewController.swift
//  Assignment4
//
//  Created by Francis Jann Fuentebella on 2020-07-19.
//  Copyright © 2020 Francis Jann Fuentebella. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let movie = ["Aviator", "Interstellar", "Ad Astra", "Gravity"]//define movie name
    let director = ["Martin Scorsese", "Christopher Nolan", "James Grey", "Alfonso Cuaron"]//define directors
    let duration = ["170", "169", "124", "91"]//define duration in minutes
    let realeaseYear = ["2004", "2014", "2019", "2013"]//define release year
    let images = ["aviator", "interstellar", "adAstra", "gravity"]//image title
    var myIndex = 0 ;//will get the array index to be pass when click
    
    //this function will return the number of rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movie.count //return number of rows
    }
    //this function will display the cols
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //make the col dynamic and calling the cell identifier
        let tempCell = tableView.dequeueReusableCell(withIdentifier: "cell")
        tempCell?.textLabel?.text = movie[indexPath.row] // display movie in the title
        tempCell?.detailTextLabel?.text = realeaseYear[indexPath.row]//display the realese year in the detail col
        tempCell?.imageView?.image = UIImage(named:(images[indexPath.row] + ".jpg")) // displat the image by call the image using the titlename

        return tempCell!
    }
    //perform the segue to the NextController by getting the selected row
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        myIndex = indexPath.row //store the current index of array
        performSegue(withIdentifier: "segue", sender: self)//redirect SegueToClient
    }
    //pass the data to the NextController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vcPD = segue.destination as! NextController
            vcPD.movie = movie[myIndex]//movie name
            vcPD.director = director[myIndex]//director in string
            vcPD.year = realeaseYear[myIndex]//release year in string
            vcPD.duration = duration[myIndex]//duration in string
            vcPD.imageTitle = images[myIndex]//images title in string
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

