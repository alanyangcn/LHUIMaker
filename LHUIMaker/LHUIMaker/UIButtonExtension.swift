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

}
