//
//  ActionCell.swift
//  Avito iOS intership
//
//  Created by Timur Begishev on 28.12.2020.
//

import UIKit

class ActionCell: UICollectionViewCell {
    
    static let reuseId = "ActionCell"
    
    let cellImage = UIImageView()
    let cellTitle = UILabel()
    let cellDescription = UILabel()
    let cellPrice = UILabel()
    let cellCheckmark = UIImageView(image: UIImage(named: "checkmark"))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = #colorLiteral(red: 0.9664575458, green: 0.9666190743, blue: 0.9664362073, alpha: 1)
        
        cellTitle.font = .systemFont(ofSize: 20, weight: .semibold)
        cellTitle.numberOfLines = 0
        
        cellDescription.font = .systemFont(ofSize: 14, weight: .light)
        cellDescription.numberOfLines = 0
        
        cellPrice.font = .systemFont(ofSize: 14, weight: .semibold)
        
        self.addSubview(cellImage)
        self.addSubview(cellTitle)
        self.addSubview(cellDescription)
        self.addSubview(cellPrice)
        self.addSubview(cellCheckmark)
        
        cellImage.translatesAutoresizingMaskIntoConstraints = false
        cellImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        cellImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10).isActive = true
        cellImage.widthAnchor.constraint(equalTo: cellImage.heightAnchor).isActive = true
        
        cellTitle.translatesAutoresizingMaskIntoConstraints = false
        cellTitle.leftAnchor.constraint(equalTo: cellImage.rightAnchor, constant: 15).isActive = true
        cellTitle.topAnchor.constraint(equalTo: cellImage.topAnchor, constant: 5).isActive = true
        cellTitle.rightAnchor.constraint(equalTo: cellCheckmark.leftAnchor, constant: -10).isActive = true
        
        cellDescription.translatesAutoresizingMaskIntoConstraints = false
        cellDescription.leftAnchor.constraint(equalTo: cellTitle.leftAnchor).isActive = true
        cellDescription.topAnchor.constraint(equalTo: cellTitle.bottomAnchor, constant: 10).isActive = true
        cellDescription.rightAnchor.constraint(equalTo: cellTitle.rightAnchor).isActive = true
        
        cellPrice.translatesAutoresizingMaskIntoConstraints = false
        cellPrice.leftAnchor.constraint(equalTo: cellTitle.leftAnchor).isActive = true
        cellPrice.topAnchor.constraint(equalTo: cellDescription.bottomAnchor, constant: 10).isActive = true
        
        cellCheckmark.translatesAutoresizingMaskIntoConstraints = false
        cellCheckmark.topAnchor.constraint(equalTo: cellTitle.centerYAnchor).isActive = true
        cellCheckmark.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10).isActive = true
        cellCheckmark.heightAnchor.constraint(equalToConstant: 20).isActive = true
        cellCheckmark.widthAnchor.constraint(equalTo: cellCheckmark.heightAnchor).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
