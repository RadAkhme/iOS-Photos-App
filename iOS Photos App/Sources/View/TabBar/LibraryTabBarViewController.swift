//
//  FirstTabBarViewController.swift
//  iOS Photos App
//
//  Created by Радик Ахметзянов on 07.09.2022.
//

import UIKit

class LibraryTabBarViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        title = "Альбомы"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}
