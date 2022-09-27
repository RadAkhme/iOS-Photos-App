//
//  TabBarController.swift
//  iOS Photos App
//
//  Created by Радик Ахметзянов on 07.09.2022.
//

import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        title = "Альбомы"
        navigationController?.navigationBar.prefersLargeTitles = true
        self.selectedIndex = 2
        setupTabBarController()
        setupTabBarViewControllers()
    }
    
    func setupTabBarController() {
        tabBar.tintColor = .systemBlue
        tabBar.backgroundColor = .systemBackground
    }
    
    func setupTabBarViewControllers() {
        let first = LibraryTabBarViewController()
        let firstIcon = UITabBarItem(title: "Медиатека", image: UIImage(systemName: "photo.fill.on.rectangle.fill"), selectedImage: UIImage(systemName: "photo.fill.on.rectangle.fill"))
        first.tabBarItem = firstIcon
        
        let second = ForYouTabBarViewController()
        let secondIcon = UITabBarItem(title: "Для Вас", image: UIImage(systemName: "heart.text.square.fill"), selectedImage: UIImage(systemName: "heart.text.square.fill"))
        second.tabBarItem = secondIcon
        
        let third = AlbumsViewController()
        let thirdIcon = UITabBarItem(title: "Альбомы", image: UIImage(systemName: "rectangle.stack.fill"), selectedImage: UIImage(systemName: "rectangle.stack.fill"))
        third.tabBarItem = thirdIcon
        
        let fourth = SearchTabBarViewController()
        let fourthIcon = UITabBarItem(title: "Поиск", image: UIImage(systemName: "magnifyingglass"), selectedImage: UIImage(systemName: "magnifyingglass"))
        fourth.tabBarItem = fourthIcon
        
        let controllers = [first, second, third, fourth]
        self.setViewControllers(controllers, animated: true)
        self.selectedIndex = 2
    }
}
