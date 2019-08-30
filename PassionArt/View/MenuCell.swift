//
//  MenuCell.swift
//  PassionArt
//
//  Created by vmio vmio on 8/30/19.
//  Copyright © 2019 PassionArt. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

public class MenuCell : LiquidFloatingCell {
    var name: String = "sample"
    
    init(icon: UIImage, name: String) {
        self.name = name
        super.init(icon: icon)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func setupView(_ view: UIView) {
        super.setupView(view)
        let label = UILabel()
        label.text = name
        label.textColor = UIColor.white
        label.font = UIFont(name: "Helvetica-Neue", size: 12)
        addSubview(label)
        label.snp.makeConstraints { make in
            make.left.equalTo(self).offset(-80)
            make.width.equalTo(75)
            make.top.height.equalTo(self)
        }
    }
}
