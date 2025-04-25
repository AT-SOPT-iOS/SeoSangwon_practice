//
//  AutoLayoutViewController.swift
//  SOPT36_week02
//
//  Created by 서상원 on 4/12/25.
//

import UIKit

class AutoLayoutViewController: UIViewController {
    
    let width = UIScreen.main.bounds.width / 2
    let height = UIScreen.main.bounds.height / 4
    
    private var yellowView: UIView = {
//        let view = UIView(frame: .init(origin: .zero, size: .init(width: width, height: height)))
        let view = UIView()
        view.backgroundColor = .yellow
        return view
    }()
    
    private var greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        return view
    }()
    
    private var blackView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    
    private var blueView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    }()
    
    

    private var testView: UIView = UIView(frame: .init(origin: .init(x: 300, y: 300),
                                                       size: .init(width: 300, height: 300)))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        setLayout()
    }
    
    private func setLayout() {
        [yellowView, greenView, blackView, blueView].forEach {
            self.view.addSubview($0)
           $0.translatesAutoresizingMaskIntoConstraints = false
            }
        NSLayoutConstraint.activate([yellowView.topAnchor.constraint(equalTo: self.view.topAnchor),
                                     yellowView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
                                     yellowView.widthAnchor.constraint(equalToConstant: width),
                                     yellowView.heightAnchor.constraint(equalToConstant: height)])
        
        NSLayoutConstraint.activate([greenView.topAnchor.constraint(equalTo: yellowView.bottomAnchor),
                                     greenView.leadingAnchor.constraint(equalTo: yellowView.trailingAnchor),
                                     greenView.widthAnchor.constraint(equalToConstant: width),
                                     greenView.heightAnchor.constraint(equalToConstant: height)])
        
        NSLayoutConstraint.activate([blackView.trailingAnchor.constraint(equalTo: greenView.leadingAnchor),
                                     blackView.topAnchor.constraint(equalTo: greenView.bottomAnchor),
                                     blackView.widthAnchor.constraint(equalToConstant: width),
                                     blackView.heightAnchor.constraint(equalToConstant: height)])
        
        NSLayoutConstraint.activate([blueView.topAnchor.constraint(equalTo: blackView.bottomAnchor),
                                     blueView.leadingAnchor.constraint(equalTo: blackView.trailingAnchor),
                                     blueView.widthAnchor.constraint(equalToConstant: width),
                                     blueView.heightAnchor.constraint(equalToConstant: height)])

        

    }
}

