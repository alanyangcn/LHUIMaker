//
//  LHUIMakerWarpper.swift
//  LHUIMaker
//
//  Created by 杨立鹏 on 2021/6/9.
//

import UIKit

public struct LHUIMakerWarpper<Base> {
    public let base: Base
    public init(_ base: Base) {
        self.base = base
    }
}

public protocol LHUIMakable: UIResponder {}

extension LHUIMakable {
    public var lh_ui: LHUIMakerWarpper<Self> {
        get { return LHUIMakerWarpper(self) }
        set {}
    }

    public static var lh_ui: LHUIMakerWarpper<Self> {
        get {
            return LHUIMakerWarpper(Self())
        }
        set {}
    }
}
