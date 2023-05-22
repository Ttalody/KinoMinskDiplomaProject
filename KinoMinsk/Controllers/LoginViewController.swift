//
//  SignInViewController.swift
//  KinoMinsk
//
//  Created by Artur on 28.04.23.
//

import UIKit

class LoginViewController: UIViewController {
    
    let buttonGradient = CAGradientLayer()
    
    @IBOutlet weak var backgroundView: GradientView!
    
    @IBOutlet weak var yellowImageView: UIImageView!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var signInButton: UIButton!
    
    @IBOutlet weak var createAccountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(labelPressed))
        createAccountLabel.addGestureRecognizer(tap)
        
//
//        buttonGradient.colors = [
//            UIColor(red: 255, green: 183, blue: 0, alpha: 1),
//            UIColor(red: 255, green: 88, blue: 42, alpha: 1)
//        ]
//        buttonGradient.frame = signInButton.bounds
//
//        signInButton.layer.insertSublayer(buttonGradient, at: 0)

        
        }
    
    override func viewDidLayoutSubviews() {
        
        backgroundView.addSubview(yellowImageView)
        backgroundView.addSubview(emailTextField)
        backgroundView.addSubview(passwordTextField)
    }
    
    
    
    
    
     //MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? RegisterViewController {
            
        }
        
         //Get the new view controller using segue.destination.
         //Pass the selected object to the new view controller.
    }
    

    @objc func labelPressed(){
        self.performSegue(withIdentifier: "toRegisterVC", sender: self)
    }
}
