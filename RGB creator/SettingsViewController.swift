//
//  SettingsViewController.swift
//  RGB creator
//
//  Created by Владимир Панасенков on 19.12.2020.
//

import UIKit

class ShowViewController: UIViewController {
    
        
    override func viewDidLoad() {
        navigationItem.hidesBackButton = true
        super.viewDidLoad()
    }
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let newShowVC = segue.destination as! ViewController
        newShowVC.delegate = self
    }
}

extension ShowViewController: ViewControllerDelegate {
    func changeColor(color: UIColor) {
        self.view.backgroundColor = color
    }
}
