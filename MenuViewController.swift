//
//  ViewController.swift
//  FinalProject-ASL
//
//  Created by user190940 on 5/4/21.
//

import UIKit
import SafariServices
class MenuViewController: UIViewController {

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func VideoTutorialsPressed(_ sender: Any) {
        let myURL = URL(string:"http://www.lifeprint.com/")
        let safariVC = SFSafariViewController(url: myURL!)
        present(safariVC, animated: true, completion: nil)
        
    }
}

