//
//  CellViewController.swift
//  MVC
//
//  Created by munira almallki on 13/03/1443 AH.
//

import UIKit

class detailsPeople: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var birthLabel: UILabel!
    @IBOutlet weak var massLabel: UILabel!
    
    @IBOutlet weak var speciesLabel: UILabel!
    var people1:PeopleModel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        print(people1?.name)

        nameLabel.text = people1?.name
        genderLabel.text = people1?.gender
        birthLabel.text = people1?.birth_year
        massLabel.text = people1?.mass
        
    }
    


}
