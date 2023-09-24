//
//  NotaViewController.swift
//  JOAS_cibertec
//
//  Created by DAMII on 24/09/23.
//

import UIKit

class NotaViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var notaTableView: UITableView!
    
    var notalist: [Nota]=[]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //DELEGADO
        notaTableView.dataSource = self
        
        notalist.append(Nota(fecha: "domingo 24/09/2023", contenido: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."))

        
    }
    // Numero de elementos a mostrar en la tabla
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notalist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemNota", for: indexPath) as! NotaTableViewCell
        let nota = notalist[indexPath.row]
        cell.fechaLable.text = nota.fecha
        cell.contenidoLabeel.text = nota.contenido
        return cell
    }
}
