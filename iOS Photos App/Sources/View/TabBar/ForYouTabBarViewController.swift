//
//  ForYouViewController.swift
//  iOS Photos App
//
//  Created by Радик Ахметзянов on 07.09.2022.
//

import UIKit

class ForYouTabBarViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray3
        title = "Альбомы"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}
