//
//  ViewController.swift
//  SNCollectionViewLayout
//
//  Created by ahmedAlmasri on 12/01/2018.
//  Copyright (c) 2018 ahmedAlmasri. All rights reserved.
//

import UIKit
import SNCollectionViewLayout


class MyCell: UICollectionViewCell {
    
    @IBOutlet weak var myLabel: UILabel!
}

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let snCollectionViewLayout = SNCollectionViewLayout()
        snCollectionViewLayout.fixedDivisionCount = 4 // Columns for .vertical, rows for .horizontal
        snCollectionViewLayout.delegate = self
        myCollectionView.collectionViewLayout = snCollectionViewLayout
    }
    
    
    func getRandomColor() -> UIColor {
        //Generate between 0 to 1
        let red:CGFloat = CGFloat(drand48())   
        let green:CGFloat = CGFloat(drand48()) 
        let blue:CGFloat = CGFloat(drand48())  
        
        return UIColor(red:red, green: green, blue: blue, alpha: 1.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 100 
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath) as! MyCell
        cell.myLabel.backgroundColor = getRandomColor() 
        cell.myLabel.text = "index : \(indexPath.row)"
        return cell 
    }
    
}

extension ViewController: SNCollectionViewLayoutDelegate {
    func scaleForItem(inCollectionView collectionView: UICollectionView, withLayout layout: UICollectionViewLayout, atIndexPath indexPath: IndexPath) -> UInt {
        if indexPath.row == 0 || indexPath.row == 3 || indexPath.row == 10 || indexPath.row == 70 {
            
            return 2 
        }
        return 1
    }
    
    
    
    
}
