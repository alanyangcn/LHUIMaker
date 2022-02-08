//
//  UIControlExtension.swift
//  LHUIMaker
//
//  Created by 杨立鹏 on 2021/6/11.
//

import UIKit
//  Configuring the Control’s Attributes
extension LHUIMakerWarpper where Base: UIControl {
    @discardableResult
    func isEnabled(_ isEnabled: Bool) -> LHUIMakerWarpper {
        base.isEnabled = isEnabled

        return self
    }

    @discardableResult
    func isSelected(_ isSelected: Bool) -> LHUIMakerWarpper {
        base.isSelected = isSelected

        return self
    }

    @discardableResult
    func isHighlighted(_ isHighlighted: Bool) -> LHUIMakerWarpper {
        base.isHighlighted = isHighlighted

        return self
    }

    @discardableResult
    func contentVerticalAlignment(_ contentVerticalAlignment: UIControl.ContentVerticalAlignment) -> LHUIMakerWarpper {
        base.contentVerticalAlignment = contentVerticalAlignment

        return self
    }

    @discardableResult
    func contentHorizontalAlignment(_ contentHorizontalAlignment: UIControl.ContentHorizontalAlignment) -> LHUIMakerWarpper {
        base.contentHorizontalAlignment = contentHorizontalAlignment

        return self
    }
}
