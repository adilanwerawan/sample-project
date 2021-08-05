//
//  ContentView.swift
//  Ezysale-iOS
//
//  Created by MacBook on 31/07/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var name:String = "name"
    
    var body: some View {
        VStack(alignment: .center, spacing: 5.0){
            
            TextField("name", text: $name)
                .frame(alignment: .center)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(name: "name")
    }
}
