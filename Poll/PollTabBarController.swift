//
//  PollTabBarController.swift
//  Poll
//
//  Created by Jason Modisett on 8/30/18.
//  Copyright © 2018 Jason Modisett. All rights reserved.
//

import UIKit

class PollTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        passVoteControllerToChildViewControllers()
    }
    
    func passVoteControllerToChildViewControllers() {
        for childVC in childViewControllers {
            if let childVC = childVC as? VoteControllerProtocol {
                childVC.voteController = voteController
            }
        }
    }
    
    let voteController = VoteController()

}
