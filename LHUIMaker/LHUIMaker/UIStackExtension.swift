//
//  UIStackExtension.swift
//  LHUIMaker
//
//  Created by 杨立鹏 on 2021/6/10.
//

import UIKit
// Managing Arranged Subviews
extension LHUIMakerWarpper where Base: UIStackView {
    @discardableResult
    func arrangedSubviews(_ views: [UIView]) -> LHUIMakerWarpper {
        views.forEach({ base.addArrangedSubview($0) })

        return self
    }
}

// Configuring The Layout
extension LHUIMakerWarpper where Base: UIStackView {
    /// The alignment of the arranged subviews perpendicular to the stack view’s axis.
    @discardableResult
    func alignment(_ alignment: UIStackView.Alignment) -> LHUIMakerWarpper {
        base.alignment = alignment

        return self
    }

    /// The axis along which the arranged views are laid out.
    @discardableResult
    func axis(_ axis: NSLayoutConstraint.Axis) -> LHUIMakerWarpper {
        base.axis = axis

        return self
    }

    /// The distribution of the arranged views along the stack view’s axis.
    @discardableResult
    func distribution(_ distribution: UIStackView.Distribution) -> LHUIMakerWarpper {
        base.distribution = distribution

        return self
    }

    /// The distance in points between the adjacent edges of the stack view’s arranged views.
    @discardableResult
    func spacing(_ spacing: CGFloat) -> LHUIMakerWarpper {
        base.spacing = spacing

        return self
    }
}
