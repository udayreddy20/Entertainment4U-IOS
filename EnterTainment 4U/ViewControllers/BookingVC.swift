//
//  BookingVC.swift

import UIKit

class BookingVC: UIViewController {

    
    @IBOutlet weak var tblList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tblList.delegate = self
        self.tblList.dataSource = self

        // Do any additional setup after loading the view.
    }

}

extension BookingVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "BookingCell", for: indexPath) as! BookingCell
        cell.selectionStyle = .none
        return cell
    }
    
}

class BookingCell : UITableViewCell {
    @IBOutlet weak var vwCell: UIView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblTName: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblBooking: UILabel!
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var lblSeatNumber: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.vwCell.layer.cornerRadius = 10.0
    }
}
