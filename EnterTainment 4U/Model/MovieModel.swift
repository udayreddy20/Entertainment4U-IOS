//
//  MovieModel.swift


import Foundation

class MovieModel {
    
    var name: String
    var rate: String
    var review: String
    var docID: String
    var gerneName: String
    var gerneID: String
    var price: String
    var imagePath: String
    
    init(docID: String,name:String,rate:String,gerneID:String,gerneName:String,review:String,price:String,imagePath: String) {
        self.name = name
        self.rate = rate
        self.docID = docID
        self.gerneID = gerneID
        self.gerneName = gerneName
        self.review = review
        self.price = price
        self.imagePath = imagePath
    }
}
