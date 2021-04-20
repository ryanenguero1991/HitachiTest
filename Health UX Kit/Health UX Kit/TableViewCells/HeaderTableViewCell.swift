//
//  HeaderTableViewCell.swift
//  Health UX Kit
//
//  Created by Ryan Enguero on 4/20/21.
//

import UIKit

class HeaderTableViewCell: UITableViewCell {

    @IBOutlet weak var btnViewProfile: UIButton!
    @IBOutlet weak var btnMoreDetails: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        btnViewProfile.roundCorner()
        btnMoreDetails.roundCorner()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
