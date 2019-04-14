//
//  SssViewController.swift
//  Navegacion
//
//  Created by Leonardo Valbuena on 4/12/19.
//  Copyright © 2019 Leonardo Valbuena. All rights reserved.
//

import UIKit

class SssViewController: UIViewController {

    @IBOutlet weak var resultado: UILabel!
    
    @IBOutlet weak var parametro: UITextField!
    
    var recibirTexto:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultado.text = recibirTexto
        
    }
    

    @IBAction func regresar(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    

}
