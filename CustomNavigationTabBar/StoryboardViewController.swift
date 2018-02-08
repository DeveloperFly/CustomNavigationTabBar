//
//  StoryboardViewController.swift
//  CustomNavigationTabBar
//
//  Created by Aman Gupta on 08/02/18.
//  Copyright © 2018 developerFly. All rights reserved.
//

import UIKit

class StoryboardViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension StoryboardViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StoryboardTableViewCell", for: indexPath) as! StoryboardTableViewCell
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
        default:
            break
        }
    }

}
