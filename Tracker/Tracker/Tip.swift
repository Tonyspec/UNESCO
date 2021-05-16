//
//  Tip.swift
//  Tracker
//
//  Created by Anton Achedžak on 15.05.2021.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
    }
