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
    
    func createFilms() {
        let film1 = Film(name: "O senho dos aneis", imageName: "senhoraneis", isMyFavorite: true)
        
        let film2 = Film(name: "Matrix", imageName: "matrix1", isMyFavorite: true)
        
        let film3 = Film(name: "De volta para o futuro", imageName: "deVoltaFuturo1", isMyFavorite: true)
        
        let film4 = Film(name: "Star Wars", imageName: "starWars5", isMyFavorite: false)
    
        DataFilms.films.append(film1)
        DataFilms.films.append(film2)
        DataFilms.films.append(film3)
        DataFilms.films.append(film4)
    }
    

    @IBAction func openAction(_ sender: Any) {
        
        if (txtLogin.text == "Bruno" && txtPassword.text == "1234"){
            DataFilms.films.removeAll()
            createFilms()
         performSegue(withIdentifier: "tela2", sender: self)
            
        }else{
            let alert = UIAlertController(title: "Alerta", message: "Erro, Login ou Senha inválidos!!!", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
    }
    
}

