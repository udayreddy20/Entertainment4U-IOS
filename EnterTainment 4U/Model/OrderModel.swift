//
//  OrderModel.swift


import Foundation

class OrderModel {
    
    var bookingNumber: String
    var movieName: String
    var theaterName: String
    var date: String
    var seatNumber: String
    var price: String
    var email: String
    var docID: String
    
    init(docID: String,email: String,bookingNumber: String, movieName:String, theaterName:String,date:String,seatNumber:String,price:String) {
        self.movieName = movieName
        self.theaterName = theaterName
        self.bookingNumber = bookingNumber
        self.date = date
        self.seatNumber = seatNumber
        self.price = price
        self.email = email
        self.docID = docID
    }
}
