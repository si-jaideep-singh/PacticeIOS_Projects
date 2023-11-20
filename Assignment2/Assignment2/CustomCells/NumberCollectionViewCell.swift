//
//  NumberCollectionViewCell.swift
//  Assignment2
//
//  Created by Jaideep Singh on 12/10/23.
//

import UIKit

class NumberCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var NUmberLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func configure(with number: NumberModel) {
        NUmberLabel.text = "\(number.number)"
        
        
    }
}
