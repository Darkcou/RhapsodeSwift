//
//  LoginView.swift
//  Rhapsode
//
//  Created by Benjamin Gronier on 31/03/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @State var username: String = ""
    @State var passWord: String = ""
    @State var connexionView:Bool = false
    @State var passWordForgetView:Bool = false
    @State var createProfilView:Bool = false
    @State var createProfilViewGoogle:Bool = false
    
    var body: some View {
        NavigationView{
            ZStack{
                Color(.yellow)
                VStack{
                    Image("Logo").resizable().frame(width:250, height: 250).cornerRadius(100)
                    Text("Transmettons les récits")
                    VStack{
                        
                        Spacer().frame(height: 40)
                        VStack{
                            Text("Identifiant, adresse email ou téléphone:")
                            TextField("saisir votre Pseudo", text: $username).border(Color.black, width: 2).background(Color.white)
                            Text("Mot de passe:")
                            TextField("saisir votre mot de passe", text: $passWord).border(Color.black, width: 2).background(Color.white)
                            Spacer().frame(height: 20)
                            ZStack{
                                NavigationLink(destination: AccueilView(), isActive: $connexionView ){EmptyView()}; Rectangle().fill(Color.white).frame(width:100, height: 20)
                                Button(action: {self.connexionView = true}, label: {
                                    Text("Connexion").foregroundColor(Color.black)
                                })
                            }.border(Color.gray, width: 1)
                            NavigationLink(destination: PassWordForgetView(), isActive: $passWordForgetView ){EmptyView()}
                            Button(action: {self.passWordForgetView = true}, label: {Text("Mot de passe oublié")})
                            
                        }
                        Spacer().frame(height: 40)
                        NavigationLink(destination: CreateProfilView(), isActive: $createProfilView ){EmptyView()}
                        Button(action: {self.createProfilView = true}, label: {Text("Pas Inscrite ? Rejoins-nous !")})
                        Spacer().frame(height: 40)
                        NavigationLink(destination: CreateProfilView(), isActive: $createProfilViewGoogle ){EmptyView()}
                        Button(action: {self.createProfilViewGoogle = true}, label: {Text("Se connecter avec Google")})
                    }
                }
            }.edgesIgnoringSafeArea(.all)
        }
    }
}



struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
