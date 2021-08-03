//
//  DictionaryViewController.swift
//  FinalProject-ASL
//
//  Created by user190940 on 5/5/21.
//

import Foundation
import UIKit
class DictionaryViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    let words = ["baby","brother","change","dad","deaf","friend","hearing","house","intelligent","justice","line","lousy","mom","pay","people","science","send","sick","tend_to","they","tired","wonderful","all_right"]
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return words.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "basicCell", for: indexPath)

        // Configure the cell...
        let word = words[indexPath.row]
        cell.textLabel?.text = word
        return cell
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "toWordView" {
            let vc = segue.destination as! WordViewController
            let index = self.tableView.indexPathForSelectedRow?.row
            vc.word = words[index!]
        }
    }

    
        
    
    
}
