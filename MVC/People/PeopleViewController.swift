//
//  PeopleViewController.swift
//  MVC
//
//  Created by munira almallki on 12/03/1443 AH.
//

import UIKit
import Alamofire
class PeopleViewController: UIViewController{
    
    var people = [PeopleModel]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getPeople()
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    func getPeople() {
        AF.request("https://swapi.dev/api/people/?format=json").responseDecodable(of: Results.self) { response in
            if let people = response.value
            {
                
                DispatchQueue.main.async {
                    self.people = people.results
                    self.tableView.reloadData()
                    
                }
            }
            
        }
    }
    
}

extension PeopleViewController : UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellPeople", for: indexPath)
        cell.textLabel?.text = people[indexPath.row].name
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = storyboard?.instantiateViewController(withIdentifier: "detailsPeople") as! detailsPeople
        detailVC.people1 = people[indexPath.row]
        
        self.navigationController?.pushViewController(detailVC, animated: true)
        
    }
    
}




