//
//  VotingViewController.swift
//  Poll
//
//  Created by Michael Redig on 4/22/19.
//  Copyright © 2019 Michael Redig. All rights reserved.
//

import UIKit

class VotingViewController: UIViewController, VoteControllerProtocol {

	var voteController: VoteController?

	@IBOutlet var nameLabel: UITextField!
	@IBOutlet var responseLabel: UITextField!
	
	
	override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
	@IBAction func submitButtonPressed(_ sender: UIButton) {
		guard let name = nameLabel.text, let response = responseLabel.text else { return }
		
		voteController?.createNewVote(with: name, andResponse: response)
	}
	
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
