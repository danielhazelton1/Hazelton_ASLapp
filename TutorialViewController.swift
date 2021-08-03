//
//  TutorialViewController.swift
//  FinalProject-ASL
//
//  Created by user190940 on 5/4/21.
//

import UIKit
import WebKit
import SafariServices
class TutorialViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"http://www.lifeprint.com/")
        let safariVC = SFSafariViewController(url: myURL!)
        present(safariVC, animated: true, completion: nil)
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var MainWebView: WKWebView!
    
    
    

}
