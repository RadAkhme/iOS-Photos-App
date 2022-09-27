//
//  Model.swift
//  iOS Photos App
//
//  Created by Радик Ахметзянов on 07.09.2022.
//

import Foundation

struct CompositionalModel: Hashable {
    var image: String?
    var mainTitle: String?
    var photoCount: Int?
}

extension CompositionalModel {
    static let modelsArray = [
    [CompositionalModel(image: "photo8", mainTitle: "Недавние", photoCount: 15),
     CompositionalModel(image: "photo11", mainTitle: "WhatsApp", photoCount: 2),
     CompositionalModel(image: "photo9", mainTitle: "Instagram", photoCount: 7),
     CompositionalModel(image: "photo1", mainTitle: "Отпуск", photoCount: 7),
     CompositionalModel(image: "photo2", mainTitle: "Интересные места", photoCount: 7),
     CompositionalModel(image: "photo3", mainTitle: "Сохраненные", photoCount: 23),
     CompositionalModel(image: "photo4", mainTitle: "Животные", photoCount: 3)],
    [CompositionalModel(image: "photo5", mainTitle: "Люди", photoCount: 3),
     CompositionalModel(image: "photo6", mainTitle: "Места", photoCount: 21)],
    [CompositionalModel(image: "video", mainTitle: "Видео", photoCount: 15),
     CompositionalModel(image: "person.crop.square", mainTitle: "Селфи", photoCount: 2),
     CompositionalModel(image: "livephoto", mainTitle: "Фото Live Photos", photoCount: 7),
     CompositionalModel(image: "pano", mainTitle: "Панорамы", photoCount: 7),
     CompositionalModel(image: "timelapse", mainTitle: "Таймлапс", photoCount: 7),
     CompositionalModel(image: "slowmo", mainTitle: "Замедленно", photoCount: 7),
     CompositionalModel(image: "square.3.layers.3d.down.right", mainTitle: "Серии", photoCount: 7),
     CompositionalModel(image: "camera.metering.center.weighted", mainTitle: "Снимки экрана", photoCount: 7),
     CompositionalModel(image: "record.circle", mainTitle: "Записи экрана", photoCount: 23),
     CompositionalModel(image: "square.stack.3d.forward.dottedline", mainTitle: "Анимированные", photoCount: 3)],
    [CompositionalModel(image: "square.and.arrow.down", mainTitle: "Импортированные", photoCount: 15),
     CompositionalModel(image: "eye.slash", mainTitle: "Скрытые", photoCount: 2),
     CompositionalModel(image: "trash", mainTitle: "Недавно удаленные", photoCount: 3)]
    ]
}
