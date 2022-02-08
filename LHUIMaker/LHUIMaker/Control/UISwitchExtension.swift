//
//  UISwitchExtension.swift
//  LHUIMaker
//
//  Created by 杨立鹏 on 2021/6/10.
//

import UIKit

extension LHUIMakerWarpper where Base: UISwitch {
    @discardableResult
    func onTintColor(_ onTintColor: UIColor?) -> LHUIMakerWarpper {
        base.onTintColor = onTintColor

        return self
    }
}
