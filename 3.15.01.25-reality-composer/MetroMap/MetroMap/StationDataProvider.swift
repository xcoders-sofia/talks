//
//  StationDataProvider.swift
//  MetroMap
//
//  Created by Nikola Kirev on 15.01.25.
//

import SwiftUI

struct Line {
    let name: String
    let color: Color
}

struct Station: Identifiable {
    let id: String
    let name: String
    let nextTrainIn: UInt
    let lines: [Line]
}

final class StationDataProvider {

    static let line1 = Line(name: "Линия 1", color: .red)
    static let line2 = Line(name: "Линия 2", color: .blue)
    static let line3 = Line(name: "Линия 3", color: .green)
    static let line4 = Line(name: "Линия 4", color: .yellow)

    let stations: [Station] = [
        // Line 1
        Station(id: "0101", name: "Обеля", nextTrainIn: 1, lines: [line1, line4]),
        Station(id: "0102", name: "Сливница", nextTrainIn: 5, lines: [line1]),
        Station(id: "0103", name: "Люлин", nextTrainIn: 2, lines: [line1]),
        Station(id: "0104", name: "Западен парк", nextTrainIn: 1, lines: [line1]),
        Station(id: "0105", name: "Вардар", nextTrainIn: 3, lines: [line1]),
        Station(id: "0106", name: "К. Величков", nextTrainIn: 6, lines: [line1]),
        Station(id: "0107", name: "Опълченска", nextTrainIn: 7, lines: [line1]),
        Station(id: "0108", name: "Сердика", nextTrainIn: 2, lines: [line1]),
        Station(id: "0109", name: "СУ Св. Климент Охрисдски", nextTrainIn: 3, lines: [line1]),
        Station(id: "0110", name: "Стадион Васил Левски", nextTrainIn: 5, lines: [line1]),
        Station(id: "0111", name: "Жолио-Кюри", nextTrainIn: 3, lines: [line1]),
        Station(id: "0112", name: "Г. М. Димитров", nextTrainIn: 5, lines: [line1]),
        Station(id: "0113", name: "Мусагеница", nextTrainIn: 3, lines: [line1]),
        Station(id: "0114", name: "Младост 1", nextTrainIn: 8, lines: [line1]),
        Station(id: "0115", name: "Александър Малинов", nextTrainIn: 4, lines: [line1]),
        Station(id: "0116", name: "Александър Балан", nextTrainIn: 5, lines: [line1]),
        Station(id: "0117", name: "Бизнес парк", nextTrainIn: 6, lines: [line1]),
        // Line 2
        Station(id: "0201", name: "Витоша", nextTrainIn: 8, lines: [line2]),
        Station(id: "0202", name: "Джеймс Баучер", nextTrainIn: 4, lines: [line2]),
        Station(id: "0203", name: "Европейски съюз", nextTrainIn: 6, lines: [line2]),
        Station(id: "0204", name: "НДК", nextTrainIn: 8, lines: [line2, line3]),
        Station(id: "0205", name: "Лъвов мост", nextTrainIn: 8, lines: [line2]),
        Station(id: "0206", name: "Централна гара", nextTrainIn: 4, lines: [line2]),
        Station(id: "0207", name: "Княгиня Мария Луиза", nextTrainIn: 6, lines: [line2]),
        Station(id: "0208", name: "Хан Кубрат", nextTrainIn: 8, lines: [line2]),
        Station(id: "0209", name: "Надежда", nextTrainIn: 4, lines: [line2]),
        Station(id: "0210", name: "Бели Дунав", nextTrainIn: 6, lines: [line2]),
        Station(id: "0211", name: "Ломско Шосе", nextTrainIn: 6, lines: [line2]),
        // Line 3
        Station(id: "0301", name: "Горна Баня", nextTrainIn: 3, lines: [line3]),
        Station(id: "0302", name: "Овча купел 2", nextTrainIn: 4, lines: [line3]),
        Station(id: "0303", name: "Мизия", nextTrainIn: 5, lines: [line3]),
        Station(id: "0304", name: "Овча купел 1", nextTrainIn: 7, lines: [line3]),
        Station(id: "0305", name: "Красно село", nextTrainIn: 3, lines: [line3]),
        Station(id: "0306", name: "бул. България", nextTrainIn: 4, lines: [line3]),
        Station(id: "0307", name: "Медицински университет", nextTrainIn: 5, lines: [line3]),
        Station(id: "0308", name: "Св. Патриарх Евтимий", nextTrainIn: 7, lines: [line3]),
        Station(id: "0309", name: "Театрална", nextTrainIn: 3, lines: [line3]),
        Station(id: "0310", name: "Хаджи Димитър", nextTrainIn: 4, lines: [line3]),
        // Line 4
        Station(id: "0401", name: "Летище София", nextTrainIn: 7, lines: [line4]),
        Station(id: "0402", name: "Света гора", nextTrainIn: 4, lines: [line4]),
        Station(id: "0403", name: "Искърско шосе", nextTrainIn: 3, lines: [line4]),
        Station(id: "0404", name: "Дружба", nextTrainIn: 2, lines: [line4]),
        Station(id: "0405", name: "ИЕЦ", nextTrainIn: 4, lines: [line4]),
        Station(id: "0406", name: "Младост 3", nextTrainIn: 6, lines: [line4]),
    ]
}
