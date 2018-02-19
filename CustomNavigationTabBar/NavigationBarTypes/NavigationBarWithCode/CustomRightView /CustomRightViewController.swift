//
//  CustomRightViewController.swift
//  CustomNavigationTabBar
//
//  Created by Aman Gupta on 19/02/18.
//  Copyright © 2018 developerFly. All rights reserved.
//

import UIKit

class CustomRightViewController: UIViewController {
    
    struct SegmentedControl {
        static let textButton = 0
        static let imageButton = 1
        static let controlButton = 2
    }
    
    //MARK: - View life cycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let addButton = UIBarButtonItem(title: NSLocalizedString("AddTitle", comment: ""),
                                        style: .plain,
                                        target: self,
                                        action: #selector(action(_:)))
        navigationItem.rightBarButtonItem = addButton
    }
    
    // MARK: - Actions
    @IBAction func changeRightBarItem(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case SegmentedControl.textButton:
            // Add a custom add button as the nav bar's custom right view
            let addButton = UIBarButtonItem(title: NSLocalizedString("AddTitle", comment: ""),
                                            style: .plain,
                                            target: self,
                                            action: #selector(action(_:)))
            navigationItem.rightBarButtonItem = addButton
            
        case SegmentedControl.imageButton:
            // add our custom image button as the nav bar's custom right view
            let emailButton = UIBarButtonItem(image: #imageLiteral(resourceName: "Email"),
                                              style: .plain,
                                              target: self,
                                              action: #selector(action(_:)))
            navigationItem.rightBarButtonItem = emailButton
            
        case SegmentedControl.controlButton:
            // "Segmented" control to the right
            let segmentedControl = UISegmentedControl(items: [
                "Item 1",
                "Item 2"
                ])
            
            segmentedControl.addTarget(self, action: #selector(action), for: .valueChanged)
            segmentedControl.frame = CGRect(x: 0, y: 0, width: 90, height: 30)
            segmentedControl.isMomentary = true
            
            let segmentBarItem = UIBarButtonItem(customView: segmentedControl)
            navigationItem.rightBarButtonItem = segmentBarItem
        default:
            break
        }
    }
    
    @IBAction func action(_ sender: AnyObject) {
        print("CustomRightViewController IBAction invoked!")
    }
}
