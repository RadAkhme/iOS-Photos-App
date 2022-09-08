//
//  CollectionViewCell.swift
//  iOS Photos App
//
//  Created by Радик Ахметзянов on 08.09.2022.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    static let identifier = "table collection"
    
    // MARK: - Outlets
    
    private let icon: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 3
        imageView.contentMode = .scaleAspectFill
        imageView.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        imageView.tintColor = .systemBlue
        return imageView
    }()
    
    private lazy var title: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        label.textColor = .systemBlue
        return label
    }()
    
    private lazy var photoCount: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = .gray
        return label
    }()
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("ERROR")
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        contentView.addSubview(icon)
        contentView.addSubview(title)
        contentView.addSubview(photoCount)
    }
    
    private func setupLayout() {
        icon.snp.makeConstraints { make in
            make.left.equalTo(contentView).dividedBy(2)
            make.centerY.equalTo(contentView)

        }
        
        title.snp.makeConstraints { make in
            make.left.equalTo(icon.snp.right).offset(20)
            make.centerY.equalTo(contentView)
        }
        
        photoCount.snp.makeConstraints { make in
            make.right.equalTo(contentView).offset(15)
            make.centerY.equalTo(contentView)
        }
    }
    
    func configuration(model: CompositionalModel) {
        self.icon.image = model.image
        self.title.text = model.mainTitle
        self.photoCount.text = String("\(model.photoCount ?? 0)")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.icon.image = nil
    }
}

