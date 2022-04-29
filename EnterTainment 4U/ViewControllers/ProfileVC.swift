//
//  ProfileVC.swift


import UIKit

class ProfileVC: UIViewController {

    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPhoneNumber: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var btnSaveClick: UIButton!
    @IBOutlet weak var btnPaymentInfo: UIButton!
    @IBOutlet weak var btnLogout: UIButton!
    
    @IBAction func btnClick(_ sender: UIButton) {
        if sender == btnPaymentInfo {
            if let vc = UIStoryboard.main.instantiateViewController(withClass: PaymentVC.self) {
                self.navigationController?.pushViewController(vc, animated: true)
            }
        }else if sender == btnLogout {
            UIApplication.shared.setStart()
        }else {
            Alert.shared.showAlert(message: "Your Profile has been Updated !!!", completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.txtEmail.isUserInteractionEnabled = false
        // Do any additional setup after loading the view.
    }
}
