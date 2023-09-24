//
//  RegistroViewController.swift
//  JOAS_cibertec
//
//  Created by DAMII on 17/09/23.
//

import UIKit

class RegistroViewController: UIViewController {

    @IBOutlet weak var nombreTextField: UITextField!
    @IBOutlet weak var dniTextField: UITextField!
    @IBOutlet weak var correoTextField: UITextField!
    @IBOutlet weak var claveTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func registro(_ sender: Any) {
        let nombres = nombreTextField.text
        let dni = dniTextField.text
        let correo = correoTextField.text
        let clave = claveTextField.text
        
        if let name = nombres, let dni = dni, let email = correo, let pass = clave {
            if name.isEmpty{
                showAlert(mensaje: "Ingrese su nombre y apellido")
            }else if dni.isEmpty{
                showAlert(mensaje: "Ingrese su dni")
            }else if email.isEmpty{
                showAlert(mensaje: "Ingrese su correo")
            }else if pass.isEmpty{
                showAlert(mensaje: "Ingrese su clave")
            }else{
                showVeriCuenta(mensaje: "Su cuenta ha sido creada correctamente")
            }
        }
        
    }
    func showAlert(mensaje:String){
        let alert = UIAlertController(title: "Error", message: mensaje, preferredStyle: .alert)
        let button = UIAlertAction(title: "Entendido", style: .default)
        let cancel = UIAlertAction(title: "Cancelar", style: .cancel)
        alert.addAction(button)
        alert.addAction(cancel)
        self.present(alert, animated: true)
    }
    func showVeriCuenta(mensaje:String){
        let alert = UIAlertController(title: "Creado correctamente", message: mensaje, preferredStyle: .alert)
        let button = UIAlertAction(title: "Entendido", style:.default, handler: {_ in
            self.navigationController? .popViewController(animated: true)
        })
        alert.addAction(button)
        self.present(alert, animated: true)
    }
    func goToMenu(){
        //PantallaPrincipal
        let storyBoard:UIStoryboard =  UIStoryboard(name: "Main", bundle: nil)
        let viewScreen = storyBoard.instantiateViewController(withIdentifier: "TabBarMenu") as! MenuViewController
        viewScreen.modalPresentationStyle = .fullScreen ; self.present(viewScreen, animated:true, completion: nil)
        
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
