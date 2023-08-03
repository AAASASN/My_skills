//
//  SkillCollectionView.swift
//  My_skills
//
//  Created by Александр Мараенко on 01.08.2023.
//

import Foundation
import UIKit

class SkillCollectionView: UICollectionView {

    var flowLayout = UICollectionViewFlowLayout()
    private var labelData =  ["iOS", "Android", "PM", "DesignDesign", "Flutter", "QA", "Pyton", "Kotlin", "Java", "React"]
   
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)

        viewSetting()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func viewSetting() {
        
        self.collectionViewLayout = flowLayout

        flowLayout.minimumInteritemSpacing = 12
        flowLayout.scrollDirection = .vertical
        backgroundColor = .yellow
        showsHorizontalScrollIndicator = false
        translatesAutoresizingMaskIntoConstraints = false
        bounces = false

        // датасурс и делегат
        delegate = self
        dataSource = self
    
        // регистрация ячейки
        register(SkillCollectionViewCell.self, forCellWithReuseIdentifier: "SkillCollectionViewCell")
    }
}


extension SkillCollectionView: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    // количество ячеек
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        labelData.count
    }
    
    // возвращает ячейку
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = dequeueReusableCell(withReuseIdentifier: "SkillCollectionViewCell", for: indexPath) as? SkillCollectionViewCell {
            cell.streamTitle.text = labelData[indexPath.item]
            return cell
        }
        return UICollectionViewCell()
    }
    
    //
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let font = UIFont(name: "Arial Bold", size: 14)
        let attributes = [NSAttributedString.Key.font : font as Any]
        let width = labelData[indexPath.item].size(withAttributes: attributes).width + 48

        return CGSize(width: width, height: 44)
    }
}
