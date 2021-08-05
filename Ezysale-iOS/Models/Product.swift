//
//  Product.swift
//  Ezysale-iOS
//
//  Created by MacBook on 04/08/2021.
//

import Foundation

// class is the refrence type
// struct is the value type
// class can be inherit
// struc could not inherit

struct Product:Codable, Identifiable{
    public var id = UUID()
    var productName:String
    var productImage:String
    var price:String
    var locationName:String
    var sellerName:String
    var isFavorite:Bool
    
    enum CodingKeys: String, CodingKey {
        case productName = "productName"
        case productImage = "productImage"
        case price = "price"
        case locationName = "locationName"
        case sellerName = "sellerName"
        case isFavorite = "isFavortie"
    }
}
