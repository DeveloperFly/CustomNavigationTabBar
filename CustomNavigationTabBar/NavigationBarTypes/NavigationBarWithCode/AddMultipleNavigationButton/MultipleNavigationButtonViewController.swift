//
//  MultipleNavigationButtonViewController.swift
//  CustomNavigationTabBar
//
//  Created by Aman Gupta on 19/02/18.
//  Copyright © 2018 developerFly. All rights reserved.
//

import UIKit

class MultipleNavigationButtonViewController: UIViewController {

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
        self.navigationItem.title = "Navigation Title"
        let emailButton1 = UIBarButtonItem(image: #imageLiteral(resourceName: "Email"),
                                          style: .plain,
                                          target: self,
                                          action: #selector(action(_:)))
        let emailButton2 = UIBarButtonItem(image: #imageLiteral(resourceName: "Email"),
                                          style: .plain,
                                          target: self,
                                          action: #selector(action(_:)))
        let emailButton3 = UIBarButtonItem(image: #imageLiteral(resourceName: "Email"),
                                          style: .plain,
                                          target: self,
                                          action: #selector(action(_:)))
        navigationItem.rightBarButtonItems = [emailButton1, emailButton2, emailButton3]

    }
    
    @IBAction func action(_ sender: AnyObject) {
        print("CustomRightViewController IBAction invoked!")
    }
}
