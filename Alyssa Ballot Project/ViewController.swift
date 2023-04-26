//
//  ViewController.swift
//  Alyssa Ballot Project
//
//  Created by Alyssa Scalia on 4/12/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var yesVoteCounter: UILabel!
    
    @IBOutlet var noVoteCounter: UILabel!
    
    @IBOutlet var winner: UILabel!
    
    
    override func viewWillAppear(_ animated: Bool) {
        yesVoteCounter.text = String((parent as! TBViewController).yesVote)
        noVoteCounter.text = String((parent as! TBViewController).noVote)
        
        if (parent as! TBViewController).yesVote > (parent as! TBViewController).noVote
        {
            winner.text = "Yes, the campus is pretty"
        } else {
            winner.text = "No, we're bias."
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

