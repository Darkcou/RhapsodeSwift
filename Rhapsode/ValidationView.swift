//
//  ValidationView.swift
//  Rhapsode
//
//  Created by Benjamin Gronier on 03/04/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct ValidationView: View {
    @State var code: String = " "
    @State var passWordView:Bool = false
    var body: some View {
        ZStack{
            Color(.yellow)
            VStack{
                Image("Logo").resizable().frame(width:250, height: 250).cornerRadius(100)
                Spacer().frame(height:100)
                Text("Un code de validation vient de vous etes envoyé, pouvez-vous le saisir:")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                Spacer().frame(height:5)
                TextField("saisir votre le code envoyé", text: $code).border(Color.black, width: 2).background(Color.white)
                Spacer().frame(height:100)
                NavigationLink(destination: PassWordView(), isActive: $passWordView ){EmptyView()}
                Button(action: {self.passWordView = true}, label: {Text("Suivant")})
                Spacer().frame(height:200)
                
            }
            
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ValidationView_Previews: PreviewProvider {
    static var previews: some View {
        ValidationView()
    }
}
