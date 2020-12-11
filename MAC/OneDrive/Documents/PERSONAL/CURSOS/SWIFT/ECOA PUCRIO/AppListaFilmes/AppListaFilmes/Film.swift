//
//  Film.swift
//  AppListaFilmes
//
//  Created by Bruno Cassiano on 08/12/20.
//

import Foundation


class Film {
    
    var name: String
    var imageName: String
    var isMyFavorite: Bool
    init(name:String, imageName:String, isMyFavorite:Bool) {
        self.name = name
        self.imageName = imageName
        self.isMyFavorite = isMyFavorite
    }
}
