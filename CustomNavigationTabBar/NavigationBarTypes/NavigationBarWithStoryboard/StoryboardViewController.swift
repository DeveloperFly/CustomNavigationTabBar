//
//  StoryboardViewController.swift
//  CustomNavigationTabBar
//
//  Created by Aman Gupta on 08/02/18.
//  Copyright © 2018 developerFly. All rights reserved.
//

import UIKit

class StoryboardViewController: UIViewController {

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

//MARK: -
extension StoryboardViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StoryboardTableViewCell", for: indexPath) as! StoryboardTableViewCell
        cell.configureCell(indexPath: indexPath)
        return cell
    }

}

extension StoryboardViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let storboard = UIStoryboard.init(name: "StoryboardNavigationBar", bundle: nil)
            let viewController = storboard.instantiateViewController(withIdentifier: "CustomStoryboradViewController") as! CustomStoryboradViewController
            self.navigationController?.pushViewController(viewController, animated: true)
        case 1:
            let storboard = UIStoryboard.init(name: "StoryboardNavigationBar", bundle: nil)
            let viewController = storboard.instantiateViewController(withIdentifier: "MultipleNavBarButtonViewController") as! MultipleNavBarButtonViewController
            self.navigationController?.pushViewController(viewController, animated: true)
        case 2:
            let storboard = UIStoryboard.init(name: "StoryboardNavigationBar", bundle: nil)
            let viewController = storboard.instantiateViewController(withIdentifier: "CustomNavButtonStoryBoard") as! CustomNavButtonStoryBoard
            self.navigationController?.pushViewController(viewController, animated: true)
        case 3:
            let storboard = UIStoryboard.init(name: "StoryboardNavigationBar", bundle: nil)
            let viewController = storboard.instantiateViewController(withIdentifier: "NavigationPromtSBViewController") as! NavigationPromtSBViewController
            self.navigationController?.pushViewController(viewController, animated: true)
        case 4:
            let storboard = UIStoryboard.init(name: "StoryboardNavigationBar", bundle: nil)
            let viewController = storboard.instantiateViewController(withIdentifier: "CustomTitleViewController") as! CustomTitleViewController
            self.navigationController?.pushViewController(viewController, animated: true)
        default:
            break
        }
    }

}
