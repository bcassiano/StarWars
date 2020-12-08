//
//  ViewController.swift
//  AppListaFilmes
//
//  Created by Bruno Cassiano on 03/12/20.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var txtLogin: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func openAction(_ sender: Any) {
        
        if (txtLogin.text == "Bruno" && txtPassword.text == "1234"){
         performSegue(withIdentifier: "tela2", sender: self)
            
        }else{
            let alert = UIAlertController(title: "Alerta", message: "Erro de Login ou SEnha", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
    }
    
}

