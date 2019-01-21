//
//  CustomCollectionTableViewCell.swift
//  ShopifyChallenge
//
//  Created by David Choi on 2019-01-20.
//  Copyright © 2019 David Choi. All rights reserved.
//

import UIKit

class CustomCollectionTableViewCell: UITableViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupCell()
    }
    
    func addCollection(collection: CustomCollection){
        collectionCardView.collection = collection
        self.addSubview(collectionCardView)
        collectionCardView.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 2, leftConstant: 2, bottomConstant: 2, rightConstant: 2, widthConstant: 0, heightConstant: 436)    }
    
    var collectionCardView: CollectionCardCell = {
        let view = CollectionCardCell()
        return view
    }()
    
    func setupCell(){
        var viewFrame = self.frame
        viewFrame.size.height = 95
        self.frame = viewFrame
    }
    
}
