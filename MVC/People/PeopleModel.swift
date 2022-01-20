//
//  peopleStatus.swift
//  MVC
//
//  Created by munira almallki on 12/03/1443 AH.
//

import Foundation
import Alamofire



struct Results:Codable{
    let results: [PeopleModel]
    
  
}

struct PeopleModel : Codable {
    let name : String
    let birth_year: String
    let gender: String
    let mass: String
    
}


