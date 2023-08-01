//
//  ProfileTableViewCell.swift
//  My_skills
//
//  Created by Александр Мараенко on 01.08.2023.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {

    var avatarImageView: UIView!
    var imageViewInAvatarImageView: UIImageView!
    
    var nameLabel: UILabel!
    var statusLabel: UILabel!
    
    var locationIconView: UIView!
    var locationIconImageView: UIImageView!
    var stackView: UIStackView!

    var locationLabel: UILabel!
    
    func settings() {
        
        contentView.backgroundColor = .systemGray6
        
        createViewElements()
        switchAutoresizingMaskIntoConstraints()
        addSubviewsToSelf()
        setNSLayoutConstraint()

    }
    
    
    func createViewElements() {
        
        avatarImageView = {
            let avatarImageView = UIView(frame: .zero)
            avatarImageView.layer.cornerRadius = 60
            avatarImageView.clipsToBounds = true
            return avatarImageView
        }()
        
        
        
        imageViewInAvatarImageView = {
            let imageViewInAvatarImageView = UIImageView(image: UIImage(named: "Ellipse 3"))
            imageViewInAvatarImageView.frame = CGRect(x: 0, y: 0, width: 120, height: 120)
            return imageViewInAvatarImageView
        }()
        
        nameLabel = {
            let nameLabel = UILabel(frame: .zero)
            nameLabel.numberOfLines = 2
            nameLabel.textAlignment = .center
            nameLabel.text = "Иванов Иван Иванович"
            nameLabel.textColor = UIColor.black
            nameLabel.font = UIFont.systemFont(ofSize: CGFloat(24), weight: .bold)
            return nameLabel
        }()
        
        
        statusLabel = {
            let statusLabel = UILabel(frame: .zero)
            statusLabel.numberOfLines = 2
            statusLabel.text = "Middle iOS-разработчик, опыт более 2-х лет"
            statusLabel.textColor = UIColor.gray
            statusLabel.font = UIFont.systemFont(ofSize: CGFloat(14), weight: .regular)
            return statusLabel
        }()
        

        locationIconView = {
            let locationIconView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 16))
            return locationIconView
        }()
        
        
        locationIconImageView = {
            let locationIconImageView = UIImageView(image: UIImage(named: "Frame"))
            return locationIconImageView
        }()
        
        
        locationLabel = {
            let locationLabel = UILabel(frame: .zero)
            locationLabel.text = "Воронеж"
            locationLabel.textAlignment = .left
            locationLabel.textColor = UIColor.gray
            locationLabel.font = UIFont.systemFont(ofSize: CGFloat(14), weight: .regular)
            return locationLabel
        }()
        
        
        stackView = {
            let stackView = UIStackView()
            stackView.axis = .horizontal
            stackView.alignment = .center
            stackView.spacing = 5
            return stackView
        }()

    }
    
    func switchAutoresizingMaskIntoConstraints() {
        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        statusLabel.translatesAutoresizingMaskIntoConstraints = false
        locationLabel.translatesAutoresizingMaskIntoConstraints = false
        locationIconView.translatesAutoresizingMaskIntoConstraints = false
        locationIconImageView.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func addSubviewsToSelf() {
        self.contentView.addSubview(statusLabel)
        self.contentView.addSubview(avatarImageView)
        self.contentView.addSubview(nameLabel)
        self.contentView.addSubview(stackView)

        avatarImageView.addSubview(imageViewInAvatarImageView)
        locationIconImageView.addSubview(locationIconView)
        
        stackView.addArrangedSubview(locationIconImageView)
        stackView.addArrangedSubview(locationLabel)

    }
    
    func setNSLayoutConstraint() {
        NSLayoutConstraint.activate([
            
            avatarImageView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 24),
            avatarImageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            avatarImageView.heightAnchor.constraint(equalToConstant: 120),
            avatarImageView.widthAnchor.constraint(equalToConstant: 120),
                                     
            nameLabel.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 16),
            nameLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            nameLabel.heightAnchor.constraint(equalToConstant: 64),
            nameLabel.widthAnchor.constraint(equalToConstant: 180),
                                     
            statusLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 16),
            statusLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            statusLabel.heightAnchor.constraint(equalToConstant: 20),
            statusLabel.widthAnchor.constraint(equalToConstant: 300),

            stackView.topAnchor.constraint(equalTo: statusLabel.bottomAnchor, constant: 16),
            stackView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            stackView.heightAnchor.constraint(equalToConstant: 20),
            stackView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -16),
            
            ])
    }
    
    
}
