//
//  CustomStoryboradViewController.swift
//  CustomNavigationTabBar
//
//  Created by Aman Gupta on 08/02/18.
//  Copyright © 2018 developerFly. All rights reserved.
//

import UIKit

class CustomStoryboradViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: - Configure View
    func ConfigureNavigationBar() {
        
    }
    
    //MARK: - IBAction Methods
    @IBAction func tapRightBarButton(_ sender: UIBarButtonItem) {
        print("Right bar First Button")
        let alertController = UIAlertController.init(title: "DeveloperFly", message: "Right Bar button", preferredStyle: .alert)
        let okAlertAction = UIAlertAction(title: "OK", style: .cancel) { _ in
            
        }
        alertController.addAction(okAlertAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func tapLeftBarButton(_ sender: UIBarButtonItem) {
        print("Left bar First Button")
        self.navigationController?.popViewController(animated: true)
    }
    
}
