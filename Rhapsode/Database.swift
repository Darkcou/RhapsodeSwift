//
//  Database.swift
//  Rhapsode
//
//  Created by Benjamin Gronier on 02/04/2020.
//  Copyright © 2020 Benjamin Gronier. All rights reserved.
//

import Foundation

/************************ Category ********************************************/

enum Category: String, CaseIterable {
    
    case littérature = "Littérature"
    case roman = "Roman"
    case art = "Art, Musique, Cinéma"
    case histoireGéo = "Histoire et Géographie"
    case psychanalysePsycho = "Psychologie et psychanalyse"
    case philosophie = "Philosophie"
    case sociologiePolitique = "Sociologie et politique"
    case linguistique = "Linguistique"
    case sciencesMédecine = "Sciences et médecine"
    case société = "Société"
    case VO = "VO"
    case BD = "BD"
    case manga = "Manga"
    case manuel = "Manuel"
    case beauxLivres = "Beaux livres"
    case viePratique = "Vie pratique"
    case vieProfessionnelle = "Vie professionnelle"
    case autres = "Autres"
}

struct Book: Identifiable {
    let id = UUID()
    let title:String = ""
    let other:String = ""
    let cover:String=""
    let category:String
    let nuerique:Bool=false
    let type:Category
    
    init(theme: Category) {
        self.category = theme.rawValue
        self.type = theme
    }
    
}

func ThemeList()->[ThemeLine]{
    let themeAll = Category.allCases.map{ theme in Book.init(theme: theme)}
    var themeLine:[Book] = []
    var themeListing:[ThemeLine] = []
    
    for theme in themeAll
    {
        themeLine.append(theme)
        if(themeLine.count) % 2 == 0{
            themeListing.append(ThemeLine(themes: themeLine))
            themeLine.removeAll()
        }
    }
    return themeListing
}

struct ThemeLine: Identifiable {
    let id = UUID()
    var themes: [Book]
    
}

/************************ User ********************************************/

struct User: Identifiable {
    let id = UUID()
    let name:String
    let pseudo:String
    let image:String
    let birth:String
    let email:String
    let passWord:String
}
/************************ Seller********************************************/
struct Product {
    let book:String
    let price:String
    let sold:Bool = false
}
/************************ Buyer********************************************/
struct Buyer {
    
}
