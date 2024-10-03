//
//  ViewController.swift
//  tablas
//
//  Created by Alumno on 02/10/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var miImagen: UIImageView!
    @IBOutlet weak var product: UILabel!
    @IBOutlet weak var descripcionProduct: UILabel!
    
    var miTitulo=""
    var miDescripcion=""
    var imagen=UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        miImagen.image=imagen
        descripcionProduct.text=miDescripcion
        product.text=miTitulo
        self.title=miTitulo
        miImagen.layer.cornerRadius = miImagen.frame.size.width / 1.85
        miImagen.layer.masksToBounds = true
        miImagen.clipsToBounds = true
    }


}



