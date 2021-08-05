//
//  ProductViewModel.swift
//  Ezysale-iOS
//
//  Created by MacBook on 04/08/2021.
//

import Foundation


//View model
extension Product {
    static var products: [Product] {
        [
            Product(productName: "Macbook pro 2017", productImage: "https://unsplash.com/photos/EhTcC9sYXsw/download?force=true", price: "1000 USD", locationName: "Islamabad, Pakistan", sellerName: "Adil Anwer", isFavorite: false),
            Product(productName: "Macbook pro 2018", productImage: "https://cdn.pixabay.com/photo/2014/05/02/21/49/laptop-336373_1280.jpg", price: "1500 USD", locationName: "Rawalpindi, Pakistan", sellerName: "Sumair", isFavorite: false),
            Product(productName: "Macbook pro 2019", productImage: "https://cdn.pixabay.com/photo/2014/05/03/01/03/laptop-336704_1280.jpg", price: "2000 HKD", locationName: "Hong kong", sellerName: "Valerie HA", isFavorite: false)
        ]
    }
}
