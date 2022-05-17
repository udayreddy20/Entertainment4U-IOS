//
//  TrendingModel.swift

import Foundation
class TrendingModel {
    
    var name:String
    var image:String
    var docID:String
    
    init(docID: String,name:String,image:String) {
        self.name = name
        self.image = image
        self.docID = docID
    }
}
