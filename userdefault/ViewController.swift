//
//  ViewController.swift
//  userdefault
//
//  Created by AkashSir.com on 24/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txt1: UITextField!
    @IBOutlet weak var txt2: UITextField!
    @IBOutlet weak var txt3: UITextField!
    @IBAction func savebtn(_ sender: Any) {
        let pref = UserDefaults.standard
        pref.set(txt1.text, forKey: "fname")
        pref.set(txt2.text!, forKey: "mname")
        pref.set(txt3.text!, forKey: "lname")
        
        let a = pref.string(forKey: "fname")
        let b = pref.string(forKey: "mname")
        let c = pref.string(forKey: "lname")
        txt1.text = "saved"
        txt2.text = "saved"
        txt3.text = "saved"
    }
    
    @IBAction func removebtn(_ sender: Any) {
        let pref = UserDefaults.standard
        pref.removeObject(forKey: "fname")
        pref.removeObject(forKey: "mname")
        pref.removeObject(forKey: "lname")
        //txt1.text = "removed"
        //txt2.text = "removed"
       // txt3.text = "removed"
    }
    
    @IBAction func getbtn(_ sender: Any) {
        let main = UIStoryboard(name: "Main", bundle: nil)
        let sv = main.instantiateViewController(withIdentifier: "sc2")
        self.present(sv,animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

