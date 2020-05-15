import UIKit

class CardCell: UITableViewCell {

    @IBOutlet weak var cardView: UIView!
    
    @IBOutlet weak var pictureView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    

    
    
    // Set up the cell
    func configure(picture: UIImage, title: String) {
        
        pictureView.image = picture
        titleLabel.text = title
        
        cardView.layer.shadowColor = UIColor.gray.cgColor
        cardView.layer.shadowOffset = CGSize(width: 5, height: 5)
        cardView.layer.shadowRadius = 5
        cardView.layer.shadowOpacity = 0.5
        cardView.layer.cornerRadius = 12
        
    }
    
}


