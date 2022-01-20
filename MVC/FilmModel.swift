//
//  FilmModel.swift
//  MVC
//
//  Created by munira almallki on 13/03/1443 AH.
//

import Foundation
import SwiftUI

struct FilmResults: Codable{
    var results: [FilmModel]
}
struct FilmModel : Codable{
    
    var title: String
    var release_date: String
    var director: String
    var opening_crawl: String
    
}



