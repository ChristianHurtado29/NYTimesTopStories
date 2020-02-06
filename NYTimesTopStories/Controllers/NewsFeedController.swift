//
//  NewsFeedController.swift
//  NYTimesTopStories
//
//  Created by Brendon Cecilio on 2/6/20.
//  Copyright © 2020 Brendon Cecilio. All rights reserved.
//

import UIKit

class NewsFeedController: UIViewController {
    
    private let newsFeed = NewsFeedView()
    
    override func loadView() {
        view = newsFeed
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        newsFeed.collectionView.dataSource = self
        newsFeed.collectionView.delegate = self
        
        // register a collection view cell
        newsFeed.collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "articleCell")
    }
    
}

extension NewsFeedController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "articleCell", for: indexPath)
        cell.backgroundColor = .white
        return cell
    }
}

extension NewsFeedController: UICollectionViewDelegateFlowLayout {
    // return size
    // itemHeight
    // itemWidth
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let maxSize: CGSize = UIScreen.main.bounds.size
        let itemWidth: CGFloat = maxSize.width
        let itemHeight: CGFloat = maxSize.height * 0.3 // 30&
        return CGSize(width: itemWidth, height: itemHeight)
    }
}
