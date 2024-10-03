//
//  TableViewController.swift
//  tablas
//
//  Created by Alumno on 02/10/24.
//

import UIKit

class TableViewController: UITableViewController {
    
    @IBOutlet var seleccion: UITableView!
    
    struct Producto{
        var nombre:String
        var imagenes:String
        var descripcion:String
    }
    
    var productos:[Producto] = [
        Producto (nombre:"Carro 1", imagenes:"Auto1", descripcion: "auto rojo, 4 llantas, bonito"),
        Producto (nombre:"Carro 2", imagenes:"Auto2", descripcion: "auto negro con azul, 4 llantas, bonito y rapido"),
        Producto (nombre:"Carro 3", imagenes:"Auto3", descripcion: "auto negro, 4 llantas, muy pero muy bonito"),
        Producto (nombre:"Carro 4", imagenes:"Auto4", descripcion: "veneno, 4 llantas, gris, hermoso"),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return productos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda")!
        
        cell.textLabel?.text = productos[indexPath.row].nombre
        
        if let imagenView = cell.imageView{
            imagenView.image = UIImage(named: productos[indexPath.row].imagenes)
            imagenView.layer.cornerRadius = imagenView.frame.size.width / 1.85
            imagenView.layer.masksToBounds = true
            imagenView.clipsToBounds = true
        }
        cell.imageView?.image = UIImage (named: productos[indexPath.row].imagenes)
        //cell.textLabel?.text = productos[indexPath.row].descripcion

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        let indice=seleccion.indexPathForSelectedRow!
        print(indice)
        
        if segue.identifier=="Vista"{
            let vc = segue.destination as! ViewController
            vc.miDescripcion=productos[indice.row].descripcion
            vc.imagen=UIImage(named: productos[indice.row].imagenes)!
            vc.miTitulo=productos[indice.row].nombre
        }
    }
    

}
