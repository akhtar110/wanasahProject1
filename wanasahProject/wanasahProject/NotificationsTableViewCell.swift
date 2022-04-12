//
//  NotificationsTableViewCell.swift
//  wanasahProject
//
//  Created by Apple on 12/04/2022.
//

import UIKit

class NotificationsTableViewCell: UITableViewCell {

    @IBOutlet weak var roundView: CustomView!
    @IBOutlet weak var bellImage: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var nowLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
