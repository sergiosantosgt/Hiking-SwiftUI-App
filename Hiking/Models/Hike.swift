//
//  Hike.swift
//  Hiking
//
//  Created by Sergio Santos on 23/07/24.
//

import Foundation

struct Hike: Identifiable, Hashable {
    var id = UUID()
    let name: String
    let photo: String
    let miles: Double
}
