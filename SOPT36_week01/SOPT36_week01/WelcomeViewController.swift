//
//  WelcomeViewController.swift
//  SOPT36_week01
//
//  Created by 서상원 on 4/5/25.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    private let characterImageView: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: 115, y: 110, width: 200, height: 200))
        imageView.image = UIImage(named: "carrot")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    
    var id: String? = ""

    private let welcomeLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 97, y: 351, width: 236, height: 44))
        label.text = ""
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 2
//        label.font = .boldSystemFont(ofSize: 16)
        label.font = UIFont(name: "Pretendard-Bold", size: 25)

        return label
    }()
    
//    private func bindID() {
//        self.welcomeLabel.text = "\(id)님 \n반가워요!"
//    }
//    
    private func bindID() {
        guard let id = id, !id.isEmpty else {
            self.welcomeLabel.text = "Error!"
            return
        }
        self.welcomeLabel.text = "\(id)님 반가워요!"
    }

    @objc
    private func backToLoginButtonDidTap() {
        if self.navigationController == nil {
            self.dismiss(animated: true)
        } else {
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    private lazy var backToMainButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 49, y: 452, width: 332, height: 58))
        button.backgroundColor = UIColor(red: 255/255, green: 111/255, blue: 15/255, alpha: 1)
        button.setTitle("메인으로", for: .normal)
        button.setTitleColor(.white, for: .normal)
//        button.titleLabel?.font = .boldSystemFont(ofSize: 18)
        button.titleLabel?.font = UIFont(name: "Pretendard-Regular", size: 18)
        button.layer.cornerRadius = 12
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.2
        button.layer.shadowOffset = CGSize(width: 5, height: 5)
        button.addTarget(self, action: #selector(backToLoginButtonDidTap), for: .touchUpInside)
        return button
    }()
    
    private lazy var backToLoginButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 49, y: 552, width: 332, height: 58))
        button.backgroundColor = UIColor(red: 255/255, green: 111/255, blue: 15/255, alpha: 1)
        button.setTitle("다시 로그인", for: .normal)
        button.setTitleColor(.white, for: .normal)
//        button.titleLabel?.font = .boldSystemFont(ofSize: 18)
        button.titleLabel?.font = UIFont(name: "Pretendard-Regular", size: 18)
        button.layer.cornerRadius = 12
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.2
        button.layer.shadowOffset = CGSize(width: 5, height: 5)
        button.addTarget(self, action: #selector(backToLoginButtonDidTap), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        setLayout()
        bindID()
    }
    
    private func setLayout() {
        [characterImageView, welcomeLabel, backToMainButton, backToLoginButton].forEach {
            self.view.addSubview($0)
        }
    }
}
