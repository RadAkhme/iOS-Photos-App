//
//  CollectionViewCell.swift
//  iOS Photos App
//
//  Created by Радик Ахметзянов on 08.09.2022.
//

import UIKit

class CollectionViewCell: UICollectionViewListCell {
    
    static let identifier = "table collection"
    
    // MARK: - Outlets
    
    private let imageContainer: UIView = {
        let container = UIView()
        return container
    }()
    
    private let icon: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
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
        imageContainer.addSubview(icon)
        contentView.addSubview(imageContainer)
        contentView.addSubview(title)
        contentView.addSubview(photoCount)
    }
    
    private func setupLayout() {
        icon.snp.makeConstraints { make in
            make.center.equalTo(imageContainer)
        }
        
        imageContainer.snp.makeConstraints { make in
            make.left.equalTo(contentView).offset(7)
            make.centerY.equalTo(contentView)
            make.height.equalTo(contentView).dividedBy(2)
            make.width.equalTo(imageContainer.snp.height)
        }
        
        title.snp.makeConstraints { make in
            make.left.equalTo(imageContainer).offset(32)
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

