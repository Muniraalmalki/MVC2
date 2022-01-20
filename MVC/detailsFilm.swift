//
//  detailsFilm.swift
//  MVC
//
//  Created by munira almallki on 14/03/1443 AH.
//

import UIKit

class detailsFilm: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var openCrawlLabel: UILabel!
    @IBOutlet weak var directorLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    
    
    var film : FilmModel?
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = film?.title
        directorLabel.text = film?.director
        releaseDateLabel.text = film?.release_date
        openCrawlLabel.text  = film?.opening_crawl
    }

}
