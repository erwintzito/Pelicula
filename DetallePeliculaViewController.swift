//
//  DetallePeliculaViewController.swift
//  Pelicula
//
//  Created by ADMIN UNACH on 30/05/23.
//

import UIKit

class DetallePeliculaViewController: UIViewController {

    var pelicula : Pelicula?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let pelicula = pelicula else {return}
        
        portadaImageView.image = UIImage(named: pelicula.imagenPortada)
        nombreTextView.text = pelicula.name
        generoLabel.text = pelicula.genero.rawValue
        actor1Label.text = pelicula.actores[0].name
        
        actor2Label.text = pelicula.actores[1].name
        
        actor3Label.text = pelicula.actores[2].name
        
        sinopsisTextView.text = pelicula.sinopsis
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? DetalleActorViewController{
            vc.pelicula = pelicula;
        }
    }
    
    @IBOutlet weak var portadaImageView: UIImageView!
    @IBOutlet weak var actor1Label: UILabel!
    @IBOutlet weak var sinopsisTextView: UITextView!
    @IBOutlet weak var generoLabel: UILabel!
    
    
    @IBOutlet weak var nombreTextView: UITextView!
    @IBOutlet weak var actor3Label: UILabel!
    @IBOutlet weak var actor2Label: UILabel!
    @IBOutlet weak var actor2ImageView: UIImageView!
    @IBOutlet weak var actor1ImageView: UIImageView!
    @IBOutlet weak var actor3ImageView: UIImageView!
}
