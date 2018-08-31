//
//  CombinedViewController.swift
//  Poll
//
//  Created by Ilgar Ilyasov on 8/30/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class CombinedViewController: UIViewController, VoteControlProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "VotingSegue" {
            
            guard let votingVC = segue.destination as? VotingViewController else { return }
            
            votingVC.voteController = voteController
            
        } else if segue.identifier == "ResultsSegue" {
            
            guard let resultsVC = segue.destination as? ResultsTableViewController else { return }
            
            resultsVC.voteController = voteController
        }
        
    }

    var voteController: VoteController?
    
}
