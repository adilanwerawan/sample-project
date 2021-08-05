//
//  ProductListRow.swift
//  Ezysale-iOS
//
//  Created by MacBook on 03/08/2021.
//

import SwiftUI
import Kingfisher

struct ProductListRow: View {
    @State var product:Product
    var body: some View {
        VStack{
            KFImage(URL(string: product.productImage)!)
                .resizable()
                .frame(height:200)
                .padding([.top, .bottom], 10)
            Text(product.productName)
            Text(product.price)
            HStack{
                Image("locationIcon")
                Text(product.locationName)
                Text(product.sellerName)
                Image( systemName: (product.isFavorite == false) ? "heart" : "heart.fill")
                    .foregroundColor(Color.pink)
                    .font(.system(size: 30.0))
                    .onTapGesture {
                        product.isFavorite.toggle()
                    }
            }
        }
    }
}

/*
struct ProductListRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductListRow()
    }
}*/
