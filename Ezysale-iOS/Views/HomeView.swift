//
//  HomeView.swift
//  Ezysale-iOS
//
//  Created by MacBook on 03/08/2021.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        
        List(Product.products){
            product in
            ProductListRow(product: product)
        }
         .navigationBarTitle(Text("Home"), displayMode: .inline)
        .onAppear(){
             SpaceNews.getArticles()
        }
        /*
        ScrollView() {
            ForEach(Product.products) { item in
                ProductListRow(product: item)
            }
        }
        .navigationBarTitle(Text("Home"), displayMode: .inline)
        */
        
        /*
        ScrollView() {
            ForEach(1...10, id: \.self) { item in
                ProductListRow()
            }
        }*/
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
