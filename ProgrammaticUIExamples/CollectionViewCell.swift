//
//  CollectionViewCell.swift
//  ProgrammaticUIExamples
//
//  Created by Yiğithan Sönmez on 1.01.2024.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    static let identifier = "cell"
    
    let imageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageView)
        applyConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with color:UIColor){
        imageView.backgroundColor = color
    }
    
    func applyConstraints() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        let collectionViewConstraints = [
            imageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            imageView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            imageView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor)
        ]
        
        NSLayoutConstraint.activate(collectionViewConstraints)
    }
}
