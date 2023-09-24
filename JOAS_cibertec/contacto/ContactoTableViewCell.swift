//
//  ContactoTableViewCell.swift
//  JOAS_cibertec
//
//  Created by DAMII on 24/09/23.
//

import UIKit

class ContactoTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var nombreLabel: UILabel!
    @IBOutlet weak var TelefonoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
