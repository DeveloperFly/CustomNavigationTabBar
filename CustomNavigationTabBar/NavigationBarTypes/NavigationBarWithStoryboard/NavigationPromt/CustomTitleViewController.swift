//
//  CustomTitleViewController.swift
//  CustomNavigationTabBar
//
//  Created by Aman Gupta on 19/02/18.
//  Copyright © 2018 developerFly. All rights reserved.
//

import UIKit

class CustomTitleViewController: UIViewController {
    
    //MARK: - IBOutlets
    
    //MARK: - View life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    //MARK: - Configure View
    func configureNavigationbar() {
        
    }
    
    //MARK: - IBAction Methods
    @IBAction func tapSegmentedControler(_ sender: UISegmentedControl) {
        
    }
    
    @IBAction func tapLetfFirstBarButotn(_ sender: UIBarButtonItem) {
        self.navigationController?.popViewController(animated: true)
        print("Left bar First Button")
    }
    
    @IBAction func tapRightFirstBarButotn(_ sender: UIBarButtonItem) {
        print("Right bar First Button")
    }
    
}
