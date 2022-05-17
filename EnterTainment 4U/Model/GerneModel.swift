//
//  GerneModel.swift


import Foundation
class GerneModel {
    
    var name:String
    var docId: String
    var image: String
    
    init(docId:String, name:String, image:String) {
        self.docId = docId
        self.name = name
        self.image = image
    }
}
