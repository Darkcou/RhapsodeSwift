//
//  CreateProfilView.swift
//  Rhapsode
//
//  Created by Benjamin Gronier on 31/03/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct CreateProfilView: View {
    @State var name: String = " "
    @State var pseudo: String = " "
    @State var date: String = " "
    @State var birthDate = Date()
    @State var email: String = " "
    @State var answerAsk: [String] = []
    @State var validationView:Bool = false
    var body: some View {
        ZStack{
            Color(.yellow)
            VStack{
                Image("Logo").resizable().frame(width:250, height: 250).cornerRadius(100)
                Spacer().frame(height: 40)
                VStack{
                    
                    VStack{
                        Text("Nom, Prénom:")
                        TextField("saisir votre nom", text: $name).border(Color.black, width: 2).background(Color.white)
                        Text("Pseudo:")
                        TextField("saisir votre Pseudo", text: $pseudo).border(Color.black, width: 2).background(Color.white)
                        Text("Adresse email/Téléphone:")
                        TextField("saisir votre email", text: $email).border(Color.black, width: 2).background(Color.white)
                        
                        Text("Date de naissance:")
                        DatePicker(selection: $birthDate, in: ...Date(), displayedComponents: .date) {
                            Text("Né(e) le :")
                                .padding(.leading,5.0)
                        }.border(Color.black, width: 2).background(Color.white)
                        Spacer().frame(height: 40)
                    }
                    NavigationLink(destination: ValidationView(), isActive: $validationView ){EmptyView()}
                    Button(action: {self.validationView = true}, label: {Text("Suivant")})
                    
                }
            }
        }.edgesIgnoringSafeArea(.all)
        
    }
}

struct CreateProfilView_Previews: PreviewProvider {
    static var previews: some View {
        CreateProfilView()
    }
}
