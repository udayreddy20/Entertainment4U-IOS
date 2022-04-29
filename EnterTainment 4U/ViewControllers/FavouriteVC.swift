//
//  FavouriteVC.swift


import UIKit

class FavouriteVC: UIViewController {

    @IBOutlet weak var tblList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tblList.delegate = self
        self.tblList.dataSource = self
        // Do any additional setup after loading the view.
    }
}


extension FavouriteVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
        cell.btnBook.isUserInteractionEnabled = false
        cell.imgFav.addAction(for: .touchUpInside) {
            if cell.imgFav.isSelected {
                Alert.shared.showAlert(message: "Movie has been added as favourite !!!", completion: nil)
            }else{
                Alert.shared.showAlert(message: "Movie has been removed from favourite !!!", completion: nil)
                self.tblList.reloadData()
            }
        }
        
        let tap = UITapGestureRecognizer()
        tap.addAction {
            if let vc = UIStoryboard.main.instantiateViewController(withClass: CheckDatesVC.self) {
                self.navigationController?.pushViewController(vc, animated: true)
            }
        }
        cell.vwCell.isUserInteractionEnabled = true
        cell.vwCell.addGestureRecognizer(tap)
        cell.selectionStyle = .none
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = UIStoryboard.main.instantiateViewController(withClass: CheckDatesVC.self) {
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}

