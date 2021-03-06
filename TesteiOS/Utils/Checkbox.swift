//
//  Checkbox.swift
//  TesteiOS
//
//  Created by Eduardo Lombardi on 31/05/18.
//  Copyright © 2018 Eduardo Lombardi. All rights reserved.
//

import Foundation
import UIKit

;
protocol HideField {
    func hideField(shouldHide:Bool,field:Int?) -> Void;
}

class Checkbox:UIButton {
    
    var delegate: HideField?
    var show:Int? = 0
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        }
    

    init(show:Int?) {
        super.init(frame: .zero)
        
        self.show = show
        titleLabel?.minimumScaleFactor = 0.5
        titleLabel?.numberOfLines = 1
        titleLabel?.lineBreakMode = NSLineBreakMode.byClipping
        titleLabel?.adjustsFontSizeToFitWidth = true
        titleLabel?.font = UIFont(name: "DINPro", size: 16.0)
        let color = UIColor(red: 172/255, green: 172/255, blue: 172/255, alpha: 1.0)
        self.setTitleColor(color, for: .normal)
        setImage(UIImage(named:"checkbox_checked"), for: UIControlState.selected)
        setImage(UIImage(named:"checkbox"), for: UIControlState.normal)
        self.addTarget(self, action: #selector(onPress), for: .touchUpInside)
        onPress()
    }
    

    @objc func onPress() {
        isSelected = !isSelected
        delegate?.hideField(shouldHide: !isSelected,field:show);
    }
    }

