//
//  ThankView.swift
//  Rhapsode
//
//  Created by Benjamin Gronier on 03/04/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct ThankView: View {
    @State var accueilView:Bool = false
    var body: some View {
        ZStack{
            Color(.yellow)
            VStack{
                Image("Logo").resizable().frame(width:250, height: 250).cornerRadius(100)
                Spacer().frame(height:100)
                Text("Merci pour votre incription")
                Spacer().frame(height:30)
                Text("Tu souhaite ajouter une photo ?")
                Spacer().frame(height:100)
                NavigationLink(destination: AccueilView(), isActive: $accueilView ){EmptyView()}
                Button(action: {self.accueilView = true}, label: {Text("Continuer")})
                Spacer().frame(height:100)
            }
            
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ThankView_Previews: PreviewProvider {
    static var previews: some View {
        ThankView()
    }
}
