//
//  CustomNavButtonStoryBoard.swift
//  CustomNavigationTabBar
//
//  Created by Aman Gupta on 14/02/18.
//  Copyright © 2018 developerFly. All rights reserved.
//

import UIKit

class CustomNavButtonStoryBoard: UIViewController {
    //MARK: - View life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: - Configure View
    func configureNavigationBar() {
        
    }

    @IBAction func tapLeftFirstButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
        print("Left bar First Button")
    }
    
    @IBAction func tapRightFirstButton(_ sender: Any) {
        print("Right bar First Button")
    }
    
    @IBAction func tapRightSecondButton(_ sender: UIButton) {
        print("Right bar Second Button")
    }
    
    @IBAction func tapRightThirdButton(_ sender: UIButton) {
        print("Right bar Third Button")
    }
    
}
