//
//  SkillsTableViewCell.swift
//  My_skills
//
//  Created by Александр Мараенко on 01.08.2023.
//

import UIKit

class SkillsTableViewCell: UITableViewCell {

        
        var mySkillsLabel: UILabel!

        override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: reuseIdentifier)
                    
            cellSetting()
            cellAddToContentView()
            cellConstraintSettings()
            
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        
        // MARK: - cellSetting
        func cellSetting() {
            
            mySkillsLabel = {
                let mySkillsLabel = UILabel(frame: .zero)
                mySkillsLabel.font = .systemFont(ofSize: 16, weight: .medium)
                mySkillsLabel.textColor = .black
                mySkillsLabel.numberOfLines = 1
                mySkillsLabel.text = "Мои навыки"
                return mySkillsLabel
            }()
            

        }
        
        // MARK: - cellAddToContentView
        func cellAddToContentView() {
            contentView.addSubview(mySkillsLabel)
        }
        
        // MARK: - cellConstraintSettings
        func cellConstraintSettings() {
            
            mySkillsLabel.translatesAutoresizingMaskIntoConstraints = false


            NSLayoutConstraint.activate([mySkillsLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
                                         mySkillsLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
                                         mySkillsLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
                                         mySkillsLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16)

                                        ])
            
        }

}
