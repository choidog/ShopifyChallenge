//
//  CollectionCardCell.swift
//  ShopifyChallenge
//
//  Created by David Choi on 2019-01-15.
//  Copyright © 2019 David Choi. All rights reserved.
//

import Foundation
import LBTAComponents

class CollectionCardCell: DatasourceCell {
    
    override func setupViews() {
        super.setupViews()
        layoutViews()
    }
    
    override var datasourceItem: Any? {
        didSet {
            if let collection = self.datasourceItem as? CustomCollection {
                //backgroundImage.image = UIImage(named: (collection.image))
                title.text = collection.title
                bodyHtml.text = collection.bodyhtml
            }
        }
    }
    
    func bindData(collection: CustomCollection) {
        //backgroundImage.image = UIImage(named: (collection.image))
        title.text = collection.title
        bodyHtml.text = collection.bodyhtml
    }
    
    
    var cardView : CardView = {
        let cv = CardView()
        cv.cornerRadius = 20
        return cv
    }()
    
    var backgroundImage: UIImageView = {
        let img = UIImageView()
        img.image = UIImage()
        img.contentMode = .scaleAspectFit
        return img
    }()
    
    var title: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12)
        label.text = "EXPLORE".uppercased()
        //label.textColor = UIColor(white: 1, alpha: 0.4)
        return label
    }()
    
    var bodyHtml : UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.numberOfLines = 0
        label.text = "Pimp up your home with the best design classics and smart helpers"
        //label.textColor = UIColor(white: 1, alpha: 0.4)
        return label
    }()
    
    var whiteBG : UIView = {
        let whiteBG = UIView()
        whiteBG.layer.cornerRadius = 12
        whiteBG.backgroundColor = UIColor.white
        return whiteBG
    }()
    
    var whiteBGCornerErase : UIView = {
        let whiteBG = UIView()
        whiteBG.backgroundColor = UIColor.white
        return whiteBG
    }()
    
    
    func layoutViews() {
        addSubview(cardView)
        addSubview(backgroundImage)
        addSubview(title)
        addSubview(bodyHtml)
        
        backgroundImage.addSubview(whiteBGCornerErase)
        backgroundImage.addSubview(whiteBG)
        
        setupConstraints()
    }
    
    func setupConstraints() {
        cardView.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 8, leftConstant: 16, bottomConstant: 8, rightConstant: 16, widthConstant: 0, heightConstant: 0)
        
        backgroundImage.anchor(cardView.topAnchor, left: cardView.leftAnchor, bottom: cardView.bottomAnchor, right: cardView.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        title.anchor(backgroundImage.topAnchor, left: backgroundImage.leftAnchor, bottom: nil, right: nil, topConstant: 16, leftConstant: 16, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        //        title.anchor(smallTitle.bottomAnchor, left: smallTitle.leftAnchor, bottom: nil, right: imageBg.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 120, widthConstant: 0, heightConstant: 0)
        
        bodyHtml.anchor(nil, left: title.leftAnchor, bottom: bottomAnchor, right: backgroundImage.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 16, rightConstant: 16, widthConstant: 0, heightConstant: 0)
        
        //        appImage.anchor(imageBg.topAnchor, left: imageBg.leftAnchor, bottom: nil, right: nil, topConstant: 16, leftConstant: 16, bottomConstant: 0, rightConstant: 0, widthConstant: 60, heightConstant: 60)
        //
        //        getBtn.anchor(appDetails.topAnchor, left: nil, bottom: nil, right: imageBg.rightAnchor, topConstant: 0, leftConstant: 16, bottomConstant: 0, rightConstant: 16, widthConstant: 50, heightConstant: 0)
        //
        //        appDetails.anchor(appImage.topAnchor, left: appImage.rightAnchor, bottom: nil, right: getBtn.leftAnchor, topConstant: 0, leftConstant: 8, bottomConstant: 8, rightConstant: 16, widthConstant: 0, heightConstant: 0)
    }
}
