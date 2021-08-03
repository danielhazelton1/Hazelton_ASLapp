//
//  FlashCardViewController.swift
//  FinalProject-ASL
//
//  Created by user190940 on 5/4/21.
//

import Foundation
import UIKit

class FlashCardViewController: UIViewController {

    @IBOutlet weak var FlashCardImage: UIImageView!
    
    @IBOutlet weak var AnswerLabel: UILabel!
    
    var curImage = ""
    var curAnswer = ""
    let cards = ["baby","brother","change","dad","deaf","friend","hearing","house","intelligent","justice","line","lousy","mom","pay","people","science","send","sick","tend_to","they","tired","wonderful","all_right"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AnswerLabel.text = ""
        curAnswer = cards[Int.random(in: 1..<cards.count)]
        curImage = curAnswer + ".png"
        FlashCardImage.image = UIImage(named: curImage)
        
        
    }
    
    
    @IBAction func ShowAnswerPressed(_ sender: Any) {
        AnswerLabel.text = "\"" + curAnswer + "\""
    }
    
    @IBAction func NextPressed(_ sender: Any) {
        curAnswer = cards[Int.random(in: 1..<cards.count)]
        curImage = curAnswer + ".png"
        FlashCardImage.image = UIImage(named: curImage)
        AnswerLabel.text = ""
    }
    
    
    

}
