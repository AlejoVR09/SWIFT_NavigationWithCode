//
//  ViewController.swift
//  Navigation
//
//  Created by Alejandro Vanegas Rondon on 20/01/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var PassToOther: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func PassTo(_ sender: Any) {
        self.performSegue(withIdentifier: "SegueToListView", sender: nil)
    }
    @IBAction func PassToWithCode(_ sender: Any) {
        let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ListView")
        controller.modalPresentationStyle = .automatic
        self.present(controller, animated: true)
    }
    
}

