//
//  ViewController.swift
//  Pelicula
//
//  Created by ADMIN UNACH on 30/05/23.
//

import UIKit

class PeliculasViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let pelicula1=peliculas[0]
        
        
        tituloLabel.text = pelicula1.name
        generoLabel.text = pelicula1.genero.rawValue
        
        portadaImageView.image = UIImage(named: pelicula1.imagenPortada)
        
        portada2.image = UIImage(named: peliculas[1].imagenPortada)
        nombre2.text = peliculas[1].name
        genero2.text = peliculas[1].genero.rawValue
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? DetallePeliculaViewController{
            vc.pelicula = aux
        }
        
       
        
        
    }
    
    let peliculas = [
        Pelicula(name: "Caballeros del Zodiaco",
                 genero: .CienciaFiccion,
                 director: "Tomasz Bagiński",
                 clasificacion: .B15,
                 duracion: 120,
                 imagenPortada: "portada",
                 sinopsis: "Knights of the Zodiac, conocida en japonés como Saint Seiya: The Beggining (聖闘士星矢 The Beginning?) y en Latinoamérica como Los Caballeros del Zodiaco: Saint Seiya - El Inicio, es una película japonesa-estadounidense de 2023, dirigida por Tomasz Bagiński, escrita por Kiel Murray, Josh Campbell, Matt Stuecken, producida por Sony Pictures junto a Toei Company, y basada en la obra de Saint Seiya de Masami Kurumada. Está protagonizada por Mackenyu como Seiya de Pegaso junto a Madison Iseman, Sean Bean, Mark Dacascos, Famke Janssen, Nick Stahl, Diego Tinoco y David Torok.",
                 actores: [Actor(name: "Arata Mackenyu", foto: "seyia", biografia: "Es hijo del actor, productor y director japonés Shinichi Chiba y Tamami Chiba, tiene un hermano menor, el actor Gordon Maeda y una media hermana mayor, la actriz japonesa Juri Manase. Su tío es el ex-actor Jirō Yabuki (también conocido como Jiro Chiba).Asistió a la Beverly Hills High School en el programa de colocación avanzada. Habla con fluidez inglés (lengua materna) y japonés."),
                         Actor(name: "Madison Iseman ", foto: "atenea",biografia: "Madison Iseman es una actriz estadounidense. Es conocida por su papel de Bethany Walker en las dos adaptaciones reboot cinematográficas en Jumanji, Sarah Quinn en Goosebumps 2: Haunted Halloween, Mary Ellen "),
                         Actor(name: "Sean Bean ", foto: "kiddo",biografia: "Shaun Mark Bean, conocido como Sean Bean, es un actor de cine y televisión británico, célebre mundialmente por su personaje Boromir en la trilogía cinematográfica de El Señor de los Anillos, y por su personaje Eddard Stark en la serie de televisión Juego de tronos, en HBO.")
                        ]
                ),
        Pelicula(name: "Doctor Strange",
                 genero: .CienciaFiccion,
                 director: "Scott Derrickson",
                 clasificacion: .B15,
                 duracion: 120,
                 imagenPortada: "doctor",
                 sinopsis: "Después de sufrir un accidente, un brillante y arrogante cirujano busca rehabilitarse mediante técnicas alternativas. Sus intentos le llevan a descubrir que ha sido designado para encabezar la lucha contra una fuerza oscura y sobrenatural.",
                 actores: [Actor(name: "Benedict Cumberbatch", foto: "actordoctor", biografia: "Benedict Timothy Carlton Cumberbatch, conocido como Benedict Cumberbatch, es un actor británico de televisión, teatro, cine y voz.​"),
                         Actor(name: "Benedict Wong", foto: "wong",biografia: "enedict Wong ​ es un actor británico conocido por interpretar a Kublai Khan en la serie Marco Polo de Netflix, a Bruce Ng en The Martian y a Wong en el Universo cinematográfico de Marvel.​ Wong no solo ha tenido una ilustre carrera en el cine y la televisión, sino también en teatro."),
                         Actor(name: "Rachel McAdams", foto: "rachel",biografia: "Rachel Anne McAdams1​ (London, Ontario; 17 de noviembre de 1978),2​1​ conocida como Rachel McAdams, es una actriz canadiense. Después de graduarse de un programa de grado en teatro en la Universidad de York en 2001, trabajó en producciones cinematográficas y televisivas canadienses, como la película dramática Perfect Pie (2002), por la que recibió una nominación al premio Genie, la película de comedia, My Name Is Tanino (2002) y la serie de comedia Slings and Arrows (2003-2005), por la que ganó un premio Gemini.")
                        ]
                )
    
    ]
    
    var aux: Pelicula?
    

    @IBOutlet weak var portadaImageView: UIImageView!
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var generoLabel: UILabel!
    
    
    @IBOutlet weak var portada2: UIImageView!
    @IBOutlet weak var nombre2: UILabel!
    @IBOutlet weak var genero2: UILabel!
    @IBAction func boton1(_ sender: Any) {
        aux = peliculas[0]
    }
    @IBAction func boton2(_ sender: Any) {
        aux = peliculas[1]
    }
}

