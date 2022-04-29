//
//  TheaterList.swift


import UIKit

class TheaterListVC: UIViewController {

    @IBOutlet weak var tbllist: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tbllist.delegate = self
        self.tbllist.dataSource = self
        // Do any additional setup after loading the view.
    }
}

extension TheaterListVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "TheaterCell", for: indexPath) as! TheaterCell
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = UIStoryboard.main.instantiateViewController(withClass: AddNewCardVC.self) {
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}


class TheaterCell: UITableViewCell {
    @IBOutlet weak var vwCell: UIView!
    @IBOutlet weak var lblTName: UILabel!
    @IBOutlet weak var lblLocation: UILabel!
    @IBOutlet weak var lblRatings: UILabel!
    @IBOutlet weak var lblIsOpen: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.vwCell.layer.cornerRadius = 10.0
    }
}
