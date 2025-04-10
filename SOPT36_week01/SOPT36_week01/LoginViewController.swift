import UIKit

class LoginViewController: UIViewController {
    
    
    private let titleLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 97, y: 191, width: 236, height: 44))
        label.text = "동네라서 가능한 모든것\n당근에서 가까운 이웃과 함께해요."
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 2
//        label.font = .boldSystemFont(ofSize: 16)
        label.font = UIFont(name: "Pretendard-Bold", size: 18)

        return label
    }()
    
    private let idTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: 47, y: 306, width: 335, height: 52))
        textField.placeholder = "아이디"
//        textField.font = .systemFont(ofSize: 14)
        textField.font = UIFont(name: "Pretendard-Regular", size: 18)
        textField.backgroundColor = UIColor(red: 221/255, green: 222/255, blue: 227/255, alpha: 1)
        return textField
    }()
    
    private let passwordTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: 47, y: 365, width: 335, height: 52))
        textField.placeholder = "비밀번호"
//        textField.font = UIFont.systemFont(ofSize: 14)
        textField.font = UIFont(name: "Pretendard-Regular", size: 18)
        textField.backgroundColor = UIColor(red: 221/255, green: 222/255, blue: 227/255, alpha: 1)
        return textField
    }()
    
    private lazy var loginButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 49, y: 452, width: 332, height: 58))
        button.backgroundColor = UIColor(red: 255/255, green: 111/255, blue: 15/255, alpha: 1)
        button.setTitle("로그인하기", for: .normal)
        button.setTitleColor(.white, for: .normal)
//        button.titleLabel?.font = .boldSystemFont(ofSize: 18)
        button.titleLabel?.font = UIFont(name: "Pretendard-Regular", size: 18)
        button.addTarget(self, action: #selector(loginButtonDidTap), for: .touchUpInside)
        button.layer.cornerRadius = 12
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.2
        button.layer.shadowOffset = CGSize(width: 5, height: 5)
        return button
    }()
    
    private let toggleSwitch: UISwitch = {
        let toggle = UISwitch(frame: CGRect(x: 49, y: 530, width: 0, height: 0))
        toggle.isOn = true
        toggle.onTintColor = .systemOrange
        toggle.addTarget(self, action: #selector(switchChanged(_:)), for: .valueChanged)
        return toggle
    }()
    
    private let LoginInfoSaveLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 120, y: 525, width: 236, height: 44))
        label.text = "로그인 정보 저장"
        label.textColor = .black
        label.textAlignment = .left
        label.numberOfLines = 2
        label.font = UIFont(name: "Pretendard-Regular", size: 18)
        return label
    }()
    
    @objc private func switchChanged(_ sender: UISwitch) {
        if sender.isOn {
            print("on")
        } else {
            print("off")
        }
    }
        
    private func presentToWelcomeVC() {
        let welcomeViewController = WelcomeViewController()
        welcomeViewController.modalPresentationStyle = .formSheet
        welcomeViewController.id = idTextField.text
        self.present(welcomeViewController, animated: true)
    }

    private func pushToWelcomeVC() {
        let welcomeViewController = WelcomeViewController()
        welcomeViewController.id = idTextField.text
        self.navigationController?.pushViewController(welcomeViewController, animated: true)
    }
    @objc
    private func loginButtonDidTap() {
        //presentToWelcomeVC()
        pushToWelcomeVC()
        // 둘 중 하나만 해보셍요
    }
    
    @objc
    private func backToLoginButtonDidTap() {
        if self.navigationController == nil {
            self.dismiss(animated: true)
        } else {
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        setLayout()
        
//        for family in UIFont.familyNames {
//            for name in UIFont.fontNames(forFamilyName: family) {
//                print("📦 \(name)")
//            }
//        }
    }
    
    private func setLayout() {
        [titleLabel, idTextField, passwordTextField, loginButton, toggleSwitch, LoginInfoSaveLabel].forEach {
            self.view.addSubview($0)
        }
    }
}
