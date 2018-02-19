//
//  CustomTitleCodeViewController.swift
//  CustomNavigationTabBar
//
//  Created by Aman Gupta on 19/02/18.
//  Copyright © 2018 developerFly. All rights reserved.
//

import UIKit

class CustomTitleCodeViewController: UIViewController {
    
    //MARK: - View life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        let segmentTextContent = [
            NSLocalizedString("Item 1", comment: ""),
            NSLocalizedString("Item 2", comment: ""),
            NSLocalizedString("Item 3", comment: "")
        ]
        
        // Segmented control as the custom title view
        let segmentedControl = UISegmentedControl(items: segmentTextContent)
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.autoresizingMask = .flexibleWidth
        segmentedControl.frame = CGRect(x: 0, y: 0, width: 400, height: 30)
        segmentedControl.addTarget(self, action: #selector(action(_:)), for: .valueChanged)
        
        self.navigationItem.titleView = segmentedControl
    }
    
    // MARK: - Actions
    
    /**
     *  IBAction for the segmented control.
     */
    @IBAction func action(_ sender: AnyObject) {
        print("CustomTitleViewController IBAction invoked!")
    }
    
}
