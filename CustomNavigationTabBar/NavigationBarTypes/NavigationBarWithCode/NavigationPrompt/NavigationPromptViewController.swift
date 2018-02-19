//
//  NavigationPromptViewController.swift
//  CustomNavigationTabBar
//
//  Created by Aman Gupta on 19/02/18.
//  Copyright © 2018 developerFly. All rights reserved.
//

import UIKit

class NavigationPromptViewController: UIViewController {

    //MARK: - View life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigationBar()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: - Configure View
    func configureNavigationBar() {
        navigationItem.prompt = "Navigation prompts appear at the top."
    }
    
}
