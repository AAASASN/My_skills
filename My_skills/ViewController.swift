//
//  ViewController.swift
//  My_skills
//
//  Created by Александр Мараенко on 01.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        navigationItem.title = "Профиль"
        
        view.backgroundColor = .systemGray6


        tableViewSettings()
//        profileHeaderViewSettings()

        
        
        
        tableView.estimatedRowHeight = 44
        tableView.rowHeight = UITableView.automaticDimension

        
    }

    
    // MARK: - tableViewSettings
    func tableViewSettings() {
        
        
        tableView = UITableView(frame: .zero)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                                     tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
                                     tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
                                     tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
                                    ])
        
        tableView.backgroundColor = .white
        tableView.separatorStyle = .none
        
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }

}


// MARK: - UITableViewDelegate  UITableViewDataSource
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cellForReturn = UITableViewCell()
        
        if indexPath.section == 0 && indexPath.row == 0 {
            
            let cell = ProfileTableViewCell(frame: CGRect.zero)
            cell.settings()
            cellForReturn = cell
        }

        
        if indexPath.section == 0 && indexPath.row == 1 {
            let cell = SkillsTableViewCell(style: .default, reuseIdentifier: "SkillsTableViewCell")
            cellForReturn = cell
        }
        
        if indexPath.section == 0 && indexPath.row == 2 {
            let cell = AboutMeTableViewCell(style: .default, reuseIdentifier: "AboutMeTableViewCell")
            cellForReturn = cell
        }
        
        return cellForReturn
    }
    

    
}



