//
//  UILabelExtension.swift
//  LHUIMaker
//
//  Created by 杨立鹏 on 2021/6/9.
//

import UIKit

extension LHUIMakerWarpper where Base: UILabel {
    @discardableResult
    func text(_ text: String?) -> LHUIMakerWarpper {
        base.text = text
        return self
    }

    @discardableResult
    func attributedText(_ attributedText: NSAttributedString?) -> LHUIMakerWarpper {
        base.attributedText = attributedText
        return self
    }

    @discardableResult
    func fontSize(_ fontSize: CGFloat) -> LHUIMakerWarpper {
        
        
        let font = UIFont.systemFont(ofSize: fontSize)
        base.font = font
        return self
    }
    
    @discardableResult
    func font(_ font: UIFont) -> LHUIMakerWarpper {
        base.font = font
        return self
    }
    @discardableResult
    func textColor(_ textColor: UIColor) -> LHUIMakerWarpper {
        base.textColor = textColor
        return self
    }
    @discardableResult
    func textAlignment(_ textAlignment: NSTextAlignment) -> LHUIMakerWarpper {
        base.textAlignment = textAlignment
        return self
    }

    @discardableResult
    func lineBreakMode(_ lineBreakMode: NSLineBreakMode) -> LHUIMakerWarpper {
        base.lineBreakMode = lineBreakMode
        return self
    }

    @discardableResult
    func isEnabled(_ isEnabled: Bool) -> LHUIMakerWarpper {
        base.isEnabled = isEnabled
        return self
    }

}
