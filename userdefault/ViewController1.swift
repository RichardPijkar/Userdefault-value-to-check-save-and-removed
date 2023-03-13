//
//  ViewController1.swift
//  userdefault
//
//  Created by AkashSir.com on 24/01/23.
//

import UIKit

class ViewController1: UIViewController {

    @IBOutlet weak var txt1: UITextField!
    @IBOutlet weak var txt2: UITextField!
    @IBOutlet weak var txt3: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let pref = UserDefaults.standard
        let a = pref.string(forKey: "fname")
        let b = pref.string(forKey: "mname")
        let c = pref.string(forKey: "lname")
        txt1.text = a
        txt2.text = b
        txt3.text = c
        // Do any additional setup after loading the view.
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
