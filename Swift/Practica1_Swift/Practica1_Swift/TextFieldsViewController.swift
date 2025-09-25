//
//  TextFieldsViewController.swift
//  Practica1_Swift
//
//  Created by Christian Fernandez on 23/09/25.
//

//  TextFieldsViewController.swift
import UIKit

class TextFieldsViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var interactiveTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Configura el delegado del text field
        interactiveTextField.delegate = self
        
        // Configuración inicial del label
        resultLabel.text = "Escribe algo para ver el resultado aquí."
    }
    
    // MARK: - Actions
    @IBAction func textFieldDidChange(_ sender: UITextField) {
        if let text = sender.text, !text.isEmpty {
            resultLabel.text = text
        } else {
            resultLabel.text = "Escribe algo para ver el resultado aquí."
        }
    }
}

// Extensión para implementar el delegado del UITextField
extension TextFieldsViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder() // Oculta el teclado al presionar "Return"
        return true
    }
}
