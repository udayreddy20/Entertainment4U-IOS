//
//  HomeVC.swift

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var colImageList: UICollectionView!
    @IBOutlet weak var colGernsList: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.colImageList.delegate = self
        self.colImageList.dataSource = self
        self.colGernsList.delegate = self
        self.colGernsList.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }

}


extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout & UINavigationControllerDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == colImageList {
            return 5
        }
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == colImageList {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TrendingCell", for: indexPath) as! TrendingCell
            cell.vwMovie.layer.cornerRadius = 10
            cell.vwMovie.clipsToBounds = true
            return cell
        }
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: "GernesCell", for: indexPath) as! GernesCell
        item.vwCell.tag = (indexPath.section * 1000) + indexPath.row
        item.vwCell.clipsToBounds = true
        item.vwCell.layer.cornerRadius = 8.0
        item.vwCell.layer.borderColor = UIColor.lightGray.withAlphaComponent(0.15).cgColor
        item.vwCell.layer.borderWidth = 1.0
        let tap = UITapGestureRecognizer()
        tap.addAction {
            if let vc = UIStoryboard.main.instantiateViewController(withClass: MovieListVC.self) {
                self.navigationController?.pushViewController(vc, animated: true)
            }
        }
        item.consWidth.constant = ((150/375) * UIScreen.main.bounds.width)
        item.vwCell.addGestureRecognizer(tap)
        return item
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == colImageList {
            return CGSize(width: UIScreen.main.bounds.width - 40, height: ((200/812) * UIScreen.main.bounds.height))
        }
        return CGSize(width: ((UIScreen.main.bounds.width - 50) / 2), height: ((122/812) * self.view.frame.height))
    }

}



class TrendingCell: UICollectionViewCell {
    @IBOutlet weak var imgMovie: UIImageView!
    @IBOutlet weak var vwMovie: UIView!
    
}

class GernesCell: UICollectionViewCell {
    @IBOutlet weak var imgLogo: UIImageView!
    @IBOutlet weak var vwCell: UIView!
    @IBOutlet weak var lblTitle: UIView!
    @IBOutlet weak var consWidth: NSLayoutConstraint!
}
