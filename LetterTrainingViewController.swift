//
//  LetterTrainingViewController.swift
//  FinalProject-ASL
//
//  Created by user190940 on 5/4/21.
//

import UIKit
import Foundation
import CoreData

class LetterTrainingViewController: UIViewController, UITextFieldDelegate{

    var startstop = 0
    var word = ""
    var speed = 3.0
    var count = 3.0
    var curLet: Character = "a"
    var timer = Timer()
    var letcount = 0
    
    var stats: [NSManagedObject] = []
    var managedObjectContext: NSManagedObjectContext!
    var appDelegate: AppDelegate!

    let TestWords = WordsList.structname.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        appDelegate = UIApplication.shared.delegate as? AppDelegate
        managedObjectContext = appDelegate.persistentContainer.viewContext
        
        CorrIncLabel.text = ""
        self.AnswerText.delegate = self
        SpeedSlider.value = Float(speed)
        let tap = UITapGestureRecognizer(target: self, action: #selector(LetterTrainingViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        count = speed
        LetterImageView.image = UIImage(named: "Mypic1.png")
        
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
        
    }
    
    @objc func timerAction(){
        if startstop == 1{
        if count <= 0 {
            
            
            if letcount != word.count{
                curLet = word[word.index(word.startIndex, offsetBy: letcount)]
                //print(curLet)
                if curLet == "a"{
                    LetterImageView.image = UIImage(named: "A-lauren-nobg")
                }
                if curLet == "b"{
                    LetterImageView.image = UIImage(named: "B-lauren-nobg")
                }
                if curLet == "c"{
                    LetterImageView.image = UIImage(named: "C-lauren-nobg")
                }
                if curLet == "d"{
                    LetterImageView.image = UIImage(named: "D-lauren-nobg")
                }
                if curLet == "e"{
                    LetterImageView.image = UIImage(named: "E-lauren-nobg")
                }
                if curLet == "f"{
                    LetterImageView.image = UIImage(named: "F-lauren-nobg")
                }
                if curLet == "g"{
                    LetterImageView.image = UIImage(named: "G-lauren-nobg")
                }
                if curLet == "h"{
                    LetterImageView.image = UIImage(named: "H-lauren-nobg")
                }
                if curLet == "i"{
                    LetterImageView.image = UIImage(named: "I-lauren-nobg")
                }
                if curLet == "j"{
                    LetterImageView.image = UIImage(named: "J-lauren-nobg")
                }
                if curLet == "k"{
                    LetterImageView.image = UIImage(named: "K-lauren-nobg")
                }
                if curLet == "l"{
                    LetterImageView.image = UIImage(named: "L-lauren-nobg")
                }
                if curLet == "m"{
                    LetterImageView.image = UIImage(named: "M-lauren-nobg")
                }
                if curLet == "n"{
                    LetterImageView.image = UIImage(named: "N-lauren-nobg")
                }
                if curLet == "o"{
                    LetterImageView.image = UIImage(named: "O-lauren-nobg")
                }
                if curLet == "p"{
                    LetterImageView.image = UIImage(named: "P-lauren-nobg")
                }
                if curLet == "q"{
                    LetterImageView.image = UIImage(named: "Q-lauren-nobg")
                }
                if curLet == "r"{
                    LetterImageView.image = UIImage(named: "R-lauren-nobg")
                }
                if curLet == "s"{
                    LetterImageView.image = UIImage(named: "S-lauren-nobg")
                }
                if curLet == "t"{
                    LetterImageView.image = UIImage(named: "T-lauren-nobg")
                }
                if curLet == "u"{
                    LetterImageView.image = UIImage(named: "U-lauren-nobg")
                }
                if curLet == "v"{
                    LetterImageView.image = UIImage(named: "V-lauren-nobg")
                }
                if curLet == "w"{
                    LetterImageView.image = UIImage(named: "W-lauren-nobg")
                }
                if curLet == "x"{
                    LetterImageView.image = UIImage(named: "X-lauren-nobg")
                }
                if curLet == "y"{
                    LetterImageView.image = UIImage(named: "Y-lauren-nobg")
                }
                if curLet == "z"{
                    LetterImageView.image = UIImage(named: "Z-lauren-nobg")
                }
                
            
                
                letcount = letcount+1
                
                
                
                
                
                
                
            }
            else{
                if startstop == 1{
                    LetterImageView.image = UIImage(named: "Mypic2.png")
                    startstop = 0
                    
                }
                
                
            }
            
            count = speed
            
        }
        else{
            count = count - 0.1
        }
        }
        }
    
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.text = ""
    }
    
    @IBOutlet weak var AnswerText: UITextField!
    
    @IBOutlet weak var CorrIncLabel: UILabel!
    
    
    @IBOutlet weak var SpeedSlider: UISlider!
    
    
    @IBOutlet weak var LetterImageView: UIImageView!
    
    @IBAction func SpeedSliderChanged(_ sender: UISlider) {
        speed = Double(sender.value)
        count = speed
        
    }
    
    @IBAction func AnswerEntered(_ sender: Any) {
        if(AnswerText.text?.lowercased() == word){
            CorrIncLabel.text = "Correct: " + word
            
            
        }
        else{
            CorrIncLabel.text = "Incorrect: " + word
        }
        startstop = 1
        word = TestWords.AllWords[Int.random(in: 1..<TestWords.AllWords.count)]
        letcount = 0
        
        
    }
    
    @IBAction func StartStopPushed(_ sender: Any) {
        if startstop == 0{
            startstop = 1
            word = TestWords.AllWords[Int.random(in: 1..<TestWords.AllWords.count)]
            letcount = 0
            curLet = word[word.index(word.startIndex, offsetBy: 0)]
            //print(word)
        }
        else{
            startstop = 0
        }
        
        
        
       
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
}
