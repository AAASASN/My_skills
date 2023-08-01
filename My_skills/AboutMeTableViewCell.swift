//
//  AboutMeTableViewCell.swift
//  My_skills
//
//  Created by Александр Мараенко on 01.08.2023.
//

import UIKit

class AboutMeTableViewCell: UITableViewCell {
    
    var firstLabel: UILabel!
    var secondLabel: UILabel!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
                
        cellSetting()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    func cellSetting() {
        
        firstLabel = {
            let firstLabel = UILabel(frame: .zero)
            firstLabel.font = .systemFont(ofSize: 16, weight: .medium)
            firstLabel.textColor = .black
            firstLabel.numberOfLines = 1
            firstLabel.text = "О себе"
            return firstLabel
        }()
        
        secondLabel = {
            let secondLabel = UILabel(frame: .zero)
            secondLabel.font = .systemFont(ofSize: 14, weight: .regular)
            secondLabel.textColor = .black
            secondLabel.numberOfLines = 0
            
            secondLabel.text = "Experienced software engineer skilled in developing scalable and maintainable systems"
            
            return secondLabel
        }()
        
        contentView.addSubview(firstLabel)
        contentView.addSubview(secondLabel)
        
        firstLabel.translatesAutoresizingMaskIntoConstraints = false
        secondLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([firstLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
                                     firstLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
                                     firstLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
                                     firstLabel.heightAnchor.constraint(equalToConstant: 20),
                                     
                                     secondLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
                                     secondLabel.topAnchor.constraint(equalTo: firstLabel.bottomAnchor, constant: 16),
                                     secondLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
//                                     secondLabel.heightAnchor.constraint(equalToConstant: 70),
                                     secondLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16)
                                     
                                     
                                    ])
        
    }
}
    
