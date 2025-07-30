//
//  ViewController.swift
//  LoginApp

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var unameField: UITextField!
    
    @IBOutlet weak var userNameButton: UIButton!
    
    @IBOutlet weak var passwordButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return };
        if sender == passwordButton {    segue.destination.navigationItem.title="Forget Password"
        }
        else if sender == userNameButton{
            segue.destination.navigationItem.title="Forget Username"
        }
        else{
            segue.destination.navigationItem.title=unameField.text
        }
    }
    
    
    @IBAction func forgetUname(_ sender: Any) {
        performSegue(withIdentifier: "vcSegue", sender: sender)
    }
    
    @IBAction func forgetPassword(_ sender: Any) {
        performSegue(withIdentifier: "vcSegue", sender: sender)
    }
}
