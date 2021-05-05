//
//  DataSource.swift
//  VKApp
//
//  Created by KKK on 20.04.2021.
//

import UIKit

var frends_all: [frendsModel]  = [
    frendsModel(nik: "Леха", firstname: "Алексей", lastname: "Алексеев",image: UIImage(named: "im1")!),
    frendsModel(nik: "Мишаня", firstname: "Михаил", lastname: "Михайлов",image: UIImage(named: "im2")!),
    frendsModel(nik: "Леонид", firstname: "Леонид", lastname: "Александров",image: UIImage(named: "im3")!),
    frendsModel(nik: "Саня", firstname: "Алексендр", lastname: "Ogorod",image: UIImage(named: "im4")!),
]


var allGroups: [groupModel] = [
    groupModel(name: "Машины", image: UIImage(named: "car")!),
    groupModel(name: "Отпуск", image: UIImage(named: "otpusk")!),
    groupModel(name: "Работа", image: UIImage(named: "work")!),
    groupModel(name: "UFO", image: UIImage(named: "ufo")!),
]


let news: [newsModel] = [
    newsModel(frend: frends_all[0], datePost: "10.04.2021", textPost: "В Microsoft Store стартовала новая скидочная акция для экосистемы компании — консолей Xbox и персональных компьютеров под управлением Windows. Как обычно, мы собрали список самых притягательных предложений.", imagePost: UIImage(named: "post1")!),
    newsModel(frend: frends_all[1], datePost: "20.04.2021", textPost: "Сегодня, 20 апреля, Apple представила совершенно новую потрясающую фиолетовую отделку для iPhone 12 и iPhone 12 mini. Новый цвет отлично дополняет прекрасный дизайн iPhone 12 с плоскими гранями, который оснащён передовой двухкамерной системой, дисплеем Super Retina XDR с передней крышкой Ceramic Shield и производительным чипсетом A14 Bionic.", imagePost: nil),

]
