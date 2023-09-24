//
//  LoginViewController.swift
//  JOAS_cibertec
//
//  Created by DAMII on 17/09/23.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var correoTextFile: UITextField!
    @IBOutlet weak var ClaveTextFile: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginAccion(_ sender: Any) {
        let correo = correoTextFile.text
        let clave = ClaveTextFile.text
        
        if let email = correo, let pass = clave {
            if email.isEmpty{
                showAlert(mensaje: "Ingrese correo")
            }else if pass.isEmpty{
                showAlert(mensaje: "Ingrese clave")
            }else{goToMenu()}
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
