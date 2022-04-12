//
//  HomeViewController.swift
//  wanasahProject
//
//  Created by Apple on 07/04/2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var jewelleryCollectionView: UICollectionView!
    @IBOutlet weak var nearbyCollectionView: UICollectionView!
    
    let categoriesArray =
    ["Resort", "Farms","Chalet","Stabl","Jakhor"]

    @IBOutlet weak var categoriesCollectionView: UICollectionView!
    @IBOutlet weak var firstView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstView.roundCorners([.bottomLeft, .bottomRight,], radius: 30)

        categoriesCollectionView.delegate = self
        categoriesCollectionView.dataSource = self
        
        nearbyCollectionView.delegate = self
        nearbyCollectionView.dataSource = self
        
        jewelleryCollectionView.delegate = self
        jewelleryCollectionView.dataSource = self
    }
}
extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if(collectionView == categoriesCollectionView)
        {
            return 5
        }
        else if(collectionView == nearbyCollectionView)
        {
            return 3
        }
        else
        {
            return 5
        }
       
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = categoriesCollectionView.dequeueReusableCell(withReuseIdentifier: "categoriesCell", for: indexPath) as! CategoriesCollectionViewCell
        
        if(collectionView == categoriesCollectionView)
        {
            cell.imageOutlet.image = UIImage(named: "collectPic")
            cell.imageOutlet.layer.cornerRadius = 5
            cell.labelText.text = categoriesArray[indexPath.row]
            
            
            return cell
        }
        else if(collectionView == nearbyCollectionView)
        {
            let cell = nearbyCollectionView.dequeueReusableCell(withReuseIdentifier: "nearbyCell", for: indexPath) as! NearbyCollectionViewCell
            
            
            //cell.mainView.roundCorners([.bottomLeft, .bottomRight,], radius: 10)
            cell.mainView.layer.cornerRadius = 10
            cell.imageOutlet.image = UIImage(named: "kdCollectionPic")
            cell.imageOutlet.layer.cornerRadius = 10
            cell.firstLabelText.text = "Villa Super Lux Finishing with Kitchen"
            cell.locationIcon.image = UIImage(named: "locationIcon")
            cell.locationText.text = "Bathroom - 1"
            cell.masterIcon.image = UIImage(named: "master")
            cell.masterText.text = "Master - 1"
            cell.roomIcon.image = UIImage(named: "room")
            cell.roomText.text = "Room - 2"
            cell.postIcon.image = UIImage(named: "posted")
            cell.postText.text = "Posted: 3 days ago"
            
            return cell
        }
        else
        {
            let cell = jewelleryCollectionView.dequeueReusableCell(withReuseIdentifier: "jewelleryCell", for: indexPath) as! JewelleryCollectionViewCell
            
            cell.mainView.layer.cornerRadius = 10
            cell.imageOutlet.image = UIImage(named: "kdCollectionPic")
            cell.imageOutlet.layer.cornerRadius = 10
            cell.firstLabel.text = "Villa Super Lux Finishing with Kitchen"
            cell.locationIcon.image = UIImage(named: "locationIcon")
            cell.locationText.text = "Bathroom - 1"
            cell.masterIcon.image = UIImage(named: "master")
            cell.masterText.text = "Master - 1"
            cell.roomIcon.image = UIImage(named: "room")
            cell.roomText.text = "Room - 2"
            cell.postIcon.image = UIImage(named: "posted")
            cell.postText.text = "Posted: 3 days ago"
            
            
            return cell
        }
    }
    
}
