//
//  UIDatePickerExtension.swift
//  LHUIMaker
//
//  Created by 杨立鹏 on 2021/6/17.
//

import UIKit

extension LHUIMakerWarpper where Base: UIDatePicker {
    
    @discardableResult
    func calendar(_ calendar: Calendar?) -> LHUIMakerWarpper {
        base.calendar = calendar

        return self
    }
    
    @discardableResult
    func date(_ date: Date) -> LHUIMakerWarpper {
        base.date = date

        return self
    }
    
    @discardableResult
    func locale(_ locale: Locale?) -> LHUIMakerWarpper {
        base.locale = locale

        return self
    }
    
    @discardableResult
    func timeZone(_ timeZone: TimeZone?) -> LHUIMakerWarpper {
        base.timeZone = timeZone

        return self
    }
}
