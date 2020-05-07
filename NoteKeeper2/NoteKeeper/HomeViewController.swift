import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var classCardTableView: UITableView!
    @IBOutlet weak var signOutButton: UIButton!
    
    let pictures: [UIImage] = [UIImage(named: "coding.jpg")!, UIImage(named: "books.jpg")!, UIImage(named: "astronomy.jpg")!]
    let titles: [String] = ["CSC210", "ENG200", "ASTR300"]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signOutButton.addTarget(self, action: #selector(self.didSignOut), for: .touchUpInside)
    
    }
    
    func insertNewClass() {
        
    }
    
    // How many rows in the tableview?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    //Defines what cells are being used
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cardCell", for: indexPath) as! CardCell
         
        cell.configure(picture: pictures[indexPath.row], title: titles[indexPath.row])
        
        return cell
    }
    
    @IBAction func didSignOut() {
        let vc = storyboard?.instantiateViewController(identifier: "login-vc") as! ViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
}
