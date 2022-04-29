//
//  MovieListVC.swift

import UIKit

class MovieListVC: UIViewController {

    @IBOutlet weak var tblList: UITableView!
    @IBOutlet weak var vwMainback: UIView!
    
    func setUpView(){
        self.tblList.delegate = self
        self.tblList.dataSource = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpView()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
}


extension MovieListVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
        cell.btnBook.isUserInteractionEnabled = false
        
//        cell.imgFav.isUserInteractionEnabled = true
        cell.imgFav.addAction(for: .touchUpInside) {
//            Alert.shared.showAlert(message: "Movie has been added as favourite !!!", completion: nil)
            Alert.shared.showAlert(message: "Movie has been added as favourite !!!"){ (true) in
                self.navigationController?.popViewController(animated: true)
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
    
    
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//    }
    
}

class MovieCell : UITableViewCell {
    @IBOutlet weak var lblTitle: GradientLabel!
    @IBOutlet weak var lblStar: UILabel!
    @IBOutlet weak var imgMovie: UIImageView!
    @IBOutlet weak var imgFav: UIButton!
    @IBOutlet weak var btnBook: UIButton!
    @IBOutlet weak var vwCell: UIView!
    
    
    override func awakeFromNib() {
        self.vwCell.layer.cornerRadius = 20
        self.imgMovie.layer.cornerRadius = 20
        self.btnBook.layer.cornerRadius = 5
        
        self.lblTitle.gradientColors = [
            UIColor.hexStringToUIColor(hex: "#6043F5").cgColor,
            UIColor.hexStringToUIColor(hex: "#836EF1").cgColor
        ]
    }
}
