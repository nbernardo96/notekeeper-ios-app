import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var roundedCornerButton: UIButton!
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var emailBox: UITextField!
    @IBOutlet weak var passBox: UITextField!
    @IBOutlet weak var signupButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        roundedCornerButton.setRoundedCorners()
        roundedCornerButton.layer.shadowColor = UIColor.gray.cgColor
        roundedCornerButton.layer.shadowOffset = CGSize(width: 5, height: 5)
        roundedCornerButton.layer.shadowRadius = 5
        roundedCornerButton.layer.shadowOpacity = 0.5
        
        signupButton.setRoundedCorners()
        signupButton.layer.shadowColor = UIColor.gray.cgColor
        signupButton.layer.shadowOffset = CGSize(width: 5, height: 5)
        signupButton.layer.shadowRadius = 5
        signupButton.layer.shadowOpacity = 0.5
        
        myView.layer.cornerRadius = 12
        myView.layer.shadowColor = UIColor.brown.cgColor
        myView.layer.shadowOffset = CGSize(width: 5, height: 5)
        myView.layer.shadowRadius = 5
        myView.layer.shadowOpacity = 0.5
        
        emailBox.setBottomBorder()
        
        passBox.setBottomBorder()
        passBox.isSecureTextEntry = true
        
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
        
        signupButton.addTarget(self, action: #selector(self.didSignUp), for: .touchUpInside)
        
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        emailBox.resignFirstResponder()
        return true
    }
    
    @IBAction func didLogin() {
        let vc = storyboard?.instantiateViewController(identifier: "home-vc") as! HomeViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    @IBAction func didSignUp() {
        let vc = storyboard?.instantiateViewController(identifier: "signup-vc") as! SignupViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
}

extension UITextField {
    func setBottomBorder() {
        self.borderStyle = .none
        self.layer.backgroundColor = UIColor.white.cgColor

        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.brown.cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        self.layer.shadowOpacity = 0.5
        self.layer.shadowRadius = 0.0
    }
}

extension UIButton {
    func setRoundedCorners() {
        self.layer.cornerRadius = 12
    }
}


