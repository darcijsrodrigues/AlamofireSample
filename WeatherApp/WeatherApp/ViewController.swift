//
//  ViewController.swift
//  WeatherApp
//
//  Created by Fourtime on 23/04/2018.
//  Copyright © 2018 Fourtime. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var weatherImage: UIImageView!
    @IBOutlet weak var weatherLabel: UILabel!
    
    var weather = DataModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        weather.downloadData {
            self.updateUI()
        }        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateUI(){
        dateLabel.text = weather.date
        tempLabel.text = "\(weather.temp)"
        locationLabel.text = weather.location
        weatherLabel.text = weather.weather
        weatherImage.image = UIImage(named: "2")
//        weatherImage.image = UIImage(named: weather.weather)"2"
        
    }

}

