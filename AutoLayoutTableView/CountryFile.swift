//
//  CountryFile.swift
//  AutoLayoutTableView
//
//  Created by Zeynep Özdemir Açıkgöz on 25.11.2022.
//

import Foundation


struct Country{
    var names: String
    var images: String
    var details: String
    
    init(name: String, image: String, details: String) {
        self.names = name
        self.images = image
        self.details = details
    }

    
}
