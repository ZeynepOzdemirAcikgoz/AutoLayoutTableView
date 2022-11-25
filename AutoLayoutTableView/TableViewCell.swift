//
//  TableViewCell.swift
//  AutoLayoutTableView
//
//  Created by Zeynep Özdemir Açıkgöz on 25.11.2022.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var view: UIView!
    
    @IBOutlet weak var countryImage: UIImageView!
    
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
 

}
