//
//  TableViewCell.swift
//  AutoLayoutTableView
//
//  Created by Zeynep Özdemir Açıkgöz on 25.11.2022.
//

import UIKit

class TableViewCell: UITableViewCell ,UITableViewDelegate, UITableViewDataSource{
    
    

    @IBOutlet weak var view: UIView!
    
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryImage: UIImageView!
    @IBOutlet weak var datailLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }

}
