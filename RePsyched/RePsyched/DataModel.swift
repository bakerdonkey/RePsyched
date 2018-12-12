//
//  DataModel.swift
//  RePsyched
//
//  Created by Sam Kochanski on 12/10/18.
//  Copyright © 2018 Sam Kochanski. All rights reserved.
//

import UIKit

struct Profile {
    var name : String
    var password : String
    var points : Int
    var plastic : Float
    var paper : Float
    var metal : Float
}

enum ItemType {
    case paper
    case plastic
    case metal
}

enum ItemSize {
    case small
    case medium
    case large
}

struct Item {
    var type : ItemType!
    var size : ItemSize!
    var name : String
    var weight : Float
    var points : Float
}
