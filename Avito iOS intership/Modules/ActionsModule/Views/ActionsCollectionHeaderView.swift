//
//  ActionsCollectionHeaderView.swift
//  Avito iOS intership
//
//  Created by Timur Begishev on 28.12.2020.
//

import UIKit

class ActionsCollectionHeaderView: UICollectionReusableView {
    
    static let reuseId = "ActionsCollectionHeaderView"
    
    let label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Сделайте объявление заметнее на 7 дней"
        label.font = UIFont(name: "HelveticaNeue-Bold", size: 22)
        label.numberOfLines = 0
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(label)
        label.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        label.leftAnchor.constraint(equalTo: leftAnchor, constant: 15).isActive = true
        label.rightAnchor.constraint(lessThanOrEqualTo: rightAnchor, constant: -15).isActive = true
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
