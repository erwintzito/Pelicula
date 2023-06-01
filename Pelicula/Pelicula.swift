//
//  Pelicula.swift
//  Pelicula
//
//  Created by ADMIN UNACH on 30/05/23.
//

import Foundation

enum Genero: String{
    case Comedia, Romance, Drama, Accion, Terror, CienciaFiccion = "Ciencia Ficción"
}

enum Clasificacion: String{
    case A, AA, B, B15, C
}

struct Pelicula: Equatable, Comparable {
    static func < (lhs: Pelicula, rhs: Pelicula) -> Bool {
        return lhs.duracion < rhs.duracion
    }
    
    
    static func == (lhs: Pelicula, rhs: Pelicula) -> Bool {
        return lhs.name == rhs.name && lhs.director == rhs.director
    }
    
    var name: String
    var genero: Genero
    var director: String
    var clasificacion: Clasificacion
    var duracion: Int
    var imagenPortada: String
    var sinopsis: String
    var actores:[Actor]

}

struct Actor{
    var name: String
    var foto: String
    var biografia: String
}
