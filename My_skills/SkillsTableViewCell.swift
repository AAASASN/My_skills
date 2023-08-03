//
//  SkillsTableViewCell.swift
//  My_skills
//
//  Created by Александр Мараенко on 01.08.2023.
//

import UIKit

class SkillsTableViewCell: UITableViewCell {
    
    
    var mySkillsLabel: UILabel!
    var collectionView: UICollectionView!
    
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
        
        collectionView = {
            let flowLayout = UICollectionViewFlowLayout()
            let collectionView = SkillCollectionView(frame: CGRect.zero, collectionViewLayout: flowLayout)
            collectionView.flowLayout = flowLayout
            return collectionView
        }()
        
    }
    
    // MARK: - cellAddToContentView
    func cellAddToContentView() {
        contentView.addSubview(mySkillsLabel)
        contentView.addSubview(collectionView)
    }
    
    // MARK: - cellConstraintSettings
    func cellConstraintSettings() {
        
        mySkillsLabel.translatesAutoresizingMaskIntoConstraints = false
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false

        
        NSLayoutConstraint.activate([mySkillsLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
                                     mySkillsLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
                                     mySkillsLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
//                                     mySkillsLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),
                                     
                                     
                                     collectionView.topAnchor.constraint(equalTo: mySkillsLabel.bottomAnchor, constant: 12),
                                     collectionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
                                     collectionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
                                     collectionView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20),

                                     collectionView.heightAnchor.constraint(equalToConstant: 300),
                                     
                                    ])
        
    }
    
}
