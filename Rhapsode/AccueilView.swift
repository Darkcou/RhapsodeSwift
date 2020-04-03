//
//  AccueilView.swift
//  Rhapsode
//
//  Created by Benjamin Gronier on 02/04/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import SwiftUI

struct AccueilView: View {
    
    var body: some View {
        ZStack{
            Color(.white)
            VStack{
                VStack{
                    Spacer().frame(height:10)
                    HStack{
                        Text("Page d'acceuil").font(.title)
                            .padding([.top, .leading])
                        Spacer()
                        ZStack{
                            Ellipse().fill(Color.purple).frame(width:65, height: 40);
                            Button(action: {}, label: {
                                VStack{ Text("Accueil").foregroundColor(Color.white)
                                    
                                }
                            })
                            
                        }
                        .padding([.top, .trailing])
                        Spacer().frame(width:3)
                    }
                }.background(Color.yellow).border(Color.black, width: 2)
                HStack{
                    Spacer().frame(width:3)
                    HStack{
                        Text("recherche")
                    }
                    Spacer()
                    HStack{
                        Text("particulier").font(.footnote).foregroundColor(Color.white).padding(.leading, 2.0)
                        
                        Circle().fill(Color.white).frame(width:25, height: 25);
                        Spacer().frame(width:1)
                    }.background(Color.blue).cornerRadius(10)
                    Spacer().frame(width:5)
                }
                
                Spacer()
                HStack{
                    Spacer()
                    ZStack{
                        Circle().fill(Color.yellow).frame(width:100, height: 50);
                        Button(action: {}, label: {
                            VStack{ Text("+").font(.largeTitle).foregroundColor(Color.white)
                                
                            }
                        })
                    }
                    .padding(.bottom)
                }
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct AccueilView_Previews: PreviewProvider {
    static var previews: some View {
        AccueilView()
    }
}
