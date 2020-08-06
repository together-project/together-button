//
//  ServicesTableViewCell.swift
//  together-button-develop
//
//  Created by otavio on 06/08/20.
//  Copyright © 2020 together. All rights reserved.
//

import UIKit

public class ServicesTableViewCell: UITableViewCell {

    @IBOutlet weak var contentLabel: UILabel!
    
    public override func awakeFromNib() {
        super.awakeFromNib()
    }

    public override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    public func setup(service: Service) {
        var nameString: NSMutableAttributedString
        var addressString: NSMutableAttributedString
        
        if #available(iOS 13.0, *) {
            nameString = NSMutableAttributedString(string: service.name + ": ", attributes: [
                .font: UIFont.systemFont(ofSize: 16, weight: .bold),
                .foregroundColor: UIColor.label,
            ])
        } else {
            nameString = NSMutableAttributedString(string: service.name + ": ", attributes: [
                .font: UIFont.systemFont(ofSize: 16, weight: .bold),
                .foregroundColor: UIColor.black,
            ])
        }
        
        if #available(iOS 13.0, *) {
            addressString = NSMutableAttributedString(string: service.address + " ", attributes: [
                .font: UIFont.systemFont(ofSize: 15, weight: .light),
                .foregroundColor: UIColor.black,
            ])
        } else {
            addressString = NSMutableAttributedString(string: service.address + " ", attributes: [
                .font: UIFont.systemFont(ofSize: 15, weight: .light)
            ])
        }
    
        let numberString = NSMutableAttributedString(string: service.number.display, attributes: [
            .font: UIFont.systemFont(ofSize: 15, weight: .medium),
            .foregroundColor: UIColor(red: 148/255, green: 72/255, blue: 213/255, alpha: 1),
        ])
        
        nameString.append(addressString)
        nameString.append(numberString)
        
        self.contentLabel.attributedText = nameString
    }

}
