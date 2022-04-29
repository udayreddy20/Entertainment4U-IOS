//
//  PaymentVC.swift

import UIKit

class PaymentVC: UIViewController {

    
    
    @IBOutlet weak var tblList: SelfSizedTableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tblList.delegate = self
        self.tblList.dataSource = self
        
        
        // Do any additional setup after loading the view.
    }

}

extension PaymentVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CardCell", for: indexPath) as! CardCell
        
        cell.vwCell.layer.cornerRadius = 10
        cell.btnSelected.isHidden = true
        if indexPath.row == 0 {
            cell.btnSelected.isHidden = false
        }
        return cell
    }
}



class CardCell: UITableViewCell {
    @IBOutlet weak var lblCardName: UILabel!
    @IBOutlet weak var lblCardNumber: UILabel!
    @IBOutlet weak var imgLogo: UIImageView!
    @IBOutlet weak var vwCell: UIView!
    @IBOutlet weak var btnSelected: UIButton!
    
    var btnFavAct: (()->())?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        self.applyStyle()
        DispatchQueue.main.async {
            self.vwCell.backgroundColor = UIColor.hexStringToUIColor(hex: "#6043F5")
            self.btnSelected.layer.cornerRadius = 5
//            self.btnSelected.ba
        }
    }
}
