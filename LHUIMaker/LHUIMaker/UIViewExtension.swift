//
//  UIViewExtension.swift
//  LHUIMaker
//
//  Created by 杨立鹏 on 2021/6/9.
//

import UIKit

extension UIResponder: LHUIMakable {}

// Configuring the Bounds and Frame Rectangles
extension LHUIMakerWarpper where Base: UIView {
    @discardableResult
    func frame(_ frame: CGRect) -> LHUIMakerWarpper {
        
        base.frame = frame
        return self
    }

    @discardableResult
    func bounds(_ bounds: CGRect) -> LHUIMakerWarpper {
        base.bounds = bounds
        return self
    }

    @discardableResult
    func center(_ center: CGPoint) -> LHUIMakerWarpper {
        base.center = center
        return self
    }

    @discardableResult
    func transform(_ transform: CGAffineTransform) -> LHUIMakerWarpper {
        base.transform = transform
        return self
    }

    @discardableResult
    func size(_ size: CGSize) -> LHUIMakerWarpper {
        base.frame.size = size
        return self
    }
}

// Configuring a View’s Visual Appearance
extension LHUIMakerWarpper where Base: UIView {
    @discardableResult
    func backgroundColor(_ color: UIColor) -> LHUIMakerWarpper {
        base.backgroundColor = color

        return self
    }

    func hide(_ isHidden: Bool) -> LHUIMakerWarpper {
        base.isHidden = isHidden

        return self
    }

    func alpha(_ alpha: CGFloat) -> LHUIMakerWarpper {
        base.alpha = alpha

        return self
    }

    func isOpaque(_ isOpaque: Bool) -> LHUIMakerWarpper {
        base.isOpaque = isOpaque

        return self
    }

    func tintColor(_ tintColor: UIColor) -> LHUIMakerWarpper {
        base.tintColor = tintColor

        return self
    }

    func tintAdjustmentMode(_ tintAdjustmentMode: UIView.TintAdjustmentMode) -> LHUIMakerWarpper {
        base.tintAdjustmentMode = tintAdjustmentMode

        return self
    }

    func clipsToBounds(_ clipsToBounds: Bool) -> LHUIMakerWarpper {
        base.clipsToBounds = clipsToBounds

        return self
    }

    func clearsContextBeforeDrawing(_ clearsContextBeforeDrawing: Bool) -> LHUIMakerWarpper {
        base.clearsContextBeforeDrawing = clearsContextBeforeDrawing

        return self
    }

    func mask(_ mask: UIView?) -> LHUIMakerWarpper {
        base.mask = mask

        return self
    }
    
    func cornerRadius(_ cornerRadius: CGFloat) -> LHUIMakerWarpper {
        base.layer.cornerRadius = cornerRadius
        return self
    }
}

extension LHUIMakerWarpper where Base: UIView {
    @discardableResult
    func superView(_ superView: UIView) -> LHUIMakerWarpper {
        superView.addSubview(base)
        return self
    }
}

extension LHUIMakerWarpper where Base: UIView {
    @discardableResult
    func padding(_ padding: CGFloat = 16) -> LHUIMakerWarpper {
        let view = UIView()
        
        view.addSubview(base)
        
        base.snp.makeConstraints { make in
            make.left.top.equalToSuperview().offset(padding)
            make.right.bottom.equalToSuperview().offset(-padding)
        }
        
        
        return self
    }
}

extension LHUIMakerWarpper where Base: UIView {
    @discardableResult
    func bind( _ binding: inout Base?) -> LHUIMakerWarpper {
       
        binding = base
        
        return self
    }
}
