//
//  UIColorWellExtension.swift
//  LHUIMaker
//
//  Created by 杨立鹏 on 2021/6/11.
//

import UIKit

extension LHUIMakerWarpper where Base: UIColorWell {
    
    @discardableResult
    func selectedColor(_ selectedColor: UIColor?) -> LHUIMakerWarpper {
        base.selectedColor = selectedColor

        return self
    }
    
    @discardableResult
    func supportsAlpha(_ supportsAlpha: Bool) -> LHUIMakerWarpper {
        base.supportsAlpha = supportsAlpha

        return self
    }
    
    @discardableResult
    func title(_ title: String?) -> LHUIMakerWarpper {
        base.title = title

        return self
    }
}
