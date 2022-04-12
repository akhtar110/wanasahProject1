//
//  ContentsViewController.swift
//  wanasahProject
//
//  Created by Apple on 09/04/2022.
//

import UIKit

class ContentsViewController: UIViewController {
    
    let labelArray = ["Room 2", "Master 1","BRoom 2","Garage", "AC","Room 2"]
    
    let imagesArray = ["room2","master1", "bath1", "garage","air-conditioner", "room2"]

    @IBOutlet weak var topImage: UIImageView!
    @IBOutlet weak var contentsCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topImage.roundCorners([.bottomLeft, .bottomRight,], radius: 30)
        
        contentsCollectionView.delegate = self
        contentsCollectionView.dataSource = self
    }
}
extension ContentsViewController: UICollectionViewDelegate, UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = contentsCollectionView.dequeueReusableCell(withReuseIdentifier: "contentsCell", for: indexPath) as! ContentsCollectionViewCell
        
        cell.imageOutlet.image = UIImage(named: imagesArray[indexPath.row])
        cell.labelText.text = labelArray[indexPath.row]
        
        return cell
    }
    
    
}
