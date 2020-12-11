//
//  DataFilms.swift
//  AppListaFilmes
//
//  Created by Bruno Cassiano on 08/12/20.
//

import Foundation

class DataFilms {
    
    static var films:[Film] = []
    
    static func getFavoriteFilms() -> [Film]{
        var favoriteFilms:[Film] = []
        
        for film in DataFilms.films{
            if (film.isMyFavorite){
                favoriteFilms.append(film)
            }
        }
        return favoriteFilms
    }
}
