//
//  StartVC.swift


import UIKit

class StartVC: UIViewController {

    @IBOutlet weak var btnEmail: UIButton!
    @IBOutlet weak var btnGoogle: UIButton!
    @IBOutlet weak var btnFacebook: UIButton!
    @IBOutlet weak var lblLogin: UILabel!
    
    
    
    func applyStyle(){
        self.lblLogin.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer()
        tap.addAction {
            if let vc = UIStoryboard.main.instantiateViewController(withClass: LoginVC.self) {
            self.navigationController?.pushViewController(vc, animated: true)
            }
        }
        self.lblLogin.addGestureRecognizer(tap)
        
        self.btnEmail.layer.cornerRadius = 16.0
        self.btnGoogle.layer.cornerRadius = 16.0
        self.btnFacebook.layer.cornerRadius = 16.0
    }
    
    @IBAction func btnSignUpWithEmailTapped(_ sender: UIButton) {
        if let vc = UIStoryboard.main.instantiateViewController(withClass: SignUpVC.self) {
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.applyStyle()
        // Do any additional setup after loading the view.
    }

}
