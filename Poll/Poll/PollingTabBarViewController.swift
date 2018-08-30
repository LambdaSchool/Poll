//
//  PollingTabBarViewController.swift
//  Poll
//
//  Created by Moin Uddin on 8/30/18.
//  Copyright © 2018 Moin Uddin. All rights reserved.
//

import UIKit

class PollingTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        passVoteControllerToChildViewControllers()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func passVoteControllerToChildViewControllers() {
        for childVC in childViewControllers {
            guard let childVC = childVC as? VoteControllerProtocol else { return }
            childVC.voteController = voteController
        }
    }
    
    let voteController = VoteController()
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
