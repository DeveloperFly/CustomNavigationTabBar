//
//  NavigationPromtSBViewController.swift
//  CustomNavigationTabBar
//
//  Created by Aman Gupta on 08/02/18.
//  Copyright © 2018 developerFly. All rights reserved.
//

import UIKit

class NavigationPromtSBViewController: UIViewController {
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
        
    }
    
    //MARK: - IBAction Methods
    @IBAction func tapRightFirstButton(_ sender: UIBarButtonItem) {
        print("Right bar First Button")
    }
    
    @IBAction func tapLeftFirstButton(_ sender: UIBarButtonItem) {
        self.navigationController?.popViewController(animated: true)
        print("Left bar First Button")
    }
    
}
