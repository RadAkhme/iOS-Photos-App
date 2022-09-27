//
//  MyAlbumsViewCell.swift
//  iOS Photos App
//
//  Created by Радик Ахметзянов on 07.09.2022.
//

import UIKit

class MyAlbumsViewCell: UICollectionViewCell {
    
    static let identifier = "MyAlbums"
    
    // MARK: - Outlets
    
    private let albumImage: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 4
        imageView.contentMode = .scaleAspectFill
        imageView.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        return imageView
    }()
    
    private lazy var albumTitle: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
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
        contentView.addSubview(albumImage)
        contentView.addSubview(albumTitle)
        contentView.addSubview(photoCount)
    }
    
    private func setupLayout() {
        albumImage.snp.makeConstraints { make in
            make.left.top.right.bottom.equalTo(contentView)
        }
        
        albumTitle.snp.makeConstraints { make in
            make.top.equalTo(albumImage.snp.bottom).offset(5)
            make.left.equalTo(contentView)
        }
        
        photoCount.snp.makeConstraints { make in
            make.top.equalTo(albumTitle.snp.bottom).offset(3)
        }
    }
    
    func configuration(model: CompositionalModel) {
        self.albumImage.image = model.image
        self.albumTitle.text = model.mainTitle
        self.photoCount.text = String("\(model.photoCount ?? 0)")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.albumImage.image = nil
    }
}

