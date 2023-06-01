//
//  DetalleActorViewController.swift
//  Pelicula
//
//  Created by ADMIN UNACH on 30/05/23.
//

import UIKit

class DetalleActorViewController: UIViewController {

    var pelicula: Pelicula?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let pelicula = pelicula else {return}
        
        fotoActorImageView.image = UIImage(named: pelicula.actores[0].foto)
        nombreACtorLabel.text = pelicula.actores[0].name
        biografiaTextView.text = pelicula.actores[0].biografia
        
    }
    

    @IBOutlet weak var fotoActorImageView: UIImageView!
    @IBOutlet weak var biografiaTextView: UITextView!
    
    @IBOutlet weak var nombreACtorLabel: UILabel!
    
}
