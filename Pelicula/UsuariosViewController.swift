//
//  UsuariosViewController.swift
//  Pelicula
//
//  Created by ADMIN UNACH on 31/05/23.
//

import UIKit

class UsuariosViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        fotoImageView.image = UIImage(named: usuarios[0].foto)
        userLabel.text = usuarios[0].user
        passLabel.text = usuarios[0].pass
        nombreLabel.text = usuarios[0].nombre
        appLabel.text = usuarios[0].app
        // Do any additional setup after loading the view.
    }
    
    var usuarios = [
    Usuario(nombre: "Erwin",
            app: "Bermudez",
            user: "erwintzito",
            pass: "soyyo",
            sexo: .Nodefinido,
            foto: "erwin"
           )
    ]
    
    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var passLabel: UILabel!
    @IBOutlet weak var nombreLabel: UILabel!
    @IBOutlet weak var appLabel: UILabel!
    
    @IBOutlet weak var fotoImageView: UIImageView!
    
}
