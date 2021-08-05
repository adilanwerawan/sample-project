//
//  SpaceNewsViewModel.swift
//  Ezysale-iOS
//
//  Created by MacBook on 05/08/2021.
//

import Foundation
import Alamofire

extension SpaceNews{
    static func getArticles(){
        Session.default.request("https://api.spaceflightnewsapi.net/v3/articles?_limit=10").responseDecodable(of: [SpaceNews].self) { response in
            switch response.result {
            case .success(let news):
                print(news.map { "\($0.newsTitle) \($0.imageURL)" })
            case .failure(let error):
                print(error)
            }
        }
    }
}
