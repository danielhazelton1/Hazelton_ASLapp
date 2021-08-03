//
//  WordViewController.swift
//  FinalProject-ASL
//
//  Created by user190940 on 5/5/21.
//

import Foundation
import UIKit
class WordViewController: UIViewController {

    var word: String?
    
    @IBOutlet weak var wordImageView: UIImageView!
    
    @IBOutlet weak var wordLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        wordImageView.image = UIImage(named: word! + ".png")
        wordLabel.text = "\"" + word! + "\""
    }


    
}
