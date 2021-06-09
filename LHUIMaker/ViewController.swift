//
//  ViewController.swift
//  LHUIMaker
//
//  Created by 杨立鹏 on 2021/6/9.
//

import SnapKit
import UIKit
class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.lh.superView(view)

        stackView.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }

        let label = UILabel().lh
            .text("杏坛教育")
            .backgroundColor(.red)
            .textAlignment(.center)
            .textColor(.white)
            .font(UIFont.systemFont(ofSize: 32))
            .lineBreakMode(.byTruncatingMiddle)
            .base

        let button = UIButton().lh
            .backgroundColor(.systemBlue)
            .title("按钮").base

        button.addTarget(self, action: #selector(buttonClick(button:)), for: .touchUpInside)

        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(button)
    }

    @objc private func buttonClick(button: UIButton) {
        print("按钮被点击了。")
    }
}
