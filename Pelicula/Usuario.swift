//
//  Usuario.swift
//  Pelicula
//
//  Created by ADMIN UNACH on 31/05/23.
//

import Foundation

enum Sexo: String {
    case Masculino, Femenino, Nodefinido = "Prefiero no definir "
}

struct Usuario{
    var nombre: String
    var app: String
    var user: String
    var pass: String
    var sexo: Sexo
    var foto: String
}
