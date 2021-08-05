//
//  SpaceNews.swift
//  Ezysale-iOS
//
//  Created by MacBook on 05/08/2021.
//

import Foundation
/*
{
    "id": 10238,
    "title": "SpaceX’s historic private astronaut launch debut gets its own Netflix documentary",
    "url": "https://www.teslarati.com/spacex-inspiration4-netflix-documentary/",
    "imageUrl": "https://www.teslarati.com/wp-content/uploads/2021/08/Inspiration4-crew-SpaceX-1-c.jpg",
    "newsSite": "Teslarati",
    "summary": "Netflix has announced plans for a documentary that will dive deep into SpaceX’s historic Inspiration4 private astronaut launch. Headed by billionaire and...",
    "publishedAt": "2021-08-05T09:10:27.000Z",
    "updatedAt": "2021-08-05T09:10:40.786Z",
    "featured": false,
    "launches": [],
    "events": []
  }*/

struct SpaceNews:Codable, Identifiable{
    public var id:Int
    var newsTitle:String
    var detailsURL:String
    var imageURL:String
    var summary:String
    var publishedAT:String
    var updatedAt:String
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case newsTitle = "title"
        case detailsURL = "url"
        case imageURL = "imageUrl"
        case summary = "summary"
        case publishedAT = "publishedAt"
        case updatedAt = "updatedAt"
    }
}
