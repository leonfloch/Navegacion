//
//  PssViewController.swift
//  Navegacion
//
//  Created by Leonardo Valbuena on 4/12/19.
//  Copyright © 2019 Leonardo Valbuena. All rights reserved.
//

import UIKit

class PssViewController: UIViewController {

    @IBOutlet weak var texo: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func regresar(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    

    @IBAction func enviar(_ sender: UIButton) {
        performSegue(withIdentifier: "enviar", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "enviar" {
            let destino = segue.destination as! SssViewController
            destino.recibirTexto = texo.text
        }
    }
    
    @IBAction func recibirParametro(_ segue: UIStoryboardSegue) {
        if let recibir = segue.source as? SssViewController {
                texo.text = recibir.parametro.text
            
        }
        
        
        
        
    }
}
