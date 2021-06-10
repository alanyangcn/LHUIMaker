//
//  ViewController.swift
//  LHUIMaker
//
//  Created by 杨立鹏 on 2021/6/9.
//

import SnapKit
import UIKit
class ViewController: UIViewController, UIScrollViewDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()

        let label = UILabel().lh
            .text("LH_UIMaker")
            .backgroundColor(.red)
            .textAlignment(.center)
            .textColor(.white)
            .font(UIFont.systemFont(ofSize: 28))
            .lineBreakMode(.byTruncatingMiddle)
            .base

        let button = UIButton().lh
            .backgroundColor(.systemBlue)
            .title("按钮")
            .base

        let stackView = UIStackView().lh
            .axis(.vertical)
            .spacing(10)
            .superView(view)
            .arrangedSubviews([label, button])
            .base

        stackView.snp.makeConstraints { make in
            make.top.centerX.equalTo(view.safeAreaLayoutGuide)
        }
        
        let scrollView = UIScrollView().lh
            .delegate(self)
            .backgroundColor(.systemGray6)
            .superView(view)
            .base
        
        let switchButton = UISwitch().lh
            .tintColor(.systemPink)
            .superView(scrollView)
            .base
        switchButton.onTintColor = .gray
        switchButton.thumbTintColor = .red
        scrollView.snp.makeConstraints { make in
            make.top.equalTo(stackView.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.height.equalTo(300)
        }
        
        switchButton.snp.makeConstraints { make in
            make.left.top.equalToSuperview().offset(60)
            make.bottom.right.equalToSuperview().offset(-300)
        }

        button.addTarget(self, action: #selector(buttonClick(button:)), for: .touchUpInside)
    }

    @objc private func buttonClick(button: UIButton) {
        print("按钮被点击了。")
    }
}
