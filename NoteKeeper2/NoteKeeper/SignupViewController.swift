import UIKit

class SignupViewController: UIViewController {

    @IBOutlet weak var firstNameBox: UITextField!
    @IBOutlet weak var lastNameBox: UITextField!
    @IBOutlet weak var emailBox: UITextField!
    @IBOutlet weak var passBox: UITextField!
    @IBOutlet weak var confirmPassBox: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var goBackButton: UIButton!
    
    
    override func viewDidLoad() {
            super.viewDidLoad()
            
            signUpButton.setRoundedCorners()
        
            goBackButton.setRoundedCorners()
            
            firstNameBox.setBottomBorder()
            lastNameBox.setBottomBorder()
            emailBox.setBottomBorder()
            
            passBox.setBottomBorder()
            passBox.isSecureTextEntry = true
        
            confirmPassBox.setBottomBorder()
            confirmPassBox.isSecureTextEntry = true
            
            
            signUpButton.addTarget(self, action: #selector(self.didCreate), for: .touchUpInside)
        
            goBackButton.addTarget(self, action: #selector(self.didCreate), for: .touchUpInside)
            
            
        }
        
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            emailBox.resignFirstResponder()
            return true
        }
        
        @IBAction func didCreate() {
            let vc = storyboard?.instantiateViewController(identifier: "login-vc") as! ViewController
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true)
        }
        
    }

