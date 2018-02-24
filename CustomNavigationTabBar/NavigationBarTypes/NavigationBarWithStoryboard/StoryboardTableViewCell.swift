//
//  StoryboardTableViewCell.swift
//  CustomNavigationTabBar
//
//  Created by Aman Gupta on 08/02/18.
//  Copyright © 2018 developerFly. All rights reserved.
//

import UIKit

class StoryboardTableViewCell: UITableViewCell {
    //MARK: - IBOutlets
    @IBOutlet weak var labelDecription: UILabel!
    @IBOutlet weak var labelTitle: UILabel!
    
    //MARK: - Cell Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    //MARK: - Configure Cell
    func configureCell(indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            self.labelTitle.text = "NavItem And Bar Button"
            self.labelDecription.text = "Aissign navigation bar button by code"
        case 1:
            self.labelTitle.text = "Custom navigation view"
            self.labelDecription.text = "Assign custom navigation bar by code"
        case 2:
            self.labelTitle.text = "Navigation prompt"
            self.labelDecription.text = "NavigationBar promt by code"
        case 3:
            self.labelTitle.text = "Larg navigation title"
            self.labelDecription.text = "Enable larg navigation title in iOS 11"
        case 4:
            self.labelTitle.text = "Multiple navigation "
            self.labelDecription.text = "Directly assign Custom title view by storyboard"
            
        default:
            break
        }
    }
    
}
