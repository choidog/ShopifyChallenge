// To parse the JSON, add this file to your project and do:
//
//   let collections = try? newJSONDecoder().decode(Collections.self, from: jsonData)
//   let collects = try? newJSONDecoder().decode(Collects.self, from: jsonData)
//   let products = try? newJSONDecoder().decode(Products.self, from: jsonData)
//
// To read values from URLs:
//
//   let task = URLSession.shared.collectionsTask(with: url) { collections, response, error in
//     if let collections = collections {
//       ...
//     }
//   }
//   task.resume()
//
//   let task = URLSession.shared.collectsTask(with: url) { collects, response, error in
//     if let collects = collects {
//       ...
//     }
//   }
//   task.resume()
//
//   let task = URLSession.shared.productsTask(with: url) { products, response, error in
//     if let products = products {
//       ...
//     }
//   }
//   task.resume()

import Foundation

struct Collections: Codable {
    let customCollections: [CustomCollection]
    
    enum CodingKeys: String, CodingKey {
        case customCollections = "custom_collections"
    }
}

struct CustomCollection: Codable {
    let id: Int
    let title: String
    let bodyhtml: String
    let image: CustomCollectionImage
    
    enum CodingKeys: String, CodingKey {
        case id, title
        case bodyhtml = "body_html"
        case image
    }
}

struct CustomCollectionImage: Codable {
    let width, height: Int
    let src: String
    
    enum CodingKeys: String, CodingKey {
        case width, height, src
    }
}

