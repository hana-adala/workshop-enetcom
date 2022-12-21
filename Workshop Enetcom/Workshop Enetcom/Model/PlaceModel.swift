//
//  PlaceModel.swift
//  Workshop Enetcom
//
//  Created by ODC on 20/12/2022.
//

import Foundation
class PlaceModel{
    
    var title : String?
    var image : String?
    var distance : String?
    var categorie : String?
    
    init(title: String? = nil, image: String? = nil, distance: String? = nil, categorie: String? = nil) {
        self.title = title
        self.image = image
        self.distance = distance
        self.categorie = categorie
    }
}
