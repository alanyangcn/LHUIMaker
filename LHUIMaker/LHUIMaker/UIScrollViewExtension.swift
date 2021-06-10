//
//  UIScrollViewExtension.swift
//  LHUIMaker
//
//  Created by 杨立鹏 on 2021/6/10.
//

import UIKit

extension LHUIMakerWarpper where Base: UIScrollView {
    @discardableResult
    func delegate(_ delegate: UIScrollViewDelegate?) -> LHUIMakerWarpper {
        base.delegate = delegate

        return self
    }
}
