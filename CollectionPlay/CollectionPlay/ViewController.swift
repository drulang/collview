//
//  ViewController.swift
//  CollectionPlay
//
//  Created by Dru Lang on 3/21/17.
//  Copyright © 2017 Dru Lang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let collectionView  :UICollectionView
    private let layout          = UICollectionViewFlowLayout()
    

    //MARK: Constructors
    required init?(coder aDecoder: NSCoder) {
        collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)

        super.init(coder: aDecoder)
    }
    

    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.frame = view.bounds
        collectionView.dataSource = self
        collectionView.backgroundColor = UIColor.white
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")

        view.addSubview(collectionView)
    }

}


//MARK: CollectionViewDataSource
extension ViewController : UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        cell.backgroundColor = UIColor.green
        
        return cell
    }
}
