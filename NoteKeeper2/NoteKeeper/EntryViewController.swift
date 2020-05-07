import UIKit

class EntryViewController: UIViewController, UITextViewDelegate, UITextFieldDelegate {
    
    @IBOutlet var titleField: UITextField!
    @IBOutlet var noteField: UITextView!

    public var completion: ((String, String) -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleField.becomeFirstResponder()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(didTapSave))
    
        titleField.layer.cornerRadius = 12
        titleField.setBottomBorder()
        titleField.layer.shadowColor = UIColor.brown.cgColor
        titleField.text = "Title here"
        titleField.textColor = UIColor.lightGray
        titleField.returnKeyType = .done
        titleField.delegate = self

        noteField.layer.cornerRadius = 12
        noteField.text = "Type notes here..."
        noteField.textColor = UIColor.lightGray
        noteField.returnKeyType = .done
        noteField.delegate = self
        
            
    }
    
    // Title placeholder
    
    func textFieldDidBeginEditing(_ textView: UITextField) {
        if textView.text == "Title here" {
            textView.text = ""
            textView.textColor = UIColor.black
        }
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if string == "\n" {
            textField.resignFirstResponder()
        }
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField.text == "" {
             textField.text = "Title here"
             textField.textColor = UIColor.lightGray
        }
    }
    
    // Notes placeholder
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.text == "Type notes here..." {
            textView.text = ""
            textView.textColor = UIColor.black
        }
    }
    
    // Save button
    
    @objc func didTapSave() {
        if let text = titleField.text, !text.isEmpty, !noteField.text.isEmpty {
            completion?(text, noteField.text)
        }
    }


}

