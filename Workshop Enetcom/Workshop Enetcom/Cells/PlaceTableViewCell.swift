//
//  PlaceTableViewCell.swift
//  Workshop Enetcom
//
//  Created by ODC on 20/12/2022.
//

import UIKit

class PlaceTableViewCell: UITableViewCell {

    @IBOutlet weak var placeDistance: UILabel!
    @IBOutlet weak var placeCategory: UILabel!
    @IBOutlet weak var placeTitle: UILabel!
    @IBOutlet weak var placeImage: UIImageView!
    
    var myVar : String?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        /*if let myNewVar = myVar
        {
            
            print(myNewVar)
            
            
        }else
        {
            
            
        }*/
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
