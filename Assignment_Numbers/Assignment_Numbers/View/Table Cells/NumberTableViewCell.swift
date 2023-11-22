// NumberTableViewCell.swift
import UIKit

class NumberTableViewCell: UITableViewCell {
    @IBOutlet weak var numberLabel: UILabel!
    
    override func awakeFromNib() {
            super.awakeFromNib()
            // Initialization code
        }


    func configure(with number: NumberModel) {
        numberLabel.text = "\(number.number)"
    }
}

