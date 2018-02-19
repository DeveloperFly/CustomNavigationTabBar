//
//  CodeTableViewCell.swift
//  CustomNavigationTabBar
//
//  Created by Aman Gupta on 19/02/18.
//  Copyright © 2018 developerFly. All rights reserved.
//

import UIKit

class CodeTableViewCell: UITableViewCell {
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
            self.labelTitle.text = "Assign navItem And Bar Button"
            self.labelDecription.text = "Directly assign Navigation bar button and title by storyboard, single item button"
        case 1:
            self.labelTitle.text = "Assign Multiple bar Button"
            self.labelDecription.text = "Directly assign Multiple Navigation bar button and title by storyboard, single item button"
        case 2:
            self.labelTitle.text = "Assign Custom Multiple bar Button"
            self.labelDecription.text = "Directly assign Multiple Navigation bar button Over UIView."
        case 3:
            self.labelTitle.text = "Assign Navigation prompt"
            self.labelDecription.text = "Directly assign Navigation prompt by storyboard"
        case 4:
            self.labelTitle.text = "Assign Custom title view "
            self.labelDecription.text = "Directly assign Custom title view by storyboard"
            
        default:
            break
        }
    }
    
}
