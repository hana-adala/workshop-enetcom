//
//  PlaceDetailViewController.swift
//  Workshop Enetcom
//
//  Created by ODC on 21/12/2022.
//

import UIKit

class PlaceDetailViewController: UIViewController {

    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var locationLabel: UILabel!
    
    @IBOutlet weak var imagePlace: UIImageView!
    @IBOutlet weak var textDescription: UITextView!
    var place : PlaceModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.titleLabel.text = place?.title
        self.locationLabel.text = place?.categorie
        self.textDescription.text = place?.distance
        self.imagePlace.image =  UIImage(named: place?.image ?? "")

        
        
        
        
        
        
        
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
