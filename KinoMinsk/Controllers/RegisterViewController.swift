//
//  RegisterViewController.swift
//  KinoMinsk
//
//  Created by Artur on 14.05.23.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var backgroundView: GradientView!
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    @IBOutlet weak var formStackView: UIStackView!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var surnameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var createAccountButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        backgroundView.addSubview(welcomeLabel)
        backgroundView.addSubview(formStackView)
        formStackView.addSubview(nameTextField)
        formStackView.addSubview(surnameTextField)
        formStackView.addSubview(emailTextField)
        formStackView.addSubview(passwordTextField)
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
