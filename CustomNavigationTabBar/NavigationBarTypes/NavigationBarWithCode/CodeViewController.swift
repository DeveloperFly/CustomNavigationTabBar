//
//  CodeViewController.swift
//  CustomNavigationTabBar
//
//  Created by Aman Gupta on 19/02/18.
//  Copyright © 2018 developerFly. All rights reserved.
//

import UIKit

class CodeViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

//MARK: - UITableViewDataSource Methods
extension CodeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CodeTableViewCell", for: indexPath) as! CodeTableViewCell
        cell.configureCell(indexPath: indexPath)
        return cell
    }
    
}

//MARK: - UITableViewDelegate Methods
extension CodeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let storboard = UIStoryboard.init(name: "ProgrammaticallyNavBar", bundle: nil)
            let viewController = storboard.instantiateViewController(withIdentifier: "CustomRightViewController") as! CustomRightViewController
            self.navigationController?.pushViewController(viewController, animated: true)
        case 1:
            let storboard = UIStoryboard.init(name: "ProgrammaticallyNavBar", bundle: nil)
            let viewController = storboard.instantiateViewController(withIdentifier: "CustomTitleCodeViewController") as! CustomTitleCodeViewController
            self.navigationController?.pushViewController(viewController, animated: true)
        case 2:
            let storboard = UIStoryboard.init(name: "ProgrammaticallyNavBar", bundle: nil)
            let viewController = storboard.instantiateViewController(withIdentifier: "NavigationPromptViewController") as! NavigationPromptViewController
            self.navigationController?.pushViewController(viewController, animated: true)
        case 3:
            let storboard = UIStoryboard.init(name: "ProgrammaticallyNavBar", bundle: nil)
            let viewController = storboard.instantiateViewController(withIdentifier: "LargeTitleViewController") as! LargeTitleViewController
            if #available(iOS 11.0, *) {
                self.navigationController?.pushViewController(viewController, animated: true)
            } else {
                // LargeTitle feature available in iOS 11 and later.
                let title = NSLocalizedString("LargeTitle message", comment: "")
                let alertController = UIAlertController(title: title, message: nil, preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: ""),
                                                        style: .default) { _ in })
                self.present(alertController, animated: true, completion: nil)
            }
        case 4:
            let storboard = UIStoryboard.init(name: "ProgrammaticallyNavBar", bundle: nil)
            let viewController = storboard.instantiateViewController(withIdentifier: "MultipleNavigationButtonViewController") as! MultipleNavigationButtonViewController
            self.navigationController?.pushViewController(viewController, animated: true)
        default:
            break
        }
    }
    
}
