//
//  NotificationsViewController.swift
//  wanasahProject
//
//  Created by Apple on 12/04/2022.
//

import UIKit

class NotificationsViewController: UIViewController {

    @IBOutlet weak var notificationTableView: UITableView!
    @IBOutlet weak var topView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topView.roundCorners([.bottomLeft, .bottomRight,], radius: 30)
        
        notificationTableView.delegate = self
        notificationTableView.dataSource = self

        // Do any additional setup after loading the view.
    }

}

extension NotificationsViewController: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = notificationTableView.dequeueReusableCell(withIdentifier: "notificationsCell", for: indexPath) as! NotificationsTableViewCell
        
        if(indexPath.row == 0 || indexPath.row == 1 )
        {
            cell.roundView.isHidden = false
        }
        else
        {
            cell.roundView.isHidden = true
        }
        cell.bellImage.image = UIImage(named: "bellMegaIcon")
        cell.titleLabel.text = "Title"
        cell.descriptionLabel.text = "In publishing and graphic design, Lorem ipsum is a placeholder text commonly."
        cell.timeLabel.text = "18/9/2021"
        cell.nowLabel.text = "Now"
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
}
