//
//  NotaTableViewCell.swift
//  JOAS_cibertec
//
//  Created by DAMII on 24/09/23.
//

import UIKit

class NotaTableViewCell: UITableViewCell {

    
    @IBOutlet weak var fechaLable: UILabel!
    @IBOutlet weak var contenidoLabeel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
