//
//  Driver.swift
//  AppStuff_2
//
//  Created by kxx: on 2022/07/13.
//

import Foundation

struct Driver: Identifiable {
    let id = NSUUID().uuidString
    let name: String
    let imageName: String
}
