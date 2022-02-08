//
//  SecViewController.swift
//  LHUIMaker
//
//  Created by 杨立鹏 on 2021/11/30.
//

import SnapKit
import UIKit
class SecViewController: UIViewController, UIScrollViewDelegate {
    private var label = UILabel()
    private var button = UIButton()
    private var button2 = UIButton()
    private var stackView = UIStackView()
    private var scrollView = UIScrollView()
    private var switchButton = UISwitch()
    private var colorWell = UIColorWell()
    private var datePicker = UIDatePicker()
    
    private var bottomButton: UIButton?
    
    private var pkq: UIButton = {
        
        UIButton.lh_ui.backgroundColor(.red)
            .title("哈哈哈哈")
            .base
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "hh "
        view.backgroundColor = .gray
        label = UILabel().lh_ui
            .text("LH_UIMaker")
            .backgroundColor(.red)
            .textAlignment(.center)
            .textColor(.white)
            .font(UIFont.systemFont(ofSize: 28))
            .lineBreakMode(.byTruncatingMiddle)
            .base

        let attrString = NSAttributedString(string: "按钮", attributes: [
            NSAttributedString.Key.foregroundColor: UIColor.green,
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18, weight: .medium),
        ])
        button = UIButton().lh_ui
            .backgroundColor(.systemBlue)
            .title(attrString)
            .tintColor(.green)
            .cornerRadius(20)
            .base

        button2 = UIButton().lh_ui
            .backgroundColor(.systemPurple)
            .title("按钮 2")
            .titleColor(.green)
            .cornerRadius(20)
            .base

        stackView = UIStackView().lh_ui
            .axis(.vertical)
            .spacing(10)
            .superView(view)
            .arrangedSubviews([label, button, button2])
            .base

        scrollView = UIScrollView().lh_ui
            .delegate(self)
            .backgroundColor(.systemGray6)
            .superView(view)
            .base

        switchButton = UISwitch().lh_ui
            .tintColor(.systemPink)
            .onTintColor(.gray)
            .superView(scrollView)
            .base
        switchButton.thumbTintColor = .red

        colorWell = UIColorWell().lh_ui
            .superView(scrollView)
            .selectedColor(.red)
            .supportsAlpha(true)
            .title("选择颜色")
            .base

        datePicker = UIDatePicker().lh_ui
            .backgroundColor(.orange)
            .superView(scrollView)
            .base

        button.addTarget(self, action: #selector(buttonClick(button:)), for: .touchUpInside)
        colorWell.addTarget(self, action: #selector(colorwellChanged(colorwell:)), for: .valueChanged)

        layoutSubviews()
    }

    private func layoutSubviews() {
        button.snp.makeConstraints { make in
            make.height.equalTo(40)
        }

        stackView.snp.makeConstraints { make in
            make.top.centerX.equalTo(view.safeAreaLayoutGuide)
        }

        scrollView.snp.makeConstraints { make in
            make.top.equalTo(stackView.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.height.equalTo(300)
        }

        switchButton.snp.makeConstraints { make in
            make.left.top.equalToSuperview().offset(30)
            make.bottom.right.equalToSuperview().offset(-300)
        }

        colorWell.snp.makeConstraints { make in
            make.left.equalTo(switchButton.snp.right).offset(20)
            make.width.height.equalTo(100)
        }

        datePicker.snp.makeConstraints { make in
            make.left.equalTo(colorWell.snp.right).offset(20)
            make.top.equalTo(colorWell)
        }

        datePicker.preferredDatePickerStyle = .wheels

        UILabel.lh_ui.text("666").font(.systemFont(ofSize: 30)).backgroundColor(.systemGray2).superView(view).textColor(.systemTeal)
            .base
            .snp.makeConstraints { make in
                make.bottom.centerX.equalTo(view.safeAreaLayoutGuide)
            }

        let btn = UIButton.lh_ui
            .superView(view)
            .backgroundColor(.cyan)
            .title("button")
            .cornerRadius(15)
            .bind(&bottomButton)
            .titleColor(.black)
            .image(UIImage(systemName: "sun.min"))
            .base

    
        btn.snp.makeConstraints { make in
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-100)
            make.centerX.equalTo(view.safeAreaLayoutGuide)
            make.width.equalTo(80)
            make.height.equalTo(40)
            
        }
        
        
        bottomButton?.addTarget(self, action: #selector(buttonClick(button:)), for: .touchUpInside)
        
        
        pkq.lh_ui.superView(view)
        
//        view.addSubview(pkq)
        
        pkq.snp.makeConstraints { make in
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-200)
            make.centerX.equalTo(view.safeAreaLayoutGuide)
            make.width.equalTo(80)
            make.height.equalTo(40)
        }
    }

    @objc private func buttonClick(button: UIButton) {
        print("button click")
    }

    @objc private func colorwellChanged(colorwell: UIColorWell) {
        print(#function)
        button.backgroundColor = colorwell.selectedColor
    }
    
    deinit {
        debugPrint("释放了")
    }
}
