import UIKit

class NoteViewController: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var noteLabel: UITextView!
    @IBOutlet weak var shareButton: UIButton!
    
    public var noteTitle: String = ""
    public var note: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = noteTitle
        noteLabel.text = note
        
        shareButton.addTarget(self, action: #selector(self.share), for: .touchUpInside)
        
    }
    
    @IBAction func share(_ sender:UIButton) {
        
        let activityController = UIActivityViewController(activityItems: [self.noteLabel.text ?? "", self.titleLabel.text ?? ""], applicationActivities: nil)
        
        self.present(activityController, animated: true, completion: nil)
        
    }
    

}
