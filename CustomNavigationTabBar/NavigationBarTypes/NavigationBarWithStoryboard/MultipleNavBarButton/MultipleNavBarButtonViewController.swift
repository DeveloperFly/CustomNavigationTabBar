//
//  MultipleNavBarButtonViewController.swift
//  CustomNavigationTabBar
//
//  Created by Aman Gupta on 08/02/18.
//  Copyright © 2018 developerFly. All rights reserved.
//

import UIKit

class MultipleNavBarButtonViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - IBAction Methods
    @IBAction func tapRightBarFirstButton(_ sender: UIBarButtonItem) {
        print("Right bar First Button")
    }
    
    @IBAction func tapRightBarSecondButton(_ sender: UIBarButtonItem) {
        print("Right bar Second Button")
    }
    
    @IBAction func tapRightBarThirdButton(_ sender: UIBarButtonItem) {
        print("Right bar Third Button")
    }
    
    @IBAction func tapLeftBarFirstButton(_ sender: UIBarButtonItem) {
        self.navigationController?.popViewController(animated: true)
        print("Left bar First Button")
    }
    
    @IBAction func tapLeftBarSecondButton(_ sender: UIBarButtonItem) {
        print("Left bar Second Button")
    }
    
}
