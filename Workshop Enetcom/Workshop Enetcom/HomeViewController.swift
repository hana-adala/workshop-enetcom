//
//  HomeViewController.swift
//  Workshop Enetcom
//
//  Created by ODC on 20/12/2022.
//

import UIKit


class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.placesList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlaceTableViewCell" , for: indexPath) as! PlaceTableViewCell
        cell.placeTitle.text = self.placesList[ indexPath.row].title
        //cell.placeImage.image = UIImage(named: self.placesList[ indexPath.row].image)
        cell.placeCategory.text = self.placesList[ indexPath.row].categorie
        cell.placeDistance.text = self.placesList[ indexPath.row].distance
        
        return cell
        
    }
    

    
    @IBOutlet weak var placeTableView: UITableView!
    
    @IBOutlet weak var placeTitleLabel: UILabel!
    
    var placesList : [ PlaceModel] = [ PlaceModel(title: "Bizerte",distance: "400", categorie: "tourisme"), PlaceModel(title: "Tunis",distance: "300", categorie: "tourisme"),PlaceModel(title: "Touzeur",distance: "200", categorie: "tourisme"),PlaceModel(title: "Sousse",distance: "150", categorie: "tourisme")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.placeTitleLabel.text = "Places (\(self.placesList.count))"
        
        self.placeTableView.delegate = self
        self.placeTableView.dataSource = self
        
        self.placeTableView.register(UINib(nibName: "PlaceTableViewCell", bundle: nil), forCellReuseIdentifier: "PlaceTableViewCell")
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
