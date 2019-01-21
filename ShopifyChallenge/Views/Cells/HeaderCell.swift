//
//  HeaderCell.swift
//  ShopifyChallenge
//
//  Created by David Choi on 2019-01-15.
//  Copyright © 2019 David Choi. All rights reserved.
//

import UIKit
import LBTAComponents

class HeaderCell: DatasourceCell {
    
    var headerItem : HeaderItem? {
        
        didSet{
            smallTitle.text = headerItem?.smalltitle
            bigTitle.text = headerItem?.bigTitle
            if let hide = headerItem?.hideDivider{
            divider.isHidden = hide
            
            }
        }
        
    }
    
    var smallTitle : UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = UIColor.white
        return label
    }()
    
    var bigTitle : UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 28)
        label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        return label
    }()
    
    var avaImg : UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "profile")
        img.layer.cornerRadius = 20
        img.clipsToBounds = true
        img.backgroundColor = UIColor.white
        return img
    }()
    
    var divider : UIView = {
        let divi = UIView()
        divi.backgroundColor = .lightGray
        return divi
    }()
    
    override func setupViews() {
        super.setupViews()
        layoutViews()
        
    }
    
    func hideDivider() {
        divider.isHidden = true
    }
    
    func hideSmallTitle() {
        smallTitle.isHidden = true
    }
    
    
    func layoutViews() {
        addSubview(smallTitle)
        addSubview(bigTitle)
        addSubview(avaImg)
        addSubview(divider)
        
        
        self.backgroundColor = #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)
        
        smallTitle.anchor(topAnchor, left: leftAnchor, bottom: nil, right: nil, topConstant: 36, leftConstant: 16, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        bigTitle.anchor(smallTitle.bottomAnchor, left: smallTitle.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        avaImg.anchor(topAnchor, left: nil, bottom: nil, right: rightAnchor, topConstant: 40, leftConstant: 0, bottomConstant: 0, rightConstant: 16, widthConstant: 41, heightConstant: 41)
        
        divider.anchor(nil, left: bigTitle.leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0.5)
        
    }
    
}
