//
//  TheaterModel.swift

import Foundation


class TheaterModel {
    
    var name: String
    var rate: String
    var row: String
    var docID: String
    var column: String
    var location: String
    
    init(docID: String,name:String,rate:String,row:String,column:String,location:String) {
        self.name = name
        self.rate = rate
        self.docID = docID
        self.row = row
        self.column = column
        self.location = location
    }
}
