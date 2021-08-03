//
//  MatchingViewController.swift
//  FinalProject-ASL
//
//  Created by user190940 on 5/4/21.
//

import Foundation
import UIKit

class MatchingViewController: UIViewController {

    
    @IBOutlet weak var WordLabel: UILabel!
    
    @IBOutlet weak var ImageView1: UIImageView!
    
    @IBOutlet weak var ImageView2: UIImageView!
    
    @IBOutlet weak var CorrIncLabel: UILabel!
    
    
    let gestures = ["baby","brother","change","dad","deaf","friend","hearing","house","intelligent","justice","line","lousy","mom","pay","people","science","send","sick","tend_to","they","tired","wonderful","all_right"]
    
    let letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    
    var ch1ans = ""
    var ch1img = ""
    var ch2ans = ""
    var ch2img = ""
    
    var LetorGes = 0
    var swi = 0
    
    var CorrectAns = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Matchsetup()
        CorrIncLabel.text = ""
        
        // Do any additional setup after loading the view.
    }
    
    public func Matchsetup(){
        LetorGes = Int.random(in: 0..<2)
        
        if LetorGes == 0 {
            CorrectAns = letters[Int.random(in: 1..<letters.count)]
            WordLabel.text = CorrectAns
            
            swi = Int.random(in: 0..<2)
            if swi == 0{
                ch1ans = CorrectAns
                ch1img = CorrectAns + "-lauren-nobg.png"
                
                ch2ans = letters[Int.random(in: 1..<letters.count)]
                while ch2ans == CorrectAns{
                    ch2ans = letters[Int.random(in: 1..<letters.count)]
                    
                }
                ch2img = ch2ans + "-lauren-nobg.png"
            }
            else{
                ch2ans = CorrectAns
                ch2img = CorrectAns + "-lauren-nobg.png"
                
                ch1ans = letters[Int.random(in: 1..<letters.count)]
                while ch1ans == CorrectAns{
                    ch1ans = letters[Int.random(in: 1..<letters.count)]
                    
                }
                ch1img = ch1ans + "-lauren-nobg.png"            }
        }
        else{
            CorrectAns = gestures[Int.random(in: 1..<gestures.count)]
            WordLabel.text = CorrectAns
            swi = Int.random(in: 0..<2)
            if swi == 0{
                ch1ans = CorrectAns
                ch1img = CorrectAns + ".png"
                
                ch2ans = gestures[Int.random(in: 1..<gestures.count)]
                while ch2ans == CorrectAns{
                    ch2ans = gestures[Int.random(in: 1..<gestures.count)]
                    
                }
                ch2img = ch2ans + ".png"
            }
            else{
                ch2ans = CorrectAns
                ch2img = CorrectAns + ".png"
                
                ch1ans = gestures[Int.random(in: 1..<gestures.count)]
                while ch1ans == CorrectAns{
                    ch1ans = gestures[Int.random(in: 1..<gestures.count)]
                    
                }
                ch1img = ch1ans + ".png"            }
        }
        
        ImageView1.image = UIImage(named: ch1img)
        ImageView2.image = UIImage(named: ch2img)
        
    }
        
    
    
    
    @IBAction func Choice1Pressed(_ sender: Any) {
        if ch1ans == CorrectAns {
            CorrIncLabel.text = "Correct"
            
        }
        else{
            CorrIncLabel.text = "Incorrect"
        }
        Matchsetup()
    }
    
    @IBAction func Choice2Pressed(_ sender: Any) {
        if ch2ans == CorrectAns {
            CorrIncLabel.text = "Correct"
            
        }
        else{
            CorrIncLabel.text = "Incorrect"
        }
        Matchsetup()
    }
    
}


