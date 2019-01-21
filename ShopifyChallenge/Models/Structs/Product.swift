//
//  Products.swift
//  ShopifyChallenge
//
//  Created by David Choi on 2019-01-15.
//  Copyright © 2019 David Choi. All rights reserved.
//

import Foundation

struct Products: Codable {
    let products: [Product]
}

struct Product: Codable {
    let id: Int
    let title, bodyhtml, vendor, productType: String
    let variants: [Variant]
    let images: [ProductImage]
    let image: ProductImage
    
    enum CodingKeys: String, CodingKey {
        case id, title, vendor, variants, images, image
        case bodyhtml = "body_html"
        case productType = "product_type"
    }
}

struct ProductImage: Codable {
    let id, productid, width, height: Int
    let src: String
    let variantids: [JSONAny]
    
    enum CodingKeys: String, CodingKey {
        case id, width, height, src
        case productid = "product_id"
        case variantids = "variant_ids"
    }
}

struct Variant: Codable {
    let id, productid: Int
    let title: String
    let imageid: JSONNull
    let inventoryQuantity: Int
    let price: String
    
    enum CodingKeys: String, CodingKey {
        case id, price, title
        case productid = "product_id"
        case imageid = "image_id"
        case inventoryQuantity = "inventory_quantity"
    }
}
