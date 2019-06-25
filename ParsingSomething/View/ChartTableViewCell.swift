//
//  ChartTableViewCell.swift
//  ParsingSomething
//
//  Created by Stanislav Cherkasov on 5/25/19.
//  Copyright © 2019 Stanislav Cherkasov. All rights reserved.
//

import UIKit

class ChartTableViewCell: UITableViewCell {
  
  @IBOutlet var imageRadioStation: UIImageView!
  @IBOutlet var nameRadioStation: UILabel!
  
    override func awakeFromNib() {
        super.awakeFromNib()
      
      imageRadioStation.layer.cornerRadius = imageRadioStation.bounds.size.width / 2
      imageRadioStation.clipsToBounds = true
      
      //added white border to radiostation logo
      imageRadioStation.layer.masksToBounds = true
      imageRadioStation.layer.borderWidth = 1.5
      imageRadioStation.layer.borderColor = UIColor.white.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
