//
//  UIButtonExtension.swift
//  LHUIMaker
//
//  Created by 杨立鹏 on 2021/6/9.
//

import UIKit
extension LHUIMakerWarpper where Base: UIButton {

    @discardableResult
    func title(_ title: String?, for state: UIControl.State = .normal) -> LHUIMakerWarpper {
        base.setTitle(title, for: state)
        return self
    }
    
    @discardableResult
    func title(_ title: NSAttributedString?, for state: UIControl.State = .normal) -> LHUIMakerWarpper {
        base.setAttributedTitle(title, for: state)
        return self
    }
    
    @discardableResult
    func titleColor(_ color: UIColor?, for state: UIControl.State = .normal) -> LHUIMakerWarpper {
        base.setTitleColor(color, for: state)
        return self
    }
    
    @discardableResult
    func image(_ image: UIImage?, for state: UIControl.State = .normal) -> LHUIMakerWarpper {
        base.setImage(image, for: .normal)
        return self
    }

}
