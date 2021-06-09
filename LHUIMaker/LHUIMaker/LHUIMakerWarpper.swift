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

public protocol LHUIMakable {}

extension LHUIMakable {
    public var lh: LHUIMakerWarpper<Self> {
        get { return LHUIMakerWarpper(self) }
        set {}
    }
}

