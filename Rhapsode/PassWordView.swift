//
//  PassWordView.swift
//  Rhapsode
//
//  Created by Benjamin Gronier on 03/04/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct PassWordView: View {
    @State var passWord: String = " "
    @State var confirmePassWord: String = " "
    @State var passWordView:Bool = false
    var body: some View {
        ZStack{
            Color(.yellow)
            VStack{
                Image("Logo").resizable().frame(width:250, height: 250).cornerRadius(100)
                Spacer().frame(height:100)
                VStack{
                    Text("Mot de passe:")
                    Text("Une Majuscule, une minuscule, un chiffre et un caractère spéciau").font(.footnote).foregroundColor(Color.gray)
                    TextField("saisir votre mot de passe", text: $passWord).border(Color.black, width: 2).background(Color.white)
                    HStack{
                        HStack{
                            Rectangle().fill(Color.white).frame(width:40,height:20).border(Color.black, width: 2); Rectangle().fill(Color.white).frame(width:40,height:20).border(Color.black, width: 2);
                            Rectangle().fill(Color.white).frame(width:40,height:20).border(Color.black, width: 2);
                            
                        }
                        Spacer().frame(width:250)
                    }
                    Spacer().frame(height:10)
                    Text("Confirmation de mot de pass:")
                    TextField("confirmer votre mot de passe", text: $confirmePassWord).border(Color.black, width: 2).background(Color.white)
                    Spacer().frame(height:100)
                    NavigationLink(destination: ThankView(), isActive: $passWordView ){EmptyView()}
                    Button(action: {self.passWordView = true}, label: {Text("Suivant")})
                }
                Spacer().frame(height:100)
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct PassWordView_Previews: PreviewProvider {
    static var previews: some View {
        PassWordView()
    }
}
