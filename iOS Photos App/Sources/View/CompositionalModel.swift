//
//  Model.swift
//  iOS Photos App
//
//  Created by Радик Ахметзянов on 07.09.2022.
//

import UIKit

struct CompositionalModel: Hashable {
    var image: UIImage
    var mainTitle: String?
    var photoCount: Int?
}

extension CompositionalModel {
    static let modelsArray = [
    [CompositionalModel(image: UIImage(named: "photo8") ?? UIImage(), mainTitle: "Недавние", photoCount: 15),
     CompositionalModel(image: UIImage(named: "sj") ?? UIImage(), mainTitle: "WhatsApp", photoCount: 2),
     CompositionalModel(image: UIImage(named: "photo9") ?? UIImage(), mainTitle: "Instagram", photoCount: 7),
     CompositionalModel(image: UIImage(named: "photo1") ?? UIImage(), mainTitle: "Отпуск", photoCount: 7),
     CompositionalModel(image: UIImage(named: "photo2") ?? UIImage(), mainTitle: "Интересные места", photoCount: 7),
     CompositionalModel(image: UIImage(named: "photo3") ?? UIImage(), mainTitle: "Сохраненные", photoCount: 23),
     CompositionalModel(image: UIImage(named: "photo4") ?? UIImage(), mainTitle: "Животные", photoCount: 3)],
    [CompositionalModel(image: UIImage(named: "photo5") ?? UIImage(), mainTitle: "Люди", photoCount: 3),
     CompositionalModel(image: UIImage(named: "photo6") ?? UIImage(), mainTitle: "Места", photoCount: 21)],
    [CompositionalModel(image: UIImage(systemName: "video") ?? UIImage(), mainTitle: "Видео", photoCount: 15),
     CompositionalModel(image: UIImage(systemName: "person.crop.square") ?? UIImage(), mainTitle: "Селфи", photoCount: 2),
     CompositionalModel(image: UIImage(systemName: "livephoto") ?? UIImage(), mainTitle: "Фото Live Photos", photoCount: 7),
     CompositionalModel(image: UIImage(systemName: "pano") ?? UIImage(), mainTitle: "Панорамы", photoCount: 7),
     CompositionalModel(image: UIImage(systemName: "timelapse") ?? UIImage(), mainTitle: "Таймлапс", photoCount: 7),
     CompositionalModel(image: UIImage(systemName: "slowmo") ?? UIImage(), mainTitle: "Замедленно", photoCount: 7),
     CompositionalModel(image: UIImage(systemName: "square.3.layers.3d.down.right") ?? UIImage(), mainTitle: "Серии", photoCount: 7),
     CompositionalModel(image: UIImage(systemName: "camera.metering.center.weighted") ?? UIImage(), mainTitle: "Снимки экрана", photoCount: 7),
     CompositionalModel(image: UIImage(systemName: "record.circle") ?? UIImage(), mainTitle: "Записи экрана", photoCount: 23),
     CompositionalModel(image: UIImage(systemName: "square.stack.3d.forward.dottedline") ?? UIImage(), mainTitle: "Анимированные", photoCount: 3)],
    [CompositionalModel(image: UIImage(systemName: "square.and.arrow.down") ?? UIImage(), mainTitle: "Импортированные", photoCount: 15),
     CompositionalModel(image: UIImage(systemName: "eye.slash") ?? UIImage(), mainTitle: "Скрытые", photoCount: 2),
     CompositionalModel(image: UIImage(systemName: "trash") ?? UIImage(), mainTitle: "Недавно удаленные", photoCount: 3)]
    ]
}
