//
//  FilmsViewController.swift
//  MVC
//
//  Created by munira almallki on 14/03/1443 AH.
//

import UIKit
import Alamofire
class FilmsViewController: UIViewController {

    var Film = [FilmModel]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getFilm()
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    func getFilm() {
        AF.request("https://swapi.dev/api/films/?format=json").responseDecodable(of: FilmResults.self) { response in
            if let Film = response.value
            {
                
                DispatchQueue.main.async {
                    self.Film = Film.results
                    self.tableView.reloadData()
                    
                }
            }
            
        }
    }
    
}

extension FilmsViewController : UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Film.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellFilm", for: indexPath)
        cell.textLabel?.text = Film[indexPath.row].title
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = storyboard?.instantiateViewController(withIdentifier: "detailsFilm") as! detailsFilm
       detailVC.film = Film[indexPath.row]

      self.navigationController?.pushViewController(detailVC, animated: true)

   }
    
}




