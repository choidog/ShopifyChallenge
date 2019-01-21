//
//  HeaderItem.swift
//  ShopifyChallenge
//
//  Created by David Choi on 2019-01-15.
//  Copyright © 2019 David Choi. All rights reserved.
//

import Foundation

struct HeaderItem {
    var smalltitle: String?
    var bigTitle: String?
    var hideDivider : Bool?
    
    init(smallTitle: String, bigTitle: String, hideDiv: Bool) {
        self.smalltitle  = smallTitle
        self.bigTitle = bigTitle
        self.hideDivider = hideDiv
    }
}
