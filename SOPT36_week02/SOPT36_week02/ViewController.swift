//
//  ViewController.swift
//  SOPT36_week02
//
//  Created by 서상원 on 4/12/25.
//

import UIKit

import SnapKit

class ViewController: UIViewController {

    private var tableView: UITableView = .init(frame: .zero, style: .plain)
    private let chatList = TestModel.dummy()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        register()
        setDelegate()
        setLayout()
    }
    
    private func register() {
        tableView.register(TestTableViewCell.self, forCellReuseIdentifier: TestTableViewCell.identifier)
    }
    
    private func setDelegate() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    private func setLayout() {
        self.view.addSubview(tableView)
        
        tableView.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 72
    }
}

extension ViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return 5
  }
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TestTableViewCell.identifier, for: indexPath) as? TestTableViewCell else { return UITableViewCell() }
        cell.dataBind(chatList[indexPath.row])
        return cell
    }
}
