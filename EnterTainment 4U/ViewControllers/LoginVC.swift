//
//  LoginVC.swift


import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var lblWelcome: UILabel!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var btnLogin: BlueThemeButton!
    @IBOutlet weak var bntForgotPassword: UIButton!
    @IBOutlet weak var lblSignUp: UILabel!
    
    var flag: Bool = true
    
    func validation() -> String {
        if self.txtEmail.text?.trim() == "" {
            return "Please enter email"
        }else if self.txtPassword.text?.trim() == "" {
            return "Please enter password"
        }else if (self.txtPassword.text?.trim().count)! < 8 {
            return "Please enter 8 character for password"
        }
        return ""
    }
    
    func setUpView(){
        self.applyStyle()
        
        self.lblSignUp.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer()
        tap.addAction {
            if let vc = UIStoryboard.main.instantiateViewController(withClass: SignUpVC.self) {
                
                self.navigationController?.pushViewController(vc, animated: true)
            }
        }
        self.lblSignUp.addGestureRecognizer(tap)
    }
    
    func applyStyle(){
        self.lblWelcome.font = UIFont(name: "bold", size: 16.0)
        self.lblWelcome.textColor = UIColor.hexStringToUIColor(hex: "#9D9998")
        self.txtPassword.isSecureTextEntry = true
    }
    
    //MARK:- Action Method
    @IBAction func btnLoginClick(_ sender: UIButton) {
        self.flag = false
        let error = self.validation()
        if error == "" {
            UIApplication.shared.setTab()
        }else{
            Alert.shared.showAlert(message: error, completion: nil)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpView()
        // Do any additional setup after loading the view.
    }
}
