//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Choi Joon on 2021/03/11.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor =  UIColor.white.cgColor 
    }

}
